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
	<24.305563, 35.480747, 35.179352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.092823, 35.253510, 34.928146>,  <23.965179, 35.117165, 34.777424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.092823, 35.253510, 34.928146>,  <24.305563, 35.480747, 35.179352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.092823, 35.253510, 34.928146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380570, 0.822832, -0.422035,
		0.756507, 0.014544, -0.653824,
		-0.531849, -0.568098, -0.628013,
		23.933270, 35.083080, 34.739742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.823912, 35.524532, 34.618565>,  <24.305563, 35.480747, 35.179352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.823912, 35.524532, 34.618565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.436970, 35.463917, 34.537312>,  <24.204805, 35.427547, 34.488560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.436970, 35.463917, 34.537312>,  <24.823912, 35.524532, 34.618565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.436970, 35.463917, 34.537312> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127102, 0.403347, -0.906177,
		0.219255, -0.902412, -0.370918,
		-0.967353, -0.151539, -0.203134,
		24.146763, 35.418453, 34.476372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.882668, 36.057545, 35.044170>,  <24.823912, 35.524532, 34.618565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.882668, 36.057545, 35.044170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.181780, 36.312477, 35.118614>,  <25.361246, 36.465435, 35.163280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.181780, 36.312477, 35.118614>,  <24.882668, 36.057545, 35.044170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.181780, 36.312477, 35.118614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175008, 0.459596, -0.870714,
		-0.640467, 0.618532, 0.455214,
		0.747779, 0.637330, 0.186108,
		25.406113, 36.503677, 35.174446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.727207, 36.626034, 34.735195>,  <24.882668, 36.057545, 35.044170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.727207, 36.626034, 34.735195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.098845, 36.748432, 34.818283>,  <25.321827, 36.821873, 34.868137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.098845, 36.748432, 34.818283>,  <24.727207, 36.626034, 34.735195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.098845, 36.748432, 34.818283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009449, 0.541819, -0.840442,
		-0.369721, 0.782813, 0.500510,
		0.929095, 0.306000, 0.207719,
		25.377573, 36.840233, 34.880600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.764576, 37.367184, 34.697487>,  <24.727207, 36.626034, 34.735195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.764576, 37.367184, 34.697487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.117405, 37.206589, 34.598888>,  <25.329102, 37.110233, 34.539730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.117405, 37.206589, 34.598888>,  <24.764576, 37.367184, 34.697487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.117405, 37.206589, 34.598888> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124209, 0.702885, -0.700375,
		0.454446, 0.587165, 0.669863,
		0.882072, -0.401486, -0.246492,
		25.382027, 37.086143, 34.524940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.289518, 37.933353, 34.590759>,  <24.764576, 37.367184, 34.697487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.289518, 37.933353, 34.590759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.462585, 37.628334, 34.398376>,  <25.566425, 37.445324, 34.282948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.462585, 37.628334, 34.398376>,  <25.289518, 37.933353, 34.590759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.462585, 37.628334, 34.398376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398899, 0.640334, -0.656393,
		0.808504, 0.092147, 0.581231,
		0.432667, -0.762549, -0.480955,
		25.592386, 37.399570, 34.254089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.770138, 38.259834, 34.243420>,  <25.289518, 37.933353, 34.590759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.770138, 38.259834, 34.243420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.749531, 37.905354, 34.059250>,  <25.737165, 37.692665, 33.948750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.749531, 37.905354, 34.059250>,  <25.770138, 38.259834, 34.243420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.749531, 37.905354, 34.059250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324353, 0.421192, -0.846990,
		0.944532, -0.192975, 0.265744,
		-0.051519, -0.886204, -0.460422,
		25.734076, 37.639492, 33.921124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.467348, 38.163235, 33.905308>,  <25.770138, 38.259834, 34.243420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.467348, 38.163235, 33.905308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.196241, 37.938595, 33.715473>,  <26.033577, 37.803810, 33.601570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.196241, 37.938595, 33.715473>,  <26.467348, 38.163235, 33.905308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.196241, 37.938595, 33.715473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176239, 0.502559, -0.846389,
		0.713843, -0.657295, -0.241642,
		-0.677767, -0.561602, -0.474589,
		25.992910, 37.770115, 33.573097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.786579, 38.044678, 33.148869>,  <26.467348, 38.163235, 33.905308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.786579, 38.044678, 33.148869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.404270, 37.931484, 33.116817>,  <26.174885, 37.863567, 33.097588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.404270, 37.931484, 33.116817>,  <26.786579, 38.044678, 33.148869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.404270, 37.931484, 33.116817> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035724, 0.158728, -0.986676,
		0.291932, -0.945899, -0.141598,
		-0.955772, -0.282984, -0.080129,
		26.117538, 37.846588, 33.092777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.865005, 37.643234, 32.669037>,  <26.786579, 38.044678, 33.148869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.865005, 37.643234, 32.669037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.476969, 37.739880, 32.678421>,  <26.244146, 37.797867, 32.684052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.476969, 37.739880, 32.678421>,  <26.865005, 37.643234, 32.669037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.476969, 37.739880, 32.678421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009116, 0.132851, -0.991094,
		-0.242576, -0.961236, -0.131079,
		-0.970090, 0.241611, 0.023464,
		26.185942, 37.812363, 32.685459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.511417, 37.145733, 32.156292>,  <26.865005, 37.643234, 32.669037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.511417, 37.145733, 32.156292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.244270, 37.435219, 32.225796>,  <26.083982, 37.608910, 32.267498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.244270, 37.435219, 32.225796>,  <26.511417, 37.145733, 32.156292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.244270, 37.435219, 32.225796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064393, 0.176404, -0.982209,
		-0.741489, -0.667176, -0.071213,
		-0.667869, 0.723711, 0.173763,
		26.043909, 37.652332, 32.277924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.820057, 36.958569, 31.719231>,  <26.511417, 37.145733, 32.156292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.820057, 36.958569, 31.719231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.850338, 37.351273, 31.788996>,  <25.868507, 37.586895, 31.830854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.850338, 37.351273, 31.788996>,  <25.820057, 36.958569, 31.719231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.850338, 37.351273, 31.788996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233923, 0.187517, -0.954001,
		-0.969303, 0.031421, 0.243851,
		0.075702, 0.981758, 0.174411,
		25.873049, 37.645802, 31.841318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.210409, 37.227623, 31.444532>,  <25.820057, 36.958569, 31.719231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.210409, 37.227623, 31.444532> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.452869, 37.545761, 31.445875>,  <25.598345, 37.736645, 31.446680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.452869, 37.545761, 31.445875>,  <25.210409, 37.227623, 31.444532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.452869, 37.545761, 31.445875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408751, 0.315133, -0.856513,
		-0.682280, 0.517803, 0.516115,
		0.606150, 0.795343, 0.003356,
		25.634714, 37.784363, 31.446882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.775515, 37.786533, 31.548426>,  <25.210409, 37.227623, 31.444532>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.775515, 37.786533, 31.548426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.109545, 37.849930, 31.337700>,  <25.309963, 37.887966, 31.211264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.109545, 37.849930, 31.337700>,  <24.775515, 37.786533, 31.548426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.109545, 37.849930, 31.337700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.550065, 0.224818, -0.804292,
		-0.009034, 0.961425, 0.274919,
		0.835073, 0.158490, -0.526815,
		25.360067, 37.897476, 31.179655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.539581, 38.245518, 31.043953>,  <24.775515, 37.786533, 31.548426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.539581, 38.245518, 31.043953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.909271, 38.165905, 30.913603>,  <25.131084, 38.118137, 30.835394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.909271, 38.165905, 30.913603>,  <24.539581, 38.245518, 31.043953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.909271, 38.165905, 30.913603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239852, 0.361451, -0.901013,
		0.297117, 0.910901, 0.286325,
		0.924226, -0.199030, -0.325874,
		25.186539, 38.106197, 30.815840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.615030, 38.733662, 30.482100>,  <24.539581, 38.245518, 31.043953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.615030, 38.733662, 30.482100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.910770, 38.474987, 30.407093>,  <25.088215, 38.319782, 30.362089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.910770, 38.474987, 30.407093>,  <24.615030, 38.733662, 30.482100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.910770, 38.474987, 30.407093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157786, 0.104335, -0.981946,
		0.654574, 0.755588, -0.024898,
		0.739349, -0.646685, -0.187516,
		25.132574, 38.280983, 30.350838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.962358, 39.051960, 30.006853>,  <24.615030, 38.733662, 30.482100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.962358, 39.051960, 30.006853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.077579, 38.668999, 29.998796>,  <25.146711, 38.439220, 29.993961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.077579, 38.668999, 29.998796>,  <24.962358, 39.051960, 30.006853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.077579, 38.668999, 29.998796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104519, -0.010523, -0.994467,
		0.951894, 0.288562, -0.103098,
		0.288050, -0.957403, -0.020144,
		25.163994, 38.381779, 29.992754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.551949, 38.877377, 29.573036>,  <24.962358, 39.051960, 30.006853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.551949, 38.877377, 29.573036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.350592, 38.532932, 29.601551>,  <25.229778, 38.326267, 29.618660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.350592, 38.532932, 29.601551>,  <25.551949, 38.877377, 29.573036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.350592, 38.532932, 29.601551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133811, -0.159197, -0.978136,
		0.853634, -0.482848, 0.195365,
		-0.503392, -0.861112, 0.071286,
		25.199574, 38.274597, 29.622936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.869036, 38.384850, 29.034281>,  <25.551949, 38.877377, 29.573036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.869036, 38.384850, 29.034281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.527845, 38.194340, 29.119698>,  <25.323132, 38.080036, 29.170948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.527845, 38.194340, 29.119698>,  <25.869036, 38.384850, 29.034281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.527845, 38.194340, 29.119698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044829, -0.340762, -0.939080,
		0.520023, -0.810585, 0.269311,
		-0.852975, -0.476271, 0.213542,
		25.271954, 38.051460, 29.183760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.983028, 37.743896, 28.776222>,  <25.869036, 38.384850, 29.034281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.983028, 37.743896, 28.776222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.592117, 37.826927, 28.793396>,  <25.357571, 37.876743, 28.803701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.592117, 37.826927, 28.793396>,  <25.983028, 37.743896, 28.776222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.592117, 37.826927, 28.793396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140134, -0.480720, -0.865604,
		-0.159035, -0.851952, 0.498884,
		-0.977277, 0.207572, 0.042937,
		25.298935, 37.889198, 28.806276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.758125, 37.145695, 28.436279>,  <25.983028, 37.743896, 28.776222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.758125, 37.145695, 28.436279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.427195, 37.370384, 28.436790>,  <25.228636, 37.505196, 28.437098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.427195, 37.370384, 28.436790>,  <25.758125, 37.145695, 28.436279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.427195, 37.370384, 28.436790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215197, -0.314851, -0.924424,
		-0.518866, -0.765074, 0.381365,
		-0.827326, 0.561721, 0.001276,
		25.178997, 37.538898, 28.437174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.233694, 36.634468, 28.236980>,  <25.758125, 37.145695, 28.436279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.233694, 36.634468, 28.236980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.123777, 37.012928, 28.168528>,  <25.057827, 37.240005, 28.127455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.123777, 37.012928, 28.168528>,  <25.233694, 36.634468, 28.236980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.123777, 37.012928, 28.168528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334739, -0.260989, -0.905447,
		-0.901355, -0.191522, 0.388431,
		-0.274789, 0.946153, -0.171133,
		25.041340, 37.296772, 28.117188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.522310, 36.561039, 27.981403>,  <25.233694, 36.634468, 28.236980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.522310, 36.561039, 27.981403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.672640, 36.905903, 27.845501>,  <24.762838, 37.112820, 27.763960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.672640, 36.905903, 27.845501>,  <24.522310, 36.561039, 27.981403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.672640, 36.905903, 27.845501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280674, -0.243513, -0.928398,
		-0.883164, 0.444275, 0.150468,
		0.375824, 0.862161, -0.339758,
		24.785387, 37.164551, 27.743574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.111933, 36.847839, 27.505110>,  <24.522310, 36.561039, 27.981403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.111933, 36.847839, 27.505110> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.451590, 37.033375, 27.404072>,  <24.655384, 37.144695, 27.343449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.451590, 37.033375, 27.404072>,  <24.111933, 36.847839, 27.505110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.451590, 37.033375, 27.404072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188973, -0.179775, -0.965386,
		-0.493198, 0.867485, -0.065001,
		0.849144, 0.463843, -0.252596,
		24.706333, 37.172527, 27.328293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.847506, 37.236855, 27.045692>,  <24.111933, 36.847839, 27.505110>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.847506, 37.236855, 27.045692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.241558, 37.198330, 26.988791>,  <24.477989, 37.175213, 26.954649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.241558, 37.198330, 26.988791>,  <23.847506, 37.236855, 27.045692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.241558, 37.198330, 26.988791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140604, 0.023752, -0.989781,
		0.098709, 0.995068, 0.009857,
		0.985133, -0.096314, -0.142255,
		24.537098, 37.169437, 26.946114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.084175, 37.830093, 26.715313>,  <23.847506, 37.236855, 27.045692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.084175, 37.830093, 26.715313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.325439, 37.526066, 26.618578>,  <24.470198, 37.343647, 26.560537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.325439, 37.526066, 26.618578>,  <24.084175, 37.830093, 26.715313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.325439, 37.526066, 26.618578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276135, 0.085465, -0.957311,
		0.748294, 0.644194, -0.158333,
		0.603163, -0.760072, -0.241838,
		24.506388, 37.298046, 26.546026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.427046, 37.933369, 26.203375>,  <24.084175, 37.830093, 26.715313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.427046, 37.933369, 26.203375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.464725, 37.536179, 26.174713>,  <24.487333, 37.297867, 26.157516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.464725, 37.536179, 26.174713>,  <24.427046, 37.933369, 26.203375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.464725, 37.536179, 26.174713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154592, 0.056513, -0.986361,
		0.983478, 0.103992, -0.148182,
		0.094199, -0.992972, -0.071655,
		24.492985, 37.238289, 26.153217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.791130, 37.897209, 25.532793>,  <24.427046, 37.933369, 26.203375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.791130, 37.897209, 25.532793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.572260, 37.578094, 25.634094>,  <24.440939, 37.386627, 25.694876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.572260, 37.578094, 25.634094>,  <24.791130, 37.897209, 25.532793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.572260, 37.578094, 25.634094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397296, -0.018762, -0.917499,
		0.736720, -0.602647, -0.306691,
		-0.547174, -0.797787, 0.253252,
		24.408108, 37.338757, 25.710070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.785925, 37.379490, 24.996668>,  <24.791130, 37.897209, 25.532793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.785925, 37.379490, 24.996668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.434681, 37.367947, 25.187702>,  <24.223934, 37.361023, 25.302322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.434681, 37.367947, 25.187702>,  <24.785925, 37.379490, 24.996668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.434681, 37.367947, 25.187702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473420, -0.092046, -0.876014,
		0.069238, -0.995337, 0.067166,
		-0.878111, -0.028855, 0.477585,
		24.171247, 37.359291, 25.330978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.380436, 36.754948, 24.922424>,  <24.785925, 37.379490, 24.996668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.380436, 36.754948, 24.922424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.175480, 37.095261, 24.969116>,  <24.052507, 37.299450, 24.997131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.175480, 37.095261, 24.969116>,  <24.380436, 36.754948, 24.922424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.175480, 37.095261, 24.969116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402255, -0.117688, -0.907932,
		-0.758716, -0.512169, 0.402534,
		-0.512388, 0.850783, 0.116731,
		24.021763, 37.350494, 25.004135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.708578, 36.109360, 25.108232>,  <24.380436, 36.754948, 24.922424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.708578, 36.109360, 25.108232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.054634, 36.023922, 24.926722>,  <25.262268, 35.972660, 24.817816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.054634, 36.023922, 24.926722>,  <24.708578, 36.109360, 25.108232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.054634, 36.023922, 24.926722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164347, -0.734091, 0.658864,
		-0.473841, -0.644585, -0.599987,
		0.865139, -0.213591, -0.453777,
		25.314177, 35.959846, 24.790588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.711241, 35.456627, 24.915274>,  <24.708578, 36.109360, 25.108232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.711241, 35.456627, 24.915274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.102074, 35.515141, 24.977127>,  <25.336573, 35.550251, 25.014240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.102074, 35.515141, 24.977127>,  <24.711241, 35.456627, 24.915274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.102074, 35.515141, 24.977127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017336, -0.669349, 0.742745,
		0.212159, -0.728403, -0.651473,
		0.977081, 0.146287, 0.154636,
		25.395199, 35.559025, 25.023518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.879734, 34.930069, 25.373503>,  <24.711241, 35.456627, 24.915274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.879734, 34.930069, 25.373503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.226219, 35.129898, 25.377399>,  <25.434111, 35.249798, 25.379738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.226219, 35.129898, 25.377399>,  <24.879734, 34.930069, 25.373503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.226219, 35.129898, 25.377399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235421, -0.425237, 0.873929,
		0.440737, -0.754716, -0.485957,
		0.866215, 0.499577, 0.009742,
		25.486084, 35.279770, 25.380322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.469944, 34.457199, 25.458195>,  <24.879734, 34.930069, 25.373503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.469944, 34.457199, 25.458195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.488407, 34.820133, 25.625343>,  <25.499485, 35.037891, 25.725632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.488407, 34.820133, 25.625343>,  <25.469944, 34.457199, 25.458195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.488407, 34.820133, 25.625343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149827, -0.407296, 0.900923,
		0.987634, -0.104192, 0.117144,
		0.046157, 0.907333, 0.417870,
		25.502254, 35.092335, 25.750704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.030722, 34.663864, 26.032463>,  <25.469944, 34.457199, 25.458195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.030722, 34.663864, 26.032463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.676735, 34.845398, 26.074171>,  <25.464344, 34.954319, 26.099195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.676735, 34.845398, 26.074171>,  <26.030722, 34.663864, 26.032463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.676735, 34.845398, 26.074171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100727, -0.405180, 0.908671,
		0.454633, 0.793640, 0.404284,
		-0.884965, 0.453834, 0.104268,
		25.411245, 34.981548, 26.105452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.122292, 34.870129, 26.671860>,  <26.030722, 34.663864, 26.032463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.122292, 34.870129, 26.671860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.725954, 34.912327, 26.638151>,  <25.488152, 34.937645, 26.617926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.725954, 34.912327, 26.638151>,  <26.122292, 34.870129, 26.671860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.725954, 34.912327, 26.638151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107845, -0.242813, 0.964060,
		0.081244, 0.964320, 0.251967,
		-0.990843, 0.105497, -0.084270,
		25.428701, 34.943977, 26.612871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.714521, 35.470596, 27.144182>,  <26.122292, 34.870129, 26.671860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.714521, 35.470596, 27.144182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.488968, 35.144020, 27.094456>,  <25.353636, 34.948074, 27.064619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.488968, 35.144020, 27.094456>,  <25.714521, 35.470596, 27.144182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.488968, 35.144020, 27.094456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033645, -0.127694, 0.991243,
		-0.825167, 0.563130, 0.044535,
		-0.563886, -0.816443, -0.124316,
		25.319801, 34.899086, 27.057161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.166637, 35.503265, 27.586622>,  <25.714521, 35.470596, 27.144182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.166637, 35.503265, 27.586622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.183027, 35.112926, 27.500792>,  <25.192862, 34.878723, 27.449293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.183027, 35.112926, 27.500792>,  <25.166637, 35.503265, 27.586622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.183027, 35.112926, 27.500792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114288, -0.208771, 0.971263,
		-0.992602, -0.064322, 0.102973,
		0.040976, -0.975847, -0.214578,
		25.195320, 34.820171, 27.436419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.658064, 35.119587, 28.038877>,  <25.166637, 35.503265, 27.586622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.658064, 35.119587, 28.038877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.918533, 34.847336, 27.904587>,  <25.074816, 34.683983, 27.824013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.918533, 34.847336, 27.904587>,  <24.658064, 35.119587, 28.038877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.918533, 34.847336, 27.904587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152808, -0.315722, 0.936466,
		-0.743385, -0.661104, -0.101584,
		0.651174, -0.680632, -0.335725,
		25.113886, 34.643147, 27.803869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.441191, 34.402031, 28.118694>,  <24.658064, 35.119587, 28.038877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.441191, 34.402031, 28.118694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.839422, 34.438725, 28.126753>,  <25.078362, 34.460743, 28.131588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.839422, 34.438725, 28.126753>,  <24.441191, 34.402031, 28.118694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.839422, 34.438725, 28.126753> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018059, -0.397461, 0.917441,
		0.092170, -0.913022, -0.397361,
		0.995580, 0.091737, 0.020146,
		25.138096, 34.466244, 28.132797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.593426, 33.888172, 28.576384>,  <24.441191, 34.402031, 28.118694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.593426, 33.888172, 28.576384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.952705, 34.060566, 28.541765>,  <25.168274, 34.164001, 28.520994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.952705, 34.060566, 28.541765>,  <24.593426, 33.888172, 28.576384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.952705, 34.060566, 28.541765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107859, -0.025207, 0.993847,
		0.426151, -0.902007, -0.069127,
		0.898199, 0.430985, -0.086548,
		25.222166, 34.189861, 28.515800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.956585, 33.552551, 29.103554>,  <24.593426, 33.888172, 28.576384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.956585, 33.552551, 29.103554> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.167915, 33.879253, 29.010794>,  <25.294714, 34.075275, 28.955137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.167915, 33.879253, 29.010794>,  <24.956585, 33.552551, 29.103554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.167915, 33.879253, 29.010794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296229, 0.078644, 0.951874,
		0.795688, -0.571595, -0.200398,
		0.528326, 0.816758, -0.231899,
		25.326414, 34.124279, 28.941223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.623863, 33.466431, 29.409990>,  <24.956585, 33.552551, 29.103554>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.623863, 33.466431, 29.409990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.631657, 33.858730, 29.332266>,  <25.636333, 34.094109, 29.285631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.631657, 33.858730, 29.332266>,  <25.623863, 33.466431, 29.409990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.631657, 33.858730, 29.332266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482659, 0.160974, 0.860888,
		0.875592, -0.110559, -0.470229,
		0.019484, 0.980747, -0.194310,
		25.637503, 34.152954, 29.273973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.248089, 33.722221, 29.663719>,  <25.623863, 33.466431, 29.409990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.248089, 33.722221, 29.663719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.030821, 34.056141, 29.627762>,  <25.900461, 34.256493, 29.606188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.030821, 34.056141, 29.627762>,  <26.248089, 33.722221, 29.663719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.030821, 34.056141, 29.627762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.609734, 0.465785, 0.641303,
		0.577229, 0.293524, -0.762004,
		-0.543168, 0.834798, -0.089894,
		25.867870, 34.306580, 29.600794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.680307, 34.288887, 29.420513>,  <26.248089, 33.722221, 29.663719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.680307, 34.288887, 29.420513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.374485, 34.453690, 29.618788>,  <26.190992, 34.552570, 29.737753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.374485, 34.453690, 29.618788>,  <26.680307, 34.288887, 29.420513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.374485, 34.453690, 29.618788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.636056, 0.357761, 0.683696,
		0.104350, 0.838008, -0.535587,
		-0.764555, 0.412007, 0.495688,
		26.145119, 34.577293, 29.767494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.917267, 34.931801, 29.572168>,  <26.680307, 34.288887, 29.420513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.917267, 34.931801, 29.572168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.602402, 34.885490, 29.814480>,  <26.413483, 34.857704, 29.959866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.602402, 34.885490, 29.814480>,  <26.917267, 34.931801, 29.572168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.602402, 34.885490, 29.814480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517174, 0.411212, 0.750624,
		-0.336011, 0.904157, -0.263812,
		-0.787165, -0.115781, 0.605778,
		26.366253, 34.850758, 29.996214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.800751, 35.539494, 29.941481>,  <26.917267, 34.931801, 29.572168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.800751, 35.539494, 29.941481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.599728, 35.275787, 30.165195>,  <26.479113, 35.117565, 30.299425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.599728, 35.275787, 30.165195>,  <26.800751, 35.539494, 29.941481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.599728, 35.275787, 30.165195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291823, 0.479592, 0.827545,
		-0.813801, 0.579104, -0.048635,
		-0.502560, -0.659264, 0.559289,
		26.448959, 35.078007, 30.332983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.285841, 35.901283, 30.410770>,  <26.800751, 35.539494, 29.941481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.285841, 35.901283, 30.410770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.381102, 35.555424, 30.587708>,  <26.438257, 35.347908, 30.693871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.381102, 35.555424, 30.587708>,  <26.285841, 35.901283, 30.410770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.381102, 35.555424, 30.587708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083088, 0.471916, 0.877720,
		-0.967668, -0.172276, 0.184229,
		0.238151, -0.864648, 0.442343,
		26.452547, 35.296028, 30.720411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.122328, 36.018074, 31.100492>,  <26.285841, 35.901283, 30.410770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.122328, 36.018074, 31.100492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.329573, 35.676319, 31.116375>,  <26.453920, 35.471264, 31.125904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.329573, 35.676319, 31.116375>,  <26.122328, 36.018074, 31.100492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.329573, 35.676319, 31.116375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353221, 0.256013, 0.899829,
		-0.778971, -0.452188, 0.434432,
		0.518112, -0.854391, 0.039704,
		26.485006, 35.420002, 31.128286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.946531, 35.695080, 31.741537>,  <26.122328, 36.018074, 31.100492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.946531, 35.695080, 31.741537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.313168, 35.607574, 31.607670>,  <26.533150, 35.555069, 31.527349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.313168, 35.607574, 31.607670>,  <25.946531, 35.695080, 31.741537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.313168, 35.607574, 31.607670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398560, 0.433342, 0.808310,
		-0.031805, -0.874275, 0.484388,
		0.916590, -0.218766, -0.334669,
		26.588144, 35.541946, 31.507269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.298077, 35.463028, 32.377537>,  <25.946531, 35.695080, 31.741537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.298077, 35.463028, 32.377537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.601213, 35.527485, 32.124649>,  <26.783096, 35.566158, 31.972916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.601213, 35.527485, 32.124649>,  <26.298077, 35.463028, 32.377537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.601213, 35.527485, 32.124649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.561617, 0.332051, 0.757844,
		0.332051, -0.929395, 0.161143,
		-0.757844, -0.161143, 0.632222,
		26.828568, 35.575829, 31.934982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.889578, 35.043694, 32.583427>,  <26.298077, 35.463028, 32.377537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.889578, 35.043694, 32.583427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.054626, 35.347485, 32.382256>,  <27.153656, 35.529758, 32.261551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.054626, 35.347485, 32.382256>,  <26.889578, 35.043694, 32.583427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.054626, 35.347485, 32.382256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486089, 0.283352, 0.826698,
		0.770364, -0.585582, -0.252256,
		0.412622, 0.759477, -0.502929,
		27.178413, 35.575329, 32.231377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.663132, 35.094425, 32.738392>,  <26.889578, 35.043694, 32.583427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.663132, 35.094425, 32.738392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.593122, 35.468025, 32.613800>,  <27.551117, 35.692184, 32.539047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.593122, 35.468025, 32.613800>,  <27.663132, 35.094425, 32.738392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.593122, 35.468025, 32.613800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549490, 0.355171, 0.756250,
		0.816962, -0.038791, -0.575385,
		-0.175025, 0.933996, -0.311477,
		27.540615, 35.748222, 32.520355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.305439, 35.419319, 32.726826>,  <27.663132, 35.094425, 32.738392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.305439, 35.419319, 32.726826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.041920, 35.720242, 32.728477>,  <27.883808, 35.900795, 32.729469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.041920, 35.720242, 32.728477>,  <28.305439, 35.419319, 32.726826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.041920, 35.720242, 32.728477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495670, 0.429923, 0.754638,
		0.565945, 0.499201, -0.656129,
		-0.658800, 0.752307, 0.004126,
		27.844280, 35.945934, 32.729713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.728960, 35.974358, 32.812511>,  <28.305439, 35.419319, 32.726826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.728960, 35.974358, 32.812511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.381855, 36.140717, 32.921337>,  <28.173592, 36.240532, 32.986633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.381855, 36.140717, 32.921337>,  <28.728960, 35.974358, 32.812511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.381855, 36.140717, 32.921337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462254, 0.474419, 0.749165,
		0.182504, 0.775860, -0.603932,
		-0.867764, 0.415895, 0.272061,
		28.121527, 36.265484, 33.002956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.809954, 36.667587, 32.690174>,  <28.728960, 35.974358, 32.812511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.809954, 36.667587, 32.690174> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.516718, 36.606590, 32.955299>,  <28.340776, 36.569992, 33.114376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.516718, 36.606590, 32.955299>,  <28.809954, 36.667587, 32.690174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.516718, 36.606590, 32.955299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468387, 0.593420, 0.654574,
		-0.493149, 0.790315, -0.363602,
		-0.733088, -0.152496, 0.662817,
		28.296791, 36.560841, 33.154144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.510710, 36.698326, 32.547668>,  <28.809954, 36.667587, 32.690174>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.510710, 36.698326, 32.547668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.539827, 36.904427, 32.889244>,  <29.557299, 37.028088, 33.094189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.539827, 36.904427, 32.889244>,  <29.510710, 36.698326, 32.547668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.539827, 36.904427, 32.889244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.575382, -0.677662, 0.457940,
		0.814639, -0.524678, 0.247139,
		0.072794, 0.515255, 0.853940,
		29.561666, 37.059002, 33.145428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.861917, 36.376400, 33.105652>,  <29.510710, 36.698326, 32.547668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.861917, 36.376400, 33.105652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.598190, 36.616615, 33.286606>,  <29.439955, 36.760746, 33.395180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.598190, 36.616615, 33.286606>,  <29.861917, 36.376400, 33.105652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.598190, 36.616615, 33.286606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394905, -0.788606, 0.471328,
		0.639805, 0.132106, 0.757098,
		-0.659317, 0.600540, 0.452385,
		29.400394, 36.796776, 33.422321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.491018, 35.973724, 33.044079>,  <29.861917, 36.376400, 33.105652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.491018, 35.973724, 33.044079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.358027, 36.261787, 33.287659>,  <30.278231, 36.434628, 33.433807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.358027, 36.261787, 33.287659>,  <30.491018, 35.973724, 33.044079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.358027, 36.261787, 33.287659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245791, -0.557206, 0.793163,
		0.910518, 0.413386, 0.008251,
		-0.332480, 0.720162, 0.608953,
		30.258282, 36.477837, 33.470345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.008566, 36.204147, 33.613621>,  <30.491018, 35.973724, 33.044079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.008566, 36.204147, 33.613621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.617140, 36.204506, 33.695992>,  <30.382284, 36.204723, 33.745415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.617140, 36.204506, 33.695992>,  <31.008566, 36.204147, 33.613621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.617140, 36.204506, 33.695992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184630, -0.439085, 0.879270,
		0.091213, 0.898445, 0.429507,
		-0.978566, 0.000901, 0.205930,
		30.323570, 36.204777, 33.757771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.738134, 36.253208, 33.898403>,  <31.008566, 36.204147, 33.613621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.738134, 36.253208, 33.898403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.582066, 36.459846, 34.203270>,  <31.488424, 36.583828, 34.386189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.582066, 36.459846, 34.203270>,  <31.738134, 36.253208, 33.898403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.582066, 36.459846, 34.203270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.553032, 0.530337, -0.642572,
		-0.736154, -0.672214, 0.078772,
		-0.390170, 0.516596, 0.762165,
		31.465014, 36.614826, 34.431919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.096607, 36.081863, 33.312836>,  <31.738134, 36.253208, 33.898403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.096607, 36.081863, 33.312836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.495899, 36.074509, 33.335453>,  <32.735474, 36.070095, 33.349022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.495899, 36.074509, 33.335453>,  <32.096607, 36.081863, 33.312836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.495899, 36.074509, 33.335453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057423, -0.544622, 0.836714,
		0.015408, -0.838480, -0.544714,
		0.998231, -0.018388, 0.056540,
		32.795368, 36.068993, 33.352413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.434288, 35.367935, 33.434368>,  <32.096607, 36.081863, 33.312836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.434288, 35.367935, 33.434368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.717899, 35.604759, 33.587597>,  <32.888065, 35.746853, 33.679535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.717899, 35.604759, 33.587597>,  <32.434288, 35.367935, 33.434368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.717899, 35.604759, 33.587597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063322, -0.487578, 0.870780,
		0.702331, -0.641665, -0.308217,
		0.709029, 0.592059, 0.383072,
		32.930607, 35.782375, 33.702518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.874252, 34.859421, 33.778950>,  <32.434288, 35.367935, 33.434368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.874252, 34.859421, 33.778950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.947395, 35.220856, 33.933918>,  <32.991283, 35.437717, 34.026901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.947395, 35.220856, 33.933918>,  <32.874252, 34.859421, 33.778950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.947395, 35.220856, 33.933918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125017, -0.412239, 0.902457,
		0.975158, -0.116591, -0.188346,
		0.182862, 0.903585, 0.387423,
		33.002254, 35.491932, 34.050144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.195377, 34.245728, 34.018272>,  <32.874252, 34.859421, 33.778950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.195377, 34.245728, 34.018272> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.411068, 34.405388, 33.721649>,  <33.540482, 34.501186, 33.543674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.411068, 34.405388, 33.721649>,  <33.195377, 34.245728, 34.018272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.411068, 34.405388, 33.721649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.754215, 0.620655, -0.214351,
		0.374696, 0.674881, 0.635719,
		0.539224, 0.399153, -0.741562,
		33.572834, 34.525135, 33.499180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.726856, 33.696571, 34.269989>,  <33.195377, 34.245728, 34.018272>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.726856, 33.696571, 34.269989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.041367, 33.583462, 34.489735>,  <34.230072, 33.515594, 34.621582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.041367, 33.583462, 34.489735>,  <33.726856, 33.696571, 34.269989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.041367, 33.583462, 34.489735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.593852, -0.591362, 0.545556,
		0.170606, -0.755202, -0.632901,
		0.786278, -0.282774, 0.549368,
		34.277248, 33.498631, 34.654545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.640320, 33.019394, 34.464905>,  <33.726856, 33.696571, 34.269989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.640320, 33.019394, 34.464905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.887501, 33.151085, 34.750488>,  <34.035809, 33.230099, 34.921841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.887501, 33.151085, 34.750488>,  <33.640320, 33.019394, 34.464905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.887501, 33.151085, 34.750488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497389, -0.539568, 0.679316,
		0.608881, -0.774903, -0.169673,
		0.617954, 0.329229, 0.713961,
		34.072887, 33.249855, 34.964676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.731171, 32.485733, 34.906143>,  <33.640320, 33.019394, 34.464905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.731171, 32.485733, 34.906143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.850891, 32.793648, 35.131657>,  <33.922726, 32.978397, 35.266964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.850891, 32.793648, 35.131657>,  <33.731171, 32.485733, 34.906143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.850891, 32.793648, 35.131657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421210, -0.423583, 0.801972,
		0.856154, -0.477504, 0.197461,
		0.299304, 0.769784, 0.563781,
		33.940681, 33.024582, 35.300793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.210808, 32.148319, 35.485008>,  <33.731171, 32.485733, 34.906143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.210808, 32.148319, 35.485008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.100014, 32.507496, 35.621819>,  <34.033539, 32.723003, 35.703903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.100014, 32.507496, 35.621819>,  <34.210808, 32.148319, 35.485008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.100014, 32.507496, 35.621819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403983, -0.431787, 0.806448,
		0.871824, 0.085202, 0.482351,
		-0.276984, 0.897942, 0.342022,
		34.016918, 32.776878, 35.724426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.230366, 32.077671, 36.196915>,  <34.210808, 32.148319, 35.485008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.230366, 32.077671, 36.196915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.004856, 32.404774, 36.150555>,  <33.869549, 32.601036, 36.122738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.004856, 32.404774, 36.150555>,  <34.230366, 32.077671, 36.196915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.004856, 32.404774, 36.150555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.534532, -0.254289, 0.805986,
		0.629627, 0.516348, 0.580478,
		-0.563779, 0.817754, -0.115897,
		33.835724, 32.650101, 36.115784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.253902, 32.405807, 36.837776>,  <34.230366, 32.077671, 36.196915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.253902, 32.405807, 36.837776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.929916, 32.528446, 36.637798>,  <33.735523, 32.602032, 36.517811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.929916, 32.528446, 36.637798>,  <34.253902, 32.405807, 36.837776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.929916, 32.528446, 36.637798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.584435, -0.350993, 0.731601,
		0.048831, 0.884760, 0.463481,
		-0.809970, 0.306600, -0.499946,
		33.686924, 32.620426, 36.487816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.820427, 32.860348, 37.260937>,  <34.253902, 32.405807, 36.837776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.820427, 32.860348, 37.260937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.565186, 32.724304, 36.984631>,  <33.412041, 32.642677, 36.818848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.565186, 32.724304, 36.984631>,  <33.820427, 32.860348, 37.260937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.565186, 32.724304, 36.984631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.640709, -0.262979, 0.721342,
		-0.426991, 0.902867, -0.050104,
		-0.638099, -0.340109, -0.690764,
		33.373756, 32.622272, 36.777401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.153526, 33.314552, 37.380096>,  <33.820427, 32.860348, 37.260937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.153526, 33.314552, 37.380096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.064476, 32.982822, 37.175095>,  <33.011044, 32.783787, 37.052094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.064476, 32.982822, 37.175095>,  <33.153526, 33.314552, 37.380096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.064476, 32.982822, 37.175095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.883507, -0.050605, 0.465677,
		-0.412131, 0.556476, -0.721445,
		-0.222630, -0.829321, -0.512506,
		32.997688, 32.734028, 37.021343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.494797, 33.447033, 37.153294>,  <33.153526, 33.314552, 37.380096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.494797, 33.447033, 37.153294> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.545990, 33.050335, 37.156361>,  <32.576706, 32.812317, 37.158203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.545990, 33.050335, 37.156361>,  <32.494797, 33.447033, 37.153294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.545990, 33.050335, 37.156361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.771203, -0.094653, 0.629513,
		-0.623591, -0.086483, -0.776952,
		0.127983, -0.991747, 0.007671,
		32.584385, 32.752811, 37.158661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.794338, 33.215652, 37.196346>,  <32.494797, 33.447033, 37.153294>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.794338, 33.215652, 37.196346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.035275, 32.910347, 37.289822>,  <32.179836, 32.727165, 37.345909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.035275, 32.910347, 37.289822>,  <31.794338, 33.215652, 37.196346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.035275, 32.910347, 37.289822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.664862, -0.317702, 0.676036,
		-0.441750, -0.562577, -0.698830,
		0.602342, -0.763264, 0.233691,
		32.215977, 32.681366, 37.359928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.310072, 32.796375, 37.290504>,  <31.794338, 33.215652, 37.196346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.310072, 32.796375, 37.290504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.634182, 32.653820, 37.476597>,  <31.828648, 32.568287, 37.588253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.634182, 32.653820, 37.476597>,  <31.310072, 32.796375, 37.290504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.634182, 32.653820, 37.476597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.572737, -0.313329, 0.757494,
		-0.124191, -0.880235, -0.458000,
		0.810277, -0.356388, 0.465230,
		31.877266, 32.546906, 37.616165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.021671, 32.149513, 37.571140>,  <31.310072, 32.796375, 37.290504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.021671, 32.149513, 37.571140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.343855, 32.250912, 37.785419>,  <31.537165, 32.311752, 37.913986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.343855, 32.250912, 37.785419>,  <31.021671, 32.149513, 37.571140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.343855, 32.250912, 37.785419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378237, -0.475998, 0.793954,
		0.456259, -0.842118, -0.287515,
		0.805459, 0.253500, 0.535699,
		31.585493, 32.326962, 37.946129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.323298, 31.475695, 37.913982>,  <31.021671, 32.149513, 37.571140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.323298, 31.475695, 37.913982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.466997, 31.787693, 38.118938>,  <31.553217, 31.974892, 38.241913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.466997, 31.787693, 38.118938>,  <31.323298, 31.475695, 37.913982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.466997, 31.787693, 38.118938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378921, -0.379837, 0.843885,
		0.852853, -0.497322, 0.159101,
		0.359250, 0.779997, 0.512391,
		31.574772, 32.021690, 38.272655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.747953, 31.152208, 38.357639>,  <31.323298, 31.475695, 37.913982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.747953, 31.152208, 38.357639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.623245, 31.509384, 38.487537>,  <31.548420, 31.723690, 38.565475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.623245, 31.509384, 38.487537>,  <31.747953, 31.152208, 38.357639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.623245, 31.509384, 38.487537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438168, -0.438382, 0.784749,
		0.843094, 0.102371, 0.527932,
		-0.311771, 0.892940, 0.324742,
		31.529715, 31.777266, 38.584961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.747932, 31.063942, 39.039726>,  <31.747953, 31.152208, 38.357639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.747932, 31.063942, 39.039726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.549828, 31.411057, 39.056053>,  <31.430965, 31.619326, 39.065849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.549828, 31.411057, 39.056053>,  <31.747932, 31.063942, 39.039726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.549828, 31.411057, 39.056053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460297, -0.301966, 0.834831,
		0.736779, 0.394672, 0.548991,
		-0.495261, 0.867785, 0.040816,
		31.401249, 31.671392, 39.068298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.667624, 31.254927, 39.754475>,  <31.747932, 31.063942, 39.039726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.667624, 31.254927, 39.754475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.378664, 31.457993, 39.566681>,  <31.205288, 31.579832, 39.454002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.378664, 31.457993, 39.566681>,  <31.667624, 31.254927, 39.754475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.378664, 31.457993, 39.566681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.648280, -0.261012, 0.715266,
		0.240575, 0.821065, 0.517664,
		-0.722397, 0.507666, -0.469487,
		31.161945, 31.610292, 39.425835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.337019, 31.685707, 40.207207>,  <31.667624, 31.254927, 39.754475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.337019, 31.685707, 40.207207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.057018, 31.624969, 39.928082>,  <30.889017, 31.588528, 39.760609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.057018, 31.624969, 39.928082>,  <31.337019, 31.685707, 40.207207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.057018, 31.624969, 39.928082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.654708, -0.253815, 0.711994,
		-0.285225, 0.955260, 0.078259,
		-0.700003, -0.151842, -0.697811,
		30.847017, 31.579416, 39.718739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.696405, 32.071587, 40.446911>,  <31.337019, 31.685707, 40.207207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.696405, 32.071587, 40.446911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.561867, 31.785971, 40.201305>,  <30.481144, 31.614601, 40.053940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.561867, 31.785971, 40.201305>,  <30.696405, 32.071587, 40.446911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.561867, 31.785971, 40.201305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.650669, -0.295150, 0.699654,
		-0.680810, 0.634846, -0.365333,
		-0.336345, -0.714042, -0.614016,
		30.460964, 31.571758, 40.017101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.973364, 31.953243, 40.661674>,  <30.696405, 32.071587, 40.446911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.973364, 31.953243, 40.661674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.034210, 31.618975, 40.450577>,  <30.070717, 31.418413, 40.323917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.034210, 31.618975, 40.450577>,  <29.973364, 31.953243, 40.661674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.034210, 31.618975, 40.450577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.550060, -0.515204, 0.657267,
		-0.821155, 0.190312, -0.538039,
		0.152114, -0.835671, -0.527745,
		30.079844, 31.368273, 40.292252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.324163, 31.644905, 40.559505>,  <29.973364, 31.953243, 40.661674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.324163, 31.644905, 40.559505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.596230, 31.354811, 40.516777>,  <29.759468, 31.180754, 40.491142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.596230, 31.354811, 40.516777>,  <29.324163, 31.644905, 40.559505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.596230, 31.354811, 40.516777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.528784, -0.586312, 0.613699,
		-0.507704, -0.360933, -0.782281,
		0.680165, -0.725235, -0.106817,
		29.800280, 31.137239, 40.484730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.051100, 31.267912, 40.982651>,  <29.324163, 31.644905, 40.559505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.051100, 31.267912, 40.982651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.351290, 31.021090, 40.887970>,  <29.531404, 30.872995, 40.831161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.351290, 31.021090, 40.887970>,  <29.051100, 31.267912, 40.982651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.351290, 31.021090, 40.887970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247707, -0.594663, 0.764864,
		-0.612725, -0.515377, -0.599129,
		0.750473, -0.617060, -0.236702,
		29.576433, 30.835972, 40.816959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.809383, 30.468313, 40.840736>,  <29.051100, 31.267912, 40.982651>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.809383, 30.468313, 40.840736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.190496, 30.455887, 40.961563>,  <29.419165, 30.448431, 41.034058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.190496, 30.455887, 40.961563>,  <28.809383, 30.468313, 40.840736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.190496, 30.455887, 40.961563> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235620, -0.703137, 0.670882,
		0.191551, -0.710376, -0.677255,
		0.952781, -0.031066, 0.302066,
		29.476330, 30.446568, 41.052181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.925303, 29.839287, 40.965679>,  <28.809383, 30.468313, 40.840736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.925303, 29.839287, 40.965679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.211786, 30.021629, 41.177052>,  <29.383677, 30.131035, 41.303875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.211786, 30.021629, 41.177052>,  <28.925303, 29.839287, 40.965679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.211786, 30.021629, 41.177052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189022, -0.602176, 0.775664,
		0.671802, -0.655422, -0.345116,
		0.716207, 0.455858, 0.528432,
		29.426649, 30.158386, 41.335583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.056520, 29.273750, 41.364429>,  <28.925303, 29.839287, 40.965679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.056520, 29.273750, 41.364429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.236170, 29.590200, 41.530521>,  <29.343960, 29.780069, 41.630177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.236170, 29.590200, 41.530521>,  <29.056520, 29.273750, 41.364429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.236170, 29.590200, 41.530521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041648, -0.482768, 0.874757,
		0.892500, -0.375579, -0.249770,
		0.449121, 0.791123, 0.415228,
		29.370907, 29.827538, 41.655090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.644854, 28.987268, 41.797215>,  <29.056520, 29.273750, 41.364429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.644854, 28.987268, 41.797215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.519714, 29.340023, 41.938297>,  <29.444632, 29.551676, 42.022945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.519714, 29.340023, 41.938297>,  <29.644854, 28.987268, 41.797215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.519714, 29.340023, 41.938297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025027, -0.378873, 0.925110,
		0.949474, 0.280590, 0.140600,
		-0.312846, 0.881887, 0.352707,
		29.425861, 29.604589, 42.044109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.896927, 29.025908, 42.415344>,  <29.644854, 28.987268, 41.797215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.896927, 29.025908, 42.415344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.622009, 29.314182, 42.451656>,  <29.457060, 29.487146, 42.473442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.622009, 29.314182, 42.451656>,  <29.896927, 29.025908, 42.415344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.622009, 29.314182, 42.451656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154298, -0.266967, 0.951273,
		0.709804, 0.639796, 0.294685,
		-0.687292, 0.720686, 0.090775,
		29.415821, 29.530388, 42.478889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.999269, 29.518833, 43.076485>,  <29.896927, 29.025908, 42.415344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.999269, 29.518833, 43.076485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.626316, 29.454653, 42.946918>,  <29.402544, 29.416145, 42.869179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.626316, 29.454653, 42.946918>,  <29.999269, 29.518833, 43.076485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.626316, 29.454653, 42.946918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253865, -0.347252, 0.902756,
		-0.257326, 0.923944, 0.283039,
		-0.932382, -0.160449, -0.323914,
		29.346601, 29.406519, 42.849743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.730471, 29.620722, 43.600025>,  <29.999269, 29.518833, 43.076485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.730471, 29.620722, 43.600025> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.415018, 29.489008, 43.392319>,  <29.225746, 29.409981, 43.267696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.415018, 29.489008, 43.392319>,  <29.730471, 29.620722, 43.600025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.415018, 29.489008, 43.392319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393443, -0.378740, 0.837710,
		-0.472510, 0.864944, 0.169131,
		-0.788629, -0.329283, -0.519265,
		29.178429, 29.390223, 43.236538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.165751, 29.867292, 43.984795>,  <29.730471, 29.620722, 43.600025>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.165751, 29.867292, 43.984795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.046297, 29.546078, 43.778515>,  <28.974625, 29.353348, 43.654747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.046297, 29.546078, 43.778515>,  <29.165751, 29.867292, 43.984795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.046297, 29.546078, 43.778515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185542, -0.481197, 0.856752,
		-0.936158, 0.351539, -0.005296,
		-0.298633, -0.803038, -0.515702,
		28.956707, 29.305166, 43.623806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.683651, 29.590446, 44.327950>,  <29.165751, 29.867292, 43.984795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.683651, 29.590446, 44.327950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.782509, 29.283596, 44.091160>,  <28.841824, 29.099485, 43.949085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.782509, 29.283596, 44.091160>,  <28.683651, 29.590446, 44.327950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.782509, 29.283596, 44.091160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089378, -0.626371, 0.774384,
		-0.964847, -0.138476, -0.223369,
		0.247146, -0.767127, -0.591976,
		28.856653, 29.053457, 43.913567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.242210, 29.103031, 44.533558>,  <28.683651, 29.590446, 44.327950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.242210, 29.103031, 44.533558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.518703, 28.878609, 44.351387>,  <28.684599, 28.743956, 44.242085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.518703, 28.878609, 44.351387>,  <28.242210, 29.103031, 44.533558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.518703, 28.878609, 44.351387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067141, -0.677372, 0.732571,
		-0.719509, -0.475797, -0.505889,
		0.691230, -0.561057, -0.455429,
		28.726072, 28.710291, 44.214760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.956413, 28.296923, 44.461708>,  <28.242210, 29.103031, 44.533558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.956413, 28.296923, 44.461708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.356319, 28.300728, 44.469463>,  <28.596264, 28.303011, 44.474117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.356319, 28.300728, 44.469463>,  <27.956413, 28.296923, 44.461708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.356319, 28.300728, 44.469463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006044, -0.738550, 0.674172,
		0.020731, -0.674132, -0.738320,
		0.999767, 0.009514, 0.019386,
		28.656250, 28.303581, 44.475281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.115608, 27.619461, 44.521389>,  <27.956413, 28.296923, 44.461708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.115608, 27.619461, 44.521389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.460199, 27.796581, 44.620811>,  <28.666954, 27.902853, 44.680466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.460199, 27.796581, 44.620811>,  <28.115608, 27.619461, 44.521389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.460199, 27.796581, 44.620811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127633, -0.662591, 0.738026,
		0.491490, -0.604070, -0.627325,
		0.861480, 0.442800, 0.248558,
		28.718643, 27.929420, 44.695377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.629831, 27.123400, 44.411667>,  <28.115608, 27.619461, 44.521389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.629831, 27.123400, 44.411667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.784027, 27.383356, 44.673672>,  <28.876545, 27.539330, 44.830875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.784027, 27.383356, 44.673672>,  <28.629831, 27.123400, 44.411667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.784027, 27.383356, 44.673672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206704, -0.752659, 0.625122,
		0.899261, -0.105586, -0.424478,
		0.385492, 0.649889, 0.655012,
		28.899675, 27.578323, 44.870174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.269167, 26.836535, 44.670357>,  <28.629831, 27.123400, 44.411667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.269167, 26.836535, 44.670357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.165344, 27.112099, 44.941071>,  <29.103050, 27.277437, 45.103497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.165344, 27.112099, 44.941071>,  <29.269167, 26.836535, 44.670357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.165344, 27.112099, 44.941071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119911, -0.672386, 0.730424,
		0.958255, 0.270739, 0.091914,
		-0.259556, 0.688910, 0.676781,
		29.087477, 27.318771, 45.144104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.836077, 26.705637, 45.102840>,  <29.269167, 26.836535, 44.670357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.836077, 26.705637, 45.102840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.542246, 26.902325, 45.289864>,  <29.365948, 27.020336, 45.402077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.542246, 26.902325, 45.289864>,  <29.836077, 26.705637, 45.102840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.542246, 26.902325, 45.289864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071384, -0.629251, 0.773917,
		0.674759, 0.601878, 0.427133,
		-0.734578, 0.491717, 0.467557,
		29.321873, 27.049839, 45.430130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.109243, 26.985003, 45.766575>,  <29.836077, 26.705637, 45.102840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.109243, 26.985003, 45.766575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.713449, 26.927378, 45.771706>,  <29.475973, 26.892803, 45.774784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.713449, 26.927378, 45.771706>,  <30.109243, 26.985003, 45.766575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.713449, 26.927378, 45.771706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071586, -0.410777, 0.908921,
		-0.125674, 0.900282, 0.416771,
		-0.989485, -0.144062, 0.012824,
		29.416603, 26.884159, 45.775551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.966351, 27.068129, 46.365440>,  <30.109243, 26.985003, 45.766575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.966351, 27.068129, 46.365440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.627438, 26.876486, 46.273727>,  <29.424089, 26.761499, 46.218700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.627438, 26.876486, 46.273727>,  <29.966351, 27.068129, 46.365440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.627438, 26.876486, 46.273727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051583, -0.355404, 0.933288,
		-0.528633, 0.802585, 0.276413,
		-0.847282, -0.479109, -0.229278,
		29.373253, 26.732754, 46.204945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.616360, 27.112497, 46.975952>,  <29.966351, 27.068129, 46.365440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.616360, 27.112497, 46.975952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.438709, 26.823725, 46.763699>,  <29.332119, 26.650461, 46.636349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.438709, 26.823725, 46.763699>,  <29.616360, 27.112497, 46.975952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.438709, 26.823725, 46.763699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289288, -0.444978, 0.847530,
		-0.847976, 0.529916, -0.011219,
		-0.444128, -0.721930, -0.530629,
		29.305471, 26.607145, 46.604511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.965080, 27.062201, 47.206783>,  <29.616360, 27.112497, 46.975952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.965080, 27.062201, 47.206783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.057777, 26.711733, 47.037731>,  <29.113396, 26.501451, 46.936298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.057777, 26.711733, 47.037731>,  <28.965080, 27.062201, 47.206783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.057777, 26.711733, 47.037731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218880, -0.470285, 0.854941,
		-0.947833, -0.105620, -0.300761,
		0.231742, -0.876171, -0.422634,
		29.127300, 26.448881, 46.910942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.411974, 26.624350, 47.293594>,  <28.965080, 27.062201, 47.206783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.411974, 26.624350, 47.293594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.743111, 26.405027, 47.246204>,  <28.941793, 26.273434, 47.217770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.743111, 26.405027, 47.246204>,  <28.411974, 26.624350, 47.293594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.743111, 26.405027, 47.246204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229600, -0.523887, 0.820260,
		-0.511811, -0.651851, -0.559588,
		0.827849, -0.548300, -0.118467,
		28.991465, 26.240536, 47.210663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.217941, 26.014294, 47.440689>,  <28.411974, 26.624350, 47.293594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.217941, 26.014294, 47.440689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.611933, 26.021170, 47.509418>,  <28.848328, 26.025295, 47.550655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.611933, 26.021170, 47.509418>,  <28.217941, 26.014294, 47.440689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.611933, 26.021170, 47.509418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147555, -0.433119, 0.889177,
		0.089704, -0.901173, -0.424076,
		0.984978, 0.017188, 0.171825,
		28.907427, 26.026325, 47.560966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.553148, 25.343338, 47.689266>,  <28.217941, 26.014294, 47.440689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.553148, 25.343338, 47.689266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.710732, 25.667322, 47.863052>,  <28.805281, 25.861712, 47.967323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.710732, 25.667322, 47.863052>,  <28.553148, 25.343338, 47.689266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.710732, 25.667322, 47.863052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298623, -0.334258, 0.893922,
		0.869265, -0.481910, 0.110189,
		0.393958, 0.809960, 0.434468,
		28.828918, 25.910311, 47.993393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.134529, 25.237494, 48.239300>,  <28.553148, 25.343338, 47.689266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.134529, 25.237494, 48.239300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.904108, 25.555698, 48.314476>,  <28.765856, 25.746622, 48.359581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.904108, 25.555698, 48.314476>,  <29.134529, 25.237494, 48.239300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.904108, 25.555698, 48.314476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068047, -0.275798, 0.958804,
		0.814577, 0.539531, 0.213005,
		-0.576051, 0.795514, 0.187945,
		28.731293, 25.794353, 48.370861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.535875, 25.301226, 47.634331>,  <29.134529, 25.237494, 48.239300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.535875, 25.301226, 47.634331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.644035, 25.143167, 47.283161>,  <29.708931, 25.048332, 47.072460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.644035, 25.143167, 47.283161>,  <29.535875, 25.301226, 47.634331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.644035, 25.143167, 47.283161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.626764, -0.619932, 0.472071,
		-0.730787, -0.677897, 0.080033,
		0.270401, -0.395146, -0.877920,
		29.725155, 25.024624, 47.019787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.704370, 24.513025, 47.702263>,  <29.535875, 25.301226, 47.634331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.704370, 24.513025, 47.702263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.888620, 24.694592, 47.397163>,  <29.999170, 24.803532, 47.214104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.888620, 24.694592, 47.397163>,  <29.704370, 24.513025, 47.702263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.888620, 24.694592, 47.397163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.887563, -0.242692, 0.391576,
		-0.007371, -0.857358, -0.514668,
		0.460627, 0.453914, -0.762748,
		30.026808, 24.830765, 47.168339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.375824, 24.219595, 47.426067>,  <29.704370, 24.513025, 47.702263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.375824, 24.219595, 47.426067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.409603, 24.616850, 47.393700>,  <30.429871, 24.855204, 47.374279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.409603, 24.616850, 47.393700>,  <30.375824, 24.219595, 47.426067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.409603, 24.616850, 47.393700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.991168, -0.075391, 0.109099,
		0.102250, -0.089419, -0.990732,
		0.084448, 0.993137, -0.080921,
		30.434937, 24.914791, 47.369423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.803610, 24.452419, 46.919163>,  <30.375824, 24.219595, 47.426067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.803610, 24.452419, 46.919163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.826506, 24.735405, 47.200935>,  <30.840244, 24.905195, 47.369999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.826506, 24.735405, 47.200935>,  <30.803610, 24.452419, 46.919163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.826506, 24.735405, 47.200935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.984274, 0.078120, -0.158437,
		-0.167118, 0.702420, -0.691865,
		0.057241, 0.707463, 0.704429,
		30.843678, 24.947643, 47.412266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.249475, 24.940462, 46.624706>,  <30.803610, 24.452419, 46.919163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.249475, 24.940462, 46.624706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.271694, 25.048241, 47.009270>,  <31.285025, 25.112907, 47.240009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.271694, 25.048241, 47.009270>,  <31.249475, 24.940462, 46.624706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.271694, 25.048241, 47.009270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.996997, 0.037074, -0.067993,
		-0.053963, 0.962302, -0.266576,
		0.055547, 0.269444, 0.961413,
		31.288359, 25.129074, 47.297695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.412127, 24.382013, 46.098343>,  <31.249475, 24.940462, 46.624706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.412127, 24.382013, 46.098343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.046309, 24.220484, 46.089069>,  <30.826818, 24.123566, 46.083504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.046309, 24.220484, 46.089069>,  <31.412127, 24.382013, 46.098343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.046309, 24.220484, 46.089069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127632, 0.342499, -0.930809,
		0.383831, -0.848302, -0.364771,
		-0.914540, -0.403830, -0.023191,
		30.771946, 24.099337, 46.082111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.347963, 23.957016, 45.594963>,  <31.412127, 24.382013, 46.098343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.347963, 23.957016, 45.594963> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.973461, 24.074743, 45.671703>,  <30.748760, 24.145380, 45.717747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.973461, 24.074743, 45.671703>,  <31.347963, 23.957016, 45.594963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.973461, 24.074743, 45.671703> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111738, 0.268268, -0.956842,
		-0.333083, -0.917284, -0.218280,
		-0.936254, 0.294318, 0.191851,
		30.692585, 24.163038, 45.729259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.939142, 23.848009, 44.988976>,  <31.347963, 23.957016, 45.594963>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.939142, 23.848009, 44.988976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.730183, 24.125566, 45.187210>,  <30.604807, 24.292101, 45.306152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.730183, 24.125566, 45.187210>,  <30.939142, 23.848009, 44.988976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.730183, 24.125566, 45.187210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366028, 0.342450, -0.865304,
		-0.770146, -0.633432, 0.075091,
		-0.522396, 0.693896, 0.495591,
		30.573463, 24.333735, 45.335888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.331171, 23.805233, 44.604771>,  <30.939142, 23.848009, 44.988976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.331171, 23.805233, 44.604771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.397316, 24.148180, 44.799736>,  <30.437002, 24.353949, 44.916718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.397316, 24.148180, 44.799736>,  <30.331171, 23.805233, 44.604771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.397316, 24.148180, 44.799736> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206657, 0.513370, -0.832913,
		-0.964338, 0.037003, 0.262073,
		0.165361, 0.857369, 0.487415,
		30.446924, 24.405392, 44.945961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.912729, 24.229696, 44.260620>,  <30.331171, 23.805233, 44.604771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.912729, 24.229696, 44.260620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.171638, 24.460972, 44.459312>,  <30.326984, 24.599737, 44.578526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.171638, 24.460972, 44.459312>,  <29.912729, 24.229696, 44.260620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.171638, 24.460972, 44.459312> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015630, 0.641447, -0.767008,
		-0.762099, 0.504227, 0.406154,
		0.647272, 0.578188, 0.496727,
		30.365820, 24.634428, 44.608330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.689512, 24.949762, 44.168320>,  <29.912729, 24.229696, 44.260620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.689512, 24.949762, 44.168320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.070126, 24.968231, 44.289948>,  <30.298492, 24.979313, 44.362923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.070126, 24.968231, 44.289948>,  <29.689512, 24.949762, 44.168320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.070126, 24.968231, 44.289948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195523, 0.672337, -0.713956,
		-0.237401, 0.738804, 0.630722,
		0.951531, 0.046173, 0.304067,
		30.355585, 24.982082, 44.381168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.816515, 25.521036, 43.863773>,  <29.689512, 24.949762, 44.168320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.816515, 25.521036, 43.863773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.175022, 25.402687, 43.995934>,  <30.390127, 25.331678, 44.075230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.175022, 25.402687, 43.995934>,  <29.816515, 25.521036, 43.863773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.175022, 25.402687, 43.995934> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442732, 0.640999, -0.626983,
		-0.026277, 0.708223, 0.705500,
		0.896269, -0.295872, 0.330397,
		30.443903, 25.313925, 44.095051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.206867, 26.161110, 44.245213>,  <29.816515, 25.521036, 43.863773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.206867, 26.161110, 44.245213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.474514, 25.896332, 44.110092>,  <30.635103, 25.737465, 44.029018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.474514, 25.896332, 44.110092>,  <30.206867, 26.161110, 44.245213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.474514, 25.896332, 44.110092> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341962, 0.677818, -0.650865,
		0.659805, 0.319990, 0.679900,
		0.669118, -0.661944, -0.337803,
		30.675249, 25.697748, 44.008751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.905769, 26.574684, 44.191765>,  <30.206867, 26.161110, 44.245213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.905769, 26.574684, 44.191765> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.978008, 26.235912, 43.991726>,  <31.021351, 26.032650, 43.871704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.978008, 26.235912, 43.991726>,  <30.905769, 26.574684, 44.191765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.978008, 26.235912, 43.991726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539522, 0.510435, -0.669606,
		0.822376, -0.148884, 0.549119,
		0.180596, -0.846929, -0.500096,
		31.032187, 25.981834, 43.841698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.717039, 26.545773, 44.130489>,  <30.905769, 26.574684, 44.191765>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.717039, 26.545773, 44.130489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.546057, 26.318863, 43.848927>,  <31.443468, 26.182718, 43.679989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.546057, 26.318863, 43.848927>,  <31.717039, 26.545773, 44.130489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.546057, 26.318863, 43.848927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419753, 0.565070, -0.710284,
		0.800681, -0.599081, -0.003426,
		-0.427453, -0.567273, -0.703907,
		31.417820, 26.148682, 43.637756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.286289, 26.358730, 43.623112>,  <31.717039, 26.545773, 44.130489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.286289, 26.358730, 43.623112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.931810, 26.315464, 43.442909>,  <31.719124, 26.289505, 43.334789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.931810, 26.315464, 43.442909>,  <32.286289, 26.358730, 43.623112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.931810, 26.315464, 43.442909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375946, 0.400409, -0.835666,
		0.270777, -0.909930, -0.314176,
		-0.886196, -0.108166, -0.450506,
		31.665951, 26.283014, 43.307758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.413200, 26.148029, 42.844482>,  <32.286289, 26.358730, 43.623112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.413200, 26.148029, 42.844482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.038105, 26.286137, 42.859673>,  <31.813049, 26.369001, 42.868786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.038105, 26.286137, 42.859673>,  <32.413200, 26.148029, 42.844482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.038105, 26.286137, 42.859673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132859, 0.457536, -0.879209,
		-0.320937, -0.819421, -0.474920,
		-0.937736, 0.345268, 0.037973,
		31.756784, 26.389717, 42.871063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.181145, 26.123217, 42.168545>,  <32.413200, 26.148029, 42.844482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.181145, 26.123217, 42.168545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.966324, 26.400902, 42.360229>,  <31.837431, 26.567513, 42.475239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.966324, 26.400902, 42.360229>,  <32.181145, 26.123217, 42.168545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.966324, 26.400902, 42.360229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208600, 0.659741, -0.721961,
		-0.817351, -0.287767, -0.499128,
		-0.537051, 0.694213, 0.479212,
		31.805208, 26.609165, 42.503994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.952614, 26.496555, 41.665134>,  <32.181145, 26.123217, 42.168545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.952614, 26.496555, 41.665134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.871752, 26.724144, 41.983982>,  <31.823235, 26.860697, 42.175293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.871752, 26.724144, 41.983982>,  <31.952614, 26.496555, 41.665134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.871752, 26.724144, 41.983982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101368, 0.821712, -0.560815,
		-0.974094, -0.032568, -0.223788,
		-0.202154, 0.568971, 0.797124,
		31.811106, 26.894835, 42.223118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.385979, 26.866261, 41.453991>,  <31.952614, 26.496555, 41.665134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.385979, 26.866261, 41.453991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.567221, 27.049763, 41.759731>,  <31.675966, 27.159864, 41.943176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.567221, 27.049763, 41.759731>,  <31.385979, 26.866261, 41.453991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.567221, 27.049763, 41.759731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215248, 0.775751, -0.593194,
		-0.865079, 0.433306, 0.252752,
		0.453107, 0.458756, 0.764354,
		31.703154, 27.187389, 41.989037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.151291, 27.554447, 41.400646>,  <31.385979, 26.866261, 41.453991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.151291, 27.554447, 41.400646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.491472, 27.546497, 41.610916>,  <31.695581, 27.541727, 41.737080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.491472, 27.546497, 41.610916>,  <31.151291, 27.554447, 41.400646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.491472, 27.546497, 41.610916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385765, 0.702955, -0.597527,
		-0.357653, 0.710956, 0.605496,
		0.850453, -0.019872, 0.525676,
		31.746609, 27.540535, 41.768620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.312452, 28.290226, 41.505848>,  <31.151291, 27.554447, 41.400646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.312452, 28.290226, 41.505848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.657751, 28.091740, 41.542877>,  <31.864931, 27.972647, 41.565094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.657751, 28.091740, 41.542877>,  <31.312452, 28.290226, 41.505848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.657751, 28.091740, 41.542877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440234, 0.650364, -0.619048,
		0.246973, 0.575148, 0.779877,
		0.863249, -0.496217, 0.092577,
		31.916725, 27.942875, 41.570652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.819422, 28.739328, 41.643509>,  <31.312452, 28.290226, 41.505848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.819422, 28.739328, 41.643509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.014305, 28.424305, 41.492577>,  <32.131233, 28.235291, 41.402020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.014305, 28.424305, 41.492577>,  <31.819422, 28.739328, 41.643509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.014305, 28.424305, 41.492577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372153, 0.578125, -0.726136,
		0.790019, 0.213356, 0.574760,
		0.487208, -0.787560, -0.377329,
		32.160469, 28.188036, 41.379379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.480412, 28.922628, 41.614853>,  <31.819422, 28.739328, 41.643509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.480412, 28.922628, 41.614853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.499844, 28.608240, 41.368313>,  <32.511505, 28.419607, 41.220387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.499844, 28.608240, 41.368313>,  <32.480412, 28.922628, 41.614853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.499844, 28.608240, 41.368313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513535, 0.548931, -0.659513,
		0.856692, -0.284478, 0.430291,
		0.048583, -0.785969, -0.616354,
		32.514420, 28.372450, 41.183407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.193310, 28.817789, 41.229698>,  <32.480412, 28.922628, 41.614853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.193310, 28.817789, 41.229698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.903446, 28.656385, 41.006252>,  <32.729527, 28.559544, 40.872185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.903446, 28.656385, 41.006252>,  <33.193310, 28.817789, 41.229698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.903446, 28.656385, 41.006252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455389, 0.327987, -0.827674,
		0.517191, -0.854170, -0.053926,
		-0.724662, -0.403508, -0.558612,
		32.686047, 28.535334, 40.838669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.591248, 28.808319, 40.648861>,  <33.193310, 28.817789, 41.229698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.591248, 28.808319, 40.648861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.249100, 28.650677, 40.514385>,  <33.043812, 28.556091, 40.433701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.249100, 28.650677, 40.514385>,  <33.591248, 28.808319, 40.648861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.249100, 28.650677, 40.514385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300749, 0.150586, -0.941740,
		0.421771, -0.906644, -0.010280,
		-0.855371, -0.394106, -0.336185,
		32.992489, 28.532446, 40.413528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.771290, 28.232941, 40.194817>,  <33.591248, 28.808319, 40.648861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.771290, 28.232941, 40.194817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.410721, 28.386097, 40.113987>,  <33.194378, 28.477991, 40.065491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.410721, 28.386097, 40.113987>,  <33.771290, 28.232941, 40.194817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.410721, 28.386097, 40.113987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257566, 0.099117, -0.961164,
		-0.347991, -0.918461, -0.187966,
		-0.901422, 0.382890, -0.202072,
		33.140293, 28.500963, 40.053364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.496864, 27.856485, 39.603657>,  <33.771290, 28.232941, 40.194817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.496864, 27.856485, 39.603657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.315605, 28.212786, 39.589699>,  <33.206848, 28.426567, 39.581322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.315605, 28.212786, 39.589699>,  <33.496864, 27.856485, 39.603657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.315605, 28.212786, 39.589699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372580, 0.153684, -0.915186,
		-0.809841, -0.427717, -0.401518,
		-0.453147, 0.890752, -0.034900,
		33.179661, 28.480011, 39.579227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.080372, 27.926846, 38.973656>,  <33.496864, 27.856485, 39.603657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.080372, 27.926846, 38.973656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.159370, 28.297962, 39.100269>,  <33.206772, 28.520632, 39.176239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.159370, 28.297962, 39.100269>,  <33.080372, 27.926846, 38.973656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.159370, 28.297962, 39.100269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346727, 0.235912, -0.907814,
		-0.916937, 0.289045, -0.275099,
		0.197500, 0.927792, 0.316536,
		33.218620, 28.576300, 39.195229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.767784, 28.357536, 38.514149>,  <33.080372, 27.926846, 38.973656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.767784, 28.357536, 38.514149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.052151, 28.574087, 38.693710>,  <33.222771, 28.704018, 38.801445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.052151, 28.574087, 38.693710>,  <32.767784, 28.357536, 38.514149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.052151, 28.574087, 38.693710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262691, 0.387687, -0.883568,
		-0.652378, 0.746062, 0.133397,
		0.710913, 0.541378, 0.448902,
		33.265423, 28.736500, 38.828381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.819927, 28.930025, 38.140766>,  <32.767784, 28.357536, 38.514149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.819927, 28.930025, 38.140766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.167271, 28.970253, 38.335018>,  <33.375675, 28.994390, 38.451569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.167271, 28.970253, 38.335018>,  <32.819927, 28.930025, 38.140766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.167271, 28.970253, 38.335018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399512, 0.438327, -0.805146,
		-0.293839, 0.893172, 0.340446,
		0.868360, 0.100571, 0.485630,
		33.427780, 29.000423, 38.480709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.967327, 29.641520, 38.185669>,  <32.819927, 28.930025, 38.140766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.967327, 29.641520, 38.185669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.325741, 29.493589, 38.283936>,  <33.540791, 29.404831, 38.342896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.325741, 29.493589, 38.283936>,  <32.967327, 29.641520, 38.185669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.325741, 29.493589, 38.283936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419035, 0.521537, -0.743242,
		0.146743, 0.768914, 0.622284,
		0.896033, -0.369825, 0.245670,
		33.594551, 29.382643, 38.357635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.465733, 30.166195, 38.413986>,  <32.967327, 29.641520, 38.185669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.465733, 30.166195, 38.413986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.670132, 29.855394, 38.266937>,  <33.792770, 29.668913, 38.178707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.670132, 29.855394, 38.266937>,  <33.465733, 30.166195, 38.413986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.670132, 29.855394, 38.266937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482710, 0.613264, -0.625218,
		0.711244, 0.142033, 0.688446,
		0.511001, -0.777003, -0.367620,
		33.823433, 29.622293, 38.156651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.094715, 30.464977, 38.315071>,  <33.465733, 30.166195, 38.413986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.094715, 30.464977, 38.315071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.088310, 30.161572, 38.054485>,  <34.084469, 29.979528, 37.898136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.088310, 30.161572, 38.054485>,  <34.094715, 30.464977, 38.315071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.088310, 30.161572, 38.054485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.693217, 0.461110, -0.553920,
		0.720551, -0.460472, 0.518432,
		-0.016010, -0.758514, -0.651460,
		34.083508, 29.934017, 37.859047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.760300, 30.447777, 38.032642>,  <34.094715, 30.464977, 38.315071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.760300, 30.447777, 38.032642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.575665, 30.211456, 37.767948>,  <34.464882, 30.069664, 37.609131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.575665, 30.211456, 37.767948>,  <34.760300, 30.447777, 38.032642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.575665, 30.211456, 37.767948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.671701, 0.254477, -0.695743,
		0.579442, -0.765634, 0.279378,
		-0.461590, -0.590801, -0.661732,
		34.437187, 30.034216, 37.569427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.392311, 30.069996, 37.554474>,  <34.760300, 30.447777, 38.032642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.392311, 30.069996, 37.554474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.043987, 30.041019, 37.359970>,  <34.834991, 30.023634, 37.243267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.043987, 30.041019, 37.359970>,  <35.392311, 30.069996, 37.554474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.043987, 30.041019, 37.359970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456499, 0.247991, -0.854464,
		0.182486, -0.966050, -0.182883,
		-0.870808, -0.072442, -0.486256,
		34.782745, 30.019287, 37.214092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.537964, 29.581518, 36.960014>,  <35.392311, 30.069996, 37.554474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.537964, 29.581518, 36.960014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.220913, 29.797548, 36.846840>,  <35.030682, 29.927166, 36.778934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.220913, 29.797548, 36.846840>,  <35.537964, 29.581518, 36.960014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.220913, 29.797548, 36.846840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404206, 0.118050, -0.907018,
		-0.456459, -0.833295, -0.311872,
		-0.792631, 0.540077, -0.282938,
		34.983124, 29.959572, 36.761959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.287266, 29.276251, 36.263390>,  <35.537964, 29.581518, 36.960014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.287266, 29.276251, 36.263390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.152889, 29.647484, 36.327656>,  <35.072266, 29.870224, 36.366215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.152889, 29.647484, 36.327656>,  <35.287266, 29.276251, 36.263390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.152889, 29.647484, 36.327656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248413, 0.251837, -0.935344,
		-0.908535, -0.274307, -0.315149,
		-0.335938, 0.928081, 0.160662,
		35.052109, 29.925907, 36.375854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.901642, 29.582174, 35.602627>,  <35.287266, 29.276251, 36.263390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.901642, 29.582174, 35.602627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.979778, 29.927757, 35.788280>,  <35.026661, 30.135107, 35.899673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.979778, 29.927757, 35.788280>,  <34.901642, 29.582174, 35.602627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.979778, 29.927757, 35.788280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311309, 0.394156, -0.864713,
		-0.930016, 0.313400, -0.191964,
		0.195338, 0.863957, 0.464136,
		35.038380, 30.186945, 35.927521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.741096, 29.943523, 35.064304>,  <34.901642, 29.582174, 35.602627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.741096, 29.943523, 35.064304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.929672, 30.191349, 35.315346>,  <35.042816, 30.340044, 35.465969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.929672, 30.191349, 35.315346>,  <34.741096, 29.943523, 35.064304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.929672, 30.191349, 35.315346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453820, 0.439760, -0.775022,
		-0.756170, 0.650194, -0.073851,
		0.471438, 0.619563, 0.627604,
		35.071102, 30.377218, 35.503628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.675610, 30.642160, 34.748009>,  <34.741096, 29.943523, 35.064304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.675610, 30.642160, 34.748009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.982033, 30.716047, 34.994270>,  <35.165886, 30.760380, 35.142029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.982033, 30.716047, 34.994270>,  <34.675610, 30.642160, 34.748009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.982033, 30.716047, 34.994270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382914, 0.638160, -0.667928,
		-0.516264, 0.747417, 0.418139,
		0.766061, 0.184716, 0.615655,
		35.211849, 30.771461, 35.178967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.775841, 31.433561, 34.839478>,  <34.675610, 30.642160, 34.748009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.775841, 31.433561, 34.839478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.115517, 31.249754, 34.943569>,  <35.319321, 31.139469, 35.006023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.115517, 31.249754, 34.943569>,  <34.775841, 31.433561, 34.839478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.115517, 31.249754, 34.943569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527547, 0.715854, -0.457435,
		0.023914, 0.525732, 0.850314,
		0.849189, -0.459520, 0.260229,
		35.370274, 31.111898, 35.021637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.233002, 32.015255, 35.036980>,  <34.775841, 31.433561, 34.839478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.233002, 32.015255, 35.036980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.480556, 31.710041, 34.962418>,  <35.629089, 31.526911, 34.917679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.480556, 31.710041, 34.962418>,  <35.233002, 32.015255, 35.036980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.480556, 31.710041, 34.962418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.656812, 0.632881, -0.409950,
		0.430783, 0.131277, 0.892856,
		0.618889, -0.763039, -0.186410,
		35.666222, 31.481129, 34.906494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.857426, 32.257397, 35.148468>,  <35.233002, 32.015255, 35.036980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.857426, 32.257397, 35.148468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.952427, 31.922226, 34.951908>,  <36.009426, 31.721123, 34.833973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.952427, 31.922226, 34.951908>,  <35.857426, 32.257397, 35.148468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.952427, 31.922226, 34.951908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.668047, 0.508144, -0.543602,
		0.705198, -0.199168, 0.680461,
		0.237504, -0.837927, -0.491395,
		36.023678, 31.670847, 34.804489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.584103, 32.275627, 35.120247>,  <35.857426, 32.257397, 35.148468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.584103, 32.275627, 35.120247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.459789, 32.041222, 34.820915>,  <36.385201, 31.900578, 34.641315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.459789, 32.041222, 34.820915>,  <36.584103, 32.275627, 35.120247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.459789, 32.041222, 34.820915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.583856, 0.503566, -0.636815,
		0.750018, -0.634827, 0.185651,
		-0.310781, -0.586017, -0.748331,
		36.366554, 31.865417, 34.596416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.223637, 31.994019, 34.768372>,  <36.584103, 32.275627, 35.120247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.223637, 31.994019, 34.768372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.914150, 31.986893, 34.515057>,  <36.728458, 31.982618, 34.363068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.914150, 31.986893, 34.515057>,  <37.223637, 31.994019, 34.768372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.914150, 31.986893, 34.515057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556101, 0.459790, -0.692347,
		0.303511, -0.887849, -0.345840,
		-0.773713, -0.017813, -0.633285,
		36.682037, 31.981548, 34.325069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.853809, 31.627642, 34.968941>,  <37.223637, 31.994019, 34.768372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.853809, 31.627642, 34.968941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.238476, 31.558542, 35.054123>,  <38.469276, 31.517082, 35.105232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.238476, 31.558542, 35.054123>,  <37.853809, 31.627642, 34.968941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.238476, 31.558542, 35.054123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236233, -0.127624, 0.963279,
		-0.139253, -0.976658, -0.163546,
		0.961667, -0.172775, 0.212947,
		38.526978, 31.506718, 35.118008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.923237, 30.888906, 35.226921>,  <37.853809, 31.627642, 34.968941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.923237, 30.888906, 35.226921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.211216, 31.127880, 35.368202>,  <38.384003, 31.271263, 35.452972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.211216, 31.127880, 35.368202>,  <37.923237, 30.888906, 35.226921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.211216, 31.127880, 35.368202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296115, -0.195852, 0.934857,
		0.627690, -0.777635, 0.035906,
		0.719945, 0.597433, 0.353204,
		38.427200, 31.307110, 35.474163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.372982, 30.406906, 35.605751>,  <37.923237, 30.888906, 35.226921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.372982, 30.406906, 35.605751> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.393749, 30.789295, 35.721279>,  <38.406212, 31.018728, 35.790596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.393749, 30.789295, 35.721279>,  <38.372982, 30.406906, 35.605751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.393749, 30.789295, 35.721279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345632, -0.254135, 0.903302,
		0.936933, -0.146728, 0.317220,
		0.051923, 0.955974, 0.288822,
		38.409325, 31.076088, 35.807926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.701092, 30.357073, 36.319656>,  <38.372982, 30.406906, 35.605751>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.701092, 30.357073, 36.319656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.566410, 30.733463, 36.305851>,  <38.485600, 30.959297, 36.297569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.566410, 30.733463, 36.305851>,  <38.701092, 30.357073, 36.319656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.566410, 30.733463, 36.305851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431711, -0.121697, 0.893765,
		0.836811, 0.315838, 0.447206,
		-0.336708, 0.940976, -0.034514,
		38.465397, 31.015757, 36.295498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.961246, 30.607224, 37.025753>,  <38.701092, 30.357073, 36.319656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.961246, 30.607224, 37.025753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.672176, 30.827971, 36.859291>,  <38.498734, 30.960419, 36.759415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.672176, 30.827971, 36.859291>,  <38.961246, 30.607224, 37.025753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.672176, 30.827971, 36.859291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474407, 0.041841, 0.879311,
		0.502677, 0.832880, 0.231573,
		-0.722671, 0.551869, -0.416156,
		38.455376, 30.993532, 36.734444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.854549, 31.075216, 37.670593>,  <38.961246, 30.607224, 37.025753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.854549, 31.075216, 37.670593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.542957, 31.098026, 37.420811>,  <38.356003, 31.111713, 37.270943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.542957, 31.098026, 37.420811>,  <38.854549, 31.075216, 37.670593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.542957, 31.098026, 37.420811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.624917, 0.011484, 0.780606,
		0.051687, 0.998306, 0.026691,
		-0.778978, 0.057026, -0.624453,
		38.309265, 31.115133, 37.233475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.405533, 31.636044, 37.861893>,  <38.854549, 31.075216, 37.670593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.405533, 31.636044, 37.861893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.185978, 31.348005, 37.692101>,  <38.054245, 31.175182, 37.590225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.185978, 31.348005, 37.692101>,  <38.405533, 31.636044, 37.861893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.185978, 31.348005, 37.692101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.630085, 0.022722, 0.776194,
		-0.549290, 0.693501, -0.466194,
		-0.548884, -0.720098, -0.424483,
		38.021313, 31.131975, 37.564754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.721680, 31.669142, 38.261364>,  <38.405533, 31.636044, 37.861893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.721680, 31.669142, 38.261364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.723488, 31.310534, 38.084175>,  <37.724575, 31.095367, 37.977859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.723488, 31.310534, 38.084175>,  <37.721680, 31.669142, 38.261364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.723488, 31.310534, 38.084175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.625710, -0.348086, 0.698086,
		-0.780043, 0.274016, -0.562537,
		0.004525, -0.896522, -0.442976,
		37.724846, 31.041576, 37.951283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.028736, 31.537046, 38.113785>,  <37.721680, 31.669142, 38.261364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.028736, 31.537046, 38.113785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.218182, 31.185640, 38.088818>,  <37.331848, 30.974796, 38.073837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.218182, 31.185640, 38.088818>,  <37.028736, 31.537046, 38.113785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.218182, 31.185640, 38.088818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.680441, -0.409983, 0.607383,
		-0.559186, -0.245195, -0.791954,
		0.473615, -0.878518, -0.062416,
		37.360268, 30.922085, 38.070091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.558010, 31.039320, 37.937592>,  <37.028736, 31.537046, 38.113785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.558010, 31.039320, 37.937592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.838646, 30.820620, 38.120384>,  <37.007027, 30.689400, 38.230061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.838646, 30.820620, 38.120384>,  <36.558010, 31.039320, 37.937592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.838646, 30.820620, 38.120384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.692928, -0.373899, 0.616482,
		-0.166195, -0.749177, -0.641181,
		0.701591, -0.546748, 0.456986,
		37.049122, 30.656595, 38.257481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.268764, 30.448719, 38.003239>,  <36.558010, 31.039320, 37.937592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.268764, 30.448719, 38.003239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.573502, 30.418564, 38.260582>,  <36.756344, 30.400471, 38.414989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.573502, 30.418564, 38.260582>,  <36.268764, 30.448719, 38.003239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.573502, 30.418564, 38.260582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.576912, -0.530611, 0.620987,
		0.294559, -0.844257, -0.447734,
		0.761845, -0.075386, 0.643358,
		36.802055, 30.395948, 38.453590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.223778, 29.708225, 38.214314>,  <36.268764, 30.448719, 38.003239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.223778, 29.708225, 38.214314> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.450848, 29.909624, 38.474850>,  <36.587090, 30.030464, 38.631172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.450848, 29.909624, 38.474850>,  <36.223778, 29.708225, 38.214314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.450848, 29.909624, 38.474850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433784, -0.489496, 0.756456,
		0.699701, -0.711957, -0.059463,
		0.567671, 0.503498, 0.651336,
		36.621147, 30.060673, 38.670250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.573017, 29.232119, 38.590576>,  <36.223778, 29.708225, 38.214314>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.573017, 29.232119, 38.590576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.606461, 29.549751, 38.831390>,  <36.626526, 29.740332, 38.975880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.606461, 29.549751, 38.831390>,  <36.573017, 29.232119, 38.590576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.606461, 29.549751, 38.831390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372818, -0.535345, 0.757900,
		0.924130, -0.287817, 0.251288,
		0.083611, 0.794083, 0.602032,
		36.631542, 29.787975, 39.012001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.040997, 28.994848, 39.144855>,  <36.573017, 29.232119, 38.590576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.040997, 28.994848, 39.144855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.832016, 29.304253, 39.288368>,  <36.706627, 29.489895, 39.374477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.832016, 29.304253, 39.288368>,  <37.040997, 28.994848, 39.144855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.832016, 29.304253, 39.288368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293426, -0.558174, 0.776108,
		0.800592, 0.300200, 0.518586,
		-0.522449, 0.773513, 0.358783,
		36.675282, 29.536306, 39.396004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.273796, 29.088829, 39.820213>,  <37.040997, 28.994848, 39.144855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.273796, 29.088829, 39.820213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.904774, 29.243065, 39.825947>,  <36.683361, 29.335606, 39.829388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.904774, 29.243065, 39.825947>,  <37.273796, 29.088829, 39.820213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.904774, 29.243065, 39.825947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202482, -0.515415, 0.832675,
		0.328459, 0.765290, 0.553576,
		-0.922559, 0.385588, 0.014335,
		36.628006, 29.358742, 39.830246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.063698, 29.088543, 40.498493>,  <37.273796, 29.088829, 39.820213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.063698, 29.088543, 40.498493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.697472, 29.160294, 40.354519>,  <36.477734, 29.203344, 40.268135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.697472, 29.160294, 40.354519>,  <37.063698, 29.088543, 40.498493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.697472, 29.160294, 40.354519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398931, -0.291933, 0.869270,
		0.050851, 0.939467, 0.338844,
		-0.915570, 0.179378, -0.359937,
		36.422802, 29.214108, 40.246536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.722065, 29.470304, 41.038300>,  <37.063698, 29.088543, 40.498493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.722065, 29.470304, 41.038300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.434940, 29.301332, 40.816921>,  <36.262665, 29.199949, 40.684093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.434940, 29.301332, 40.816921>,  <36.722065, 29.470304, 41.038300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.434940, 29.301332, 40.816921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482478, -0.271298, 0.832834,
		-0.501964, 0.864841, -0.009074,
		-0.717807, -0.422430, -0.553449,
		36.219597, 29.174603, 40.650887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.141357, 29.633289, 41.445557>,  <36.722065, 29.470304, 41.038300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.141357, 29.633289, 41.445557> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.040611, 29.316420, 41.223198>,  <35.980164, 29.126297, 41.089783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.040611, 29.316420, 41.223198>,  <36.141357, 29.633289, 41.445557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.040611, 29.316420, 41.223198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.626790, -0.304136, 0.717381,
		-0.737360, 0.529114, -0.419926,
		-0.251861, -0.792174, -0.555901,
		35.965054, 29.078768, 41.056427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.477764, 29.539770, 41.518791>,  <36.141357, 29.633289, 41.445557>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.477764, 29.539770, 41.518791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.510948, 29.169466, 41.371231>,  <35.530857, 28.947283, 41.282696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.510948, 29.169466, 41.371231>,  <35.477764, 29.539770, 41.518791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.510948, 29.169466, 41.371231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.609947, -0.339905, 0.715842,
		-0.788088, 0.165624, -0.592862,
		0.082956, -0.925761, -0.368897,
		35.535835, 28.891737, 41.260563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.823273, 29.247082, 41.318752>,  <35.477764, 29.539770, 41.518791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.823273, 29.247082, 41.318752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.063416, 28.935749, 41.392254>,  <35.207500, 28.748949, 41.436356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.063416, 28.935749, 41.392254>,  <34.823273, 29.247082, 41.318752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.063416, 28.935749, 41.392254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.588788, -0.274691, 0.760180,
		-0.541200, -0.564572, -0.623187,
		0.600360, -0.778334, 0.183751,
		35.243523, 28.702250, 41.447380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.376225, 28.691669, 41.388241>,  <34.823273, 29.247082, 41.318752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.376225, 28.691669, 41.388241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.698547, 28.556618, 41.582844>,  <34.891941, 28.475586, 41.699604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.698547, 28.556618, 41.582844>,  <34.376225, 28.691669, 41.388241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.698547, 28.556618, 41.582844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.591506, -0.419611, 0.688511,
		-0.028318, -0.842575, -0.537834,
		0.805803, -0.337629, 0.486506,
		34.940289, 28.455328, 41.728794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.111275, 27.925447, 41.457863>,  <34.376225, 28.691669, 41.388241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.111275, 27.925447, 41.457863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.444157, 27.994076, 41.668766>,  <34.643887, 28.035254, 41.795307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.444157, 27.994076, 41.668766>,  <34.111275, 27.925447, 41.457863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.444157, 27.994076, 41.668766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419484, -0.427017, 0.801055,
		0.362585, -0.887817, -0.283394,
		0.832205, 0.171571, 0.527255,
		34.693817, 28.045547, 41.826942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.272160, 27.327110, 41.820683>,  <34.111275, 27.925447, 41.457863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.272160, 27.327110, 41.820683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.407028, 27.636990, 42.034657>,  <34.487949, 27.822918, 42.163040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.407028, 27.636990, 42.034657>,  <34.272160, 27.327110, 41.820683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.407028, 27.636990, 42.034657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375668, -0.410299, 0.830980,
		0.863245, -0.481139, 0.152690,
		0.337169, 0.774700, 0.534937,
		34.508179, 27.869400, 42.195137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.582348, 27.036093, 42.445377>,  <34.272160, 27.327110, 41.820683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.582348, 27.036093, 42.445377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.486343, 27.419842, 42.504704>,  <34.428741, 27.650091, 42.540298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.486343, 27.419842, 42.504704>,  <34.582348, 27.036093, 42.445377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.486343, 27.419842, 42.504704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332514, -0.224785, 0.915918,
		0.912047, 0.170513, 0.372956,
		-0.240011, 0.959373, 0.148316,
		34.414341, 27.707653, 42.549198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.805511, 27.229166, 43.115574>,  <34.582348, 27.036093, 42.445377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.805511, 27.229166, 43.115574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.559978, 27.536842, 43.044521>,  <34.412659, 27.721449, 43.001892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.559978, 27.536842, 43.044521>,  <34.805511, 27.229166, 43.115574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.559978, 27.536842, 43.044521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445585, -0.151849, 0.882267,
		0.651660, 0.620714, 0.435950,
		-0.613835, 0.769191, -0.177627,
		34.375828, 27.767599, 42.991234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.918468, 27.730736, 43.699348>,  <34.805511, 27.229166, 43.115574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.918468, 27.730736, 43.699348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.556290, 27.780138, 43.536911>,  <34.338982, 27.809780, 43.439449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.556290, 27.780138, 43.536911>,  <34.918468, 27.730736, 43.699348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.556290, 27.780138, 43.536911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424257, -0.293130, 0.856785,
		-0.013220, 0.948062, 0.317812,
		-0.905445, 0.123507, -0.406097,
		34.284657, 27.817190, 43.415081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.449375, 28.143007, 44.158302>,  <34.918468, 27.730736, 43.699348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.449375, 28.143007, 44.158302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.186050, 27.975367, 43.908188>,  <34.028057, 27.874783, 43.758118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.186050, 27.975367, 43.908188>,  <34.449375, 28.143007, 44.158302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.186050, 27.975367, 43.908188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511936, -0.359722, 0.780078,
		-0.551860, 0.833640, 0.022257,
		-0.658311, -0.419100, -0.625286,
		33.988556, 27.849636, 43.720600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.864231, 28.306612, 44.379158>,  <34.449375, 28.143007, 44.158302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.864231, 28.306612, 44.379158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.713276, 27.996096, 44.177189>,  <33.622704, 27.809786, 44.056007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.713276, 27.996096, 44.177189>,  <33.864231, 28.306612, 44.379158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.713276, 27.996096, 44.177189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.674021, -0.143643, 0.724612,
		-0.635039, 0.613791, -0.469027,
		-0.377388, -0.776291, -0.504927,
		33.600060, 27.763208, 44.025711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.206558, 28.247204, 44.591454>,  <33.864231, 28.306612, 44.379158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.206558, 28.247204, 44.591454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.242458, 27.893259, 44.408604>,  <33.264000, 27.680893, 44.298893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.242458, 27.893259, 44.408604>,  <33.206558, 28.247204, 44.591454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.242458, 27.893259, 44.408604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.643578, -0.401810, 0.651427,
		-0.760100, 0.235727, -0.605541,
		0.089753, -0.884862, -0.457125,
		33.269386, 27.627800, 44.271465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.547550, 27.893005, 44.296787>,  <33.206558, 28.247204, 44.591454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.547550, 27.893005, 44.296787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.810814, 27.608673, 44.396019>,  <32.968773, 27.438074, 44.455559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.810814, 27.608673, 44.396019>,  <32.547550, 27.893005, 44.296787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.810814, 27.608673, 44.396019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.589925, -0.282186, 0.756545,
		-0.467773, -0.644274, -0.605061,
		0.658162, -0.710831, 0.248074,
		33.008263, 27.395424, 44.470440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.144943, 27.481968, 44.651638>,  <32.547550, 27.893005, 44.296787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.144943, 27.481968, 44.651638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.514832, 27.358849, 44.741211>,  <32.736767, 27.284977, 44.794952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.514832, 27.358849, 44.741211>,  <32.144943, 27.481968, 44.651638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.514832, 27.358849, 44.741211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341073, -0.408876, 0.846457,
		-0.168979, -0.859116, -0.483080,
		0.924724, -0.307799, 0.223930,
		32.792248, 27.266508, 44.808392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.992512, 26.836105, 44.990135>,  <32.144943, 27.481968, 44.651638>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.992512, 26.836105, 44.990135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.361626, 26.952839, 45.090775>,  <32.583096, 27.022879, 45.151157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.361626, 26.952839, 45.090775>,  <31.992512, 26.836105, 44.990135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.361626, 26.952839, 45.090775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164920, -0.290995, 0.942403,
		0.348240, -0.911128, -0.220397,
		0.922784, 0.291834, 0.251599,
		32.638462, 27.040390, 45.166256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.142712, 26.211308, 45.329792>,  <31.992512, 26.836105, 44.990135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.142712, 26.211308, 45.329792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.407906, 26.489798, 45.439861>,  <32.567020, 26.656893, 45.505905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.407906, 26.489798, 45.439861>,  <32.142712, 26.211308, 45.329792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.407906, 26.489798, 45.439861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027295, -0.344848, 0.938262,
		0.748137, -0.629562, -0.209625,
		0.662983, 0.696226, 0.275178,
		32.606800, 26.698666, 45.522415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.711777, 25.867798, 45.642998>,  <32.142712, 26.211308, 45.329792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.711777, 25.867798, 45.642998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.739632, 26.235477, 45.798035>,  <32.756344, 26.456085, 45.891056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.739632, 26.235477, 45.798035>,  <32.711777, 25.867798, 45.642998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.739632, 26.235477, 45.798035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054292, -0.384467, 0.921541,
		0.996094, -0.085213, 0.023133,
		0.069633, 0.919197, 0.387592,
		32.760521, 26.511236, 45.914310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.089096, 25.758728, 46.159176>,  <32.711777, 25.867798, 45.642998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.089096, 25.758728, 46.159176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.925472, 26.115517, 46.236176>,  <32.827297, 26.329590, 46.282375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.925472, 26.115517, 46.236176>,  <33.089096, 25.758728, 46.159176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.925472, 26.115517, 46.236176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064939, -0.238873, 0.968877,
		0.910193, 0.383831, 0.155638,
		-0.409063, 0.891972, 0.192495,
		32.802753, 26.383108, 46.293922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.440941, 25.990969, 46.746063>,  <33.089096, 25.758728, 46.159176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.440941, 25.990969, 46.746063> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.090336, 26.183176, 46.734539>,  <32.879974, 26.298500, 46.727627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.090336, 26.183176, 46.734539>,  <33.440941, 25.990969, 46.746063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.090336, 26.183176, 46.734539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171014, -0.254893, 0.951727,
		0.449978, 0.839127, 0.305591,
		-0.876512, 0.480516, -0.028806,
		32.827381, 26.327332, 46.725899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.413109, 26.551208, 47.286697>,  <33.440941, 25.990969, 46.746063>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.413109, 26.551208, 47.286697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.047558, 26.414154, 47.199577>,  <32.828228, 26.331921, 47.147305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.047558, 26.414154, 47.199577>,  <33.413109, 26.551208, 47.286697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.047558, 26.414154, 47.199577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090848, -0.350263, 0.932235,
		-0.395705, 0.871731, 0.288968,
		-0.913873, -0.342638, -0.217796,
		32.773396, 26.311363, 47.134239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.053070, 26.732510, 47.776661>,  <33.413109, 26.551208, 47.286697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.053070, 26.732510, 47.776661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.862968, 26.408031, 47.640366>,  <32.748909, 26.213345, 47.558590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.862968, 26.408031, 47.640366>,  <33.053070, 26.732510, 47.776661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.862968, 26.408031, 47.640366> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044048, -0.408713, 0.911599,
		-0.878748, 0.418229, 0.229972,
		-0.475250, -0.811195, -0.340734,
		32.720394, 26.164673, 47.538147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.528568, 27.158314, 48.209400>,  <33.053070, 26.732510, 47.776661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.528568, 27.158314, 48.209400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.738800, 27.369427, 48.476295>,  <33.864941, 27.496094, 48.636433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.738800, 27.369427, 48.476295>,  <33.528568, 27.158314, 48.209400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.738800, 27.369427, 48.476295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354847, 0.576818, -0.735775,
		-0.773204, 0.623479, 0.115884,
		0.525584, 0.527783, 0.667238,
		33.896477, 27.527761, 48.676468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.422726, 27.821846, 48.057621>,  <33.528568, 27.158314, 48.209400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.422726, 27.821846, 48.057621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.773151, 27.824612, 48.250481>,  <33.983406, 27.826271, 48.366196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.773151, 27.824612, 48.250481>,  <33.422726, 27.821846, 48.057621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.773151, 27.824612, 48.250481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383759, 0.595432, -0.705825,
		-0.291967, 0.803376, 0.518982,
		0.876062, 0.006914, 0.482149,
		34.035969, 27.826685, 48.395126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.713573, 28.628437, 48.101894>,  <33.422726, 27.821846, 48.057621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.713573, 28.628437, 48.101894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.988766, 28.344360, 48.161629>,  <34.153881, 28.173914, 48.197472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.988766, 28.344360, 48.161629>,  <33.713573, 28.628437, 48.101894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.988766, 28.344360, 48.161629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.639732, 0.496321, -0.586864,
		0.342667, 0.499290, 0.795794,
		0.687984, -0.710194, 0.149339,
		34.195160, 28.131302, 48.206432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.286949, 28.995033, 48.211685>,  <33.713573, 28.628437, 48.101894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.286949, 28.995033, 48.211685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.412510, 28.629217, 48.109642>,  <34.487846, 28.409727, 48.048416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.412510, 28.629217, 48.109642>,  <34.286949, 28.995033, 48.211685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.412510, 28.629217, 48.109642> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.651486, 0.402926, -0.642819,
		0.690673, 0.035587, 0.722291,
		0.313907, -0.914540, -0.255105,
		34.506683, 28.354855, 48.033112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.876244, 29.162260, 47.874596>,  <34.286949, 28.995033, 48.211685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.876244, 29.162260, 47.874596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.823353, 28.775494, 47.787334>,  <34.791618, 28.543434, 47.734978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.823353, 28.775494, 47.787334>,  <34.876244, 29.162260, 47.874596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.823353, 28.775494, 47.787334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546622, 0.112462, -0.829793,
		0.826874, -0.228967, 0.513667,
		-0.132227, -0.966916, -0.218150,
		34.783684, 28.485418, 47.721889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.546993, 28.865320, 47.721794>,  <34.876244, 29.162260, 47.874596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.546993, 28.865320, 47.721794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.266312, 28.643890, 47.542385>,  <35.097904, 28.511032, 47.434742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.266312, 28.643890, 47.542385>,  <35.546993, 28.865320, 47.721794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.266312, 28.643890, 47.542385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524401, 0.024867, -0.851109,
		0.482307, -0.832427, 0.272847,
		-0.701701, -0.553577, -0.448519,
		35.055801, 28.477818, 47.407829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.927242, 28.567593, 47.240948>,  <35.546993, 28.865320, 47.721794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.927242, 28.567593, 47.240948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.552940, 28.530207, 47.104939>,  <35.328358, 28.507774, 47.023331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.552940, 28.530207, 47.104939>,  <35.927242, 28.567593, 47.240948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.552940, 28.530207, 47.104939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333233, 0.081087, -0.939351,
		0.115373, -0.992315, -0.044730,
		-0.935759, -0.093470, -0.340027,
		35.272213, 28.502167, 47.002930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.910587, 28.193403, 46.643803>,  <35.927242, 28.567593, 47.240948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.910587, 28.193403, 46.643803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.561264, 28.386007, 46.614193>,  <35.351669, 28.501570, 46.596428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.561264, 28.386007, 46.614193>,  <35.910587, 28.193403, 46.643803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.561264, 28.386007, 46.614193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171255, 0.161181, -0.971953,
		-0.456075, -0.861491, -0.223222,
		-0.873308, 0.481511, -0.074024,
		35.299271, 28.530460, 46.591984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.542149, 27.970278, 45.971882>,  <35.910587, 28.193403, 46.643803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.542149, 27.970278, 45.971882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.394566, 28.329300, 46.068436>,  <35.306015, 28.544714, 46.126366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.394566, 28.329300, 46.068436>,  <35.542149, 27.970278, 45.971882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.394566, 28.329300, 46.068436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162645, 0.318046, -0.934020,
		-0.915105, -0.305353, -0.263328,
		-0.368956, 0.897556, 0.241382,
		35.283878, 28.598566, 46.140850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.255146, 28.197216, 45.354961>,  <35.542149, 27.970278, 45.971882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.255146, 28.197216, 45.354961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.270531, 28.529644, 45.576897>,  <35.279762, 28.729101, 45.710056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.270531, 28.529644, 45.576897>,  <35.255146, 28.197216, 45.354961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.270531, 28.529644, 45.576897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167192, 0.542070, -0.823533,
		-0.985174, 0.124440, -0.118099,
		0.038462, 0.831069, 0.554838,
		35.282070, 28.778965, 45.743347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.729248, 28.709616, 45.060192>,  <35.255146, 28.197216, 45.354961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.729248, 28.709616, 45.060192> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.008686, 28.916557, 45.257908>,  <35.176350, 29.040722, 45.376537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.008686, 28.916557, 45.257908>,  <34.729248, 28.709616, 45.060192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.008686, 28.916557, 45.257908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133306, 0.584604, -0.800292,
		-0.702994, 0.624968, 0.339433,
		0.698591, 0.517352, 0.494285,
		35.218262, 29.071762, 45.406193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.465725, 29.473429, 45.106663>,  <34.729248, 28.709616, 45.060192>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.465725, 29.473429, 45.106663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.862907, 29.455322, 45.150448>,  <35.101219, 29.444458, 45.176720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.862907, 29.455322, 45.150448>,  <34.465725, 29.473429, 45.106663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.862907, 29.455322, 45.150448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112965, 0.639796, -0.760197,
		-0.035621, 0.767211, 0.640405,
		0.992960, -0.045264, 0.109458,
		35.160797, 29.441744, 45.183285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.648663, 30.016657, 44.889854>,  <34.465725, 29.473429, 45.106663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.648663, 30.016657, 44.889854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.013119, 29.852049, 44.898582>,  <35.231792, 29.753284, 44.903820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.013119, 29.852049, 44.898582>,  <34.648663, 30.016657, 44.889854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.013119, 29.852049, 44.898582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336790, 0.713070, -0.614901,
		0.237483, 0.567611, 0.788302,
		0.911139, -0.411520, 0.021824,
		35.286461, 29.728592, 44.905128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.035892, 30.603140, 44.978432>,  <34.648663, 30.016657, 44.889854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.035892, 30.603140, 44.978432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.262577, 30.315210, 44.818089>,  <35.398586, 30.142452, 44.721882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.262577, 30.315210, 44.818089>,  <35.035892, 30.603140, 44.978432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.262577, 30.315210, 44.818089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349125, 0.650494, -0.674514,
		0.746290, 0.242304, 0.619951,
		0.566712, -0.719824, -0.400863,
		35.432590, 30.099262, 44.697830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.560970, 31.002644, 44.886387>,  <35.035892, 30.603140, 44.978432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.560970, 31.002644, 44.886387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.598228, 30.670027, 44.667347>,  <35.620583, 30.470457, 44.535923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.598228, 30.670027, 44.667347>,  <35.560970, 31.002644, 44.886387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.598228, 30.670027, 44.667347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307435, 0.547132, -0.778544,
		0.947000, -0.095836, 0.306605,
		0.093141, -0.831542, -0.547597,
		35.626171, 30.420565, 44.503067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.347740, 30.974859, 44.754421>,  <35.560970, 31.002644, 44.886387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.347740, 30.974859, 44.754421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.108932, 30.790796, 44.491570>,  <35.965649, 30.680359, 44.333858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.108932, 30.790796, 44.491570>,  <36.347740, 30.974859, 44.754421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.108932, 30.790796, 44.491570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407822, 0.531301, -0.742564,
		0.690832, -0.711317, -0.129533,
		-0.597020, -0.460160, -0.657130,
		35.929825, 30.652748, 44.294430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.773746, 30.874716, 44.233074>,  <36.347740, 30.974859, 44.754421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.773746, 30.874716, 44.233074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.407959, 30.863628, 44.071590>,  <36.188488, 30.856976, 43.974701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.407959, 30.863628, 44.071590>,  <36.773746, 30.874716, 44.233074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.407959, 30.863628, 44.071590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303957, 0.611528, -0.730509,
		0.267127, -0.790737, -0.550798,
		-0.914469, -0.027720, -0.403705,
		36.133617, 30.855312, 43.950478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.915760, 30.899042, 43.595921>,  <36.773746, 30.874716, 44.233074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.915760, 30.899042, 43.595921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.525814, 30.969084, 43.540810>,  <36.291847, 31.011108, 43.507744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.525814, 30.969084, 43.540810>,  <36.915760, 30.899042, 43.595921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.525814, 30.969084, 43.540810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188032, 0.314779, -0.930354,
		-0.119541, -0.932873, -0.339792,
		-0.974861, 0.175107, -0.137781,
		36.233356, 31.021616, 43.499474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.847370, 30.580507, 43.001060>,  <36.915760, 30.899042, 43.595921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.847370, 30.580507, 43.001060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.541203, 30.833998, 43.045818>,  <36.357502, 30.986092, 43.072674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.541203, 30.833998, 43.045818>,  <36.847370, 30.580507, 43.001060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.541203, 30.833998, 43.045818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122332, 0.313991, -0.941512,
		-0.631793, -0.706967, -0.317860,
		-0.765423, 0.633725, 0.111893,
		36.311577, 31.024115, 43.079388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.506470, 30.530024, 42.416458>,  <36.847370, 30.580507, 43.001060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.506470, 30.530024, 42.416458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.402084, 30.893696, 42.546253>,  <36.339455, 31.111898, 42.624130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.402084, 30.893696, 42.546253>,  <36.506470, 30.530024, 42.416458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.402084, 30.893696, 42.546253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019369, 0.340998, -0.939864,
		-0.965154, -0.238985, -0.106598,
		-0.260963, 0.909179, 0.324487,
		36.323795, 31.166451, 42.643600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.962563, 30.778196, 41.910595>,  <36.506470, 30.530024, 42.416458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.962563, 30.778196, 41.910595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.119114, 31.087278, 42.110497>,  <36.213043, 31.272728, 42.230438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.119114, 31.087278, 42.110497>,  <35.962563, 30.778196, 41.910595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.119114, 31.087278, 42.110497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182615, 0.467055, -0.865166,
		-0.901930, 0.429867, 0.041686,
		0.391376, 0.772706, 0.499751,
		36.236526, 31.319090, 42.260422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.984722, 31.105936, 41.379539>,  <35.962563, 30.778196, 41.910595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.984722, 31.105936, 41.379539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.148216, 31.351860, 41.649338>,  <36.246311, 31.499414, 41.811218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.148216, 31.351860, 41.649338>,  <35.984722, 31.105936, 41.379539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.148216, 31.351860, 41.649338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219438, 0.651163, -0.726521,
		-0.885879, 0.444965, 0.131241,
		0.408736, 0.614810, 0.674495,
		36.270836, 31.536303, 41.851685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.762138, 31.835344, 41.334816>,  <35.984722, 31.105936, 41.379539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.762138, 31.835344, 41.334816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.143391, 31.818439, 41.454651>,  <36.372143, 31.808296, 41.526550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.143391, 31.818439, 41.454651>,  <35.762138, 31.835344, 41.334816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.143391, 31.818439, 41.454651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268198, 0.576297, -0.771979,
		-0.140026, 0.816147, 0.560622,
		0.953133, -0.042261, 0.299586,
		36.429329, 31.805761, 41.544525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.061016, 32.537575, 41.158325>,  <35.762138, 31.835344, 41.334816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.061016, 32.537575, 41.158325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.362324, 32.282612, 41.223186>,  <36.543110, 32.129635, 41.262104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.362324, 32.282612, 41.223186>,  <36.061016, 32.537575, 41.158325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.362324, 32.282612, 41.223186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555520, 0.484605, -0.675689,
		0.352109, 0.599057, 0.719132,
		0.753271, -0.637408, 0.162154,
		36.588306, 32.091389, 41.271832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.702469, 32.888260, 41.091282>,  <36.061016, 32.537575, 41.158325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.702469, 32.888260, 41.091282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.800465, 32.508728, 41.011578>,  <36.859264, 32.281010, 40.963757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.800465, 32.508728, 41.011578>,  <36.702469, 32.888260, 41.091282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.800465, 32.508728, 41.011578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563732, 0.306619, -0.766936,
		0.788787, 0.075564, 0.610004,
		0.244991, -0.948828, -0.199259,
		36.873962, 32.224079, 40.951801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.435562, 32.966858, 40.957943>,  <36.702469, 32.888260, 41.091282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.435562, 32.966858, 40.957943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.373344, 32.597008, 40.818874>,  <37.336014, 32.375099, 40.735432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.373344, 32.597008, 40.818874>,  <37.435562, 32.966858, 40.957943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.373344, 32.597008, 40.818874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.566915, 0.204670, -0.797946,
		0.808958, -0.321218, 0.492348,
		-0.155546, -0.924624, -0.347673,
		37.326679, 32.319622, 40.714573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.020908, 32.687027, 40.778065>,  <37.435562, 32.966858, 40.957943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.020908, 32.687027, 40.778065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.782597, 32.465626, 40.545280>,  <37.639610, 32.332783, 40.405609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.782597, 32.465626, 40.545280>,  <38.020908, 32.687027, 40.778065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.782597, 32.465626, 40.545280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582975, 0.200378, -0.787393,
		0.552439, -0.808381, 0.203299,
		-0.595778, -0.553505, -0.581963,
		37.603863, 32.299576, 40.370693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.404491, 32.239506, 40.344837>,  <38.020908, 32.687027, 40.778065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.404491, 32.239506, 40.344837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.059555, 32.287235, 40.148014>,  <37.852592, 32.315872, 40.029919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.059555, 32.287235, 40.148014>,  <38.404491, 32.239506, 40.344837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.059555, 32.287235, 40.148014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503530, 0.304000, -0.808728,
		0.053083, -0.945169, -0.322238,
		-0.862345, 0.119327, -0.492058,
		37.800850, 32.323032, 40.000397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.677528, 32.171337, 39.683090>,  <38.404491, 32.239506, 40.344837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.677528, 32.171337, 39.683090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.311104, 32.327732, 39.647419>,  <38.091248, 32.421570, 39.626019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.311104, 32.327732, 39.647419>,  <38.677528, 32.171337, 39.683090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.311104, 32.327732, 39.647419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286225, 0.481701, -0.828275,
		-0.280892, -0.784277, -0.553181,
		-0.916065, 0.390990, -0.089174,
		38.036285, 32.445030, 39.620667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.622353, 32.193848, 38.993176>,  <38.677528, 32.171337, 39.683090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.622353, 32.193848, 38.993176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.350693, 32.451118, 39.134644>,  <38.187698, 32.605480, 39.219524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.350693, 32.451118, 39.134644>,  <38.622353, 32.193848, 38.993176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.350693, 32.451118, 39.134644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109002, 0.564871, -0.817948,
		-0.725863, -0.516957, -0.453738,
		-0.679147, 0.643177, 0.353670,
		38.146950, 32.644070, 39.240746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.245975, 32.389931, 38.348824>,  <38.622353, 32.193848, 38.993176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.245975, 32.389931, 38.348824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.193474, 32.661327, 38.637939>,  <38.161972, 32.824165, 38.811409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.193474, 32.661327, 38.637939>,  <38.245975, 32.389931, 38.348824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.193474, 32.661327, 38.637939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219795, 0.730869, -0.646159,
		-0.966675, 0.074052, -0.245061,
		-0.131259, 0.678489, 0.722789,
		38.154095, 32.864876, 38.854774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.883331, 32.800137, 38.056213>,  <38.245975, 32.389931, 38.348824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.883331, 32.800137, 38.056213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.001057, 33.038204, 38.355320>,  <38.071693, 33.181046, 38.534786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.001057, 33.038204, 38.355320>,  <37.883331, 32.800137, 38.056213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.001057, 33.038204, 38.355320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234697, 0.713455, -0.660227,
		-0.926443, 0.369812, 0.070295,
		0.294313, 0.595165, 0.747769,
		38.089352, 33.216755, 38.579651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.502964, 33.475574, 37.904541>,  <37.883331, 32.800137, 38.056213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.502964, 33.475574, 37.904541> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.819244, 33.502502, 38.147938>,  <38.009010, 33.518658, 38.293976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.819244, 33.502502, 38.147938>,  <37.502964, 33.475574, 37.904541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.819244, 33.502502, 38.147938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373086, 0.735062, -0.566119,
		-0.485390, 0.674650, 0.556098,
		0.790698, 0.067316, 0.608494,
		38.056454, 33.522697, 38.330486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.574493, 34.252773, 37.996185>,  <37.502964, 33.475574, 37.904541>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.574493, 34.252773, 37.996185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.935486, 34.095501, 38.066551>,  <38.152081, 34.001137, 38.108772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.935486, 34.095501, 38.066551>,  <37.574493, 34.252773, 37.996185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.935486, 34.095501, 38.066551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400134, 0.614059, -0.680311,
		0.159461, 0.684355, 0.711498,
		0.902477, -0.393178, 0.175916,
		38.206230, 33.977547, 38.119328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.011314, 34.828861, 38.062862>,  <37.574493, 34.252773, 37.996185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.011314, 34.828861, 38.062862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.239689, 34.514313, 37.968506>,  <38.376713, 34.325584, 37.911892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.239689, 34.514313, 37.968506>,  <38.011314, 34.828861, 38.062862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.239689, 34.514313, 37.968506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484201, 0.554562, -0.676764,
		0.663007, 0.272171, 0.697384,
		0.570938, -0.786374, -0.235893,
		38.410969, 34.278400, 37.897739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.642277, 35.154057, 38.164570>,  <38.011314, 34.828861, 38.062862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.642277, 35.154057, 38.164570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.721756, 34.824409, 37.952400>,  <38.769444, 34.626621, 37.825100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.721756, 34.824409, 37.952400>,  <38.642277, 35.154057, 38.164570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.721756, 34.824409, 37.952400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452132, 0.557259, -0.696447,
		0.869538, -0.101441, 0.483336,
		0.198695, -0.824119, -0.530422,
		38.781364, 34.577175, 37.793274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.351604, 35.201035, 38.005222>,  <38.642277, 35.154057, 38.164570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.351604, 35.201035, 38.005222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.211639, 34.942818, 37.733685>,  <39.127659, 34.787888, 37.570763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.211639, 34.942818, 37.733685>,  <39.351604, 35.201035, 38.005222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.211639, 34.942818, 37.733685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383553, 0.562405, -0.732521,
		0.854661, -0.516694, 0.050805,
		-0.349917, -0.645544, -0.678845,
		39.106663, 34.749153, 37.530029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.871338, 34.945274, 37.600609>,  <39.351604, 35.201035, 38.005222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.871338, 34.945274, 37.600609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.563171, 34.875755, 37.355255>,  <39.378269, 34.834042, 37.208042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.563171, 34.875755, 37.355255>,  <39.871338, 34.945274, 37.600609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.563171, 34.875755, 37.355255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495815, 0.441477, -0.747840,
		0.400773, -0.880279, -0.253949,
		-0.770420, -0.173803, -0.613388,
		39.332047, 34.823616, 37.171238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.157974, 34.920353, 36.927597>,  <39.871338, 34.945274, 37.600609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.157974, 34.920353, 36.927597> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.770149, 34.979576, 36.849602>,  <39.537453, 35.015110, 36.802803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.770149, 34.979576, 36.849602>,  <40.157974, 34.920353, 36.927597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.770149, 34.979576, 36.849602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241605, 0.449776, -0.859842,
		-0.039602, -0.880784, -0.471859,
		-0.969566, 0.148055, -0.194990,
		39.479279, 35.023994, 36.791103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.107414, 34.732941, 36.201912>,  <40.157974, 34.920353, 36.927597>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.107414, 34.732941, 36.201912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.798855, 34.970612, 36.293037>,  <39.613720, 35.113213, 36.347713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.798855, 34.970612, 36.293037>,  <40.107414, 34.732941, 36.201912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.798855, 34.970612, 36.293037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166063, 0.533556, -0.829302,
		-0.614299, -0.601894, -0.510255,
		-0.771401, 0.594174, 0.227811,
		39.567436, 35.148865, 36.361382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.598469, 34.606552, 35.712864>,  <40.107414, 34.732941, 36.201912>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.598469, 34.606552, 35.712864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.425880, 34.907688, 35.514042>,  <40.322327, 35.088371, 35.394749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.425880, 34.907688, 35.514042>,  <40.598469, 34.606552, 35.712864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.425880, 34.907688, 35.514042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377850, -0.651135, -0.658219,
		-0.819182, -0.096193, 0.565409,
		-0.431474, 0.752841, -0.497052,
		40.296440, 35.133541, 35.364925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.883930, 35.187473, 35.959633>,  <40.598469, 34.606552, 35.712864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.883930, 35.187473, 35.959633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.253391, 35.311306, 36.049980>,  <41.475067, 35.385605, 36.104187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.253391, 35.311306, 36.049980>,  <40.883930, 35.187473, 35.959633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.253391, 35.311306, 36.049980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337624, -0.378548, -0.861807,
		-0.181301, 0.872272, -0.454172,
		0.923656, 0.309586, 0.225868,
		41.530487, 35.404182, 36.117741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.108860, 35.542381, 35.432613>,  <40.883930, 35.187473, 35.959633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.108860, 35.542381, 35.432613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.419933, 35.371620, 35.617203>,  <41.606579, 35.269165, 35.727955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.419933, 35.371620, 35.617203>,  <41.108860, 35.542381, 35.432613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.419933, 35.371620, 35.617203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293727, -0.402265, -0.867126,
		0.555812, 0.809900, -0.187444,
		0.777687, -0.426902, 0.461473,
		41.653240, 35.243549, 35.755646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.856873, 35.688717, 35.147289>,  <41.108860, 35.542381, 35.432613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.856873, 35.688717, 35.147289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.810070, 35.330135, 35.318256>,  <41.781990, 35.114986, 35.420837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.810070, 35.330135, 35.318256>,  <41.856873, 35.688717, 35.147289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.810070, 35.330135, 35.318256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230704, -0.443132, -0.866262,
		0.965964, -0.002747, 0.258662,
		-0.117002, -0.896452, 0.427416,
		41.774971, 35.061199, 35.446480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.228062, 35.267647, 34.687065>,  <41.856873, 35.688717, 35.147289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.228062, 35.267647, 34.687065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.979111, 35.037403, 34.899223>,  <41.829739, 34.899258, 35.026516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.979111, 35.037403, 34.899223>,  <42.228062, 35.267647, 34.687065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.979111, 35.037403, 34.899223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145495, -0.580741, -0.800981,
		0.769073, -0.575685, 0.277694,
		-0.622381, -0.575610, 0.530391,
		41.792397, 34.864719, 35.058342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.851864, 34.863720, 34.768665>,  <42.228062, 35.267647, 34.687065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.851864, 34.863720, 34.768665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.034473, 34.511089, 34.816681>,  <43.144039, 34.299511, 34.845490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.034473, 34.511089, 34.816681>,  <42.851864, 34.863720, 34.768665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.034473, 34.511089, 34.816681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230166, 0.013300, 0.973060,
		-0.859426, -0.471849, -0.196838,
		0.456520, -0.881579, 0.120034,
		43.171429, 34.246616, 34.852692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.504166, 34.269138, 35.040600>,  <42.851864, 34.863720, 34.768665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.504166, 34.269138, 35.040600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.890236, 34.293716, 35.142307>,  <43.121880, 34.308464, 35.203331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.890236, 34.293716, 35.142307>,  <42.504166, 34.269138, 35.040600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.890236, 34.293716, 35.142307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254922, 0.002882, 0.966957,
		0.058680, -0.998107, 0.018445,
		0.965180, 0.061443, 0.254270,
		43.179790, 34.312149, 35.218590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.735012, 33.763542, 35.643326>,  <42.504166, 34.269138, 35.040600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.735012, 33.763542, 35.643326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.949467, 34.101196, 35.642700>,  <43.078140, 34.303787, 35.642323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.949467, 34.101196, 35.642700>,  <42.735012, 33.763542, 35.643326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.949467, 34.101196, 35.642700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000564, 0.002214, 0.999997,
		0.844134, -0.536130, 0.001663,
		0.536132, 0.844132, -0.001567,
		43.110306, 34.354435, 35.642231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.331234, 33.702118, 36.043606>,  <42.735012, 33.763542, 35.643326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.331234, 33.702118, 36.043606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.268505, 34.097157, 36.040585>,  <43.230869, 34.334179, 36.038773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.268505, 34.097157, 36.040585>,  <43.331234, 33.702118, 36.043606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.268505, 34.097157, 36.040585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245067, 0.046318, 0.968399,
		0.956740, 0.150011, -0.249292,
		-0.156818, 0.987599, -0.007551,
		43.221458, 34.393436, 36.038319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.712795, 33.971527, 36.546165>,  <43.331234, 33.702118, 36.043606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.712795, 33.971527, 36.546165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.478939, 34.289402, 36.480850>,  <43.338623, 34.480129, 36.441662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.478939, 34.289402, 36.480850>,  <43.712795, 33.971527, 36.546165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.478939, 34.289402, 36.480850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018364, 0.188255, 0.981948,
		0.811083, 0.577087, -0.095468,
		-0.584642, 0.794689, -0.163289,
		43.303547, 34.527809, 36.431862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.036366, 34.454159, 36.921833>,  <43.712795, 33.971527, 36.546165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.036366, 34.454159, 36.921833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.660694, 34.590065, 36.901863>,  <43.435291, 34.671608, 36.889881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.660694, 34.590065, 36.901863>,  <44.036366, 34.454159, 36.921833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.660694, 34.590065, 36.901863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004951, 0.158768, 0.987303,
		0.343382, 0.927011, -0.150794,
		-0.939183, 0.339769, -0.049928,
		43.378941, 34.691998, 36.886883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.014992, 35.091423, 37.398438>,  <44.036366, 34.454159, 36.921833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.014992, 35.091423, 37.398438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.630623, 34.999451, 37.336784>,  <43.400002, 34.944267, 37.299793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.630623, 34.999451, 37.336784>,  <44.014992, 35.091423, 37.398438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.630623, 34.999451, 37.336784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218478, 0.288051, 0.932359,
		-0.169984, 0.929600, -0.327031,
		-0.960923, -0.229935, -0.154133,
		43.342346, 34.930470, 37.290546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.637352, 35.669041, 37.683899>,  <44.014992, 35.091423, 37.398438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.637352, 35.669041, 37.683899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.389477, 35.355118, 37.687347>,  <43.240753, 35.166763, 37.689419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.389477, 35.355118, 37.687347>,  <43.637352, 35.669041, 37.683899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.389477, 35.355118, 37.687347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289481, 0.238763, 0.926927,
		-0.729515, 0.571906, -0.375143,
		-0.619685, -0.784803, 0.008625,
		43.203571, 35.119678, 37.689934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.993889, 35.934319, 37.897617>,  <43.637352, 35.669041, 37.683899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.993889, 35.934319, 37.897617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.991169, 35.539352, 37.960819>,  <42.989536, 35.302372, 37.998741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.991169, 35.539352, 37.960819>,  <42.993889, 35.934319, 37.897617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.991169, 35.539352, 37.960819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244462, 0.154857, 0.957214,
		-0.969635, -0.032119, -0.242438,
		-0.006798, -0.987415, 0.158006,
		42.989128, 35.243130, 38.008221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.511600, 35.937988, 38.318600>,  <42.993889, 35.934319, 37.897617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.511600, 35.937988, 38.318600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.636547, 35.559834, 38.355865>,  <42.711514, 35.332943, 38.378223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.636547, 35.559834, 38.355865>,  <42.511600, 35.937988, 38.318600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.636547, 35.559834, 38.355865> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175575, 0.038923, 0.983696,
		-0.933595, -0.323631, -0.153827,
		0.312367, -0.945383, 0.093160,
		42.730259, 35.276218, 38.383812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.969124, 35.522247, 38.611797>,  <42.511600, 35.937988, 38.318600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.969124, 35.522247, 38.611797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.316368, 35.342163, 38.695404>,  <42.524715, 35.234112, 38.745567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.316368, 35.342163, 38.695404>,  <41.969124, 35.522247, 38.611797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.316368, 35.342163, 38.695404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251203, -0.035300, 0.967291,
		-0.428105, -0.892225, -0.143739,
		0.868115, -0.450210, 0.209017,
		42.576801, 35.207100, 38.758110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.795517, 34.978752, 39.004002>,  <41.969124, 35.522247, 38.611797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.795517, 34.978752, 39.004002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.179829, 35.049381, 39.089527>,  <42.410416, 35.091759, 39.140842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.179829, 35.049381, 39.089527>,  <41.795517, 34.978752, 39.004002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.179829, 35.049381, 39.089527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206372, -0.059709, 0.976650,
		0.185218, -0.982475, -0.020927,
		0.960783, 0.176575, 0.213815,
		42.468063, 35.102352, 39.153671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.732357, 34.843388, 39.629837>,  <41.795517, 34.978752, 39.004002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.732357, 34.843388, 39.629837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.084099, 35.030056, 39.591991>,  <42.295143, 35.142056, 39.569283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.084099, 35.030056, 39.591991>,  <41.732357, 34.843388, 39.629837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.084099, 35.030056, 39.591991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052942, 0.293296, 0.954555,
		0.473215, -0.834383, 0.282617,
		0.879354, 0.466672, -0.094618,
		42.347904, 35.170059, 39.563606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.085564, 34.809715, 40.308952>,  <41.732357, 34.843388, 39.629837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.085564, 34.809715, 40.308952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.285507, 35.107704, 40.132244>,  <42.405472, 35.286495, 40.026218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.285507, 35.107704, 40.132244>,  <42.085564, 34.809715, 40.308952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.285507, 35.107704, 40.132244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094349, 0.460195, 0.882790,
		0.860953, -0.482950, 0.159745,
		0.499858, 0.744969, -0.441772,
		42.435463, 35.331196, 39.999714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.676132, 34.835739, 40.698578>,  <42.085564, 34.809715, 40.308952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.676132, 34.835739, 40.698578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.649788, 35.193485, 40.521591>,  <42.633980, 35.408131, 40.415398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.649788, 35.193485, 40.521591>,  <42.676132, 34.835739, 40.698578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.649788, 35.193485, 40.521591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171317, 0.446980, 0.877986,
		0.983012, -0.017974, -0.182659,
		-0.065864, 0.894363, -0.442466,
		42.630028, 35.461796, 40.388851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.277946, 35.271893, 40.879543>,  <42.676132, 34.835739, 40.698578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.277946, 35.271893, 40.879543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.973698, 35.514420, 40.786743>,  <42.791149, 35.659935, 40.731064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.973698, 35.514420, 40.786743>,  <43.277946, 35.271893, 40.879543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.973698, 35.514420, 40.786743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145038, 0.507048, 0.849627,
		0.632781, 0.612599, -0.473613,
		-0.760626, 0.606320, -0.232001,
		42.745510, 35.696316, 40.717144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.566216, 35.903744, 41.042362>,  <43.277946, 35.271893, 40.879543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.566216, 35.903744, 41.042362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.171947, 35.970226, 41.030788>,  <42.935387, 36.010117, 41.023842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.171947, 35.970226, 41.030788>,  <43.566216, 35.903744, 41.042362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.171947, 35.970226, 41.030788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091246, 0.669480, 0.737204,
		0.141902, 0.723997, -0.675050,
		-0.985666, 0.166206, -0.028939,
		42.876247, 36.020088, 41.022106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.437672, 36.660740, 41.135441>,  <43.566216, 35.903744, 41.042362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.437672, 36.660740, 41.135441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.066551, 36.524158, 41.195557>,  <42.843880, 36.442211, 41.231628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.066551, 36.524158, 41.195557>,  <43.437672, 36.660740, 41.135441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.066551, 36.524158, 41.195557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162679, 0.732839, 0.660668,
		-0.335726, 0.588522, -0.735479,
		-0.927806, -0.341451, 0.150293,
		42.788208, 36.421722, 41.240643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.009529, 37.190701, 41.110432>,  <43.437672, 36.660740, 41.135441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.009529, 37.190701, 41.110432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.785870, 36.916725, 41.297283>,  <42.651672, 36.752338, 41.409393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.785870, 36.916725, 41.297283>,  <43.009529, 37.190701, 41.110432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.785870, 36.916725, 41.297283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335633, 0.702214, 0.627890,
		-0.758091, 0.194300, -0.622531,
		-0.559149, -0.684940, 0.467129,
		42.618126, 36.711243, 41.437420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.354382, 37.464008, 41.090519>,  <43.009529, 37.190701, 41.110432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.354382, 37.464008, 41.090519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.357758, 37.209602, 41.399170>,  <42.359783, 37.056957, 41.584362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.357758, 37.209602, 41.399170>,  <42.354382, 37.464008, 41.090519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.357758, 37.209602, 41.399170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475818, 0.676142, 0.562520,
		-0.879503, -0.371903, -0.296921,
		0.008442, -0.636018, 0.771627,
		42.360291, 37.018795, 41.630657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.785351, 37.662392, 41.525673>,  <42.354382, 37.464008, 41.090519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.785351, 37.662392, 41.525673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.994602, 37.418465, 41.763821>,  <42.120152, 37.272110, 41.906708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.994602, 37.418465, 41.763821>,  <41.785351, 37.662392, 41.525673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.994602, 37.418465, 41.763821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116280, 0.640975, 0.758703,
		-0.844285, -0.466128, 0.264403,
		0.523128, -0.609817, 0.595366,
		42.151539, 37.235519, 41.942432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.395885, 37.567955, 42.063847>,  <41.785351, 37.662392, 41.525673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.395885, 37.567955, 42.063847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.777012, 37.502876, 42.166348>,  <42.005688, 37.463829, 42.227848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.777012, 37.502876, 42.166348>,  <41.395885, 37.567955, 42.063847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.777012, 37.502876, 42.166348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136707, 0.523749, 0.840832,
		-0.271014, -0.836192, 0.476796,
		0.952818, -0.162695, 0.256257,
		42.062859, 37.454067, 42.243225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.323402, 37.393265, 42.718800>,  <41.395885, 37.567955, 42.063847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.323402, 37.393265, 42.718800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.691669, 37.533401, 42.649948>,  <41.912628, 37.617485, 42.608635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.691669, 37.533401, 42.649948>,  <41.323402, 37.393265, 42.718800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.691669, 37.533401, 42.649948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123908, 0.680465, 0.722229,
		0.370159, -0.643605, 0.669892,
		0.920668, 0.350345, -0.172132,
		41.967869, 37.638504, 42.598309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.518749, 37.413712, 43.340813>,  <41.323402, 37.393265, 42.718800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.518749, 37.413712, 43.340813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.732586, 37.666222, 43.116066>,  <41.860889, 37.817730, 42.981216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.732586, 37.666222, 43.116066>,  <41.518749, 37.413712, 43.340813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.732586, 37.666222, 43.116066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166136, 0.573373, 0.802273,
		0.828618, -0.522237, 0.201644,
		0.534594, 0.631278, -0.561870,
		41.892963, 37.855606, 42.947506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.012897, 37.306450, 43.778667>,  <41.518749, 37.413712, 43.340813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.012897, 37.306450, 43.778667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.057964, 37.636856, 43.557762>,  <42.085003, 37.835102, 43.425217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.057964, 37.636856, 43.557762>,  <42.012897, 37.306450, 43.778667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.057964, 37.636856, 43.557762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309049, 0.499106, 0.809557,
		0.944349, -0.261886, -0.199048,
		0.112666, 0.826020, -0.552266,
		42.091763, 37.884663, 43.392082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.616817, 37.702374, 43.973537>,  <42.012897, 37.306450, 43.778667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.616817, 37.702374, 43.973537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.409939, 37.983971, 43.778847>,  <42.285812, 38.152927, 43.662033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.409939, 37.983971, 43.778847>,  <42.616817, 37.702374, 43.973537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.409939, 37.983971, 43.778847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449453, 0.707372, 0.545543,
		0.728355, 0.063391, -0.682261,
		-0.517195, 0.703993, -0.486726,
		42.254780, 38.195168, 43.632828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.996204, 38.200832, 43.769039>,  <42.616817, 37.702374, 43.973537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.996204, 38.200832, 43.769039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.630367, 38.346340, 43.839687>,  <42.410866, 38.433643, 43.882076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.630367, 38.346340, 43.839687>,  <42.996204, 38.200832, 43.769039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.630367, 38.346340, 43.839687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360287, 0.534699, 0.764389,
		0.183621, 0.762738, -0.620092,
		-0.914591, 0.363769, 0.176622,
		42.355991, 38.455471, 43.892673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.579922, 38.703171, 43.864502>,  <42.996204, 38.200832, 43.769039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.579922, 38.703171, 43.864502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.962841, 38.661022, 43.972183>,  <44.192593, 38.635735, 44.036793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.962841, 38.661022, 43.972183>,  <43.579922, 38.703171, 43.864502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.962841, 38.661022, 43.972183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198100, -0.439113, -0.876320,
		0.210547, 0.892232, -0.399490,
		0.957301, -0.105368, 0.269205,
		44.250031, 38.629414, 44.052944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.782665, 39.412136, 44.069286>,  <43.579922, 38.703171, 43.864502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.782665, 39.412136, 44.069286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.062778, 39.414711, 43.783752>,  <44.230846, 39.416256, 43.612431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.062778, 39.414711, 43.783752>,  <43.782665, 39.412136, 44.069286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.062778, 39.414711, 43.783752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496522, 0.714066, 0.493533,
		0.512903, -0.700048, 0.496852,
		0.700283, 0.006437, -0.713836,
		44.272861, 39.416641, 43.569603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.016132, 40.043926, 44.263470>,  <43.782665, 39.412136, 44.069286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.016132, 40.043926, 44.263470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.401688, 40.149349, 44.278725>,  <44.633022, 40.212601, 44.287876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.401688, 40.149349, 44.278725>,  <44.016132, 40.043926, 44.263470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.401688, 40.149349, 44.278725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151058, -0.423195, -0.893358,
		-0.219310, 0.866859, -0.447725,
		0.963890, 0.263555, 0.038135,
		44.690853, 40.228416, 44.290165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.310509, 40.617165, 43.790497>,  <44.016132, 40.043926, 44.263470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.310509, 40.617165, 43.790497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.604084, 40.350174, 43.840801>,  <44.780228, 40.189980, 43.870983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.604084, 40.350174, 43.840801>,  <44.310509, 40.617165, 43.790497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.604084, 40.350174, 43.840801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113961, -0.303542, -0.945978,
		0.669589, 0.679957, -0.298846,
		0.733937, -0.667474, 0.125760,
		44.824265, 40.149933, 43.878529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.880592, 40.750481, 43.309467>,  <44.310509, 40.617165, 43.790497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.880592, 40.750481, 43.309467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.913715, 40.358253, 43.380608>,  <44.933590, 40.122917, 43.423290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.913715, 40.358253, 43.380608>,  <44.880592, 40.750481, 43.309467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.913715, 40.358253, 43.380608> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014048, -0.177298, -0.984057,
		0.996467, 0.083984, -0.000907,
		0.082806, -0.980567, 0.177851,
		44.938557, 40.064083, 43.433964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.257721, 40.482349, 42.782959>,  <44.880592, 40.750481, 43.309467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.257721, 40.482349, 42.782959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.108021, 40.133404, 42.908764>,  <45.018200, 39.924038, 42.984249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.108021, 40.133404, 42.908764>,  <45.257721, 40.482349, 42.782959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.108021, 40.133404, 42.908764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010823, -0.343249, -0.939182,
		0.927265, -0.348084, 0.137903,
		-0.374249, -0.872363, 0.314516,
		44.995747, 39.871696, 43.003120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.722942, 40.003407, 42.593620>,  <45.257721, 40.482349, 42.782959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.722942, 40.003407, 42.593620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.344467, 39.874680, 42.607281>,  <45.117382, 39.797443, 42.615475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.344467, 39.874680, 42.607281>,  <45.722942, 40.003407, 42.593620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.344467, 39.874680, 42.607281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103118, -0.399824, -0.910773,
		0.306759, -0.858238, 0.411493,
		-0.946185, -0.321820, 0.034149,
		45.060612, 39.778133, 42.617527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.705620, 39.231258, 42.467010>,  <45.722942, 40.003407, 42.593620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.705620, 39.231258, 42.467010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.344437, 39.370609, 42.366364>,  <45.127728, 39.454220, 42.305977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.344437, 39.370609, 42.366364>,  <45.705620, 39.231258, 42.467010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.344437, 39.370609, 42.366364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033591, -0.526504, -0.849509,
		-0.428423, -0.775519, 0.463706,
		-0.902953, 0.348373, -0.251617,
		45.073551, 39.475121, 42.290878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.384689, 38.669704, 42.043144>,  <45.705620, 39.231258, 42.467010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.384689, 38.669704, 42.043144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.190880, 39.010590, 41.964191>,  <45.074593, 39.215122, 41.916821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.190880, 39.010590, 41.964191>,  <45.384689, 38.669704, 42.043144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.190880, 39.010590, 41.964191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072096, -0.263771, -0.961887,
		-0.871800, -0.451831, 0.189246,
		-0.484527, 0.852217, -0.197381,
		45.045521, 39.266254, 41.904976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.784275, 38.436302, 41.811447>,  <45.384689, 38.669704, 42.043144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.784275, 38.436302, 41.811447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.848465, 38.808109, 41.678638>,  <44.886978, 39.031193, 41.598953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.848465, 38.808109, 41.678638>,  <44.784275, 38.436302, 41.811447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.848465, 38.808109, 41.678638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117227, -0.316050, -0.941472,
		-0.980053, 0.190007, 0.058246,
		0.160477, 0.929521, -0.332020,
		44.896606, 39.086967, 41.579033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.356880, 38.495327, 41.277603>,  <44.784275, 38.436302, 41.811447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.356880, 38.495327, 41.277603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.593704, 38.808552, 41.201412>,  <44.735798, 38.996487, 41.155697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.593704, 38.808552, 41.201412>,  <44.356880, 38.495327, 41.277603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.593704, 38.808552, 41.201412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101384, -0.306847, -0.946344,
		-0.799491, 0.540982, -0.261061,
		0.592060, 0.783061, -0.190474,
		44.771324, 39.043468, 41.144268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.164345, 38.686436, 40.670486>,  <44.356880, 38.495327, 41.277603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.164345, 38.686436, 40.670486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.522713, 38.862545, 40.694084>,  <44.737736, 38.968212, 40.708244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.522713, 38.862545, 40.694084>,  <44.164345, 38.686436, 40.670486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.522713, 38.862545, 40.694084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219062, -0.322381, -0.920914,
		-0.386435, 0.837992, -0.385276,
		0.895924, 0.440272, 0.058993,
		44.791489, 38.994625, 40.711781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.163807, 39.211746, 40.108059>,  <44.164345, 38.686436, 40.670486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.163807, 39.211746, 40.108059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.531116, 39.091057, 40.210621>,  <44.751503, 39.018642, 40.272160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.531116, 39.091057, 40.210621>,  <44.163807, 39.211746, 40.108059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.531116, 39.091057, 40.210621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096330, -0.457866, -0.883787,
		0.384059, 0.836254, -0.391380,
		0.918270, -0.301725, 0.256404,
		44.806599, 39.000538, 40.287540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.531979, 39.346916, 39.539047>,  <44.163807, 39.211746, 40.108059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.531979, 39.346916, 39.539047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.777290, 39.109043, 39.746986>,  <44.924477, 38.966320, 39.871750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.777290, 39.109043, 39.746986>,  <44.531979, 39.346916, 39.539047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.777290, 39.109043, 39.746986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428975, -0.301854, -0.851390,
		0.663225, 0.745141, 0.069984,
		0.613280, -0.594684, 0.519844,
		44.961273, 38.930637, 39.902939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.232754, 39.411903, 39.174694>,  <44.531979, 39.346916, 39.539047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.232754, 39.411903, 39.174694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.211033, 39.068886, 39.379311>,  <45.198002, 38.863075, 39.502079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.211033, 39.068886, 39.379311>,  <45.232754, 39.411903, 39.174694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.211033, 39.068886, 39.379311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405856, -0.487021, -0.773364,
		0.912322, 0.165618, 0.374484,
		-0.054298, -0.857544, 0.511537,
		45.194744, 38.811623, 39.532772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.882240, 39.125725, 39.091564>,  <45.232754, 39.411903, 39.174694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.882240, 39.125725, 39.091564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.634632, 38.818592, 39.157593>,  <45.486069, 38.634312, 39.197208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.634632, 38.818592, 39.157593>,  <45.882240, 39.125725, 39.091564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.634632, 38.818592, 39.157593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212508, -0.366090, -0.905990,
		0.756080, -0.525746, 0.389787,
		-0.619018, -0.767834, 0.165069,
		45.448925, 38.588242, 39.207115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.096317, 38.583111, 38.677803>,  <45.882240, 39.125725, 39.091564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.096317, 38.583111, 38.677803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.738556, 38.434654, 38.777637>,  <45.523899, 38.345581, 38.837540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.738556, 38.434654, 38.777637>,  <46.096317, 38.583111, 38.677803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.738556, 38.434654, 38.777637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054260, -0.463876, -0.884237,
		0.443953, -0.804409, 0.394755,
		-0.894406, -0.371140, 0.249586,
		45.470234, 38.323311, 38.852512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.152023, 37.904716, 38.691273>,  <46.096317, 38.583111, 38.677803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.152023, 37.904716, 38.691273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.767918, 37.988358, 38.617344>,  <45.537453, 38.038544, 38.572987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.767918, 37.988358, 38.617344>,  <46.152023, 37.904716, 38.691273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.767918, 37.988358, 38.617344> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023120, -0.719595, -0.694009,
		-0.278120, -0.662162, 0.695838,
		-0.960268, 0.209106, -0.184825,
		45.479836, 38.051090, 38.561897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.886597, 37.294628, 38.617298>,  <46.152023, 37.904716, 38.691273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.886597, 37.294628, 38.617298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.620819, 37.539032, 38.445171>,  <45.461353, 37.685677, 38.341896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.620819, 37.539032, 38.445171>,  <45.886597, 37.294628, 38.617298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.620819, 37.539032, 38.445171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140253, -0.667526, -0.731258,
		-0.734059, -0.425526, 0.529230,
		-0.664445, 0.611013, -0.430322,
		45.421486, 37.722336, 38.316074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.386627, 36.862766, 38.357796>,  <45.886597, 37.294628, 38.617298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.386627, 36.862766, 38.357796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.301720, 37.190453, 38.144691>,  <45.250774, 37.387062, 38.016830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.301720, 37.190453, 38.144691>,  <45.386627, 36.862766, 38.357796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.301720, 37.190453, 38.144691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234865, -0.571970, -0.785931,
		-0.948568, -0.041701, 0.313815,
		-0.212267, 0.819213, -0.532759,
		45.238041, 37.436218, 37.984863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.753536, 36.651989, 38.008984>,  <45.386627, 36.862766, 38.357796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.753536, 36.651989, 38.008984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.908375, 36.964207, 37.812656>,  <45.001278, 37.151539, 37.694859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.908375, 36.964207, 37.812656>,  <44.753536, 36.651989, 38.008984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.908375, 36.964207, 37.812656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238641, -0.429370, -0.871029,
		-0.890621, 0.454303, 0.020061,
		0.387098, 0.780544, -0.490822,
		45.024506, 37.198372, 37.665409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.292484, 36.820591, 37.421940>,  <44.753536, 36.651989, 38.008984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.292484, 36.820591, 37.421940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.631126, 37.006832, 37.318806>,  <44.834312, 37.118576, 37.256927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.631126, 37.006832, 37.318806>,  <44.292484, 36.820591, 37.421940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.631126, 37.006832, 37.318806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106588, -0.326301, -0.939237,
		-0.521446, 0.822640, -0.226619,
		0.846601, 0.465607, -0.257832,
		44.885105, 37.146515, 37.241455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.233181, 37.228149, 36.662746>,  <44.292484, 36.820591, 37.421940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.233181, 37.228149, 36.662746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.611618, 37.119621, 36.733513>,  <44.838680, 37.054504, 36.775974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.611618, 37.119621, 36.733513>,  <44.233181, 37.228149, 36.662746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.611618, 37.119621, 36.733513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044140, -0.433103, -0.900263,
		0.320885, 0.859538, -0.397778,
		0.946089, -0.271323, 0.176916,
		44.895443, 37.038223, 36.786587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.537830, 37.394798, 36.066677>,  <44.233181, 37.228149, 36.662746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.537830, 37.394798, 36.066677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.801086, 37.151768, 36.244534>,  <44.959038, 37.005951, 36.351246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.801086, 37.151768, 36.244534>,  <44.537830, 37.394798, 36.066677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.801086, 37.151768, 36.244534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237351, -0.393025, -0.888367,
		0.714506, 0.690203, -0.114455,
		0.658138, -0.607578, 0.444640,
		44.998528, 36.969494, 36.377926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.171894, 37.390339, 35.576061>,  <44.537830, 37.394798, 36.066677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.171894, 37.390339, 35.576061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.203403, 37.075798, 35.821156>,  <45.222309, 36.887074, 35.968212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.203403, 37.075798, 35.821156>,  <45.171894, 37.390339, 35.576061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.203403, 37.075798, 35.821156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404692, -0.536496, -0.740538,
		0.911053, 0.306308, 0.275966,
		0.078778, -0.786351, 0.612737,
		45.227036, 36.839893, 36.004978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.851200, 37.154690, 35.617428>,  <45.171894, 37.390339, 35.576061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.851200, 37.154690, 35.617428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.634644, 36.832909, 35.715206>,  <45.504711, 36.639839, 35.773872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.634644, 36.832909, 35.715206>,  <45.851200, 37.154690, 35.617428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.634644, 36.832909, 35.715206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454660, -0.524679, -0.719719,
		0.707234, -0.278512, 0.649809,
		-0.541392, -0.804452, 0.244443,
		45.472225, 36.591572, 35.788540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.232307, 36.587566, 35.698097>,  <45.851200, 37.154690, 35.617428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.232307, 36.587566, 35.698097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.868317, 36.457897, 35.594666>,  <45.649921, 36.380096, 35.532604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.868317, 36.457897, 35.594666>,  <46.232307, 36.587566, 35.698097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.868317, 36.457897, 35.594666> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409827, -0.608062, -0.679928,
		0.063179, -0.724690, 0.686173,
		-0.909973, -0.324169, -0.258581,
		45.595325, 36.360645, 35.517090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.192570, 35.831264, 35.688927>,  <46.232307, 36.587566, 35.698097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.192570, 35.831264, 35.688927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.930916, 35.976879, 35.423721>,  <45.773922, 36.064247, 35.264599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.930916, 35.976879, 35.423721>,  <46.192570, 35.831264, 35.688927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.930916, 35.976879, 35.423721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449441, -0.517958, -0.727821,
		-0.608367, -0.774077, 0.175200,
		-0.654135, 0.364040, -0.663010,
		45.734676, 36.086090, 35.224819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.017799, 35.845097, 35.595181>,  <46.192570, 35.831264, 35.688927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.017799, 35.845097, 35.595181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.920086, 35.463139, 35.527645>,  <46.861458, 35.233963, 35.487122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.920086, 35.463139, 35.527645>,  <47.017799, 35.845097, 35.595181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.920086, 35.463139, 35.527645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.780934, -0.090504, -0.618022,
		0.574862, -0.282828, 0.767816,
		-0.244285, -0.954891, -0.168843,
		46.846802, 35.176670, 35.476994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.674210, 35.514484, 35.558044>,  <47.017799, 35.845097, 35.595181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.674210, 35.514484, 35.558044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.394444, 35.312553, 35.355675>,  <47.226582, 35.191395, 35.234253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.394444, 35.312553, 35.355675>,  <47.674210, 35.514484, 35.558044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.394444, 35.312553, 35.355675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.694371, -0.312290, -0.648324,
		0.169297, -0.804750, 0.568960,
		-0.699419, -0.504829, -0.505926,
		47.184616, 35.161106, 35.203896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.866650, 34.833828, 35.418121>,  <47.674210, 35.514484, 35.558044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.866650, 34.833828, 35.418121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.611839, 34.907589, 35.118736>,  <47.458954, 34.951847, 34.939106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.611839, 34.907589, 35.118736>,  <47.866650, 34.833828, 35.418121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.611839, 34.907589, 35.118736> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.677825, -0.328388, -0.657810,
		-0.367087, -0.926368, 0.084199,
		-0.637024, 0.184401, -0.748463,
		47.420731, 34.962910, 34.894196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<32.251865, 32.930977, 42.955711> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.081875, 32.630566, 42.753586>,  <31.979879, 32.450317, 42.632309>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.081875, 32.630566, 42.753586>,  <32.251865, 32.930977, 42.955711>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.081875, 32.630566, 42.753586> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261862, 0.432366, -0.862837,
		0.866499, -0.499011, 0.012920,
		-0.424979, -0.751031, -0.505317,
		31.954382, 32.405258, 42.601990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.752991, 32.828346, 42.472378>,  <32.251865, 32.930977, 42.955711>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.752991, 32.828346, 42.472378> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.418358, 32.673161, 42.317654>,  <32.217579, 32.580048, 42.224819>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.418358, 32.673161, 42.317654>,  <32.752991, 32.828346, 42.472378>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.418358, 32.673161, 42.317654> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192186, 0.453356, -0.870364,
		0.513033, -0.802466, -0.304706,
		-0.836577, -0.387965, -0.386809,
		32.167385, 32.556770, 42.201611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.909565, 32.751637, 41.832039>,  <32.752991, 32.828346, 42.472378>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.909565, 32.751637, 41.832039> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.510494, 32.726215, 41.822159>,  <32.271053, 32.710964, 41.816231>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.510494, 32.726215, 41.822159>,  <32.909565, 32.751637, 41.832039>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.510494, 32.726215, 41.822159> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015788, 0.567782, -0.823028,
		0.066327, -0.820722, -0.567464,
		-0.997674, -0.063548, -0.024702,
		32.211193, 32.707150, 41.814747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.809837, 32.500179, 41.184055>,  <32.909565, 32.751637, 41.832039>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.809837, 32.500179, 41.184055> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.493134, 32.697403, 41.328278>,  <32.303112, 32.815739, 41.414810>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.493134, 32.697403, 41.328278>,  <32.809837, 32.500179, 41.184055>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.493134, 32.697403, 41.328278> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017152, 0.572093, -0.820009,
		-0.610588, -0.655437, -0.444505,
		-0.791763, 0.493063, 0.360556,
		32.255604, 32.845322, 41.436443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.346138, 32.533527, 40.624111>,  <32.809837, 32.500179, 41.184055>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.346138, 32.533527, 40.624111> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.255341, 32.829685, 40.877186>,  <32.200863, 33.007381, 41.029030>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.255341, 32.829685, 40.877186>,  <32.346138, 32.533527, 40.624111>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.255341, 32.829685, 40.877186> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084043, 0.632325, -0.770131,
		-0.970263, -0.227989, -0.081310,
		-0.226996, 0.740396, 0.632682,
		32.187241, 33.051804, 41.066990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.667395, 32.826176, 40.266518>,  <32.346138, 32.533527, 40.624111>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.667395, 32.826176, 40.266518> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.772118, 33.100361, 40.538280>,  <31.834951, 33.264870, 40.701340>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.772118, 33.100361, 40.538280>,  <31.667395, 32.826176, 40.266518>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.772118, 33.100361, 40.538280> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060986, 0.714309, -0.697169,
		-0.963191, 0.141089, 0.228814,
		0.261807, 0.685461, 0.679411,
		31.850660, 33.306000, 40.742104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.237812, 33.358849, 40.113247>,  <31.667395, 32.826176, 40.266518>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.237812, 33.358849, 40.113247> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.563662, 33.514137, 40.285603>,  <31.759171, 33.607311, 40.389015>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.563662, 33.514137, 40.285603>,  <31.237812, 33.358849, 40.113247>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.563662, 33.514137, 40.285603> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167262, 0.554116, -0.815462,
		-0.555348, 0.736367, 0.386460,
		0.814624, 0.388225, 0.430894,
		31.808048, 33.630604, 40.414871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.354834, 34.010456, 39.788647>,  <31.237812, 33.358849, 40.113247>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.354834, 34.010456, 39.788647> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.705706, 33.908318, 39.951302>,  <31.916229, 33.847034, 40.048893>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.705706, 33.908318, 39.951302>,  <31.354834, 34.010456, 39.788647>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.705706, 33.908318, 39.951302> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469457, 0.278237, -0.837970,
		0.100833, 0.925949, 0.363939,
		0.877179, -0.255349, 0.406638,
		31.968859, 33.831715, 40.073292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.674517, 34.648632, 39.701984>,  <31.354834, 34.010456, 39.788647>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.674517, 34.648632, 39.701984> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.940174, 34.356804, 39.767273>,  <32.099567, 34.181709, 39.806446>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.940174, 34.356804, 39.767273>,  <31.674517, 34.648632, 39.701984>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.940174, 34.356804, 39.767273> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.655476, 0.463264, -0.596438,
		0.359530, 0.503107, 0.785889,
		0.664146, -0.729569, 0.163217,
		32.139420, 34.137932, 39.816238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.388512, 34.872787, 39.818974>,  <31.674517, 34.648632, 39.701984>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.388512, 34.872787, 39.818974> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.459164, 34.500511, 39.690842>,  <32.501556, 34.277145, 39.613960>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.459164, 34.500511, 39.690842>,  <32.388512, 34.872787, 39.818974>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.459164, 34.500511, 39.690842> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.724360, 0.343261, -0.597891,
		0.666410, -0.126428, 0.734788,
		0.176634, -0.930692, -0.320332,
		32.512154, 34.221302, 39.594742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.137989, 34.780342, 39.805916>,  <32.388512, 34.872787, 39.818974>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.137989, 34.780342, 39.805916> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.950359, 34.536327, 39.550468>,  <32.837784, 34.389919, 39.397202>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.950359, 34.536327, 39.550468>,  <33.137989, 34.780342, 39.805916>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.950359, 34.536327, 39.550468> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.709381, 0.170477, -0.683898,
		0.526073, -0.773816, 0.352784,
		-0.469070, -0.610038, -0.638614,
		32.809639, 34.353317, 39.358883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.632759, 34.291958, 39.608223>,  <33.137989, 34.780342, 39.805916>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.632759, 34.291958, 39.608223> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.365677, 34.308743, 39.310928>,  <33.205425, 34.318813, 39.132549>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.365677, 34.308743, 39.310928>,  <33.632759, 34.291958, 39.608223>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.365677, 34.308743, 39.310928> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.743722, 0.080935, -0.663572,
		0.032304, -0.995835, -0.085254,
		-0.667708, 0.041969, -0.743239,
		33.165363, 34.321331, 39.087955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.957825, 33.942707, 39.018784>,  <33.632759, 34.291958, 39.608223>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.957825, 33.942707, 39.018784> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.645302, 34.119617, 38.842621>,  <33.457790, 34.225761, 38.736923>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.645302, 34.119617, 38.842621>,  <33.957825, 33.942707, 39.018784>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.645302, 34.119617, 38.842621> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.586589, 0.279225, -0.760228,
		-0.213254, -0.852308, -0.477592,
		-0.781304, 0.442272, -0.440409,
		33.410912, 34.252300, 38.710499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.809563, 33.703308, 38.212559>,  <33.957825, 33.942707, 39.018784>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.809563, 33.703308, 38.212559> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.617920, 34.053146, 38.242310>,  <33.502934, 34.263050, 38.260162>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.617920, 34.053146, 38.242310>,  <33.809563, 33.703308, 38.212559>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.617920, 34.053146, 38.242310> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429122, 0.307311, -0.849361,
		-0.765707, -0.375020, -0.522545,
		-0.479112, 0.874597, 0.074381,
		33.474186, 34.315525, 38.264626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.759495, 33.943024, 37.527081>,  <33.809563, 33.703308, 38.212559>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.759495, 33.943024, 37.527081> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.691750, 34.282196, 37.728012>,  <33.651104, 34.485699, 37.848572>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.691750, 34.282196, 37.728012>,  <33.759495, 33.943024, 37.527081>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.691750, 34.282196, 37.728012> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522911, 0.509341, -0.683473,
		-0.835393, 0.146918, -0.529654,
		-0.169360, 0.847931, 0.502325,
		33.640942, 34.536575, 37.878708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.693329, 34.410973, 36.992447>,  <33.759495, 33.943024, 37.527081>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.693329, 34.410973, 36.992447> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.720772, 34.625298, 37.329063>,  <33.737240, 34.753891, 37.531033>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.720772, 34.625298, 37.329063>,  <33.693329, 34.410973, 36.992447>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.720772, 34.625298, 37.329063> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549666, 0.683649, -0.480095,
		-0.832562, 0.495508, -0.247613,
		0.068610, 0.535814, 0.841544,
		33.741356, 34.786041, 37.581528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.522186, 35.077057, 36.812317>,  <33.693329, 34.410973, 36.992447>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.522186, 35.077057, 36.812317> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.740818, 35.135517, 37.142139>,  <33.871998, 35.170593, 37.340031>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.740818, 35.135517, 37.142139>,  <33.522186, 35.077057, 36.812317>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.740818, 35.135517, 37.142139> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456475, 0.773501, -0.439690,
		-0.702053, 0.616715, 0.356067,
		0.546582, 0.146150, 0.824554,
		33.904793, 35.179363, 37.389507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.591393, 35.844227, 36.946381>,  <33.522186, 35.077057, 36.812317>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.591393, 35.844227, 36.946381> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.915005, 35.669884, 37.104115>,  <34.109173, 35.565277, 37.198753>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.915005, 35.669884, 37.104115>,  <33.591393, 35.844227, 36.946381>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.915005, 35.669884, 37.104115> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578235, 0.710562, -0.400932,
		-0.105448, 0.552383, 0.826894,
		0.809027, -0.435862, 0.394335,
		34.157711, 35.539124, 37.222416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.104935, 36.393787, 37.255138>,  <33.591393, 35.844227, 36.946381>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.104935, 36.393787, 37.255138> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.344780, 36.078651, 37.198906>,  <34.488689, 35.889568, 37.165165>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.344780, 36.078651, 37.198906>,  <34.104935, 36.393787, 37.255138>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.344780, 36.078651, 37.198906> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.654815, 0.583982, -0.479774,
		0.460086, 0.195623, 0.866056,
		0.599616, -0.787843, -0.140585,
		34.524666, 35.842297, 37.156731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.733131, 36.739803, 37.287403>,  <34.104935, 36.393787, 37.255138>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.733131, 36.739803, 37.287403> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.819645, 36.383259, 37.128059>,  <34.871555, 36.169331, 37.032452>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.819645, 36.383259, 37.128059>,  <34.733131, 36.739803, 37.287403>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.819645, 36.383259, 37.128059> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.705134, 0.424820, -0.567727,
		0.675283, -0.158105, 0.720414,
		0.216286, -0.891365, -0.398359,
		34.884529, 36.115849, 37.008553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.415188, 36.774181, 37.194298>,  <34.733131, 36.739803, 37.287403>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.415188, 36.774181, 37.194298> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.320580, 36.482048, 36.937962>,  <35.263813, 36.306770, 36.784161>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.320580, 36.482048, 36.937962>,  <35.415188, 36.774181, 37.194298>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.320580, 36.482048, 36.937962> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.739603, 0.292401, -0.606209,
		0.630114, -0.617349, 0.470994,
		-0.236523, -0.730329, -0.640840,
		35.249622, 36.262951, 36.745708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.001495, 36.410511, 37.023285>,  <35.415188, 36.774181, 37.194298>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.001495, 36.410511, 37.023285> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.747822, 36.354584, 36.719112>,  <35.595615, 36.321030, 36.536610>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.747822, 36.354584, 36.719112>,  <36.001495, 36.410511, 37.023285>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.747822, 36.354584, 36.719112> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.703969, 0.302310, -0.642679,
		0.319741, -0.942901, -0.093298,
		-0.634187, -0.139812, -0.760433,
		35.557568, 36.312641, 36.490982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.450672, 36.674355, 36.507656>,  <36.001495, 36.410511, 37.023285>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.450672, 36.674355, 36.507656> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.775455, 36.735275, 36.733051>,  <36.970325, 36.771828, 36.868290>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.775455, 36.735275, 36.733051>,  <36.450672, 36.674355, 36.507656>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.775455, 36.735275, 36.733051> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373044, -0.607092, 0.701625,
		0.448949, -0.779900, -0.436121,
		0.811962, 0.152302, 0.563490,
		37.019043, 36.780964, 36.902100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.631790, 36.043198, 36.760166>,  <36.450672, 36.674355, 36.507656>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.631790, 36.043198, 36.760166> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.811241, 36.290924, 37.017906>,  <36.918911, 36.439560, 37.172550>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.811241, 36.290924, 37.017906>,  <36.631790, 36.043198, 36.760166>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.811241, 36.290924, 37.017906> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300104, -0.574718, 0.761339,
		0.841825, -0.534929, -0.071976,
		0.448629, 0.619314, 0.644347,
		36.945831, 36.476719, 37.211208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.027054, 35.580498, 37.144287>,  <36.631790, 36.043198, 36.760166>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.027054, 35.580498, 37.144287> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.994663, 35.908905, 37.370338>,  <36.975231, 36.105949, 37.505970>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.994663, 35.908905, 37.370338>,  <37.027054, 35.580498, 37.144287>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.994663, 35.908905, 37.370338> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175543, -0.569870, 0.802766,
		0.981136, -0.034201, 0.190269,
		-0.080973, 0.821023, 0.565124,
		36.970371, 36.155212, 37.539875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.318783, 35.362198, 37.773804>,  <37.027054, 35.580498, 37.144287>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.318783, 35.362198, 37.773804> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.098110, 35.685535, 37.856007>,  <36.965706, 35.879536, 37.905331>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.098110, 35.685535, 37.856007>,  <37.318783, 35.362198, 37.773804>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.098110, 35.685535, 37.856007> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378775, -0.462337, 0.801732,
		0.743088, 0.364457, 0.561241,
		-0.551679, 0.808341, 0.205510,
		36.932606, 35.928040, 37.917660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.426037, 35.440853, 38.442688>,  <37.318783, 35.362198, 37.773804>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.426037, 35.440853, 38.442688> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.124264, 35.698627, 38.392841>,  <36.943199, 35.853294, 38.362934>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.124264, 35.698627, 38.392841>,  <37.426037, 35.440853, 38.442688>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.124264, 35.698627, 38.392841> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377645, -0.270877, 0.885444,
		0.536856, 0.715071, 0.447727,
		-0.754433, 0.644437, -0.124621,
		36.897934, 35.891960, 38.355453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.474693, 35.843044, 39.066467>,  <37.426037, 35.440853, 38.442688>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.474693, 35.843044, 39.066467> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.113594, 35.820889, 38.895836>,  <36.896935, 35.807594, 38.793457>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.113594, 35.820889, 38.895836>,  <37.474693, 35.843044, 39.066467>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.113594, 35.820889, 38.895836> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382917, -0.348348, 0.855587,
		-0.195991, 0.935727, 0.293261,
		-0.902753, -0.055392, -0.426578,
		36.842770, 35.804272, 38.767864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.006786, 36.216179, 39.559731>,  <37.474693, 35.843044, 39.066467>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.006786, 36.216179, 39.559731> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.800545, 35.963264, 39.328434>,  <36.676800, 35.811516, 39.189655>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.800545, 35.963264, 39.328434>,  <37.006786, 36.216179, 39.559731>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.800545, 35.963264, 39.328434> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462994, -0.362261, 0.808953,
		-0.720966, 0.684821, -0.105963,
		-0.515601, -0.632288, -0.578245,
		36.645863, 35.773579, 39.154961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.279907, 36.214016, 39.892967>,  <37.006786, 36.216179, 39.559731>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.279907, 36.214016, 39.892967> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.276600, 35.889637, 39.658943>,  <36.274616, 35.695011, 39.518528>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.276600, 35.889637, 39.658943>,  <36.279907, 36.214016, 39.892967>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.276600, 35.889637, 39.658943> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.523517, -0.494980, 0.693488,
		-0.851975, 0.312023, -0.420452,
		-0.008269, -0.810948, -0.585059,
		36.274120, 35.646351, 39.483425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.597469, 35.944229, 39.889523>,  <36.279907, 36.214016, 39.892967>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.597469, 35.944229, 39.889523> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.821499, 35.621769, 39.813179>,  <35.955917, 35.428291, 39.767372>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.821499, 35.621769, 39.813179>,  <35.597469, 35.944229, 39.889523>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.821499, 35.621769, 39.813179> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.554882, -0.536117, 0.636148,
		-0.615159, -0.250386, -0.747587,
		0.560077, -0.806155, -0.190863,
		35.989521, 35.379921, 39.755920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.149704, 35.476009, 40.120872>,  <35.597469, 35.944229, 39.889523>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.149704, 35.476009, 40.120872> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.466942, 35.247532, 40.036266>,  <35.657284, 35.110443, 39.985504>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.466942, 35.247532, 40.036266>,  <35.149704, 35.476009, 40.120872>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.466942, 35.247532, 40.036266> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353451, -0.714390, 0.603920,
		-0.496058, -0.404206, -0.768468,
		0.793095, -0.571196, -0.211512,
		35.704868, 35.076172, 39.972813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.933304, 34.839458, 39.931431>,  <35.149704, 35.476009, 40.120872>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.933304, 34.839458, 39.931431> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.300636, 34.762493, 40.069794>,  <35.521034, 34.716316, 40.152813>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.300636, 34.762493, 40.069794>,  <34.933304, 34.839458, 39.931431>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.300636, 34.762493, 40.069794> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384744, -0.639225, 0.665855,
		0.092998, -0.744560, -0.661046,
		0.918326, -0.192410, 0.345911,
		35.576134, 34.704769, 40.173569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.784672, 34.190105, 40.128677>,  <34.933304, 34.839458, 39.931431>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.784672, 34.190105, 40.128677> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.120434, 34.315102, 40.306553>,  <35.321892, 34.390099, 40.413280>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.120434, 34.315102, 40.306553>,  <34.784672, 34.190105, 40.128677>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.120434, 34.315102, 40.306553> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209009, -0.569679, 0.794846,
		0.501716, -0.760141, -0.412877,
		0.839402, 0.312492, 0.444694,
		35.372253, 34.408848, 40.439960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.015152, 33.584137, 40.314960>,  <34.784672, 34.190105, 40.128677>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.015152, 33.584137, 40.314960> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.153316, 33.879532, 40.546589>,  <35.236214, 34.056770, 40.685566>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.153316, 33.879532, 40.546589>,  <35.015152, 33.584137, 40.314960>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.153316, 33.879532, 40.546589> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332261, -0.480843, 0.811414,
		0.877664, -0.472673, 0.079283,
		0.345411, 0.738492, 0.579069,
		35.256939, 34.101078, 40.720310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.369102, 33.210022, 40.818153>,  <35.015152, 33.584137, 40.314960>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.369102, 33.210022, 40.818153> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.279049, 33.571693, 40.963352>,  <35.225018, 33.788696, 41.050472>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.279049, 33.571693, 40.963352>,  <35.369102, 33.210022, 40.818153>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.279049, 33.571693, 40.963352> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260446, -0.414855, 0.871816,
		0.938872, 0.101737, 0.328890,
		-0.225138, 0.904182, 0.362999,
		35.211506, 33.842949, 41.072250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.596809, 33.211052, 41.497860>,  <35.369102, 33.210022, 40.818153>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.596809, 33.211052, 41.497860> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.336987, 33.515148, 41.493668>,  <35.181091, 33.697605, 41.491150>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.336987, 33.515148, 41.493668>,  <35.596809, 33.211052, 41.497860>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.336987, 33.515148, 41.493668> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348792, -0.285705, 0.892590,
		0.675586, 0.583446, 0.450748,
		-0.649559, 0.760238, -0.010483,
		35.142120, 33.743221, 41.490524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.692657, 33.604557, 42.092163>,  <35.596809, 33.211052, 41.497860>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.692657, 33.604557, 42.092163> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.315388, 33.681324, 41.983658>,  <35.089024, 33.727386, 41.918552>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.315388, 33.681324, 41.983658>,  <35.692657, 33.604557, 42.092163>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.315388, 33.681324, 41.983658> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310894, -0.221452, 0.924286,
		0.117318, 0.956099, 0.268535,
		-0.943176, 0.191921, -0.271265,
		35.032436, 33.738899, 41.902279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.354565, 33.975655, 42.629562>,  <35.692657, 33.604557, 42.092163>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.354565, 33.975655, 42.629562> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.035610, 33.850220, 42.423325>,  <34.844238, 33.774960, 42.299583>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.035610, 33.850220, 42.423325>,  <35.354565, 33.975655, 42.629562>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.035610, 33.850220, 42.423325> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497182, -0.142862, 0.855804,
		-0.342028, 0.938751, -0.041994,
		-0.797387, -0.313588, -0.515593,
		34.796394, 33.756142, 42.268646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.762424, 34.201054, 42.996567>,  <35.354565, 33.975655, 42.629562>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.762424, 34.201054, 42.996567> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.633862, 33.900509, 42.766037>,  <34.556725, 33.720184, 42.627720>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.633862, 33.900509, 42.766037>,  <34.762424, 34.201054, 42.996567>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.633862, 33.900509, 42.766037> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.601422, -0.308134, 0.737119,
		-0.731428, 0.583535, -0.352846,
		-0.321411, -0.751359, -0.576328,
		34.537437, 33.675102, 42.593140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<33.976799, 34.128975, 43.141670> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.095966, 33.782490, 42.981209>,  <34.167465, 33.574600, 42.884930>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.095966, 33.782490, 42.981209>,  <33.976799, 34.128975, 43.141670>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.095966, 33.782490, 42.981209> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.573874, -0.498340, 0.649866,
		-0.762832, 0.036606, -0.645559,
		0.297919, -0.866209, -0.401157,
		34.185341, 33.522629, 42.860863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.434547, 33.725471, 43.110683>,  <33.976799, 34.128975, 43.141670>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.434547, 33.725471, 43.110683> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.729992, 33.455833, 43.107765>,  <33.907257, 33.294052, 43.106014>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.729992, 33.455833, 43.107765>,  <33.434547, 33.725471, 43.110683>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.729992, 33.455833, 43.107765> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440540, -0.490829, 0.751672,
		-0.510290, -0.551967, -0.659497,
		0.738599, -0.674106, -0.007302,
		33.951572, 33.253605, 43.105579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.017204, 33.100349, 43.166588>,  <33.434547, 33.725471, 43.110683>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.017204, 33.100349, 43.166588> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.397884, 33.034630, 43.270336>,  <33.626293, 32.995197, 43.332584>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.397884, 33.034630, 43.270336>,  <33.017204, 33.100349, 43.166588>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.397884, 33.034630, 43.270336> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306103, -0.573408, 0.759937,
		0.023866, -0.802626, -0.596006,
		0.951699, -0.164302, 0.259371,
		33.683395, 32.985340, 43.348148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.994453, 32.418701, 43.502686>,  <33.017204, 33.100349, 43.166588>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.994453, 32.418701, 43.502686> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.370163, 32.530518, 43.582310>,  <33.595589, 32.597607, 43.630085>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.370163, 32.530518, 43.582310>,  <32.994453, 32.418701, 43.502686>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.370163, 32.530518, 43.582310> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018765, -0.537343, 0.843155,
		0.342662, -0.795687, -0.499465,
		0.939271, 0.279544, 0.199058,
		33.651943, 32.614380, 43.642029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.430244, 31.796148, 43.551674>,  <32.994453, 32.418701, 43.502686>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.430244, 31.796148, 43.551674> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.613194, 32.069557, 43.779221>,  <33.722961, 32.233601, 43.915749>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.613194, 32.069557, 43.779221>,  <33.430244, 31.796148, 43.551674>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.613194, 32.069557, 43.779221> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014999, -0.645536, 0.763583,
		0.889150, -0.340708, -0.305501,
		0.457371, 0.683522, 0.568868,
		33.750404, 32.274612, 43.949883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.155933, 31.576786, 43.832600>,  <33.430244, 31.796148, 43.551674>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.155933, 31.576786, 43.832600> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.044712, 31.855644, 44.096924>,  <33.977978, 32.022961, 44.255520>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.044712, 31.855644, 44.096924>,  <34.155933, 31.576786, 43.832600>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.044712, 31.855644, 44.096924> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010526, -0.685688, 0.727819,
		0.960508, 0.209329, 0.183321,
		-0.278054, 0.697146, 0.660812,
		33.961296, 32.064789, 44.295166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.564190, 31.501490, 44.511276>,  <34.155933, 31.576786, 43.832600>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.564190, 31.501490, 44.511276> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.260292, 31.730173, 44.635170>,  <34.077953, 31.867382, 44.709507>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.260292, 31.730173, 44.635170>,  <34.564190, 31.501490, 44.511276>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.260292, 31.730173, 44.635170> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039552, -0.516108, 0.855610,
		0.649015, 0.637796, 0.414723,
		-0.759747, 0.571707, 0.309736,
		34.032368, 31.901686, 44.728092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.670776, 31.634790, 45.241646>,  <34.564190, 31.501490, 44.511276>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.670776, 31.634790, 45.241646> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.279922, 31.703407, 45.191383>,  <34.045410, 31.744577, 45.161224>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.279922, 31.703407, 45.191383>,  <34.670776, 31.634790, 45.241646>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.279922, 31.703407, 45.191383> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196296, -0.500465, 0.843210,
		0.081757, 0.848592, 0.522692,
		-0.977130, 0.171540, -0.125659,
		33.986782, 31.754869, 45.153687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.363346, 31.855183, 45.912102>,  <34.670776, 31.634790, 45.241646>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.363346, 31.855183, 45.912102> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.028790, 31.761955, 45.713657>,  <33.828056, 31.706018, 45.594589>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.028790, 31.761955, 45.713657>,  <34.363346, 31.855183, 45.912102>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.028790, 31.761955, 45.713657> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301477, -0.560293, 0.771481,
		-0.457774, 0.794828, 0.398362,
		-0.836394, -0.233068, -0.496110,
		33.777870, 31.692036, 45.564823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.791767, 31.950529, 46.365074>,  <34.363346, 31.855183, 45.912102>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.791767, 31.950529, 46.365074> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.709923, 31.682209, 46.079933>,  <33.660816, 31.521217, 45.908848>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.709923, 31.682209, 46.079933>,  <33.791767, 31.950529, 46.365074>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.709923, 31.682209, 46.079933> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205853, -0.682487, 0.701310,
		-0.956952, 0.290242, 0.001561,
		-0.204615, -0.670799, -0.712855,
		33.648537, 31.480968, 45.866077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.268860, 31.709873, 46.604469>,  <33.791767, 31.950529, 46.365074>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.268860, 31.709873, 46.604469> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.321529, 31.435911, 46.317814>,  <33.353130, 31.271534, 46.145821>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.321529, 31.435911, 46.317814>,  <33.268860, 31.709873, 46.604469>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.321529, 31.435911, 46.317814> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422676, -0.692710, 0.584377,
		-0.896665, 0.225960, -0.380702,
		0.131671, -0.684905, -0.716637,
		33.361031, 31.230440, 46.102821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.673901, 31.466454, 46.468109>,  <33.268860, 31.709873, 46.604469>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.673901, 31.466454, 46.468109> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.962845, 31.199839, 46.394428>,  <33.136211, 31.039869, 46.350220>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.962845, 31.199839, 46.394428>,  <32.673901, 31.466454, 46.468109>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.962845, 31.199839, 46.394428> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352759, -0.584284, 0.730872,
		-0.594790, -0.462960, -0.657185,
		0.722347, -0.666543, -0.184213,
		33.179554, 30.999878, 46.339169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.342419, 30.926805, 46.542488>,  <32.673901, 31.466454, 46.468109>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.342419, 30.926805, 46.542488> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.721519, 30.802937, 46.573135>,  <32.948978, 30.728615, 46.591522>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.721519, 30.802937, 46.573135>,  <32.342419, 30.926805, 46.542488>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.721519, 30.802937, 46.573135> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243202, -0.545956, 0.801739,
		-0.206448, -0.778482, -0.592744,
		0.947751, -0.309674, 0.076617,
		33.005844, 30.710033, 46.596119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.288696, 30.205822, 46.657082>,  <32.342419, 30.926805, 46.542488>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.288696, 30.205822, 46.657082> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.657791, 30.317888, 46.762955>,  <32.879250, 30.385128, 46.826481>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.657791, 30.317888, 46.762955>,  <32.288696, 30.205822, 46.657082>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.657791, 30.317888, 46.762955> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112802, -0.460362, 0.880535,
		0.368549, -0.842361, -0.393191,
		0.922739, 0.280168, 0.264686,
		32.934612, 30.401939, 46.842361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.647739, 29.562731, 46.781933>,  <32.288696, 30.205822, 46.657082>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.647739, 29.562731, 46.781933> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.829842, 29.858025, 46.981030>,  <32.939102, 30.035200, 47.100487>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.829842, 29.858025, 46.981030>,  <32.647739, 29.562731, 46.781933>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.829842, 29.858025, 46.981030> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084354, -0.520762, 0.849524,
		0.886356, -0.428737, -0.174807,
		0.455256, 0.738235, 0.497746,
		32.966419, 30.079494, 47.130352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.041134, 29.342863, 47.438046>,  <32.647739, 29.562731, 46.781933>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.041134, 29.342863, 47.438046> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.028992, 29.733175, 47.524700>,  <33.021706, 29.967363, 47.576694>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.028992, 29.733175, 47.524700>,  <33.041134, 29.342863, 47.438046>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.028992, 29.733175, 47.524700> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053656, -0.214835, 0.975175,
		0.998098, 0.041222, -0.045836,
		-0.030351, 0.975780, 0.216638,
		33.019886, 30.025909, 47.589691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.450661, 29.347881, 47.919361>,  <33.041134, 29.342863, 47.438046>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.450661, 29.347881, 47.919361> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.244862, 29.684458, 47.985413>,  <33.121384, 29.886404, 48.025043>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.244862, 29.684458, 47.985413>,  <33.450661, 29.347881, 47.919361>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.244862, 29.684458, 47.985413> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095900, -0.247830, 0.964045,
		0.852112, 0.480164, 0.208203,
		-0.514499, 0.841441, 0.165131,
		33.090511, 29.936890, 48.034950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.597179, 29.591450, 48.630535>,  <33.450661, 29.347881, 47.919361>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.597179, 29.591450, 48.630535> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.256374, 29.772167, 48.524734>,  <33.051891, 29.880598, 48.461254>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.256374, 29.772167, 48.524734>,  <33.597179, 29.591450, 48.630535>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.256374, 29.772167, 48.524734> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402984, -0.243473, 0.882227,
		0.334186, 0.858256, 0.389507,
		-0.852012, 0.451793, -0.264498,
		33.000771, 29.907705, 48.445385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.376804, 29.853289, 49.269016>,  <33.597179, 29.591450, 48.630535>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.376804, 29.853289, 49.269016> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.053131, 29.870937, 49.034657>,  <32.858929, 29.881527, 48.894039>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.053131, 29.870937, 49.034657>,  <33.376804, 29.853289, 49.269016>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.053131, 29.870937, 49.034657> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.548060, -0.416133, 0.725578,
		-0.211801, 0.908233, 0.360906,
		-0.809179, 0.044120, -0.585904,
		32.810379, 29.884172, 48.858887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.810680, 30.239662, 49.614807>,  <33.376804, 29.853289, 49.269016>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.810680, 30.239662, 49.614807> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.662037, 29.959991, 49.370495>,  <32.572849, 29.792189, 49.223907>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.662037, 29.959991, 49.370495>,  <32.810680, 30.239662, 49.614807>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.662037, 29.959991, 49.370495> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483187, -0.416113, 0.770312,
		-0.792741, 0.581377, -0.183203,
		-0.371608, -0.699179, -0.610783,
		32.550556, 29.750238, 49.187260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.105637, 30.044880, 49.853889>,  <32.810680, 30.239662, 49.614807>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.105637, 30.044880, 49.853889> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.180092, 29.734207, 49.613186>,  <32.224766, 29.547804, 49.468765>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.180092, 29.734207, 49.613186>,  <32.105637, 30.044880, 49.853889>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.180092, 29.734207, 49.613186> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479575, -0.606370, 0.634290,
		-0.857531, 0.170521, -0.485348,
		0.186141, -0.776684, -0.601759,
		32.235935, 29.501202, 49.432659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.412710, 29.687748, 49.725624>,  <32.105637, 30.044880, 49.853889>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.412710, 29.687748, 49.725624> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.703119, 29.422213, 49.653843>,  <31.877365, 29.262892, 49.610775>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.703119, 29.422213, 49.653843>,  <31.412710, 29.687748, 49.725624>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.703119, 29.422213, 49.653843> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453053, -0.658069, 0.601405,
		-0.517331, -0.355332, -0.778529,
		0.726025, -0.663841, -0.179455,
		31.920927, 29.223061, 49.600006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.217600, 28.963825, 49.349663>,  <31.412710, 29.687748, 49.725624>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.217600, 28.963825, 49.349663> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.494202, 28.966623, 49.638599>,  <31.660162, 28.968302, 49.811962>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.494202, 28.966623, 49.638599>,  <31.217600, 28.963825, 49.349663>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.494202, 28.966623, 49.638599> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.583312, -0.584439, 0.564073,
		0.426110, -0.811408, -0.400060,
		0.691504, 0.006997, 0.722339,
		31.701653, 28.968723, 49.855301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.714521, 28.584797, 49.848961>,  <31.217600, 28.963825, 49.349663>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.714521, 28.584797, 49.848961> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.476460, 28.292278, 49.715694>,  <30.333622, 28.116768, 49.635735>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.476460, 28.292278, 49.715694>,  <30.714521, 28.584797, 49.848961>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.476460, 28.292278, 49.715694> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251809, 0.223998, -0.941498,
		0.763142, -0.644228, 0.050834,
		-0.595152, -0.731297, -0.333164,
		30.297915, 28.072889, 49.615746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.922512, 28.132355, 49.252869>,  <30.714521, 28.584797, 49.848961>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.922512, 28.132355, 49.252869> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.525169, 28.178389, 49.253414>,  <30.286764, 28.206009, 49.253742>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.525169, 28.178389, 49.253414>,  <30.922512, 28.132355, 49.252869>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.525169, 28.178389, 49.253414> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017125, 0.159535, -0.987044,
		-0.113811, -0.980461, -0.160446,
		-0.993355, 0.115084, 0.001367,
		30.227163, 28.212914, 49.253822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.654499, 27.799213, 48.637508>,  <30.922512, 28.132355, 49.252869>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.654499, 27.799213, 48.637508> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.350523, 28.042891, 48.728176>,  <30.168139, 28.189096, 48.782578>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.350523, 28.042891, 48.728176>,  <30.654499, 27.799213, 48.637508>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.350523, 28.042891, 48.728176> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085485, 0.252023, -0.963938,
		-0.644350, -0.751910, -0.139444,
		-0.759938, 0.609193, 0.226668,
		30.122541, 28.225649, 48.796177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.218313, 27.668875, 48.173130>,  <30.654499, 27.799213, 48.637508>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.218313, 27.668875, 48.173130> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.107670, 28.035292, 48.289307>,  <30.041285, 28.255142, 48.359013>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.107670, 28.035292, 48.289307>,  <30.218313, 27.668875, 48.173130>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.107670, 28.035292, 48.289307> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123175, 0.265944, -0.956087,
		-0.953056, -0.300237, 0.039270,
		-0.276609, 0.916041, 0.290441,
		30.024687, 28.310104, 48.376438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.701544, 27.831820, 47.743916>,  <30.218313, 27.668875, 48.173130>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.701544, 27.831820, 47.743916> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.837763, 28.180157, 47.885712>,  <29.919495, 28.389158, 47.970787>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.837763, 28.180157, 47.885712>,  <29.701544, 27.831820, 47.743916>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.837763, 28.180157, 47.885712> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144229, 0.420943, -0.895548,
		-0.929100, 0.253848, 0.268951,
		0.340546, 0.870843, 0.354486,
		29.939926, 28.441410, 47.992058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.218826, 28.392271, 47.488098>,  <29.701544, 27.831820, 47.743916>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.218826, 28.392271, 47.488098> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.544035, 28.604633, 47.583706>,  <29.739161, 28.732052, 47.641071>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.544035, 28.604633, 47.583706>,  <29.218826, 28.392271, 47.488098>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.544035, 28.604633, 47.583706> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192051, 0.632089, -0.750719,
		-0.549645, 0.564448, 0.615864,
		0.813023, 0.530907, 0.239022,
		29.787941, 28.763905, 47.655411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.060209, 29.017696, 47.251789>,  <29.218826, 28.392271, 47.488098>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.060209, 29.017696, 47.251789> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.454121, 29.077948, 47.286480>,  <29.690468, 29.114098, 47.307293>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.454121, 29.077948, 47.286480>,  <29.060209, 29.017696, 47.251789>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.454121, 29.077948, 47.286480> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050362, 0.724839, -0.687075,
		-0.166355, 0.672249, 0.721393,
		0.984779, 0.150629, 0.086725,
		29.749554, 29.123137, 47.312496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.269440, 29.708263, 46.943829>,  <29.060209, 29.017696, 47.251789>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.269440, 29.708263, 46.943829> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.631205, 29.538855, 46.964466>,  <29.848265, 29.437208, 46.976849>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.631205, 29.538855, 46.964466>,  <29.269440, 29.708263, 46.943829>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.631205, 29.538855, 46.964466> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319279, 0.591613, -0.740307,
		0.283011, 0.686019, 0.670285,
		0.904415, -0.423523, 0.051599,
		29.902529, 29.411798, 46.979946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.687017, 30.161816, 46.703564>,  <29.269440, 29.708263, 46.943829>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.687017, 30.161816, 46.703564> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.914215, 29.836348, 46.654049>,  <30.050533, 29.641068, 46.624340>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.914215, 29.836348, 46.654049>,  <29.687017, 30.161816, 46.703564>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.914215, 29.836348, 46.654049> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437175, 0.425707, -0.792245,
		0.697323, 0.395873, 0.597515,
		0.567995, -0.813670, -0.123789,
		30.084614, 29.592247, 46.616913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.317963, 30.414558, 46.577156>,  <29.687017, 30.161816, 46.703564>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.317963, 30.414558, 46.577156> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.340467, 30.040796, 46.436459>,  <30.353971, 29.816540, 46.352039>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.340467, 30.040796, 46.436459>,  <30.317963, 30.414558, 46.577156>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.340467, 30.040796, 46.436459> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554903, 0.322143, -0.767011,
		0.830010, -0.152029, 0.536629,
		0.056264, -0.934404, -0.351744,
		30.357347, 29.760475, 46.330936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.988752, 30.247141, 46.515625>,  <30.317963, 30.414558, 46.577156>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.988752, 30.247141, 46.515625> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.814240, 30.021196, 46.235455>,  <30.709532, 29.885630, 46.067352>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.814240, 30.021196, 46.235455>,  <30.988752, 30.247141, 46.515625>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.814240, 30.021196, 46.235455> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.601398, 0.395964, -0.693926,
		0.669313, -0.723979, 0.166954,
		-0.436280, -0.564860, -0.700424,
		30.683355, 29.851738, 46.025326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.531820, 30.126078, 46.214592>,  <30.988752, 30.247141, 46.515625>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.531820, 30.126078, 46.214592> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.240925, 30.038420, 45.954407>,  <31.066387, 29.985825, 45.798294>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.240925, 30.038420, 45.954407>,  <31.531820, 30.126078, 46.214592>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.240925, 30.038420, 45.954407> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.616749, 0.207280, -0.759379,
		0.301243, -0.953421, -0.015583,
		-0.727237, -0.219146, -0.650463,
		31.022755, 29.972675, 45.759270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.856295, 29.696125, 45.666027>,  <31.531820, 30.126078, 46.214592>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.856295, 29.696125, 45.666027> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.522121, 29.870481, 45.532135>,  <31.321617, 29.975096, 45.451797>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.522121, 29.870481, 45.532135>,  <31.856295, 29.696125, 45.666027>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.522121, 29.870481, 45.532135> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479612, 0.280827, -0.831329,
		-0.268368, -0.855064, -0.443672,
		-0.835435, 0.435892, -0.334734,
		31.271490, 30.001249, 45.431713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.937696, 29.657663, 44.966541>,  <31.856295, 29.696125, 45.666027>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.937696, 29.657663, 44.966541> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.647966, 29.932751, 44.986137>,  <31.474129, 30.097803, 44.997894>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.647966, 29.932751, 44.986137>,  <31.937696, 29.657663, 44.966541>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.647966, 29.932751, 44.986137> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388737, 0.466041, -0.794789,
		-0.569420, -0.556642, -0.604906,
		-0.724324, 0.687718, 0.048986,
		31.430670, 30.139067, 45.000832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.737179, 29.806963, 44.267643>,  <31.937696, 29.657663, 44.966541>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.737179, 29.806963, 44.267643> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.579733, 30.127186, 44.448387>,  <31.485266, 30.319319, 44.556831>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.579733, 30.127186, 44.448387>,  <31.737179, 29.806963, 44.267643>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.579733, 30.127186, 44.448387> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162527, 0.544397, -0.822932,
		-0.904794, -0.250480, -0.344395,
		-0.393616, 0.800557, 0.451857,
		31.461649, 30.367353, 44.583946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.616131, 30.083975, 43.684414>,  <31.737179, 29.806963, 44.267643>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.616131, 30.083975, 43.684414> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.563446, 30.368069, 43.961025>,  <31.531836, 30.538525, 44.126991>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.563446, 30.368069, 43.961025>,  <31.616131, 30.083975, 43.684414>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.563446, 30.368069, 43.961025> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029104, 0.694537, -0.718868,
		-0.990861, -0.114810, -0.070809,
		-0.131713, 0.710237, 0.691531,
		31.523932, 30.581141, 44.168484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.102432, 30.528160, 43.453400>,  <31.616131, 30.083975, 43.684414>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.102432, 30.528160, 43.453400> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.295439, 30.770111, 43.706791>,  <31.411243, 30.915281, 43.858826>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.295439, 30.770111, 43.706791>,  <31.102432, 30.528160, 43.453400>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.295439, 30.770111, 43.706791> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015007, 0.717430, -0.696469,
		-0.875758, 0.345564, 0.337095,
		0.482517, 0.604880, 0.633481,
		31.440193, 30.951574, 43.896835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.771582, 31.120970, 43.419979>,  <31.102432, 30.528160, 43.453400>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.771582, 31.120970, 43.419979> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.135880, 31.217903, 43.553738>,  <31.354458, 31.276064, 43.633991>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.135880, 31.217903, 43.553738>,  <30.771582, 31.120970, 43.419979>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.135880, 31.217903, 43.553738> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045197, 0.746377, -0.663987,
		-0.410492, 0.619835, 0.668806,
		0.910744, 0.242333, 0.334396,
		31.409103, 31.290604, 43.654057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.690987, 31.782827, 43.423344>,  <30.771582, 31.120970, 43.419979>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.690987, 31.782827, 43.423344> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.085033, 31.728611, 43.465618>,  <31.321463, 31.696081, 43.490982>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.085033, 31.728611, 43.465618>,  <30.690987, 31.782827, 43.423344>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.085033, 31.728611, 43.465618> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171678, 0.746639, -0.642695,
		0.008200, 0.651275, 0.758798,
		0.985119, -0.135539, 0.105687,
		31.380569, 31.687950, 43.497326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.985926, 32.474174, 43.430958>,  <30.690987, 31.782827, 43.423344>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.985926, 32.474174, 43.430958> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.287359, 32.229534, 43.334579>,  <31.468220, 32.082752, 43.276752>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.287359, 32.229534, 43.334579>,  <30.985926, 32.474174, 43.430958>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.287359, 32.229534, 43.334579> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317563, 0.659651, -0.681186,
		0.575556, 0.436814, 0.691324,
		0.753585, -0.611599, -0.240950,
		31.513435, 32.046055, 43.262295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.620003, 32.809597, 43.371975>,  <30.985926, 32.474174, 43.430958>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.620003, 32.809597, 43.371975> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.683376, 32.476036, 43.160503>,  <31.721401, 32.275898, 43.033619>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.683376, 32.476036, 43.160503>,  <31.620003, 32.809597, 43.371975>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.683376, 32.476036, 43.160503> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303766, 0.550641, -0.777510,
		0.939481, -0.037410, 0.340552,
		0.158435, -0.833904, -0.528681,
		31.730907, 32.225864, 43.001900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<43.189522, 38.002140, 42.411602> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.811966, 37.894066, 42.487583>,  <42.585434, 37.829224, 42.533173>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.811966, 37.894066, 42.487583>,  <43.189522, 38.002140, 42.411602>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.811966, 37.894066, 42.487583> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073771, -0.733074, -0.676136,
		0.321929, -0.624182, 0.711869,
		-0.943885, -0.270183, 0.189952,
		42.528801, 37.813011, 42.544567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.262253, 37.216656, 42.631649>,  <43.189522, 38.002140, 42.411602>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.262253, 37.216656, 42.631649> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.887154, 37.300388, 42.520794>,  <42.662094, 37.350628, 42.454281>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.887154, 37.300388, 42.520794>,  <43.262253, 37.216656, 42.631649>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.887154, 37.300388, 42.520794> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017634, -0.825616, -0.563957,
		-0.346864, -0.523964, 0.777912,
		-0.937750, 0.209334, -0.277137,
		42.605827, 37.363190, 42.437653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.925129, 36.563293, 42.734997>,  <43.262253, 37.216656, 42.631649>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.925129, 36.563293, 42.734997> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.700405, 36.776890, 42.482258>,  <42.565571, 36.905048, 42.330616>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.700405, 36.776890, 42.482258>,  <42.925129, 36.563293, 42.734997>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.700405, 36.776890, 42.482258> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044172, -0.743318, -0.667478,
		-0.826087, -0.402904, 0.394015,
		-0.561808, 0.533991, -0.631843,
		42.531864, 36.937088, 42.292706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.321281, 36.212791, 42.605564>,  <42.925129, 36.563293, 42.734997>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.321281, 36.212791, 42.605564> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.373684, 36.455418, 42.291897>,  <42.405125, 36.600994, 42.103695>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.373684, 36.455418, 42.291897>,  <42.321281, 36.212791, 42.605564>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.373684, 36.455418, 42.291897> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035511, -0.787607, -0.615154,
		-0.990745, 0.108438, -0.081645,
		0.131010, 0.606561, -0.784168,
		42.412987, 36.637386, 42.056648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.987720, 35.859417, 42.129036>,  <42.321281, 36.212791, 42.605564>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.987720, 35.859417, 42.129036> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.178074, 36.130993, 41.905407>,  <42.292286, 36.293938, 41.771229>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.178074, 36.130993, 41.905407>,  <41.987720, 35.859417, 42.129036>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.178074, 36.130993, 41.905407> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014346, -0.629593, -0.776792,
		-0.879389, 0.377686, -0.289875,
		0.475887, 0.678944, -0.559076,
		42.320839, 36.334675, 41.737682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.609612, 35.936813, 41.466026>,  <41.987720, 35.859417, 42.129036>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.609612, 35.936813, 41.466026> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.976082, 36.078125, 41.390324>,  <42.195965, 36.162910, 41.344902>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.976082, 36.078125, 41.390324>,  <41.609612, 35.936813, 41.466026>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.976082, 36.078125, 41.390324> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016707, -0.505471, -0.862682,
		-0.400426, 0.787207, -0.469003,
		0.916177, 0.353276, -0.189252,
		42.250935, 36.184109, 41.333549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.566570, 36.228561, 40.783230>,  <41.609612, 35.936813, 41.466026>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.566570, 36.228561, 40.783230> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.955410, 36.175793, 40.860821>,  <42.188713, 36.144131, 40.907375>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.955410, 36.175793, 40.860821>,  <41.566570, 36.228561, 40.783230>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.955410, 36.175793, 40.860821> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140437, -0.335065, -0.931670,
		0.187898, 0.932914, -0.307189,
		0.972097, -0.131918, 0.193974,
		42.247040, 36.136219, 40.919014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.960926, 36.622864, 40.263210>,  <41.566570, 36.228561, 40.783230>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.960926, 36.622864, 40.263210> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.187675, 36.327740, 40.409790>,  <42.323727, 36.150665, 40.497738>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.187675, 36.327740, 40.409790>,  <41.960926, 36.622864, 40.263210>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.187675, 36.327740, 40.409790> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031693, -0.424967, -0.904654,
		0.823192, 0.524442, -0.217521,
		0.566878, -0.737810, 0.366450,
		42.357738, 36.106396, 40.519726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.459087, 36.629482, 39.794224>,  <41.960926, 36.622864, 40.263210>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.459087, 36.629482, 39.794224> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.532558, 36.270424, 39.954475>,  <42.576641, 36.054989, 40.050625>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.532558, 36.270424, 39.954475>,  <42.459087, 36.629482, 39.794224>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.532558, 36.270424, 39.954475> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060803, -0.417155, -0.906799,
		0.981104, 0.142199, -0.131202,
		0.183678, -0.897642, 0.400627,
		42.587662, 36.001133, 40.074665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.007614, 36.331703, 39.419224>,  <42.459087, 36.629482, 39.794224>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.007614, 36.331703, 39.419224> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.839901, 36.025517, 39.614471>,  <42.739273, 35.841805, 39.731621>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.839901, 36.025517, 39.614471>,  <43.007614, 36.331703, 39.419224>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.839901, 36.025517, 39.614471> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051749, -0.556939, -0.828940,
		0.906379, -0.322301, 0.273128,
		-0.419284, -0.765467, 0.488119,
		42.714115, 35.795876, 39.760906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.492050, 35.782230, 39.595760>,  <43.007614, 36.331703, 39.419224>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.492050, 35.782230, 39.595760> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.147690, 35.579948, 39.573418>,  <42.941074, 35.458580, 39.560013>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.147690, 35.579948, 39.573418>,  <43.492050, 35.782230, 39.595760>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.147690, 35.579948, 39.573418> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285876, -0.389986, -0.875321,
		0.420872, -0.769528, 0.480306,
		-0.860896, -0.505705, -0.055855,
		42.889420, 35.428238, 39.556660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.725441, 35.152756, 39.439819>,  <43.492050, 35.782230, 39.595760>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.725441, 35.152756, 39.439819> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.338017, 35.151234, 39.340313>,  <43.105564, 35.150318, 39.280609>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.338017, 35.151234, 39.340313>,  <43.725441, 35.152756, 39.439819>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.338017, 35.151234, 39.340313> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240338, -0.272788, -0.931571,
		-0.064311, -0.962067, 0.265126,
		-0.968556, -0.003809, -0.248765,
		43.047451, 35.150089, 39.265682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.706539, 34.573071, 38.940079>,  <43.725441, 35.152756, 39.439819>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.706539, 34.573071, 38.940079> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.372200, 34.786842, 38.889881>,  <43.171597, 34.915104, 38.859764>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.372200, 34.786842, 38.889881>,  <43.706539, 34.573071, 38.940079>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.372200, 34.786842, 38.889881> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071930, -0.333248, -0.940092,
		-0.544234, -0.776744, 0.316985,
		-0.835844, 0.534430, -0.125494,
		43.121445, 34.947170, 38.852234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.211403, 34.090141, 38.558460>,  <43.706539, 34.573071, 38.940079>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.211403, 34.090141, 38.558460> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.090866, 34.465240, 38.489376>,  <43.018543, 34.690300, 38.447926>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.090866, 34.465240, 38.489376>,  <43.211403, 34.090141, 38.558460>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.090866, 34.465240, 38.489376> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092984, -0.209167, -0.973449,
		-0.948972, -0.277281, 0.150226,
		-0.301341, 0.937744, -0.172711,
		43.000465, 34.746563, 38.437561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.842228, 33.953697, 38.068127>,  <43.211403, 34.090141, 38.558460>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.842228, 33.953697, 38.068127> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.870972, 34.352428, 38.054466>,  <42.888218, 34.591667, 38.046272>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.870972, 34.352428, 38.054466>,  <42.842228, 33.953697, 38.068127>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.870972, 34.352428, 38.054466> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120924, -0.025276, -0.992340,
		-0.990057, 0.075443, 0.118724,
		0.071864, 0.996830, -0.034148,
		42.892532, 34.651478, 38.044224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.282696, 34.202206, 37.650005>,  <42.842228, 33.953697, 38.068127>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.282696, 34.202206, 37.650005> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.554958, 34.495243, 37.651447>,  <42.718315, 34.671066, 37.652313>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.554958, 34.495243, 37.651447>,  <42.282696, 34.202206, 37.650005>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.554958, 34.495243, 37.651447> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059710, 0.060377, -0.996388,
		-0.730168, 0.677981, 0.084840,
		0.680654, 0.732596, 0.003603,
		42.759155, 34.715023, 37.652527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.088737, 34.715630, 37.152950>,  <42.282696, 34.202206, 37.650005>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.088737, 34.715630, 37.152950> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.482784, 34.773399, 37.190224>,  <42.719212, 34.808064, 37.212589>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.482784, 34.773399, 37.190224>,  <42.088737, 34.715630, 37.152950>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.482784, 34.773399, 37.190224> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074536, 0.129574, -0.988764,
		-0.154878, 0.980995, 0.116880,
		0.985118, 0.144426, 0.093188,
		42.778320, 34.816727, 37.218182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.208271, 35.154472, 36.736279>,  <42.088737, 34.715630, 37.152950>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.208271, 35.154472, 36.736279> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.564217, 34.981819, 36.795383>,  <42.777786, 34.878227, 36.830845>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.564217, 34.981819, 36.795383>,  <42.208271, 35.154472, 36.736279>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.564217, 34.981819, 36.795383> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216828, 0.115174, -0.969392,
		0.401402, 0.894667, 0.196079,
		0.889866, -0.431631, 0.147758,
		42.831177, 34.852329, 36.839710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.622330, 35.564861, 36.286766>,  <42.208271, 35.154472, 36.736279>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.622330, 35.564861, 36.286766> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.842182, 35.236313, 36.347759>,  <42.974094, 35.039185, 36.384354>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.842182, 35.236313, 36.347759>,  <42.622330, 35.564861, 36.286766>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.842182, 35.236313, 36.347759> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296842, 0.021405, -0.954687,
		0.780889, 0.569991, 0.255583,
		0.549634, -0.821372, 0.152482,
		43.007072, 34.989902, 36.393505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.197784, 35.679825, 35.909718>,  <42.622330, 35.564861, 36.286766>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.197784, 35.679825, 35.909718> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.173775, 35.282078, 35.944668>,  <43.159370, 35.043430, 35.965637>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.173775, 35.282078, 35.944668>,  <43.197784, 35.679825, 35.909718>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.173775, 35.282078, 35.944668> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454632, -0.105161, -0.884449,
		0.888655, -0.013362, 0.458382,
		-0.060022, -0.994365, 0.087377,
		43.155769, 34.983768, 35.970882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.857578, 35.373825, 35.733295>,  <43.197784, 35.679825, 35.909718>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.857578, 35.373825, 35.733295> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.603115, 35.068760, 35.686573>,  <43.450439, 34.885719, 35.658539>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.603115, 35.068760, 35.686573>,  <43.857578, 35.373825, 35.733295>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.603115, 35.068760, 35.686573> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474179, -0.267027, -0.838958,
		0.608655, -0.589097, 0.531511,
		-0.636156, -0.762667, -0.116810,
		43.412270, 34.839958, 35.651531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.486534, 35.715218, 35.623093>,  <43.857578, 35.373825, 35.733295>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.486534, 35.715218, 35.623093> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.840504, 35.898174, 35.587986>,  <45.052887, 36.007950, 35.566921>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.840504, 35.898174, 35.587986>,  <44.486534, 35.715218, 35.623093>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.840504, 35.898174, 35.587986> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176036, 0.502960, 0.846193,
		0.431184, -0.733367, 0.525599,
		0.884925, 0.457389, -0.087769,
		45.105980, 36.035393, 35.561653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.764816, 35.696186, 36.247688>,  <44.486534, 35.715218, 35.623093>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.764816, 35.696186, 36.247688> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.014259, 35.963806, 36.085957>,  <45.163925, 36.124378, 35.988918>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.014259, 35.963806, 36.085957>,  <44.764816, 35.696186, 36.247688>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.014259, 35.963806, 36.085957> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104285, 0.583793, 0.805178,
		0.774751, -0.459949, 0.433829,
		0.623607, 0.669054, -0.404329,
		45.201340, 36.164524, 35.964657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.346535, 35.770023, 36.734814>,  <44.764816, 35.696186, 36.247688>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.346535, 35.770023, 36.734814> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.303410, 36.100544, 36.513687>,  <45.277534, 36.298855, 36.381012>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.303410, 36.100544, 36.513687>,  <45.346535, 35.770023, 36.734814>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.303410, 36.100544, 36.513687> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066606, 0.548807, 0.833291,
		0.991937, 0.126661, -0.004133,
		-0.107813, 0.826298, -0.552819,
		45.271065, 36.348434, 36.347843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.811325, 36.140942, 36.944477>,  <45.346535, 35.770023, 36.734814>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.811325, 36.140942, 36.944477> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.549423, 36.394875, 36.780392>,  <45.392281, 36.547234, 36.681942>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.549423, 36.394875, 36.780392>,  <45.811325, 36.140942, 36.944477>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.549423, 36.394875, 36.780392> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021842, 0.558392, 0.829289,
		0.755524, 0.534023, -0.379477,
		-0.654756, 0.634837, -0.410215,
		45.352997, 36.585327, 36.657326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.161266, 36.825653, 37.007839>,  <45.811325, 36.140942, 36.944477>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.161266, 36.825653, 37.007839> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.770191, 36.883968, 36.947357>,  <45.535545, 36.918957, 36.911068>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.770191, 36.883968, 36.947357>,  <46.161266, 36.825653, 37.007839>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.770191, 36.883968, 36.947357> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032348, 0.606780, 0.794212,
		0.207538, 0.781385, -0.588528,
		-0.977692, 0.145791, -0.151205,
		45.476883, 36.927704, 36.901997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.106117, 37.527241, 36.976517>,  <46.161266, 36.825653, 37.007839>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.106117, 37.527241, 36.976517> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.738659, 37.393440, 37.060612>,  <45.518185, 37.313160, 37.111069>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.738659, 37.393440, 37.060612>,  <46.106117, 37.527241, 36.976517>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.738659, 37.393440, 37.060612> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075981, 0.671779, 0.736845,
		-0.387712, 0.660923, -0.642542,
		-0.918644, -0.334505, 0.210239,
		45.463066, 37.293087, 37.123684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.602356, 38.105900, 37.015491>,  <46.106117, 37.527241, 36.976517>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.602356, 38.105900, 37.015491> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.464108, 37.808468, 37.244446>,  <45.381157, 37.630009, 37.381821>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.464108, 37.808468, 37.244446>,  <45.602356, 38.105900, 37.015491>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.464108, 37.808468, 37.244446> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082437, 0.631681, 0.770833,
		-0.934746, 0.219229, -0.279621,
		-0.345620, -0.743584, 0.572389,
		45.360420, 37.585392, 37.416161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.983543, 38.454273, 37.180897>,  <45.602356, 38.105900, 37.015491>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.983543, 38.454273, 37.180897> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.072159, 38.167210, 37.444984>,  <45.125328, 37.994972, 37.603436>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.072159, 38.167210, 37.444984>,  <44.983543, 38.454273, 37.180897>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.072159, 38.167210, 37.444984> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113537, 0.653453, 0.748404,
		-0.968519, -0.240761, 0.063285,
		0.221540, -0.717659, 0.660217,
		45.138622, 37.951912, 37.643051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.542164, 38.522877, 37.709385>,  <44.983543, 38.454273, 37.180897>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.542164, 38.522877, 37.709385> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.814304, 38.283836, 37.879089>,  <44.977589, 38.140411, 37.980911>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.814304, 38.283836, 37.879089>,  <44.542164, 38.522877, 37.709385>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.814304, 38.283836, 37.879089> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054865, 0.535733, 0.842603,
		-0.730826, -0.596546, 0.331701,
		0.680355, -0.597598, 0.424257,
		45.018410, 38.104557, 38.006367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.291718, 38.402397, 38.365620>,  <44.542164, 38.522877, 37.709385>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.291718, 38.402397, 38.365620> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.662979, 38.268528, 38.430756>,  <44.885738, 38.188206, 38.469837>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.662979, 38.268528, 38.430756>,  <44.291718, 38.402397, 38.365620>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.662979, 38.268528, 38.430756> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029510, 0.502333, 0.864170,
		-0.371013, -0.797282, 0.476121,
		0.928158, -0.334669, 0.162844,
		44.941425, 38.168129, 38.479610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.241161, 37.979481, 39.019131>,  <44.291718, 38.402397, 38.365620>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.241161, 37.979481, 39.019131> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.630524, 38.063774, 38.983196>,  <44.864143, 38.114349, 38.961636>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.630524, 38.063774, 38.983196>,  <44.241161, 37.979481, 39.019131>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.630524, 38.063774, 38.983196> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038642, 0.235482, 0.971110,
		0.225770, -0.948763, 0.221080,
		0.973414, 0.210705, -0.089827,
		44.922546, 38.126991, 38.956245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.614712, 37.595802, 39.632648>,  <44.241161, 37.979481, 39.019131>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.614712, 37.595802, 39.632648> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.847797, 37.883751, 39.481792>,  <44.987648, 38.056519, 39.391277>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.847797, 37.883751, 39.481792>,  <44.614712, 37.595802, 39.632648>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.847797, 37.883751, 39.481792> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223840, 0.303953, 0.926018,
		0.781244, -0.624021, 0.015982,
		0.582712, 0.719869, -0.377142,
		45.022610, 38.099712, 39.368649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.203629, 37.619186, 40.089790>,  <44.614712, 37.595802, 39.632648>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.203629, 37.619186, 40.089790> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.197193, 37.979267, 39.915722>,  <45.193333, 38.195316, 39.811279>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.197193, 37.979267, 39.915722>,  <45.203629, 37.619186, 40.089790>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.197193, 37.979267, 39.915722> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091703, 0.432063, 0.897169,
		0.995656, 0.054344, 0.075598,
		-0.016093, 0.900205, -0.435170,
		45.192364, 38.249329, 39.785172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.587929, 38.055271, 40.642010>,  <45.203629, 37.619186, 40.089790>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.587929, 38.055271, 40.642010> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.418629, 38.313847, 40.388088>,  <45.317047, 38.468990, 40.235737>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.418629, 38.313847, 40.388088>,  <45.587929, 38.055271, 40.642010>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.418629, 38.313847, 40.388088> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180803, 0.626300, 0.758326,
		0.887787, 0.435739, -0.148207,
		-0.423254, 0.646436, -0.634804,
		45.291653, 38.507778, 40.197647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.001156, 38.642536, 40.619648>,  <45.587929, 38.055271, 40.642010>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.001156, 38.642536, 40.619648> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.628056, 38.742916, 40.516109>,  <45.404194, 38.803143, 40.453987>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.628056, 38.742916, 40.516109>,  <46.001156, 38.642536, 40.619648>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.628056, 38.742916, 40.516109> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074691, 0.567884, 0.819713,
		0.352699, 0.783922, -0.510951,
		-0.932751, 0.250948, -0.258843,
		45.348228, 38.818199, 40.438457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.063396, 39.358566, 40.787601>,  <46.001156, 38.642536, 40.619648>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.063396, 39.358566, 40.787601> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.678123, 39.253872, 40.763016>,  <45.446960, 39.191055, 40.748264>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.678123, 39.253872, 40.763016>,  <46.063396, 39.358566, 40.787601>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.678123, 39.253872, 40.763016> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193761, 0.517291, 0.833587,
		-0.186389, 0.814803, -0.548959,
		-0.963180, -0.261738, -0.061460,
		45.389168, 39.175350, 40.744579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.512154, 40.016758, 40.834873>,  <46.063396, 39.358566, 40.787601>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.512154, 40.016758, 40.834873> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.277184, 39.710796, 40.940601>,  <45.136204, 39.527222, 41.004036>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.277184, 39.710796, 40.940601>,  <45.512154, 40.016758, 40.834873>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.277184, 39.710796, 40.940601> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423115, 0.568690, 0.705383,
		-0.689862, 0.302521, -0.657701,
		-0.587422, -0.764900, 0.264317,
		45.100956, 39.481327, 41.019897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.053391, 40.326038, 41.264889>,  <45.512154, 40.016758, 40.834873>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.053391, 40.326038, 41.264889> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.960361, 39.943520, 41.335777>,  <44.904545, 39.714008, 41.378311>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.960361, 39.943520, 41.335777>,  <45.053391, 40.326038, 41.264889>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.960361, 39.943520, 41.335777> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444428, 0.266574, 0.855232,
		-0.865097, 0.120145, -0.487003,
		-0.232575, -0.956297, 0.177217,
		44.890591, 39.656631, 41.388943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.306316, 40.200241, 41.460617>,  <45.053391, 40.326038, 41.264889>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.306316, 40.200241, 41.460617> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.515583, 39.899342, 41.620831>,  <44.641144, 39.718803, 41.716957>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.515583, 39.899342, 41.620831>,  <44.306316, 40.200241, 41.460617>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.515583, 39.899342, 41.620831> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311639, 0.268566, 0.911457,
		-0.793209, -0.601662, -0.093925,
		0.523164, -0.752246, 0.400530,
		44.672531, 39.673668, 41.740990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.870167, 39.828396, 41.940254>,  <44.306316, 40.200241, 41.460617>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.870167, 39.828396, 41.940254> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.242298, 39.731537, 42.050426>,  <44.465576, 39.673424, 42.116531>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.242298, 39.731537, 42.050426>,  <43.870167, 39.828396, 41.940254>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.242298, 39.731537, 42.050426> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216331, 0.244114, 0.945309,
		-0.296140, -0.939028, 0.174722,
		0.930324, -0.242146, 0.275433,
		44.521397, 39.658894, 42.133057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.777561, 39.629799, 42.599960>,  <43.870167, 39.828396, 41.940254>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.777561, 39.629799, 42.599960> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.175762, 39.666416, 42.609783>,  <44.414680, 39.688385, 42.615677>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.175762, 39.666416, 42.609783>,  <43.777561, 39.629799, 42.599960>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.175762, 39.666416, 42.609783> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042380, 0.198205, 0.979244,
		0.084776, -0.975876, 0.201193,
		0.995499, 0.091543, 0.024555,
		44.474411, 39.693878, 42.617149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<36.362255, 34.815311, 41.167656> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.060173, 34.670517, 40.949066>,  <35.878925, 34.583641, 40.817913>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.060173, 34.670517, 40.949066>,  <36.362255, 34.815311, 41.167656>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.060173, 34.670517, 40.949066> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481600, 0.259127, -0.837206,
		0.444666, -0.895442, -0.021359,
		-0.755204, -0.361991, -0.546470,
		35.833611, 34.561920, 40.785126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.768013, 34.598663, 40.669529>,  <36.362255, 34.815311, 41.167656>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.768013, 34.598663, 40.669529> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.401253, 34.611629, 40.510406>,  <36.181198, 34.619408, 40.414932>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.401253, 34.611629, 40.510406>,  <36.768013, 34.598663, 40.669529>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.401253, 34.611629, 40.510406> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342117, 0.577160, -0.741513,
		0.205563, -0.815987, -0.540285,
		-0.916897, 0.032413, -0.397806,
		36.126183, 34.621353, 40.391064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.787663, 34.408005, 40.001270>,  <36.768013, 34.598663, 40.669529>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.787663, 34.408005, 40.001270> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.445419, 34.612198, 39.966991>,  <36.240074, 34.734715, 39.946423>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.445419, 34.612198, 39.966991>,  <36.787663, 34.408005, 40.001270>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.445419, 34.612198, 39.966991> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304752, 0.362957, -0.880561,
		-0.418406, -0.779531, -0.466119,
		-0.855607, 0.510483, -0.085700,
		36.188736, 34.765343, 39.941280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.532948, 34.333717, 39.325558>,  <36.787663, 34.408005, 40.001270>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.532948, 34.333717, 39.325558> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.364182, 34.681614, 39.427963>,  <36.262920, 34.890350, 39.489407>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.364182, 34.681614, 39.427963>,  <36.532948, 34.333717, 39.325558>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.364182, 34.681614, 39.427963> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189033, 0.360559, -0.913380,
		-0.886708, -0.336977, -0.316536,
		-0.421918, 0.869738, 0.256011,
		36.237606, 34.942535, 39.504768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.158226, 34.613834, 38.765259>,  <36.532948, 34.333717, 39.325558>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.158226, 34.613834, 38.765259> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.231468, 34.939857, 38.985134>,  <36.275414, 35.135471, 39.117062>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.231468, 34.939857, 38.985134>,  <36.158226, 34.613834, 38.765259>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.231468, 34.939857, 38.985134> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108860, 0.538897, -0.835308,
		-0.977048, 0.212788, 0.009948,
		0.183105, 0.815053, 0.549692,
		36.286400, 35.184372, 39.150043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.756672, 35.052612, 38.494526>,  <36.158226, 34.613834, 38.765259>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.756672, 35.052612, 38.494526> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.010677, 35.292259, 38.689590>,  <36.163082, 35.436047, 38.806629>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.010677, 35.292259, 38.689590>,  <35.756672, 35.052612, 38.494526>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.010677, 35.292259, 38.689590> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107057, 0.556936, -0.823627,
		-0.765046, 0.575223, 0.289522,
		0.635015, 0.599117, 0.487663,
		36.201183, 35.471992, 38.835888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.673786, 35.676521, 38.221359>,  <35.756672, 35.052612, 38.494526>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.673786, 35.676521, 38.221359> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.022430, 35.729618, 38.410114>,  <36.231617, 35.761475, 38.523369>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.022430, 35.729618, 38.410114>,  <35.673786, 35.676521, 38.221359>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.022430, 35.729618, 38.410114> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315351, 0.585169, -0.747082,
		-0.375300, 0.799974, 0.468179,
		0.871610, 0.132740, 0.471886,
		36.283913, 35.769440, 38.551682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.755058, 36.456066, 38.149883>,  <35.673786, 35.676521, 38.221359>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.755058, 36.456066, 38.149883> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.106014, 36.281467, 38.229542>,  <36.316586, 36.176708, 38.277336>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.106014, 36.281467, 38.229542>,  <35.755058, 36.456066, 38.149883>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.106014, 36.281467, 38.229542> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438922, 0.562627, -0.700570,
		0.193753, 0.702081, 0.685231,
		0.877387, -0.436500, 0.199148,
		36.369228, 36.150517, 38.289288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.278381, 37.016529, 38.187599>,  <35.755058, 36.456066, 38.149883>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.278381, 37.016529, 38.187599> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.479424, 36.681744, 38.100986>,  <36.600048, 36.480873, 38.049019>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.479424, 36.681744, 38.100986>,  <36.278381, 37.016529, 38.187599>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.479424, 36.681744, 38.100986> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396290, 0.445647, -0.802716,
		0.768338, 0.317640, 0.555663,
		0.502604, -0.836961, -0.216530,
		36.630203, 36.430656, 38.036026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.037052, 37.201721, 38.287949>,  <36.278381, 37.016529, 38.187599>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.037052, 37.201721, 38.287949> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.001160, 36.896046, 38.032459>,  <36.979622, 36.712639, 37.879166>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.001160, 36.896046, 38.032459>,  <37.037052, 37.201721, 38.287949>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.001160, 36.896046, 38.032459> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495497, 0.522056, -0.694220,
		0.863962, -0.378779, 0.331807,
		-0.089735, -0.764189, -0.638720,
		36.974239, 36.666790, 37.840843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.643826, 37.145954, 38.083912>,  <37.037052, 37.201721, 38.287949>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.643826, 37.145954, 38.083912> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.446224, 36.939121, 37.804317>,  <37.327663, 36.815022, 37.636559>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.446224, 36.939121, 37.804317>,  <37.643826, 37.145954, 38.083912>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.446224, 36.939121, 37.804317> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.586228, 0.395623, -0.706979,
		0.642102, -0.759018, 0.107688,
		-0.494006, -0.517082, -0.698988,
		37.298023, 36.783997, 37.594620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.131039, 36.854797, 37.635582>,  <37.643826, 37.145954, 38.083912>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.131039, 36.854797, 37.635582> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.789288, 36.836586, 37.428520>,  <37.584236, 36.825657, 37.304283>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.789288, 36.836586, 37.428520>,  <38.131039, 36.854797, 37.635582>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.789288, 36.836586, 37.428520> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473922, 0.340338, -0.812138,
		0.213154, -0.939200, -0.269199,
		-0.854379, -0.045531, -0.517652,
		37.532974, 36.822926, 37.273224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.335342, 36.481560, 37.012337>,  <38.131039, 36.854797, 37.635582>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.335342, 36.481560, 37.012337> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.021305, 36.726913, 36.977970>,  <37.832882, 36.874126, 36.957352>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.021305, 36.726913, 36.977970>,  <38.335342, 36.481560, 37.012337>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.021305, 36.726913, 36.977970> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493335, 0.535413, -0.685532,
		-0.374495, -0.580594, -0.722955,
		-0.785095, 0.613387, -0.085918,
		37.785778, 36.910931, 36.952194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.081284, 36.348717, 36.240997>,  <38.335342, 36.481560, 37.012337>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.081284, 36.348717, 36.240997> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.021015, 36.711731, 36.397808>,  <37.984856, 36.929539, 36.491894>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.021015, 36.711731, 36.397808>,  <38.081284, 36.348717, 36.240997>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.021015, 36.711731, 36.397808> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327213, 0.419984, -0.846490,
		-0.932861, 0.000736, -0.360235,
		-0.150670, 0.907531, 0.392028,
		37.975815, 36.983990, 36.515415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.377075, 35.809402, 36.612492>,  <38.081284, 36.348717, 36.240997>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.377075, 35.809402, 36.612492> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.745537, 35.662605, 36.560658>,  <38.966614, 35.574528, 36.529556>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.745537, 35.662605, 36.560658>,  <38.377075, 35.809402, 36.612492>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.745537, 35.662605, 36.560658> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323174, -0.906775, 0.270772,
		-0.216874, -0.207544, -0.953882,
		0.921154, -0.366994, -0.129583,
		39.021881, 35.552505, 36.521782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.209114, 35.188713, 36.392036>,  <38.377075, 35.809402, 36.612492>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.209114, 35.188713, 36.392036> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.585304, 35.144287, 36.520512>,  <38.811020, 35.117634, 36.597599>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.585304, 35.144287, 36.520512>,  <38.209114, 35.188713, 36.392036>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.585304, 35.144287, 36.520512> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276126, -0.800676, 0.531670,
		0.198122, -0.588714, -0.783686,
		0.940480, -0.111061, 0.321191,
		38.867447, 35.110970, 36.616867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.202320, 34.537197, 36.667416>,  <38.209114, 35.188713, 36.392036>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.202320, 34.537197, 36.667416> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.573547, 34.631828, 36.782455>,  <38.796284, 34.688606, 36.851479>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.573547, 34.631828, 36.782455>,  <38.202320, 34.537197, 36.667416>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.573547, 34.631828, 36.782455> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078363, -0.630939, 0.771865,
		0.364066, -0.738883, -0.567017,
		0.928071, 0.236576, 0.287604,
		38.851967, 34.702801, 36.868736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.565479, 33.884544, 36.668209>,  <38.202320, 34.537197, 36.667416>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.565479, 33.884544, 36.668209> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.728352, 34.147533, 36.921803>,  <38.826077, 34.305325, 37.073959>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.728352, 34.147533, 36.921803>,  <38.565479, 33.884544, 36.668209>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.728352, 34.147533, 36.921803> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173500, -0.625815, 0.760430,
		0.896716, -0.419630, -0.140749,
		0.407182, 0.657470, 0.633984,
		38.850506, 34.344776, 37.112000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.071316, 33.523911, 37.038025>,  <38.565479, 33.884544, 36.668209>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.071316, 33.523911, 37.038025> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.985016, 33.839561, 37.268059>,  <38.933235, 34.028954, 37.406078>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.985016, 33.839561, 37.268059>,  <39.071316, 33.523911, 37.038025>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.985016, 33.839561, 37.268059> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079295, -0.601174, 0.795174,
		0.973224, 0.125957, 0.192277,
		-0.215750, 0.789129, 0.575089,
		38.920292, 34.076302, 37.440586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.383896, 33.505100, 37.683731>,  <39.071316, 33.523911, 37.038025>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.383896, 33.505100, 37.683731> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.055313, 33.720268, 37.759476>,  <38.858166, 33.849369, 37.804924>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.055313, 33.720268, 37.759476>,  <39.383896, 33.505100, 37.683731>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.055313, 33.720268, 37.759476> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131762, -0.502101, 0.854712,
		0.554845, 0.677155, 0.483330,
		-0.821453, 0.537918, 0.189365,
		38.808876, 33.881645, 37.816284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.392799, 33.480976, 38.416264>,  <39.383896, 33.505100, 37.683731>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.392799, 33.480976, 38.416264> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.032242, 33.633732, 38.334637>,  <38.815907, 33.725388, 38.285660>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.032242, 33.633732, 38.334637>,  <39.392799, 33.480976, 38.416264>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.032242, 33.633732, 38.334637> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387493, -0.501148, 0.773757,
		0.193222, 0.776537, 0.599713,
		-0.901396, 0.381891, -0.204069,
		38.761822, 33.748299, 38.273415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.120029, 33.912666, 39.015923>,  <39.392799, 33.480976, 38.416264>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.120029, 33.912666, 39.015923> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.820892, 33.773945, 38.789486>,  <38.641411, 33.690712, 38.653622>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.820892, 33.773945, 38.789486>,  <39.120029, 33.912666, 39.015923>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.820892, 33.773945, 38.789486> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478921, -0.308693, 0.821793,
		-0.459753, 0.885682, 0.064760,
		-0.747838, -0.346807, -0.566095,
		38.596542, 33.669903, 38.619659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.646755, 33.912086, 39.480339>,  <39.120029, 33.912666, 39.015923>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.646755, 33.912086, 39.480339> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.526928, 33.671558, 39.184048>,  <38.455032, 33.527241, 39.006271>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.526928, 33.671558, 39.184048>,  <38.646755, 33.912086, 39.480339>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.526928, 33.671558, 39.184048> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.601576, -0.483554, 0.635832,
		-0.740519, 0.636077, -0.216882,
		-0.299564, -0.601317, -0.740729,
		38.437057, 33.491165, 38.961830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.981709, 33.786125, 39.754631>,  <38.646755, 33.912086, 39.480339>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.981709, 33.786125, 39.754631> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.038242, 33.509480, 39.471310>,  <38.072163, 33.343491, 39.301315>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.038242, 33.509480, 39.471310>,  <37.981709, 33.786125, 39.754631>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.038242, 33.509480, 39.471310> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492524, -0.669778, 0.555714,
		-0.858746, 0.270313, -0.435301,
		0.141338, -0.691613, -0.708304,
		38.080643, 33.301994, 39.258820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.316456, 33.537849, 39.561390>,  <37.981709, 33.786125, 39.754631>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.316456, 33.537849, 39.561390> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.571125, 33.243927, 39.467834>,  <37.723927, 33.067574, 39.411701>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.571125, 33.243927, 39.467834>,  <37.316456, 33.537849, 39.561390>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.571125, 33.243927, 39.467834> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.565640, -0.651157, 0.506010,
		-0.524115, -0.189871, -0.830212,
		0.636675, -0.734808, -0.233883,
		37.762127, 33.023483, 39.397671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.835457, 32.923424, 39.460358>,  <37.316456, 33.537849, 39.561390>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.835457, 32.923424, 39.460358> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.200047, 32.767887, 39.514057>,  <37.418800, 32.674564, 39.546276>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.200047, 32.767887, 39.514057>,  <36.835457, 32.923424, 39.460358>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.200047, 32.767887, 39.514057> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400307, -0.763274, 0.507118,
		-0.094722, -0.515963, -0.851358,
		0.911473, -0.388839, 0.134244,
		37.473488, 32.651234, 39.554329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.782505, 32.148685, 39.339611>,  <36.835457, 32.923424, 39.460358>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.782505, 32.148685, 39.339611> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.091839, 32.249611, 39.572262>,  <37.277439, 32.310165, 39.711853>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.091839, 32.249611, 39.572262>,  <36.782505, 32.148685, 39.339611>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.091839, 32.249611, 39.572262> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331543, -0.621018, 0.710222,
		0.540396, -0.742076, -0.396605,
		0.773338, 0.252309, 0.581626,
		37.323841, 32.325302, 39.746750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.952625, 31.563473, 39.516071>,  <36.782505, 32.148685, 39.339611>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.952625, 31.563473, 39.516071> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.134979, 31.786560, 39.793522>,  <37.244392, 31.920412, 39.959991>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.134979, 31.786560, 39.793522>,  <36.952625, 31.563473, 39.516071>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.134979, 31.786560, 39.793522> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436940, -0.538711, 0.720329,
		0.775406, -0.631460, -0.001901,
		0.455883, 0.557716, 0.693630,
		37.271744, 31.953875, 40.001610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.332462, 30.843266, 39.538784>,  <36.952625, 31.563473, 39.516071>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.332462, 30.843266, 39.538784> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.139095, 30.588299, 39.298782>,  <37.023075, 30.435318, 39.154781>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.139095, 30.588299, 39.298782>,  <37.332462, 30.843266, 39.538784>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.139095, 30.588299, 39.298782> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579300, 0.280919, -0.765177,
		0.656291, -0.717483, 0.233455,
		-0.483420, -0.637419, -0.600002,
		36.994068, 30.397074, 39.118782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.857151, 30.415268, 39.205090>,  <37.332462, 30.843266, 39.538784>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.857151, 30.415268, 39.205090> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.523956, 30.436064, 38.984753>,  <37.324039, 30.448542, 38.852551>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.523956, 30.436064, 38.984753>,  <37.857151, 30.415268, 39.205090>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.523956, 30.436064, 38.984753> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537877, 0.309421, -0.784185,
		0.129671, -0.949503, -0.285710,
		-0.832991, 0.051991, -0.550839,
		37.274059, 30.451660, 38.819500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.121155, 30.157200, 38.655552>,  <37.857151, 30.415268, 39.205090>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.121155, 30.157200, 38.655552> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.783955, 30.344078, 38.548904>,  <37.581635, 30.456205, 38.484917>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.783955, 30.344078, 38.548904>,  <38.121155, 30.157200, 38.655552>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.783955, 30.344078, 38.548904> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411563, 0.241036, -0.878930,
		-0.346367, -0.850665, -0.395473,
		-0.842998, 0.467194, -0.266616,
		37.531055, 30.484236, 38.468918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.926804, 29.814316, 38.029953>,  <38.121155, 30.157200, 38.655552>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.926804, 29.814316, 38.029953> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.759506, 30.176785, 38.055027>,  <37.659130, 30.394266, 38.070072>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.759506, 30.176785, 38.055027>,  <37.926804, 29.814316, 38.029953>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.759506, 30.176785, 38.055027> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321298, 0.212133, -0.922912,
		-0.849613, -0.365860, -0.379873,
		-0.418240, 0.906171, 0.062681,
		37.634033, 30.448635, 38.073830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.539169, 29.848835, 37.392700>,  <37.926804, 29.814316, 38.029953>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.539169, 29.848835, 37.392700> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.616394, 30.212074, 37.541336>,  <37.662731, 30.430017, 37.630520>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.616394, 30.212074, 37.541336>,  <37.539169, 29.848835, 37.392700>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.616394, 30.212074, 37.541336> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287922, 0.309612, -0.906223,
		-0.937990, 0.281951, -0.201686,
		0.193066, 0.908099, 0.371593,
		37.674313, 30.484505, 37.652813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.280693, 30.333452, 36.807285>,  <37.539169, 29.848835, 37.392700>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.280693, 30.333452, 36.807285> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.524216, 30.527979, 37.057995>,  <37.670330, 30.644695, 37.208420>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.524216, 30.527979, 37.057995>,  <37.280693, 30.333452, 36.807285>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.524216, 30.527979, 37.057995> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.610277, 0.217688, -0.761691,
		-0.506865, 0.846231, -0.164259,
		0.608810, 0.486318, 0.626774,
		37.706860, 30.673874, 37.246029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.226440, 31.056374, 36.450798>,  <37.280693, 30.333452, 36.807285>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.226440, 31.056374, 36.450798> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.558296, 31.111914, 36.667099>,  <37.757412, 31.145237, 36.796879>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.558296, 31.111914, 36.667099>,  <37.226440, 31.056374, 36.450798>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.558296, 31.111914, 36.667099> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.544474, 0.012937, -0.838678,
		-0.123446, 0.990229, -0.064867,
		0.829644, 0.138850, 0.540751,
		37.807190, 31.153568, 36.829323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.432426, 31.710581, 36.349571>,  <37.226440, 31.056374, 36.450798>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.432426, 31.710581, 36.349571> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.748520, 31.502436, 36.479031>,  <37.938175, 31.377548, 36.556705>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.748520, 31.502436, 36.479031>,  <37.432426, 31.710581, 36.349571>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.748520, 31.502436, 36.479031> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567939, 0.423554, -0.705724,
		0.230150, 0.741502, 0.630243,
		0.790238, -0.520362, 0.323647,
		37.985592, 31.346327, 36.576126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.974319, 32.177567, 36.286232>,  <37.432426, 31.710581, 36.349571>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.974319, 32.177567, 36.286232> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.132923, 31.810528, 36.274956>,  <38.228085, 31.590305, 36.268188>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.132923, 31.810528, 36.274956>,  <37.974319, 32.177567, 36.286232>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.132923, 31.810528, 36.274956> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555814, 0.264392, -0.788142,
		0.730650, 0.296838, 0.614848,
		0.396511, -0.917597, -0.028191,
		38.251877, 31.535248, 36.266499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.728779, 32.211006, 36.234852>,  <37.974319, 32.177567, 36.286232>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.728779, 32.211006, 36.234852> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.610535, 31.863167, 36.076660>,  <38.539589, 31.654463, 35.981747>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.610535, 31.863167, 36.076660>,  <38.728779, 32.211006, 36.234852>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.610535, 31.863167, 36.076660> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.592238, 0.158005, -0.790119,
		0.749577, -0.467789, 0.468303,
		-0.295614, -0.869602, -0.395480,
		38.521851, 31.602285, 35.958015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.369789, 31.974953, 36.005402>,  <38.728779, 32.211006, 36.234852>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.369789, 31.974953, 36.005402> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.076714, 31.763657, 35.833763>,  <38.900867, 31.636879, 35.730778>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.076714, 31.763657, 35.833763>,  <39.369789, 31.974953, 36.005402>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.076714, 31.763657, 35.833763> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506726, -0.002547, -0.862104,
		0.454303, -0.849093, 0.269538,
		-0.732692, -0.528238, -0.429100,
		38.856907, 31.605185, 35.705032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.735302, 31.530920, 35.667320>,  <39.369789, 31.974953, 36.005402>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.735302, 31.530920, 35.667320> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.371243, 31.554609, 35.503311>,  <39.152805, 31.568823, 35.404907>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.371243, 31.554609, 35.503311>,  <39.735302, 31.530920, 35.667320>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.371243, 31.554609, 35.503311> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413758, 0.080589, -0.906813,
		-0.020665, -0.994986, -0.097853,
		-0.910152, 0.059227, -0.410018,
		39.098198, 31.572376, 35.380306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<35.973877, 27.941071, 42.291744> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.659279, 28.096048, 42.099365>,  <35.470520, 28.189035, 41.983936>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.659279, 28.096048, 42.099365>,  <35.973877, 27.941071, 42.291744>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.659279, 28.096048, 42.099365> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578825, 0.190856, -0.792802,
		-0.215377, -0.901920, -0.374370,
		-0.786495, 0.387446, -0.480948,
		35.423328, 28.212282, 41.955082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.023621, 27.687014, 41.622383>,  <35.973877, 27.941071, 42.291744>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.023621, 27.687014, 41.622383> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.793560, 28.010900, 41.575802>,  <35.655525, 28.205233, 41.547852>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.793560, 28.010900, 41.575802>,  <36.023621, 27.687014, 41.622383>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.793560, 28.010900, 41.575802> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492821, 0.229337, -0.839364,
		-0.652939, -0.540152, -0.530949,
		-0.575150, 0.809716, -0.116455,
		35.621014, 28.253815, 41.540867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.864433, 27.768023, 40.831642>,  <36.023621, 27.687014, 41.622383>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.864433, 27.768023, 40.831642> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.773098, 28.146311, 40.924141>,  <35.718296, 28.373283, 40.979641>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.773098, 28.146311, 40.924141>,  <35.864433, 27.768023, 40.831642>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.773098, 28.146311, 40.924141> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395304, 0.307117, -0.865687,
		-0.889717, -0.106258, -0.443974,
		-0.228338, 0.945721, 0.231243,
		35.704597, 28.430027, 40.993515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.574150, 28.051283, 40.289734>,  <35.864433, 27.768023, 40.831642>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.574150, 28.051283, 40.289734> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.707146, 28.364597, 40.499844>,  <35.786945, 28.552586, 40.625908>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.707146, 28.364597, 40.499844>,  <35.574150, 28.051283, 40.289734>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.707146, 28.364597, 40.499844> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207707, 0.482468, -0.850930,
		-0.919949, 0.392031, -0.002276,
		0.332493, 0.783285, 0.525274,
		35.806892, 28.599583, 40.657425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.217663, 28.650393, 39.980797>,  <35.574150, 28.051283, 40.289734>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.217663, 28.650393, 39.980797> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.533531, 28.795736, 40.178539>,  <35.723053, 28.882942, 40.297184>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.533531, 28.795736, 40.178539>,  <35.217663, 28.650393, 39.980797>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.533531, 28.795736, 40.178539> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202754, 0.605928, -0.769248,
		-0.579056, 0.707687, 0.404813,
		0.789674, 0.363360, 0.494353,
		35.770432, 28.904745, 40.326843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.164013, 29.274797, 39.977997>,  <35.217663, 28.650393, 39.980797>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.164013, 29.274797, 39.977997> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.558990, 29.272404, 40.041138>,  <35.795979, 29.270967, 40.079021>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.558990, 29.272404, 40.041138>,  <35.164013, 29.274797, 39.977997>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.558990, 29.272404, 40.041138> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119213, 0.683862, -0.719806,
		-0.103640, 0.729587, 0.675989,
		0.987445, -0.005986, 0.157851,
		35.855225, 29.270607, 40.088493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.462898, 30.016832, 39.746647>,  <35.164013, 29.274797, 39.977997>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.462898, 30.016832, 39.746647> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.787846, 29.783602, 39.743080>,  <35.982815, 29.643663, 39.740940>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.787846, 29.783602, 39.743080>,  <35.462898, 30.016832, 39.746647>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.787846, 29.783602, 39.743080> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359789, 0.513194, -0.779220,
		0.458922, 0.629805, 0.626687,
		0.812369, -0.583076, -0.008919,
		36.031555, 29.608679, 39.740406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.054279, 30.459322, 39.915981>,  <35.462898, 30.016832, 39.746647>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.054279, 30.459322, 39.915981> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.211521, 30.153965, 39.710964>,  <36.305866, 29.970751, 39.587955>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.211521, 30.153965, 39.710964>,  <36.054279, 30.459322, 39.915981>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.211521, 30.153965, 39.710964> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438262, 0.645587, -0.625415,
		0.808327, 0.021227, 0.588351,
		0.393108, -0.763392, -0.512542,
		36.329453, 29.924948, 39.557201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.684673, 30.741800, 39.864079>,  <36.054279, 30.459322, 39.915981>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.684673, 30.741800, 39.864079> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.650017, 30.456463, 39.585903>,  <36.629223, 30.285261, 39.418999>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.650017, 30.456463, 39.585903>,  <36.684673, 30.741800, 39.864079>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.650017, 30.456463, 39.585903> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539703, 0.553148, -0.634624,
		0.837385, -0.430314, 0.337070,
		-0.086638, -0.713343, -0.695440,
		36.624023, 30.242460, 39.377270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.106106, 31.158756, 40.198345>,  <36.684673, 30.741800, 39.864079>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.106106, 31.158756, 40.198345> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.157879, 31.519869, 40.362411>,  <37.188942, 31.736536, 40.460850>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.157879, 31.519869, 40.362411>,  <37.106106, 31.158756, 40.198345>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.157879, 31.519869, 40.362411> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409014, -0.328209, 0.851461,
		0.903302, -0.277967, 0.326770,
		0.129430, 0.902781, 0.410165,
		37.196709, 31.790703, 40.485462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.349106, 31.006847, 40.886669>,  <37.106106, 31.158756, 40.198345>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.349106, 31.006847, 40.886669> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.215206, 31.383272, 40.906036>,  <37.134865, 31.609127, 40.917656>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.215206, 31.383272, 40.906036>,  <37.349106, 31.006847, 40.886669>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.215206, 31.383272, 40.906036> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358947, -0.174852, 0.916834,
		0.871262, 0.289535, 0.396323,
		-0.334753, 0.941061, 0.048414,
		37.114780, 31.665590, 40.920559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.579742, 31.218975, 41.471527>,  <37.349106, 31.006847, 40.886669>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.579742, 31.218975, 41.471527> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.287472, 31.484306, 41.406895>,  <37.112110, 31.643505, 41.368114>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.287472, 31.484306, 41.406895>,  <37.579742, 31.218975, 41.471527>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.287472, 31.484306, 41.406895> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266933, -0.059735, 0.961862,
		0.628377, 0.745942, 0.220710,
		-0.730677, 0.663327, -0.161580,
		37.068268, 31.683304, 41.358421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.626553, 31.736664, 41.981346>,  <37.579742, 31.218975, 41.471527>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.626553, 31.736664, 41.981346> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.249111, 31.752581, 41.849876>,  <37.022644, 31.762131, 41.770996>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.249111, 31.752581, 41.849876>,  <37.626553, 31.736664, 41.981346>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.249111, 31.752581, 41.849876> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328869, -0.227012, 0.916685,
		-0.038135, 0.973078, 0.227297,
		-0.943605, 0.039793, -0.328672,
		36.966030, 31.764519, 41.751274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.251759, 32.101006, 42.511448>,  <37.626553, 31.736664, 41.981346>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.251759, 32.101006, 42.511448> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.962910, 31.919704, 42.302410>,  <36.789600, 31.810923, 42.176987>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.962910, 31.919704, 42.302410>,  <37.251759, 32.101006, 42.511448>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.962910, 31.919704, 42.302410> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427469, -0.301579, 0.852244,
		-0.543889, 0.838813, 0.024022,
		-0.722118, -0.453257, -0.522592,
		36.746273, 31.783728, 42.145634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.652622, 32.377148, 42.799580>,  <37.251759, 32.101006, 42.511448>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.652622, 32.377148, 42.799580> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.574322, 32.013783, 42.651817>,  <36.527340, 31.795763, 42.563160>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.574322, 32.013783, 42.651817>,  <36.652622, 32.377148, 42.799580>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.574322, 32.013783, 42.651817> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483348, -0.238387, 0.842346,
		-0.853262, 0.343444, -0.392416,
		-0.195751, -0.908415, -0.369409,
		36.515598, 31.741259, 42.540993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.980400, 32.322510, 43.023769>,  <36.652622, 32.377148, 42.799580>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.980400, 32.322510, 43.023769> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.102226, 31.952005, 42.934967>,  <36.175320, 31.729704, 42.881683>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.102226, 31.952005, 42.934967>,  <35.980400, 32.322510, 43.023769>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.102226, 31.952005, 42.934967> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.534985, -0.359197, 0.764702,
		-0.788056, -0.114128, -0.604932,
		0.304563, -0.926257, -0.222010,
		36.193596, 31.674128, 42.868362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.406433, 31.898500, 43.297783>,  <35.980400, 32.322510, 43.023769>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.406433, 31.898500, 43.297783> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.686485, 31.625294, 43.214539>,  <35.854515, 31.461369, 43.164593>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.686485, 31.625294, 43.214539>,  <35.406433, 31.898500, 43.297783>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.686485, 31.625294, 43.214539> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310002, -0.553330, 0.773126,
		-0.643215, -0.476770, -0.599137,
		0.700124, -0.683020, -0.208111,
		35.896523, 31.420387, 43.152107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.982349, 31.316689, 43.245281>,  <35.406433, 31.898500, 43.297783>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.982349, 31.316689, 43.245281> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.361912, 31.214651, 43.319584>,  <35.589649, 31.153429, 43.364166>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.361912, 31.214651, 43.319584>,  <34.982349, 31.316689, 43.245281>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.361912, 31.214651, 43.319584> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297324, -0.525516, 0.797140,
		-0.105724, -0.811641, -0.574510,
		0.948905, -0.255092, 0.185760,
		35.646584, 31.138123, 43.375313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.940189, 30.617935, 43.444992>,  <34.982349, 31.316689, 43.245281>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.940189, 30.617935, 43.444992> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.315151, 30.696556, 43.559975>,  <35.540131, 30.743729, 43.628963>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.315151, 30.696556, 43.559975>,  <34.940189, 30.617935, 43.444992>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.315151, 30.696556, 43.559975> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084672, -0.672058, 0.735642,
		0.337784, -0.713936, -0.613349,
		0.937407, 0.196555, 0.287460,
		35.596375, 30.755522, 43.646214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.398758, 29.918711, 43.361401>,  <34.940189, 30.617935, 43.444992>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.398758, 29.918711, 43.361401> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.541729, 30.153597, 43.651897>,  <35.627514, 30.294529, 43.826195>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.541729, 30.153597, 43.651897>,  <35.398758, 29.918711, 43.361401>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.541729, 30.153597, 43.651897> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121537, -0.800240, 0.587234,
		0.925997, -0.121632, -0.357399,
		0.357432, 0.587215, 0.726238,
		35.648960, 30.329762, 43.869770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.696022, 29.422306, 43.729511>,  <35.398758, 29.918711, 43.361401>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.696022, 29.422306, 43.729511> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.707264, 29.730288, 43.984501>,  <35.714008, 29.915077, 44.137497>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.707264, 29.730288, 43.984501>,  <35.696022, 29.422306, 43.729511>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.707264, 29.730288, 43.984501> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189365, -0.622081, 0.759707,
		0.981504, -0.142065, 0.128322,
		0.028101, 0.769956, 0.637478,
		35.715694, 29.961275, 44.175743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.229034, 29.188578, 44.201794>,  <35.696022, 29.422306, 43.729511>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.229034, 29.188578, 44.201794> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.977062, 29.457575, 44.357201>,  <35.825878, 29.618973, 44.450443>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.977062, 29.457575, 44.357201>,  <36.229034, 29.188578, 44.201794>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.977062, 29.457575, 44.357201> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020777, -0.514653, 0.857147,
		0.776375, 0.531869, 0.338167,
		-0.629929, 0.672494, 0.388513,
		35.788082, 29.659323, 44.473755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.497318, 29.278458, 44.839775>,  <36.229034, 29.188578, 44.201794>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.497318, 29.278458, 44.839775> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.123028, 29.414398, 44.877556>,  <35.898453, 29.495962, 44.900227>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.123028, 29.414398, 44.877556>,  <36.497318, 29.278458, 44.839775>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.123028, 29.414398, 44.877556> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032558, -0.349848, 0.936240,
		0.351228, 0.872987, 0.338426,
		-0.935724, 0.339852, 0.094454,
		35.842312, 29.516354, 44.905891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<28.472935, 30.401548, 42.476437> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.745422, 30.108730, 42.473537>,  <28.908915, 29.933039, 42.471798>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.745422, 30.108730, 42.473537>,  <28.472935, 30.401548, 42.476437>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.745422, 30.108730, 42.473537> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428410, 0.406657, -0.806905,
		0.593639, 0.546572, 0.590637,
		0.681218, -0.732045, -0.007251,
		28.949787, 29.889116, 42.471363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.064018, 30.786358, 42.422192>,  <28.472935, 30.401548, 42.476437>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.064018, 30.786358, 42.422192> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.158487, 30.416286, 42.303352>,  <29.215168, 30.194242, 42.232048>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.158487, 30.416286, 42.303352>,  <29.064018, 30.786358, 42.422192>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.158487, 30.416286, 42.303352> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529370, 0.378892, -0.759084,
		0.814855, 0.022002, 0.579247,
		0.236173, -0.925179, -0.297095,
		29.229340, 30.138733, 42.214226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.721649, 30.840570, 42.410488>,  <29.064018, 30.786358, 42.422192>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.721649, 30.840570, 42.410488> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.629715, 30.541225, 42.161610>,  <29.574554, 30.361618, 42.012283>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.629715, 30.541225, 42.161610>,  <29.721649, 30.840570, 42.410488>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.629715, 30.541225, 42.161610> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.574370, 0.411800, -0.707474,
		0.785668, -0.519972, 0.335193,
		-0.229834, -0.748365, -0.622195,
		29.560764, 30.316715, 41.974953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.351702, 30.565880, 42.137596>,  <29.721649, 30.840570, 42.410488>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.351702, 30.565880, 42.137596> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.065222, 30.467669, 41.876286>,  <29.893333, 30.408743, 41.719498>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.065222, 30.467669, 41.876286>,  <30.351702, 30.565880, 42.137596>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.065222, 30.467669, 41.876286> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488430, 0.492272, -0.720489,
		0.498496, -0.835094, -0.232637,
		-0.716197, -0.245534, -0.653280,
		29.850361, 30.394011, 41.680302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.681267, 30.731369, 41.489506>,  <30.351702, 30.565880, 42.137596>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.681267, 30.731369, 41.489506> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.320343, 30.619282, 41.358471>,  <30.103788, 30.552031, 41.279850>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.320343, 30.619282, 41.358471>,  <30.681267, 30.731369, 41.489506>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.320343, 30.619282, 41.358471> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287798, 0.174192, -0.941716,
		0.320950, -0.943999, -0.076529,
		-0.902310, -0.280219, -0.327588,
		30.049650, 30.535217, 41.260193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.817705, 30.425493, 40.868069>,  <30.681267, 30.731369, 41.489506>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.817705, 30.425493, 40.868069> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.430984, 30.513456, 40.816010>,  <30.198952, 30.566235, 40.784775>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.430984, 30.513456, 40.816010>,  <30.817705, 30.425493, 40.868069>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.430984, 30.513456, 40.816010> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188946, 0.272287, -0.943482,
		-0.172042, -0.936750, -0.304798,
		-0.966799, 0.219909, -0.130150,
		30.140945, 30.579430, 40.776966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.722271, 30.292435, 40.265125>,  <30.817705, 30.425493, 40.868069>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.722271, 30.292435, 40.265125> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.406908, 30.530718, 40.326500>,  <30.217690, 30.673689, 40.363323>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.406908, 30.530718, 40.326500>,  <30.722271, 30.292435, 40.265125>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.406908, 30.530718, 40.326500> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201819, 0.486109, -0.850275,
		-0.581104, -0.639397, -0.503478,
		-0.788408, 0.595709, 0.153438,
		30.170385, 30.709431, 40.372532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.334507, 30.316036, 39.569557>,  <30.722271, 30.292435, 40.265125>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.334507, 30.316036, 39.569557> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.264093, 30.638025, 39.796196>,  <30.221846, 30.831219, 39.932178>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.264093, 30.638025, 39.796196>,  <30.334507, 30.316036, 39.569557>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.264093, 30.638025, 39.796196> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243656, 0.593305, -0.767217,
		-0.953752, 0.002997, -0.300579,
		-0.176036, 0.804972, 0.566596,
		30.211283, 30.879517, 39.966175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.957571, 30.754610, 39.109955>,  <30.334507, 30.316036, 39.569557>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.957571, 30.754610, 39.109955> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.123968, 30.997370, 39.380844>,  <30.223806, 31.143024, 39.543377>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.123968, 30.997370, 39.380844>,  <29.957571, 30.754610, 39.109955>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.123968, 30.997370, 39.380844> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274439, 0.626205, -0.729760,
		-0.866968, 0.489430, 0.093940,
		0.415992, 0.606898, 0.677219,
		30.248766, 31.179440, 39.584011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.871727, 31.454157, 38.928146>,  <29.957571, 30.754610, 39.109955>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.871727, 31.454157, 38.928146> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.194891, 31.469076, 39.163399>,  <30.388788, 31.478027, 39.304550>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.194891, 31.469076, 39.163399>,  <29.871727, 31.454157, 38.928146>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.194891, 31.469076, 39.163399> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427911, 0.649056, -0.628982,
		-0.405187, 0.759826, 0.508417,
		0.807908, 0.037298, 0.588127,
		30.437263, 31.480267, 39.339836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.155981, 32.115795, 38.821186>,  <29.871727, 31.454157, 38.928146>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.155981, 32.115795, 38.821186> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.468607, 31.938435, 38.996708>,  <30.656183, 31.832018, 39.102020>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.468607, 31.938435, 38.996708>,  <30.155981, 32.115795, 38.821186>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.468607, 31.938435, 38.996708> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.623011, 0.590708, -0.512758,
		-0.031851, 0.674137, 0.737919,
		0.781564, -0.443400, 0.438809,
		30.703075, 31.805414, 39.128349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.533506, 32.666393, 38.916252>,  <30.155981, 32.115795, 38.821186>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.533506, 32.666393, 38.916252> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.788673, 32.358643, 38.929649>,  <30.941772, 32.173992, 38.937687>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.788673, 32.358643, 38.929649>,  <30.533506, 32.666393, 38.916252>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.788673, 32.358643, 38.929649> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.701123, 0.562235, -0.438540,
		0.318574, 0.303232, 0.898087,
		0.637916, -0.769378, 0.033489,
		30.980047, 32.127831, 38.939697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.221500, 32.985882, 38.984657>,  <30.533506, 32.666393, 38.916252>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.221500, 32.985882, 38.984657> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.332474, 32.625854, 38.850254>,  <31.399057, 32.409836, 38.769611>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.332474, 32.625854, 38.850254>,  <31.221500, 32.985882, 38.984657>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.332474, 32.625854, 38.850254> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.835527, 0.398680, -0.378086,
		0.474264, -0.175849, 0.862642,
		0.277432, -0.900073, -0.336006,
		31.415703, 32.355831, 38.749451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.930765, 33.074715, 38.940418>,  <31.221500, 32.985882, 38.984657>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.930765, 33.074715, 38.940418> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.828663, 32.750870, 38.728996>,  <31.767401, 32.556561, 38.602142>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.828663, 32.750870, 38.728996>,  <31.930765, 33.074715, 38.940418>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.828663, 32.750870, 38.728996> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.804372, 0.125515, -0.580717,
		0.536498, -0.573384, 0.619193,
		-0.255255, -0.809615, -0.528552,
		31.752087, 32.507984, 38.570431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.555660, 33.008602, 39.260532>,  <31.930765, 33.074715, 38.940418>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.555660, 33.008602, 39.260532> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.535809, 33.398663, 39.346889>,  <32.523895, 33.632698, 39.398705>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.535809, 33.398663, 39.346889>,  <32.555660, 33.008602, 39.260532>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.535809, 33.398663, 39.346889> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161513, -0.221148, 0.961773,
		0.985622, 0.012867, 0.168477,
		-0.049633, 0.975155, 0.215890,
		32.520920, 33.691208, 39.411655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.805096, 33.079746, 39.915947>,  <32.555660, 33.008602, 39.260532>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.805096, 33.079746, 39.915947> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.604794, 33.423256, 39.872593>,  <32.484612, 33.629364, 39.846581>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.604794, 33.423256, 39.872593>,  <32.805096, 33.079746, 39.915947>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.604794, 33.423256, 39.872593> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181689, 0.018138, 0.983189,
		0.846305, 0.512030, 0.146948,
		-0.500756, 0.858776, -0.108380,
		32.454567, 33.680889, 39.840080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.142094, 33.496212, 40.424576>,  <32.805096, 33.079746, 39.915947>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.142094, 33.496212, 40.424576> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.772717, 33.634041, 40.357014>,  <32.551090, 33.716740, 40.316475>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.772717, 33.634041, 40.357014>,  <33.142094, 33.496212, 40.424576>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.772717, 33.634041, 40.357014> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250055, -0.206432, 0.945970,
		0.291087, 0.915782, 0.276789,
		-0.923440, 0.344572, -0.168906,
		32.495686, 33.737411, 40.306343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.922501, 34.016762, 41.015121>,  <33.142094, 33.496212, 40.424576>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.922501, 34.016762, 41.015121> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.587318, 33.895317, 40.833725>,  <32.386208, 33.822453, 40.724888>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.587318, 33.895317, 40.833725>,  <32.922501, 34.016762, 41.015121>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.587318, 33.895317, 40.833725> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344746, -0.349686, 0.871131,
		-0.423062, 0.886308, 0.188353,
		-0.837955, -0.303609, -0.453490,
		32.335934, 33.804234, 40.697678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.367115, 34.173790, 41.572800>,  <32.922501, 34.016762, 41.015121>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.367115, 34.173790, 41.572800> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.252403, 33.902409, 41.302258>,  <32.183575, 33.739578, 41.139931>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.252403, 33.902409, 41.302258>,  <32.367115, 34.173790, 41.572800>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.252403, 33.902409, 41.302258> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355110, -0.580428, 0.732803,
		-0.889749, 0.450334, -0.074471,
		-0.286781, -0.678456, -0.676354,
		32.166370, 33.698872, 41.099350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.686726, 34.007725, 41.723644>,  <32.367115, 34.173790, 41.572800>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.686726, 34.007725, 41.723644> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.820332, 33.693748, 41.514912>,  <31.900496, 33.505363, 41.389671>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.820332, 33.693748, 41.514912>,  <31.686726, 34.007725, 41.723644>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.820332, 33.693748, 41.514912> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296245, -0.612994, 0.732446,
		-0.894803, -0.090058, -0.437284,
		0.334015, -0.784938, -0.521830,
		31.920536, 33.458267, 41.358364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.192505, 33.505455, 41.826790>,  <31.686726, 34.007725, 41.723644>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.192505, 33.505455, 41.826790> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.518631, 33.293354, 41.733757>,  <31.714308, 33.166096, 41.677937>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.518631, 33.293354, 41.733757>,  <31.192505, 33.505455, 41.826790>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.518631, 33.293354, 41.733757> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303760, -0.733678, 0.607821,
		-0.492938, -0.424917, -0.759248,
		0.815317, -0.530248, -0.232586,
		31.763226, 33.134281, 41.663982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.948757, 32.771339, 41.889790>,  <31.192505, 33.505455, 41.826790>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.948757, 32.771339, 41.889790> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.346811, 32.744061, 41.861355>,  <31.585644, 32.727692, 41.844296>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.346811, 32.744061, 41.861355>,  <30.948757, 32.771339, 41.889790>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.346811, 32.744061, 41.861355> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006064, -0.677810, 0.735212,
		-0.098322, -0.732067, -0.674100,
		0.995136, -0.068200, -0.071083,
		31.645351, 32.723602, 41.840031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.995974, 32.065178, 41.843258>,  <30.948757, 32.771339, 41.889790>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.995974, 32.065178, 41.843258> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.334192, 32.234444, 41.973480>,  <31.537123, 32.336002, 42.051613>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.334192, 32.234444, 41.973480>,  <30.995974, 32.065178, 41.843258>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.334192, 32.234444, 41.973480> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081012, -0.704390, 0.705175,
		0.527723, -0.569883, -0.629875,
		0.845545, 0.423164, 0.325555,
		31.587856, 32.361393, 42.071148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.422983, 31.421700, 41.933647>,  <30.995974, 32.065178, 41.843258>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.422983, 31.421700, 41.933647> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.562702, 31.734671, 42.139870>,  <31.646534, 31.922453, 42.263603>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.562702, 31.734671, 42.139870>,  <31.422983, 31.421700, 41.933647>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.562702, 31.734671, 42.139870> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153080, -0.590470, 0.792409,
		0.924423, -0.197865, -0.326023,
		0.349297, 0.782429, 0.515555,
		31.667492, 31.969398, 42.294537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.926582, 31.153261, 42.343307>,  <31.422983, 31.421700, 41.933647>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.926582, 31.153261, 42.343307> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.838924, 31.497282, 42.527607>,  <31.786329, 31.703695, 42.638187>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.838924, 31.497282, 42.527607>,  <31.926582, 31.153261, 42.343307>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.838924, 31.497282, 42.527607> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188474, -0.426016, 0.884866,
		0.957316, 0.280751, -0.068739,
		-0.219144, 0.860052, 0.460746,
		31.773182, 31.755297, 42.665833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.442516, 31.281137, 42.850540>,  <31.926582, 31.153261, 42.343307>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.442516, 31.281137, 42.850540> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.144310, 31.515490, 42.977627>,  <31.965385, 31.656101, 43.053879>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.144310, 31.515490, 42.977627>,  <32.442516, 31.281137, 42.850540>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.144310, 31.515490, 42.977627> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022436, -0.498503, 0.866598,
		0.666107, 0.638936, 0.384788,
		-0.745518, 0.585880, 0.317721,
		31.920654, 31.691254, 43.072945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.693111, 31.520603, 43.457668>,  <32.442516, 31.281137, 42.850540>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.693111, 31.520603, 43.457668> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.296547, 31.563736, 43.487289>,  <32.058609, 31.589617, 43.505062>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.296547, 31.563736, 43.487289>,  <32.693111, 31.520603, 43.457668>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.296547, 31.563736, 43.487289> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006436, -0.605621, 0.795727,
		0.130654, 0.788413, 0.601111,
		-0.991407, 0.107833, 0.074052,
		31.999125, 31.596087, 43.509506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.554943, 31.674782, 44.112488>,  <32.693111, 31.520603, 43.457668>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.554943, 31.674782, 44.112488> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.200951, 31.560951, 43.965073>,  <31.988554, 31.492653, 43.876625>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.200951, 31.560951, 43.965073>,  <32.554943, 31.674782, 44.112488>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.200951, 31.560951, 43.965073> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230066, -0.420868, 0.877462,
		-0.404808, 0.861329, 0.306991,
		-0.884986, -0.284575, -0.368533,
		31.935455, 31.475578, 43.854511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.729126, 31.984070, 44.785030>,  <32.554943, 31.674782, 44.112488>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.729126, 31.984070, 44.785030> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.102398, 31.911343, 44.909042>,  <33.326363, 31.867706, 44.983448>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.102398, 31.911343, 44.909042>,  <32.729126, 31.984070, 44.785030>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.102398, 31.911343, 44.909042> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354977, 0.601294, -0.715847,
		-0.056263, 0.778066, 0.625657,
		0.933180, -0.181818, 0.310026,
		33.382351, 31.856796, 45.002048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.109573, 32.674755, 45.080502>,  <32.729126, 31.984070, 44.785030>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.109573, 32.674755, 45.080502> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.376289, 32.405697, 44.952171>,  <33.536320, 32.244263, 44.875172>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.376289, 32.405697, 44.952171>,  <33.109573, 32.674755, 45.080502>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.376289, 32.405697, 44.952171> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345362, 0.660389, -0.666792,
		0.660389, 0.333810, 0.672650,
		0.666792, -0.672650, -0.320829,
		33.576328, 32.203903, 44.855923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.731770, 33.121578, 44.964336>,  <33.109573, 32.674755, 45.080502>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.731770, 33.121578, 44.964336> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.773109, 32.784683, 44.752693>,  <33.797913, 32.582546, 44.625710>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.773109, 32.784683, 44.752693>,  <33.731770, 33.121578, 44.964336>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.773109, 32.784683, 44.752693> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447882, 0.514375, -0.731314,
		0.888100, -0.161398, 0.430383,
		0.103346, -0.842241, -0.529103,
		33.804111, 32.532013, 44.593964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.409019, 33.195992, 44.665325>,  <33.731770, 33.121578, 44.964336>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.409019, 33.195992, 44.665325> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.192612, 32.937069, 44.450554>,  <34.062767, 32.781715, 44.321690>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.192612, 32.937069, 44.450554>,  <34.409019, 33.195992, 44.665325>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.192612, 32.937069, 44.450554> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381898, 0.379728, -0.842592,
		0.749299, -0.660913, 0.041762,
		-0.541022, -0.647302, -0.536931,
		34.030304, 32.742878, 44.289474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.756153, 33.208302, 44.129017>,  <34.409019, 33.195992, 44.665325>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.756153, 33.208302, 44.129017> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.443680, 33.010250, 43.976910>,  <34.256195, 32.891418, 43.885643>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.443680, 33.010250, 43.976910>,  <34.756153, 33.208302, 44.129017>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.443680, 33.010250, 43.976910> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290427, 0.250977, -0.923397,
		0.552637, -0.831782, -0.052260,
		-0.781181, -0.495126, -0.380271,
		34.209324, 32.861713, 43.862827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.994144, 32.715477, 43.592373>,  <34.756153, 33.208302, 44.129017>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.994144, 32.715477, 43.592373> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.607590, 32.775906, 43.509171>,  <34.375656, 32.812164, 43.459251>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.607590, 32.775906, 43.509171>,  <34.994144, 32.715477, 43.592373>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.607590, 32.775906, 43.509171> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244630, 0.291698, -0.924699,
		-0.079026, -0.944504, -0.318852,
		-0.966391, 0.151076, -0.208002,
		34.317673, 32.821228, 43.446770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.904404, 32.386707, 42.946251>,  <34.994144, 32.715477, 43.592373>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.904404, 32.386707, 42.946251> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.589977, 32.631126, 42.983601>,  <34.401321, 32.777779, 43.006012>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.589977, 32.631126, 42.983601>,  <34.904404, 32.386707, 42.946251>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.589977, 32.631126, 42.983601> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162180, 0.349641, -0.922740,
		-0.596488, -0.710190, -0.373941,
		-0.786065, 0.611049, 0.093378,
		34.354156, 32.814442, 43.011616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.438019, 32.399784, 42.345299>,  <34.904404, 32.386707, 42.946251>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.438019, 32.399784, 42.345299> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.390415, 32.763691, 42.504379>,  <34.361851, 32.982033, 42.599827>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.390415, 32.763691, 42.504379>,  <34.438019, 32.399784, 42.345299>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.390415, 32.763691, 42.504379> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257569, 0.415125, -0.872542,
		-0.958903, -0.001406, -0.283731,
		-0.119011, 0.909764, 0.397703,
		34.354713, 33.036621, 42.623692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.203556, 32.712578, 41.807747>,  <34.438019, 32.399784, 42.345299>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.203556, 32.712578, 41.807747> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.273026, 33.028336, 42.043270>,  <34.314709, 33.217793, 42.184582>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.273026, 33.028336, 42.043270>,  <34.203556, 32.712578, 41.807747>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.273026, 33.028336, 42.043270> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105352, 0.579566, -0.808087,
		-0.979151, 0.202377, 0.017492,
		0.173676, 0.789397, 0.588804,
		34.325127, 33.265156, 42.219910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.708611, 33.355350, 41.634285>,  <34.203556, 32.712578, 41.807747>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.708611, 33.355350, 41.634285> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.044136, 33.476257, 41.815403>,  <34.245453, 33.548801, 41.924072>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.044136, 33.476257, 41.815403>,  <33.708611, 33.355350, 41.634285>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.044136, 33.476257, 41.815403> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263372, 0.502603, -0.823423,
		-0.476469, 0.809954, 0.341982,
		0.838816, 0.302267, 0.452794,
		34.295780, 33.566936, 41.951241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.828873, 34.071045, 41.380325>,  <33.708611, 33.355350, 41.634285>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.828873, 34.071045, 41.380325> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.171928, 33.937485, 41.536770>,  <34.377762, 33.857349, 41.630634>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.171928, 33.937485, 41.536770>,  <33.828873, 34.071045, 41.380325>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.171928, 33.937485, 41.536770> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505019, 0.403400, -0.763036,
		0.097003, 0.851927, 0.514597,
		0.857640, -0.333898, 0.391109,
		34.429222, 33.837315, 41.654102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.238869, 34.678738, 41.300404>,  <33.828873, 34.071045, 41.380325>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.238869, 34.678738, 41.300404> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.510536, 34.395054, 41.376038>,  <34.673534, 34.224842, 41.421417>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.510536, 34.395054, 41.376038>,  <34.238869, 34.678738, 41.300404>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.510536, 34.395054, 41.376038> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.657519, 0.473385, -0.586153,
		0.326194, 0.522424, 0.787826,
		0.679166, -0.709210, 0.189088,
		34.714287, 34.182289, 41.432762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.940075, 35.008961, 41.656620>,  <34.238869, 34.678738, 41.300404>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.940075, 35.008961, 41.656620> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.999607, 34.667656, 41.456703>,  <35.035328, 34.462872, 41.336754>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.999607, 34.667656, 41.456703>,  <34.940075, 35.008961, 41.656620>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.999607, 34.667656, 41.456703> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.687660, 0.452510, -0.567765,
		0.710614, -0.259184, 0.654104,
		0.148833, -0.853263, -0.499791,
		35.044258, 34.411678, 41.306767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.629604, 35.073784, 41.563606>,  <34.940075, 35.008961, 41.656620>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.629604, 35.073784, 41.563606> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.509125, 34.792755, 41.305717>,  <35.436836, 34.624138, 41.150986>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.509125, 34.792755, 41.305717>,  <35.629604, 35.073784, 41.563606>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.509125, 34.792755, 41.305717> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.703795, 0.292399, -0.647437,
		0.643389, -0.648760, 0.406399,
		-0.301201, -0.702576, -0.644721,
		35.418766, 34.581982, 41.112301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<25.797285, 37.125443, 26.858713> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.400566, 37.171715, 26.880466>,  <25.162535, 37.199478, 26.893518>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.400566, 37.171715, 26.880466>,  <25.797285, 37.125443, 26.858713>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.400566, 37.171715, 26.880466> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099678, 0.433566, 0.895592,
		0.080026, 0.893666, -0.441540,
		-0.991796, 0.115683, 0.054382,
		25.103027, 37.206421, 26.896782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.727968, 37.842632, 26.977118>,  <25.797285, 37.125443, 26.858713>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.727968, 37.842632, 26.977118> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.404802, 37.639454, 27.096624>,  <25.210903, 37.517548, 27.168327>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.404802, 37.639454, 27.096624>,  <25.727968, 37.842632, 26.977118>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.404802, 37.639454, 27.096624> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120617, 0.353714, 0.927544,
		-0.576824, 0.785412, -0.224503,
		-0.807914, -0.507951, 0.298765,
		25.162428, 37.487068, 27.186255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.223829, 38.308517, 27.365137>,  <25.727968, 37.842632, 26.977118>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.223829, 38.308517, 27.365137> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.075018, 37.959461, 27.491690>,  <24.985731, 37.750027, 27.567621>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.075018, 37.959461, 27.491690>,  <25.223829, 38.308517, 27.365137>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.075018, 37.959461, 27.491690> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046392, 0.357902, 0.932606,
		-0.927061, 0.332278, -0.173633,
		-0.372028, -0.872638, 0.316382,
		24.963409, 37.697670, 27.586605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.548925, 38.460251, 27.715374>,  <25.223829, 38.308517, 27.365137>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.548925, 38.460251, 27.715374> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.698694, 38.108658, 27.833487>,  <24.788555, 37.897701, 27.904354>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.698694, 38.108658, 27.833487>,  <24.548925, 38.460251, 27.715374>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.698694, 38.108658, 27.833487> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073224, 0.289423, 0.954396,
		-0.924363, -0.378968, 0.044004,
		0.374421, -0.878987, 0.295281,
		24.811020, 37.844963, 27.922071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.227493, 38.327942, 28.367004>,  <24.548925, 38.460251, 27.715374>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.227493, 38.327942, 28.367004> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.511536, 38.048351, 28.400908>,  <24.681961, 37.880596, 28.421249>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.511536, 38.048351, 28.400908>,  <24.227493, 38.327942, 28.367004>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.511536, 38.048351, 28.400908> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010256, 0.110100, 0.993868,
		-0.704018, -0.706622, 0.071015,
		0.710108, -0.698973, 0.084760,
		24.724567, 37.838661, 28.426336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.015440, 37.891335, 28.921848>,  <24.227493, 38.327942, 28.367004>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.015440, 37.891335, 28.921848> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.414131, 37.893753, 28.889612>,  <24.653347, 37.895203, 28.870270>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.414131, 37.893753, 28.889612>,  <24.015440, 37.891335, 28.921848>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.414131, 37.893753, 28.889612> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079650, 0.095314, 0.992256,
		0.013679, -0.995429, 0.094521,
		0.996729, 0.006044, -0.080590,
		24.713150, 37.895569, 28.865435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.155241, 37.419540, 29.414011>,  <24.015440, 37.891335, 28.921848>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.155241, 37.419540, 29.414011> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.493155, 37.620758, 29.341026>,  <24.695902, 37.741489, 29.297235>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.493155, 37.620758, 29.341026>,  <24.155241, 37.419540, 29.414011>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.493155, 37.620758, 29.341026> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178388, 0.056728, 0.982323,
		0.504502, -0.862398, -0.041814,
		0.844781, 0.503043, -0.182461,
		24.746590, 37.771671, 29.286287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.610697, 37.099377, 29.885712>,  <24.155241, 37.419540, 29.414011>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.610697, 37.099377, 29.885712> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.785959, 37.443764, 29.782370>,  <24.891117, 37.650398, 29.720364>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.785959, 37.443764, 29.782370>,  <24.610697, 37.099377, 29.885712>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.785959, 37.443764, 29.782370> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145603, 0.215640, 0.965557,
		0.887028, -0.460682, -0.030875,
		0.438156, 0.860971, -0.258356,
		24.917406, 37.702057, 29.704863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.378300, 37.044399, 30.051619>,  <24.610697, 37.099377, 29.885712>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.378300, 37.044399, 30.051619> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.315802, 37.438477, 30.023390>,  <25.278303, 37.674923, 30.006453>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.315802, 37.438477, 30.023390>,  <25.378300, 37.044399, 30.051619>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.315802, 37.438477, 30.023390> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275012, 0.112019, 0.954893,
		0.948660, 0.129789, -0.288442,
		-0.156246, 0.985194, -0.070574,
		25.268929, 37.734035, 30.002218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.010246, 37.331146, 30.261272>,  <25.378300, 37.044399, 30.051619>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.010246, 37.331146, 30.261272> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.722523, 37.608391, 30.280006>,  <25.549889, 37.774738, 30.291246>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.722523, 37.608391, 30.280006>,  <26.010246, 37.331146, 30.261272>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.722523, 37.608391, 30.280006> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286067, 0.234096, 0.929174,
		0.633057, 0.681760, -0.366663,
		-0.719308, 0.693111, 0.046833,
		25.506731, 37.816322, 30.294056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.400183, 37.876751, 30.441305>,  <26.010246, 37.331146, 30.261272>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.400183, 37.876751, 30.441305> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.016851, 37.940132, 30.536385>,  <25.786852, 37.978161, 30.593431>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.016851, 37.940132, 30.536385>,  <26.400183, 37.876751, 30.441305>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.016851, 37.940132, 30.536385> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261441, 0.151111, 0.953318,
		0.115137, 0.975735, -0.186240,
		-0.958328, 0.158453, 0.237698,
		25.729353, 37.987667, 30.607695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.475807, 38.519318, 30.792002>,  <26.400183, 37.876751, 30.441305>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.475807, 38.519318, 30.792002> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.140360, 38.328609, 30.897387>,  <25.939091, 38.214184, 30.960617>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.140360, 38.328609, 30.897387>,  <26.475807, 38.519318, 30.792002>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.140360, 38.328609, 30.897387> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287314, 0.023759, 0.957542,
		-0.462785, 0.878708, 0.117057,
		-0.838619, -0.476768, 0.263460,
		25.888775, 38.185577, 30.976425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.233650, 38.905937, 31.433971>,  <26.475807, 38.519318, 30.792002>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.233650, 38.905937, 31.433971> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.064285, 38.543732, 31.445007>,  <25.962667, 38.326408, 31.451630>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.064285, 38.543732, 31.445007>,  <26.233650, 38.905937, 31.433971>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.064285, 38.543732, 31.445007> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094320, -0.013771, 0.995447,
		-0.901014, 0.424086, 0.091239,
		-0.423411, -0.905517, 0.027592,
		25.937262, 38.272076, 31.453285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.828964, 38.939789, 32.005039>,  <26.233650, 38.905937, 31.433971>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.828964, 38.939789, 32.005039> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.864309, 38.544910, 31.951927>,  <25.885517, 38.307983, 31.920059>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.864309, 38.544910, 31.951927>,  <25.828964, 38.939789, 32.005039>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.864309, 38.544910, 31.951927> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102129, -0.141581, 0.984645,
		-0.990839, -0.073446, -0.113332,
		0.088364, -0.987199, -0.132783,
		25.890818, 38.248753, 31.912092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.249447, 38.696804, 32.326805>,  <25.828964, 38.939789, 32.005039>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.249447, 38.696804, 32.326805> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.498615, 38.384659, 32.304871>,  <25.648117, 38.197372, 32.291710>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.498615, 38.384659, 32.304871>,  <25.249447, 38.696804, 32.326805>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.498615, 38.384659, 32.304871> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208911, -0.233493, 0.949651,
		-0.753874, -0.580102, -0.308474,
		0.622921, -0.780361, -0.054835,
		25.685492, 38.150551, 32.288422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.940073, 38.212200, 32.651989>,  <25.249447, 38.696804, 32.326805>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.940073, 38.212200, 32.651989> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.321091, 38.090965, 32.663315>,  <25.549702, 38.018227, 32.670109>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.321091, 38.090965, 32.663315>,  <24.940073, 38.212200, 32.651989>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.321091, 38.090965, 32.663315> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144106, -0.367046, 0.918973,
		-0.268131, -0.879442, -0.393304,
		0.952544, -0.303083, 0.028316,
		25.606853, 38.000038, 32.671810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.862200, 37.493355, 32.880070>,  <24.940073, 38.212200, 32.651989>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.862200, 37.493355, 32.880070> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.244963, 37.591003, 32.942978>,  <25.474621, 37.649593, 32.980724>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.244963, 37.591003, 32.942978>,  <24.862200, 37.493355, 32.880070>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.244963, 37.591003, 32.942978> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004349, -0.529474, 0.848315,
		0.290361, -0.812443, -0.505596,
		0.956907, 0.244119, 0.157272,
		25.532036, 37.664238, 32.990158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.212910, 36.856533, 32.989803>,  <24.862200, 37.493355, 32.880070>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.212910, 36.856533, 32.989803> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.446495, 37.139332, 33.149372>,  <25.586647, 37.309013, 33.245113>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.446495, 37.139332, 33.149372>,  <25.212910, 36.856533, 32.989803>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.446495, 37.139332, 33.149372> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072936, -0.535126, 0.841618,
		0.808497, -0.462378, -0.364060,
		0.583963, 0.706999, 0.398924,
		25.621683, 37.351433, 33.269051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.633627, 36.456940, 33.340286>,  <25.212910, 36.856533, 32.989803>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.633627, 36.456940, 33.340286> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.703125, 36.820721, 33.491390>,  <25.744823, 37.038990, 33.582054>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.703125, 36.820721, 33.491390>,  <25.633627, 36.456940, 33.340286>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.703125, 36.820721, 33.491390> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220911, -0.409816, 0.885014,
		0.959693, -0.070315, -0.272112,
		0.173745, 0.909454, 0.377764,
		25.755249, 37.093555, 33.604721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.193304, 36.405312, 33.706875>,  <25.633627, 36.456940, 33.340286>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.193304, 36.405312, 33.706875> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.012188, 36.709335, 33.893330>,  <25.903519, 36.891750, 34.005203>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.012188, 36.709335, 33.893330>,  <26.193304, 36.405312, 33.706875>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.012188, 36.709335, 33.893330> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161495, -0.444242, 0.881231,
		0.876870, 0.474292, 0.078402,
		-0.452790, 0.760063, 0.466138,
		25.876350, 36.937355, 34.033173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.592663, 36.612621, 34.213940>,  <26.193304, 36.405312, 33.706875>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.592663, 36.612621, 34.213940> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.226135, 36.730820, 34.322044>,  <26.006218, 36.801739, 34.386909>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.226135, 36.730820, 34.322044>,  <26.592663, 36.612621, 34.213940>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.226135, 36.730820, 34.322044> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162933, -0.341405, 0.925686,
		0.365803, 0.892259, 0.264691,
		-0.916319, 0.295493, 0.270266,
		25.951239, 36.819466, 34.403126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.262091, 36.342266, 33.908161>,  <26.592663, 36.612621, 34.213940>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.262091, 36.342266, 33.908161> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.569603, 36.476387, 33.690338>,  <27.754110, 36.556858, 33.559643>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.569603, 36.476387, 33.690338>,  <27.262091, 36.342266, 33.908161>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.569603, 36.476387, 33.690338> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449057, -0.323239, -0.832985,
		-0.455325, 0.884923, -0.097931,
		0.768782, 0.335303, -0.544560,
		27.800238, 36.576977, 33.526970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.957098, 36.695187, 33.352634>,  <27.262091, 36.342266, 33.908161>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.957098, 36.695187, 33.352634> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.312513, 36.551239, 33.238796>,  <27.525763, 36.464870, 33.170494>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.312513, 36.551239, 33.238796>,  <26.957098, 36.695187, 33.352634>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.312513, 36.551239, 33.238796> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408379, -0.337626, -0.848077,
		0.209109, 0.869772, -0.446956,
		0.888538, -0.359869, -0.284596,
		27.579075, 36.443279, 33.153416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.923992, 36.872032, 32.668774>,  <26.957098, 36.695187, 33.352634>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.923992, 36.872032, 32.668774> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.210835, 36.594238, 32.692261>,  <27.382940, 36.427563, 32.706352>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.210835, 36.594238, 32.692261>,  <26.923992, 36.872032, 32.668774>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.210835, 36.594238, 32.692261> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428113, -0.505393, -0.749198,
		0.549983, 0.512117, -0.659739,
		0.717104, -0.694489, 0.058714,
		27.425966, 36.385891, 32.709873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.221661, 36.921974, 32.050846>,  <26.923992, 36.872032, 32.668774>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.221661, 36.921974, 32.050846> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.318485, 36.553974, 32.174133>,  <27.376579, 36.333172, 32.248108>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.318485, 36.553974, 32.174133>,  <27.221661, 36.921974, 32.050846>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.318485, 36.553974, 32.174133> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424713, -0.386087, -0.818875,
		0.872368, 0.067311, -0.484193,
		0.242060, -0.920003, 0.308222,
		27.391104, 36.277973, 32.266602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.529848, 36.561592, 31.485924>,  <27.221661, 36.921974, 32.050846>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.529848, 36.561592, 31.485924> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.407078, 36.271744, 31.732735>,  <27.333416, 36.097836, 31.880821>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.407078, 36.271744, 31.732735>,  <27.529848, 36.561592, 31.485924>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.407078, 36.271744, 31.732735> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365910, -0.508646, -0.779352,
		0.878582, -0.464981, -0.109028,
		-0.306927, -0.724619, 0.617028,
		27.315001, 36.054359, 31.917843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.704449, 35.901752, 31.023361>,  <27.529848, 36.561592, 31.485924>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.704449, 35.901752, 31.023361> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.444803, 35.797249, 31.309130>,  <27.289017, 35.734547, 31.480591>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.444803, 35.797249, 31.309130>,  <27.704449, 35.901752, 31.023361>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.444803, 35.797249, 31.309130> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429644, -0.649106, -0.627747,
		0.627742, -0.714424, 0.309092,
		-0.649112, -0.261263, 0.714419,
		27.250069, 35.718868, 31.523455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.765858, 35.112640, 31.183336>,  <27.704449, 35.901752, 31.023361>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.765858, 35.112640, 31.183336> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.398050, 35.247955, 31.263380>,  <27.177366, 35.329144, 31.311407>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.398050, 35.247955, 31.263380>,  <27.765858, 35.112640, 31.183336>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.398050, 35.247955, 31.263380> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386543, -0.686126, -0.616292,
		-0.071182, -0.644044, 0.761670,
		-0.919520, 0.338287, 0.200111,
		27.122194, 35.349442, 31.323414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.357481, 34.483906, 31.227575>,  <27.765858, 35.112640, 31.183336>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.357481, 34.483906, 31.227575> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.087402, 34.776028, 31.186064>,  <26.925356, 34.951302, 31.161156>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.087402, 34.776028, 31.186064>,  <27.357481, 34.483906, 31.227575>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.087402, 34.776028, 31.186064> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.563240, -0.601282, -0.566763,
		-0.476308, -0.324224, 0.817318,
		-0.675197, 0.730300, -0.103780,
		26.884844, 34.995117, 31.154930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.701761, 34.106121, 31.299135>,  <27.357481, 34.483906, 31.227575>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.701761, 34.106121, 31.299135> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.644064, 34.463741, 31.129488>,  <26.609446, 34.678314, 31.027700>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.644064, 34.463741, 31.129488>,  <26.701761, 34.106121, 31.299135>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.644064, 34.463741, 31.129488> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.637621, -0.411732, -0.651089,
		-0.756726, 0.176512, 0.629451,
		-0.144241, 0.894047, -0.424116,
		26.600792, 34.731956, 31.002253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.965286, 34.011948, 30.920677>,  <26.701761, 34.106121, 31.299135>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.965286, 34.011948, 30.920677> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.092598, 34.360573, 30.771503>,  <26.168985, 34.569748, 30.681999>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.092598, 34.360573, 30.771503>,  <25.965286, 34.011948, 30.920677>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.092598, 34.360573, 30.771503> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.637494, -0.094386, -0.764652,
		-0.701641, 0.481114, 0.525575,
		0.318278, 0.871562, -0.372933,
		26.188082, 34.622040, 30.659624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.344482, 34.360332, 30.727842>,  <25.965286, 34.011948, 30.920677>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.344482, 34.360332, 30.727842> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.642429, 34.546188, 30.536310>,  <25.821198, 34.657703, 30.421391>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.642429, 34.546188, 30.536310>,  <25.344482, 34.360332, 30.727842>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.642429, 34.546188, 30.536310> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.535031, -0.012825, -0.844735,
		-0.398641, 0.885405, 0.239045,
		0.744867, 0.464643, -0.478831,
		25.865891, 34.685581, 30.392660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.024025, 34.933224, 30.273495>,  <25.344482, 34.360332, 30.727842>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.024025, 34.933224, 30.273495> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.385054, 34.827171, 30.137808>,  <25.601671, 34.763542, 30.056396>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.385054, 34.827171, 30.137808>,  <25.024025, 34.933224, 30.273495>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.385054, 34.827171, 30.137808> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399795, -0.223755, -0.888874,
		0.159764, 0.937892, -0.307952,
		0.902574, -0.265128, -0.339216,
		25.655827, 34.747635, 30.036043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.144989, 35.355576, 29.584799>,  <25.024025, 34.933224, 30.273495>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.144989, 35.355576, 29.584799> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.357264, 35.016579, 29.589270>,  <25.484627, 34.813179, 29.591951>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.357264, 35.016579, 29.589270>,  <25.144989, 35.355576, 29.584799>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.357264, 35.016579, 29.589270> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356690, -0.235275, -0.904112,
		0.768861, 0.475811, -0.427150,
		0.530684, -0.847496, 0.011177,
		25.516468, 34.762329, 29.592623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.275002, 35.283772, 28.981609>,  <25.144989, 35.355576, 29.584799>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.275002, 35.283772, 28.981609> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.437048, 34.943718, 29.116159>,  <25.534277, 34.739685, 29.196890>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.437048, 34.943718, 29.116159>,  <25.275002, 35.283772, 28.981609>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.437048, 34.943718, 29.116159> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065946, -0.394131, -0.916685,
		0.911883, 0.349183, -0.215732,
		0.405118, -0.850136, 0.336374,
		25.558584, 34.688679, 29.217072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.977676, 35.202541, 28.632584>,  <25.275002, 35.283772, 28.981609>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.977676, 35.202541, 28.632584> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.799959, 34.855484, 28.721849>,  <25.693329, 34.647251, 28.775408>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.799959, 34.855484, 28.721849>,  <25.977676, 35.202541, 28.632584>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.799959, 34.855484, 28.721849> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141861, -0.177820, -0.973784,
		0.884579, -0.464302, -0.044081,
		-0.444292, -0.867643, 0.223163,
		25.666672, 34.595192, 28.788797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.378124, 34.779766, 28.225506>,  <25.977676, 35.202541, 28.632584>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.378124, 34.779766, 28.225506> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.030249, 34.608658, 28.324020>,  <25.821524, 34.505993, 28.383129>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.030249, 34.608658, 28.324020>,  <26.378124, 34.779766, 28.225506>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.030249, 34.608658, 28.324020> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122180, -0.296869, -0.947070,
		0.478239, -0.853747, 0.205919,
		-0.869689, -0.427767, 0.246285,
		25.769342, 34.480328, 28.397905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.359955, 34.052818, 27.889351>,  <26.378124, 34.779766, 28.225506>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.359955, 34.052818, 27.889351> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.002354, 34.217140, 27.960911>,  <25.787794, 34.315731, 28.003847>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.002354, 34.217140, 27.960911>,  <26.359955, 34.052818, 27.889351>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.002354, 34.217140, 27.960911> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234695, -0.089212, -0.967967,
		-0.381682, -0.907350, 0.176169,
		-0.894000, 0.410801, 0.178900,
		25.734154, 34.340382, 28.014582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.929844, 33.684383, 27.495890>,  <26.359955, 34.052818, 27.889351>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.929844, 33.684383, 27.495890> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.664274, 33.962833, 27.605158>,  <25.504932, 34.129902, 27.670719>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.664274, 33.962833, 27.605158>,  <25.929844, 33.684383, 27.495890>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.664274, 33.962833, 27.605158> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303970, 0.082536, -0.949100,
		-0.683235, -0.713164, 0.156802,
		-0.663922, 0.696121, 0.273172,
		25.465097, 34.171669, 27.687109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.253187, 33.551159, 27.184507>,  <25.929844, 33.684383, 27.495890>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.253187, 33.551159, 27.184507> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.217972, 33.942459, 27.259626>,  <25.196842, 34.177238, 27.304697>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.217972, 33.942459, 27.259626>,  <25.253187, 33.551159, 27.184507>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.217972, 33.942459, 27.259626> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220629, 0.164698, -0.961352,
		-0.971377, -0.126068, 0.201332,
		-0.088036, 0.978254, 0.187798,
		25.191561, 34.235935, 27.315966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.590570, 33.873814, 26.863628>,  <25.253187, 33.551159, 27.184507>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.590570, 33.873814, 26.863628> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.837196, 34.183891, 26.918646>,  <24.985172, 34.369938, 26.951656>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.837196, 34.183891, 26.918646>,  <24.590570, 33.873814, 26.863628>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.837196, 34.183891, 26.918646> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215774, 0.334395, -0.917399,
		-0.757158, 0.535959, 0.373443,
		0.616566, 0.775196, 0.137544,
		25.022165, 34.416451, 26.959909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.257137, 34.420708, 26.688627>,  <24.590570, 33.873814, 26.863628>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.257137, 34.420708, 26.688627> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.608850, 34.603218, 26.633972>,  <24.819878, 34.712727, 26.601179>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.608850, 34.603218, 26.633972>,  <24.257137, 34.420708, 26.688627>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.608850, 34.603218, 26.633972> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376149, 0.489227, -0.786873,
		-0.292186, 0.743281, 0.601798,
		0.879283, 0.456279, -0.136639,
		24.872635, 34.740101, 26.592981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<36.380730, 29.683884, 45.415859> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.991032, 29.608698, 45.366047>,  <35.757214, 29.563587, 45.336159>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.991032, 29.608698, 45.366047>,  <36.380730, 29.683884, 45.415859>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.991032, 29.608698, 45.366047> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056213, -0.332391, 0.941465,
		-0.218355, 0.924222, 0.313266,
		-0.974249, -0.187964, -0.124532,
		35.698757, 29.552309, 45.328686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.023746, 29.791258, 46.089119>,  <36.380730, 29.683884, 45.415859>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.023746, 29.791258, 46.089119> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.759975, 29.577583, 45.877533>,  <35.601711, 29.449379, 45.750584>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.759975, 29.577583, 45.877533>,  <36.023746, 29.791258, 46.089119>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.759975, 29.577583, 45.877533> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424242, -0.316453, 0.848455,
		-0.620624, 0.783902, -0.017946,
		-0.659427, -0.534185, -0.528963,
		35.562149, 29.417328, 45.718845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.372551, 29.869322, 46.374527>,  <36.023746, 29.791258, 46.089119>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.372551, 29.869322, 46.374527> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.314152, 29.530603, 46.169933>,  <35.279114, 29.327372, 46.047176>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.314152, 29.530603, 46.169933>,  <35.372551, 29.869322, 46.374527>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.314152, 29.530603, 46.169933> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407945, -0.419490, 0.810931,
		-0.901258, 0.327049, -0.284204,
		-0.145993, -0.846798, -0.511487,
		35.270355, 29.276564, 46.016487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.696209, 29.694889, 46.495781>,  <35.372551, 29.869322, 46.374527>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.696209, 29.694889, 46.495781> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.907055, 29.372875, 46.386921>,  <35.033562, 29.179667, 46.321606>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.907055, 29.372875, 46.386921>,  <34.696209, 29.694889, 46.495781>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.907055, 29.372875, 46.386921> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193616, -0.425601, 0.883955,
		-0.827441, -0.413258, -0.380210,
		0.527119, -0.805036, -0.272147,
		35.065189, 29.131365, 46.305279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.244576, 29.275692, 46.617298>,  <34.696209, 29.694889, 46.495781>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.244576, 29.275692, 46.617298> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.585876, 29.067286, 46.608273>,  <34.790657, 28.942242, 46.602856>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.585876, 29.067286, 46.608273>,  <34.244576, 29.275692, 46.617298>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.585876, 29.067286, 46.608273> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314593, -0.548741, 0.774541,
		-0.415929, -0.653778, -0.632121,
		0.853249, -0.521015, -0.022564,
		34.841850, 28.910980, 46.601505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.038406, 28.559940, 46.532936>,  <34.244576, 29.275692, 46.617298>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.038406, 28.559940, 46.532936> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.404984, 28.541571, 46.691948>,  <34.624928, 28.530548, 46.787354>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.404984, 28.541571, 46.691948>,  <34.038406, 28.559940, 46.532936>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.404984, 28.541571, 46.691948> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355299, -0.550439, 0.755499,
		0.184119, -0.833611, -0.520762,
		0.916440, -0.045925, 0.397528,
		34.679916, 28.527794, 46.811207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.219353, 27.765553, 46.782803>,  <34.038406, 28.559940, 46.532936>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.219353, 27.765553, 46.782803> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.485325, 27.991385, 46.978405>,  <34.644909, 28.126883, 47.095764>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.485325, 27.991385, 46.978405>,  <34.219353, 27.765553, 46.782803>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.485325, 27.991385, 46.978405> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284781, -0.413612, 0.864769,
		0.690487, -0.714267, -0.114240,
		0.664927, 0.564578, 0.489003,
		34.684803, 28.160757, 47.125107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.778999, 27.284544, 47.214722>,  <34.219353, 27.765553, 46.782803>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.778999, 27.284544, 47.214722> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.729961, 27.649014, 47.372066>,  <34.700539, 27.867695, 47.466473>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.729961, 27.649014, 47.372066>,  <34.778999, 27.284544, 47.214722>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.729961, 27.649014, 47.372066> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157891, -0.409213, 0.898674,
		0.979817, 0.048062, 0.194033,
		-0.122593, 0.911172, 0.393365,
		34.693184, 27.922365, 47.490074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.171890, 27.268948, 47.822498>,  <34.778999, 27.284544, 47.214722>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.171890, 27.268948, 47.822498> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.934113, 27.586336, 47.874722>,  <34.791447, 27.776770, 47.906055>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.934113, 27.586336, 47.874722>,  <35.171890, 27.268948, 47.822498>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.934113, 27.586336, 47.874722> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113641, -0.243617, 0.963191,
		0.796068, 0.557725, 0.234987,
		-0.594442, 0.793469, 0.130555,
		34.755779, 27.824377, 47.913887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.242378, 27.397135, 48.536774>,  <35.171890, 27.268948, 47.822498>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.242378, 27.397135, 48.536774> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.933323, 27.617691, 48.410912>,  <34.747890, 27.750025, 48.335396>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.933323, 27.617691, 48.410912>,  <35.242378, 27.397135, 48.536774>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.933323, 27.617691, 48.410912> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524109, -0.274305, 0.806267,
		0.358255, 0.787863, 0.500925,
		-0.772634, 0.551389, -0.314655,
		34.701534, 27.783108, 48.316513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.135704, 27.882944, 49.078243>,  <35.242378, 27.397135, 48.536774>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.135704, 27.882944, 49.078243> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.798569, 27.832066, 48.869076>,  <34.596287, 27.801538, 48.743576>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.798569, 27.832066, 48.869076>,  <35.135704, 27.882944, 49.078243>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.798569, 27.832066, 48.869076> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485226, -0.240641, 0.840623,
		-0.232760, 0.962244, 0.141102,
		-0.842839, -0.127197, -0.522918,
		34.545715, 27.793907, 48.712200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.675499, 28.148582, 49.577450>,  <35.135704, 27.882944, 49.078243>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.675499, 28.148582, 49.577450> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.440479, 27.951899, 49.320389>,  <34.299469, 27.833887, 49.166153>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.440479, 27.951899, 49.320389>,  <34.675499, 28.148582, 49.577450>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.440479, 27.951899, 49.320389> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.665023, -0.159050, 0.729690,
		-0.461011, 0.856110, -0.233549,
		-0.587549, -0.491711, -0.642656,
		34.264214, 27.804386, 49.127590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.032997, 28.303116, 49.826668>,  <34.675499, 28.148582, 49.577450>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.032997, 28.303116, 49.826668> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.986286, 27.993423, 49.577854>,  <33.958260, 27.807608, 49.428566>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.986286, 27.993423, 49.577854>,  <34.032997, 28.303116, 49.826668>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.986286, 27.993423, 49.577854> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.667930, -0.402300, 0.626119,
		-0.735006, 0.488593, -0.470153,
		-0.116775, -0.774230, -0.622038,
		33.951252, 27.761154, 49.391243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.315094, 28.277725, 49.606567>,  <34.032997, 28.303116, 49.826668>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.315094, 28.277725, 49.606567> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.486797, 27.916544, 49.614681>,  <33.589821, 27.699835, 49.619549>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.486797, 27.916544, 49.614681>,  <33.315094, 28.277725, 49.606567>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.486797, 27.916544, 49.614681> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.631910, -0.284207, 0.721053,
		-0.645310, -0.322341, -0.692583,
		0.429262, -0.902952, 0.020289,
		33.615578, 27.645658, 49.620770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.760643, 28.299271, 49.188221>,  <33.315094, 28.277725, 49.606567>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.760643, 28.299271, 49.188221> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.484982, 28.558580, 49.317715>,  <32.319584, 28.714167, 49.395409>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.484982, 28.558580, 49.317715>,  <32.760643, 28.299271, 49.188221>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.484982, 28.558580, 49.317715> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278160, 0.649215, -0.707917,
		-0.669098, -0.397815, -0.627735,
		-0.689155, 0.648277, 0.323733,
		32.278236, 28.753063, 49.414833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.412174, 28.560961, 48.596317>,  <32.760643, 28.299271, 49.188221>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.412174, 28.560961, 48.596317> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.334785, 28.851263, 48.860394>,  <32.288353, 29.025444, 49.018837>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.334785, 28.851263, 48.860394>,  <32.412174, 28.560961, 48.596317>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.334785, 28.851263, 48.860394> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312896, 0.683406, -0.659585,
		-0.929874, 0.078961, -0.359304,
		-0.193469, 0.725756, 0.660188,
		32.276745, 29.068991, 49.058449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.979279, 29.083881, 48.242420>,  <32.412174, 28.560961, 48.596317>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.979279, 29.083881, 48.242420> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.183334, 29.274490, 48.528828>,  <32.305767, 29.388855, 48.700672>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.183334, 29.274490, 48.528828>,  <31.979279, 29.083881, 48.242420>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.183334, 29.274490, 48.528828> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335422, 0.656355, -0.675789,
		-0.791992, 0.584915, 0.174995,
		0.510138, 0.476522, 0.716021,
		32.336376, 29.417446, 48.743633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.797228, 29.818300, 48.109386>,  <31.979279, 29.083881, 48.242420>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.797228, 29.818300, 48.109386> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.127960, 29.832556, 48.333916>,  <32.326401, 29.841108, 48.468632>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.127960, 29.832556, 48.333916>,  <31.797228, 29.818300, 48.109386>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.127960, 29.832556, 48.333916> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363839, 0.727170, -0.582104,
		-0.428920, 0.685532, 0.588280,
		0.826831, 0.035637, 0.561321,
		32.376011, 29.843246, 48.502312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.944942, 30.562500, 48.185421>,  <31.797228, 29.818300, 48.109386>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.944942, 30.562500, 48.185421> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.272865, 30.343819, 48.253571>,  <32.469620, 30.212610, 48.294460>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.272865, 30.343819, 48.253571>,  <31.944942, 30.562500, 48.185421>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.272865, 30.343819, 48.253571> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521529, 0.589957, -0.616407,
		0.236478, 0.594192, 0.768774,
		0.819808, -0.546705, 0.170377,
		32.518806, 30.179808, 48.304684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.403244, 31.081488, 48.189934>,  <31.944942, 30.562500, 48.185421>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.403244, 31.081488, 48.189934> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.572399, 30.726929, 48.114609>,  <32.673893, 30.514193, 48.069412>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.572399, 30.726929, 48.114609>,  <32.403244, 31.081488, 48.189934>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.572399, 30.726929, 48.114609> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412222, 0.373238, -0.831124,
		0.806991, 0.273849, 0.523232,
		0.422892, -0.886397, -0.188313,
		32.699268, 30.461010, 48.058113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.938721, 31.276041, 47.830769>,  <32.403244, 31.081488, 48.189934>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.938721, 31.276041, 47.830769> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.977604, 30.881037, 47.781170>,  <33.000935, 30.644033, 47.751411>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.977604, 30.881037, 47.781170>,  <32.938721, 31.276041, 47.830769>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.977604, 30.881037, 47.781170> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375937, 0.151785, -0.914129,
		0.921532, 0.042246, 0.385997,
		0.097207, -0.987510, -0.123993,
		33.006767, 30.584784, 47.743973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.631268, 31.156824, 47.681156>,  <32.938721, 31.276041, 47.830769>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.631268, 31.156824, 47.681156> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.449783, 30.829355, 47.540348>,  <33.340893, 30.632874, 47.455864>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.449783, 30.829355, 47.540348>,  <33.631268, 31.156824, 47.681156>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.449783, 30.829355, 47.540348> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499489, 0.093518, -0.861258,
		0.738010, -0.566592, 0.366489,
		-0.453709, -0.818674, -0.352024,
		33.313671, 30.583754, 47.434742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.137432, 30.820169, 47.271130>,  <33.631268, 31.156824, 47.681156>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.137432, 30.820169, 47.271130> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.772038, 30.707430, 47.153759>,  <33.552799, 30.639786, 47.083336>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.772038, 30.707430, 47.153759>,  <34.137432, 30.820169, 47.271130>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.772038, 30.707430, 47.153759> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241311, 0.205334, -0.948476,
		0.327579, -0.937229, -0.119557,
		-0.913488, -0.281851, -0.293427,
		33.497990, 30.622875, 47.065731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.198036, 30.273069, 46.724735>,  <34.137432, 30.820169, 47.271130>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.198036, 30.273069, 46.724735> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.832882, 30.433428, 46.693932>,  <33.613789, 30.529642, 46.675449>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.832882, 30.433428, 46.693932>,  <34.198036, 30.273069, 46.724735>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.832882, 30.433428, 46.693932> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189421, 0.248867, -0.949834,
		-0.361617, -0.881674, -0.303124,
		-0.912881, 0.400894, -0.077013,
		33.559017, 30.553696, 46.670826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.062637, 30.131229, 45.946903>,  <34.198036, 30.273069, 46.724735>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.062637, 30.131229, 45.946903> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.810070, 30.402040, 46.098137>,  <33.658531, 30.564528, 46.188877>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.810070, 30.402040, 46.098137>,  <34.062637, 30.131229, 45.946903>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.810070, 30.402040, 46.098137> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013115, 0.478180, -0.878164,
		-0.775335, -0.559444, -0.293050,
		-0.631414, 0.677028, 0.378087,
		33.620647, 30.605148, 46.211563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.724545, 30.274672, 45.365807>,  <34.062637, 30.131229, 45.946903>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.724545, 30.274672, 45.365807> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.605431, 30.585600, 45.587471>,  <33.533962, 30.772156, 45.720470>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.605431, 30.585600, 45.587471>,  <33.724545, 30.274672, 45.365807>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.605431, 30.585600, 45.587471> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086422, 0.556164, -0.826567,
		-0.950712, -0.294035, -0.098442,
		-0.297789, 0.777319, 0.554163,
		33.516094, 30.818796, 45.753719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.217175, 30.668695, 44.973637>,  <33.724545, 30.274672, 45.365807>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.217175, 30.668695, 44.973637> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.349529, 30.930189, 45.245857>,  <33.428944, 31.087086, 45.409187>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.349529, 30.930189, 45.245857>,  <33.217175, 30.668695, 44.973637>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.349529, 30.930189, 45.245857> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072146, 0.736585, -0.672486,
		-0.940907, 0.173421, 0.290894,
		0.330891, 0.653733, 0.680547,
		33.448795, 31.126308, 45.450020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.946495, 31.278984, 44.694988>,  <33.217175, 30.668695, 44.973637>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.946495, 31.278984, 44.694988> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.181984, 31.430380, 44.980690>,  <33.323277, 31.521217, 45.152111>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.181984, 31.430380, 44.980690>,  <32.946495, 31.278984, 44.694988>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.181984, 31.430380, 44.980690> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157623, 0.812893, -0.560678,
		-0.792820, 0.442665, 0.418908,
		0.588720, 0.378488, 0.714252,
		33.358601, 31.543926, 45.194965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.222519, 31.387180, 44.766956>,  <32.946495, 31.278984, 44.694988>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.222519, 31.387180, 44.766956> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.977613, 31.261719, 44.476643>,  <31.830671, 31.186441, 44.302456>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.977613, 31.261719, 44.476643>,  <32.222519, 31.387180, 44.766956>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.977613, 31.261719, 44.476643> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.546353, -0.495701, 0.675115,
		-0.571522, 0.809879, 0.132133,
		-0.612259, -0.313652, -0.725783,
		31.793936, 31.167624, 44.258907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.469666, 31.638929, 44.986893>,  <32.222519, 31.387180, 44.766956>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.469666, 31.638929, 44.986893> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.483097, 31.317644, 44.748997>,  <31.491156, 31.124872, 44.606258>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.483097, 31.317644, 44.748997>,  <31.469666, 31.638929, 44.986893>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.483097, 31.317644, 44.748997> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422013, -0.550822, 0.720069,
		-0.905967, 0.226809, -0.357464,
		0.033581, -0.803214, -0.594743,
		31.493172, 31.076679, 44.570572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.927589, 31.336374, 45.228615>,  <31.469666, 31.638929, 44.986893>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.927589, 31.336374, 45.228615> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.119272, 31.056072, 45.017220>,  <31.234283, 30.887892, 44.890381>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.119272, 31.056072, 45.017220>,  <30.927589, 31.336374, 45.228615>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.119272, 31.056072, 45.017220> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348001, -0.704476, 0.618554,
		-0.805763, -0.112501, -0.581454,
		0.479208, -0.700755, -0.528491,
		31.263035, 30.845846, 44.858673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.449137, 30.954605, 44.936798>,  <30.927589, 31.336374, 45.228615>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.449137, 30.954605, 44.936798> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.763170, 30.709030, 44.969593>,  <30.951590, 30.561686, 44.989269>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.763170, 30.709030, 44.969593>,  <30.449137, 30.954605, 44.936798>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.763170, 30.709030, 44.969593> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525660, -0.590410, 0.612452,
		-0.327604, -0.523923, -0.786244,
		0.785084, -0.613939, 0.081985,
		30.998695, 30.524849, 44.994190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.188587, 30.418600, 44.831539>,  <30.449137, 30.954605, 44.936798>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.188587, 30.418600, 44.831539> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.519972, 30.302809, 45.023312>,  <30.718803, 30.233334, 45.138374>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.519972, 30.302809, 45.023312>,  <30.188587, 30.418600, 44.831539>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.519972, 30.302809, 45.023312> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.552889, -0.559144, 0.617796,
		0.089230, -0.776891, -0.623280,
		0.828463, -0.289479, 0.479427,
		30.768511, 30.215965, 45.167141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.153284, 29.660000, 44.862659>,  <30.188587, 30.418600, 44.831539>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.153284, 29.660000, 44.862659> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.424990, 29.756569, 45.139877>,  <30.588013, 29.814510, 45.306210>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.424990, 29.756569, 45.139877>,  <30.153284, 29.660000, 44.862659>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.424990, 29.756569, 45.139877> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483400, -0.563365, 0.670033,
		0.552202, -0.790148, -0.265967,
		0.679262, 0.241425, 0.693049,
		30.628769, 29.828997, 45.347794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.148172, 29.062393, 45.176018>,  <30.153284, 29.660000, 44.862659>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.148172, 29.062393, 45.176018> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.310242, 29.324089, 45.431458>,  <30.407482, 29.481106, 45.584721>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.310242, 29.324089, 45.431458>,  <30.148172, 29.062393, 45.176018>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.310242, 29.324089, 45.431458> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.522192, -0.407738, 0.749043,
		0.750434, -0.636961, 0.176435,
		0.405172, 0.654240, 0.638597,
		30.431793, 29.520361, 45.623035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.852419, 28.433498, 45.069199>,  <30.148172, 29.062393, 45.176018>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.852419, 28.433498, 45.069199> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.504450, 28.271572, 44.956516>,  <29.295668, 28.174417, 44.888908>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.504450, 28.271572, 44.956516>,  <29.852419, 28.433498, 45.069199>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.504450, 28.271572, 44.956516> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008549, 0.558729, -0.829306,
		0.493108, -0.723843, -0.482592,
		-0.869926, -0.404812, -0.281702,
		29.243473, 28.150127, 44.872005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.950661, 28.197794, 44.280010>,  <29.852419, 28.433498, 45.069199>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.950661, 28.197794, 44.280010> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.554834, 28.218082, 44.333946>,  <29.317337, 28.230255, 44.366306>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.554834, 28.218082, 44.333946>,  <29.950661, 28.197794, 44.280010>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.554834, 28.218082, 44.333946> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098943, 0.441022, -0.892026,
		-0.104713, -0.896062, -0.431403,
		-0.989569, 0.050723, 0.134840,
		29.257963, 28.233299, 44.374397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.713207, 28.134512, 43.642021>,  <29.950661, 28.197794, 44.280010>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.713207, 28.134512, 43.642021> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.398357, 28.292025, 43.831913>,  <29.209448, 28.386532, 43.945850>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.398357, 28.292025, 43.831913>,  <29.713207, 28.134512, 43.642021>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.398357, 28.292025, 43.831913> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245193, 0.506478, -0.826656,
		-0.565964, -0.767082, -0.302108,
		-0.787124, 0.393783, 0.474732,
		29.162220, 28.410160, 43.974331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.123760, 27.999592, 43.211395>,  <29.713207, 28.134512, 43.642021>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.123760, 27.999592, 43.211395> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.047623, 28.322300, 43.435143>,  <29.001940, 28.515924, 43.569389>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.047623, 28.322300, 43.435143>,  <29.123760, 27.999592, 43.211395>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.047623, 28.322300, 43.435143> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010699, 0.568047, -0.822927,
		-0.981659, -0.162623, -0.099492,
		-0.190343, 0.806770, 0.559368,
		28.990520, 28.564331, 43.602955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.568314, 28.288794, 42.907207>,  <29.123760, 27.999592, 43.211395>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.568314, 28.288794, 42.907207> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.750832, 28.571999, 43.122807>,  <28.860342, 28.741922, 43.252167>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.750832, 28.571999, 43.122807>,  <28.568314, 28.288794, 42.907207>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.750832, 28.571999, 43.122807> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096777, 0.641620, -0.760893,
		-0.884550, 0.295029, 0.361287,
		0.456295, 0.708012, 0.538993,
		28.887720, 28.784403, 43.284504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.173729, 28.812841, 42.560299>,  <28.568314, 28.288794, 42.907207>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.173729, 28.812841, 42.560299> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.455021, 29.004545, 42.770355>,  <28.623796, 29.119568, 42.896389>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.455021, 29.004545, 42.770355>,  <28.173729, 28.812841, 42.560299>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.455021, 29.004545, 42.770355> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182512, 0.592191, -0.784857,
		-0.687135, 0.647781, 0.328976,
		0.703232, 0.479260, 0.525143,
		28.665991, 29.148323, 42.927898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.121943, 29.477274, 42.406815>,  <28.173729, 28.812841, 42.560299>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.121943, 29.477274, 42.406815> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.493414, 29.457748, 42.553875>,  <28.716297, 29.446033, 42.642113>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.493414, 29.457748, 42.553875>,  <28.121943, 29.477274, 42.406815>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.493414, 29.457748, 42.553875> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306738, 0.658318, -0.687407,
		-0.208480, 0.751155, 0.626340,
		0.928681, -0.048811, 0.367655,
		28.772018, 29.443106, 42.664173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<32.043850, 25.512558, 46.995426> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.158890, 25.842138, 47.190727>,  <32.227913, 26.039886, 47.307907>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.158890, 25.842138, 47.190727>,  <32.043850, 25.512558, 46.995426>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.158890, 25.842138, 47.190727> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193917, 0.449137, -0.872165,
		-0.937913, 0.345517, -0.030605,
		0.287602, 0.823950, 0.488253,
		32.245171, 26.089323, 47.337204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.616241, 26.142698, 46.767162>,  <32.043850, 25.512558, 46.995426>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.616241, 26.142698, 46.767162> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.969316, 26.259411, 46.914524>,  <32.181164, 26.329437, 47.002941>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.969316, 26.259411, 46.914524>,  <31.616241, 26.142698, 46.767162>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.969316, 26.259411, 46.914524> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214680, 0.447002, -0.868390,
		-0.418058, 0.845608, 0.331925,
		0.882689, 0.291780, 0.368408,
		32.234123, 26.346945, 47.025047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.636921, 26.848860, 46.753201>,  <31.616241, 26.142698, 46.767162>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.636921, 26.848860, 46.753201> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.016209, 26.722204, 46.743240>,  <32.243782, 26.646210, 46.737263>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.016209, 26.722204, 46.743240>,  <31.636921, 26.848860, 46.753201>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.016209, 26.722204, 46.743240> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175873, 0.588725, -0.788969,
		0.264481, 0.743735, 0.613928,
		0.948218, -0.316641, -0.024904,
		32.300674, 26.627213, 46.735771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.103840, 27.440960, 46.629669>,  <31.636921, 26.848860, 46.753201>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.103840, 27.440960, 46.629669> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.331890, 27.134562, 46.510872>,  <32.468719, 26.950722, 46.439594>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.331890, 27.134562, 46.510872>,  <32.103840, 27.440960, 46.629669>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.331890, 27.134562, 46.510872> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344948, 0.551287, -0.759667,
		0.745633, 0.330657, 0.578531,
		0.570125, -0.765996, -0.296998,
		32.502926, 26.904762, 46.421772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.661407, 27.696560, 46.365585>,  <32.103840, 27.440960, 46.629669>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.661407, 27.696560, 46.365585> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.703228, 27.331558, 46.207394>,  <32.728321, 27.112556, 46.112480>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.703228, 27.331558, 46.207394>,  <32.661407, 27.696560, 46.365585>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.703228, 27.331558, 46.207394> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437895, 0.399273, -0.805499,
		0.892925, -0.088958, 0.441328,
		0.104555, -0.912506, -0.395475,
		32.734596, 27.057806, 46.088753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.354725, 27.589884, 46.019516>,  <32.661407, 27.696560, 46.365585>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.354725, 27.589884, 46.019516> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.145103, 27.293108, 45.852238>,  <33.019329, 27.115042, 45.751869>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.145103, 27.293108, 45.852238>,  <33.354725, 27.589884, 46.019516>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.145103, 27.293108, 45.852238> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353180, 0.257501, -0.899420,
		0.775002, -0.619047, 0.127093,
		-0.524056, -0.741939, -0.418199,
		32.987888, 27.070526, 45.726776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.818722, 27.317301, 45.619415>,  <33.354725, 27.589884, 46.019516>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.818722, 27.317301, 45.619415> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.463383, 27.211168, 45.469513>,  <33.250179, 27.147488, 45.379570>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.463383, 27.211168, 45.469513>,  <33.818722, 27.317301, 45.619415>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.463383, 27.211168, 45.469513> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341396, 0.164141, -0.925476,
		0.307072, -0.950082, -0.055230,
		-0.888344, -0.265332, -0.374757,
		33.196880, 27.131569, 45.357086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.962334, 26.825457, 45.095806>,  <33.818722, 27.317301, 45.619415>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.962334, 26.825457, 45.095806> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.600491, 26.978203, 45.020058>,  <33.383385, 27.069851, 44.974609>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.600491, 26.978203, 45.020058>,  <33.962334, 26.825457, 45.095806>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.600491, 26.978203, 45.020058> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260876, 0.144655, -0.954473,
		-0.337088, -0.912827, -0.230476,
		-0.904608, 0.381867, -0.189373,
		33.329109, 27.092762, 44.963245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.806950, 26.418846, 44.519627>,  <33.962334, 26.825457, 45.095806>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.806950, 26.418846, 44.519627> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.578835, 26.747015, 44.535992>,  <33.441963, 26.943916, 44.545811>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.578835, 26.747015, 44.535992>,  <33.806950, 26.418846, 44.519627>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.578835, 26.747015, 44.535992> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341779, 0.282282, -0.896384,
		-0.746964, -0.497215, -0.441386,
		-0.570291, 0.820423, 0.040917,
		33.407745, 26.993141, 44.548267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.734859, 26.503531, 43.876751>,  <33.806950, 26.418846, 44.519627>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.734859, 26.503531, 43.876751> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.554268, 26.845997, 43.977264>,  <33.445911, 27.051477, 44.037571>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.554268, 26.845997, 43.977264>,  <33.734859, 26.503531, 43.876751>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.554268, 26.845997, 43.977264> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253839, 0.393221, -0.883710,
		-0.855413, -0.335192, -0.394860,
		-0.451480, 0.856168, 0.251282,
		33.418823, 27.102848, 44.052650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.289608, 26.787477, 43.267994>,  <33.734859, 26.503531, 43.876751>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.289608, 26.787477, 43.267994> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.373131, 27.093298, 43.511913>,  <33.423244, 27.276791, 43.658264>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.373131, 27.093298, 43.511913>,  <33.289608, 26.787477, 43.267994>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.373131, 27.093298, 43.511913> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212964, 0.573035, -0.791376,
		-0.954488, 0.295109, -0.043170,
		0.208805, 0.764553, 0.609803,
		33.435772, 27.322664, 43.694855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.979244, 27.424789, 43.038815>,  <33.289608, 26.787477, 43.267994>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.979244, 27.424789, 43.038815> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.300915, 27.557583, 43.236027>,  <33.493919, 27.637259, 43.354355>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.300915, 27.557583, 43.236027>,  <32.979244, 27.424789, 43.038815>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.300915, 27.557583, 43.236027> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240737, 0.576487, -0.780838,
		-0.543453, 0.746626, 0.383678,
		0.804179, 0.331983, 0.493034,
		33.542168, 27.657177, 43.383938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.320007, 27.756046, 43.034096>,  <32.979244, 27.424789, 43.038815>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.320007, 27.756046, 43.034096> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.141903, 27.603422, 42.710083>,  <32.035038, 27.511848, 42.515675>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.141903, 27.603422, 42.710083>,  <32.320007, 27.756046, 43.034096>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.141903, 27.603422, 42.710083> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500974, -0.643652, 0.578564,
		-0.742136, 0.663419, 0.095443,
		-0.445263, -0.381559, -0.810033,
		32.008324, 27.488955, 42.467072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.619469, 27.748932, 43.212051>,  <32.320007, 27.756046, 43.034096>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.619469, 27.748932, 43.212051> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.662653, 27.476862, 42.922028>,  <31.688562, 27.313620, 42.748013>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.662653, 27.476862, 42.922028>,  <31.619469, 27.748932, 43.212051>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.662653, 27.476862, 42.922028> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.625990, -0.613092, 0.481928,
		-0.772322, 0.401851, -0.491970,
		0.107959, -0.680172, -0.725059,
		31.695042, 27.272810, 42.704510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.034355, 27.418528, 43.128128>,  <31.619469, 27.748932, 43.212051>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.034355, 27.418528, 43.128128> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.270178, 27.164675, 42.928261>,  <31.411671, 27.012363, 42.808342>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.270178, 27.164675, 42.928261>,  <31.034355, 27.418528, 43.128128>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.270178, 27.164675, 42.928261> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347863, -0.757788, 0.552039,
		-0.728979, -0.151647, -0.667528,
		0.589560, -0.634633, -0.499659,
		31.447044, 26.974285, 42.778362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.583155, 26.914545, 42.850769>,  <31.034355, 27.418528, 43.128128>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.583155, 26.914545, 42.850769> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.948574, 26.751900, 42.846809>,  <31.167826, 26.654312, 42.844433>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.948574, 26.751900, 42.846809>,  <30.583155, 26.914545, 42.850769>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.948574, 26.751900, 42.846809> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337407, -0.771204, 0.539816,
		-0.227128, -0.489808, -0.841725,
		0.913548, -0.406611, -0.009897,
		31.222639, 26.629917, 42.843842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.517647, 26.197432, 42.680485>,  <30.583155, 26.914545, 42.850769>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.517647, 26.197432, 42.680485> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.872711, 26.211229, 42.864166>,  <31.085751, 26.219509, 42.974377>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.872711, 26.211229, 42.864166>,  <30.517647, 26.197432, 42.680485>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.872711, 26.211229, 42.864166> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277316, -0.756053, 0.592857,
		0.367635, -0.653601, -0.661552,
		0.887660, 0.034496, 0.459205,
		31.139009, 26.221579, 43.001926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.858448, 25.496231, 42.619877>,  <30.517647, 26.197432, 42.680485>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.858448, 25.496231, 42.619877> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.991705, 25.689602, 42.943684>,  <31.071659, 25.805624, 43.137966>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.991705, 25.689602, 42.943684>,  <30.858448, 25.496231, 42.619877>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.991705, 25.689602, 42.943684> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255005, -0.780368, 0.570963,
		0.907738, -0.396643, -0.136698,
		0.333143, 0.483426, 0.809516,
		31.091648, 25.834629, 43.186539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.141228, 24.885189, 43.066662>,  <30.858448, 25.496231, 42.619877>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.141228, 24.885189, 43.066662> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.075392, 25.215561, 43.282349>,  <31.035891, 25.413784, 43.411758>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.075392, 25.215561, 43.282349>,  <31.141228, 24.885189, 43.066662>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.075392, 25.215561, 43.282349> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191997, -0.563041, 0.803817,
		0.967495, 0.028773, 0.251247,
		-0.164591, 0.825928, 0.539215,
		31.026014, 25.463339, 43.444115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.499050, 24.718653, 43.691349>,  <31.141228, 24.885189, 43.066662>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.499050, 24.718653, 43.691349> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.263140, 25.030237, 43.776566>,  <31.121593, 25.217188, 43.827698>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.263140, 25.030237, 43.776566>,  <31.499050, 24.718653, 43.691349>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.263140, 25.030237, 43.776566> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145152, -0.361763, 0.920901,
		0.794416, 0.512200, 0.326426,
		-0.589775, 0.778960, 0.213043,
		31.086206, 25.263926, 43.840477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.710697, 24.932472, 44.356152>,  <31.499050, 24.718653, 43.691349>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.710697, 24.932472, 44.356152> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.332943, 25.046932, 44.291344>,  <31.106291, 25.115608, 44.252460>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.332943, 25.046932, 44.291344>,  <31.710697, 24.932472, 44.356152>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.332943, 25.046932, 44.291344> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279196, -0.437434, 0.854811,
		0.173733, 0.852507, 0.492999,
		-0.944387, 0.286152, -0.162020,
		31.049627, 25.132778, 44.242737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.548021, 25.234743, 44.887039>,  <31.710697, 24.932472, 44.356152>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.548021, 25.234743, 44.887039> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.196144, 25.134645, 44.725288>,  <30.985018, 25.074587, 44.628239>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.196144, 25.134645, 44.725288>,  <31.548021, 25.234743, 44.887039>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.196144, 25.134645, 44.725288> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314259, -0.332292, 0.889282,
		-0.356907, 0.909374, 0.213675,
		-0.879693, -0.250242, -0.404376,
		30.932236, 25.059572, 44.603977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.127367, 25.391750, 45.377018>,  <31.548021, 25.234743, 44.887039>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.127367, 25.391750, 45.377018> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.911524, 25.163427, 45.129471>,  <30.782019, 25.026434, 44.980942>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.911524, 25.163427, 45.129471>,  <31.127367, 25.391750, 45.377018>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.911524, 25.163427, 45.129471> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.563229, -0.301620, 0.769285,
		-0.625778, 0.763678, -0.158740,
		-0.539607, -0.570808, -0.618873,
		30.749641, 24.992186, 44.943810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.442863, 25.571453, 45.550022>,  <31.127367, 25.391750, 45.377018>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.442863, 25.571453, 45.550022> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.448132, 25.206619, 45.386105>,  <30.451292, 24.987719, 45.287754>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.448132, 25.206619, 45.386105>,  <30.442863, 25.571453, 45.550022>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.448132, 25.206619, 45.386105> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354146, -0.387516, 0.851124,
		-0.935097, 0.133916, -0.328115,
		0.013170, -0.912084, -0.409792,
		30.452084, 24.932995, 45.263168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.804756, 25.233786, 45.838623>,  <30.442863, 25.571453, 45.550022>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.804756, 25.233786, 45.838623> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.027180, 24.937782, 45.687263>,  <30.160635, 24.760180, 45.596447>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.027180, 24.937782, 45.687263>,  <29.804756, 25.233786, 45.838623>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.027180, 24.937782, 45.687263> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159034, -0.541591, 0.825462,
		-0.815785, -0.398828, -0.418844,
		0.556060, -0.740010, -0.378395,
		30.193998, 24.715780, 45.573746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.466789, 24.641678, 46.093956>,  <29.804756, 25.233786, 45.838623>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.466789, 24.641678, 46.093956> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.817802, 24.483990, 45.984760>,  <30.028410, 24.389378, 45.919243>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.817802, 24.483990, 45.984760>,  <29.466789, 24.641678, 46.093956>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.817802, 24.483990, 45.984760> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002864, -0.573609, 0.819124,
		-0.479503, -0.718028, -0.504492,
		0.877535, -0.394217, -0.272991,
		30.081062, 24.365725, 45.902863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.173952, 25.333927, 46.241581>,  <29.466789, 24.641678, 46.093956>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.173952, 25.333927, 46.241581> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.167046, 25.680193, 46.441711>,  <29.162901, 25.887953, 46.561790>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.167046, 25.680193, 46.441711>,  <29.173952, 25.333927, 46.241581>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.167046, 25.680193, 46.441711> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201376, 0.493160, -0.846310,
		-0.979362, 0.086141, -0.182839,
		-0.017267, 0.865663, 0.500329,
		29.161865, 25.939892, 46.591808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.779394, 25.663952, 45.780712>,  <29.173952, 25.333927, 46.241581>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.779394, 25.663952, 45.780712> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.940527, 25.933065, 46.028934>,  <29.037207, 26.094534, 46.177868>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.940527, 25.933065, 46.028934>,  <28.779394, 25.663952, 45.780712>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.940527, 25.933065, 46.028934> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051355, 0.693542, -0.718583,
		-0.913832, 0.257600, 0.313932,
		0.402833, 0.672786, 0.620552,
		29.061377, 26.134901, 46.215099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.242491, 26.180727, 45.920609>,  <28.779394, 25.663952, 45.780712>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.242491, 26.180727, 45.920609> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.602371, 26.345211, 45.979179>,  <28.818300, 26.443901, 46.014324>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.602371, 26.345211, 45.979179>,  <28.242491, 26.180727, 45.920609>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.602371, 26.345211, 45.979179> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224746, 0.723973, -0.652190,
		-0.374197, 0.553868, 0.743779,
		0.899703, 0.411209, 0.146429,
		28.872282, 26.468575, 46.023109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.109188, 26.971146, 45.883694>,  <28.242491, 26.180727, 45.920609>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.109188, 26.971146, 45.883694> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.502405, 26.915600, 45.835789>,  <28.738335, 26.882273, 45.807045>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.502405, 26.915600, 45.835789>,  <28.109188, 26.971146, 45.883694>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.502405, 26.915600, 45.835789> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022677, 0.740135, -0.672076,
		0.181965, 0.657964, 0.730734,
		0.983043, -0.138865, -0.119758,
		28.797318, 26.873940, 45.799862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.404364, 27.638245, 46.072071>,  <28.109188, 26.971146, 45.883694>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.404364, 27.638245, 46.072071> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.686529, 27.455368, 45.855419>,  <28.855829, 27.345642, 45.725430>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.686529, 27.455368, 45.855419>,  <28.404364, 27.638245, 46.072071>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.686529, 27.455368, 45.855419> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061011, 0.800488, -0.596236,
		0.706163, 0.387549, 0.592570,
		0.705416, -0.457193, -0.541630,
		28.898153, 27.318211, 45.692928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.932859, 28.250559, 46.049656>,  <28.404364, 27.638245, 46.072071>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.932859, 28.250559, 46.049656> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.970043, 27.964474, 45.772575>,  <28.992353, 27.792822, 45.606327>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.970043, 27.964474, 45.772575>,  <28.932859, 28.250559, 46.049656>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.970043, 27.964474, 45.772575> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075919, 0.698776, -0.711301,
		0.992771, 0.013532, 0.119256,
		0.092958, -0.715213, -0.692697,
		28.997931, 27.749910, 45.564766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.500118, 28.435341, 45.682976>,  <28.932859, 28.250559, 46.049656>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.500118, 28.435341, 45.682976> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.317503, 28.179226, 45.435879>,  <29.207933, 28.025557, 45.287621>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.317503, 28.179226, 45.435879>,  <29.500118, 28.435341, 45.682976>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.317503, 28.179226, 45.435879> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167193, 0.620208, -0.766413,
		0.873853, -0.453179, -0.176097,
		-0.456539, -0.640290, -0.617738,
		29.180542, 27.987139, 45.250557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.263002, 28.568975, 45.818199>,  <29.500118, 28.435341, 45.682976>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.263002, 28.568975, 45.818199> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.322002, 28.934694, 45.969090>,  <30.357403, 29.154125, 46.059624>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.322002, 28.934694, 45.969090>,  <30.263002, 28.568975, 45.818199>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.322002, 28.934694, 45.969090> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279212, -0.327397, 0.902692,
		0.948834, -0.238473, 0.206992,
		0.147499, 0.914299, 0.377229,
		30.366253, 29.208984, 46.082260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.696789, 28.508696, 46.429169>,  <30.263002, 28.568975, 45.818199>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.696789, 28.508696, 46.429169> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.519367, 28.861069, 46.495159>,  <30.412914, 29.072493, 46.534752>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.519367, 28.861069, 46.495159>,  <30.696789, 28.508696, 46.429169>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.519367, 28.861069, 46.495159> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164637, -0.261026, 0.951189,
		0.880996, 0.394744, 0.260814,
		-0.443555, 0.880933, 0.164973,
		30.386301, 29.125349, 46.544651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.007841, 28.711657, 47.033192>,  <30.696789, 28.508696, 46.429169>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.007841, 28.711657, 47.033192> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.663296, 28.907999, 46.980865>,  <30.456568, 29.025805, 46.949471>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.663296, 28.907999, 46.980865>,  <31.007841, 28.711657, 47.033192>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.663296, 28.907999, 46.980865> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268732, -0.221765, 0.937338,
		0.431087, 0.842544, 0.322928,
		-0.861364, 0.490855, -0.130819,
		30.404886, 29.055256, 46.941620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.071115, 29.322458, 47.371586>,  <31.007841, 28.711657, 47.033192>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.071115, 29.322458, 47.371586> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.681089, 29.234716, 47.358124>,  <30.447073, 29.182072, 47.350048>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.681089, 29.234716, 47.358124>,  <31.071115, 29.322458, 47.371586>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.681089, 29.234716, 47.358124> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006672, -0.122599, 0.992434,
		-0.221821, 0.967912, 0.118078,
		-0.975065, -0.219354, -0.033653,
		30.388571, 29.168911, 47.348026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.850750, 29.463575, 48.021580>,  <31.071115, 29.322458, 47.371586>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.850750, 29.463575, 48.021580> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.520580, 29.267328, 47.909889>,  <30.322479, 29.149580, 47.842873>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.520580, 29.267328, 47.909889>,  <30.850750, 29.463575, 48.021580>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.520580, 29.267328, 47.909889> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151017, -0.284701, 0.946646,
		-0.543938, 0.823554, 0.160908,
		-0.825424, -0.490617, -0.279231,
		30.272953, 29.120144, 47.826118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.311436, 29.612476, 48.467358>,  <30.850750, 29.463575, 48.021580>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.311436, 29.612476, 48.467358> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.201744, 29.256569, 48.321423>,  <30.135929, 29.043024, 48.233860>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.201744, 29.256569, 48.321423>,  <30.311436, 29.612476, 48.467358>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.201744, 29.256569, 48.321423> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137881, -0.339086, 0.930596,
		-0.951728, 0.305502, -0.029695,
		-0.274229, -0.889769, -0.364840,
		30.119474, 28.989637, 48.211971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.719902, 29.532267, 48.749763>,  <30.311436, 29.612476, 48.467358>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.719902, 29.532267, 48.749763> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.820530, 29.156776, 48.655525>,  <29.880907, 28.931482, 48.598984>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.820530, 29.156776, 48.655525>,  <29.719902, 29.532267, 48.749763>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.820530, 29.156776, 48.655525> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258386, -0.299732, 0.918367,
		-0.932711, -0.170157, -0.317957,
		0.251568, -0.938727, -0.235597,
		29.896000, 28.875158, 48.584846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.196905, 29.056973, 49.064812>,  <29.719902, 29.532267, 48.749763>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.196905, 29.056973, 49.064812> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.483637, 28.789633, 48.985352>,  <29.655676, 28.629229, 48.937675>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.483637, 28.789633, 48.985352>,  <29.196905, 29.056973, 49.064812>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.483637, 28.789633, 48.985352> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282597, -0.538954, 0.793516,
		-0.637413, -0.512676, -0.575212,
		0.716829, -0.668350, -0.198655,
		29.698687, 28.589128, 48.925755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.966450, 28.353687, 49.175262>,  <29.196905, 29.056973, 49.064812>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.966450, 28.353687, 49.175262> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.364082, 28.335665, 49.214806>,  <29.602661, 28.324852, 49.238533>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.364082, 28.335665, 49.214806>,  <28.966450, 28.353687, 49.175262>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.364082, 28.335665, 49.214806> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106964, -0.565341, 0.817893,
		0.019039, -0.823626, -0.566814,
		0.994081, -0.045056, 0.098862,
		29.662306, 28.322147, 49.244465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<34.595093, 36.043411, 35.683250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.922558, 36.074512, 35.910843>,  <35.119038, 36.093174, 36.047398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.922558, 36.074512, 35.910843>,  <34.595093, 36.043411, 35.683250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.922558, 36.074512, 35.910843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411596, -0.611482, 0.675781,
		0.400466, -0.787429, -0.468596,
		0.818667, 0.077755, 0.568980,
		35.168159, 36.097839, 36.081535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.791691, 35.346691, 35.973011>,  <34.595093, 36.043411, 35.683250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.791691, 35.346691, 35.973011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.954086, 35.605236, 36.231434>,  <35.051525, 35.760365, 36.386486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.954086, 35.605236, 36.231434>,  <34.791691, 35.346691, 35.973011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.954086, 35.605236, 36.231434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464080, -0.463186, 0.755042,
		0.787275, -0.606361, 0.111915,
		0.405991, 0.646363, 0.646055,
		35.075882, 35.799145, 36.425251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.074627, 34.943996, 36.490383>,  <34.791691, 35.346691, 35.973011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.074627, 34.943996, 36.490383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.001572, 35.308899, 36.637043>,  <34.957737, 35.527840, 36.725037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.001572, 35.308899, 36.637043>,  <35.074627, 34.943996, 36.490383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.001572, 35.308899, 36.637043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482003, -0.408109, 0.775319,
		0.856923, -0.035121, 0.514247,
		-0.182639, 0.912257, 0.366646,
		34.946781, 35.582577, 36.747036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.198940, 34.754444, 37.099697>,  <35.074627, 34.943996, 36.490383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.198940, 34.754444, 37.099697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.985439, 35.092567, 37.109146>,  <34.857338, 35.295441, 37.114815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.985439, 35.092567, 37.109146>,  <35.198940, 34.754444, 37.099697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.985439, 35.092567, 37.109146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.513090, -0.345928, 0.785540,
		0.672197, 0.407164, 0.618360,
		-0.533751, 0.845312, 0.023620,
		34.825314, 35.346161, 37.116234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.151516, 35.034424, 37.877411>,  <35.198940, 34.754444, 37.099697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.151516, 35.034424, 37.877411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.830429, 35.168770, 37.680294>,  <34.637775, 35.249378, 37.562023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.830429, 35.168770, 37.680294>,  <35.151516, 35.034424, 37.877411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.830429, 35.168770, 37.680294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.582751, -0.266246, 0.767799,
		0.126671, 0.903499, 0.409443,
		-0.802718, 0.335861, -0.492789,
		34.589615, 35.269527, 37.532455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.738827, 35.410397, 38.346413>,  <35.151516, 35.034424, 37.877411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.738827, 35.410397, 38.346413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.476124, 35.295689, 38.067432>,  <34.318501, 35.226864, 37.900043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.476124, 35.295689, 38.067432>,  <34.738827, 35.410397, 38.346413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.476124, 35.295689, 38.067432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.620752, -0.319559, 0.715925,
		-0.428179, 0.903132, 0.031862,
		-0.656757, -0.286766, -0.697449,
		34.279099, 35.209660, 37.858196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.071812, 35.539280, 38.656132>,  <34.738827, 35.410397, 38.346413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.071812, 35.539280, 38.656132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.976768, 35.303032, 38.347660>,  <33.919743, 35.161285, 38.162579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.976768, 35.303032, 38.347660>,  <34.071812, 35.539280, 38.656132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.976768, 35.303032, 38.347660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.828486, -0.291242, 0.478319,
		-0.507102, 0.752562, -0.420115,
		-0.237609, -0.590616, -0.771177,
		33.905487, 35.125847, 38.116306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.447044, 35.652367, 38.584415>,  <34.071812, 35.539280, 38.656132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.447044, 35.652367, 38.584415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.495224, 35.306255, 38.389774>,  <33.524132, 35.098587, 38.272991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.495224, 35.306255, 38.389774>,  <33.447044, 35.652367, 38.584415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.495224, 35.306255, 38.389774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.725512, -0.411295, 0.551788,
		-0.677588, 0.286571, -0.677312,
		0.120448, -0.865282, -0.486599,
		33.531357, 35.046669, 38.243793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.766579, 35.392654, 38.312489>,  <33.447044, 35.652367, 38.584415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.766579, 35.392654, 38.312489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.011669, 35.076893, 38.297478>,  <33.158726, 34.887436, 38.288471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.011669, 35.076893, 38.297478>,  <32.766579, 35.392654, 38.312489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.011669, 35.076893, 38.297478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.706368, -0.568338, 0.421943,
		-0.354410, -0.232029, -0.905845,
		0.612729, -0.789401, -0.037526,
		33.195488, 34.840073, 38.286221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.363682, 34.815750, 38.059509>,  <32.766579, 35.392654, 38.312489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.363682, 34.815750, 38.059509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.666466, 34.659981, 38.269409>,  <32.848137, 34.566521, 38.395351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.666466, 34.659981, 38.269409>,  <32.363682, 34.815750, 38.059509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.666466, 34.659981, 38.269409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.649765, -0.533868, 0.541101,
		0.069431, -0.750556, -0.657149,
		0.756958, -0.389423, 0.524752,
		32.893555, 34.543156, 38.426834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.268646, 34.099503, 38.083748>,  <32.363682, 34.815750, 38.059509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.268646, 34.099503, 38.083748> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.530033, 34.184021, 38.374496>,  <32.686863, 34.234730, 38.548946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.530033, 34.184021, 38.374496>,  <32.268646, 34.099503, 38.083748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.530033, 34.184021, 38.374496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.531453, -0.555722, 0.639321,
		0.539022, -0.804070, -0.250852,
		0.653463, 0.211292, 0.726871,
		32.726070, 34.247410, 38.592556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.297081, 33.532162, 38.513969>,  <32.268646, 34.099503, 38.083748>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.297081, 33.532162, 38.513969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.438435, 33.805542, 38.769470>,  <32.523247, 33.969570, 38.922771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.438435, 33.805542, 38.769470>,  <32.297081, 33.532162, 38.513969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.438435, 33.805542, 38.769470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.652404, -0.309301, 0.691883,
		0.670438, -0.661228, 0.336587,
		0.353385, 0.683455, 0.638755,
		32.544449, 34.010578, 38.961098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.648609, 32.754215, 38.583176>,  <32.297081, 33.532162, 38.513969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.648609, 32.754215, 38.583176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.325130, 32.614475, 38.393875>,  <32.131042, 32.530632, 38.280296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.325130, 32.614475, 38.393875>,  <32.648609, 32.754215, 38.583176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.325130, 32.614475, 38.393875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503959, 0.003458, -0.863721,
		0.303378, -0.936986, 0.173262,
		-0.808694, -0.349351, -0.473251,
		32.082523, 32.509670, 38.251900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.913750, 32.110161, 38.226059>,  <32.648609, 32.754215, 38.583176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.913750, 32.110161, 38.226059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.590374, 32.242977, 38.031666>,  <32.396347, 32.322666, 37.915031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.590374, 32.242977, 38.031666>,  <32.913750, 32.110161, 38.226059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.590374, 32.242977, 38.031666> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539541, 0.088113, -0.837336,
		-0.235209, -0.939140, -0.250384,
		-0.808438, 0.332042, -0.485980,
		32.347843, 32.342590, 37.885872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.831406, 31.619112, 37.712868>,  <32.913750, 32.110161, 38.226059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.831406, 31.619112, 37.712868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.677032, 31.979441, 37.633297>,  <32.584408, 32.195637, 37.585552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.677032, 31.979441, 37.633297>,  <32.831406, 31.619112, 37.712868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.677032, 31.979441, 37.633297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578277, 0.068215, -0.812984,
		-0.718785, -0.428793, -0.547253,
		-0.385932, 0.900824, -0.198929,
		32.561253, 32.249687, 37.573620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.827091, 31.434666, 37.043358>,  <32.831406, 31.619112, 37.712868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.827091, 31.434666, 37.043358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.746967, 31.822130, 37.102100>,  <32.698891, 32.054611, 37.137344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.746967, 31.822130, 37.102100>,  <32.827091, 31.434666, 37.043358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.746967, 31.822130, 37.102100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502911, 0.230299, -0.833092,
		-0.840807, -0.093023, -0.533283,
		-0.200311, 0.968664, 0.146854,
		32.686874, 32.112728, 37.146156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.607571, 31.695087, 36.337147>,  <32.827091, 31.434666, 37.043358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.607571, 31.695087, 36.337147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.720642, 32.005760, 36.562305>,  <32.788486, 32.192165, 36.697403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.720642, 32.005760, 36.562305>,  <32.607571, 31.695087, 36.337147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.720642, 32.005760, 36.562305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449240, 0.411298, -0.793106,
		-0.847510, 0.477076, -0.232649,
		0.282683, 0.776681, 0.562901,
		32.805447, 32.238766, 36.731174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.463543, 32.333729, 35.918747>,  <32.607571, 31.695087, 36.337147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.463543, 32.333729, 35.918747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.762569, 32.403610, 36.175064>,  <32.941986, 32.445538, 36.328854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.762569, 32.403610, 36.175064>,  <32.463543, 32.333729, 35.918747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.762569, 32.403610, 36.175064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447161, 0.580997, -0.680066,
		-0.491111, 0.794935, 0.356215,
		0.747568, 0.174702, 0.640797,
		32.986839, 32.456020, 36.367302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.680992, 33.052307, 35.751568>,  <32.463543, 32.333729, 35.918747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.680992, 33.052307, 35.751568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.975594, 32.930470, 35.993156>,  <33.152355, 32.857368, 36.138111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.975594, 32.930470, 35.993156>,  <32.680992, 33.052307, 35.751568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.975594, 32.930470, 35.993156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.637901, 0.609807, -0.470338,
		-0.225045, 0.731681, 0.643427,
		0.736503, -0.304595, 0.603974,
		33.196545, 32.839092, 36.174347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.002712, 33.673431, 36.060547>,  <32.680992, 33.052307, 35.751568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.002712, 33.673431, 36.060547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.258125, 33.365620, 36.064320>,  <33.411373, 33.180931, 36.066582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.258125, 33.365620, 36.064320>,  <33.002712, 33.673431, 36.060547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.258125, 33.365620, 36.064320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.615770, 0.503520, -0.606048,
		0.461625, 0.392792, 0.795372,
		0.638537, -0.769534, 0.009432,
		33.449688, 33.134758, 36.067150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.663147, 33.954311, 36.193665>,  <33.002712, 33.673431, 36.060547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.663147, 33.954311, 36.193665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.730671, 33.606903, 36.007256>,  <33.771187, 33.398457, 35.895409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.730671, 33.606903, 36.007256>,  <33.663147, 33.954311, 36.193665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.730671, 33.606903, 36.007256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.774193, 0.409461, -0.482665,
		0.610022, -0.279313, 0.741523,
		0.168811, -0.868519, -0.466023,
		33.781315, 33.346348, 35.867447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.448513, 33.983227, 36.019058>,  <33.663147, 33.954311, 36.193665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.448513, 33.983227, 36.019058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.287582, 33.692039, 35.796997>,  <34.191025, 33.517326, 35.663761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.287582, 33.692039, 35.796997>,  <34.448513, 33.983227, 36.019058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.287582, 33.692039, 35.796997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.613604, 0.235617, -0.753640,
		0.679430, -0.643854, 0.351889,
		-0.402323, -0.727967, -0.555158,
		34.166885, 33.473648, 35.630451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.915779, 33.504135, 35.901997>,  <34.448513, 33.983227, 36.019058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.915779, 33.504135, 35.901997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.652065, 33.453850, 35.605473>,  <34.493835, 33.423679, 35.427559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.652065, 33.453850, 35.605473>,  <34.915779, 33.504135, 35.901997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.652065, 33.453850, 35.605473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.745746, 0.016494, -0.666026,
		0.095956, -0.991930, 0.082878,
		-0.659284, -0.125715, -0.741310,
		34.454281, 33.416138, 35.383080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.291950, 33.207058, 35.375618>,  <34.915779, 33.504135, 35.901997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.291950, 33.207058, 35.375618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.973797, 33.292973, 35.148907>,  <34.782906, 33.344521, 35.012882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.973797, 33.292973, 35.148907>,  <35.291950, 33.207058, 35.375618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.973797, 33.292973, 35.148907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.572964, -0.038547, -0.818673,
		-0.197690, -0.975899, -0.092407,
		-0.795381, 0.214789, -0.566776,
		34.735184, 33.357410, 34.978874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.297626, 32.827801, 34.706356>,  <35.291950, 33.207058, 35.375618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.297626, 32.827801, 34.706356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.095638, 33.173046, 34.703587>,  <34.974445, 33.380192, 34.701923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.095638, 33.173046, 34.703587>,  <35.297626, 32.827801, 34.706356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.095638, 33.173046, 34.703587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.660943, 0.381506, -0.646225,
		-0.555122, -0.330900, -0.763115,
		-0.504969, 0.863110, -0.006924,
		34.944149, 33.431980, 34.701508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.251511, 33.060165, 34.051395>,  <35.297626, 32.827801, 34.706356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.251511, 33.060165, 34.051395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.204498, 33.396347, 34.262989>,  <35.176292, 33.598057, 34.389946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.204498, 33.396347, 34.262989>,  <35.251511, 33.060165, 34.051395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.204498, 33.396347, 34.262989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.702676, 0.446791, -0.553736,
		-0.701735, 0.306625, -0.643077,
		-0.117531, 0.840451, 0.528987,
		35.169239, 33.648483, 34.421684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.857895, 33.037136, 33.648983>,  <35.251511, 33.060165, 34.051395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.857895, 33.037136, 33.648983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.157955, 32.783085, 33.575352>,  <36.337990, 32.630653, 33.531174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.157955, 32.783085, 33.575352>,  <35.857895, 33.037136, 33.648983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.157955, 32.783085, 33.575352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372679, -0.636015, 0.675718,
		-0.546245, -0.438289, -0.713806,
		0.750152, -0.635128, -0.184079,
		36.382999, 32.592545, 33.520126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.607887, 32.370605, 33.864819>,  <35.857895, 33.037136, 33.648983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.607887, 32.370605, 33.864819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.999672, 32.300724, 33.824566>,  <36.234745, 32.258797, 33.800415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.999672, 32.300724, 33.824566>,  <35.607887, 32.370605, 33.864819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.999672, 32.300724, 33.824566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098380, -0.849834, 0.517787,
		-0.175982, -0.497253, -0.849570,
		0.979465, -0.174702, -0.100636,
		36.293510, 32.248314, 33.794376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.784721, 31.770592, 33.370991>,  <35.607887, 32.370605, 33.864819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.784721, 31.770592, 33.370991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.064423, 31.822430, 33.652203>,  <36.232243, 31.853533, 33.820930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.064423, 31.822430, 33.652203>,  <35.784721, 31.770592, 33.370991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.064423, 31.822430, 33.652203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347963, -0.797366, 0.493081,
		0.624472, -0.589417, -0.512467,
		0.699255, 0.129596, 0.703028,
		36.274200, 31.861309, 33.863110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.059166, 31.111231, 33.583164>,  <35.784721, 31.770592, 33.370991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.059166, 31.111231, 33.583164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.154346, 31.338861, 33.898006>,  <36.211452, 31.475441, 34.086910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.154346, 31.338861, 33.898006>,  <36.059166, 31.111231, 33.583164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.154346, 31.338861, 33.898006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204096, -0.762990, 0.613344,
		0.949593, -0.306588, -0.065404,
		0.237946, 0.569078, 0.787103,
		36.225731, 31.509584, 34.134136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.332569, 30.656624, 34.061165>,  <36.059166, 31.111231, 33.583164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.332569, 30.656624, 34.061165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.228615, 30.967457, 34.290462>,  <36.166245, 31.153955, 34.428040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.228615, 30.967457, 34.290462>,  <36.332569, 30.656624, 34.061165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.228615, 30.967457, 34.290462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264783, -0.628233, 0.731583,
		0.928628, 0.038342, 0.369025,
		-0.259884, 0.777080, 0.573242,
		36.150650, 31.200581, 34.462437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.473770, 30.474180, 34.778622>,  <36.332569, 30.656624, 34.061165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.473770, 30.474180, 34.778622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.220093, 30.779484, 34.828003>,  <36.067886, 30.962666, 34.857632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.220093, 30.779484, 34.828003>,  <36.473770, 30.474180, 34.778622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.220093, 30.779484, 34.828003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428808, -0.480072, 0.765281,
		0.643372, 0.432397, 0.631748,
		-0.634189, 0.763259, 0.123450,
		36.029835, 31.008461, 34.865036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.400612, 30.453222, 35.490604>,  <36.473770, 30.474180, 34.778622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.400612, 30.453222, 35.490604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.113834, 30.697256, 35.355675>,  <35.941769, 30.843678, 35.274715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.113834, 30.697256, 35.355675>,  <36.400612, 30.453222, 35.490604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.113834, 30.697256, 35.355675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.583204, -0.259792, 0.769663,
		0.381927, 0.748533, 0.542061,
		-0.716942, 0.610087, -0.337326,
		35.898750, 30.880281, 35.254478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.208138, 30.950413, 36.012699>,  <36.400612, 30.453222, 35.490604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.208138, 30.950413, 36.012699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.900810, 30.886053, 35.764893>,  <35.716415, 30.847437, 35.616207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.900810, 30.886053, 35.764893>,  <36.208138, 30.950413, 36.012699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.900810, 30.886053, 35.764893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521927, -0.402791, 0.751899,
		-0.370516, 0.901039, 0.225493,
		-0.768316, -0.160900, -0.619517,
		35.670315, 30.837784, 35.579037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.680965, 31.114059, 36.377026>,  <36.208138, 30.950413, 36.012699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.680965, 31.114059, 36.377026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.492744, 30.891464, 36.103119>,  <35.379810, 30.757908, 35.938774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.492744, 30.891464, 36.103119>,  <35.680965, 31.114059, 36.377026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.492744, 30.891464, 36.103119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.607349, -0.358691, 0.708850,
		-0.640084, 0.749443, -0.169198,
		-0.470552, -0.556486, -0.684766,
		35.351578, 30.724518, 35.897690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.041348, 31.344986, 36.464920>,  <35.680965, 31.114059, 36.377026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.041348, 31.344986, 36.464920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.043743, 30.973703, 36.316116>,  <35.045181, 30.750933, 36.226833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.043743, 30.973703, 36.316116>,  <35.041348, 31.344986, 36.464920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.043743, 30.973703, 36.316116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.523381, -0.319905, 0.789768,
		-0.852078, 0.189972, -0.487723,
		0.005992, -0.928209, -0.372011,
		35.045540, 30.695240, 36.204514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.429237, 31.095222, 36.602089>,  <35.041348, 31.344986, 36.464920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.429237, 31.095222, 36.602089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.606071, 30.754061, 36.491013>,  <34.712173, 30.549364, 36.424366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.606071, 30.754061, 36.491013>,  <34.429237, 31.095222, 36.602089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.606071, 30.754061, 36.491013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.625895, -0.515084, 0.585614,
		-0.642507, -0.085088, -0.761541,
		0.442086, -0.852906, -0.277689,
		34.738697, 30.498188, 36.407707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.893318, 30.585543, 36.513680>,  <34.429237, 31.095222, 36.602089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.893318, 30.585543, 36.513680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.226074, 30.377920, 36.592197>,  <34.425728, 30.253347, 36.639309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.226074, 30.377920, 36.592197>,  <33.893318, 30.585543, 36.513680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.226074, 30.377920, 36.592197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470547, -0.472273, 0.745347,
		-0.294171, -0.712417, -0.637122,
		0.831895, -0.519056, 0.196297,
		34.475643, 30.222204, 36.651085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.771996, 29.815844, 36.466038>,  <33.893318, 30.585543, 36.513680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.771996, 29.815844, 36.466038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.069252, 29.888000, 36.723785>,  <34.247604, 29.931293, 36.878433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.069252, 29.888000, 36.723785>,  <33.771996, 29.815844, 36.466038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.069252, 29.888000, 36.723785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385290, -0.671965, 0.632467,
		0.547082, -0.718277, -0.429859,
		0.743137, 0.180391, 0.644365,
		34.292194, 29.942118, 36.917095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.857285, 29.172922, 36.747215>,  <33.771996, 29.815844, 36.466038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.857285, 29.172922, 36.747215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.052696, 29.424990, 36.988621>,  <34.169945, 29.576229, 37.133465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.052696, 29.424990, 36.988621>,  <33.857285, 29.172922, 36.747215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.052696, 29.424990, 36.988621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304140, -0.525306, 0.794703,
		0.817824, -0.571789, -0.064970,
		0.488531, 0.630167, 0.603512,
		34.199257, 29.614040, 37.169674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.126312, 28.772251, 37.251408>,  <33.857285, 29.172922, 36.747215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.126312, 28.772251, 37.251408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.122341, 29.134193, 37.421646>,  <34.119957, 29.351358, 37.523788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.122341, 29.134193, 37.421646>,  <34.126312, 28.772251, 37.251408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.122341, 29.134193, 37.421646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338245, -0.403571, 0.850130,
		0.941005, -0.135515, 0.310071,
		-0.009930, 0.904857, 0.425600,
		34.119362, 29.405651, 37.549328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.503334, 28.577000, 37.849422>,  <34.126312, 28.772251, 37.251408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.503334, 28.577000, 37.849422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.293503, 28.906109, 37.936928>,  <34.167603, 29.103575, 37.989433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.293503, 28.906109, 37.936928>,  <34.503334, 28.577000, 37.849422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.293503, 28.906109, 37.936928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259818, -0.399416, 0.879182,
		0.810748, 0.404361, 0.423297,
		-0.524578, 0.822775, 0.218765,
		34.136127, 29.152941, 38.002556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.712158, 28.791920, 38.598793>,  <34.503334, 28.577000, 37.849422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.712158, 28.791920, 38.598793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.363991, 28.963596, 38.502327>,  <34.155090, 29.066603, 38.444447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.363991, 28.963596, 38.502327>,  <34.712158, 28.791920, 38.598793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.363991, 28.963596, 38.502327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385983, -0.290878, 0.875447,
		0.305584, 0.855094, 0.418847,
		-0.870422, 0.429190, -0.241165,
		34.102863, 29.092354, 38.429977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.485287, 29.078793, 39.189632>,  <34.712158, 28.791920, 38.598793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.485287, 29.078793, 39.189632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.156120, 29.059183, 38.963215>,  <33.958622, 29.047417, 38.827366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.156120, 29.059183, 38.963215>,  <34.485287, 29.078793, 39.189632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.156120, 29.059183, 38.963215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.555122, -0.142839, 0.819412,
		-0.121025, 0.988531, 0.090329,
		-0.822917, -0.049025, -0.566043,
		33.909245, 29.044476, 38.793404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.041309, 29.581408, 39.423523>,  <34.485287, 29.078793, 39.189632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.041309, 29.581408, 39.423523> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.809181, 29.310417, 39.242741>,  <33.669907, 29.147823, 39.134274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.809181, 29.310417, 39.242741>,  <34.041309, 29.581408, 39.423523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.809181, 29.310417, 39.242741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.546432, -0.087578, 0.832912,
		-0.603858, 0.730313, -0.319371,
		-0.580317, -0.677475, -0.451951,
		33.635086, 29.107174, 39.107155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.399246, 29.767094, 39.594486>,  <34.041309, 29.581408, 39.423523>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.399246, 29.767094, 39.594486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.348850, 29.387957, 39.477375>,  <33.318611, 29.160475, 39.407108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.348850, 29.387957, 39.477375>,  <33.399246, 29.767094, 39.594486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.348850, 29.387957, 39.477375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.577699, -0.169821, 0.798389,
		-0.806468, 0.269724, -0.526173,
		-0.125990, -0.947845, -0.292774,
		33.311054, 29.103603, 39.389542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.703423, 29.671507, 39.744644>,  <33.399246, 29.767094, 39.594486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.703423, 29.671507, 39.744644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.858856, 29.306025, 39.697067>,  <32.952114, 29.086735, 39.668522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.858856, 29.306025, 39.697067>,  <32.703423, 29.671507, 39.744644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.858856, 29.306025, 39.697067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482217, -0.311655, 0.818742,
		-0.785156, -0.260794, -0.561708,
		0.388582, -0.913706, -0.118938,
		32.975430, 29.031914, 39.661385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.117363, 29.134361, 39.657673>,  <32.703423, 29.671507, 39.744644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.117363, 29.134361, 39.657673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.441418, 28.943262, 39.793575>,  <32.635849, 28.828602, 39.875118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.441418, 28.943262, 39.793575>,  <32.117363, 29.134361, 39.657673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.441418, 28.943262, 39.793575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.579310, -0.563563, 0.588895,
		-0.089870, -0.673910, -0.733327,
		0.810138, -0.477748, 0.339756,
		32.684460, 28.799938, 39.895500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.880236, 28.473305, 39.791401>,  <32.117363, 29.134361, 39.657673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.880236, 28.473305, 39.791401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.221668, 28.448242, 39.998272>,  <32.426529, 28.433205, 40.122395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.221668, 28.448242, 39.998272>,  <31.880236, 28.473305, 39.791401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.221668, 28.448242, 39.998272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463998, -0.542817, 0.700040,
		0.236874, -0.837510, -0.492410,
		0.853579, -0.062656, 0.517182,
		32.477741, 28.429445, 40.153427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.934305, 27.853172, 40.111988>,  <31.880236, 28.473305, 39.791401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.934305, 27.853172, 40.111988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.219246, 28.026041, 40.333179>,  <32.390209, 28.129763, 40.465893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.219246, 28.026041, 40.333179>,  <31.934305, 27.853172, 40.111988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.219246, 28.026041, 40.333179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216266, -0.614402, 0.758775,
		0.667671, -0.660104, -0.344206,
		0.712351, 0.432172, 0.552976,
		32.432953, 28.155693, 40.499073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.419853, 27.322420, 40.420471>,  <31.934305, 27.853172, 40.111988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.419853, 27.322420, 40.420471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.439396, 27.652430, 40.645664>,  <32.451122, 27.850435, 40.780781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.439396, 27.652430, 40.645664>,  <32.419853, 27.322420, 40.420471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.439396, 27.652430, 40.645664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190771, -0.545572, 0.816062,
		0.980418, -0.147272, 0.130734,
		0.048858, 0.825022, 0.562984,
		32.454052, 27.899937, 40.814560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.774467, 27.106144, 40.918053>,  <32.419853, 27.322420, 40.420471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.774467, 27.106144, 40.918053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.583431, 27.431255, 41.051498>,  <32.468811, 27.626322, 41.131565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.583431, 27.431255, 41.051498>,  <32.774467, 27.106144, 40.918053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.583431, 27.431255, 41.051498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149077, -0.449180, 0.880916,
		0.865844, 0.370981, 0.335690,
		-0.477588, 0.812780, 0.333615,
		32.440155, 27.675089, 41.151585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.022457, 27.242666, 41.610920>,  <32.774467, 27.106144, 40.918053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.022457, 27.242666, 41.610920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.700489, 27.479677, 41.623684>,  <32.507309, 27.621883, 41.631344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.700489, 27.479677, 41.623684>,  <33.022457, 27.242666, 41.610920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.700489, 27.479677, 41.623684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281171, -0.428208, 0.858825,
		0.522539, 0.682313, 0.511274,
		-0.804920, 0.592525, 0.031909,
		32.459015, 27.657434, 41.633255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.943890, 27.646833, 42.255207>,  <33.022457, 27.242666, 41.610920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.943890, 27.646833, 42.255207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.570419, 27.588528, 42.124363>,  <32.346336, 27.553545, 42.045856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.570419, 27.588528, 42.124363>,  <32.943890, 27.646833, 42.255207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.570419, 27.588528, 42.124363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203962, -0.534346, 0.820289,
		-0.294358, 0.832602, 0.469177,
		-0.933677, -0.145764, -0.327108,
		32.290318, 27.544798, 42.026230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.106773, 28.199898, 42.778244>,  <32.943890, 27.646833, 42.255207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.106773, 28.199898, 42.778244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.441864, 28.049658, 42.936806>,  <33.642918, 27.959515, 43.031940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.441864, 28.049658, 42.936806>,  <33.106773, 28.199898, 42.778244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.441864, 28.049658, 42.936806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537883, 0.442197, -0.717735,
		0.094293, 0.814486, 0.572470,
		0.837730, -0.375599, 0.396402,
		33.693184, 27.936977, 43.055725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.620586, 28.764851, 42.827721>,  <33.106773, 28.199898, 42.778244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.620586, 28.764851, 42.827721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.839886, 28.431303, 42.853294>,  <33.971466, 28.231174, 42.868637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.839886, 28.431303, 42.853294>,  <33.620586, 28.764851, 42.827721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.839886, 28.431303, 42.853294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.734949, 0.443904, -0.512639,
		0.399096, 0.328038, 0.856221,
		0.548245, -0.833870, 0.063931,
		34.004360, 28.181143, 42.872475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.320553, 28.994694, 42.878876>,  <33.620586, 28.764851, 42.827721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.320553, 28.994694, 42.878876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.320282, 28.605993, 42.784470>,  <34.320118, 28.372774, 42.727825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.320282, 28.605993, 42.784470>,  <34.320553, 28.994694, 42.878876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.320282, 28.605993, 42.784470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.717108, 0.164018, -0.677388,
		0.696962, -0.169709, 0.696737,
		-0.000681, -0.971749, -0.236014,
		34.320076, 28.314468, 42.713665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.000813, 28.885626, 42.777969>,  <34.320553, 28.994694, 42.878876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.000813, 28.885626, 42.777969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.852573, 28.563808, 42.592339>,  <34.763630, 28.370718, 42.480961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.852573, 28.563808, 42.592339>,  <35.000813, 28.885626, 42.777969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.852573, 28.563808, 42.592339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.790020, -0.010316, -0.612994,
		0.488394, -0.593803, 0.639429,
		-0.370594, -0.804545, -0.464078,
		34.741394, 28.322445, 42.453114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.580643, 28.481441, 42.702133>,  <35.000813, 28.885626, 42.777969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.580643, 28.481441, 42.702133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.321999, 28.342384, 42.430534>,  <35.166813, 28.258949, 42.267574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.321999, 28.342384, 42.430534>,  <35.580643, 28.481441, 42.702133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.321999, 28.342384, 42.430534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.722602, 0.006063, -0.691237,
		0.244421, -0.937607, 0.247288,
		-0.646610, -0.347644, -0.678999,
		35.128017, 28.238091, 42.226833>
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
