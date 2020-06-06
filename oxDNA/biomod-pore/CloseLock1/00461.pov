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
	<24.053207, 34.623253, 35.395908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.289396, 34.849300, 35.165436>,  <24.431108, 34.984928, 35.027153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.289396, 34.849300, 35.165436>,  <24.053207, 34.623253, 35.395908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.289396, 34.849300, 35.165436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.795957, -0.525783, 0.300007,
		-0.133403, -0.635758, -0.760273,
		0.590471, 0.565123, -0.576177,
		24.466537, 35.018837, 34.992584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.416414, 34.298714, 34.788372>,  <24.053207, 34.623253, 35.395908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.416414, 34.298714, 34.788372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.601248, 34.597290, 34.979912>,  <24.712149, 34.776436, 35.094837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.601248, 34.597290, 34.979912>,  <24.416414, 34.298714, 34.788372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.601248, 34.597290, 34.979912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.785990, -0.594781, 0.168689,
		0.410729, 0.298425, -0.861536,
		0.462084, 0.746444, 0.478853,
		24.739874, 34.821224, 35.123569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.145988, 34.618622, 34.470833>,  <24.416414, 34.298714, 34.788372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.145988, 34.618622, 34.470833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.119349, 34.627975, 34.869835>,  <25.103365, 34.633587, 35.109238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.119349, 34.627975, 34.869835>,  <25.145988, 34.618622, 34.470833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.119349, 34.627975, 34.869835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.837439, -0.542205, 0.068622,
		0.542457, 0.839921, 0.016528,
		-0.066599, 0.023383, 0.997506,
		25.099369, 34.634991, 35.169086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.865622, 34.966473, 34.714695>,  <25.145988, 34.618622, 34.470833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.865622, 34.966473, 34.714695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.701714, 34.676788, 34.936543>,  <25.603369, 34.502975, 35.069653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.701714, 34.676788, 34.936543>,  <25.865622, 34.966473, 34.714695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.701714, 34.676788, 34.936543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.830849, -0.547294, -0.100792,
		0.376535, 0.419503, 0.825978,
		-0.409770, -0.724214, 0.554619,
		25.578783, 34.459522, 35.102928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.203775, 34.768166, 35.402157>,  <25.865622, 34.966473, 34.714695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.203775, 34.768166, 35.402157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.030327, 34.458572, 35.217583>,  <25.926258, 34.272816, 35.106838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.030327, 34.458572, 35.217583>,  <26.203775, 34.768166, 35.402157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.030327, 34.458572, 35.217583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.867949, -0.496364, 0.016941,
		-0.242150, -0.393153, 0.887015,
		-0.433622, -0.773986, -0.461431,
		25.900240, 34.226376, 35.079155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.271608, 34.113918, 35.789932>,  <26.203775, 34.768166, 35.402157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.271608, 34.113918, 35.789932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.276821, 34.033920, 35.398048>,  <26.279949, 33.985920, 35.162918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.276821, 34.033920, 35.398048>,  <26.271608, 34.113918, 35.789932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.276821, 34.033920, 35.398048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.673735, -0.722233, 0.156398,
		-0.738858, -0.662103, 0.125332,
		0.013033, -0.199997, -0.979710,
		26.280731, 33.973923, 35.104134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.098816, 33.413300, 35.537270>,  <26.271608, 34.113918, 35.789932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.098816, 33.413300, 35.537270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.335279, 33.529087, 35.236141>,  <26.477158, 33.598560, 35.055462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.335279, 33.529087, 35.236141>,  <26.098816, 33.413300, 35.537270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.335279, 33.529087, 35.236141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.694812, -0.656770, 0.293070,
		-0.409597, -0.696321, -0.589380,
		0.591158, 0.289467, -0.752822,
		26.512627, 33.615929, 35.010296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.149885, 33.054909, 34.741409>,  <26.098816, 33.413300, 35.537270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.149885, 33.054909, 34.741409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.505121, 33.194527, 34.861050>,  <26.718264, 33.278297, 34.932835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.505121, 33.194527, 34.861050>,  <26.149885, 33.054909, 34.741409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.505121, 33.194527, 34.861050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289122, -0.930026, 0.226847,
		0.357352, -0.114984, -0.926865,
		0.888092, 0.349041, 0.299102,
		26.771549, 33.299240, 34.950779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.618542, 32.707588, 34.393677>,  <26.149885, 33.054909, 34.741409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.618542, 32.707588, 34.393677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.793484, 32.838425, 34.728756>,  <26.898449, 32.916927, 34.929802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.793484, 32.838425, 34.728756>,  <26.618542, 32.707588, 34.393677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.793484, 32.838425, 34.728756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486362, -0.869554, 0.085603,
		0.756421, 0.369984, -0.539388,
		0.437355, 0.327090, 0.837695,
		26.924690, 32.936550, 34.980064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.279867, 32.438404, 34.388451>,  <26.618542, 32.707588, 34.393677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.279867, 32.438404, 34.388451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.219452, 32.521465, 34.775040>,  <27.183203, 32.571301, 35.006992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.219452, 32.521465, 34.775040>,  <27.279867, 32.438404, 34.388451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.219452, 32.521465, 34.775040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377662, -0.891404, 0.250541,
		0.913542, 0.402841, 0.056213,
		-0.151037, 0.207650, 0.966473,
		27.174141, 32.583759, 35.064980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.766645, 32.092049, 34.666901>,  <27.279867, 32.438404, 34.388451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.766645, 32.092049, 34.666901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.510700, 32.144005, 34.969875>,  <27.357134, 32.175179, 35.151661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.510700, 32.144005, 34.969875>,  <27.766645, 32.092049, 34.666901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.510700, 32.144005, 34.969875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322378, -0.849328, 0.417988,
		0.697603, 0.511635, 0.501578,
		-0.639861, 0.129892, 0.757434,
		27.318741, 32.182972, 35.197105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.085846, 31.914053, 35.291344>,  <27.766645, 32.092049, 34.666901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.085846, 31.914053, 35.291344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.708914, 31.900959, 35.424576>,  <27.482754, 31.893103, 35.504513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.708914, 31.900959, 35.424576>,  <28.085846, 31.914053, 35.291344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.708914, 31.900959, 35.424576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232446, -0.780027, 0.580970,
		0.240791, 0.624889, 0.742653,
		-0.942331, -0.032734, 0.333077,
		27.426214, 31.891138, 35.524498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.134060, 31.965675, 36.062447>,  <28.085846, 31.914053, 35.291344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.134060, 31.965675, 36.062447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.782871, 31.814983, 35.944302>,  <27.572157, 31.724567, 35.873417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.782871, 31.814983, 35.944302>,  <28.134060, 31.965675, 36.062447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.782871, 31.814983, 35.944302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047118, -0.682001, 0.729832,
		-0.476386, 0.626856, 0.616529,
		-0.877973, -0.376731, -0.295360,
		27.519480, 31.701963, 35.855694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.690500, 31.952515, 36.593323>,  <28.134060, 31.965675, 36.062447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.690500, 31.952515, 36.593323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.525476, 31.667448, 36.366379>,  <27.426462, 31.496408, 36.230213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.525476, 31.667448, 36.366379>,  <27.690500, 31.952515, 36.593323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.525476, 31.667448, 36.366379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022744, -0.614586, 0.788522,
		-0.910645, 0.338218, 0.237346,
		-0.412562, -0.712666, -0.567363,
		27.401709, 31.453648, 36.196171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.198385, 31.531702, 36.995911>,  <27.690500, 31.952515, 36.593323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.198385, 31.531702, 36.995911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.282766, 31.284840, 36.692696>,  <27.333395, 31.136723, 36.510769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.282766, 31.284840, 36.692696>,  <27.198385, 31.531702, 36.995911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.282766, 31.284840, 36.692696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041473, -0.769138, 0.637736,
		-0.976617, -0.165969, -0.136655,
		0.210951, -0.617156, -0.758036,
		27.346052, 31.099693, 36.465286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.770065, 30.984138, 37.121796>,  <27.198385, 31.531702, 36.995911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.770065, 30.984138, 37.121796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.032675, 30.844803, 36.854176>,  <27.190241, 30.761202, 36.693604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.032675, 30.844803, 36.854176>,  <26.770065, 30.984138, 37.121796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.032675, 30.844803, 36.854176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174744, -0.792618, 0.584142,
		-0.733783, -0.500418, -0.459504,
		0.656526, -0.348338, -0.669054,
		27.229633, 30.740301, 36.653458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.566135, 30.324097, 36.926445>,  <26.770065, 30.984138, 37.121796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.566135, 30.324097, 36.926445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.956104, 30.358744, 36.844440>,  <27.190084, 30.379532, 36.795238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.956104, 30.358744, 36.844440>,  <26.566135, 30.324097, 36.926445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.956104, 30.358744, 36.844440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200466, -0.741875, 0.639871,
		-0.096665, -0.664920, -0.740633,
		0.974920, 0.086618, -0.205007,
		27.248581, 30.384729, 36.782940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.809120, 29.609951, 36.906689>,  <26.566135, 30.324097, 36.926445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.809120, 29.609951, 36.906689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.147429, 29.821276, 36.936504>,  <27.350414, 29.948071, 36.954391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.147429, 29.821276, 36.936504>,  <26.809120, 29.609951, 36.906689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.147429, 29.821276, 36.936504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402895, -0.723992, 0.559921,
		0.349777, -0.443535, -0.825187,
		0.845773, 0.528311, 0.074537,
		27.401161, 29.979769, 36.958866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.315029, 29.076565, 36.753616>,  <26.809120, 29.609951, 36.906689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.315029, 29.076565, 36.753616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.491337, 29.370752, 36.959454>,  <27.597122, 29.547266, 37.082954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.491337, 29.370752, 36.959454>,  <27.315029, 29.076565, 36.753616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.491337, 29.370752, 36.959454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429984, -0.676229, 0.598187,
		0.787932, -0.042394, -0.614301,
		0.440768, 0.735470, 0.514594,
		27.623568, 29.591393, 37.113831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.089739, 28.851095, 36.806099>,  <27.315029, 29.076565, 36.753616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.089739, 28.851095, 36.806099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.030231, 29.124111, 37.092316>,  <27.994526, 29.287922, 37.264046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.030231, 29.124111, 37.092316>,  <28.089739, 28.851095, 36.806099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.030231, 29.124111, 37.092316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448601, -0.598272, 0.663949,
		0.881263, 0.419770, -0.217183,
		-0.148771, 0.682542, 0.715544,
		27.985600, 29.328875, 37.306980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.764095, 28.906401, 37.171761>,  <28.089739, 28.851095, 36.806099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.764095, 28.906401, 37.171761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.482351, 29.050133, 37.416630>,  <28.313305, 29.136372, 37.563553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.482351, 29.050133, 37.416630>,  <28.764095, 28.906401, 37.171761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.482351, 29.050133, 37.416630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486195, -0.384145, 0.784887,
		0.517198, 0.850479, 0.095871,
		-0.704358, 0.359330, 0.612178,
		28.271044, 29.157932, 37.600285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.132122, 29.061335, 37.749191>,  <28.764095, 28.906401, 37.171761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.132122, 29.061335, 37.749191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.754091, 29.080395, 37.878532>,  <28.527273, 29.091831, 37.956139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.754091, 29.080395, 37.878532>,  <29.132122, 29.061335, 37.749191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.754091, 29.080395, 37.878532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245094, -0.551191, 0.797570,
		0.216232, 0.833018, 0.509240,
		-0.945078, 0.047648, 0.323352,
		28.470568, 29.094688, 37.975536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.032780, 29.396709, 38.463329>,  <29.132122, 29.061335, 37.749191>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.032780, 29.396709, 38.463329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.731028, 29.143723, 38.393024>,  <28.549976, 28.991930, 38.350842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.731028, 29.143723, 38.393024>,  <29.032780, 29.396709, 38.463329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.731028, 29.143723, 38.393024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208651, -0.484898, 0.849316,
		-0.622396, 0.604033, 0.497763,
		-0.754380, -0.632470, -0.175766,
		28.504713, 28.953981, 38.340294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.671637, 29.309275, 39.075447>,  <29.032780, 29.396709, 38.463329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.671637, 29.309275, 39.075447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.568205, 28.979689, 38.873768>,  <28.506145, 28.781937, 38.752758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.568205, 28.979689, 38.873768>,  <28.671637, 29.309275, 39.075447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.568205, 28.979689, 38.873768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042025, -0.511862, 0.858039,
		-0.965075, 0.243062, 0.097731,
		-0.258581, -0.823965, -0.504200,
		28.490631, 28.732498, 38.722507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.176125, 29.018223, 39.563423>,  <28.671637, 29.309275, 39.075447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.176125, 29.018223, 39.563423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.273270, 28.733595, 39.299698>,  <28.331556, 28.562819, 39.141464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.273270, 28.733595, 39.299698>,  <28.176125, 29.018223, 39.563423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.273270, 28.733595, 39.299698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137327, -0.698033, 0.702774,
		-0.960291, -0.080135, -0.267243,
		0.242861, -0.711568, -0.659310,
		28.346128, 28.520124, 39.101906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.639938, 28.820158, 40.206310>,  <28.176125, 29.018223, 39.563423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.639938, 28.820158, 40.206310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.732029, 28.551708, 40.488186>,  <28.787283, 28.390638, 40.657310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.732029, 28.551708, 40.488186>,  <28.639938, 28.820158, 40.206310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.732029, 28.551708, 40.488186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466519, -0.711625, -0.525310,
		0.854023, -0.207811, -0.476927,
		0.230227, -0.671122, 0.704691,
		28.801098, 28.350372, 40.699593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.041994, 28.220495, 39.944553>,  <28.639938, 28.820158, 40.206310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.041994, 28.220495, 39.944553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.823486, 28.102400, 40.258095>,  <28.692381, 28.031542, 40.446220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.823486, 28.102400, 40.258095>,  <29.041994, 28.220495, 39.944553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.823486, 28.102400, 40.258095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448687, -0.687085, -0.571485,
		0.707297, -0.663889, 0.242864,
		-0.546270, -0.295240, 0.783851,
		28.659605, 28.013828, 40.493252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.120024, 27.472725, 40.083900>,  <29.041994, 28.220495, 39.944553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.120024, 27.472725, 40.083900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.745565, 27.596884, 40.149979>,  <28.520891, 27.671379, 40.189625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.745565, 27.596884, 40.149979>,  <29.120024, 27.472725, 40.083900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.745565, 27.596884, 40.149979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344244, -0.713365, -0.610415,
		-0.071627, -0.628303, 0.774664,
		-0.936144, 0.310396, 0.165193,
		28.464722, 27.690002, 40.199535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.816919, 26.700361, 39.920490>,  <29.120024, 27.472725, 40.083900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.816919, 26.700361, 39.920490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.965136, 26.680477, 39.549496>,  <29.054066, 26.668547, 39.326900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.965136, 26.680477, 39.549496>,  <28.816919, 26.700361, 39.920490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.965136, 26.680477, 39.549496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.834818, -0.419912, 0.356025,
		-0.407159, -0.906203, -0.114097,
		0.370541, -0.049709, -0.927485,
		29.076298, 26.665564, 39.271252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.212841, 26.073105, 39.821915>,  <28.816919, 26.700361, 39.920490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.212841, 26.073105, 39.821915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.357655, 26.345715, 39.567528>,  <29.444542, 26.509281, 39.414894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.357655, 26.345715, 39.567528>,  <29.212841, 26.073105, 39.821915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.357655, 26.345715, 39.567528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.910838, -0.113526, 0.396845,
		0.198260, -0.722937, -0.661858,
		0.362032, 0.681524, -0.635970,
		29.466265, 26.550171, 39.376736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.568975, 25.801270, 39.346840>,  <29.212841, 26.073105, 39.821915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.568975, 25.801270, 39.346840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.700356, 26.178619, 39.365448>,  <29.779182, 26.405029, 39.376614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.700356, 26.178619, 39.365448>,  <29.568975, 25.801270, 39.346840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.700356, 26.178619, 39.365448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.929106, -0.331559, 0.163797,
		0.169948, -0.010572, -0.985396,
		0.328449, 0.943375, 0.046525,
		29.798891, 26.461632, 39.379406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.094761, 25.760277, 38.945385>,  <29.568975, 25.801270, 39.346840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.094761, 25.760277, 38.945385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.125322, 26.061739, 39.206509>,  <30.143660, 26.242617, 39.363182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.125322, 26.061739, 39.206509>,  <30.094761, 25.760277, 38.945385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.125322, 26.061739, 39.206509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.861850, -0.379144, 0.336846,
		0.501376, 0.536889, -0.678508,
		0.076404, 0.753658, 0.652811,
		30.148243, 26.287836, 39.402351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.495016, 25.290483, 39.423534>,  <30.094761, 25.760277, 38.945385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.495016, 25.290483, 39.423534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.890297, 25.349802, 39.438843>,  <31.127466, 25.385393, 39.448029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.890297, 25.349802, 39.438843>,  <30.495016, 25.290483, 39.423534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.890297, 25.349802, 39.438843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092940, 0.779261, -0.619770,
		-0.121734, 0.608901, 0.783850,
		0.988202, 0.148298, 0.038272,
		31.186758, 25.394291, 39.450325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.642017, 25.943676, 39.563446>,  <30.495016, 25.290483, 39.423534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.642017, 25.943676, 39.563446> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.998497, 25.833567, 39.419231>,  <31.212385, 25.767502, 39.332703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.998497, 25.833567, 39.419231>,  <30.642017, 25.943676, 39.563446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.998497, 25.833567, 39.419231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044959, 0.844505, -0.533657,
		0.451375, 0.459386, 0.765000,
		0.891201, -0.275273, -0.360535,
		31.265858, 25.750984, 39.311069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.233776, 26.468830, 39.682541>,  <30.642017, 25.943676, 39.563446>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.233776, 26.468830, 39.682541> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.250814, 26.254585, 39.345184>,  <31.261038, 26.126038, 39.142773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.250814, 26.254585, 39.345184>,  <31.233776, 26.468830, 39.682541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.250814, 26.254585, 39.345184> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010495, 0.844349, -0.535691,
		0.999037, 0.013968, 0.041589,
		0.042598, -0.535612, -0.843389,
		31.263594, 26.093903, 39.092167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.716705, 26.690893, 39.254463>,  <31.233776, 26.468830, 39.682541>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.716705, 26.690893, 39.254463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.437311, 26.524170, 39.021778>,  <31.269674, 26.424137, 38.882168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.437311, 26.524170, 39.021778>,  <31.716705, 26.690893, 39.254463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.437311, 26.524170, 39.021778> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034390, 0.831486, -0.554480,
		0.714796, -0.367292, -0.595116,
		-0.698487, -0.416806, -0.581712,
		31.227766, 26.399128, 38.847263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.894648, 26.810059, 38.548679>,  <31.716705, 26.690893, 39.254463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.894648, 26.810059, 38.548679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.501617, 26.757772, 38.601532>,  <31.265799, 26.726400, 38.633244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.501617, 26.757772, 38.601532>,  <31.894648, 26.810059, 38.548679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.501617, 26.757772, 38.601532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179741, 0.849226, -0.496496,
		-0.047310, -0.511594, -0.857924,
		-0.982576, -0.130715, 0.132132,
		31.206844, 26.718557, 38.641171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.693563, 27.051489, 37.925179>,  <31.894648, 26.810059, 38.548679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.693563, 27.051489, 37.925179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.345465, 27.019230, 38.119568>,  <31.136606, 26.999874, 38.236202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.345465, 27.019230, 38.119568>,  <31.693563, 27.051489, 37.925179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.345465, 27.019230, 38.119568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362925, 0.772026, -0.521786,
		-0.333103, -0.630454, -0.701121,
		-0.870246, -0.080646, 0.485972,
		31.084391, 26.995037, 38.265358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.126427, 27.114489, 37.527313>,  <31.693563, 27.051489, 37.925179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.126427, 27.114489, 37.527313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.978132, 27.260660, 37.868843>,  <30.889156, 27.348362, 38.073761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.978132, 27.260660, 37.868843>,  <31.126427, 27.114489, 37.527313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.978132, 27.260660, 37.868843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242212, 0.849482, -0.468737,
		-0.896599, -0.380583, -0.226421,
		-0.370734, 0.365427, 0.853826,
		30.866913, 27.370289, 38.124992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.539654, 27.528561, 37.396122>,  <31.126427, 27.114489, 37.527313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.539654, 27.528561, 37.396122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.586336, 27.649830, 37.774426>,  <30.614346, 27.722591, 38.001408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.586336, 27.649830, 37.774426>,  <30.539654, 27.528561, 37.396122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.586336, 27.649830, 37.774426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086159, 0.951769, -0.294468,
		-0.989422, -0.047120, 0.137197,
		0.116704, 0.303174, 0.945762,
		30.621347, 27.740782, 38.058155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.980469, 28.002733, 37.546913>,  <30.539654, 27.528561, 37.396122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.980469, 28.002733, 37.546913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.273293, 28.063307, 37.812592>,  <30.448988, 28.099651, 37.971996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.273293, 28.063307, 37.812592>,  <29.980469, 28.002733, 37.546913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.273293, 28.063307, 37.812592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003239, 0.975742, -0.218899,
		-0.681231, 0.158096, 0.714794,
		0.732062, 0.151436, 0.664193,
		30.492910, 28.108738, 38.011848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.795319, 28.655106, 37.572990>,  <29.980469, 28.002733, 37.546913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.795319, 28.655106, 37.572990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.153252, 28.646545, 37.751347>,  <30.368011, 28.641409, 37.858360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.153252, 28.646545, 37.751347>,  <29.795319, 28.655106, 37.572990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.153252, 28.646545, 37.751347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099711, 0.983196, -0.152913,
		-0.435122, 0.181291, 0.881931,
		0.894833, -0.021403, 0.445887,
		30.421701, 28.640125, 37.885113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.857412, 29.196465, 38.174816>,  <29.795319, 28.655106, 37.572990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.857412, 29.196465, 38.174816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.209480, 29.107780, 38.006939>,  <30.420721, 29.054569, 37.906212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.209480, 29.107780, 38.006939>,  <29.857412, 29.196465, 38.174816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.209480, 29.107780, 38.006939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049005, 0.921926, -0.384253,
		0.472121, 0.317641, 0.822317,
		0.880171, -0.221712, -0.419694,
		30.473532, 29.041267, 37.881031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.247141, 29.693195, 38.431442>,  <29.857412, 29.196465, 38.174816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.247141, 29.693195, 38.431442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.415503, 29.538647, 38.103161>,  <30.516520, 29.445917, 37.906193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.415503, 29.538647, 38.103161>,  <30.247141, 29.693195, 38.431442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.415503, 29.538647, 38.103161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139225, 0.866516, -0.479340,
		0.896357, 0.316019, 0.310927,
		0.420903, -0.386371, -0.820706,
		30.541773, 29.422735, 37.856949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.726395, 30.228039, 38.192551>,  <30.247141, 29.693195, 38.431442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.726395, 30.228039, 38.192551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.713825, 29.998657, 37.865097>,  <30.706284, 29.861029, 37.668625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.713825, 29.998657, 37.865097>,  <30.726395, 30.228039, 38.192551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.713825, 29.998657, 37.865097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019239, 0.819236, -0.573133,
		0.999321, -0.002261, -0.036777,
		-0.031425, -0.573452, -0.818636,
		30.704397, 29.826622, 37.619507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.118689, 30.540882, 37.827541>,  <30.726395, 30.228039, 38.192551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.118689, 30.540882, 37.827541> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.926424, 30.324810, 37.551231>,  <30.811066, 30.195168, 37.385445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.926424, 30.324810, 37.551231>,  <31.118689, 30.540882, 37.827541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.926424, 30.324810, 37.551231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008989, 0.790736, -0.612091,
		0.876860, -0.287999, -0.384932,
		-0.480661, -0.540179, -0.690777,
		30.782227, 30.162756, 37.343998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.452089, 30.656542, 37.140087>,  <31.118689, 30.540882, 37.827541>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.452089, 30.656542, 37.140087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.086788, 30.520878, 37.049805>,  <30.867607, 30.439480, 36.995636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.086788, 30.520878, 37.049805>,  <31.452089, 30.656542, 37.140087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.086788, 30.520878, 37.049805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156022, 0.802947, -0.575268,
		0.376337, -0.490149, -0.786209,
		-0.913251, -0.339160, -0.225704,
		30.812813, 30.419130, 36.982094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.378376, 30.856171, 36.476616>,  <31.452089, 30.656542, 37.140087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.378376, 30.856171, 36.476616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.004303, 30.779699, 36.595871>,  <30.779860, 30.733816, 36.667423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.004303, 30.779699, 36.595871>,  <31.378376, 30.856171, 36.476616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.004303, 30.779699, 36.595871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339065, 0.726484, -0.597709,
		-0.102321, -0.660054, -0.744217,
		-0.935182, -0.191179, 0.298136,
		30.723749, 30.722345, 36.685310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.932297, 30.634457, 35.906574>,  <31.378376, 30.856171, 36.476616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.932297, 30.634457, 35.906574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.696262, 30.795721, 36.186363>,  <30.554642, 30.892481, 36.354237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.696262, 30.795721, 36.186363>,  <30.932297, 30.634457, 35.906574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.696262, 30.795721, 36.186363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314999, 0.682748, -0.659265,
		-0.743352, -0.609356, -0.275886,
		-0.590088, 0.403163, 0.699469,
		30.519236, 30.916670, 36.396202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.317356, 30.823675, 35.524834>,  <30.932297, 30.634457, 35.906574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.317356, 30.823675, 35.524834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.292822, 31.018934, 35.873074>,  <30.278101, 31.136089, 36.082020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.292822, 31.018934, 35.873074>,  <30.317356, 30.823675, 35.524834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.292822, 31.018934, 35.873074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360499, 0.802533, -0.475375,
		-0.930741, -0.343009, 0.126753,
		-0.061334, 0.488145, 0.870604,
		30.274422, 31.165379, 36.134254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.811401, 31.202181, 35.438770>,  <30.317356, 30.823675, 35.524834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.811401, 31.202181, 35.438770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.941210, 31.386179, 35.769367>,  <30.019094, 31.496578, 35.967724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.941210, 31.386179, 35.769367>,  <29.811401, 31.202181, 35.438770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.941210, 31.386179, 35.769367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477769, 0.833840, -0.276491,
		-0.816346, -0.305144, 0.490373,
		0.324523, 0.459997, 0.826491,
		30.038567, 31.524178, 36.017315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.261843, 31.650387, 35.801525>,  <29.811401, 31.202181, 35.438770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.261843, 31.650387, 35.801525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.612980, 31.800020, 35.921158>,  <29.823662, 31.889801, 35.992939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.612980, 31.800020, 35.921158>,  <29.261843, 31.650387, 35.801525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.612980, 31.800020, 35.921158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293495, 0.913634, -0.281307,
		-0.378487, 0.159164, 0.911819,
		0.877843, 0.374086, 0.299085,
		29.876333, 31.912247, 36.010883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.019697, 32.395531, 35.987690>,  <29.261843, 31.650387, 35.801525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.019697, 32.395531, 35.987690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.417809, 32.422501, 35.959766>,  <29.656675, 32.438683, 35.943012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.417809, 32.422501, 35.959766>,  <29.019697, 32.395531, 35.987690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.417809, 32.422501, 35.959766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088518, 0.925569, -0.368084,
		0.039796, 0.372526, 0.927168,
		0.995279, 0.067423, -0.069809,
		29.716393, 32.442726, 35.938824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.355227, 32.949936, 36.392796>,  <29.019697, 32.395531, 35.987690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.355227, 32.949936, 36.392796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.624104, 32.867573, 36.108330>,  <29.785429, 32.818153, 35.937649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.624104, 32.867573, 36.108330>,  <29.355227, 32.949936, 36.392796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.624104, 32.867573, 36.108330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090408, 0.930531, -0.354878,
		0.734837, 0.302841, 0.606879,
		0.672191, -0.205911, -0.711168,
		29.825762, 32.805801, 35.894978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.768150, 33.440620, 36.454952>,  <29.355227, 32.949936, 36.392796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.768150, 33.440620, 36.454952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.809492, 33.298264, 36.083435>,  <29.834297, 33.212849, 35.860523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.809492, 33.298264, 36.083435>,  <29.768150, 33.440620, 36.454952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.809492, 33.298264, 36.083435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004840, 0.933604, -0.358274,
		0.994633, 0.041525, 0.094770,
		0.103355, -0.355893, -0.928794,
		29.840498, 33.191494, 35.804798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.408134, 33.767441, 36.096924>,  <29.768150, 33.440620, 36.454952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.408134, 33.767441, 36.096924> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.208893, 33.641453, 35.773766>,  <30.089348, 33.565861, 35.579872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.208893, 33.641453, 35.773766>,  <30.408134, 33.767441, 36.096924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.208893, 33.641453, 35.773766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028010, 0.925367, -0.378037,
		0.866665, -0.210930, -0.452106,
		-0.498103, -0.314968, -0.807892,
		30.059462, 33.546963, 35.531399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.787846, 34.021030, 35.508762>,  <30.408134, 33.767441, 36.096924>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.787846, 34.021030, 35.508762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.423992, 33.929676, 35.369965>,  <30.205679, 33.874863, 35.286686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.423992, 33.929676, 35.369965>,  <30.787846, 34.021030, 35.508762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.423992, 33.929676, 35.369965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072089, 0.909420, -0.409584,
		0.409103, -0.347558, -0.843705,
		-0.909636, -0.228384, -0.346991,
		30.151102, 33.861160, 35.265865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.673992, 34.365772, 34.890652>,  <30.787846, 34.021030, 35.508762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.673992, 34.365772, 34.890652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.298355, 34.289825, 35.005234>,  <30.072973, 34.244259, 35.073982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.298355, 34.289825, 35.005234>,  <30.673992, 34.365772, 34.890652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.298355, 34.289825, 35.005234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282978, 0.900193, -0.331022,
		-0.195019, -0.391922, -0.899091,
		-0.939090, -0.189868, 0.286460,
		30.016628, 34.232864, 35.091171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.983841, 35.059017, 35.142227>,  <30.673992, 34.365772, 34.890652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.983841, 35.059017, 35.142227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.372942, 35.097431, 35.057819>,  <31.606403, 35.120480, 35.007175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.372942, 35.097431, 35.057819>,  <30.983841, 35.059017, 35.142227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.372942, 35.097431, 35.057819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224803, -0.168097, 0.959795,
		0.056704, -0.981081, -0.185106,
		0.972753, 0.096037, -0.211018,
		31.664768, 35.126244, 34.994514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.384283, 34.450497, 35.422382>,  <30.983841, 35.059017, 35.142227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.384283, 34.450497, 35.422382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.647427, 34.744671, 35.357441>,  <31.805313, 34.921177, 35.318474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.647427, 34.744671, 35.357441>,  <31.384283, 34.450497, 35.422382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.647427, 34.744671, 35.357441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307058, -0.065063, 0.949464,
		0.687706, -0.674465, -0.268623,
		0.657857, 0.735435, -0.162356,
		31.844784, 34.965302, 35.308735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.166443, 34.234226, 35.341255>,  <31.384283, 34.450497, 35.422382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.166443, 34.234226, 35.341255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.080276, 34.594624, 35.491882>,  <32.028576, 34.810863, 35.582256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.080276, 34.594624, 35.491882>,  <32.166443, 34.234226, 35.341255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.080276, 34.594624, 35.491882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396890, -0.271551, 0.876777,
		0.892229, 0.338330, -0.299099,
		-0.215420, 0.900996, 0.376565,
		32.015652, 34.864922, 35.604851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.754070, 34.394165, 35.728104>,  <32.166443, 34.234226, 35.341255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.754070, 34.394165, 35.728104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.427784, 34.579044, 35.867233>,  <32.232014, 34.689972, 35.950710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.427784, 34.579044, 35.867233>,  <32.754070, 34.394165, 35.728104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.427784, 34.579044, 35.867233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275104, -0.218970, 0.936146,
		0.508846, 0.859318, 0.051465,
		-0.815717, 0.462196, 0.347824,
		32.183067, 34.717705, 35.971581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.118626, 33.865868, 35.415703>,  <32.754070, 34.394165, 35.728104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.118626, 33.865868, 35.415703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.252277, 33.495903, 35.488243>,  <33.332470, 33.273922, 35.531765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.252277, 33.495903, 35.488243>,  <33.118626, 33.865868, 35.415703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.252277, 33.495903, 35.488243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456232, 0.009647, 0.889809,
		-0.824747, -0.380050, -0.418753,
		0.334132, -0.924916, 0.181347,
		33.352516, 33.218430, 35.542648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.504807, 33.610401, 35.733925>,  <33.118626, 33.865868, 35.415703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.504807, 33.610401, 35.733925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.833267, 33.401009, 35.824852>,  <33.030346, 33.275372, 35.879406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.833267, 33.401009, 35.824852>,  <32.504807, 33.610401, 35.733925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.833267, 33.401009, 35.824852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351811, -0.150695, 0.923862,
		-0.449368, -0.838606, -0.307910,
		0.821156, -0.523480, 0.227313,
		33.079613, 33.243965, 35.893047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.266598, 33.034950, 36.144081>,  <32.504807, 33.610401, 35.733925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.266598, 33.034950, 36.144081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.658031, 33.077808, 36.214375>,  <32.892891, 33.103523, 36.256550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.658031, 33.077808, 36.214375>,  <32.266598, 33.034950, 36.144081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.658031, 33.077808, 36.214375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184669, 0.080021, 0.979538,
		0.090916, -0.991015, 0.098099,
		0.978587, 0.107172, 0.175734,
		32.951607, 33.109951, 36.267094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.353985, 32.695629, 36.786716>,  <32.266598, 33.034950, 36.144081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.353985, 32.695629, 36.786716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.677254, 32.925747, 36.736298>,  <32.871216, 33.063820, 36.706047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.677254, 32.925747, 36.736298>,  <32.353985, 32.695629, 36.786716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.677254, 32.925747, 36.736298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146135, 0.011449, 0.989198,
		0.570527, -0.817864, -0.074818,
		0.808173, 0.575298, -0.126050,
		32.919704, 33.098335, 36.698483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.878403, 32.383434, 37.154110>,  <32.353985, 32.695629, 36.786716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.878403, 32.383434, 37.154110> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.945744, 32.776875, 37.128212>,  <32.986149, 33.012939, 37.112675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.945744, 32.776875, 37.128212>,  <32.878403, 32.383434, 37.154110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.945744, 32.776875, 37.128212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006220, 0.064619, 0.997891,
		0.985708, -0.168397, 0.004761,
		0.168349, 0.983599, -0.064743,
		32.996250, 33.071953, 37.108788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.444973, 32.510651, 37.567013>,  <32.878403, 32.383434, 37.154110>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.444973, 32.510651, 37.567013> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.290279, 32.878635, 37.541359>,  <33.197464, 33.099426, 37.525967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.290279, 32.878635, 37.541359>,  <33.444973, 32.510651, 37.567013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.290279, 32.878635, 37.541359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230447, 0.163750, 0.959208,
		0.892933, 0.356179, -0.275330,
		-0.386735, 0.919958, -0.064137,
		33.174259, 33.154621, 37.522118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.895466, 32.841171, 37.916172>,  <33.444973, 32.510651, 37.567013>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.895466, 32.841171, 37.916172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.573078, 33.077393, 37.899841>,  <33.379646, 33.219124, 37.890045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.573078, 33.077393, 37.899841>,  <33.895466, 32.841171, 37.916172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.573078, 33.077393, 37.899841> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098182, 0.201366, 0.974583,
		0.583760, 0.781475, -0.220276,
		-0.805968, 0.590549, -0.040823,
		33.331287, 33.254559, 37.887596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.167995, 33.396690, 38.343739>,  <33.895466, 32.841171, 37.916172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.167995, 33.396690, 38.343739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.768459, 33.400295, 38.324829>,  <33.528736, 33.402458, 38.313484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.768459, 33.400295, 38.324829>,  <34.167995, 33.396690, 38.343739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.768459, 33.400295, 38.324829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043545, 0.248779, 0.967581,
		0.020479, 0.968518, -0.248098,
		-0.998841, 0.009012, -0.047269,
		33.468807, 33.403000, 38.310650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.976818, 34.041618, 38.549713>,  <34.167995, 33.396690, 38.343739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.976818, 34.041618, 38.549713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.650761, 33.818111, 38.610798>,  <33.455124, 33.684010, 38.647449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.650761, 33.818111, 38.610798>,  <33.976818, 34.041618, 38.549713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.650761, 33.818111, 38.610798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040131, 0.317471, 0.947419,
		-0.577864, 0.766156, -0.281209,
		-0.815146, -0.558764, 0.152708,
		33.406216, 33.650482, 38.656609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.568775, 34.396969, 38.939030>,  <33.976818, 34.041618, 38.549713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.568775, 34.396969, 38.939030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.406700, 34.036362, 38.999813>,  <33.309456, 33.820000, 39.036282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.406700, 34.036362, 38.999813>,  <33.568775, 34.396969, 38.939030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.406700, 34.036362, 38.999813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002104, 0.165292, 0.986243,
		-0.914230, 0.399935, -0.065078,
		-0.405190, -0.901516, 0.151956,
		33.285145, 33.765907, 39.045399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.170353, 34.494896, 39.571095>,  <33.568775, 34.396969, 38.939030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.170353, 34.494896, 39.571095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.193451, 34.098015, 39.526897>,  <33.207310, 33.859886, 39.500378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.193451, 34.098015, 39.526897>,  <33.170353, 34.494896, 39.571095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.193451, 34.098015, 39.526897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145327, -0.101146, 0.984200,
		-0.987698, -0.072886, 0.138353,
		0.057740, -0.992198, -0.110494,
		33.210773, 33.800354, 39.493748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.772747, 34.156662, 40.196461>,  <33.170353, 34.494896, 39.571095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.772747, 34.156662, 40.196461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.002926, 33.853840, 40.072697>,  <33.141033, 33.672146, 39.998440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.002926, 33.853840, 40.072697>,  <32.772747, 34.156662, 40.196461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.002926, 33.853840, 40.072697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221851, -0.219644, 0.950020,
		-0.787177, -0.615325, 0.041561,
		0.575443, -0.757055, -0.309410,
		33.175560, 33.626724, 39.979874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.618748, 33.555309, 40.600613>,  <32.772747, 34.156662, 40.196461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.618748, 33.555309, 40.600613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.982716, 33.499775, 40.444267>,  <33.201096, 33.466454, 40.350460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.982716, 33.499775, 40.444267>,  <32.618748, 33.555309, 40.600613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.982716, 33.499775, 40.444267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322796, -0.354769, 0.877463,
		-0.260487, -0.924589, -0.277996,
		0.909917, -0.138832, -0.390866,
		33.255692, 33.458126, 40.327007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.778065, 32.949623, 40.976658>,  <32.618748, 33.555309, 40.600613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.778065, 32.949623, 40.976658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.123558, 33.085438, 40.827702>,  <33.330856, 33.166927, 40.738327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.123558, 33.085438, 40.827702>,  <32.778065, 32.949623, 40.976658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.123558, 33.085438, 40.827702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458161, -0.221339, 0.860870,
		0.209871, -0.914180, -0.346740,
		0.863737, 0.339534, -0.372390,
		33.382679, 33.187298, 40.715984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.297054, 32.337795, 40.886627>,  <32.778065, 32.949623, 40.976658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.297054, 32.337795, 40.886627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.495892, 32.682549, 40.926731>,  <33.615192, 32.889400, 40.950794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.495892, 32.682549, 40.926731>,  <33.297054, 32.337795, 40.886627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.495892, 32.682549, 40.926731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497450, -0.377746, 0.780930,
		0.710945, -0.338320, -0.616520,
		0.497092, 0.861886, 0.100259,
		33.645020, 32.941113, 40.956810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.977364, 32.202934, 41.011761>,  <33.297054, 32.337795, 40.886627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.977364, 32.202934, 41.011761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.938587, 32.569824, 41.166317>,  <33.915321, 32.789959, 41.259052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.938587, 32.569824, 41.166317>,  <33.977364, 32.202934, 41.011761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.938587, 32.569824, 41.166317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.564688, -0.269000, 0.780235,
		0.819591, 0.293826, -0.491870,
		-0.096940, 0.917227, 0.386390,
		33.909504, 32.844994, 41.282234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.602890, 32.269417, 41.362663>,  <33.977364, 32.202934, 41.011761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.602890, 32.269417, 41.362663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.380112, 32.564243, 41.515789>,  <34.246445, 32.741138, 41.607666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.380112, 32.564243, 41.515789>,  <34.602890, 32.269417, 41.362663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.380112, 32.564243, 41.515789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381678, -0.182234, 0.906153,
		0.737654, 0.650791, -0.179826,
		-0.556946, 0.737063, 0.382818,
		34.213028, 32.785362, 41.630634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.065731, 32.609745, 41.825317>,  <34.602890, 32.269417, 41.362663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.065731, 32.609745, 41.825317> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.689449, 32.684055, 41.938854>,  <34.463680, 32.728642, 42.006977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.689449, 32.684055, 41.938854>,  <35.065731, 32.609745, 41.825317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.689449, 32.684055, 41.938854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236353, -0.241282, 0.941233,
		0.243348, 0.952507, 0.183065,
		-0.940701, 0.185779, 0.283844,
		34.407238, 32.739788, 42.024006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.073864, 32.928867, 42.486782>,  <35.065731, 32.609745, 41.825317>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.073864, 32.928867, 42.486782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.714802, 32.754074, 42.463982>,  <34.499363, 32.649197, 42.450302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.714802, 32.754074, 42.463982>,  <35.073864, 32.928867, 42.486782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.714802, 32.754074, 42.463982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157846, -0.439594, 0.884218,
		-0.411450, 0.784729, 0.463583,
		-0.897660, -0.436986, -0.057005,
		34.445503, 32.622978, 42.446880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.917469, 32.803482, 43.145473>,  <35.073864, 32.928867, 42.486782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.917469, 32.803482, 43.145473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.655807, 32.566181, 42.957802>,  <34.498810, 32.423801, 42.845200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.655807, 32.566181, 42.957802>,  <34.917469, 32.803482, 43.145473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.655807, 32.566181, 42.957802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099078, -0.547756, 0.830751,
		-0.749845, 0.589924, 0.299537,
		-0.654153, -0.593256, -0.469181,
		34.459560, 32.388203, 42.817047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.378616, 32.754829, 43.530209>,  <34.917469, 32.803482, 43.145473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.378616, 32.754829, 43.530209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.335438, 32.419106, 43.317074>,  <34.309528, 32.217670, 43.189194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.335438, 32.419106, 43.317074>,  <34.378616, 32.754829, 43.530209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.335438, 32.419106, 43.317074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026877, -0.538234, 0.842367,
		-0.993793, 0.076611, 0.080660,
		-0.107948, -0.839306, -0.532834,
		34.303055, 32.167313, 43.157223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.759018, 32.333164, 43.805828>,  <34.378616, 32.754829, 43.530209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.759018, 32.333164, 43.805828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.024334, 32.099628, 43.618565>,  <34.183525, 31.959507, 43.506207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.024334, 32.099628, 43.618565>,  <33.759018, 32.333164, 43.805828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.024334, 32.099628, 43.618565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067247, -0.576554, 0.814287,
		-0.745334, -0.571592, -0.343162,
		0.663291, -0.583839, -0.468163,
		34.223320, 31.924477, 43.478115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.586514, 31.669191, 44.098938>,  <33.759018, 32.333164, 43.805828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.586514, 31.669191, 44.098938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.943321, 31.615871, 43.926182>,  <34.157406, 31.583879, 43.822529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.943321, 31.615871, 43.926182>,  <33.586514, 31.669191, 44.098938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.943321, 31.615871, 43.926182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296231, -0.549291, 0.781362,
		-0.341391, -0.824931, -0.450491,
		0.892020, -0.133301, -0.431893,
		34.210926, 31.575882, 43.796616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.774582, 30.985254, 44.286987>,  <33.586514, 31.669191, 44.098938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.774582, 30.985254, 44.286987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.113323, 31.169472, 44.180603>,  <34.316566, 31.280003, 44.116772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.113323, 31.169472, 44.180603>,  <33.774582, 30.985254, 44.286987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.113323, 31.169472, 44.180603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449550, -0.352703, 0.820674,
		0.284152, -0.814554, -0.505726,
		0.846854, 0.460545, -0.265962,
		34.367378, 31.307636, 44.100815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.412014, 30.552359, 44.477749>,  <33.774582, 30.985254, 44.286987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.412014, 30.552359, 44.477749> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.566784, 30.918028, 44.429451>,  <34.659645, 31.137428, 44.400475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.566784, 30.918028, 44.429451>,  <34.412014, 30.552359, 44.477749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.566784, 30.918028, 44.429451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.584040, -0.141631, 0.799274,
		0.713573, -0.379776, -0.588714,
		0.386925, 0.914172, -0.120740,
		34.682861, 31.192280, 44.393230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.143375, 30.502222, 44.454597>,  <34.412014, 30.552359, 44.477749>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.143375, 30.502222, 44.454597> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.054890, 30.876986, 44.562866>,  <35.001797, 31.101843, 44.627827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.054890, 30.876986, 44.562866>,  <35.143375, 30.502222, 44.454597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.054890, 30.876986, 44.562866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386676, -0.170535, 0.906311,
		0.895290, 0.305155, -0.324555,
		-0.221217, 0.936909, 0.270674,
		34.988525, 31.158058, 44.644070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.673374, 30.653337, 44.977360>,  <35.143375, 30.502222, 44.454597>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.673374, 30.653337, 44.977360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.380310, 30.918913, 45.037224>,  <35.204472, 31.078259, 45.073143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.380310, 30.918913, 45.037224>,  <35.673374, 30.653337, 44.977360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.380310, 30.918913, 45.037224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159954, -0.045758, 0.986063,
		0.661534, 0.746385, -0.072675,
		-0.732657, 0.663940, 0.149658,
		35.160511, 31.118095, 45.082123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.971447, 31.059780, 45.559460>,  <35.673374, 30.653337, 44.977360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.971447, 31.059780, 45.559460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.581306, 31.148024, 45.557758>,  <35.347221, 31.200970, 45.556740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.581306, 31.148024, 45.557758>,  <35.971447, 31.059780, 45.559460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.581306, 31.148024, 45.557758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041115, -0.162784, 0.985805,
		0.216786, 0.961682, 0.167842,
		-0.975353, 0.220609, -0.004250,
		35.288700, 31.214207, 45.556484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.884106, 31.585329, 46.149349>,  <35.971447, 31.059780, 45.559460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.884106, 31.585329, 46.149349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.525997, 31.427965, 46.065708>,  <35.311134, 31.333546, 46.015526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.525997, 31.427965, 46.065708>,  <35.884106, 31.585329, 46.149349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.525997, 31.427965, 46.065708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125912, -0.226780, 0.965773,
		-0.427366, 0.890953, 0.153494,
		-0.895268, -0.393412, -0.209100,
		35.257416, 31.309942, 46.002979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.314632, 31.965641, 46.370514>,  <35.884106, 31.585329, 46.149349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.314632, 31.965641, 46.370514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.182049, 31.588461, 46.358013>,  <35.102497, 31.362152, 46.350513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.182049, 31.588461, 46.358013>,  <35.314632, 31.965641, 46.370514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.182049, 31.588461, 46.358013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041764, -0.018429, 0.998958,
		-0.942544, 0.332421, -0.033273,
		-0.331461, -0.942951, -0.031253,
		35.082611, 31.305576, 46.348637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.059914, 31.826733, 47.130219>,  <35.314632, 31.965641, 46.370514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.059914, 31.826733, 47.130219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.008183, 31.465904, 46.965515>,  <34.977146, 31.249407, 46.866692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.008183, 31.465904, 46.965515>,  <35.059914, 31.826733, 47.130219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.008183, 31.465904, 46.965515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278331, -0.365531, 0.888211,
		-0.951739, 0.229474, -0.203801,
		-0.129325, -0.902069, -0.411760,
		34.969383, 31.195284, 46.841988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.409901, 31.524254, 47.408051>,  <35.059914, 31.826733, 47.130219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.409901, 31.524254, 47.408051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.622154, 31.206219, 47.290569>,  <34.749508, 31.015398, 47.220081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.622154, 31.206219, 47.290569>,  <34.409901, 31.524254, 47.408051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.622154, 31.206219, 47.290569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223903, -0.465693, 0.856153,
		-0.817491, -0.388546, -0.425136,
		0.530638, -0.795086, -0.293703,
		34.781345, 30.967693, 47.202457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.942196, 30.997702, 47.464882>,  <34.409901, 31.524254, 47.408051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.942196, 30.997702, 47.464882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.328281, 30.900642, 47.503826>,  <34.559933, 30.842407, 47.527191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.328281, 30.900642, 47.503826>,  <33.942196, 30.997702, 47.464882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.328281, 30.900642, 47.503826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182652, -0.359380, 0.915141,
		-0.187067, -0.901093, -0.391200,
		0.965217, -0.242647, 0.097358,
		34.617847, 30.827848, 47.533035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.953671, 30.404524, 47.823753>,  <33.942196, 30.997702, 47.464882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.953671, 30.404524, 47.823753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.343365, 30.486935, 47.860439>,  <34.577183, 30.536381, 47.882450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.343365, 30.486935, 47.860439>,  <33.953671, 30.404524, 47.823753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.343365, 30.486935, 47.860439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008472, -0.372953, 0.927811,
		0.225357, -0.904687, -0.361600,
		0.974239, 0.206026, 0.091713,
		34.635635, 30.548742, 47.887955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.306911, 29.744728, 48.060238>,  <33.953671, 30.404524, 47.823753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.306911, 29.744728, 48.060238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.485897, 30.082241, 48.178764>,  <34.593288, 30.284748, 48.249882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.485897, 30.082241, 48.178764>,  <34.306911, 29.744728, 48.060238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.485897, 30.082241, 48.178764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070239, -0.297157, 0.952242,
		0.891538, -0.446910, -0.073702,
		0.447467, 0.843783, 0.296317,
		34.620136, 30.335377, 48.267658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.783920, 29.578892, 48.552364>,  <34.306911, 29.744728, 48.060238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.783920, 29.578892, 48.552364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.720669, 29.964699, 48.636932>,  <34.682716, 30.196184, 48.687672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.720669, 29.964699, 48.636932>,  <34.783920, 29.578892, 48.552364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.720669, 29.964699, 48.636932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065725, -0.203358, 0.976896,
		0.985228, 0.168373, -0.031236,
		-0.158130, 0.964519, 0.211420,
		34.673229, 30.254055, 48.700359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.315376, 29.671574, 49.093391>,  <34.783920, 29.578892, 48.552364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.315376, 29.671574, 49.093391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.043312, 29.959787, 49.147362>,  <34.880074, 30.132717, 49.179745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.043312, 29.959787, 49.147362>,  <35.315376, 29.671574, 49.093391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.043312, 29.959787, 49.147362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031979, -0.154724, 0.987440,
		0.732364, 0.675934, 0.082195,
		-0.680162, 0.720537, 0.134930,
		34.839264, 30.175949, 49.187840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.391335, 29.690454, 49.679024>,  <35.315376, 29.671574, 49.093391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.391335, 29.690454, 49.679024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.098011, 29.961365, 49.655140>,  <34.922016, 30.123911, 49.640812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.098011, 29.961365, 49.655140>,  <35.391335, 29.690454, 49.679024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.098011, 29.961365, 49.655140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151100, -0.076718, 0.985537,
		0.662898, 0.731720, 0.158594,
		-0.733304, 0.677274, -0.059706,
		34.878021, 30.164547, 49.637230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.456997, 30.140530, 50.285446>,  <35.391335, 29.690454, 49.679024>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.456997, 30.140530, 50.285446> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.080048, 30.154686, 50.152370>,  <34.853878, 30.163179, 50.072525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.080048, 30.154686, 50.152370>,  <35.456997, 30.140530, 50.285446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.080048, 30.154686, 50.152370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330807, 0.049980, 0.942374,
		0.049980, 0.998123, -0.035392,
		-0.942374, 0.035392, -0.332684,
		34.797337, 30.165304, 50.052567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.169476, 30.569786, 50.858715>,  <35.456997, 30.140530, 50.285446>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.169476, 30.569786, 50.858715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.865635, 30.395647, 50.665436>,  <34.683331, 30.291162, 50.549469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.865635, 30.395647, 50.665436>,  <35.169476, 30.569786, 50.858715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.865635, 30.395647, 50.665436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524280, -0.029789, 0.851025,
		-0.384887, 0.899769, -0.205617,
		-0.759600, -0.435349, -0.483196,
		34.637756, 30.265043, 50.520477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.571476, 30.935961, 51.120331>,  <35.169476, 30.569786, 50.858715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.571476, 30.935961, 51.120331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.500210, 30.566416, 50.984840>,  <34.457451, 30.344688, 50.903545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.500210, 30.566416, 50.984840>,  <34.571476, 30.935961, 51.120331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.500210, 30.566416, 50.984840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453483, -0.228410, 0.861500,
		-0.873275, 0.307101, -0.378259,
		-0.178169, -0.923860, -0.338730,
		34.446758, 30.289257, 50.883221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.878876, 30.831877, 51.328823>,  <34.571476, 30.935961, 51.120331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.878876, 30.831877, 51.328823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.999493, 30.461115, 51.239449>,  <34.071861, 30.238659, 51.185825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.999493, 30.461115, 51.239449>,  <33.878876, 30.831877, 51.328823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.999493, 30.461115, 51.239449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430686, -0.341489, 0.835401,
		-0.850636, -0.155679, -0.502178,
		0.301542, -0.926903, -0.223434,
		34.089954, 30.183044, 51.172417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.246117, 30.376612, 51.379955>,  <33.878876, 30.831877, 51.328823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.246117, 30.376612, 51.379955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.582882, 30.168356, 51.436695>,  <33.784939, 30.043402, 51.470737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.582882, 30.168356, 51.436695>,  <33.246117, 30.376612, 51.379955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.582882, 30.168356, 51.436695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390898, -0.407211, 0.825456,
		-0.371999, -0.750411, -0.546351,
		0.841912, -0.520636, 0.141852,
		33.835457, 30.012163, 51.479248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.030190, 29.773930, 51.707005>,  <33.246117, 30.376612, 51.379955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.030190, 29.773930, 51.707005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.419819, 29.811691, 51.789238>,  <33.653599, 29.834349, 51.838577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.419819, 29.811691, 51.789238>,  <33.030190, 29.773930, 51.707005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.419819, 29.811691, 51.789238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154858, -0.384207, 0.910167,
		0.164913, -0.918407, -0.359627,
		0.974075, 0.094407, 0.205583,
		33.712040, 29.840014, 51.850914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.221233, 29.191992, 52.105053>,  <33.030190, 29.773930, 51.707005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.221233, 29.191992, 52.105053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.480888, 29.485991, 52.183437>,  <33.636681, 29.662390, 52.230469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.480888, 29.485991, 52.183437>,  <33.221233, 29.191992, 52.105053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.480888, 29.485991, 52.183437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092431, -0.331918, 0.938769,
		0.755036, -0.591276, -0.283396,
		0.649136, 0.734999, 0.195958,
		33.675629, 29.706490, 52.242226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.839958, 28.972563, 52.493328>,  <33.221233, 29.191992, 52.105053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.839958, 28.972563, 52.493328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.810883, 29.362703, 52.576668>,  <33.793438, 29.596786, 52.626671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.810883, 29.362703, 52.576668>,  <33.839958, 28.972563, 52.493328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.810883, 29.362703, 52.576668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033667, -0.211184, 0.976866,
		0.996786, 0.063989, 0.048187,
		-0.072685, 0.975349, 0.208352,
		33.789078, 29.655308, 52.639172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.159145, 28.885704, 52.984798>,  <33.839958, 28.972563, 52.493328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.159145, 28.885704, 52.984798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.965519, 29.235048, 53.006435>,  <33.849342, 29.444654, 53.019417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.965519, 29.235048, 53.006435>,  <34.159145, 28.885704, 52.984798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.965519, 29.235048, 53.006435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230396, -0.186845, 0.954990,
		0.844156, 0.449815, 0.291664,
		-0.484065, 0.873358, 0.054091,
		33.820301, 29.497055, 53.022663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.656048, 28.839499, 52.441166>,  <34.159145, 28.885704, 52.984798>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.656048, 28.839499, 52.441166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.586807, 28.630085, 52.774860>,  <34.545261, 28.504436, 52.975075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.586807, 28.630085, 52.774860>,  <34.656048, 28.839499, 52.441166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.586807, 28.630085, 52.774860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102316, -0.832879, -0.543916,
		0.979575, -0.179510, 0.090609,
		-0.173104, -0.523535, 0.834234,
		34.534878, 28.473024, 53.025131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.152340, 28.376661, 52.659389>,  <34.656048, 28.839499, 52.441166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.152340, 28.376661, 52.659389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.773556, 28.257406, 52.707340>,  <34.546284, 28.185854, 52.736111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.773556, 28.257406, 52.707340>,  <35.152340, 28.376661, 52.659389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.773556, 28.257406, 52.707340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158879, -0.758680, -0.631792,
		0.279312, -0.579239, 0.765811,
		-0.946964, -0.298138, 0.119880,
		34.489468, 28.167965, 52.743305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.286659, 28.079962, 53.265976>,  <35.152340, 28.376661, 52.659389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.286659, 28.079962, 53.265976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.272984, 27.730536, 53.071777>,  <35.264778, 27.520880, 52.955257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.272984, 27.730536, 53.071777>,  <35.286659, 28.079962, 53.265976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.272984, 27.730536, 53.071777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.914026, 0.169144, -0.368709,
		0.404212, -0.456367, 0.792681,
		-0.034190, -0.873567, -0.485501,
		35.262726, 27.468466, 52.926128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.949856, 27.847469, 53.305309>,  <35.286659, 28.079962, 53.265976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.949856, 27.847469, 53.305309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.786076, 27.664824, 52.989372>,  <35.687809, 27.555235, 52.799809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.786076, 27.664824, 52.989372>,  <35.949856, 27.847469, 53.305309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.786076, 27.664824, 52.989372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.756740, 0.313604, -0.573582,
		0.509606, -0.832559, 0.217135,
		-0.409447, -0.456616, -0.789845,
		35.663242, 27.527840, 52.752419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.592869, 27.469690, 52.915241>,  <35.949856, 27.847469, 53.305309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.592869, 27.469690, 52.915241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.266747, 27.532375, 52.692272>,  <36.071072, 27.569986, 52.558491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.266747, 27.532375, 52.692272>,  <36.592869, 27.469690, 52.915241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.266747, 27.532375, 52.692272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.577125, 0.297951, -0.760363,
		0.046923, -0.941629, -0.333366,
		-0.815307, 0.156715, -0.557418,
		36.022156, 27.579390, 52.525047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.699127, 27.183193, 52.233791>,  <36.592869, 27.469690, 52.915241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.699127, 27.183193, 52.233791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.364273, 27.390141, 52.162758>,  <36.163361, 27.514309, 52.120140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.364273, 27.390141, 52.162758>,  <36.699127, 27.183193, 52.233791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.364273, 27.390141, 52.162758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253808, 0.079809, -0.963956,
		-0.484548, -0.852033, -0.198123,
		-0.837135, 0.517369, -0.177581,
		36.113132, 27.545351, 52.109482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.500439, 26.919147, 51.668350>,  <36.699127, 27.183193, 52.233791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.500439, 26.919147, 51.668350> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.303581, 27.267229, 51.677624>,  <36.185467, 27.476078, 51.683189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.303581, 27.267229, 51.677624>,  <36.500439, 26.919147, 51.668350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.303581, 27.267229, 51.677624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107615, 0.087252, -0.990357,
		-0.863836, -0.484903, -0.136588,
		-0.492144, 0.870205, 0.023188,
		36.155937, 27.528290, 51.684582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.997730, 26.798714, 51.050793>,  <36.500439, 26.919147, 51.668350>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.997730, 26.798714, 51.050793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.997540, 27.192986, 51.118248>,  <35.997425, 27.429548, 51.158722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.997540, 27.192986, 51.118248>,  <35.997730, 26.798714, 51.050793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.997540, 27.192986, 51.118248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028419, 0.168585, -0.985277,
		-0.999596, 0.004327, -0.028092,
		-0.000472, 0.985677, 0.168640,
		35.997398, 27.488689, 51.168839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.535954, 27.028654, 50.600674>,  <35.997730, 26.798714, 51.050793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.535954, 27.028654, 50.600674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.753559, 27.350084, 50.697262>,  <35.884121, 27.542942, 50.755215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.753559, 27.350084, 50.697262>,  <35.535954, 27.028654, 50.600674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.753559, 27.350084, 50.697262> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036791, 0.310354, -0.949909,
		-0.838268, 0.507881, 0.198402,
		0.544015, 0.803578, 0.241475,
		35.916763, 27.591158, 50.769703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.201157, 27.520117, 50.396179>,  <35.535954, 27.028654, 50.600674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.201157, 27.520117, 50.396179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.582577, 27.640268, 50.405235>,  <35.811428, 27.712358, 50.410667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.582577, 27.640268, 50.405235>,  <35.201157, 27.520117, 50.396179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.582577, 27.640268, 50.405235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065016, 0.278616, -0.958199,
		-0.294131, 0.912220, 0.285204,
		0.953551, 0.300379, 0.022641,
		35.868641, 27.730383, 50.412029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.133591, 28.148254, 49.986195>,  <35.201157, 27.520117, 50.396179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.133591, 28.148254, 49.986195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.530090, 28.096283, 49.995583>,  <35.767990, 28.065100, 50.001217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.530090, 28.096283, 49.995583>,  <35.133591, 28.148254, 49.986195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.530090, 28.096283, 49.995583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091011, 0.543594, -0.834400,
		0.095655, 0.829231, 0.550660,
		0.991245, -0.129931, 0.023471,
		35.827465, 28.057304, 50.002625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.462364, 28.792955, 49.855534>,  <35.133591, 28.148254, 49.986195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.462364, 28.792955, 49.855534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.726589, 28.516842, 49.737438>,  <35.885124, 28.351173, 49.666580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.726589, 28.516842, 49.737438>,  <35.462364, 28.792955, 49.855534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.726589, 28.516842, 49.737438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157111, 0.511632, -0.844718,
		0.734148, 0.511605, 0.446416,
		0.660563, -0.690285, -0.295235,
		35.924759, 28.309757, 49.648869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.859695, 29.178385, 49.377186>,  <35.462364, 28.792955, 49.855534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.859695, 29.178385, 49.377186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.963169, 28.802023, 49.289745>,  <36.025253, 28.576206, 49.237282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.963169, 28.802023, 49.289745>,  <35.859695, 29.178385, 49.377186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.963169, 28.802023, 49.289745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238893, 0.281585, -0.929322,
		0.935957, 0.188175, 0.297616,
		0.258680, -0.940904, -0.218597,
		36.040771, 28.519753, 49.224167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.620426, 29.155630, 49.060131>,  <35.859695, 29.178385, 49.377186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.620426, 29.155630, 49.060131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.405392, 28.833094, 48.961494>,  <36.276371, 28.639572, 48.902313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.405392, 28.833094, 48.961494>,  <36.620426, 29.155630, 49.060131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.405392, 28.833094, 48.961494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185282, 0.172337, -0.967456,
		0.822598, -0.565784, 0.056754,
		-0.537590, -0.806343, -0.246594,
		36.244114, 28.591190, 48.887516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.914871, 28.944330, 48.566887>,  <36.620426, 29.155630, 49.060131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.914871, 28.944330, 48.566887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.585304, 28.725445, 48.507931>,  <36.387566, 28.594114, 48.472557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.585304, 28.725445, 48.507931>,  <36.914871, 28.944330, 48.566887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.585304, 28.725445, 48.507931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124436, 0.079052, -0.989073,
		0.552886, -0.833252, 0.002961,
		-0.823913, -0.547213, -0.147394,
		36.338131, 28.561281, 48.463711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.105026, 28.469950, 48.105213>,  <36.914871, 28.944330, 48.566887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.105026, 28.469950, 48.105213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.705776, 28.490917, 48.092602>,  <36.466225, 28.503498, 48.085033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.705776, 28.490917, 48.092602>,  <37.105026, 28.469950, 48.105213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.705776, 28.490917, 48.092602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029518, -0.038696, -0.998815,
		-0.053586, -0.997875, 0.037076,
		-0.998127, 0.052428, -0.031529,
		36.406338, 28.506643, 48.083141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.881542, 28.095659, 47.598289>,  <37.105026, 28.469950, 48.105213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.881542, 28.095659, 47.598289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.557632, 28.328981, 47.623653>,  <36.363289, 28.468975, 47.638874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.557632, 28.328981, 47.623653>,  <36.881542, 28.095659, 47.598289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.557632, 28.328981, 47.623653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057470, 0.186407, -0.980790,
		-0.583923, -0.790572, -0.184470,
		-0.809772, 0.583308, 0.063413,
		36.314701, 28.503973, 47.642677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.372013, 27.866837, 47.155182>,  <36.881542, 28.095659, 47.598289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.372013, 27.866837, 47.155182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.298450, 28.251535, 47.236397>,  <36.254314, 28.482355, 47.285126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.298450, 28.251535, 47.236397>,  <36.372013, 27.866837, 47.155182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.298450, 28.251535, 47.236397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119020, 0.183250, -0.975835,
		-0.975711, -0.203628, 0.080766,
		-0.183907, 0.961746, 0.203034,
		36.243279, 28.540060, 47.297306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.907887, 28.080353, 46.588867>,  <36.372013, 27.866837, 47.155182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.907887, 28.080353, 46.588867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.025414, 28.427319, 46.749500>,  <36.095928, 28.635498, 46.845879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.025414, 28.427319, 46.749500>,  <35.907887, 28.080353, 46.588867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.025414, 28.427319, 46.749500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039810, 0.430865, -0.901538,
		-0.955033, 0.248899, 0.161127,
		0.293816, 0.867413, 0.401581,
		36.113560, 28.687542, 46.869976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.676189, 28.523840, 46.091522>,  <35.907887, 28.080353, 46.588867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.676189, 28.523840, 46.091522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.895977, 28.781353, 46.304546>,  <36.027851, 28.935860, 46.432362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.895977, 28.781353, 46.304546>,  <35.676189, 28.523840, 46.091522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.895977, 28.781353, 46.304546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162591, 0.542836, -0.823950,
		-0.819538, 0.539329, 0.193601,
		0.549474, 0.643780, 0.532565,
		36.060818, 28.974487, 46.464317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.439434, 29.229322, 46.047569>,  <35.676189, 28.523840, 46.091522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.439434, 29.229322, 46.047569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.834290, 29.227039, 46.111485>,  <36.071201, 29.225670, 46.149834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.834290, 29.227039, 46.111485>,  <35.439434, 29.229322, 46.047569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.834290, 29.227039, 46.111485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145392, 0.447889, -0.882189,
		-0.066534, 0.894071, 0.442956,
		0.987135, -0.005706, 0.159790,
		36.130428, 29.225327, 46.159420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.572708, 29.861128, 45.787262>,  <35.439434, 29.229322, 46.047569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.572708, 29.861128, 45.787262> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.903332, 29.636019, 45.791004>,  <36.101707, 29.500954, 45.793247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.903332, 29.636019, 45.791004>,  <35.572708, 29.861128, 45.787262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.903332, 29.636019, 45.791004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178716, 0.246656, -0.952482,
		0.533722, 0.788955, 0.304452,
		0.826560, -0.562771, 0.009353,
		36.151299, 29.467188, 45.793812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.000164, 30.314028, 45.514503>,  <35.572708, 29.861128, 45.787262>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.000164, 30.314028, 45.514503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.145760, 29.946262, 45.454914>,  <36.233116, 29.725603, 45.419159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.145760, 29.946262, 45.454914>,  <36.000164, 30.314028, 45.514503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.145760, 29.946262, 45.454914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202196, 0.234130, -0.950947,
		0.909192, 0.316010, 0.271122,
		0.363987, -0.919413, -0.148973,
		36.254955, 29.670439, 45.410221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.631344, 30.323254, 45.145027>,  <36.000164, 30.314028, 45.514503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.631344, 30.323254, 45.145027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.488636, 29.958652, 45.063171>,  <36.403011, 29.739891, 45.014057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.488636, 29.958652, 45.063171>,  <36.631344, 30.323254, 45.145027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.488636, 29.958652, 45.063171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073746, 0.190890, -0.978837,
		0.931277, -0.364311, -0.000884,
		-0.356770, -0.911503, -0.204638,
		36.381603, 29.685202, 45.001781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.779198, 30.299246, 44.506489>,  <36.631344, 30.323254, 45.145027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.779198, 30.299246, 44.506489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.592194, 29.946325, 44.528320>,  <36.479992, 29.734573, 44.541420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.592194, 29.946325, 44.528320>,  <36.779198, 30.299246, 44.506489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.592194, 29.946325, 44.528320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034054, -0.043717, -0.998464,
		0.883332, -0.468650, -0.009608,
		-0.467509, -0.882302, 0.054576,
		36.451942, 29.681635, 44.544693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.132744, 29.837431, 44.122662>,  <36.779198, 30.299246, 44.506489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.132744, 29.837431, 44.122662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.752247, 29.714609, 44.134342>,  <36.523949, 29.640915, 44.141350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.752247, 29.714609, 44.134342>,  <37.132744, 29.837431, 44.122662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.752247, 29.714609, 44.134342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007634, -0.118089, -0.992974,
		0.308347, -0.944337, 0.114676,
		-0.951243, -0.307056, 0.029203,
		36.466873, 29.622492, 44.143105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.028740, 29.545496, 43.538872>,  <37.132744, 29.837431, 44.122662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.028740, 29.545496, 43.538872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.643597, 29.555223, 43.646439>,  <36.412510, 29.561060, 43.710979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.643597, 29.555223, 43.646439>,  <37.028740, 29.545496, 43.538872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.643597, 29.555223, 43.646439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269982, -0.070148, -0.960307,
		-0.004485, -0.997240, 0.074107,
		-0.962855, 0.024315, 0.268922,
		36.354740, 29.562519, 43.727116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.647755, 28.928322, 43.151630>,  <37.028740, 29.545496, 43.538872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.647755, 28.928322, 43.151630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.389351, 29.218130, 43.247742>,  <36.234306, 29.392015, 43.305408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.389351, 29.218130, 43.247742>,  <36.647755, 28.928322, 43.151630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.389351, 29.218130, 43.247742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232875, 0.112707, -0.965954,
		-0.726936, -0.679974, 0.095913,
		-0.646013, 0.724522, 0.240280,
		36.195545, 29.435486, 43.319824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.148106, 28.739172, 42.863113>,  <36.647755, 28.928322, 43.151630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.148106, 28.739172, 42.863113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.094631, 29.132292, 42.914082>,  <36.062546, 29.368164, 42.944664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.094631, 29.132292, 42.914082>,  <36.148106, 28.739172, 42.863113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.094631, 29.132292, 42.914082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215853, 0.096614, -0.971634,
		-0.967231, -0.157399, 0.199224,
		-0.133687, 0.982797, 0.127423,
		36.054523, 29.427132, 42.952309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.526730, 28.943087, 42.461407>,  <36.148106, 28.739172, 42.863113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.526730, 28.943087, 42.461407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.709782, 29.291876, 42.530964>,  <35.819611, 29.501150, 42.572697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.709782, 29.291876, 42.530964>,  <35.526730, 28.943087, 42.461407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.709782, 29.291876, 42.530964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035484, 0.177504, -0.983480,
		-0.888435, 0.456239, 0.050289,
		0.457629, 0.871974, 0.173890,
		35.847069, 29.553469, 42.583130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.126144, 29.285494, 42.013332>,  <35.526730, 28.943087, 42.461407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.126144, 29.285494, 42.013332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.462833, 29.485212, 42.095520>,  <35.664845, 29.605043, 42.144833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.462833, 29.485212, 42.095520>,  <35.126144, 29.285494, 42.013332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.462833, 29.485212, 42.095520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052323, 0.303327, -0.951449,
		-0.537377, 0.811602, 0.229192,
		0.841718, 0.499294, 0.205466,
		35.715347, 29.635000, 42.157162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.024582, 30.031534, 41.792450>,  <35.126144, 29.285494, 42.013332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.024582, 30.031534, 41.792450> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.412949, 29.937704, 41.811604>,  <35.645969, 29.881405, 41.823097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.412949, 29.937704, 41.811604>,  <35.024582, 30.031534, 41.792450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.412949, 29.937704, 41.811604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119210, 0.300235, -0.946387,
		0.207624, 0.924572, 0.319467,
		0.970918, -0.234576, 0.047883,
		35.704224, 29.867331, 41.825970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.462498, 30.571091, 41.503777>,  <35.024582, 30.031534, 41.792450>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.462498, 30.571091, 41.503777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.695415, 30.247301, 41.473606>,  <35.835167, 30.053028, 41.455502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.695415, 30.247301, 41.473606>,  <35.462498, 30.571091, 41.503777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.695415, 30.247301, 41.473606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049355, 0.127807, -0.990570,
		0.811479, 0.573079, 0.114373,
		0.582293, -0.809472, -0.075429,
		35.870102, 30.004459, 41.450977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.823956, 30.647783, 40.936535>,  <35.462498, 30.571091, 41.503777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.823956, 30.647783, 40.936535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.935043, 30.264402, 40.962578>,  <36.001698, 30.034374, 40.978203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.935043, 30.264402, 40.962578>,  <35.823956, 30.647783, 40.936535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.935043, 30.264402, 40.962578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037913, -0.056783, -0.997666,
		0.959914, 0.279539, 0.020568,
		0.277719, -0.958454, 0.065104,
		36.018360, 29.976866, 40.982109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.437611, 30.593281, 40.552238>,  <35.823956, 30.647783, 40.936535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.437611, 30.593281, 40.552238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.264313, 30.233326, 40.572243>,  <36.160336, 30.017353, 40.584248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.264313, 30.233326, 40.572243>,  <36.437611, 30.593281, 40.552238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.264313, 30.233326, 40.572243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137622, -0.120894, -0.983079,
		0.890709, -0.419028, 0.176220,
		-0.433241, -0.899889, 0.050014,
		36.134338, 29.963360, 40.587246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.918396, 30.091814, 40.202232>,  <36.437611, 30.593281, 40.552238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.918396, 30.091814, 40.202232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.552353, 29.934080, 40.235889>,  <36.332729, 29.839439, 40.256084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.552353, 29.934080, 40.235889>,  <36.918396, 30.091814, 40.202232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.552353, 29.934080, 40.235889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021311, -0.255688, -0.966524,
		0.402650, -0.882679, 0.242385,
		-0.915106, -0.394337, 0.084142,
		36.277821, 29.815779, 40.261131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.874146, 29.644768, 39.709492>,  <36.918396, 30.091814, 40.202232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.874146, 29.644768, 39.709492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.483166, 29.673475, 39.788929>,  <36.248577, 29.690701, 39.836590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.483166, 29.673475, 39.788929>,  <36.874146, 29.644768, 39.709492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.483166, 29.673475, 39.788929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208356, -0.174890, -0.962290,
		-0.034328, -0.981969, 0.185899,
		-0.977450, 0.071766, 0.198595,
		36.189930, 29.695005, 39.848507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.497986, 29.163275, 39.298115>,  <36.874146, 29.644768, 39.709492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.497986, 29.163275, 39.298115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.238358, 29.452435, 39.392876>,  <36.082581, 29.625931, 39.449734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.238358, 29.452435, 39.392876>,  <36.497986, 29.163275, 39.298115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.238358, 29.452435, 39.392876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365424, -0.023151, -0.930553,
		-0.667210, -0.690567, 0.279191,
		-0.649073, 0.722898, 0.236903,
		36.043636, 29.669304, 39.463947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.991276, 29.031265, 38.856430>,  <36.497986, 29.163275, 39.298115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.991276, 29.031265, 38.856430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.902981, 29.399689, 38.984760>,  <35.850006, 29.620743, 39.061756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.902981, 29.399689, 38.984760>,  <35.991276, 29.031265, 38.856430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.902981, 29.399689, 38.984760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100907, 0.305604, -0.946797,
		-0.970100, -0.241363, 0.025484,
		-0.220734, 0.921059, 0.320822,
		35.836761, 29.676006, 39.081005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.393196, 29.261848, 38.456161>,  <35.991276, 29.031265, 38.856430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.393196, 29.261848, 38.456161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.567726, 29.589661, 38.604752>,  <35.672443, 29.786348, 38.693905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.567726, 29.589661, 38.604752>,  <35.393196, 29.261848, 38.456161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.567726, 29.589661, 38.604752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244403, 0.505266, -0.827631,
		-0.865961, 0.270326, 0.420755,
		0.436323, 0.819530, 0.371473,
		35.698624, 29.835520, 38.716194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.996296, 29.745874, 38.261177>,  <35.393196, 29.261848, 38.456161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.996296, 29.745874, 38.261177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.330708, 29.949806, 38.342297>,  <35.531357, 30.072165, 38.390968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.330708, 29.949806, 38.342297>,  <34.996296, 29.745874, 38.261177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.330708, 29.949806, 38.342297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166683, 0.588132, -0.791402,
		-0.522751, 0.627834, 0.576676,
		0.836031, 0.509828, 0.202797,
		35.581516, 30.102755, 38.403137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.764069, 30.533323, 38.346973>,  <34.996296, 29.745874, 38.261177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.764069, 30.533323, 38.346973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.150444, 30.513390, 38.245407>,  <35.382271, 30.501431, 38.184467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.150444, 30.513390, 38.245407>,  <34.764069, 30.533323, 38.346973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.150444, 30.513390, 38.245407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126902, 0.763940, -0.632687,
		0.225504, 0.643361, 0.731597,
		0.965942, -0.049832, -0.253916,
		35.440228, 30.498440, 38.169231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.842442, 31.268848, 38.254410>,  <34.764069, 30.533323, 38.346973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.842442, 31.268848, 38.254410> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.158512, 31.085361, 38.091827>,  <35.348152, 30.975269, 37.994278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.158512, 31.085361, 38.091827>,  <34.842442, 31.268848, 38.254410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.158512, 31.085361, 38.091827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016399, 0.678768, -0.734170,
		0.612662, 0.573457, 0.543868,
		0.790175, -0.458717, -0.406452,
		35.395565, 30.947746, 37.969891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.428471, 31.818777, 38.008308>,  <34.842442, 31.268848, 38.254410>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.428471, 31.818777, 38.008308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.482635, 31.485691, 37.793552>,  <35.515133, 31.285839, 37.664700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.482635, 31.485691, 37.793552>,  <35.428471, 31.818777, 38.008308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.482635, 31.485691, 37.793552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100112, 0.550606, -0.828741,
		0.985719, 0.058472, 0.157922,
		0.135410, -0.832715, -0.536889,
		35.523258, 31.235876, 37.632484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.999969, 31.977760, 37.474369>,  <35.428471, 31.818777, 38.008308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.999969, 31.977760, 37.474369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.804134, 31.657454, 37.336338>,  <35.686634, 31.465269, 37.253517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.804134, 31.657454, 37.336338>,  <35.999969, 31.977760, 37.474369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.804134, 31.657454, 37.336338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059414, 0.425470, -0.903020,
		0.869929, -0.421603, -0.255880,
		-0.489586, -0.800766, -0.345079,
		35.657257, 31.417223, 37.232815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.275345, 31.971638, 36.862492>,  <35.999969, 31.977760, 37.474369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.275345, 31.971638, 36.862492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.955429, 31.735161, 36.820885>,  <35.763477, 31.593275, 36.795921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.955429, 31.735161, 36.820885>,  <36.275345, 31.971638, 36.862492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.955429, 31.735161, 36.820885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144078, 0.357284, -0.922816,
		0.582728, -0.723075, -0.370931,
		-0.799793, -0.591194, -0.104020,
		35.715492, 31.557802, 36.789680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.705109, 31.680340, 37.413624>,  <36.275345, 31.971638, 36.862492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.705109, 31.680340, 37.413624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.078705, 31.815853, 37.368225>,  <37.302864, 31.897161, 37.340984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.078705, 31.815853, 37.368225>,  <36.705109, 31.680340, 37.413624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.078705, 31.815853, 37.368225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264062, -0.440541, 0.858018,
		0.240680, -0.831354, -0.500922,
		0.933994, 0.338783, -0.113500,
		37.358902, 31.917488, 37.334175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.297577, 31.194225, 37.596851>,  <36.705109, 31.680340, 37.413624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.297577, 31.194225, 37.596851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.422668, 31.566074, 37.674828>,  <37.497723, 31.789185, 37.721615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.422668, 31.566074, 37.674828>,  <37.297577, 31.194225, 37.596851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.422668, 31.566074, 37.674828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345774, -0.302575, 0.888194,
		0.884670, -0.210357, -0.416063,
		0.312728, 0.929623, 0.194943,
		37.516487, 31.844961, 37.733311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.941822, 31.043615, 37.857040>,  <37.297577, 31.194225, 37.596851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.941822, 31.043615, 37.857040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.877335, 31.430658, 37.934753>,  <37.838642, 31.662884, 37.981380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.877335, 31.430658, 37.934753>,  <37.941822, 31.043615, 37.857040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.877335, 31.430658, 37.934753> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.587201, -0.064178, 0.806893,
		0.793224, 0.244168, -0.557833,
		-0.161216, 0.967607, 0.194283,
		37.828968, 31.720940, 37.993038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.606735, 31.255396, 38.131947>,  <37.941822, 31.043615, 37.857040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.606735, 31.255396, 38.131947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.307526, 31.497511, 38.240818>,  <38.127998, 31.642780, 38.306141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.307526, 31.497511, 38.240818>,  <38.606735, 31.255396, 38.131947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.307526, 31.497511, 38.240818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297304, -0.061038, 0.952830,
		0.593350, 0.793663, -0.134296,
		-0.748028, 0.605288, 0.272176,
		38.083118, 31.679098, 38.322472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.911499, 31.746618, 38.520054>,  <38.606735, 31.255396, 38.131947>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.911499, 31.746618, 38.520054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.530628, 31.722826, 38.639935>,  <38.302105, 31.708551, 38.711864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.530628, 31.722826, 38.639935>,  <38.911499, 31.746618, 38.520054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.530628, 31.722826, 38.639935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305548, -0.185128, 0.934006,
		-0.000073, 0.980913, 0.194449,
		-0.952177, -0.059481, 0.299703,
		38.244976, 31.704981, 38.729847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.936317, 32.117325, 39.011776>,  <38.911499, 31.746618, 38.520054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.936317, 32.117325, 39.011776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.611404, 31.898315, 39.092197>,  <38.416458, 31.766911, 39.140450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.611404, 31.898315, 39.092197>,  <38.936317, 32.117325, 39.011776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.611404, 31.898315, 39.092197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284944, -0.071735, 0.955856,
		-0.508930, 0.833711, 0.214282,
		-0.812279, -0.547522, 0.201053,
		38.367722, 31.734058, 39.152512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.743706, 32.244667, 39.763359>,  <38.936317, 32.117325, 39.011776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.743706, 32.244667, 39.763359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.556965, 31.906858, 39.658413>,  <38.444920, 31.704174, 39.595448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.556965, 31.906858, 39.658413>,  <38.743706, 32.244667, 39.763359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.556965, 31.906858, 39.658413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208575, -0.393459, 0.895369,
		-0.859385, 0.363286, 0.359834,
		-0.466855, -0.844519, -0.262361,
		38.416908, 31.653503, 39.579704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.342262, 32.095615, 40.302177>,  <38.743706, 32.244667, 39.763359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.342262, 32.095615, 40.302177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.371460, 31.744951, 40.111961>,  <38.388977, 31.534554, 39.997829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.371460, 31.744951, 40.111961>,  <38.342262, 32.095615, 40.302177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.371460, 31.744951, 40.111961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159143, -0.460468, 0.873294,
		-0.984553, -0.139425, 0.105903,
		0.072994, -0.876659, -0.475543,
		38.393360, 31.481955, 39.969299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.034264, 31.609119, 40.699028>,  <38.342262, 32.095615, 40.302177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.034264, 31.609119, 40.699028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.227283, 31.365351, 40.447392>,  <38.343094, 31.219090, 40.296410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.227283, 31.365351, 40.447392>,  <38.034264, 31.609119, 40.699028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.227283, 31.365351, 40.447392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140853, -0.654902, 0.742472,
		-0.864471, -0.446885, -0.230180,
		0.482545, -0.609424, -0.629089,
		38.372047, 31.182524, 40.258663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.760723, 30.957592, 40.725018>,  <38.034264, 31.609119, 40.699028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.760723, 30.957592, 40.725018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.114368, 30.848211, 40.573460>,  <38.326557, 30.782583, 40.482525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.114368, 30.848211, 40.573460>,  <37.760723, 30.957592, 40.725018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.114368, 30.848211, 40.573460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177473, -0.553597, 0.813655,
		-0.432249, -0.786610, -0.440915,
		0.884118, -0.273451, -0.378893,
		38.379604, 30.766176, 40.459793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.819000, 30.266474, 40.688087>,  <37.760723, 30.957592, 40.725018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.819000, 30.266474, 40.688087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.201332, 30.382696, 40.705791>,  <38.430733, 30.452429, 40.716415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.201332, 30.382696, 40.705791>,  <37.819000, 30.266474, 40.688087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.201332, 30.382696, 40.705791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126144, -0.541584, 0.831128,
		0.265460, -0.788837, -0.554316,
		0.955834, 0.290555, 0.044262,
		38.488083, 30.469862, 40.719070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.162220, 29.781929, 40.982422>,  <37.819000, 30.266474, 40.688087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.162220, 29.781929, 40.982422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.468071, 30.035648, 41.028053>,  <38.651581, 30.187880, 41.055431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.468071, 30.035648, 41.028053>,  <38.162220, 29.781929, 40.982422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.468071, 30.035648, 41.028053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215500, -0.418456, 0.882301,
		0.607380, -0.650044, -0.456653,
		0.764624, 0.634300, 0.114077,
		38.697456, 30.225939, 41.062275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.753311, 29.412889, 41.003201>,  <38.162220, 29.781929, 40.982422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.753311, 29.412889, 41.003201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.772133, 29.761326, 41.198746>,  <38.783428, 29.970388, 41.316074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.772133, 29.761326, 41.198746>,  <38.753311, 29.412889, 41.003201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.772133, 29.761326, 41.198746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392897, -0.466097, 0.792707,
		0.918378, 0.154770, -0.364182,
		0.047057, 0.871091, 0.488862,
		38.786251, 30.022654, 41.345406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.230026, 29.324310, 41.587879>,  <38.753311, 29.412889, 41.003201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.230026, 29.324310, 41.587879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.133732, 29.697226, 41.695866>,  <39.075954, 29.920975, 41.760658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.133732, 29.697226, 41.695866>,  <39.230026, 29.324310, 41.587879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.133732, 29.697226, 41.695866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219361, -0.218690, 0.950818,
		0.945478, 0.288114, -0.151862,
		-0.240733, 0.932290, 0.269968,
		39.061512, 29.976913, 41.776855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.780640, 29.616964, 41.968460>,  <39.230026, 29.324310, 41.587879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.780640, 29.616964, 41.968460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.448788, 29.803637, 42.091045>,  <39.249676, 29.915640, 42.164597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.448788, 29.803637, 42.091045>,  <39.780640, 29.616964, 41.968460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.448788, 29.803637, 42.091045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197914, -0.267437, 0.943031,
		0.522053, 0.843023, 0.129513,
		-0.829633, 0.466680, 0.306462,
		39.199898, 29.943640, 42.182983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.053314, 30.102356, 42.498112>,  <39.780640, 29.616964, 41.968460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.053314, 30.102356, 42.498112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.662258, 30.040411, 42.555008>,  <39.427624, 30.003244, 42.589146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.662258, 30.040411, 42.555008>,  <40.053314, 30.102356, 42.498112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.662258, 30.040411, 42.555008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163234, -0.132545, 0.977643,
		-0.132545, 0.979005, 0.154860,
		-0.977643, -0.154860, 0.142239,
		39.368965, 29.993954, 42.597679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.880592, 30.385544, 43.180885>,  <40.053314, 30.102356, 42.498112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.880592, 30.385544, 43.180885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.552597, 30.166519, 43.114201>,  <39.355801, 30.035105, 43.074192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.552597, 30.166519, 43.114201>,  <39.880592, 30.385544, 43.180885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.552597, 30.166519, 43.114201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063687, -0.202168, 0.977278,
		-0.568823, 0.811976, 0.130904,
		-0.819990, -0.547561, -0.166710,
		39.306599, 30.002251, 43.064186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.313129, 30.644787, 43.592937>,  <39.880592, 30.385544, 43.180885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.313129, 30.644787, 43.592937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.231388, 30.258364, 43.529720>,  <39.182343, 30.026510, 43.491791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.231388, 30.258364, 43.529720>,  <39.313129, 30.644787, 43.592937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.231388, 30.258364, 43.529720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114387, -0.136778, 0.983975,
		-0.972192, 0.219154, -0.082554,
		-0.204350, -0.966056, -0.158043,
		39.170082, 29.968548, 43.482307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.649109, 30.465048, 43.986439>,  <39.313129, 30.644787, 43.592937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.649109, 30.465048, 43.986439> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.814629, 30.107574, 43.917042>,  <38.913940, 29.893089, 43.875404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.814629, 30.107574, 43.917042>,  <38.649109, 30.465048, 43.986439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.814629, 30.107574, 43.917042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179226, -0.266816, 0.946936,
		-0.892552, -0.360746, -0.270580,
		0.413798, -0.893684, -0.173492,
		38.938766, 29.839470, 43.864994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.177784, 29.874577, 44.112740>,  <38.649109, 30.465048, 43.986439>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.177784, 29.874577, 44.112740> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.530788, 29.692511, 44.160080>,  <38.742592, 29.583271, 44.188484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.530788, 29.692511, 44.160080>,  <38.177784, 29.874577, 44.112740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.530788, 29.692511, 44.160080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326449, -0.411717, 0.850835,
		-0.338544, -0.789502, -0.511932,
		0.882508, -0.455165, 0.118348,
		38.795540, 29.555962, 44.195583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.013477, 29.342028, 44.238583>,  <38.177784, 29.874577, 44.112740>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.013477, 29.342028, 44.238583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.385983, 29.320225, 44.382683>,  <38.609486, 29.307142, 44.469143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.385983, 29.320225, 44.382683>,  <38.013477, 29.342028, 44.238583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.385983, 29.320225, 44.382683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358318, -0.316237, 0.878409,
		0.066045, -0.947113, -0.314030,
		0.931261, -0.054508, 0.360253,
		38.665359, 29.303873, 44.490757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.060921, 28.789253, 44.835217>,  <38.013477, 29.342028, 44.238583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.060921, 28.789253, 44.835217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.364349, 29.046762, 44.875450>,  <38.546406, 29.201269, 44.899590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.364349, 29.046762, 44.875450>,  <38.060921, 28.789253, 44.835217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.364349, 29.046762, 44.875450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130420, -0.001237, 0.991458,
		0.638400, -0.765214, 0.083023,
		0.758575, 0.643775, 0.100589,
		38.591923, 29.239895, 44.905628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.416325, 28.490452, 45.375118>,  <38.060921, 28.789253, 44.835217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.416325, 28.490452, 45.375118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.510361, 28.879225, 45.371624>,  <38.566784, 29.112490, 45.369526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.510361, 28.879225, 45.371624>,  <38.416325, 28.490452, 45.375118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.510361, 28.879225, 45.371624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083667, 0.029191, 0.996066,
		0.968365, -0.233438, 0.088182,
		0.235093, 0.971934, -0.008737,
		38.580887, 29.170805, 45.369003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.931709, 28.613840, 45.871399>,  <38.416325, 28.490452, 45.375118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.931709, 28.613840, 45.871399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.793800, 28.983389, 45.804955>,  <38.711056, 29.205118, 45.765087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.793800, 28.983389, 45.804955>,  <38.931709, 28.613840, 45.871399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.793800, 28.983389, 45.804955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034020, 0.164548, 0.985782,
		0.938070, 0.345520, -0.025300,
		-0.344770, 0.923872, -0.166112,
		38.690369, 29.260551, 45.755119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.313576, 29.014038, 46.327003>,  <38.931709, 28.613840, 45.871399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.313576, 29.014038, 46.327003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.013775, 29.262407, 46.235180>,  <38.833893, 29.411428, 46.180088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.013775, 29.262407, 46.235180>,  <39.313576, 29.014038, 46.327003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.013775, 29.262407, 46.235180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048994, 0.397840, 0.916146,
		0.660182, 0.675410, -0.328605,
		-0.749506, 0.620923, -0.229556,
		38.788921, 29.448685, 46.166313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.598610, 29.677454, 46.474907>,  <39.313576, 29.014038, 46.327003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.598610, 29.677454, 46.474907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.201099, 29.720247, 46.487347>,  <38.962593, 29.745924, 46.494812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.201099, 29.720247, 46.487347>,  <39.598610, 29.677454, 46.474907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.201099, 29.720247, 46.487347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064984, 0.329826, 0.941803,
		0.090500, 0.937960, -0.334725,
		-0.993774, 0.106985, 0.031103,
		38.902966, 29.752342, 46.496677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.506290, 30.300665, 46.841084>,  <39.598610, 29.677454, 46.474907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.506290, 30.300665, 46.841084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.161366, 30.100105, 46.869423>,  <38.954411, 29.979771, 46.886429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.161366, 30.100105, 46.869423>,  <39.506290, 30.300665, 46.841084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.161366, 30.100105, 46.869423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098048, 0.302592, 0.948063,
		-0.496796, 0.810579, -0.310090,
		-0.862311, -0.501398, 0.070851,
		38.902672, 29.949686, 46.890678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.067162, 30.823494, 47.284275>,  <39.506290, 30.300665, 46.841084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.067162, 30.823494, 47.284275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.872402, 30.474157, 47.278515>,  <38.755547, 30.264555, 47.275059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.872402, 30.474157, 47.278515>,  <39.067162, 30.823494, 47.284275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.872402, 30.474157, 47.278515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318699, 0.162281, 0.933861,
		-0.813243, 0.459281, -0.357347,
		-0.486895, -0.873342, -0.014399,
		38.726334, 30.212154, 47.274197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.381134, 30.946611, 47.576538>,  <39.067162, 30.823494, 47.284275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.381134, 30.946611, 47.576538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.474159, 30.562305, 47.637001>,  <38.529972, 30.331722, 47.673279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.474159, 30.562305, 47.637001>,  <38.381134, 30.946611, 47.576538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.474159, 30.562305, 47.637001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222660, 0.098699, 0.969887,
		-0.946751, -0.259214, -0.190970,
		0.232560, -0.960764, 0.151161,
		38.543926, 30.274076, 47.682350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.004299, 30.689629, 47.983246>,  <38.381134, 30.946611, 47.576538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.004299, 30.689629, 47.983246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.301521, 30.430412, 48.050076>,  <38.479855, 30.274883, 48.090172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.301521, 30.430412, 48.050076>,  <38.004299, 30.689629, 47.983246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.301521, 30.430412, 48.050076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066206, 0.177240, 0.981938,
		-0.665947, -0.740696, 0.088795,
		0.743055, -0.648040, 0.167071,
		38.524437, 30.236000, 48.100197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.712856, 30.258537, 48.516495>,  <38.004299, 30.689629, 47.983246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.712856, 30.258537, 48.516495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.109589, 30.209139, 48.529305>,  <38.347626, 30.179501, 48.536991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.109589, 30.209139, 48.529305>,  <37.712856, 30.258537, 48.516495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.109589, 30.209139, 48.529305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014710, 0.138633, 0.990234,
		-0.126729, -0.982614, 0.135684,
		0.991828, -0.123495, 0.032023,
		38.407139, 30.172091, 48.538910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.831821, 29.934864, 49.177780>,  <37.712856, 30.258537, 48.516495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.831821, 29.934864, 49.177780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.195023, 30.056267, 49.062252>,  <38.412941, 30.129108, 48.992935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.195023, 30.056267, 49.062252>,  <37.831821, 29.934864, 49.177780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.195023, 30.056267, 49.062252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269741, 0.103997, 0.957301,
		0.320583, -0.947137, 0.012561,
		0.908001, 0.303506, -0.288821,
		38.467422, 30.147318, 48.975605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.224506, 29.591131, 49.613628>,  <37.831821, 29.934864, 49.177780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.224506, 29.591131, 49.613628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.474949, 29.877783, 49.490704>,  <38.625214, 30.049774, 49.416950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.474949, 29.877783, 49.490704>,  <38.224506, 29.591131, 49.613628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.474949, 29.877783, 49.490704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155511, 0.271437, 0.949810,
		0.764077, -0.642467, 0.058504,
		0.626102, 0.716629, -0.307309,
		38.662781, 30.092772, 49.398510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.827801, 29.521908, 50.087852>,  <38.224506, 29.591131, 49.613628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.827801, 29.521908, 50.087852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.826168, 29.898659, 49.953480>,  <38.825188, 30.124708, 49.872856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.826168, 29.898659, 49.953480>,  <38.827801, 29.521908, 50.087852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.826168, 29.898659, 49.953480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154685, 0.332489, 0.930335,
		0.987955, -0.048163, -0.147052,
		-0.004086, 0.941876, -0.335935,
		38.824944, 30.181221, 49.852699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.351902, 29.896866, 50.355465>,  <38.827801, 29.521908, 50.087852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.351902, 29.896866, 50.355465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.092613, 30.184759, 50.256035>,  <38.937038, 30.357494, 50.196377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.092613, 30.184759, 50.256035>,  <39.351902, 29.896866, 50.355465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.092613, 30.184759, 50.256035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047605, 0.287511, 0.956593,
		0.759961, 0.631920, -0.152109,
		-0.648223, 0.719732, -0.248579,
		38.898148, 30.400679, 50.181461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.660290, 30.503904, 50.706825>,  <39.351902, 29.896866, 50.355465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.660290, 30.503904, 50.706825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.278461, 30.584877, 50.619366>,  <39.049362, 30.633461, 50.566891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.278461, 30.584877, 50.619366>,  <39.660290, 30.503904, 50.706825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.278461, 30.584877, 50.619366> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124383, 0.396103, 0.909742,
		0.270768, 0.895614, -0.352931,
		-0.954575, 0.202431, -0.218652,
		38.992088, 30.645607, 50.553772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.590462, 31.209835, 50.992920>,  <39.660290, 30.503904, 50.706825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.590462, 31.209835, 50.992920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.220867, 31.066526, 50.939426>,  <38.999111, 30.980541, 50.907330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.220867, 31.066526, 50.939426>,  <39.590462, 31.209835, 50.992920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.220867, 31.066526, 50.939426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245970, 0.289023, 0.925184,
		-0.292815, 0.887754, -0.355178,
		-0.923990, -0.358271, -0.133730,
		38.943668, 30.959045, 50.899307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.180981, 31.802973, 51.138733>,  <39.590462, 31.209835, 50.992920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.180981, 31.802973, 51.138733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.971870, 31.462885, 51.163479>,  <38.846405, 31.258831, 51.178326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.971870, 31.462885, 51.163479>,  <39.180981, 31.802973, 51.138733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.971870, 31.462885, 51.163479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381182, 0.298058, 0.875135,
		-0.762499, 0.433918, -0.479907,
		-0.522777, -0.850222, 0.061867,
		38.815037, 31.207819, 51.182037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.560841, 32.184940, 51.291801>,  <39.180981, 31.802973, 51.138733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.560841, 32.184940, 51.291801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.742027, 32.495899, 51.466373>,  <38.850739, 32.682476, 51.571117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.742027, 32.495899, 51.466373>,  <38.560841, 32.184940, 51.291801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.742027, 32.495899, 51.466373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066186, 0.458857, -0.886042,
		-0.889065, 0.430237, 0.156396,
		0.452971, 0.777397, 0.436430,
		38.877918, 32.729118, 51.597301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.222256, 32.714951, 50.900116>,  <38.560841, 32.184940, 51.291801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.222256, 32.714951, 50.900116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.555779, 32.864723, 51.062389>,  <38.755890, 32.954586, 51.159752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.555779, 32.864723, 51.062389>,  <38.222256, 32.714951, 50.900116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.555779, 32.864723, 51.062389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247166, 0.403891, -0.880784,
		-0.493641, 0.834671, 0.244219,
		0.833803, 0.374429, 0.405680,
		38.805920, 32.977051, 51.184093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.157421, 33.477394, 50.739162>,  <38.222256, 32.714951, 50.900116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.157421, 33.477394, 50.739162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.537083, 33.365643, 50.797192>,  <38.764881, 33.298592, 50.832008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.537083, 33.365643, 50.797192>,  <38.157421, 33.477394, 50.739162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.537083, 33.365643, 50.797192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263723, 0.454039, -0.851058,
		0.171903, 0.846046, 0.504634,
		0.949157, -0.279383, 0.145071,
		38.821831, 33.281826, 50.840714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.522049, 34.032726, 50.575562>,  <38.157421, 33.477394, 50.739162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.522049, 34.032726, 50.575562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.797634, 33.745304, 50.537590>,  <38.962986, 33.572853, 50.514809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.797634, 33.745304, 50.537590>,  <38.522049, 34.032726, 50.575562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.797634, 33.745304, 50.537590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251348, 0.359708, -0.898574,
		0.679818, 0.595225, 0.428432,
		0.688964, -0.718552, -0.094927,
		39.004322, 33.529739, 50.509113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.162605, 34.335678, 50.245247>,  <38.522049, 34.032726, 50.575562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.162605, 34.335678, 50.245247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.169468, 33.939850, 50.188046>,  <39.173588, 33.702351, 50.153725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.169468, 33.939850, 50.188046>,  <39.162605, 34.335678, 50.245247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.169468, 33.939850, 50.188046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448922, 0.135422, -0.883250,
		0.893406, -0.049039, 0.446565,
		0.017161, -0.989574, -0.143001,
		39.174618, 33.642979, 50.145145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.714214, 34.315918, 49.907803>,  <39.162605, 34.335678, 50.245247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.714214, 34.315918, 49.907803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.530796, 33.968201, 49.833977>,  <39.420746, 33.759571, 49.789680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.530796, 33.968201, 49.833977>,  <39.714214, 34.315918, 49.907803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.530796, 33.968201, 49.833977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275698, 0.058288, -0.959475,
		0.844826, -0.490844, 0.212936,
		-0.458541, -0.869295, -0.184568,
		39.393234, 33.707413, 49.778606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.189743, 33.890343, 49.336895>,  <39.714214, 34.315918, 49.907803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.189743, 33.890343, 49.336895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.828285, 33.719776, 49.352871>,  <39.611412, 33.617435, 49.362457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.828285, 33.719776, 49.352871>,  <40.189743, 33.890343, 49.336895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.828285, 33.719776, 49.352871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027919, -0.034402, -0.999018,
		0.427374, -0.903871, 0.019181,
		-0.903644, -0.426419, 0.039938,
		39.557194, 33.591850, 49.364853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.252903, 33.287067, 48.951893>,  <40.189743, 33.890343, 49.336895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.252903, 33.287067, 48.951893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.870075, 33.402431, 48.963455>,  <39.640377, 33.471649, 48.970394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.870075, 33.402431, 48.963455>,  <40.252903, 33.287067, 48.951893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.870075, 33.402431, 48.963455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039774, -0.031892, -0.998700,
		-0.287113, -0.956976, 0.041994,
		-0.957070, 0.288410, 0.028906,
		39.582954, 33.488953, 48.972126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.906673, 32.925755, 48.567383>,  <40.252903, 33.287067, 48.951893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.906673, 32.925755, 48.567383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.649754, 33.232021, 48.581306>,  <39.495602, 33.415779, 48.589661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.649754, 33.232021, 48.581306>,  <39.906673, 32.925755, 48.567383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.649754, 33.232021, 48.581306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006639, 0.050966, -0.998678,
		-0.766426, -0.641218, -0.037818,
		-0.642298, 0.765664, 0.034805,
		39.457066, 33.461720, 48.591747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.389236, 32.737782, 48.079113>,  <39.906673, 32.925755, 48.567383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.389236, 32.737782, 48.079113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.364357, 33.134315, 48.125385>,  <39.349430, 33.372238, 48.153149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.364357, 33.134315, 48.125385>,  <39.389236, 32.737782, 48.079113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.364357, 33.134315, 48.125385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190958, 0.101946, -0.976290,
		-0.979626, -0.082816, 0.182963,
		-0.062200, 0.991337, 0.115683,
		39.345695, 33.431717, 48.160091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.750568, 32.888077, 47.731049>,  <39.389236, 32.737782, 48.079113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.750568, 32.888077, 47.731049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.974453, 33.218414, 47.758480>,  <39.108784, 33.416618, 47.774940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.974453, 33.218414, 47.758480>,  <38.750568, 32.888077, 47.731049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.974453, 33.218414, 47.758480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178516, 0.200973, -0.963194,
		-0.809228, 0.526872, 0.259914,
		0.559716, 0.825842, 0.068578,
		39.142368, 33.466167, 47.779053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.424103, 33.385429, 47.300808>,  <38.750568, 32.888077, 47.731049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.424103, 33.385429, 47.300808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.806992, 33.494244, 47.340252>,  <39.036724, 33.559532, 47.363918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.806992, 33.494244, 47.340252>,  <38.424103, 33.385429, 47.300808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.806992, 33.494244, 47.340252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078545, 0.083705, -0.993390,
		-0.278491, 0.958640, 0.058758,
		0.957222, 0.272036, 0.098607,
		39.094158, 33.575855, 47.369835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.392487, 33.970844, 46.967590>,  <38.424103, 33.385429, 47.300808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.392487, 33.970844, 46.967590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.770065, 33.839355, 46.979630>,  <38.996613, 33.760464, 46.986855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.770065, 33.839355, 46.979630>,  <38.392487, 33.970844, 46.967590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.770065, 33.839355, 46.979630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098329, 0.192974, -0.976265,
		0.315111, 0.924502, 0.214480,
		0.943947, -0.328721, 0.030097,
		39.053249, 33.740738, 46.988659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.700184, 34.352692, 46.419094>,  <38.392487, 33.970844, 46.967590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.700184, 34.352692, 46.419094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.899376, 34.020401, 46.518623>,  <39.018890, 33.821026, 46.578342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.899376, 34.020401, 46.518623>,  <38.700184, 34.352692, 46.419094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.899376, 34.020401, 46.518623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255488, -0.133651, -0.957530,
		0.828699, 0.540402, 0.145684,
		0.497980, -0.830724, 0.248823,
		39.048771, 33.771183, 46.593269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.233753, 34.399109, 45.974857>,  <38.700184, 34.352692, 46.419094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.233753, 34.399109, 45.974857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.241268, 34.020367, 46.103302>,  <39.245777, 33.793121, 46.180370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.241268, 34.020367, 46.103302>,  <39.233753, 34.399109, 45.974857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.241268, 34.020367, 46.103302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350134, -0.294604, -0.889165,
		0.936511, 0.129140, 0.325990,
		0.018789, -0.946853, 0.321116,
		39.246906, 33.736309, 46.199638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.959076, 34.185467, 45.799911>,  <39.233753, 34.399109, 45.974857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.959076, 34.185467, 45.799911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.693394, 33.893456, 45.864262>,  <39.533985, 33.718246, 45.902874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.693394, 33.893456, 45.864262>,  <39.959076, 34.185467, 45.799911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.693394, 33.893456, 45.864262> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125712, -0.321223, -0.938623,
		0.736902, -0.603216, 0.305133,
		-0.664208, -0.730031, 0.160879,
		39.494133, 33.674446, 45.912525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.168774, 33.790920, 45.229385>,  <39.959076, 34.185467, 45.799911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.168774, 33.790920, 45.229385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.844086, 33.597069, 45.359768>,  <39.649273, 33.480759, 45.438000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.844086, 33.597069, 45.359768>,  <40.168774, 33.790920, 45.229385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.844086, 33.597069, 45.359768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028715, -0.524310, -0.851043,
		0.583347, -0.700165, 0.411674,
		-0.811716, -0.484633, 0.325960,
		39.600571, 33.451679, 45.457558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.247852, 32.936111, 45.157688>,  <40.168774, 33.790920, 45.229385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.247852, 32.936111, 45.157688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.868500, 33.061623, 45.139309>,  <39.640888, 33.136929, 45.128281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.868500, 33.061623, 45.139309>,  <40.247852, 32.936111, 45.157688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.868500, 33.061623, 45.139309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065999, -0.337002, -0.939188,
		-0.310171, -0.887682, 0.340317,
		-0.948387, 0.313770, -0.045942,
		39.583984, 33.155754, 45.125526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.049377, 32.398682, 44.802444>,  <40.247852, 32.936111, 45.157688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.049377, 32.398682, 44.802444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.762447, 32.673985, 44.759094>,  <39.590290, 32.839165, 44.733086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.762447, 32.673985, 44.759094>,  <40.049377, 32.398682, 44.802444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.762447, 32.673985, 44.759094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052529, -0.208524, -0.976606,
		-0.694755, -0.694852, 0.185733,
		-0.717326, 0.688258, -0.108373,
		39.547249, 32.880463, 44.726582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.457676, 32.100052, 44.429077>,  <40.049377, 32.398682, 44.802444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.457676, 32.100052, 44.429077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.443981, 32.496479, 44.377522>,  <39.435764, 32.734337, 44.346588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.443981, 32.496479, 44.377522>,  <39.457676, 32.100052, 44.429077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.443981, 32.496479, 44.377522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052450, -0.130569, -0.990051,
		-0.998036, -0.027140, 0.056453,
		-0.034240, 0.991068, -0.128889,
		39.433708, 32.793800, 44.338856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.911884, 32.220760, 44.067348>,  <39.457676, 32.100052, 44.429077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.911884, 32.220760, 44.067348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.103439, 32.568420, 44.017956>,  <39.218372, 32.777016, 43.988319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.103439, 32.568420, 44.017956>,  <38.911884, 32.220760, 44.067348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.103439, 32.568420, 44.017956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021489, -0.152225, -0.988112,
		-0.877616, 0.470536, -0.091575,
		0.478883, 0.869151, -0.123484,
		39.247105, 32.829166, 43.980911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.606064, 32.613213, 43.480713>,  <38.911884, 32.220760, 44.067348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.606064, 32.613213, 43.480713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.978226, 32.758839, 43.497742>,  <39.201523, 32.846214, 43.507957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.978226, 32.758839, 43.497742>,  <38.606064, 32.613213, 43.480713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.978226, 32.758839, 43.497742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103245, -0.148852, -0.983455,
		-0.351704, 0.919402, -0.176080,
		0.930400, 0.364064, 0.042571,
		39.257347, 32.868057, 43.510513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.715374, 32.939453, 42.923012>,  <38.606064, 32.613213, 43.480713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.715374, 32.939453, 42.923012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.099369, 32.914059, 43.032108>,  <39.329765, 32.898823, 43.097565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.099369, 32.914059, 43.032108>,  <38.715374, 32.939453, 42.923012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.099369, 32.914059, 43.032108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253196, -0.219248, -0.942243,
		0.119620, 0.973601, -0.194401,
		0.959991, -0.063490, 0.272738,
		39.387367, 32.895012, 43.113930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.157509, 33.287468, 42.390297>,  <38.715374, 32.939453, 42.923012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.157509, 33.287468, 42.390297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.406055, 33.019489, 42.552818>,  <39.555183, 32.858704, 42.650330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.406055, 33.019489, 42.552818>,  <39.157509, 33.287468, 42.390297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.406055, 33.019489, 42.552818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352304, -0.224285, -0.908613,
		0.699846, 0.707724, 0.096660,
		0.621368, -0.669943, 0.406299,
		39.592464, 32.818508, 42.674709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.761429, 33.472252, 42.138855>,  <39.157509, 33.287468, 42.390297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.761429, 33.472252, 42.138855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.843864, 33.100998, 42.262848>,  <39.893326, 32.878246, 42.337246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.843864, 33.100998, 42.262848>,  <39.761429, 33.472252, 42.138855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.843864, 33.100998, 42.262848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407646, -0.206557, -0.889471,
		0.889580, 0.309674, 0.335782,
		0.206088, -0.928136, 0.309986,
		39.905689, 32.822556, 42.355843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.353741, 33.399391, 41.949192>,  <39.761429, 33.472252, 42.138855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.353741, 33.399391, 41.949192> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.223518, 33.023048, 41.986725>,  <40.145386, 32.797245, 42.009247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.223518, 33.023048, 41.986725>,  <40.353741, 33.399391, 41.949192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.223518, 33.023048, 41.986725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389898, -0.223997, -0.893199,
		0.861389, -0.254202, 0.439761,
		-0.325558, -0.940854, 0.093836,
		40.125851, 32.740791, 42.014877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.962791, 32.935165, 41.738541>,  <40.353741, 33.399391, 41.949192>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.962791, 32.935165, 41.738541> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.621944, 32.731956, 41.688251>,  <40.417435, 32.610031, 41.658077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.621944, 32.731956, 41.688251>,  <40.962791, 32.935165, 41.738541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.621944, 32.731956, 41.688251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216748, -0.123927, -0.968330,
		0.476349, -0.852385, 0.215713,
		-0.852122, -0.508018, -0.125720,
		40.366306, 32.579552, 41.650536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.087582, 32.368107, 41.484703>,  <40.962791, 32.935165, 41.738541>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.087582, 32.368107, 41.484703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.707863, 32.354153, 41.359726>,  <40.480034, 32.345779, 41.284740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.707863, 32.354153, 41.359726>,  <41.087582, 32.368107, 41.484703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.707863, 32.354153, 41.359726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309772, -0.273436, -0.910645,
		-0.053666, -0.961257, 0.270378,
		-0.949295, -0.034885, -0.312445,
		40.423073, 32.343689, 41.265991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.111950, 31.870600, 40.853554>,  <41.087582, 32.368107, 41.484703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.111950, 31.870600, 40.853554> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.748161, 32.035610, 40.832813>,  <40.529888, 32.134617, 40.820370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.748161, 32.035610, 40.832813>,  <41.111950, 31.870600, 40.853554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.748161, 32.035610, 40.832813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022529, -0.075623, -0.996882,
		-0.415162, -0.907801, 0.059482,
		-0.909468, 0.412527, -0.051848,
		40.475319, 32.159367, 40.817261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.795876, 31.524870, 40.404793>,  <41.111950, 31.870600, 40.853554>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.795876, 31.524870, 40.404793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.642765, 31.894382, 40.400665>,  <40.550900, 32.116089, 40.398190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.642765, 31.894382, 40.400665>,  <40.795876, 31.524870, 40.404793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.642765, 31.894382, 40.400665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119306, 0.038359, -0.992116,
		-0.916103, -0.380993, -0.124895,
		-0.382780, 0.923782, -0.010314,
		40.527931, 32.171516, 40.397572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.264870, 31.542326, 39.824314>,  <40.795876, 31.524870, 40.404793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.264870, 31.542326, 39.824314> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.362850, 31.920164, 39.911709>,  <40.421638, 32.146866, 39.964146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.362850, 31.920164, 39.911709>,  <40.264870, 31.542326, 39.824314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.362850, 31.920164, 39.911709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285625, 0.145040, -0.947302,
		-0.926508, 0.294448, -0.234273,
		0.244952, 0.944597, 0.218482,
		40.436337, 32.203545, 39.977253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.147083, 31.908564, 39.172699>,  <40.264870, 31.542326, 39.824314>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.147083, 31.908564, 39.172699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.362370, 32.159500, 39.397827>,  <40.491539, 32.310062, 39.532906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.362370, 32.159500, 39.397827>,  <40.147083, 31.908564, 39.172699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.362370, 32.159500, 39.397827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363247, 0.429922, -0.826570,
		-0.760512, 0.649314, 0.003510,
		0.538213, 0.627342, 0.562822,
		40.523834, 32.347702, 39.566673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.001907, 32.576752, 38.897942>,  <40.147083, 31.908564, 39.172699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.001907, 32.576752, 38.897942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.354137, 32.600742, 39.085976>,  <40.565475, 32.615135, 39.198795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.354137, 32.600742, 39.085976>,  <40.001907, 32.576752, 38.897942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.354137, 32.600742, 39.085976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405424, 0.418288, -0.812814,
		-0.245383, 0.906332, 0.344019,
		0.880579, 0.059977, 0.470090,
		40.618313, 32.618736, 39.227001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.100254, 33.217442, 38.819874>,  <40.001907, 32.576752, 38.897942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.100254, 33.217442, 38.819874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.443218, 33.016567, 38.864876>,  <40.648998, 32.896042, 38.891876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.443218, 33.016567, 38.864876>,  <40.100254, 33.217442, 38.819874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.443218, 33.016567, 38.864876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383997, 0.478745, -0.789525,
		0.342623, 0.720151, 0.603318,
		0.857412, -0.502182, 0.112507,
		40.700443, 32.865913, 38.898628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.500874, 33.734791, 38.559742>,  <40.100254, 33.217442, 38.819874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.500874, 33.734791, 38.559742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.775562, 33.446255, 38.595695>,  <40.940376, 33.273132, 38.617268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.775562, 33.446255, 38.595695>,  <40.500874, 33.734791, 38.559742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.775562, 33.446255, 38.595695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.570175, 0.457812, -0.682136,
		0.450904, 0.519686, 0.725681,
		0.686721, -0.721343, 0.089882,
		40.981579, 33.229851, 38.622662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.093784, 34.046860, 38.796318>,  <40.500874, 33.734791, 38.559742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.093784, 34.046860, 38.796318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.216743, 33.703312, 38.632442>,  <41.290520, 33.497181, 38.534119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.216743, 33.703312, 38.632442>,  <41.093784, 34.046860, 38.796318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.216743, 33.703312, 38.632442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.625643, 0.506811, -0.593054,
		0.716992, -0.074014, 0.693141,
		0.307398, -0.858874, -0.409686,
		41.308964, 33.445648, 38.509537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.879627, 34.095016, 38.707069>,  <41.093784, 34.046860, 38.796318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.879627, 34.095016, 38.707069> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.735256, 33.823780, 38.450966>,  <41.648632, 33.661037, 38.297306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.735256, 33.823780, 38.450966>,  <41.879627, 34.095016, 38.707069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.735256, 33.823780, 38.450966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539680, 0.408036, -0.736378,
		0.760576, -0.611313, 0.218678,
		-0.360929, -0.678088, -0.640256,
		41.626976, 33.620354, 38.258888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.515411, 33.989559, 38.315754>,  <41.879627, 34.095016, 38.707069>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.515411, 33.989559, 38.315754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.202339, 33.848660, 38.110489>,  <42.014496, 33.764122, 37.987331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.202339, 33.848660, 38.110489>,  <42.515411, 33.989559, 38.315754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.202339, 33.848660, 38.110489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387550, 0.369342, -0.844625,
		0.487049, -0.859946, -0.152563,
		-0.782680, -0.352248, -0.513160,
		41.967533, 33.742985, 37.956539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.796326, 33.657677, 37.668873>,  <42.515411, 33.989559, 38.315754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.796326, 33.657677, 37.668873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.415051, 33.756153, 37.598640>,  <42.186287, 33.815239, 37.556499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.415051, 33.756153, 37.598640>,  <42.796326, 33.657677, 37.668873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.415051, 33.756153, 37.598640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251943, 0.325455, -0.911375,
		-0.167229, -0.912945, -0.372245,
		-0.953184, 0.246193, -0.175585,
		42.129097, 33.830009, 37.545963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.673103, 33.499550, 37.027294>,  <42.796326, 33.657677, 37.668873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.673103, 33.499550, 37.027294> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.390915, 33.766731, 37.122082>,  <42.221603, 33.927040, 37.178955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.390915, 33.766731, 37.122082>,  <42.673103, 33.499550, 37.027294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.390915, 33.766731, 37.122082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233352, 0.534617, -0.812239,
		-0.669221, -0.517714, -0.533024,
		-0.705472, 0.667949, 0.236968,
		42.179272, 33.967117, 37.193172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.568214, 33.773460, 36.470963>,  <42.673103, 33.499550, 37.027294>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.568214, 33.773460, 36.470963> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.359993, 34.027374, 36.699371>,  <42.235062, 34.179722, 36.836418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.359993, 34.027374, 36.699371>,  <42.568214, 33.773460, 36.470963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.359993, 34.027374, 36.699371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094269, 0.707418, -0.700481,
		-0.848609, -0.310809, -0.428090,
		-0.520554, 0.634789, 0.571022,
		42.203827, 34.217812, 36.870678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.087620, 34.031414, 36.110756>,  <42.568214, 33.773460, 36.470963>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.087620, 34.031414, 36.110756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.143478, 34.315010, 36.387257>,  <42.176994, 34.485168, 36.553158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.143478, 34.315010, 36.387257>,  <42.087620, 34.031414, 36.110756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.143478, 34.315010, 36.387257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027177, 0.700572, -0.713064,
		-0.989828, 0.080794, 0.117103,
		0.139650, 0.708993, 0.691250,
		42.185375, 34.527710, 36.594631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.465897, 34.631046, 36.206425>,  <42.087620, 34.031414, 36.110756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.465897, 34.631046, 36.206425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.818851, 34.780159, 36.321266>,  <42.030624, 34.869625, 36.390171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.818851, 34.780159, 36.321266>,  <41.465897, 34.631046, 36.206425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.818851, 34.780159, 36.321266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122398, 0.771025, -0.624931,
		-0.454329, 0.516289, 0.725969,
		0.882385, 0.372781, 0.287106,
		42.083569, 34.891994, 36.407398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.402920, 35.338703, 36.495785>,  <41.465897, 34.631046, 36.206425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.402920, 35.338703, 36.495785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.759090, 35.319904, 36.314705>,  <41.972794, 35.308624, 36.206059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.759090, 35.319904, 36.314705>,  <41.402920, 35.338703, 36.495785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.759090, 35.319904, 36.314705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130406, 0.926606, -0.352697,
		0.436047, 0.373085, 0.818945,
		0.890425, -0.046997, -0.452697,
		42.026218, 35.305805, 36.178894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.870411, 35.862797, 36.772930>,  <41.402920, 35.338703, 36.495785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.870411, 35.862797, 36.772930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.933388, 35.753342, 36.393387>,  <41.971172, 35.687668, 36.165661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.933388, 35.753342, 36.393387>,  <41.870411, 35.862797, 36.772930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.933388, 35.753342, 36.393387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061381, 0.956273, -0.285962,
		0.985618, 0.103265, 0.133763,
		0.157444, -0.273639, -0.948859,
		41.980621, 35.671249, 36.108730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.591652, 36.265720, 36.483177>,  <41.870411, 35.862797, 36.772930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.591652, 36.265720, 36.483177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.303146, 36.195335, 36.215202>,  <42.130043, 36.153103, 36.054417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.303146, 36.195335, 36.215202>,  <42.591652, 36.265720, 36.483177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.303146, 36.195335, 36.215202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049100, 0.977749, -0.203954,
		0.690918, -0.114211, -0.713854,
		-0.721264, -0.175965, -0.669937,
		42.086769, 36.142548, 36.014221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.292007, 36.391628, 36.362041>,  <42.591652, 36.265720, 36.483177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.292007, 36.391628, 36.362041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.324482, 36.130039, 36.662903>,  <43.343967, 35.973087, 36.843418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.324482, 36.130039, 36.662903>,  <43.292007, 36.391628, 36.362041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.324482, 36.130039, 36.662903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327849, -0.730171, -0.599471,
		0.941236, -0.197925, -0.273681,
		0.081183, -0.653970, 0.752152,
		43.348839, 35.933849, 36.888550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.798466, 35.849354, 36.547363>,  <43.292007, 36.391628, 36.362041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.798466, 35.849354, 36.547363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.006924, 36.154545, 36.394379>,  <44.131996, 36.337658, 36.302586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.006924, 36.154545, 36.394379>,  <43.798466, 35.849354, 36.547363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.006924, 36.154545, 36.394379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424144, 0.620403, 0.659698,
		0.740617, -0.181575, 0.646929,
		0.521141, 0.762975, -0.382467,
		44.163265, 36.383438, 36.279640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.085388, 36.235744, 37.159515>,  <43.798466, 35.849354, 36.547363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.085388, 36.235744, 37.159515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.132462, 36.495468, 36.858967>,  <44.160706, 36.651302, 36.678638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.132462, 36.495468, 36.858967>,  <44.085388, 36.235744, 37.159515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.132462, 36.495468, 36.858967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345839, 0.736057, 0.581907,
		0.930885, 0.191373, 0.311175,
		0.117681, 0.649305, -0.751368,
		44.167767, 36.690258, 36.633556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.480301, 36.663914, 37.454514>,  <44.085388, 36.235744, 37.159515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.480301, 36.663914, 37.454514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.312515, 36.838661, 37.136219>,  <44.211845, 36.943508, 36.945244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.312515, 36.838661, 37.136219>,  <44.480301, 36.663914, 37.454514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.312515, 36.838661, 37.136219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206520, 0.807669, 0.552286,
		0.883968, 0.395999, -0.248565,
		-0.419463, 0.436870, -0.795736,
		44.186676, 36.969723, 36.897499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.802536, 37.274029, 37.413586>,  <44.480301, 36.663914, 37.454514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.802536, 37.274029, 37.413586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.469246, 37.339886, 37.202446>,  <44.269272, 37.379398, 37.075764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.469246, 37.339886, 37.202446>,  <44.802536, 37.274029, 37.413586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.469246, 37.339886, 37.202446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229892, 0.765064, 0.601521,
		0.502871, 0.622552, -0.599625,
		-0.833229, 0.164639, -0.527848,
		44.219276, 37.389278, 37.044090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.865051, 37.977436, 37.352776>,  <44.802536, 37.274029, 37.413586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.865051, 37.977436, 37.352776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.484993, 37.855782, 37.325310>,  <44.256958, 37.782787, 37.308830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.484993, 37.855782, 37.325310>,  <44.865051, 37.977436, 37.352776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.484993, 37.855782, 37.325310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290572, 0.783881, 0.548725,
		-0.113063, 0.541323, -0.833178,
		-0.950150, -0.304139, -0.068665,
		44.199947, 37.764542, 37.304710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.470211, 38.465786, 37.072872>,  <44.865051, 37.977436, 37.352776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.470211, 38.465786, 37.072872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.208206, 38.252983, 37.287506>,  <44.051003, 38.125301, 37.416286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.208206, 38.252983, 37.287506>,  <44.470211, 38.465786, 37.072872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.208206, 38.252983, 37.287506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156804, 0.790375, 0.592216,
		-0.739170, 0.303770, -0.601126,
		-0.655012, -0.532007, 0.536589,
		44.011703, 38.093380, 37.448483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.168839, 39.001991, 37.401546>,  <44.470211, 38.465786, 37.072872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.168839, 39.001991, 37.401546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.009407, 38.681400, 37.579884>,  <43.913750, 38.489048, 37.686886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.009407, 38.681400, 37.579884>,  <44.168839, 39.001991, 37.401546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.009407, 38.681400, 37.579884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275772, 0.568363, 0.775186,
		-0.874691, 0.186021, -0.447561,
		-0.398579, -0.801473, 0.445843,
		43.889835, 38.440960, 37.713638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.444298, 39.182991, 37.623856>,  <44.168839, 39.001991, 37.401546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.444298, 39.182991, 37.623856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.559280, 38.886219, 37.866150>,  <43.628269, 38.708157, 38.011528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.559280, 38.886219, 37.866150>,  <43.444298, 39.182991, 37.623856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.559280, 38.886219, 37.866150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478161, 0.436816, 0.761941,
		-0.829899, -0.508661, -0.229196,
		0.287453, -0.741927, 0.605735,
		43.645515, 38.663639, 38.047871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.940769, 39.080379, 38.177708>,  <43.444298, 39.182991, 37.623856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.940769, 39.080379, 38.177708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.258339, 38.892742, 38.332443>,  <43.448879, 38.780159, 38.425285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.258339, 38.892742, 38.332443>,  <42.940769, 39.080379, 38.177708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.258339, 38.892742, 38.332443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194037, 0.407483, 0.892361,
		-0.576226, -0.783525, 0.232489,
		0.793922, -0.469091, 0.386835,
		43.496517, 38.752014, 38.448494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.690067, 39.103157, 38.762886>,  <42.940769, 39.080379, 38.177708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.690067, 39.103157, 38.762886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.047302, 38.953701, 38.863113>,  <43.261642, 38.864029, 38.923252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.047302, 38.953701, 38.863113>,  <42.690067, 39.103157, 38.762886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.047302, 38.953701, 38.863113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146535, 0.285001, 0.947260,
		-0.425347, -0.882705, 0.199780,
		0.893089, -0.373639, 0.250572,
		43.315228, 38.841610, 38.938286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.623455, 38.503311, 39.258602>,  <42.690067, 39.103157, 38.762886>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.623455, 38.503311, 39.258602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.972248, 38.695694, 39.295078>,  <43.181526, 38.811123, 39.316963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.972248, 38.695694, 39.295078>,  <42.623455, 38.503311, 39.258602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.972248, 38.695694, 39.295078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248245, 0.273891, 0.929171,
		0.421918, -0.832863, 0.358225,
		0.871986, 0.480961, 0.091195,
		43.233845, 38.839981, 39.322437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.869072, 38.279987, 39.914291>,  <42.623455, 38.503311, 39.258602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.869072, 38.279987, 39.914291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.074474, 38.612064, 39.827496>,  <43.197716, 38.811310, 39.775417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.074474, 38.612064, 39.827496>,  <42.869072, 38.279987, 39.914291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.074474, 38.612064, 39.827496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176437, 0.349627, 0.920126,
		0.839750, -0.434207, 0.326014,
		0.513508, 0.830196, -0.216989,
		43.228527, 38.861122, 39.762398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.343216, 38.278008, 40.439499>,  <42.869072, 38.279987, 39.914291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.343216, 38.278008, 40.439499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.340427, 38.649685, 40.291691>,  <43.338753, 38.872692, 40.203007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.340427, 38.649685, 40.291691>,  <43.343216, 38.278008, 40.439499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.340427, 38.649685, 40.291691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161637, 0.363624, 0.917415,
		0.986826, 0.066125, 0.147657,
		-0.006973, 0.929196, -0.369521,
		43.338337, 38.928444, 40.180836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.794174, 38.563389, 40.764694>,  <43.343216, 38.278008, 40.439499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.794174, 38.563389, 40.764694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.565777, 38.872448, 40.653713>,  <43.428738, 39.057884, 40.587124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.565777, 38.872448, 40.653713>,  <43.794174, 38.563389, 40.764694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.565777, 38.872448, 40.653713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029677, 0.318317, 0.947520,
		0.820417, 0.549262, -0.158827,
		-0.570994, 0.772648, -0.277454,
		43.394478, 39.104244, 40.570477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.039024, 39.173786, 41.080105>,  <43.794174, 38.563389, 40.764694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.039024, 39.173786, 41.080105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.664268, 39.284779, 40.995014>,  <43.439415, 39.351376, 40.943962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.664268, 39.284779, 40.995014>,  <44.039024, 39.173786, 41.080105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.664268, 39.284779, 40.995014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137847, 0.265990, 0.954069,
		0.321317, 0.923176, -0.210952,
		-0.936885, 0.277480, -0.212724,
		43.383202, 39.368023, 40.931198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.958267, 39.780064, 41.468147>,  <44.039024, 39.173786, 41.080105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.958267, 39.780064, 41.468147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.584618, 39.689064, 41.358131>,  <43.360428, 39.634464, 41.292122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.584618, 39.689064, 41.358131>,  <43.958267, 39.780064, 41.468147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.584618, 39.689064, 41.358131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325789, 0.228611, 0.917387,
		-0.145827, 0.946563, -0.287668,
		-0.934129, -0.227499, -0.275042,
		43.304379, 39.620815, 41.275620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.527500, 40.242641, 41.733582>,  <43.958267, 39.780064, 41.468147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.527500, 40.242641, 41.733582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.283360, 39.930180, 41.681026>,  <43.136875, 39.742702, 41.649494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.283360, 39.930180, 41.681026>,  <43.527500, 40.242641, 41.733582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.283360, 39.930180, 41.681026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362437, 0.127908, 0.923189,
		-0.704349, 0.611094, -0.361189,
		-0.610354, -0.781155, -0.131391,
		43.100254, 39.695831, 41.641609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.773228, 40.407959, 42.068306>,  <43.527500, 40.242641, 41.733582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.773228, 40.407959, 42.068306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.804092, 40.009327, 42.056438>,  <42.822613, 39.770149, 42.049316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.804092, 40.009327, 42.056438>,  <42.773228, 40.407959, 42.068306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.804092, 40.009327, 42.056438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524719, -0.065897, 0.848721,
		-0.847771, -0.049920, -0.528007,
		0.077162, -0.996577, -0.029672,
		42.827240, 39.710354, 42.047539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.156490, 40.215431, 42.188320>,  <42.773228, 40.407959, 42.068306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.156490, 40.215431, 42.188320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.346527, 39.868359, 42.246861>,  <42.460548, 39.660114, 42.281986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.346527, 39.868359, 42.246861>,  <42.156490, 40.215431, 42.188320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.346527, 39.868359, 42.246861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.565092, -0.173358, 0.806609,
		-0.674506, -0.465918, -0.572680,
		0.475092, -0.867680, 0.146355,
		42.489056, 39.608055, 42.290768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.637379, 39.840969, 42.506737>,  <42.156490, 40.215431, 42.188320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.637379, 39.840969, 42.506737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.975433, 39.643898, 42.589703>,  <42.178265, 39.525658, 42.639481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.975433, 39.643898, 42.589703>,  <41.637379, 39.840969, 42.506737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.975433, 39.643898, 42.589703> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324967, -0.165447, 0.931141,
		-0.424436, -0.854340, -0.299929,
		0.845133, -0.492677, 0.207411,
		42.228973, 39.496094, 42.651924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.455799, 39.226089, 42.704502>,  <41.637379, 39.840969, 42.506737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.455799, 39.226089, 42.704502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.814682, 39.245319, 42.880093>,  <42.030014, 39.256859, 42.985447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.814682, 39.245319, 42.880093>,  <41.455799, 39.226089, 42.704502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.814682, 39.245319, 42.880093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433676, -0.091547, 0.896407,
		0.083287, -0.994639, -0.061286,
		0.897212, 0.048081, 0.438975,
		42.083847, 39.259743, 43.011784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.593643, 38.639328, 43.266712>,  <41.455799, 39.226089, 42.704502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.593643, 38.639328, 43.266712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.799347, 38.974129, 43.341503>,  <41.922768, 39.175011, 43.386375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.799347, 38.974129, 43.341503>,  <41.593643, 38.639328, 43.266712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.799347, 38.974129, 43.341503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358770, 0.011935, 0.933350,
		0.778988, -0.547063, 0.306431,
		0.514258, 0.837007, 0.186973,
		41.953625, 39.225231, 43.397594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.072460, 38.495632, 43.914375>,  <41.593643, 38.639328, 43.266712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.072460, 38.495632, 43.914375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.014408, 38.889980, 43.880932>,  <41.979576, 39.126591, 43.860867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.014408, 38.889980, 43.880932>,  <42.072460, 38.495632, 43.914375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.014408, 38.889980, 43.880932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022691, 0.081166, 0.996442,
		0.989152, 0.146509, 0.010591,
		-0.145129, 0.985874, -0.083610,
		41.970871, 39.185741, 43.855850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.417103, 38.269691, 44.303772>,  <42.072460, 38.495632, 43.914375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.417103, 38.269691, 44.303772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.155834, 37.984413, 44.202007>,  <40.999073, 37.813248, 44.140949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.155834, 37.984413, 44.202007>,  <41.417103, 38.269691, 44.303772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.155834, 37.984413, 44.202007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.695154, -0.431566, -0.574902,
		0.300224, -0.552360, 0.777666,
		-0.653167, -0.713196, -0.254409,
		40.959885, 37.770454, 44.125683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.608406, 38.305504, 45.035507>,  <41.417103, 38.269691, 44.303772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.608406, 38.305504, 45.035507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.298473, 38.212811, 44.800243>,  <41.112514, 38.157196, 44.659084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.298473, 38.212811, 44.800243>,  <41.608406, 38.305504, 45.035507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.298473, 38.212811, 44.800243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558842, -0.686011, -0.465922,
		-0.295514, -0.689701, 0.661047,
		-0.774833, -0.231735, -0.588160,
		41.066025, 38.143291, 44.623795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.738705, 37.550346, 44.819603>,  <41.608406, 38.305504, 45.035507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.738705, 37.550346, 44.819603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.418114, 37.649746, 44.602020>,  <41.225761, 37.709385, 44.471470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.418114, 37.649746, 44.602020>,  <41.738705, 37.550346, 44.819603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.418114, 37.649746, 44.602020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107221, -0.835128, -0.539505,
		-0.588341, -0.490721, 0.642688,
		-0.801473, 0.248503, -0.543955,
		41.177673, 37.724297, 44.438835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.917450, 37.650894, 44.183403>,  <41.738705, 37.550346, 44.819603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.917450, 37.650894, 44.183403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.124973, 37.535061, 44.505142>,  <42.249489, 37.465561, 44.698185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.124973, 37.535061, 44.505142>,  <41.917450, 37.650894, 44.183403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.124973, 37.535061, 44.505142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528673, -0.630717, -0.568068,
		0.671821, 0.719956, -0.174126,
		0.518808, -0.289585, 0.804350,
		42.280617, 37.448185, 44.746449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.528408, 37.804180, 43.994545>,  <41.917450, 37.650894, 44.183403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.528408, 37.804180, 43.994545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.515095, 37.496056, 44.249264>,  <42.507107, 37.311180, 44.402096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.515095, 37.496056, 44.249264>,  <42.528408, 37.804180, 43.994545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.515095, 37.496056, 44.249264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.534855, -0.551961, -0.639741,
		0.844288, 0.319300, 0.430378,
		-0.033282, -0.770316, 0.636794,
		42.505112, 37.264961, 44.440300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.256653, 37.516945, 44.280403>,  <42.528408, 37.804180, 43.994545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.256653, 37.516945, 44.280403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.979900, 37.229046, 44.257519>,  <42.813850, 37.056309, 44.243790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.979900, 37.229046, 44.257519>,  <43.256653, 37.516945, 44.280403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.979900, 37.229046, 44.257519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576275, -0.502748, -0.644322,
		0.434987, -0.478759, 0.762611,
		-0.691877, -0.719746, -0.057208,
		42.772339, 37.013123, 44.240356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.687252, 36.898289, 44.287846>,  <43.256653, 37.516945, 44.280403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.687252, 36.898289, 44.287846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.318207, 36.823902, 44.152672>,  <43.096779, 36.779270, 44.071568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.318207, 36.823902, 44.152672>,  <43.687252, 36.898289, 44.287846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.318207, 36.823902, 44.152672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385087, -0.393750, -0.834667,
		0.022158, -0.900210, 0.434893,
		-0.922614, -0.185966, -0.337935,
		43.041424, 36.768112, 44.051292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.662888, 36.218433, 44.129295>,  <43.687252, 36.898289, 44.287846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.662888, 36.218433, 44.129295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.392731, 36.413784, 43.908268>,  <43.230637, 36.530994, 43.775650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.392731, 36.413784, 43.908268>,  <43.662888, 36.218433, 44.129295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.392731, 36.413784, 43.908268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443787, -0.329267, -0.833449,
		-0.588983, -0.808126, 0.005647,
		-0.675391, 0.488380, -0.552569,
		43.190113, 36.560299, 43.742496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.489922, 35.769669, 43.543449>,  <43.662888, 36.218433, 44.129295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.489922, 35.769669, 43.543449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.394070, 36.141869, 43.432640>,  <43.336559, 36.365189, 43.366154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.394070, 36.141869, 43.432640>,  <43.489922, 35.769669, 43.543449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.394070, 36.141869, 43.432640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348080, -0.184029, -0.919225,
		-0.906321, -0.316701, -0.279790,
		-0.239630, 0.930502, -0.277027,
		43.322182, 36.421021, 43.349533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.149578, 35.783157, 42.857075>,  <43.489922, 35.769669, 43.543449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.149578, 35.783157, 42.857075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.362637, 36.107677, 42.953465>,  <43.490471, 36.302391, 43.011299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.362637, 36.107677, 42.953465>,  <43.149578, 35.783157, 42.857075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.362637, 36.107677, 42.953465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390874, 0.016729, -0.920292,
		-0.750668, 0.584385, -0.308207,
		0.532649, 0.811304, 0.240979,
		43.522430, 36.351070, 43.025757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.021324, 36.326126, 42.324654>,  <43.149578, 35.783157, 42.857075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.021324, 36.326126, 42.324654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.360523, 36.441471, 42.502533>,  <43.564041, 36.510677, 42.609261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.360523, 36.441471, 42.502533>,  <43.021324, 36.326126, 42.324654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.360523, 36.441471, 42.502533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390833, 0.226502, -0.892158,
		-0.357985, 0.930348, 0.079373,
		0.847995, 0.288358, 0.444695,
		43.614922, 36.527977, 42.635941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.231625, 36.969662, 42.042233>,  <43.021324, 36.326126, 42.324654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.231625, 36.969662, 42.042233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.577145, 36.838020, 42.194828>,  <43.784458, 36.759037, 42.286385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.577145, 36.838020, 42.194828>,  <43.231625, 36.969662, 42.042233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.577145, 36.838020, 42.194828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459890, 0.205778, -0.863804,
		0.205778, 0.921600, 0.329103,
		0.863804, -0.329103, 0.381490,
		43.836285, 36.739288, 42.309277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.852386, 37.458126, 41.803658>,  <43.231625, 36.969662, 42.042233>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.852386, 37.458126, 41.803658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.008766, 37.103828, 41.903755>,  <44.102592, 36.891251, 41.963814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.008766, 37.103828, 41.903755>,  <43.852386, 37.458126, 41.803658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.008766, 37.103828, 41.903755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341853, -0.112696, -0.932972,
		0.854573, 0.450289, 0.258735,
		0.390949, -0.885742, 0.250240,
		44.126049, 36.838104, 41.978828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.642818, 37.428802, 41.692162>,  <43.852386, 37.458126, 41.803658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.642818, 37.428802, 41.692162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.512501, 37.051083, 41.673557>,  <44.434311, 36.824451, 41.662395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.512501, 37.051083, 41.673557>,  <44.642818, 37.428802, 41.692162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.512501, 37.051083, 41.673557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538811, -0.145018, -0.829851,
		0.776880, -0.295421, 0.556043,
		-0.325792, -0.944297, -0.046515,
		44.414764, 36.767792, 41.659603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.209324, 37.053169, 41.603470>,  <44.642818, 37.428802, 41.692162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.209324, 37.053169, 41.603470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.908680, 36.809380, 41.502571>,  <44.728294, 36.663105, 41.442032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.908680, 36.809380, 41.502571>,  <45.209324, 37.053169, 41.603470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.908680, 36.809380, 41.502571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511897, -0.297783, -0.805784,
		0.415991, -0.734756, 0.535804,
		-0.751607, -0.609475, -0.252244,
		44.683197, 36.626537, 41.426899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.521732, 36.460075, 41.421291>,  <45.209324, 37.053169, 41.603470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.521732, 36.460075, 41.421291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.163109, 36.414688, 41.250034>,  <44.947933, 36.387455, 41.147278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.163109, 36.414688, 41.250034>,  <45.521732, 36.460075, 41.421291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.163109, 36.414688, 41.250034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441981, -0.166045, -0.881522,
		0.028937, -0.979568, 0.199021,
		-0.896558, -0.113472, -0.428146,
		44.894142, 36.380646, 41.121590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.551346, 35.799763, 40.999313>,  <45.521732, 36.460075, 41.421291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.551346, 35.799763, 40.999313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.222546, 35.980709, 40.860939>,  <45.025265, 36.089279, 40.777912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.222546, 35.980709, 40.860939>,  <45.551346, 35.799763, 40.999313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.222546, 35.980709, 40.860939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202583, -0.335446, -0.920020,
		-0.532233, -0.826339, 0.184094,
		-0.822002, 0.452371, -0.345938,
		44.975945, 36.116421, 40.757156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.256443, 35.297031, 40.541538>,  <45.551346, 35.799763, 40.999313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.256443, 35.297031, 40.541538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.102184, 35.648586, 40.429230>,  <45.009628, 35.859520, 40.361843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.102184, 35.648586, 40.429230>,  <45.256443, 35.297031, 40.541538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.102184, 35.648586, 40.429230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282174, -0.177379, -0.942823,
		-0.878437, -0.442826, -0.179592,
		-0.385650, 0.878887, -0.280770,
		44.986488, 35.912251, 40.344997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.037361, 35.125225, 39.858398>,  <45.256443, 35.297031, 40.541538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.037361, 35.125225, 39.858398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.047852, 35.524555, 39.878998>,  <45.054146, 35.764153, 39.891357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.047852, 35.524555, 39.878998>,  <45.037361, 35.125225, 39.858398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.047852, 35.524555, 39.878998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346518, 0.039247, -0.937222,
		-0.937677, 0.042425, -0.344910,
		0.026225, 0.998329, 0.051502,
		45.055717, 35.824055, 39.894447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.710621, 35.421513, 39.129765>,  <45.037361, 35.125225, 39.858398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.710621, 35.421513, 39.129765> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.938061, 35.707218, 39.292992>,  <45.074524, 35.878643, 39.390926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.938061, 35.707218, 39.292992>,  <44.710621, 35.421513, 39.129765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.938061, 35.707218, 39.292992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318983, 0.265806, -0.909724,
		-0.758249, 0.647438, -0.076700,
		0.568603, 0.714263, 0.408069,
		45.108643, 35.921497, 39.415413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.690342, 36.016804, 38.673325>,  <44.710621, 35.421513, 39.129765>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.690342, 36.016804, 38.673325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.017399, 36.102783, 38.886963>,  <45.213634, 36.154369, 39.015144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.017399, 36.102783, 38.886963>,  <44.690342, 36.016804, 38.673325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.017399, 36.102783, 38.886963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444920, 0.352853, -0.823129,
		-0.365387, 0.910655, 0.192874,
		0.817643, 0.214947, 0.534096,
		45.262691, 36.167267, 39.047192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.838959, 36.713116, 38.516838>,  <44.690342, 36.016804, 38.673325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.838959, 36.713116, 38.516838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.162369, 36.521202, 38.653122>,  <45.356415, 36.406052, 38.734894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.162369, 36.521202, 38.653122>,  <44.838959, 36.713116, 38.516838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.162369, 36.521202, 38.653122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508264, 0.277589, -0.815237,
		0.296562, 0.832315, 0.468297,
		0.808529, -0.479787, 0.340714,
		45.404926, 36.377266, 38.755337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.393028, 37.178204, 38.470345>,  <44.838959, 36.713116, 38.516838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.393028, 37.178204, 38.470345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.539421, 36.806019, 38.477184>,  <45.627258, 36.582706, 38.481289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.539421, 36.806019, 38.477184>,  <45.393028, 37.178204, 38.470345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.539421, 36.806019, 38.477184> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535401, 0.195493, -0.821661,
		0.761185, 0.309866, 0.569719,
		0.365981, -0.930465, 0.017096,
		45.649216, 36.526878, 38.482311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.056484, 37.269127, 38.276215>,  <45.393028, 37.178204, 38.470345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.056484, 37.269127, 38.276215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.984848, 36.878700, 38.226852>,  <45.941864, 36.644444, 38.197235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.984848, 36.878700, 38.226852>,  <46.056484, 37.269127, 38.276215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.984848, 36.878700, 38.226852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423054, 0.036838, -0.905356,
		0.888230, -0.214347, 0.406329,
		-0.179092, -0.976063, -0.123401,
		45.931122, 36.585880, 38.189831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.498543, 37.123093, 37.860889>,  <46.056484, 37.269127, 38.276215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.498543, 37.123093, 37.860889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.277443, 36.794319, 37.805901>,  <46.144783, 36.597057, 37.772907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.277443, 36.794319, 37.805901>,  <46.498543, 37.123093, 37.860889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.277443, 36.794319, 37.805901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228085, 0.009451, -0.973595,
		0.801528, -0.569508, 0.182246,
		-0.552747, -0.821932, -0.137471,
		46.111618, 36.547741, 37.764660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.878410, 36.668701, 37.537407>,  <46.498543, 37.123093, 37.860889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.878410, 36.668701, 37.537407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.525856, 36.503448, 37.445766>,  <46.314323, 36.404297, 37.390781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.525856, 36.503448, 37.445766>,  <46.878410, 36.668701, 37.537407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.525856, 36.503448, 37.445766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275252, -0.054972, -0.959799,
		0.383930, -0.909010, 0.162167,
		-0.881382, -0.413132, -0.229102,
		46.261440, 36.379509, 37.377037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.002697, 36.139057, 37.047680>,  <46.878410, 36.668701, 37.537407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.002697, 36.139057, 37.047680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.609604, 36.185532, 36.990078>,  <46.373749, 36.213417, 36.955517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.609604, 36.185532, 36.990078>,  <47.002697, 36.139057, 37.047680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.609604, 36.185532, 36.990078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132687, -0.099893, -0.986111,
		-0.128969, -0.988190, 0.082750,
		-0.982731, 0.116198, -0.144003,
		46.314785, 36.220390, 36.946877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.832855, 35.694221, 36.569183>,  <47.002697, 36.139057, 37.047680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.832855, 35.694221, 36.569183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.544731, 35.970741, 36.546333>,  <46.371857, 36.136654, 36.532623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.544731, 35.970741, 36.546333>,  <46.832855, 35.694221, 36.569183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.544731, 35.970741, 36.546333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171782, 0.097987, -0.980250,
		-0.672050, -0.715892, -0.189333,
		-0.720306, 0.691301, -0.057125,
		46.328640, 36.178131, 36.529198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.301102, 35.506744, 36.046627>,  <46.832855, 35.694221, 36.569183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.301102, 35.506744, 36.046627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.303120, 35.904366, 36.090137>,  <46.304329, 36.142937, 36.116245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.303120, 35.904366, 36.090137>,  <46.301102, 35.506744, 36.046627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.303120, 35.904366, 36.090137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211973, 0.105243, -0.971592,
		-0.977262, 0.027959, -0.210181,
		0.005045, 0.994053, 0.108776,
		46.304634, 36.202583, 36.122772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.968849, 35.048012, 35.568928>,  <46.301102, 35.506744, 36.046627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.968849, 35.048012, 35.568928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.081478, 34.765186, 35.309456>,  <46.149055, 34.595493, 35.153774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.081478, 34.765186, 35.309456>,  <45.968849, 35.048012, 35.568928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.081478, 34.765186, 35.309456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.909347, 0.412412, -0.054813,
		0.306278, -0.574439, 0.759087,
		0.281570, -0.707062, -0.648677,
		46.165951, 34.553066, 35.114853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.555733, 34.589958, 35.800259>,  <45.968849, 35.048012, 35.568928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.555733, 34.589958, 35.800259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.578850, 34.638222, 35.403854>,  <46.592720, 34.667179, 35.166012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.578850, 34.638222, 35.403854>,  <46.555733, 34.589958, 35.800259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.578850, 34.638222, 35.403854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.894852, 0.433835, 0.105009,
		0.442605, -0.892877, -0.082897,
		0.057796, 0.120658, -0.991010,
		46.596188, 34.674419, 35.106552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.210976, 34.453808, 35.562866>,  <46.555733, 34.589958, 35.800259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.210976, 34.453808, 35.562866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.068905, 34.698990, 35.280552>,  <46.983662, 34.846100, 35.111164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.068905, 34.698990, 35.280552>,  <47.210976, 34.453808, 35.562866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.068905, 34.698990, 35.280552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.918036, 0.371058, -0.139734,
		0.176239, -0.697571, -0.694503,
		-0.355175, 0.612953, -0.705790,
		46.962353, 34.882877, 35.068813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.665123, 34.419144, 34.997303>,  <47.210976, 34.453808, 35.562866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.665123, 34.419144, 34.997303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.526299, 34.789570, 35.056564>,  <47.443005, 35.011826, 35.092121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.526299, 34.789570, 35.056564>,  <47.665123, 34.419144, 34.997303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.526299, 34.789570, 35.056564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.932231, 0.357909, -0.053346,
		-0.102429, 0.119602, -0.987524,
		-0.347064, 0.926065, 0.148157,
		47.422180, 35.067390, 35.101013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<35.635216, 35.167522, 45.570976> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.301094, 34.948368, 45.552731>,  <35.100620, 34.816875, 45.541782>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.301094, 34.948368, 45.552731>,  <35.635216, 35.167522, 45.570976>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.301094, 34.948368, 45.552731> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025949, 0.043589, -0.998713,
		0.549173, -0.835414, -0.022193,
		-0.835306, -0.547890, -0.045616,
		35.050503, 34.784000, 45.539047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.699135, 34.541702, 45.067051>,  <35.635216, 35.167522, 45.570976>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.699135, 34.541702, 45.067051> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.308304, 34.625126, 45.049976>,  <35.073807, 34.675179, 45.039734>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.308304, 34.625126, 45.049976>,  <35.699135, 34.541702, 45.067051>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.308304, 34.625126, 45.049976> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056693, 0.061670, -0.996485,
		-0.205190, -0.976064, -0.072080,
		-0.977078, 0.208555, -0.042682,
		35.015179, 34.687691, 45.037170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.417091, 34.192570, 44.487858>,  <35.699135, 34.541702, 45.067051>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.417091, 34.192570, 44.487858> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.134830, 34.467258, 44.557678>,  <34.965473, 34.632072, 44.599571>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.134830, 34.467258, 44.557678>,  <35.417091, 34.192570, 44.487858>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.134830, 34.467258, 44.557678> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133181, 0.113408, -0.984582,
		-0.695934, -0.718015, 0.011433,
		-0.705648, 0.686727, 0.174551,
		34.923138, 34.673275, 44.610043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.887043, 33.962719, 44.133808>,  <35.417091, 34.192570, 44.487858>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.887043, 33.962719, 44.133808> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.791744, 34.348480, 44.179691>,  <34.734566, 34.579937, 44.207222>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.791744, 34.348480, 44.179691>,  <34.887043, 33.962719, 44.133808>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.791744, 34.348480, 44.179691> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222901, 0.060662, -0.972952,
		-0.945279, -0.257375, 0.200514,
		-0.238250, 0.964406, 0.114711,
		34.720268, 34.637802, 44.214104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.243004, 34.036259, 43.836720>,  <34.887043, 33.962719, 44.133808>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.243004, 34.036259, 43.836720> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.437027, 34.386013, 43.841854>,  <34.553440, 34.595867, 43.844936>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.437027, 34.386013, 43.841854>,  <34.243004, 34.036259, 43.836720>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.437027, 34.386013, 43.841854> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013879, 0.022373, -0.999653,
		-0.874370, 0.484715, 0.022988,
		0.485061, 0.874386, 0.012835,
		34.582546, 34.648331, 43.845703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.895447, 34.501640, 43.411282>,  <34.243004, 34.036259, 43.836720>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.895447, 34.501640, 43.411282> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.246021, 34.692226, 43.439133>,  <34.456367, 34.806576, 43.455841>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.246021, 34.692226, 43.439133>,  <33.895447, 34.501640, 43.411282>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.246021, 34.692226, 43.439133> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045427, 0.062132, -0.997034,
		-0.479373, 0.876997, 0.032810,
		0.876435, 0.476461, 0.069624,
		34.508953, 34.835163, 43.460018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.784687, 35.044678, 42.998444>,  <33.895447, 34.501640, 43.411282>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.784687, 35.044678, 42.998444> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.180222, 35.005032, 43.042934>,  <34.417542, 34.981243, 43.069630>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.180222, 35.005032, 43.042934>,  <33.784687, 35.044678, 42.998444>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.180222, 35.005032, 43.042934> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139298, 0.350257, -0.926238,
		0.052845, 0.931395, 0.360154,
		0.988840, -0.099116, 0.111232,
		34.476875, 34.975296, 43.076305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.037106, 35.578239, 42.570385>,  <33.784687, 35.044678, 42.998444>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.037106, 35.578239, 42.570385> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.361179, 35.352596, 42.634117>,  <34.555622, 35.217209, 42.672356>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.361179, 35.352596, 42.634117>,  <34.037106, 35.578239, 42.570385>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.361179, 35.352596, 42.634117> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312744, 0.186096, -0.931429,
		0.495779, 0.804455, 0.327194,
		0.810182, -0.564110, 0.159326,
		34.604233, 35.183365, 42.681915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.606232, 35.955002, 42.222511>,  <34.037106, 35.578239, 42.570385>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.606232, 35.955002, 42.222511> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.750706, 35.583088, 42.250938>,  <34.837391, 35.359940, 42.267994>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.750706, 35.583088, 42.250938>,  <34.606232, 35.955002, 42.222511>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.750706, 35.583088, 42.250938> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424551, 0.096107, -0.900289,
		0.830242, 0.355344, 0.429452,
		0.361186, -0.929782, 0.071069,
		34.859062, 35.304153, 42.272259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.367260, 35.994968, 42.069984>,  <34.606232, 35.955002, 42.222511>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.367260, 35.994968, 42.069984> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.232983, 35.628540, 41.982227>,  <35.152416, 35.408684, 41.929573>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.232983, 35.628540, 41.982227>,  <35.367260, 35.994968, 42.069984>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.232983, 35.628540, 41.982227> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.586777, -0.021164, -0.809472,
		0.736888, -0.400466, 0.544632,
		-0.335692, -0.916067, -0.219389,
		35.132275, 35.353722, 41.916412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.936733, 35.611813, 41.909489>,  <35.367260, 35.994968, 42.069984>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.936733, 35.611813, 41.909489> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.613434, 35.465622, 41.724808>,  <35.419456, 35.377907, 41.613998>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.613434, 35.465622, 41.724808>,  <35.936733, 35.611813, 41.909489>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.613434, 35.465622, 41.724808> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523573, -0.087237, -0.847502,
		0.269464, -0.926724, 0.261862,
		-0.808245, -0.365475, -0.461701,
		35.370960, 35.355980, 41.586296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.237900, 35.088669, 41.534176>,  <35.936733, 35.611813, 41.909489>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.237900, 35.088669, 41.534176> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.876461, 35.131828, 41.368343>,  <35.659599, 35.157722, 41.268845>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.876461, 35.131828, 41.368343>,  <36.237900, 35.088669, 41.534176>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.876461, 35.131828, 41.368343> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374275, -0.271975, -0.886537,
		-0.208410, -0.956236, 0.205372,
		-0.903595, 0.107898, -0.414577,
		35.605381, 35.164200, 41.243969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.083221, 34.457603, 41.238506>,  <36.237900, 35.088669, 41.534176>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.083221, 34.457603, 41.238506> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.856422, 34.734463, 41.059872>,  <35.720345, 34.900578, 40.952690>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.856422, 34.734463, 41.059872>,  <36.083221, 34.457603, 41.238506>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.856422, 34.734463, 41.059872> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243815, -0.376848, -0.893611,
		-0.786811, -0.615558, 0.044913,
		-0.566994, 0.692152, -0.446590,
		35.686325, 34.942108, 40.925896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.682137, 34.119816, 40.675434>,  <36.083221, 34.457603, 41.238506>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.682137, 34.119816, 40.675434> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.689156, 34.508884, 40.582829>,  <35.693367, 34.742325, 40.527264>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.689156, 34.508884, 40.582829>,  <35.682137, 34.119816, 40.675434>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.689156, 34.508884, 40.582829> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216834, -0.229744, -0.948789,
		-0.976051, -0.033548, -0.214941,
		0.017552, 0.972673, -0.231516,
		35.694420, 34.800686, 40.513374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.301991, 34.179592, 40.039574>,  <35.682137, 34.119816, 40.675434>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.301991, 34.179592, 40.039574> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.549255, 34.489014, 40.095413>,  <35.697613, 34.674667, 40.128918>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.549255, 34.489014, 40.095413>,  <35.301991, 34.179592, 40.039574>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.549255, 34.489014, 40.095413> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309702, -0.076456, -0.947755,
		-0.722469, 0.629098, -0.286834,
		0.618161, 0.773557, 0.139596,
		35.734703, 34.721081, 40.137291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.205986, 34.559891, 39.395058>,  <35.301991, 34.179592, 40.039574>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.205986, 34.559891, 39.395058> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.546738, 34.690895, 39.558537>,  <35.751190, 34.769497, 39.656624>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.546738, 34.690895, 39.558537>,  <35.205986, 34.559891, 39.395058>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.546738, 34.690895, 39.558537> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416083, 0.050695, -0.907913,
		-0.318074, 0.943485, -0.093087,
		0.851883, 0.327515, 0.408693,
		35.802303, 34.789150, 39.681145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.341988, 35.164494, 39.068989>,  <35.205986, 34.559891, 39.395058>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.341988, 35.164494, 39.068989> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.689178, 35.035706, 39.220226>,  <35.897491, 34.958431, 39.310970>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.689178, 35.035706, 39.220226>,  <35.341988, 35.164494, 39.068989>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.689178, 35.035706, 39.220226> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377591, -0.066640, -0.923571,
		0.322562, 0.944400, 0.063733,
		0.867974, -0.321975, 0.378093,
		35.949570, 34.939114, 39.333652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.816368, 35.527786, 38.705837>,  <35.341988, 35.164494, 39.068989>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.816368, 35.527786, 38.705837> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.009388, 35.205536, 38.843304>,  <36.125198, 35.012184, 38.925785>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.009388, 35.205536, 38.843304>,  <35.816368, 35.527786, 38.705837>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.009388, 35.205536, 38.843304> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514907, -0.056478, -0.855383,
		0.708530, 0.589724, 0.387570,
		0.482551, -0.805627, 0.343670,
		36.154152, 34.963848, 38.946404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.636684, 35.642723, 38.689842>,  <35.816368, 35.527786, 38.705837>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.636684, 35.642723, 38.689842> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.557804, 35.250881, 38.674374>,  <36.510475, 35.015778, 38.665092>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.557804, 35.250881, 38.674374>,  <36.636684, 35.642723, 38.689842>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.557804, 35.250881, 38.674374> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.612074, -0.092207, -0.785406,
		0.765818, -0.178554, 0.617771,
		-0.197200, -0.979600, -0.038675,
		36.498646, 34.957001, 38.662773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.228615, 35.354023, 38.572956>,  <36.636684, 35.642723, 38.689842>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.228615, 35.354023, 38.572956> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.997780, 35.038948, 38.486691>,  <36.859280, 34.849903, 38.434933>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.997780, 35.038948, 38.486691>,  <37.228615, 35.354023, 38.572956>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.997780, 35.038948, 38.486691> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.665443, -0.300443, -0.683315,
		0.473445, -0.537847, 0.697546,
		-0.577092, -0.787690, -0.215663,
		36.824654, 34.802643, 38.421993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.718140, 34.826859, 38.427795>,  <37.228615, 35.354023, 38.572956>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.718140, 34.826859, 38.427795> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.374863, 34.736595, 38.243366>,  <37.168896, 34.682438, 38.132710>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.374863, 34.736595, 38.243366>,  <37.718140, 34.826859, 38.427795>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.374863, 34.736595, 38.243366> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502894, -0.189405, -0.843341,
		0.102979, -0.955617, 0.276028,
		-0.858192, -0.225659, -0.461069,
		37.117405, 34.668900, 38.105045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.818211, 34.129074, 38.052547>,  <37.718140, 34.826859, 38.427795>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.818211, 34.129074, 38.052547> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.483898, 34.268700, 37.883022>,  <37.283310, 34.352474, 37.781307>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.483898, 34.268700, 37.883022>,  <37.818211, 34.129074, 38.052547>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.483898, 34.268700, 37.883022> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259202, -0.429626, -0.865006,
		-0.484020, -0.832814, 0.268599,
		-0.835786, 0.349059, -0.423815,
		37.233162, 34.373417, 37.755878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.201698, 34.521297, 37.877533>,  <37.818211, 34.129074, 38.052547>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.201698, 34.521297, 37.877533> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.505768, 34.765667, 37.789062>,  <38.688210, 34.912289, 37.735981>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.505768, 34.765667, 37.789062>,  <38.201698, 34.521297, 37.877533>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.505768, 34.765667, 37.789062> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152146, 0.163572, 0.974729,
		0.631659, -0.774611, 0.031393,
		0.760170, 0.610920, -0.221176,
		38.733818, 34.948944, 37.722710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.702152, 34.319374, 38.341785>,  <38.201698, 34.521297, 37.877533>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.702152, 34.319374, 38.341785> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.844723, 34.676117, 38.230389>,  <38.930264, 34.890163, 38.163551>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.844723, 34.676117, 38.230389>,  <38.702152, 34.319374, 38.341785>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.844723, 34.676117, 38.230389> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255793, 0.193540, 0.947160,
		0.898628, -0.408826, -0.159148,
		0.356422, 0.891854, -0.278496,
		38.951649, 34.943672, 38.146839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.456520, 34.407333, 38.589535>,  <38.702152, 34.319374, 38.341785>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.456520, 34.407333, 38.589535> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.319206, 34.777084, 38.522976>,  <39.236816, 34.998936, 38.483040>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.319206, 34.777084, 38.522976>,  <39.456520, 34.407333, 38.589535>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.319206, 34.777084, 38.522976> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326302, 0.283503, 0.901750,
		0.880729, 0.255260, -0.398947,
		-0.343284, 0.924375, -0.166397,
		39.216221, 35.054398, 38.473057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.858570, 34.800694, 38.885685>,  <39.456520, 34.407333, 38.589535>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.858570, 34.800694, 38.885685> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.553707, 35.058327, 38.859528>,  <39.370789, 35.212906, 38.843834>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.553707, 35.058327, 38.859528>,  <39.858570, 34.800694, 38.885685>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.553707, 35.058327, 38.859528> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023516, 0.128488, 0.991432,
		0.646970, 0.754086, -0.113074,
		-0.762153, 0.644085, -0.065395,
		39.325062, 35.251553, 38.839909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.084152, 35.340786, 39.253681>,  <39.858570, 34.800694, 38.885685>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.084152, 35.340786, 39.253681> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.689590, 35.406509, 39.252808>,  <39.452854, 35.445946, 39.252285>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.689590, 35.406509, 39.252808>,  <40.084152, 35.340786, 39.253681>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.689590, 35.406509, 39.252808> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043377, 0.273180, 0.960985,
		0.158499, 0.947826, -0.276594,
		-0.986406, 0.164313, -0.002185,
		39.393669, 35.455803, 39.252151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.987999, 35.977646, 39.543655>,  <40.084152, 35.340786, 39.253681>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.987999, 35.977646, 39.543655> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.631073, 35.798859, 39.568916>,  <39.416916, 35.691586, 39.584072>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.631073, 35.798859, 39.568916>,  <39.987999, 35.977646, 39.543655>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.631073, 35.798859, 39.568916> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081725, 0.297544, 0.951204,
		-0.443948, 0.843616, -0.302032,
		-0.892318, -0.446968, 0.063150,
		39.363377, 35.664768, 39.587860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.479965, 36.433090, 39.898090>,  <39.987999, 35.977646, 39.543655>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.479965, 36.433090, 39.898090> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.319397, 36.070267, 39.948860>,  <39.223057, 35.852573, 39.979324>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.319397, 36.070267, 39.948860>,  <39.479965, 36.433090, 39.898090>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.319397, 36.070267, 39.948860> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129088, 0.193231, 0.972624,
		-0.906750, 0.374050, -0.194657,
		-0.401424, -0.907055, 0.126927,
		39.198971, 35.798149, 39.986938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.821232, 36.510307, 40.219601>,  <39.479965, 36.433090, 39.898090>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.821232, 36.510307, 40.219601> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.967518, 36.147545, 40.303299>,  <39.055290, 35.929890, 40.353516>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.967518, 36.147545, 40.303299>,  <38.821232, 36.510307, 40.219601>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.967518, 36.147545, 40.303299> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072899, 0.196214, 0.977848,
		-0.927868, -0.372866, 0.005645,
		0.365714, -0.906902, 0.209242,
		39.077232, 35.875473, 40.366070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.290295, 36.198421, 40.694378>,  <38.821232, 36.510307, 40.219601>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.290295, 36.198421, 40.694378> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.589031, 35.933453, 40.717793>,  <38.768272, 35.774471, 40.731842>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.589031, 35.933453, 40.717793>,  <38.290295, 36.198421, 40.694378>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.589031, 35.933453, 40.717793> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174070, -0.109785, 0.978594,
		-0.641816, -0.741043, -0.197300,
		0.746841, -0.662421, 0.058532,
		38.813084, 35.734726, 40.735352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.071438, 35.646465, 40.974228>,  <38.290295, 36.198421, 40.694378>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.071438, 35.646465, 40.974228> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.458447, 35.579388, 41.049896>,  <38.690651, 35.539143, 41.095299>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.458447, 35.579388, 41.049896>,  <38.071438, 35.646465, 40.974228>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.458447, 35.579388, 41.049896> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185734, 0.036111, 0.981936,
		-0.171497, -0.985177, 0.003792,
		0.967518, -0.167694, 0.189174,
		38.748703, 35.529079, 41.106647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.074436, 35.084213, 41.605549>,  <38.071438, 35.646465, 40.974228>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.074436, 35.084213, 41.605549> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.407291, 35.304905, 41.583141>,  <38.607006, 35.437321, 41.569698>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.407291, 35.304905, 41.583141>,  <38.074436, 35.084213, 41.605549>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.407291, 35.304905, 41.583141> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019522, 0.130095, 0.991309,
		0.554226, -0.823812, 0.119028,
		0.832138, 0.551733, -0.056020,
		38.656933, 35.470425, 41.566334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.449615, 34.854527, 42.138870>,  <38.074436, 35.084213, 41.605549>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.449615, 34.854527, 42.138870> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.572269, 35.223549, 42.045181>,  <38.645863, 35.444962, 41.988968>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.572269, 35.223549, 42.045181>,  <38.449615, 34.854527, 42.138870>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.572269, 35.223549, 42.045181> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011547, 0.242450, 0.970095,
		0.951756, -0.300172, 0.063692,
		0.306637, 0.922559, -0.234219,
		38.664261, 35.500317, 41.974915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.017220, 35.000721, 42.556793>,  <38.449615, 34.854527, 42.138870>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.017220, 35.000721, 42.556793> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.810192, 35.323994, 42.444393>,  <38.685974, 35.517956, 42.376953>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.810192, 35.323994, 42.444393>,  <39.017220, 35.000721, 42.556793>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.810192, 35.323994, 42.444393> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161953, 0.229941, 0.959635,
		0.840172, 0.542189, 0.011876,
		-0.517573, 0.808182, -0.280999,
		38.654919, 35.566448, 42.360092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.078148, 35.363453, 43.088387>,  <39.017220, 35.000721, 42.556793>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.078148, 35.363453, 43.088387> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.787777, 35.580257, 42.919033>,  <38.613556, 35.710339, 42.817421>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.787777, 35.580257, 42.919033>,  <39.078148, 35.363453, 43.088387>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.787777, 35.580257, 42.919033> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357776, 0.228155, 0.905506,
		0.587393, 0.808807, 0.028295,
		-0.725924, 0.542011, -0.423388,
		38.570000, 35.742863, 42.792015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.141273, 35.970097, 43.275932>,  <39.078148, 35.363453, 43.088387>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.141273, 35.970097, 43.275932> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.749966, 35.956882, 43.194057>,  <38.515182, 35.948952, 43.144932>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.749966, 35.956882, 43.194057>,  <39.141273, 35.970097, 43.275932>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.749966, 35.956882, 43.194057> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207337, 0.160166, 0.965069,
		0.000901, 0.986537, -0.163535,
		-0.978269, -0.033037, -0.204690,
		38.456486, 35.946972, 43.132652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.836796, 36.506588, 43.608189>,  <39.141273, 35.970097, 43.275932>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.836796, 36.506588, 43.608189> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.506657, 36.286930, 43.555676>,  <38.308575, 36.155136, 43.524170>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.506657, 36.286930, 43.555676>,  <38.836796, 36.506588, 43.608189>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.506657, 36.286930, 43.555676> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287704, 0.208975, 0.934642,
		-0.485824, 0.809175, -0.330469,
		-0.825349, -0.549149, -0.131278,
		38.259052, 36.122185, 43.516293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.194302, 36.868370, 43.902485>,  <38.836796, 36.506588, 43.608189>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.194302, 36.868370, 43.902485> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.072849, 36.488033, 43.878136>,  <37.999977, 36.259830, 43.863525>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.072849, 36.488033, 43.878136>,  <38.194302, 36.868370, 43.902485>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.072849, 36.488033, 43.878136> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436197, 0.081922, 0.896114,
		-0.847077, 0.298642, -0.439629,
		-0.303632, -0.950843, -0.060873,
		37.981758, 36.202782, 43.859875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.535309, 36.849445, 44.159924>,  <38.194302, 36.868370, 43.902485>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.535309, 36.849445, 44.159924> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.627079, 36.460682, 44.180927>,  <37.682140, 36.227425, 44.193527>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.627079, 36.460682, 44.180927>,  <37.535309, 36.849445, 44.159924>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.627079, 36.460682, 44.180927> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338065, -0.028983, 0.940676,
		-0.912731, -0.233561, -0.335218,
		0.229421, -0.971910, 0.052505,
		37.695904, 36.169109, 44.196678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<36.994511, 36.540726, 44.593391> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.285194, 36.266266, 44.580128>,  <37.459602, 36.101589, 44.572170>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.285194, 36.266266, 44.580128>,  <36.994511, 36.540726, 44.593391>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.285194, 36.266266, 44.580128> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382424, -0.444180, 0.810220,
		-0.570658, -0.576112, -0.585188,
		0.726706, -0.686148, -0.033155,
		37.503208, 36.060421, 44.570183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.741688, 35.925632, 44.645229>,  <36.994511, 36.540726, 44.593391>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.741688, 35.925632, 44.645229> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.121033, 35.873066, 44.760700>,  <37.348640, 35.841526, 44.829983>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.121033, 35.873066, 44.760700>,  <36.741688, 35.925632, 44.645229>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.121033, 35.873066, 44.760700> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313045, -0.534317, 0.785180,
		0.051057, -0.835006, -0.547868,
		0.948365, -0.131418, 0.288675,
		37.405540, 35.833641, 44.847301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.692616, 35.299416, 44.869881>,  <36.741688, 35.925632, 44.645229>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.692616, 35.299416, 44.869881> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.010136, 35.473511, 45.039803>,  <37.200645, 35.577969, 45.141754>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.010136, 35.473511, 45.039803>,  <36.692616, 35.299416, 44.869881>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.010136, 35.473511, 45.039803> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192250, -0.483096, 0.854200,
		0.576998, -0.759730, -0.299806,
		0.793797, 0.435234, 0.424804,
		37.248276, 35.604080, 45.167244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.119919, 34.757683, 45.158714>,  <36.692616, 35.299416, 44.869881>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.119919, 34.757683, 45.158714> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.255661, 35.076694, 45.358227>,  <37.337105, 35.268101, 45.477932>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.255661, 35.076694, 45.358227>,  <37.119919, 34.757683, 45.158714>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.255661, 35.076694, 45.358227> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160688, -0.473299, 0.866122,
		0.926833, -0.374069, -0.032462,
		0.339353, 0.797534, 0.498778,
		37.357468, 35.315956, 45.507858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.452286, 34.439465, 45.681587>,  <37.119919, 34.757683, 45.158714>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.452286, 34.439465, 45.681587> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.412804, 34.813541, 45.817635>,  <37.389114, 35.037987, 45.899261>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.412804, 34.813541, 45.817635>,  <37.452286, 34.439465, 45.681587>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.412804, 34.813541, 45.817635> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007314, -0.342460, 0.939504,
		0.995090, 0.090244, 0.040642,
		-0.098703, 0.935188, 0.340118,
		37.383194, 35.094097, 45.919670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.986279, 34.459614, 46.217289>,  <37.452286, 34.439465, 45.681587>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.986279, 34.459614, 46.217289> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.692528, 34.719814, 46.294781>,  <37.516277, 34.875935, 46.341274>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.692528, 34.719814, 46.294781>,  <37.986279, 34.459614, 46.217289>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.692528, 34.719814, 46.294781> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001734, -0.283627, 0.958933,
		0.678735, 0.704558, 0.207162,
		-0.734381, 0.650503, 0.193730,
		37.472214, 34.914967, 46.352901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.117199, 34.722755, 46.933613>,  <37.986279, 34.459614, 46.217289>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.117199, 34.722755, 46.933613> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.741100, 34.853916, 46.896912>,  <37.515442, 34.932613, 46.874889>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.741100, 34.853916, 46.896912>,  <38.117199, 34.722755, 46.933613>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.741100, 34.853916, 46.896912> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190306, -0.282615, 0.940166,
		0.282352, 0.901448, 0.328129,
		-0.940245, 0.327902, -0.091754,
		37.459026, 34.952286, 46.869385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.932171, 35.279240, 47.522739>,  <38.117199, 34.722755, 46.933613>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.932171, 35.279240, 47.522739> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.582886, 35.122185, 47.407269>,  <37.373314, 35.027950, 47.337986>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.582886, 35.122185, 47.407269>,  <37.932171, 35.279240, 47.522739>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.582886, 35.122185, 47.407269> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316183, 0.005693, 0.948681,
		-0.370845, 0.919675, -0.129116,
		-0.873214, -0.392638, -0.288675,
		37.320923, 35.004395, 47.320667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.487183, 35.646580, 47.865063>,  <37.932171, 35.279240, 47.522739>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.487183, 35.646580, 47.865063> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.252426, 35.345718, 47.745178>,  <37.111572, 35.165203, 47.673248>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.252426, 35.345718, 47.745178>,  <37.487183, 35.646580, 47.865063>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.252426, 35.345718, 47.745178> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386614, -0.064905, 0.919955,
		-0.711397, 0.655788, -0.252700,
		-0.586893, -0.752150, -0.299710,
		37.076359, 35.120075, 47.655266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.827515, 35.840179, 48.017544>,  <37.487183, 35.646580, 47.865063>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.827515, 35.840179, 48.017544> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.850658, 35.441399, 47.996628>,  <36.864544, 35.202129, 47.984077>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.850658, 35.441399, 47.996628>,  <36.827515, 35.840179, 48.017544>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.850658, 35.441399, 47.996628> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412127, -0.071561, 0.908312,
		-0.909288, -0.030999, -0.415012,
		0.057856, -0.996955, -0.052294,
		36.868015, 35.142311, 47.980938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.168488, 35.555866, 48.231987>,  <36.827515, 35.840179, 48.017544>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.168488, 35.555866, 48.231987> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.419662, 35.246845, 48.269611>,  <36.570370, 35.061432, 48.292187>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.419662, 35.246845, 48.269611>,  <36.168488, 35.555866, 48.231987>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.419662, 35.246845, 48.269611> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345633, -0.168546, 0.923109,
		-0.697301, -0.612167, -0.372858,
		0.627940, -0.772557, 0.094057,
		36.608044, 35.015079, 48.297829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.832188, 35.213833, 48.742966>,  <36.168488, 35.555866, 48.231987>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.832188, 35.213833, 48.742966> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.190521, 35.036507, 48.730621>,  <36.405521, 34.930111, 48.723213>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.190521, 35.036507, 48.730621>,  <35.832188, 35.213833, 48.742966>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.190521, 35.036507, 48.730621> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066022, -0.201445, 0.977272,
		-0.439453, -0.873438, -0.209730,
		0.895836, -0.443312, -0.030860,
		36.459270, 34.903515, 48.721363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.719006, 34.511581, 48.911648>,  <35.832188, 35.213833, 48.742966>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.719006, 34.511581, 48.911648> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.094624, 34.617805, 48.998981>,  <36.319996, 34.681541, 49.051384>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.094624, 34.617805, 48.998981>,  <35.719006, 34.511581, 48.911648>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.094624, 34.617805, 48.998981> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108937, -0.372509, 0.921612,
		0.326077, -0.889221, -0.320874,
		0.939046, 0.265562, 0.218336,
		36.376339, 34.697475, 49.064484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.029854, 33.891632, 49.197617>,  <35.719006, 34.511581, 48.911648>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.029854, 33.891632, 49.197617> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.275211, 34.190384, 49.300323>,  <36.422424, 34.369633, 49.361946>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.275211, 34.190384, 49.300323>,  <36.029854, 33.891632, 49.197617>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.275211, 34.190384, 49.300323> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080594, -0.382606, 0.920389,
		0.785658, -0.543863, -0.294880,
		0.613389, 0.746877, 0.256766,
		36.459229, 34.414448, 49.377354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.770069, 33.669376, 49.428455>,  <36.029854, 33.891632, 49.197617>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.770069, 33.669376, 49.428455> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.664528, 34.011330, 49.607140>,  <36.601204, 34.216503, 49.714352>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.664528, 34.011330, 49.607140>,  <36.770069, 33.669376, 49.428455>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.664528, 34.011330, 49.607140> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002796, -0.463803, 0.885934,
		0.964558, 0.232510, 0.124768,
		-0.263856, 0.854883, 0.446715,
		36.585373, 34.267796, 49.741154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.218540, 33.739895, 49.972538>,  <36.770069, 33.669376, 49.428455>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.218540, 33.739895, 49.972538> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.930649, 34.000507, 50.068459>,  <36.757915, 34.156876, 50.126011>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.930649, 34.000507, 50.068459>,  <37.218540, 33.739895, 49.972538>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.930649, 34.000507, 50.068459> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044227, -0.301673, 0.952385,
		0.692847, 0.696062, 0.188306,
		-0.719726, 0.651529, 0.239798,
		36.714729, 34.195965, 50.140400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.524719, 34.207359, 50.436401>,  <37.218540, 33.739895, 49.972538>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.524719, 34.207359, 50.436401> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.133118, 34.223812, 50.516258>,  <36.898155, 34.233685, 50.564171>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.133118, 34.223812, 50.516258>,  <37.524719, 34.207359, 50.436401>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.133118, 34.223812, 50.516258> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198335, -0.033732, 0.979554,
		0.047021, 0.998584, 0.024867,
		-0.979006, 0.041128, 0.199641,
		36.839417, 34.236149, 50.576149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.474174, 34.497658, 51.186272>,  <37.524719, 34.207359, 50.436401>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.474174, 34.497658, 51.186272> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.099953, 34.365345, 51.136745>,  <36.875420, 34.285957, 51.107029>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.099953, 34.365345, 51.136745>,  <37.474174, 34.497658, 51.186272>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.099953, 34.365345, 51.136745> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111420, -0.056245, 0.992180,
		-0.335158, 0.942030, 0.015765,
		-0.935550, -0.330781, -0.123812,
		36.819286, 34.266109, 51.099602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.049324, 34.924511, 51.633217>,  <37.474174, 34.497658, 51.186272>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.049324, 34.924511, 51.633217> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.864685, 34.578541, 51.554394>,  <36.753902, 34.370960, 51.507099>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.864685, 34.578541, 51.554394>,  <37.049324, 34.924511, 51.633217>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.864685, 34.578541, 51.554394> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143236, -0.146551, 0.978778,
		-0.875449, 0.480027, -0.056241,
		-0.461597, -0.864926, -0.197055,
		36.726208, 34.319061, 51.495277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.436844, 34.832817, 52.183537>,  <37.049324, 34.924511, 51.633217>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.436844, 34.832817, 52.183537> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.461220, 34.470798, 52.015163>,  <36.475845, 34.253590, 51.914139>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.461220, 34.470798, 52.015163>,  <36.436844, 34.832817, 52.183537>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.461220, 34.470798, 52.015163> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065049, -0.417219, 0.906475,
		-0.996020, -0.082618, 0.033449,
		0.060936, -0.905043, -0.420933,
		36.479500, 34.199287, 51.888882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.917103, 34.392708, 52.570965>,  <36.436844, 34.832817, 52.183537>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.917103, 34.392708, 52.570965> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.207180, 34.156761, 52.428894>,  <36.381226, 34.015194, 52.343651>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.207180, 34.156761, 52.428894>,  <35.917103, 34.392708, 52.570965>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.207180, 34.156761, 52.428894> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015898, -0.530047, 0.847819,
		-0.688366, -0.609183, -0.393762,
		0.725190, -0.589870, -0.355181,
		36.424736, 33.979801, 52.322338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.713524, 33.718746, 52.769711>,  <35.917103, 34.392708, 52.570965>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.713524, 33.718746, 52.769711> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.103291, 33.700691, 52.681644>,  <36.337151, 33.689857, 52.628807>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.103291, 33.700691, 52.681644>,  <35.713524, 33.718746, 52.769711>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.103291, 33.700691, 52.681644> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178542, -0.439504, 0.880318,
		-0.136498, -0.897106, -0.420201,
		0.974418, -0.045138, -0.220162,
		36.395615, 33.687149, 52.615597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.023540, 33.540657, 52.885052>,  <35.713524, 33.718746, 52.769711>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.023540, 33.540657, 52.885052> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.707817, 33.699997, 53.071945>,  <34.518383, 33.795601, 53.184082>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.707817, 33.699997, 53.071945>,  <35.023540, 33.540657, 52.885052>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.707817, 33.699997, 53.071945> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336290, 0.356207, -0.871795,
		-0.513713, -0.845241, -0.147195,
		-0.789308, 0.398352, 0.467234,
		34.471024, 33.819504, 53.212116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.315140, 33.331337, 52.598515>,  <35.023540, 33.540657, 52.885052>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.315140, 33.331337, 52.598515> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.308010, 33.693489, 52.768204>,  <34.303730, 33.910782, 52.870018>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.308010, 33.693489, 52.768204>,  <34.315140, 33.331337, 52.598515>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.308010, 33.693489, 52.768204> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427425, 0.376669, -0.821844,
		-0.903875, -0.195975, 0.380268,
		-0.017826, 0.905380, 0.424227,
		34.302662, 33.965103, 52.895473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.593616, 32.675503, 53.042103>,  <34.315140, 33.331337, 52.598515>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.593616, 32.675503, 53.042103> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.209572, 32.630871, 52.939541>,  <33.979145, 32.604092, 52.878002>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.209572, 32.630871, 52.939541>,  <34.593616, 32.675503, 53.042103>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.209572, 32.630871, 52.939541> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227077, 0.223990, -0.947768,
		0.163183, -0.968183, -0.189717,
		-0.960108, -0.111579, -0.256404,
		33.921539, 32.597397, 52.862621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.641712, 32.291309, 52.426823>,  <34.593616, 32.675503, 53.042103>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.641712, 32.291309, 52.426823> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.282402, 32.465988, 52.407246>,  <34.066814, 32.570793, 52.395500>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.282402, 32.465988, 52.407246>,  <34.641712, 32.291309, 52.426823>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.282402, 32.465988, 52.407246> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060289, 0.012156, -0.998107,
		-0.435271, -0.899529, -0.037247,
		-0.898279, 0.436693, -0.048941,
		34.012917, 32.596996, 52.392563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.381348, 31.879786, 51.911732>,  <34.641712, 32.291309, 52.426823>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.381348, 31.879786, 51.911732> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.139179, 32.196774, 51.941280>,  <33.993877, 32.386967, 51.959011>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.139179, 32.196774, 51.941280>,  <34.381348, 31.879786, 51.911732>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.139179, 32.196774, 51.941280> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162252, -0.032016, -0.986230,
		-0.779192, -0.609071, 0.147963,
		-0.605421, 0.792470, 0.073876,
		33.957554, 32.434513, 51.963444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.911587, 31.765306, 51.342220>,  <34.381348, 31.879786, 51.911732>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.911587, 31.765306, 51.342220> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.852707, 32.150467, 51.432693>,  <33.817379, 32.381561, 51.486977>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.852707, 32.150467, 51.432693>,  <33.911587, 31.765306, 51.342220>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.852707, 32.150467, 51.432693> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106359, 0.211935, -0.971479,
		-0.983373, -0.167053, 0.071217,
		-0.147195, 0.962900, 0.226179,
		33.808548, 32.439339, 51.500546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.370838, 32.029346, 50.918091>,  <33.911587, 31.765306, 51.342220>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.370838, 32.029346, 50.918091> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.596134, 32.343651, 51.020340>,  <33.731312, 32.532234, 51.081688>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.596134, 32.343651, 51.020340>,  <33.370838, 32.029346, 50.918091>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.596134, 32.343651, 51.020340> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006964, 0.313863, -0.949443,
		-0.826262, 0.532987, 0.182254,
		0.563243, 0.785758, 0.255621,
		33.765106, 32.579376, 51.097027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.101379, 32.576778, 50.686211>,  <33.370838, 32.029346, 50.918091>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.101379, 32.576778, 50.686211> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.471741, 32.720837, 50.731819>,  <33.693958, 32.807270, 50.759182>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.471741, 32.720837, 50.731819>,  <33.101379, 32.576778, 50.686211>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.471741, 32.720837, 50.731819> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041099, 0.203994, -0.978109,
		-0.375519, 0.910320, 0.174077,
		0.925903, 0.360144, 0.114017,
		33.749512, 32.828880, 50.766026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.220886, 33.157230, 50.125668>,  <33.101379, 32.576778, 50.686211>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.220886, 33.157230, 50.125668> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.588188, 33.052490, 50.244484>,  <33.808571, 32.989647, 50.315773>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.588188, 33.052490, 50.244484>,  <33.220886, 33.157230, 50.125668>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.588188, 33.052490, 50.244484> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355845, 0.216587, -0.909101,
		0.173714, 0.940491, 0.292062,
		0.918258, -0.261852, 0.297044,
		33.863667, 32.973934, 50.333599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.570877, 33.645153, 49.784256>,  <33.220886, 33.157230, 50.125668>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.570877, 33.645153, 49.784256> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.812057, 33.340359, 49.878769>,  <33.956768, 33.157482, 49.935478>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.812057, 33.340359, 49.878769>,  <33.570877, 33.645153, 49.784256>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.812057, 33.340359, 49.878769> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350430, -0.013106, -0.936497,
		0.716691, 0.647465, 0.259120,
		0.602953, -0.761983, 0.236284,
		33.992943, 33.111763, 49.949654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.254288, 33.850716, 49.521980>,  <33.570877, 33.645153, 49.784256>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.254288, 33.850716, 49.521980> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.300911, 33.459988, 49.593792>,  <34.328884, 33.225552, 49.636879>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.300911, 33.459988, 49.593792>,  <34.254288, 33.850716, 49.521980>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.300911, 33.459988, 49.593792> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478257, -0.103224, -0.872132,
		0.870451, 0.187516, 0.455141,
		0.116557, -0.976823, 0.179532,
		34.335876, 33.166943, 49.647652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.981617, 33.704144, 49.468533>,  <34.254288, 33.850716, 49.521980>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.981617, 33.704144, 49.468533> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.808189, 33.357525, 49.369640>,  <34.704132, 33.149555, 49.310303>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.808189, 33.357525, 49.369640>,  <34.981617, 33.704144, 49.468533>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.808189, 33.357525, 49.369640> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463014, 0.021148, -0.886099,
		0.773071, -0.498655, 0.392052,
		-0.433566, -0.866543, -0.247233,
		34.678120, 33.097561, 49.295471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.520920, 33.297146, 49.185162>,  <34.981617, 33.704144, 49.468533>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.520920, 33.297146, 49.185162> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.159740, 33.170361, 49.069077>,  <34.943035, 33.094288, 48.999424>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.159740, 33.170361, 49.069077>,  <35.520920, 33.297146, 49.185162>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.159740, 33.170361, 49.069077> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257176, 0.142502, -0.955800,
		0.344311, -0.937671, -0.047156,
		-0.902946, -0.316965, -0.290212,
		34.888855, 33.075272, 48.982014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.613922, 32.778069, 48.644493>,  <35.520920, 33.297146, 49.185162>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.613922, 32.778069, 48.644493> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.244156, 32.926819, 48.610630>,  <35.022297, 33.016071, 48.590313>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.244156, 32.926819, 48.610630>,  <35.613922, 32.778069, 48.644493>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.244156, 32.926819, 48.610630> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138791, 0.121245, -0.982872,
		-0.355245, -0.920329, -0.163694,
		-0.924412, 0.371880, -0.084662,
		34.966831, 33.038383, 48.585232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.506744, 32.534840, 48.013813>,  <35.613922, 32.778069, 48.644493>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.506744, 32.534840, 48.013813> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.211819, 32.795269, 48.085880>,  <35.034863, 32.951527, 48.129120>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.211819, 32.795269, 48.085880>,  <35.506744, 32.534840, 48.013813>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.211819, 32.795269, 48.085880> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087292, 0.356287, -0.930290,
		-0.669882, -0.670193, -0.319531,
		-0.737319, 0.651077, 0.180168,
		34.990623, 32.990593, 48.139931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.157749, 32.607628, 47.324123>,  <35.506744, 32.534840, 48.013813>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.157749, 32.607628, 47.324123> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.027397, 32.922935, 47.532906>,  <34.949184, 33.112118, 47.658173>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.027397, 32.922935, 47.532906>,  <35.157749, 32.607628, 47.324123>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.027397, 32.922935, 47.532906> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089980, 0.523725, -0.847122,
		-0.941118, -0.323028, -0.099745,
		-0.325883, 0.788267, 0.521953,
		34.929630, 33.159416, 47.689491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.479599, 32.848881, 47.025768>,  <35.157749, 32.607628, 47.324123>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.479599, 32.848881, 47.025768> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.677212, 33.141205, 47.214169>,  <34.795780, 33.316601, 47.327209>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.677212, 33.141205, 47.214169>,  <34.479599, 32.848881, 47.025768>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.677212, 33.141205, 47.214169> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071838, 0.574188, -0.815565,
		-0.866469, 0.369082, 0.336169,
		0.494035, 0.730812, 0.471002,
		34.825424, 33.360447, 47.355469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.170979, 33.499977, 46.744518>,  <34.479599, 32.848881, 47.025768>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.170979, 33.499977, 46.744518> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.527370, 33.598850, 46.896866>,  <34.741203, 33.658176, 46.988274>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.527370, 33.598850, 46.896866>,  <34.170979, 33.499977, 46.744518>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.527370, 33.598850, 46.896866> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090394, 0.725468, -0.682294,
		-0.444963, 0.642336, 0.624030,
		0.890975, 0.247187, 0.380869,
		34.794662, 33.673008, 47.011127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.134525, 34.077877, 46.979809>,  <34.170979, 33.499977, 46.744518>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.134525, 34.077877, 46.979809> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.530159, 34.046593, 46.929859>,  <34.767540, 34.027821, 46.899891>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.530159, 34.046593, 46.929859>,  <34.134525, 34.077877, 46.979809>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.530159, 34.046593, 46.929859> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012692, 0.799115, -0.601045,
		0.146798, 0.596069, 0.789400,
		0.989085, -0.078214, -0.124874,
		34.826885, 34.023129, 46.892399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.302757, 34.767654, 47.031853>,  <34.134525, 34.077877, 46.979809>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.302757, 34.767654, 47.031853> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.565945, 34.549751, 46.823883>,  <34.723858, 34.419010, 46.699100>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.565945, 34.549751, 46.823883>,  <34.302757, 34.767654, 47.031853>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.565945, 34.549751, 46.823883> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003253, 0.692475, -0.721435,
		0.753037, 0.472992, 0.457400,
		0.657970, -0.544755, -0.519920,
		34.763336, 34.386326, 46.667908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.628014, 35.322445, 46.640453>,  <34.302757, 34.767654, 47.031853>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.628014, 35.322445, 46.640453> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.737892, 34.969791, 46.486954>,  <34.803822, 34.758202, 46.394852>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.737892, 34.969791, 46.486954>,  <34.628014, 35.322445, 46.640453>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.737892, 34.969791, 46.486954> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046582, 0.410840, -0.910517,
		0.960401, 0.232242, 0.153925,
		0.274699, -0.881632, -0.383753,
		34.820301, 34.705303, 46.371826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.227818, 35.367466, 46.171967>,  <34.628014, 35.322445, 46.640453>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.227818, 35.367466, 46.171967> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.059059, 35.030247, 46.038536>,  <34.957806, 34.827915, 45.958477>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.059059, 35.030247, 46.038536>,  <35.227818, 35.367466, 46.171967>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.059059, 35.030247, 46.038536> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110510, 0.317366, -0.941842,
		0.899886, -0.434219, -0.040728,
		-0.421891, -0.843050, -0.333579,
		34.932491, 34.777332, 45.938461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<43.188339, 39.302383, 43.615601> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.844353, 39.292545, 43.411697>,  <42.637962, 39.286644, 43.289356>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.844353, 39.292545, 43.411697>,  <43.188339, 39.302383, 43.615601>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.844353, 39.292545, 43.411697> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495146, -0.282221, -0.821695,
		-0.123653, -0.959034, 0.254879,
		-0.859966, -0.024598, -0.509759,
		42.586365, 39.285168, 43.258770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.253769, 38.753075, 43.047459>,  <43.188339, 39.302383, 43.615601>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.253769, 38.753075, 43.047459> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.956993, 38.991573, 42.924812>,  <42.778927, 39.134674, 42.851223>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.956993, 38.991573, 42.924812>,  <43.253769, 38.753075, 43.047459>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.956993, 38.991573, 42.924812> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263837, -0.160776, -0.951074,
		-0.616370, -0.786538, -0.038025,
		-0.741942, 0.596245, -0.306616,
		42.734409, 39.170448, 42.832829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.112915, 38.476971, 42.455624>,  <43.253769, 38.753075, 43.047459>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.112915, 38.476971, 42.455624> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.927929, 38.829502, 42.416889>,  <42.816936, 39.041023, 42.393646>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.927929, 38.829502, 42.416889>,  <43.112915, 38.476971, 42.455624>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.927929, 38.829502, 42.416889> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277205, 0.039979, -0.959979,
		-0.842189, -0.470802, -0.262799,
		-0.462466, 0.881333, -0.096839,
		42.789188, 39.093903, 42.387836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.849350, 38.429771, 41.760624>,  <43.112915, 38.476971, 42.455624>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.849350, 38.429771, 41.760624> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.816792, 38.814541, 41.864990>,  <42.797256, 39.045403, 41.927608>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.816792, 38.814541, 41.864990>,  <42.849350, 38.429771, 41.760624>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.816792, 38.814541, 41.864990> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272310, 0.273285, -0.922585,
		-0.958760, -0.004047, -0.284187,
		-0.081398, 0.961925, 0.260912,
		42.792374, 39.103119, 41.943264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.303196, 38.766289, 41.305771>,  <42.849350, 38.429771, 41.760624>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.303196, 38.766289, 41.305771> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.515507, 39.087952, 41.412807>,  <42.642895, 39.280949, 41.477032>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.515507, 39.087952, 41.412807>,  <42.303196, 38.766289, 41.305771>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.515507, 39.087952, 41.412807> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128989, 0.235413, -0.963298,
		-0.837639, 0.545812, 0.021224,
		0.530776, 0.804158, 0.267595,
		42.674740, 39.329201, 41.493088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.077274, 39.273628, 40.931705>,  <42.303196, 38.766289, 41.305771>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.077274, 39.273628, 40.931705> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.438694, 39.396095, 41.051617>,  <42.655544, 39.469578, 41.123562>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.438694, 39.396095, 41.051617>,  <42.077274, 39.273628, 40.931705>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.438694, 39.396095, 41.051617> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222017, 0.263857, -0.938663,
		-0.366489, 0.914680, 0.170431,
		0.903545, 0.306171, 0.299775,
		42.709759, 39.487946, 41.141548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.246971, 39.852436, 40.631046>,  <42.077274, 39.273628, 40.931705>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.246971, 39.852436, 40.631046> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.593479, 39.662334, 40.692646>,  <42.801384, 39.548275, 40.729607>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.593479, 39.662334, 40.692646>,  <42.246971, 39.852436, 40.631046>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.593479, 39.662334, 40.692646> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251327, 0.148161, -0.956495,
		0.431759, 0.867285, 0.247791,
		0.866267, -0.475252, 0.154003,
		42.853359, 39.519760, 40.738846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.631321, 40.070545, 40.052017>,  <42.246971, 39.852436, 40.631046>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.631321, 40.070545, 40.052017> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.875580, 39.794453, 40.207291>,  <43.022137, 39.628796, 40.300457>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.875580, 39.794453, 40.207291>,  <42.631321, 40.070545, 40.052017>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.875580, 39.794453, 40.207291> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400083, -0.154132, -0.903425,
		0.683405, 0.706982, 0.182029,
		0.610649, -0.690232, 0.388186,
		43.058773, 39.587383, 40.323746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.353905, 40.149799, 39.712746>,  <42.631321, 40.070545, 40.052017>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.353905, 40.149799, 39.712746> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.358643, 39.776894, 39.857376>,  <43.361485, 39.553150, 39.944153>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.358643, 39.776894, 39.857376>,  <43.353905, 40.149799, 39.712746>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.358643, 39.776894, 39.857376> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416673, -0.324110, -0.849315,
		0.908979, 0.160717, 0.384612,
		0.011842, -0.932268, 0.361575,
		43.362194, 39.497211, 39.965847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.007710, 39.861893, 39.550613>,  <43.353905, 40.149799, 39.712746>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.007710, 39.861893, 39.550613> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.767696, 39.548420, 39.614861>,  <43.623688, 39.360336, 39.653408>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.767696, 39.548420, 39.614861>,  <44.007710, 39.861893, 39.550613>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.767696, 39.548420, 39.614861> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325425, -0.422532, -0.845911,
		0.730791, -0.455310, 0.508564,
		-0.600036, -0.783684, 0.160613,
		43.587685, 39.313316, 39.663044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.443535, 39.349133, 39.439453>,  <44.007710, 39.861893, 39.550613>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.443535, 39.349133, 39.439453> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.067768, 39.220348, 39.392403>,  <43.842308, 39.143078, 39.364174>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.067768, 39.220348, 39.392403>,  <44.443535, 39.349133, 39.439453>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.067768, 39.220348, 39.392403> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257854, -0.437664, -0.861372,
		0.225850, -0.839517, 0.494168,
		-0.939416, -0.321964, -0.117627,
		43.785942, 39.123760, 39.357113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.613731, 38.707806, 39.111084>,  <44.443535, 39.349133, 39.439453>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.613731, 38.707806, 39.111084> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.217476, 38.740791, 39.067581>,  <43.979721, 38.760582, 39.041481>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.217476, 38.740791, 39.067581>,  <44.613731, 38.707806, 39.111084>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.217476, 38.740791, 39.067581> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063549, -0.426494, -0.902255,
		-0.120783, -0.900724, 0.417263,
		-0.990643, 0.082460, -0.108753,
		43.920284, 38.765530, 39.034954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.396297, 38.053783, 39.047497>,  <44.613731, 38.707806, 39.111084>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.396297, 38.053783, 39.047497> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.126110, 38.278858, 38.856865>,  <43.963997, 38.413902, 38.742485>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.126110, 38.278858, 38.856865>,  <44.396297, 38.053783, 39.047497>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.126110, 38.278858, 38.856865> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232349, -0.450976, -0.861763,
		-0.699829, -0.692825, 0.173879,
		-0.675466, 0.562686, -0.476583,
		43.923470, 38.447662, 38.713890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.943718, 37.596245, 38.707710>,  <44.396297, 38.053783, 39.047497>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.943718, 37.596245, 38.707710> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.858555, 37.933334, 38.509930>,  <43.807457, 38.135590, 38.391262>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.858555, 37.933334, 38.509930>,  <43.943718, 37.596245, 38.707710>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.858555, 37.933334, 38.509930> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177392, -0.530981, -0.828608,
		-0.960834, -0.088709, 0.262544,
		-0.212911, 0.842728, -0.494448,
		43.794682, 38.186153, 38.361595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.289001, 37.526585, 38.326981>,  <43.943718, 37.596245, 38.707710>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.289001, 37.526585, 38.326981> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.472900, 37.816277, 38.121410>,  <43.583241, 37.990093, 37.998070>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.472900, 37.816277, 38.121410>,  <43.289001, 37.526585, 38.326981>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.472900, 37.816277, 38.121410> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229529, -0.462137, -0.856590,
		-0.857873, 0.511778, -0.046235,
		0.459751, 0.724233, -0.513923,
		43.610825, 38.033546, 37.967232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.945251, 37.423218, 37.761742>,  <43.289001, 37.526585, 38.326981>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.945251, 37.423218, 37.761742> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.271149, 37.632271, 37.661301>,  <43.466686, 37.757702, 37.601036>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.271149, 37.632271, 37.661301>,  <42.945251, 37.423218, 37.761742>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.271149, 37.632271, 37.661301> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092246, -0.544385, -0.833748,
		-0.572444, 0.656123, -0.491742,
		0.814739, 0.522635, -0.251105,
		43.515572, 37.789062, 37.585968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.934837, 37.342354, 37.097126>,  <42.945251, 37.423218, 37.761742>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.934837, 37.342354, 37.097126> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.298031, 37.491562, 37.173466>,  <43.515945, 37.581085, 37.219269>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.298031, 37.491562, 37.173466>,  <42.934837, 37.342354, 37.097126>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.298031, 37.491562, 37.173466> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385398, -0.564742, -0.729750,
		-0.164430, 0.736153, -0.656537,
		0.907982, 0.373021, 0.190852,
		43.570427, 37.603470, 37.230721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.104176, 37.543724, 36.459206>,  <42.934837, 37.342354, 37.097126>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.104176, 37.543724, 36.459206> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.471840, 37.520344, 36.615009>,  <43.692440, 37.506313, 36.708492>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.471840, 37.520344, 36.615009>,  <43.104176, 37.543724, 36.459206>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.471840, 37.520344, 36.615009> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263687, -0.643284, -0.718787,
		0.292581, 0.763393, -0.575871,
		0.919166, -0.058454, 0.389510,
		43.747589, 37.502808, 36.731861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.515217, 37.560188, 35.886265>,  <43.104176, 37.543724, 36.459206>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.515217, 37.560188, 35.886265> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.733101, 37.407345, 36.184872>,  <43.863831, 37.315639, 36.364037>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.733101, 37.407345, 36.184872>,  <43.515217, 37.560188, 35.886265>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.733101, 37.407345, 36.184872> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531081, -0.531747, -0.659695,
		0.649029, 0.755804, -0.086721,
		0.544714, -0.382106, 0.746513,
		43.896515, 37.292713, 36.408825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.236824, 37.531582, 35.631351>,  <43.515217, 37.560188, 35.886265>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.236824, 37.531582, 35.631351> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.235535, 37.262592, 35.927399>,  <44.234760, 37.101200, 36.105026>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.235535, 37.262592, 35.927399>,  <44.236824, 37.531582, 35.631351>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.235535, 37.262592, 35.927399> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469305, -0.654571, -0.592697,
		0.883030, 0.345428, 0.317705,
		-0.003226, -0.672470, 0.740117,
		44.234566, 37.060852, 36.149433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.834591, 37.282055, 35.566418>,  <44.236824, 37.531582, 35.631351>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.834591, 37.282055, 35.566418> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.610336, 37.026112, 35.776665>,  <44.475784, 36.872547, 35.902813>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.610336, 37.026112, 35.776665>,  <44.834591, 37.282055, 35.566418>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.610336, 37.026112, 35.776665> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344097, -0.757375, -0.554960,
		0.753183, -0.130268, 0.644783,
		-0.560636, -0.639855, 0.525617,
		44.442146, 36.834156, 35.934349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.168674, 36.553329, 35.800045>,  <44.834591, 37.282055, 35.566418>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.168674, 36.553329, 35.800045> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.772160, 36.511005, 35.768646>,  <44.534252, 36.485611, 35.749805>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.772160, 36.511005, 35.768646>,  <45.168674, 36.553329, 35.800045>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.772160, 36.511005, 35.768646> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131750, -0.798663, -0.587180,
		-0.000561, -0.592403, 0.805642,
		-0.991283, -0.105813, -0.078497,
		44.474773, 36.479263, 35.745098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.229588, 37.027435, 36.438431>,  <45.168674, 36.553329, 35.800045>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.229588, 37.027435, 36.438431> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.514698, 36.749996, 36.480141>,  <45.685764, 36.583530, 36.505165>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.514698, 36.749996, 36.480141>,  <45.229588, 37.027435, 36.438431>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.514698, 36.749996, 36.480141> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200899, -0.059450, 0.977806,
		-0.672008, -0.717902, -0.181719,
		0.712772, -0.693601, 0.104275,
		45.728531, 36.541916, 36.511425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.038242, 36.306351, 36.692913>,  <45.229588, 37.027435, 36.438431>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.038242, 36.306351, 36.692913> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.430347, 36.301365, 36.771832>,  <45.665611, 36.298374, 36.819183>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.430347, 36.301365, 36.771832>,  <45.038242, 36.306351, 36.692913>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.430347, 36.301365, 36.771832> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197492, -0.016942, 0.980158,
		-0.008830, -0.999779, -0.019061,
		0.980265, -0.012419, 0.197299,
		45.724426, 36.297626, 36.831020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.064255, 35.931244, 37.246143>,  <45.038242, 36.306351, 36.692913>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.064255, 35.931244, 37.246143> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.433544, 36.082077, 37.275742>,  <45.655117, 36.172577, 37.293499>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.433544, 36.082077, 37.275742>,  <45.064255, 35.931244, 37.246143>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.433544, 36.082077, 37.275742> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049239, -0.074888, 0.995976,
		0.381105, -0.923148, -0.050570,
		0.923220, 0.377081, 0.073995,
		45.710510, 36.195202, 37.297939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.331268, 35.434254, 37.682690>,  <45.064255, 35.931244, 37.246143>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.331268, 35.434254, 37.682690> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.566750, 35.757114, 37.700283>,  <45.708038, 35.950832, 37.710838>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.566750, 35.757114, 37.700283>,  <45.331268, 35.434254, 37.682690>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.566750, 35.757114, 37.700283> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043460, -0.085934, 0.995352,
		0.807181, -0.584054, -0.085669,
		0.588702, 0.807153, 0.043982,
		45.743359, 35.999260, 37.713478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.725163, 35.299438, 38.236324>,  <45.331268, 35.434254, 37.682690>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.725163, 35.299438, 38.236324> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.793674, 35.691212, 38.193661>,  <45.834782, 35.926277, 38.168064>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.793674, 35.691212, 38.193661>,  <45.725163, 35.299438, 38.236324>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.793674, 35.691212, 38.193661> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045412, 0.100294, 0.993921,
		0.984176, -0.175080, -0.027300,
		0.171278, 0.979432, -0.106657,
		45.845058, 35.985043, 38.161663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.316898, 35.385757, 38.651016>,  <45.725163, 35.299438, 38.236324>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.316898, 35.385757, 38.651016> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.129902, 35.736637, 38.607246>,  <46.017704, 35.947163, 38.580982>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.129902, 35.736637, 38.607246>,  <46.316898, 35.385757, 38.651016>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.129902, 35.736637, 38.607246> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011429, 0.129774, 0.991478,
		0.883922, 0.462260, -0.070695,
		-0.467495, 0.877197, -0.109427,
		45.989655, 35.999798, 38.574417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.575699, 35.875957, 39.134998>,  <46.316898, 35.385757, 38.651016>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.575699, 35.875957, 39.134998> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.221241, 36.028214, 39.029270>,  <46.008568, 36.119568, 38.965836>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.221241, 36.028214, 39.029270>,  <46.575699, 35.875957, 39.134998>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.221241, 36.028214, 39.029270> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212802, 0.172436, 0.961759,
		0.411665, 0.908502, -0.071801,
		-0.886142, 0.380643, -0.264317,
		45.955399, 36.142406, 38.949974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.342194, 36.329681, 39.704266>,  <46.575699, 35.875957, 39.134998>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.342194, 36.329681, 39.704266> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.998135, 36.273483, 39.508141>,  <45.791698, 36.239765, 39.390465>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.998135, 36.273483, 39.508141>,  <46.342194, 36.329681, 39.704266>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.998135, 36.273483, 39.508141> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495102, -0.001009, 0.868834,
		-0.122563, 0.990081, -0.068692,
		-0.860147, -0.140497, -0.490314,
		45.740089, 36.231335, 39.361046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.913551, 36.815792, 39.904018>,  <46.342194, 36.329681, 39.704266>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.913551, 36.815792, 39.904018> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.653671, 36.554771, 39.748039>,  <45.497742, 36.398159, 39.654449>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.653671, 36.554771, 39.748039>,  <45.913551, 36.815792, 39.904018>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.653671, 36.554771, 39.748039> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.593976, 0.115630, 0.796130,
		-0.474427, 0.748869, -0.462726,
		-0.649701, -0.652553, -0.389952,
		45.458759, 36.359005, 39.631054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.289726, 37.105888, 39.936577>,  <45.913551, 36.815792, 39.904018>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.289726, 37.105888, 39.936577> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.200520, 36.716709, 39.912434>,  <45.146996, 36.483204, 39.897945>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.200520, 36.716709, 39.912434>,  <45.289726, 37.105888, 39.936577>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.200520, 36.716709, 39.912434> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.653433, 0.103253, 0.749909,
		-0.723387, 0.206684, -0.658781,
		-0.223015, -0.972944, -0.060363,
		45.133614, 36.424828, 39.894325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.546803, 37.037277, 39.961678>,  <45.289726, 37.105888, 39.936577>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.546803, 37.037277, 39.961678> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.653553, 36.667103, 40.069271>,  <44.717602, 36.445000, 40.133827>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.653553, 36.667103, 40.069271>,  <44.546803, 37.037277, 39.961678>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.653553, 36.667103, 40.069271> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464909, 0.120858, 0.877071,
		-0.844179, -0.359119, -0.397989,
		0.266872, -0.925434, 0.268983,
		44.733616, 36.389473, 40.149967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.976440, 36.773952, 40.256489>,  <44.546803, 37.037277, 39.961678>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.976440, 36.773952, 40.256489> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.271996, 36.559303, 40.419502>,  <44.449329, 36.430511, 40.517311>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.271996, 36.559303, 40.419502>,  <43.976440, 36.773952, 40.256489>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.271996, 36.559303, 40.419502> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434407, 0.082988, 0.896886,
		-0.515111, -0.839730, -0.171795,
		0.738885, -0.536625, 0.407533,
		44.493660, 36.398315, 40.541763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.724396, 36.112740, 40.557899>,  <43.976440, 36.773952, 40.256489>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.724396, 36.112740, 40.557899> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.072567, 36.205318, 40.731701>,  <44.281467, 36.260864, 40.835983>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.072567, 36.205318, 40.731701>,  <43.724396, 36.112740, 40.557899>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.072567, 36.205318, 40.731701> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429768, -0.073259, 0.899962,
		0.240122, -0.970086, 0.035700,
		0.870425, 0.231444, 0.434503,
		44.333694, 36.274754, 40.862053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.733463, 35.803505, 41.186016>,  <43.724396, 36.112740, 40.557899>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.733463, 35.803505, 41.186016> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.019047, 36.072792, 41.262997>,  <44.190399, 36.234364, 41.309185>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.019047, 36.072792, 41.262997>,  <43.733463, 35.803505, 41.186016>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.019047, 36.072792, 41.262997> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313529, 0.061624, 0.947577,
		0.626067, -0.736872, 0.255070,
		0.713961, 0.673218, 0.192450,
		44.233234, 36.274757, 41.320732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.995232, 35.560558, 41.824921>,  <43.733463, 35.803505, 41.186016>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.995232, 35.560558, 41.824921> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.121502, 35.936207, 41.770676>,  <44.197266, 36.161598, 41.738129>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.121502, 35.936207, 41.770676>,  <43.995232, 35.560558, 41.824921>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.121502, 35.936207, 41.770676> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224824, 0.212882, 0.950861,
		0.921847, -0.269677, 0.278340,
		0.315679, 0.939125, -0.135614,
		44.216206, 36.217945, 41.729992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.542141, 35.683231, 42.402893>,  <43.995232, 35.560558, 41.824921>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.542141, 35.683231, 42.402893> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.404869, 36.033741, 42.267620>,  <44.322506, 36.244045, 42.186455>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.404869, 36.033741, 42.267620>,  <44.542141, 35.683231, 42.402893>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.404869, 36.033741, 42.267620> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082266, 0.330627, 0.940169,
		0.935660, 0.350469, -0.041377,
		-0.343180, 0.876275, -0.338186,
		44.301914, 36.296623, 42.166164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.928761, 36.218338, 42.801998>,  <44.542141, 35.683231, 42.402893>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.928761, 36.218338, 42.801998> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.586674, 36.371349, 42.662125>,  <44.381424, 36.463158, 42.578201>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.586674, 36.371349, 42.662125>,  <44.928761, 36.218338, 42.801998>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.586674, 36.371349, 42.662125> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247693, 0.290996, 0.924105,
		0.455254, 0.876922, -0.154114,
		-0.855215, 0.382529, -0.349685,
		44.330109, 36.486107, 42.557220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.778061, 36.900772, 43.003162>,  <44.928761, 36.218338, 42.801998>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.778061, 36.900772, 43.003162> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.404099, 36.783958, 42.922501>,  <44.179722, 36.713871, 42.874104>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.404099, 36.783958, 42.922501>,  <44.778061, 36.900772, 43.003162>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.404099, 36.783958, 42.922501> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290278, 0.302357, 0.907920,
		-0.204174, 0.907357, -0.367447,
		-0.934907, -0.292035, -0.201652,
		44.123627, 36.696346, 42.862003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.332844, 37.336868, 43.338226>,  <44.778061, 36.900772, 43.003162>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.332844, 37.336868, 43.338226> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.075951, 37.045742, 43.242039>,  <43.921814, 36.871067, 43.184326>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.075951, 37.045742, 43.242039>,  <44.332844, 37.336868, 43.338226>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.075951, 37.045742, 43.242039> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.554256, 0.224245, 0.801570,
		-0.529473, 0.648072, -0.547413,
		-0.642230, -0.727816, -0.240467,
		43.883282, 36.827396, 43.169899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.255428, 38.094963, 43.550091>,  <44.332844, 37.336868, 43.338226>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.255428, 38.094963, 43.550091> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.465675, 37.797607, 43.715549>,  <44.591824, 37.619194, 43.814823>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.465675, 37.797607, 43.715549>,  <44.255428, 38.094963, 43.550091>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.465675, 37.797607, 43.715549> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173946, -0.382040, -0.907628,
		0.832749, 0.549015, -0.071497,
		0.525616, -0.743389, 0.413642,
		44.623360, 37.574589, 43.839642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<39.193890, 36.617962, 41.709190> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.042618, 36.258240, 41.797039>,  <38.951855, 36.042408, 41.849747>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.042618, 36.258240, 41.797039>,  <39.193890, 36.617962, 41.709190>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.042618, 36.258240, 41.797039> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333385, -0.353626, -0.873958,
		0.863615, -0.257299, 0.433550,
		-0.378183, -0.899303, 0.219617,
		38.929161, 35.988449, 41.862923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.759396, 36.193573, 41.461388>,  <39.193890, 36.617962, 41.709190>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.759396, 36.193573, 41.461388> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.444813, 35.949005, 41.496395>,  <39.256065, 35.802265, 41.517399>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.444813, 35.949005, 41.496395>,  <39.759396, 36.193573, 41.461388>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.444813, 35.949005, 41.496395> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223009, -0.413232, -0.882896,
		0.575982, -0.674841, 0.461340,
		-0.786455, -0.611415, 0.087519,
		39.208878, 35.765579, 41.522652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.990929, 35.448074, 41.402992>,  <39.759396, 36.193573, 41.461388>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.990929, 35.448074, 41.402992> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.604870, 35.473122, 41.301342>,  <39.373234, 35.488148, 41.240353>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.604870, 35.473122, 41.301342>,  <39.990929, 35.448074, 41.402992>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.604870, 35.473122, 41.301342> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206606, -0.413780, -0.886623,
		-0.160668, -0.908221, 0.386420,
		-0.965142, 0.062615, -0.254125,
		39.315327, 35.491905, 41.225105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.915417, 34.957024, 40.807697>,  <39.990929, 35.448074, 41.402992>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.915417, 34.957024, 40.807697> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.585911, 35.183792, 40.806622>,  <39.388206, 35.319855, 40.805977>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.585911, 35.183792, 40.806622>,  <39.915417, 34.957024, 40.807697>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.585911, 35.183792, 40.806622> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126459, -0.188378, -0.973921,
		-0.552647, -0.801942, 0.226872,
		-0.823765, 0.566925, -0.002694,
		39.338779, 35.353870, 40.805813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.253082, 34.593338, 40.601887>,  <39.915417, 34.957024, 40.807697>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.253082, 34.593338, 40.601887> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.196987, 34.980026, 40.516304>,  <39.163330, 35.212040, 40.464954>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.196987, 34.980026, 40.516304>,  <39.253082, 34.593338, 40.601887>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.196987, 34.980026, 40.516304> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468172, -0.255150, -0.845999,
		-0.872439, -0.018470, 0.488375,
		-0.140234, 0.966725, -0.213956,
		39.154919, 35.270042, 40.452118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.800312, 34.573551, 40.083721>,  <39.253082, 34.593338, 40.601887>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.800312, 34.573551, 40.083721> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.909142, 34.956982, 40.049999>,  <38.974438, 35.187038, 40.029766>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.909142, 34.956982, 40.049999>,  <38.800312, 34.573551, 40.083721>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.909142, 34.956982, 40.049999> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231480, -0.019840, -0.972637,
		-0.934019, 0.284145, 0.216493,
		0.272075, 0.958576, -0.084305,
		38.990765, 35.244553, 40.024708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.327576, 34.906288, 39.654140>,  <38.800312, 34.573551, 40.083721>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.327576, 34.906288, 39.654140> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.630672, 35.167107, 39.643814>,  <38.812531, 35.323597, 39.637619>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.630672, 35.167107, 39.643814>,  <38.327576, 34.906288, 39.654140>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.630672, 35.167107, 39.643814> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130135, 0.112227, -0.985124,
		-0.639449, 0.749827, 0.169893,
		0.757739, 0.652046, -0.025815,
		38.857994, 35.362720, 39.636070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.100811, 35.604385, 39.213562>,  <38.327576, 34.906288, 39.654140>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.100811, 35.604385, 39.213562> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.498287, 35.560188, 39.221237>,  <38.736774, 35.533669, 39.225842>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.498287, 35.560188, 39.221237>,  <38.100811, 35.604385, 39.213562>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.498287, 35.560188, 39.221237> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035423, 0.146870, -0.988521,
		0.106409, 0.982965, 0.149857,
		0.993691, -0.110496, 0.019192,
		38.796394, 35.527039, 39.226994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.314159, 36.046604, 38.640308>,  <38.100811, 35.604385, 39.213562>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.314159, 36.046604, 38.640308> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.605927, 35.782368, 38.711376>,  <38.780987, 35.623825, 38.754017>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.605927, 35.782368, 38.711376>,  <38.314159, 36.046604, 38.640308>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.605927, 35.782368, 38.711376> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161679, -0.085889, -0.983099,
		0.664689, 0.745815, 0.044155,
		0.729417, -0.660594, 0.177672,
		38.824753, 35.584190, 38.764679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.782055, 36.279900, 38.142582>,  <38.314159, 36.046604, 38.640308>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.782055, 36.279900, 38.142582> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.911228, 35.919228, 38.257603>,  <38.988731, 35.702824, 38.326614>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.911228, 35.919228, 38.257603>,  <38.782055, 36.279900, 38.142582>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.911228, 35.919228, 38.257603> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193417, -0.234546, -0.952669,
		0.926447, 0.363266, 0.098657,
		0.322933, -0.901679, 0.287556,
		39.008106, 35.648724, 38.343868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.417477, 36.098625, 37.771790>,  <38.782055, 36.279900, 38.142582>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.417477, 36.098625, 37.771790> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.256481, 35.750816, 37.886284>,  <39.159885, 35.542130, 37.954983>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.256481, 35.750816, 37.886284>,  <39.417477, 36.098625, 37.771790>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.256481, 35.750816, 37.886284> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098125, -0.351863, -0.930894,
		0.910153, -0.346583, 0.226941,
		-0.402485, -0.869524, 0.286240,
		39.135735, 35.489960, 37.972157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.736027, 35.648464, 37.399807>,  <39.417477, 36.098625, 37.771790>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.736027, 35.648464, 37.399807> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.432991, 35.423950, 37.533089>,  <39.251171, 35.289242, 37.613056>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.432991, 35.423950, 37.533089>,  <39.736027, 35.648464, 37.399807>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.432991, 35.423950, 37.533089> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027823, -0.482242, -0.875596,
		0.652140, -0.672611, 0.349724,
		-0.757587, -0.561281, 0.333203,
		39.205715, 35.255566, 37.633049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.809002, 34.853996, 37.236095>,  <39.736027, 35.648464, 37.399807>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.809002, 34.853996, 37.236095> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.431286, 34.983978, 37.256981>,  <39.204659, 35.061966, 37.269512>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.431286, 34.983978, 37.256981>,  <39.809002, 34.853996, 37.236095>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.431286, 34.983978, 37.256981> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187808, -0.401724, -0.896296,
		-0.270279, -0.856167, 0.440372,
		-0.944287, 0.324955, 0.052217,
		39.147999, 35.081467, 37.272648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.481766, 34.809483, 37.650879>,  <39.809002, 34.853996, 37.236095>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.481766, 34.809483, 37.650879> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.582390, 34.641739, 37.301971>,  <40.642765, 34.541092, 37.092628>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.582390, 34.641739, 37.301971>,  <40.481766, 34.809483, 37.650879>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.582390, 34.641739, 37.301971> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.574138, -0.660886, 0.483317,
		-0.779154, -0.622388, 0.074516,
		0.251564, -0.419361, -0.872268,
		40.657860, 34.515930, 37.040291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.123203, 34.739052, 37.441673>,  <40.481766, 34.809483, 37.650879>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.123203, 34.739052, 37.441673> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.424076, 34.502357, 37.325691>,  <41.604599, 34.360340, 37.256104>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.424076, 34.502357, 37.325691>,  <41.123203, 34.739052, 37.441673>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.424076, 34.502357, 37.325691> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289594, -0.692093, 0.661168,
		-0.591908, -0.413351, -0.691943,
		0.752183, -0.591733, -0.289952,
		41.649731, 34.324837, 37.238705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.851265, 34.106941, 37.332409>,  <41.123203, 34.739052, 37.441673>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.851265, 34.106941, 37.332409> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.239117, 34.023617, 37.383690>,  <41.471828, 33.973621, 37.414459>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.239117, 34.023617, 37.383690>,  <40.851265, 34.106941, 37.332409>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.239117, 34.023617, 37.383690> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239298, -0.699402, 0.673478,
		-0.050628, -0.683699, -0.728006,
		0.969625, -0.208307, 0.128199,
		41.530003, 33.961124, 37.422150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.881168, 33.447712, 37.251919>,  <40.851265, 34.106941, 37.332409>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.881168, 33.447712, 37.251919> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.213356, 33.517166, 37.463646>,  <41.412666, 33.558838, 37.590683>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.213356, 33.517166, 37.463646>,  <40.881168, 33.447712, 37.251919>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.213356, 33.517166, 37.463646> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252516, -0.729626, 0.635517,
		0.496552, -0.661436, -0.562083,
		0.830465, 0.173632, 0.529321,
		41.462494, 33.569256, 37.622440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.190434, 32.847992, 37.363998>,  <40.881168, 33.447712, 37.251919>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.190434, 32.847992, 37.363998> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.311790, 33.100578, 37.649429>,  <41.384605, 33.252132, 37.820690>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.311790, 33.100578, 37.649429>,  <41.190434, 32.847992, 37.363998>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.311790, 33.100578, 37.649429> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039036, -0.740015, 0.671457,
		0.952066, -0.231571, -0.199866,
		0.303393, 0.631469, 0.713582,
		41.402809, 33.290020, 37.863503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.584568, 32.366924, 37.757542>,  <41.190434, 32.847992, 37.363998>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.584568, 32.366924, 37.757542> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.504562, 32.667763, 38.008728>,  <41.456558, 32.848267, 38.159439>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.504562, 32.667763, 38.008728>,  <41.584568, 32.366924, 37.757542>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.504562, 32.667763, 38.008728> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158913, -0.657332, 0.736655,
		0.966820, 0.047549, 0.250994,
		-0.200014, 0.752099, 0.627966,
		41.444557, 32.893391, 38.197117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.887814, 32.224567, 38.517311>,  <41.584568, 32.366924, 37.757542>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.887814, 32.224567, 38.517311> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.622990, 32.521984, 38.554882>,  <41.464096, 32.700436, 38.577423>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.622990, 32.521984, 38.554882>,  <41.887814, 32.224567, 38.517311>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.622990, 32.521984, 38.554882> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283760, -0.364687, 0.886839,
		0.693656, 0.560488, 0.452432,
		-0.662059, 0.743543, 0.093923,
		41.424374, 32.745049, 38.583057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.840950, 32.472050, 39.149109>,  <41.887814, 32.224567, 38.517311>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.840950, 32.472050, 39.149109> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.483898, 32.640450, 39.084641>,  <41.269669, 32.741489, 39.045959>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.483898, 32.640450, 39.084641>,  <41.840950, 32.472050, 39.149109>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.483898, 32.640450, 39.084641> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229928, -0.117663, 0.966069,
		0.387752, 0.899396, 0.201829,
		-0.892626, 0.421001, -0.161172,
		41.216110, 32.766750, 39.036289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.714272, 32.752098, 39.846523>,  <41.840950, 32.472050, 39.149109>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.714272, 32.752098, 39.846523> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.369095, 32.719265, 39.647083>,  <41.161991, 32.699566, 39.527420>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.369095, 32.719265, 39.647083>,  <41.714272, 32.752098, 39.846523>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.369095, 32.719265, 39.647083> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468559, -0.239432, 0.850368,
		-0.189183, 0.967437, 0.168154,
		-0.862939, -0.082085, -0.498597,
		41.110214, 32.694641, 39.497505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.327492, 32.997303, 40.281132>,  <41.714272, 32.752098, 39.846523>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.327492, 32.997303, 40.281132> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.067974, 32.827183, 40.028725>,  <40.912262, 32.725109, 39.877281>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.067974, 32.827183, 40.028725>,  <41.327492, 32.997303, 40.281132>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.067974, 32.827183, 40.028725> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.647370, -0.127370, 0.751458,
		-0.399968, 0.896045, -0.192689,
		-0.648797, -0.425300, -0.631017,
		40.873337, 32.699593, 39.839420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.676964, 33.447666, 40.218658>,  <41.327492, 32.997303, 40.281132>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.676964, 33.447666, 40.218658> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.604885, 33.062641, 40.137653>,  <40.561638, 32.831627, 40.089050>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.604885, 33.062641, 40.137653>,  <40.676964, 33.447666, 40.218658>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.604885, 33.062641, 40.137653> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.529458, -0.078600, 0.844687,
		-0.828978, 0.259429, -0.495471,
		-0.180192, -0.962559, -0.202514,
		40.550827, 32.773872, 40.076900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.001015, 33.329586, 40.375210>,  <40.676964, 33.447666, 40.218658>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.001015, 33.329586, 40.375210> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.182266, 32.973846, 40.399647>,  <40.291016, 32.760403, 40.414307>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.182266, 32.973846, 40.399647>,  <40.001015, 33.329586, 40.375210>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.182266, 32.973846, 40.399647> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495179, -0.194128, 0.846825,
		-0.741265, -0.413968, -0.528352,
		0.453126, -0.889350, 0.061088,
		40.318203, 32.707043, 40.417973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.487782, 32.947437, 40.706867>,  <40.001015, 33.329586, 40.375210>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.487782, 32.947437, 40.706867> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.796108, 32.697063, 40.754288>,  <39.981102, 32.546841, 40.782738>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.796108, 32.697063, 40.754288>,  <39.487782, 32.947437, 40.706867>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.796108, 32.697063, 40.754288> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307412, -0.202469, 0.929787,
		-0.557985, -0.753134, -0.348485,
		0.770812, -0.625935, 0.118548,
		40.027351, 32.509281, 40.789852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.191883, 32.398670, 40.951679>,  <39.487782, 32.947437, 40.706867>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.191883, 32.398670, 40.951679> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.577042, 32.376617, 41.057358>,  <39.808136, 32.363388, 41.120766>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.577042, 32.376617, 41.057358>,  <39.191883, 32.398670, 40.951679>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.577042, 32.376617, 41.057358> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266914, -0.049613, 0.962443,
		-0.039930, -0.997247, -0.062481,
		0.962893, -0.055107, 0.264198,
		39.865910, 32.360077, 41.136616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.383675, 31.761160, 41.441978>,  <39.191883, 32.398670, 40.951679>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.383675, 31.761160, 41.441978> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.653660, 32.049404, 41.505398>,  <39.815651, 32.222351, 41.543449>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.653660, 32.049404, 41.505398>,  <39.383675, 31.761160, 41.441978>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.653660, 32.049404, 41.505398> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109643, -0.114537, 0.987350,
		0.729656, -0.683813, 0.001701,
		0.674967, 0.720612, 0.158548,
		39.856152, 32.265587, 41.552963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.585217, 31.035660, 41.441643>,  <39.383675, 31.761160, 41.441978>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.585217, 31.035660, 41.441643> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.294449, 30.796656, 41.306248>,  <39.119987, 30.653254, 41.225010>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.294449, 30.796656, 41.306248>,  <39.585217, 31.035660, 41.441643>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.294449, 30.796656, 41.306248> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097616, 0.397984, -0.912184,
		0.679751, -0.696124, -0.230975,
		-0.726918, -0.597512, -0.338483,
		39.076374, 30.617403, 41.204704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.736542, 30.932337, 40.658100>,  <39.585217, 31.035660, 41.441643>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.736542, 30.932337, 40.658100> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.366783, 30.781698, 40.682308>,  <39.144928, 30.691315, 40.696835>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.366783, 30.781698, 40.682308>,  <39.736542, 30.932337, 40.658100>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.366783, 30.781698, 40.682308> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143885, 0.197343, -0.969718,
		0.353248, -0.905114, -0.236611,
		-0.924399, -0.376596, 0.060521,
		39.089462, 30.668720, 40.700466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.591869, 30.843866, 39.923290>,  <39.736542, 30.932337, 40.658100>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.591869, 30.843866, 39.923290> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.232265, 30.789024, 40.089657>,  <39.016502, 30.756119, 40.189476>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.232265, 30.789024, 40.089657>,  <39.591869, 30.843866, 39.923290>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.232265, 30.789024, 40.089657> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413118, 0.580646, -0.701558,
		-0.145314, -0.802529, -0.578646,
		-0.899009, -0.137103, 0.415915,
		38.962563, 30.747894, 40.214432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.140682, 30.477119, 39.460365>,  <39.591869, 30.843866, 39.923290>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.140682, 30.477119, 39.460365> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.930302, 30.697405, 39.719624>,  <38.804073, 30.829576, 39.875179>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.930302, 30.697405, 39.719624>,  <39.140682, 30.477119, 39.460365>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.930302, 30.697405, 39.719624> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459040, 0.457731, -0.761423,
		-0.716002, -0.697994, 0.012057,
		-0.525950, 0.550715, 0.648144,
		38.772518, 30.862619, 39.914066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.448067, 30.377766, 39.336430>,  <39.140682, 30.477119, 39.460365>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.448067, 30.377766, 39.336430> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.433056, 30.726433, 39.531891>,  <38.424049, 30.935633, 39.649166>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.433056, 30.726433, 39.531891>,  <38.448067, 30.377766, 39.336430>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.433056, 30.726433, 39.531891> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518362, 0.401084, -0.755270,
		-0.854338, -0.281644, 0.436788,
		-0.037529, 0.871670, 0.488654,
		38.421799, 30.987934, 39.678486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.731720, 30.627560, 39.321404>,  <38.448067, 30.377766, 39.336430>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.731720, 30.627560, 39.321404> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.967991, 30.941540, 39.396179>,  <38.109753, 31.129929, 39.441044>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.967991, 30.941540, 39.396179>,  <37.731720, 30.627560, 39.321404>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.967991, 30.941540, 39.396179> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499038, 0.537429, -0.679802,
		-0.634080, 0.308255, 0.709170,
		0.590681, 0.784951, 0.186942,
		38.145195, 31.177025, 39.452263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.264462, 31.145134, 39.393700>,  <37.731720, 30.627560, 39.321404>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.264462, 31.145134, 39.393700> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.610836, 31.325878, 39.307934>,  <37.818661, 31.434324, 39.256474>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.610836, 31.325878, 39.307934>,  <37.264462, 31.145134, 39.393700>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.610836, 31.325878, 39.307934> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435493, 0.470359, -0.767534,
		-0.245963, 0.758015, 0.604083,
		0.865938, 0.451858, -0.214419,
		37.870617, 31.461435, 39.243607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.049305, 31.885088, 39.085930>,  <37.264462, 31.145134, 39.393700>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.049305, 31.885088, 39.085930> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.420185, 31.810101, 38.956223>,  <37.642715, 31.765108, 38.878399>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.420185, 31.810101, 38.956223>,  <37.049305, 31.885088, 39.085930>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.420185, 31.810101, 38.956223> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225592, 0.411597, -0.883004,
		0.299006, 0.891876, 0.339342,
		0.927202, -0.187470, -0.324270,
		37.698345, 31.753859, 38.858940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.090580, 32.387875, 38.690758>,  <37.049305, 31.885088, 39.085930>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.090580, 32.387875, 38.690758> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.428165, 32.192314, 38.602489>,  <37.630718, 32.074978, 38.549530>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.428165, 32.192314, 38.602489>,  <37.090580, 32.387875, 38.690758>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.428165, 32.192314, 38.602489> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062531, 0.318918, -0.945717,
		0.532739, 0.811952, 0.238585,
		0.843966, -0.488901, -0.220672,
		37.681355, 32.045643, 38.536289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.495380, 32.894348, 38.477875>,  <37.090580, 32.387875, 38.690758>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.495380, 32.894348, 38.477875> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.611870, 32.537399, 38.339973>,  <37.681763, 32.323231, 38.257233>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.611870, 32.537399, 38.339973>,  <37.495380, 32.894348, 38.477875>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.611870, 32.537399, 38.339973> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032718, 0.350874, -0.935851,
		0.956096, 0.283819, 0.072985,
		0.291221, -0.892376, -0.344756,
		37.699238, 32.269688, 38.236546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.036228, 32.983307, 37.998440>,  <37.495380, 32.894348, 38.477875>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.036228, 32.983307, 37.998440> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.865379, 32.632572, 37.910149>,  <37.762871, 32.422131, 37.857174>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.865379, 32.632572, 37.910149>,  <38.036228, 32.983307, 37.998440>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.865379, 32.632572, 37.910149> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037752, 0.261197, -0.964547,
		0.903406, -0.403646, -0.144665,
		-0.427122, -0.876838, -0.220729,
		37.737244, 32.369522, 37.843929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.347580, 32.805008, 37.360485>,  <38.036228, 32.983307, 37.998440>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.347580, 32.805008, 37.360485> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.988136, 32.633556, 37.397980>,  <37.772472, 32.530685, 37.420475>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.988136, 32.633556, 37.397980>,  <38.347580, 32.805008, 37.360485>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.988136, 32.633556, 37.397980> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253572, 0.332993, -0.908194,
		0.358076, -0.839871, -0.407918,
		-0.898600, -0.428639, 0.093731,
		37.718555, 32.504967, 37.426102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<39.933693, 29.258505, 44.885555> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.550968, 29.274294, 44.770351>,  <39.321331, 29.283768, 44.701229>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.550968, 29.274294, 44.770351>,  <39.933693, 29.258505, 44.885555>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.550968, 29.274294, 44.770351> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289609, 0.043669, -0.956148,
		-0.025168, -0.998266, -0.053216,
		-0.956814, 0.039476, -0.288008,
		39.263924, 29.286137, 44.683949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.887619, 28.839802, 44.311737>,  <39.933693, 29.258505, 44.885555>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.887619, 28.839802, 44.311737> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.574287, 29.088118, 44.298946>,  <39.386288, 29.237106, 44.291271>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.574287, 29.088118, 44.298946>,  <39.887619, 28.839802, 44.311737>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.574287, 29.088118, 44.298946> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232463, 0.244846, -0.941281,
		-0.576507, -0.744763, -0.336105,
		-0.783326, 0.620788, -0.031974,
		39.339291, 29.274353, 44.289352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.624405, 28.826868, 43.528904>,  <39.887619, 28.839802, 44.311737>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.624405, 28.826868, 43.528904> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.374733, 29.113586, 43.653229>,  <39.224930, 29.285618, 43.727825>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.374733, 29.113586, 43.653229>,  <39.624405, 28.826868, 43.528904>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.374733, 29.113586, 43.653229> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000423, 0.397513, -0.917597,
		-0.781282, -0.572875, -0.247815,
		-0.624178, 0.716797, 0.310812,
		39.187481, 29.328625, 43.746471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.875008, 28.744421, 43.311020>,  <39.624405, 28.826868, 43.528904>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.875008, 28.744421, 43.311020> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.965618, 29.131865, 43.351982>,  <39.019985, 29.364330, 43.376560>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.965618, 29.131865, 43.351982>,  <38.875008, 28.744421, 43.311020>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.965618, 29.131865, 43.351982> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423995, 0.192715, -0.884923,
		-0.876878, 0.157036, 0.454339,
		0.226523, 0.968607, 0.102405,
		39.033573, 29.422447, 43.382702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.486542, 29.019806, 42.843449>,  <38.875008, 28.744421, 43.311020>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.486542, 29.019806, 42.843449> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.718445, 29.338991, 42.909336>,  <38.857586, 29.530502, 42.948868>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.718445, 29.338991, 42.909336>,  <38.486542, 29.019806, 42.843449>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.718445, 29.338991, 42.909336> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303523, 0.399123, -0.865202,
		-0.756144, 0.451612, 0.473595,
		0.579758, 0.797965, 0.164720,
		38.892372, 29.578381, 42.958752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.063828, 29.742725, 42.747688>,  <38.486542, 29.019806, 42.843449>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.063828, 29.742725, 42.747688> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.456680, 29.803427, 42.703175>,  <38.692394, 29.839848, 42.676464>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.456680, 29.803427, 42.703175>,  <38.063828, 29.742725, 42.747688>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.456680, 29.803427, 42.703175> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165700, 0.417034, -0.893659,
		-0.089203, 0.896133, 0.434728,
		0.982134, 0.151752, -0.111288,
		38.751320, 29.848951, 42.669788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.174820, 30.477486, 42.638416>,  <38.063828, 29.742725, 42.747688>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.174820, 30.477486, 42.638416> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.465717, 30.272676, 42.455574>,  <38.640255, 30.149792, 42.345867>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.465717, 30.272676, 42.455574>,  <38.174820, 30.477486, 42.638416>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.465717, 30.272676, 42.455574> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165452, 0.515560, -0.840728,
		0.666135, 0.687047, 0.290225,
		0.727248, -0.512021, -0.457106,
		38.683891, 30.119070, 42.318443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.527592, 31.001219, 42.262611>,  <38.174820, 30.477486, 42.638416>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.527592, 31.001219, 42.262611> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.696564, 30.682526, 42.089741>,  <38.797947, 30.491310, 41.986019>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.696564, 30.682526, 42.089741>,  <38.527592, 31.001219, 42.262611>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.696564, 30.682526, 42.089741> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030627, 0.463987, -0.885313,
		0.905880, 0.387215, 0.171598,
		0.422426, -0.796731, -0.432176,
		38.823292, 30.443506, 41.960087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.122650, 31.292917, 41.929459>,  <38.527592, 31.001219, 42.262611>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.122650, 31.292917, 41.929459> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.008690, 30.947044, 41.763973>,  <38.940315, 30.739521, 41.664680>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.008690, 30.947044, 41.763973>,  <39.122650, 31.292917, 41.929459>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.008690, 30.947044, 41.763973> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062570, 0.413902, -0.908168,
		0.956513, -0.284622, -0.063817,
		-0.284898, -0.864682, -0.413712,
		38.923222, 30.687639, 41.639858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.824417, 31.508795, 42.204521>,  <39.122650, 31.292917, 41.929459>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.824417, 31.508795, 42.204521> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.908237, 31.893387, 42.133362>,  <39.958530, 32.124142, 42.090668>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.908237, 31.893387, 42.133362>,  <39.824417, 31.508795, 42.204521>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.908237, 31.893387, 42.133362> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049968, 0.192227, 0.980077,
		0.976519, -0.196491, 0.088325,
		0.209555, 0.961478, -0.177895,
		39.971104, 32.181831, 42.079994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.205650, 31.705063, 42.868931>,  <39.824417, 31.508795, 42.204521>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.205650, 31.705063, 42.868931> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.083809, 32.041298, 42.689762>,  <40.010704, 32.243038, 42.582260>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.083809, 32.041298, 42.689762>,  <40.205650, 31.705063, 42.868931>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.083809, 32.041298, 42.689762> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121838, 0.432016, 0.893598,
		0.944655, 0.326766, -0.029178,
		-0.304603, 0.840587, -0.447919,
		39.992428, 32.293472, 42.555386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.669575, 32.269196, 43.137581>,  <40.205650, 31.705063, 42.868931>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.669575, 32.269196, 43.137581> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.322945, 32.427422, 43.015873>,  <40.114967, 32.522358, 42.942848>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.322945, 32.427422, 43.015873>,  <40.669575, 32.269196, 43.137581>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.322945, 32.427422, 43.015873> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079366, 0.492697, 0.866574,
		0.492697, 0.775099, -0.395564,
		-0.866574, 0.395564, -0.304267,
		40.062973, 32.546089, 42.924591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.680527, 32.915806, 43.405151>,  <40.669575, 32.269196, 43.137581>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.680527, 32.915806, 43.405151> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.288864, 32.907173, 43.324360>,  <40.053867, 32.901993, 43.275887>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.288864, 32.907173, 43.324360>,  <40.680527, 32.915806, 43.405151>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.288864, 32.907173, 43.324360> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171754, 0.618845, 0.766506,
		0.108451, 0.785217, -0.609650,
		-0.979152, -0.021581, -0.201979,
		39.995117, 32.900700, 43.263767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.446934, 33.462646, 43.751007>,  <40.680527, 32.915806, 43.405151>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.446934, 33.462646, 43.751007> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.102909, 33.269684, 43.684586>,  <39.896492, 33.153904, 43.644733>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.102909, 33.269684, 43.684586>,  <40.446934, 33.462646, 43.751007>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.102909, 33.269684, 43.684586> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317204, 0.250708, 0.914619,
		-0.399591, 0.839301, -0.368647,
		-0.860063, -0.482409, -0.166049,
		39.844891, 33.124962, 43.634769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.956474, 33.966961, 43.910118>,  <40.446934, 33.462646, 43.751007>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.956474, 33.966961, 43.910118> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.771702, 33.612976, 43.933678>,  <39.660839, 33.400585, 43.947815>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.771702, 33.612976, 43.933678>,  <39.956474, 33.966961, 43.910118>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.771702, 33.612976, 43.933678> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213398, 0.175357, 0.961099,
		-0.860862, 0.431389, -0.269851,
		-0.461928, -0.884960, 0.058901,
		39.633125, 33.347488, 43.951347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.237228, 34.064640, 44.110622>,  <39.956474, 33.966961, 43.910118>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.237228, 34.064640, 44.110622> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.342796, 33.690029, 44.202938>,  <39.406136, 33.465263, 44.258327>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.342796, 33.690029, 44.202938>,  <39.237228, 34.064640, 44.110622>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.342796, 33.690029, 44.202938> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361004, 0.125977, 0.924016,
		-0.894440, -0.327184, -0.304841,
		0.263921, -0.936526, 0.230793,
		39.421974, 33.409073, 44.272175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.707817, 33.839298, 44.621571>,  <39.237228, 34.064640, 44.110622>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.707817, 33.839298, 44.621571> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.948605, 33.521397, 44.652557>,  <39.093075, 33.330654, 44.671150>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.948605, 33.521397, 44.652557>,  <38.707817, 33.839298, 44.621571>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.948605, 33.521397, 44.652557> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220575, -0.072256, 0.972690,
		-0.767452, -0.602614, -0.218799,
		0.601966, -0.794755, 0.077468,
		39.129196, 33.282970, 44.675797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.350437, 33.399467, 45.201454>,  <38.707817, 33.839298, 44.621571>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.350437, 33.399467, 45.201454> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.739178, 33.312057, 45.166233>,  <38.972424, 33.259613, 45.145100>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.739178, 33.312057, 45.166233>,  <38.350437, 33.399467, 45.201454>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.739178, 33.312057, 45.166233> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119680, 0.135982, 0.983456,
		-0.202937, -0.966310, 0.158308,
		0.971850, -0.218526, -0.088053,
		39.030731, 33.246498, 45.139816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.446465, 32.915295, 45.702274>,  <38.350437, 33.399467, 45.201454>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.446465, 32.915295, 45.702274> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.803093, 33.078236, 45.623116>,  <39.017071, 33.176003, 45.575623>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.803093, 33.078236, 45.623116>,  <38.446465, 32.915295, 45.702274>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.803093, 33.078236, 45.623116> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183163, 0.075297, 0.980195,
		0.414189, -0.910160, -0.007480,
		0.891571, 0.407356, -0.197895,
		39.070564, 33.200443, 45.563747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.858208, 32.578049, 46.149044>,  <38.446465, 32.915295, 45.702274>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.858208, 32.578049, 46.149044> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.023968, 32.933624, 46.071014>,  <39.123425, 33.146969, 46.024197>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.023968, 32.933624, 46.071014>,  <38.858208, 32.578049, 46.149044>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.023968, 32.933624, 46.071014> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231900, 0.104130, 0.967150,
		0.880054, -0.446025, -0.162994,
		0.414401, 0.888942, -0.195073,
		39.148289, 33.200306, 46.012493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.510303, 32.519100, 46.443256>,  <38.858208, 32.578049, 46.149044>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.510303, 32.519100, 46.443256> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.437366, 32.909554, 46.396061>,  <39.393604, 33.143826, 46.367744>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.437366, 32.909554, 46.396061>,  <39.510303, 32.519100, 46.443256>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.437366, 32.909554, 46.396061> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023051, 0.124211, 0.991988,
		0.982965, 0.178160, -0.045149,
		-0.182341, 0.976130, -0.117988,
		39.382664, 33.202393, 46.360664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.038952, 32.908794, 46.649261>,  <39.510303, 32.519100, 46.443256>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.038952, 32.908794, 46.649261> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.720257, 33.148491, 46.680550>,  <39.529037, 33.292309, 46.699322>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.720257, 33.148491, 46.680550>,  <40.038952, 32.908794, 46.649261>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.720257, 33.148491, 46.680550> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172577, 0.101575, 0.979744,
		0.579154, 0.794102, -0.184344,
		-0.796742, 0.599237, 0.078216,
		39.481236, 33.328262, 46.704014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.256775, 33.280678, 47.213203>,  <40.038952, 32.908794, 46.649261>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.256775, 33.280678, 47.213203> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.893936, 33.428856, 47.133251>,  <39.676235, 33.517765, 47.085281>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.893936, 33.428856, 47.133251>,  <40.256775, 33.280678, 47.213203>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.893936, 33.428856, 47.133251> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028363, 0.419974, 0.907093,
		0.419974, 0.828487, -0.370448,
		-0.907093, 0.370448, -0.199877,
		39.621807, 33.539989, 47.073288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<34.118004, 30.648277, 45.756840> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.443783, 30.861385, 45.848782>,  <34.639252, 30.989250, 45.903946>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.443783, 30.861385, 45.848782>,  <34.118004, 30.648277, 45.756840>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.443783, 30.861385, 45.848782> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023964, 0.426686, -0.904082,
		-0.579744, 0.730818, 0.360280,
		0.814446, 0.532770, 0.229856,
		34.688118, 31.021217, 45.917740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.006039, 31.410709, 45.606419>,  <34.118004, 30.648277, 45.756840>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.006039, 31.410709, 45.606419> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.399921, 31.345076, 45.582966>,  <34.636250, 31.305695, 45.568893>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.399921, 31.345076, 45.582966>,  <34.006039, 31.410709, 45.606419>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.399921, 31.345076, 45.582966> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032223, 0.502171, -0.864168,
		0.171240, 0.849059, 0.499776,
		0.984702, -0.164084, -0.058632,
		34.695332, 31.295851, 45.565376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.286404, 32.031059, 45.372711>,  <34.006039, 31.410709, 45.606419>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.286404, 32.031059, 45.372711> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.565788, 31.762602, 45.273338>,  <34.733418, 31.601526, 45.213715>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.565788, 31.762602, 45.273338>,  <34.286404, 32.031059, 45.372711>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.565788, 31.762602, 45.273338> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003559, 0.350397, -0.936595,
		0.715642, 0.653288, 0.247126,
		0.698458, -0.671146, -0.248434,
		34.775326, 31.561258, 45.198807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.801033, 32.335491, 44.912338>,  <34.286404, 32.031059, 45.372711>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.801033, 32.335491, 44.912338> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.799568, 31.939756, 44.854095>,  <34.798691, 31.702316, 44.819149>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.799568, 31.939756, 44.854095>,  <34.801033, 32.335491, 44.912338>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.799568, 31.939756, 44.854095> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100875, 0.145227, -0.984242,
		0.994892, 0.011087, -0.100331,
		-0.003658, -0.989336, -0.145604,
		34.798470, 31.642956, 44.810413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.086975, 32.383751, 44.260574>,  <34.801033, 32.335491, 44.912338>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.086975, 32.383751, 44.260574> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.949856, 32.010109, 44.300457>,  <34.867584, 31.785925, 44.324387>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.949856, 32.010109, 44.300457>,  <35.086975, 32.383751, 44.260574>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.949856, 32.010109, 44.300457> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336301, 0.022922, -0.941476,
		0.877148, -0.356271, -0.321997,
		-0.342801, -0.934102, 0.099709,
		34.847015, 31.729879, 44.330368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.449226, 31.915342, 43.786633>,  <35.086975, 32.383751, 44.260574>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.449226, 31.915342, 43.786633> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.119598, 31.706902, 43.875507>,  <34.921822, 31.581837, 43.928833>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.119598, 31.706902, 43.875507>,  <35.449226, 31.915342, 43.786633>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.119598, 31.706902, 43.875507> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345685, 0.151847, -0.925983,
		0.448795, -0.839877, -0.305270,
		-0.824066, -0.521104, 0.222185,
		34.872379, 31.550570, 43.942162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.389736, 31.389618, 43.253010>,  <35.449226, 31.915342, 43.786633>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.389736, 31.389618, 43.253010> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.022385, 31.426798, 43.406860>,  <34.801971, 31.449106, 43.499172>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.022385, 31.426798, 43.406860>,  <35.389736, 31.389618, 43.253010>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.022385, 31.426798, 43.406860> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331722, 0.349076, -0.876417,
		-0.215724, -0.932474, -0.289752,
		-0.918381, 0.092947, 0.384627,
		34.746872, 31.454681, 43.522247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.943295, 31.108477, 42.749531>,  <35.389736, 31.389618, 43.253010>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.943295, 31.108477, 42.749531> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.717068, 31.349655, 42.974598>,  <34.581333, 31.494362, 43.109638>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.717068, 31.349655, 42.974598>,  <34.943295, 31.108477, 42.749531>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.717068, 31.349655, 42.974598> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349147, 0.443050, -0.825714,
		-0.747150, -0.663447, -0.040057,
		-0.565565, 0.602946, 0.562666,
		34.547398, 31.530539, 43.143398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.407085, 31.144787, 42.383766>,  <34.943295, 31.108477, 42.749531>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.407085, 31.144787, 42.383766> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.353260, 31.460814, 42.622993>,  <34.320965, 31.650429, 42.766529>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.353260, 31.460814, 42.622993>,  <34.407085, 31.144787, 42.383766>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.353260, 31.460814, 42.622993> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374456, 0.518262, -0.768887,
		-0.917429, -0.327413, 0.226108,
		-0.134561, 0.790067, 0.598070,
		34.312893, 31.697834, 42.802414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.621449, 31.493475, 42.439926>,  <34.407085, 31.144787, 42.383766>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.621449, 31.493475, 42.439926> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.880199, 31.784588, 42.531040>,  <34.035450, 31.959255, 42.585709>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.880199, 31.784588, 42.531040>,  <33.621449, 31.493475, 42.439926>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.880199, 31.784588, 42.531040> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351734, 0.549762, -0.757658,
		-0.676638, 0.409990, 0.611613,
		0.646873, 0.727784, 0.227782,
		34.074261, 32.002922, 42.599377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.256397, 32.118637, 42.345490>,  <33.621449, 31.493475, 42.439926>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.256397, 32.118637, 42.345490> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.638783, 32.235355, 42.358074>,  <33.868214, 32.305386, 42.365627>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.638783, 32.235355, 42.358074>,  <33.256397, 32.118637, 42.345490>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.638783, 32.235355, 42.358074> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158866, 0.604621, -0.780509,
		-0.246776, 0.741139, 0.624352,
		0.955962, 0.291799, 0.031464,
		33.925571, 32.322895, 42.367512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.195526, 32.814098, 42.455482>,  <33.256397, 32.118637, 42.345490>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.195526, 32.814098, 42.455482> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.560955, 32.765472, 42.300251>,  <33.780212, 32.736298, 42.207111>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.560955, 32.765472, 42.300251>,  <33.195526, 32.814098, 42.455482>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.560955, 32.765472, 42.300251> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255430, 0.571021, -0.780186,
		0.316446, 0.811885, 0.490618,
		0.913574, -0.121569, -0.388077,
		33.835026, 32.729000, 42.183826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.416542, 33.575558, 42.267086>,  <33.195526, 32.814098, 42.455482>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.416542, 33.575558, 42.267086> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.654484, 33.317806, 42.074867>,  <33.797249, 33.163155, 41.959534>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.654484, 33.317806, 42.074867>,  <33.416542, 33.575558, 42.267086>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.654484, 33.317806, 42.074867> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081165, 0.546617, -0.833440,
		0.799726, 0.534778, 0.272856,
		0.594853, -0.644378, -0.480549,
		33.832939, 33.124493, 41.930702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.885960, 34.006618, 41.801056>,  <33.416542, 33.575558, 42.267086>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.885960, 34.006618, 41.801056> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.877457, 33.638557, 41.644665>,  <33.872356, 33.417721, 41.550831>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.877457, 33.638557, 41.644665>,  <33.885960, 34.006618, 41.801056>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.877457, 33.638557, 41.644665> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111147, 0.390819, -0.913733,
		0.993577, 0.024032, -0.110580,
		-0.021258, -0.920154, -0.390979,
		33.871078, 33.362511, 41.527370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.589176, 34.223835, 41.810589>,  <33.885960, 34.006618, 41.801056>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.589176, 34.223835, 41.810589> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.789604, 34.568977, 41.837173>,  <34.909859, 34.776062, 41.853123>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.789604, 34.568977, 41.837173>,  <34.589176, 34.223835, 41.810589>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.789604, 34.568977, 41.837173> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055896, -0.044365, 0.997450,
		0.863601, -0.503505, 0.026000,
		0.501068, 0.862852, 0.066457,
		34.939926, 34.827831, 41.857109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.163387, 34.071838, 42.297386>,  <34.589176, 34.223835, 41.810589>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.163387, 34.071838, 42.297386> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.071625, 34.460625, 42.276779>,  <35.016567, 34.693897, 42.264416>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.071625, 34.460625, 42.276779>,  <35.163387, 34.071838, 42.297386>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.071625, 34.460625, 42.276779> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153225, 0.016202, 0.988059,
		0.961196, 0.234556, 0.145213,
		-0.229402, 0.971968, -0.051513,
		35.002804, 34.752216, 42.261326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.598557, 34.392918, 42.684010>,  <35.163387, 34.071838, 42.297386>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.598557, 34.392918, 42.684010> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.292961, 34.651001, 42.681820>,  <35.109604, 34.805851, 42.680508>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.292961, 34.651001, 42.681820>,  <35.598557, 34.392918, 42.684010>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.292961, 34.651001, 42.681820> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051528, 0.069463, 0.996253,
		0.643169, 0.760844, -0.086315,
		-0.763989, 0.645207, -0.005472,
		35.063763, 34.844563, 42.680180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.767956, 34.891247, 43.145763>,  <35.598557, 34.392918, 42.684010>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.767956, 34.891247, 43.145763> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.371410, 34.929749, 43.110142>,  <35.133484, 34.952850, 43.088768>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.371410, 34.929749, 43.110142>,  <35.767956, 34.891247, 43.145763>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.371410, 34.929749, 43.110142> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058697, 0.281554, 0.957748,
		0.117262, 0.954705, -0.273473,
		-0.991365, 0.096255, -0.089054,
		35.074001, 34.958626, 43.083427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.585655, 35.488117, 43.536762>,  <35.767956, 34.891247, 43.145763>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.585655, 35.488117, 43.536762> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.240891, 35.286575, 43.514008>,  <35.034031, 35.165649, 43.500355>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.240891, 35.286575, 43.514008>,  <35.585655, 35.488117, 43.536762>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.240891, 35.286575, 43.514008> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138819, 0.126569, 0.982196,
		-0.487688, 0.854463, -0.179037,
		-0.861911, -0.503859, -0.056889,
		34.982319, 35.135418, 43.496941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.986572, 35.884590, 43.916580>,  <35.585655, 35.488117, 43.536762>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.986572, 35.884590, 43.916580> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.886723, 35.498158, 43.890129>,  <34.826813, 35.266296, 43.874260>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.886723, 35.498158, 43.890129>,  <34.986572, 35.884590, 43.916580>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.886723, 35.498158, 43.890129> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243321, -0.003515, 0.969939,
		-0.937273, 0.258212, -0.234190,
		-0.249627, -0.966082, -0.066123,
		34.811836, 35.208332, 43.870293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.536995, 35.913918, 44.478569>,  <34.986572, 35.884590, 43.916580>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.536995, 35.913918, 44.478569> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.574310, 35.527702, 44.381390>,  <34.596699, 35.295971, 44.323082>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.574310, 35.527702, 44.381390>,  <34.536995, 35.913918, 44.478569>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.574310, 35.527702, 44.381390> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111633, -0.252622, 0.961104,
		-0.989361, -0.062540, -0.131353,
		0.093290, -0.965542, -0.242952,
		34.602299, 35.238041, 44.308502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.921894, 35.471222, 44.813030>,  <34.536995, 35.913918, 44.478569>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.921894, 35.471222, 44.813030> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.228497, 35.221542, 44.752583>,  <34.412457, 35.071735, 44.716312>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.228497, 35.221542, 44.752583>,  <33.921894, 35.471222, 44.813030>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.228497, 35.221542, 44.752583> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079108, -0.325280, 0.942303,
		-0.637345, -0.710327, -0.298709,
		0.766507, -0.624203, -0.151123,
		34.458450, 35.034283, 44.707245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.740215, 34.968018, 45.198509>,  <33.921894, 35.471222, 44.813030>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.740215, 34.968018, 45.198509> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.123749, 34.866638, 45.147270>,  <34.353867, 34.805813, 45.116528>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.123749, 34.866638, 45.147270>,  <33.740215, 34.968018, 45.198509>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.123749, 34.866638, 45.147270> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035668, -0.340015, 0.939743,
		-0.281723, -0.905625, -0.316978,
		0.958833, -0.253442, -0.128092,
		34.411400, 34.790604, 45.108841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.819149, 34.257267, 45.434441>,  <33.740215, 34.968018, 45.198509>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.819149, 34.257267, 45.434441> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.190903, 34.404907, 45.433178>,  <34.413956, 34.493492, 45.432423>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.190903, 34.404907, 45.433178>,  <33.819149, 34.257267, 45.434441>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.190903, 34.404907, 45.433178> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158908, -0.392388, 0.905969,
		0.333152, -0.842496, -0.423332,
		0.929386, 0.369097, -0.003155,
		34.469719, 34.515636, 45.432232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.355072, 33.696629, 45.596722>,  <33.819149, 34.257267, 45.434441>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.355072, 33.696629, 45.596722> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.510700, 34.048866, 45.704933>,  <34.604076, 34.260208, 45.769859>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.510700, 34.048866, 45.704933>,  <34.355072, 33.696629, 45.596722>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.510700, 34.048866, 45.704933> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282123, -0.393456, 0.874985,
		0.876944, -0.264110, -0.401517,
		0.389072, 0.880590, 0.270527,
		34.627422, 34.313042, 45.786091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.053314, 33.605377, 45.687630>,  <34.355072, 33.696629, 45.596722>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.053314, 33.605377, 45.687630> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.961601, 33.937359, 45.891041>,  <34.906574, 34.136547, 46.013088>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.961601, 33.937359, 45.891041>,  <35.053314, 33.605377, 45.687630>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.961601, 33.937359, 45.891041> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340833, -0.420910, 0.840636,
		0.911736, 0.366066, -0.186369,
		-0.229284, 0.829958, 0.508526,
		34.892815, 34.186348, 46.043598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.659271, 33.712185, 45.985542>,  <35.053314, 33.605377, 45.687630>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.659271, 33.712185, 45.985542> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.379498, 33.911255, 46.190723>,  <35.211636, 34.030697, 46.313831>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.379498, 33.911255, 46.190723>,  <35.659271, 33.712185, 45.985542>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.379498, 33.911255, 46.190723> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264150, -0.486883, 0.832568,
		0.664094, 0.717819, 0.209080,
		-0.699431, 0.497675, 0.512948,
		35.169670, 34.060558, 46.344608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.037529, 33.881298, 46.557537>,  <35.659271, 33.712185, 45.985542>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.037529, 33.881298, 46.557537> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.646217, 33.895821, 46.639172>,  <35.411430, 33.904533, 46.688152>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.646217, 33.895821, 46.639172>,  <36.037529, 33.881298, 46.557537>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.646217, 33.895821, 46.639172> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154829, -0.526690, 0.835838,
		0.137837, 0.849282, 0.509628,
		-0.978279, 0.036304, 0.204091,
		35.352734, 33.906712, 46.700397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.222279, 34.563942, 46.836891>,  <36.037529, 33.881298, 46.557537>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.222279, 34.563942, 46.836891> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.559464, 34.717094, 46.988052>,  <36.761776, 34.808987, 47.078747>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.559464, 34.717094, 46.988052>,  <36.222279, 34.563942, 46.836891>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.559464, 34.717094, 46.988052> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312482, 0.223315, -0.923301,
		-0.437908, 0.896398, 0.068602,
		0.842966, 0.382884, 0.377900,
		36.812355, 34.831959, 47.101421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.236378, 35.207813, 46.703747>,  <36.222279, 34.563942, 46.836891>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.236378, 35.207813, 46.703747> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.624943, 35.126709, 46.753151>,  <36.858082, 35.078049, 46.782795>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.624943, 35.126709, 46.753151>,  <36.236378, 35.207813, 46.703747>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.624943, 35.126709, 46.753151> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184972, 0.320233, -0.929105,
		0.148830, 0.925387, 0.348581,
		0.971409, -0.202756, 0.123511,
		36.916367, 35.065884, 46.790203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.546616, 35.845509, 46.523418>,  <36.236378, 35.207813, 46.703747>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.546616, 35.845509, 46.523418> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.825417, 35.562542, 46.476517>,  <36.992699, 35.392761, 46.448376>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.825417, 35.562542, 46.476517>,  <36.546616, 35.845509, 46.523418>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.825417, 35.562542, 46.476517> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262417, 0.403826, -0.876391,
		0.667322, 0.580080, 0.467107,
		0.697007, -0.707412, -0.117258,
		37.034519, 35.350319, 46.441338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.146263, 36.256023, 46.407745>,  <36.546616, 35.845509, 46.523418>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.146263, 36.256023, 46.407745> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.208046, 35.892094, 46.253674>,  <37.245117, 35.673737, 46.161228>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.208046, 35.892094, 46.253674>,  <37.146263, 36.256023, 46.407745>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.208046, 35.892094, 46.253674> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365084, 0.414829, -0.833445,
		0.918071, -0.011890, 0.396236,
		0.154460, -0.909822, -0.385184,
		37.254383, 35.619148, 46.138119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.803425, 36.389614, 46.097881>,  <37.146263, 36.256023, 46.407745>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.803425, 36.389614, 46.097881> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.684113, 36.042751, 45.938347>,  <37.612526, 35.834633, 45.842625>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.684113, 36.042751, 45.938347>,  <37.803425, 36.389614, 46.097881>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.684113, 36.042751, 45.938347> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445643, 0.242990, -0.861602,
		0.844056, -0.434737, 0.313963,
		-0.298280, -0.867156, -0.398835,
		37.594627, 35.782604, 45.818695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.359650, 36.090065, 45.752972>,  <37.803425, 36.389614, 46.097881>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.359650, 36.090065, 45.752972> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.034355, 35.948246, 45.568390>,  <37.839180, 35.863155, 45.457642>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.034355, 35.948246, 45.568390>,  <38.359650, 36.090065, 45.752972>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.034355, 35.948246, 45.568390> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453625, 0.110482, -0.884318,
		0.364519, -0.928486, 0.070986,
		-0.813234, -0.354552, -0.461457,
		37.790386, 35.841881, 45.429955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.601643, 35.638680, 45.193726>,  <38.359650, 36.090065, 45.752972>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.601643, 35.638680, 45.193726> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.222172, 35.721256, 45.097893>,  <37.994492, 35.770802, 45.040394>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.222172, 35.721256, 45.097893>,  <38.601643, 35.638680, 45.193726>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.222172, 35.721256, 45.097893> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293298, 0.290968, -0.910667,
		-0.118293, -0.934194, -0.336584,
		-0.948675, 0.206445, -0.239578,
		37.937569, 35.783188, 45.026020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.603745, 35.384174, 44.547028>,  <38.601643, 35.638680, 45.193726>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.603745, 35.384174, 44.547028> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.258656, 35.584671, 44.573742>,  <38.051601, 35.704967, 44.589771>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.258656, 35.584671, 44.573742>,  <38.603745, 35.384174, 44.547028>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.258656, 35.584671, 44.573742> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062939, 0.024614, -0.997714,
		-0.501738, -0.864958, 0.010312,
		-0.862727, 0.501240, 0.066789,
		37.999836, 35.735043, 44.593781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.045712, 34.918934, 44.289783>,  <38.603745, 35.384174, 44.547028>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.045712, 34.918934, 44.289783> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.958832, 35.308258, 44.260117>,  <37.906704, 35.541851, 44.242317>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.958832, 35.308258, 44.260117>,  <38.045712, 34.918934, 44.289783>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.958832, 35.308258, 44.260117> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124242, -0.047802, -0.991100,
		-0.968189, -0.224478, -0.110544,
		-0.217196, 0.973306, -0.074171,
		37.893673, 35.600250, 44.237865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.603012, 34.994381, 43.699615>,  <38.045712, 34.918934, 44.289783>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.603012, 34.994381, 43.699615> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.750431, 35.359695, 43.768993>,  <37.838882, 35.578884, 43.810619>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.750431, 35.359695, 43.768993>,  <37.603012, 34.994381, 43.699615>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.750431, 35.359695, 43.768993> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063191, 0.161538, -0.984841,
		-0.927459, 0.373919, 0.001823,
		0.368546, 0.913285, 0.173449,
		37.860996, 35.633682, 43.821030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.273750, 35.381115, 43.186508>,  <37.603012, 34.994381, 43.699615>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.273750, 35.381115, 43.186508> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.595814, 35.602600, 43.271481>,  <37.789051, 35.735489, 43.322464>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.595814, 35.602600, 43.271481>,  <37.273750, 35.381115, 43.186508>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.595814, 35.602600, 43.271481> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139165, 0.171800, -0.975253,
		-0.576503, 0.814795, 0.061269,
		0.805157, 0.553710, 0.212434,
		37.837360, 35.768711, 43.335209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.240685, 35.937813, 42.793861>,  <37.273750, 35.381115, 43.186508>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.240685, 35.937813, 42.793861> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.627838, 35.904114, 42.888611>,  <37.860130, 35.883892, 42.945461>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.627838, 35.904114, 42.888611>,  <37.240685, 35.937813, 42.793861>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.627838, 35.904114, 42.888611> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245838, 0.119953, -0.961860,
		0.052624, 0.989198, 0.136813,
		0.967881, -0.084250, 0.236871,
		37.918201, 35.878838, 42.959671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.549515, 36.465332, 42.322803>,  <37.240685, 35.937813, 42.793861>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.549515, 36.465332, 42.322803> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.826771, 36.221458, 42.476604>,  <37.993126, 36.075134, 42.568886>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.826771, 36.221458, 42.476604>,  <37.549515, 36.465332, 42.322803>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.826771, 36.221458, 42.476604> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515402, 0.046304, -0.855696,
		0.503900, 0.791291, 0.346328,
		0.693141, -0.609684, 0.384501,
		38.034714, 36.038555, 42.591953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.199314, 36.761089, 42.046280>,  <37.549515, 36.465332, 42.322803>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.199314, 36.761089, 42.046280> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.275627, 36.376919, 42.127453>,  <38.321415, 36.146416, 42.176155>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.275627, 36.376919, 42.127453>,  <38.199314, 36.761089, 42.046280>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.275627, 36.376919, 42.127453> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542386, -0.069169, -0.837277,
		0.818181, 0.269803, 0.507726,
		0.190781, -0.960428, 0.202930,
		38.332863, 36.088791, 42.188332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<28.651335, 27.478975, 38.299610> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.535305, 27.782150, 38.533325>,  <28.465687, 27.964056, 38.673553>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.535305, 27.782150, 38.533325>,  <28.651335, 27.478975, 38.299610>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.535305, 27.782150, 38.533325> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044182, 0.599276, -0.799322,
		-0.955983, -0.257679, -0.140348,
		-0.290076, 0.757938, 0.584283,
		28.448282, 28.009531, 38.708611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.969393, 27.771212, 38.037483>,  <28.651335, 27.478975, 38.299610>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.969393, 27.771212, 38.037483> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.107794, 28.065105, 38.270874>,  <28.190834, 28.241442, 38.410908>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.107794, 28.065105, 38.270874>,  <27.969393, 27.771212, 38.037483>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.107794, 28.065105, 38.270874> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166507, 0.660103, -0.732489,
		-0.923340, 0.156291, 0.350737,
		0.346004, 0.734736, 0.583475,
		28.211596, 28.285526, 38.445915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.491716, 28.172054, 38.118122>,  <27.969393, 27.771212, 38.037483>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.491716, 28.172054, 38.118122> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.810638, 28.403202, 38.187828>,  <28.001991, 28.541891, 38.229652>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.810638, 28.403202, 38.187828>,  <27.491716, 28.172054, 38.118122>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.810638, 28.403202, 38.187828> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256098, 0.585341, -0.769279,
		-0.546549, 0.568721, 0.614687,
		0.797306, 0.577869, 0.174269,
		28.049829, 28.576563, 38.240108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.277483, 28.851753, 38.387566>,  <27.491716, 28.172054, 38.118122>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.277483, 28.851753, 38.387566> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.638723, 28.911812, 38.226635>,  <27.855467, 28.947847, 38.130077>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.638723, 28.911812, 38.226635>,  <27.277483, 28.851753, 38.387566>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.638723, 28.911812, 38.226635> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387381, 0.689174, -0.612352,
		0.185332, 0.708869, 0.680556,
		0.903099, 0.150146, -0.402328,
		27.909653, 28.956856, 38.105938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.316874, 29.552813, 38.326954>,  <27.277483, 28.851753, 38.387566>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.316874, 29.552813, 38.326954> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.612106, 29.436001, 38.083656>,  <27.789246, 29.365913, 37.937679>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.612106, 29.436001, 38.083656>,  <27.316874, 29.552813, 38.326954>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.612106, 29.436001, 38.083656> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209042, 0.758148, -0.617667,
		0.641512, 0.583036, 0.498528,
		0.738081, -0.292027, -0.608241,
		27.833530, 29.348392, 37.901184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.687847, 30.168589, 38.230236>,  <27.316874, 29.552813, 38.326954>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.687847, 30.168589, 38.230236> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.777128, 29.906918, 37.941174>,  <27.830696, 29.749914, 37.767735>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.777128, 29.906918, 37.941174>,  <27.687847, 30.168589, 38.230236>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.777128, 29.906918, 37.941174> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198139, 0.695434, -0.690733,
		0.954422, 0.297360, 0.025604,
		0.223202, -0.654178, -0.722656,
		27.844090, 29.710665, 37.724377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.248411, 30.504314, 37.867104>,  <27.687847, 30.168589, 38.230236>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.248411, 30.504314, 37.867104> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.047932, 30.236254, 37.648125>,  <27.927645, 30.075417, 37.516739>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.047932, 30.236254, 37.648125>,  <28.248411, 30.504314, 37.867104>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.047932, 30.236254, 37.648125> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206747, 0.707057, -0.676260,
		0.840272, -0.225757, -0.492926,
		-0.501197, -0.670153, -0.547446,
		27.897572, 30.035208, 37.483891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.552822, 30.466660, 37.140987>,  <28.248411, 30.504314, 37.867104>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.552822, 30.466660, 37.140987> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.182455, 30.325253, 37.087772>,  <27.960236, 30.240408, 37.055843>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.182455, 30.325253, 37.087772>,  <28.552822, 30.466660, 37.140987>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.182455, 30.325253, 37.087772> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097106, 0.563162, -0.820621,
		0.365029, -0.746908, -0.555771,
		-0.925918, -0.353519, -0.133041,
		27.904680, 30.219196, 37.047859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.491459, 30.293936, 36.414726>,  <28.552822, 30.466660, 37.140987>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.491459, 30.293936, 36.414726> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.108995, 30.301613, 36.531616>,  <27.879517, 30.306219, 36.601749>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.108995, 30.301613, 36.531616>,  <28.491459, 30.293936, 36.414726>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.108995, 30.301613, 36.531616> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208738, 0.655215, -0.726032,
		-0.205402, -0.755199, -0.622483,
		-0.956158, 0.019193, 0.292221,
		27.822147, 30.307371, 36.619282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.078106, 30.195372, 35.853451>,  <28.491459, 30.293936, 36.414726>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.078106, 30.195372, 35.853451> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.803038, 30.356882, 36.094803>,  <27.637997, 30.453789, 36.239616>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.803038, 30.356882, 36.094803>,  <28.078106, 30.195372, 35.853451>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.803038, 30.356882, 36.094803> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235030, 0.662524, -0.711212,
		-0.686926, -0.630894, -0.360701,
		-0.687673, 0.403775, 0.603384,
		27.596735, 30.478014, 36.275818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.449726, 30.274508, 35.468620>,  <28.078106, 30.195372, 35.853451>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.449726, 30.274508, 35.468620> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.418121, 30.548443, 35.758381>,  <27.399158, 30.712803, 35.932236>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.418121, 30.548443, 35.758381>,  <27.449726, 30.274508, 35.468620>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.418121, 30.548443, 35.758381> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390168, 0.647456, -0.654652,
		-0.917347, -0.334363, 0.216045,
		-0.079011, 0.684837, 0.724400,
		27.394419, 30.753895, 35.975700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.888891, 30.645008, 35.324112>,  <27.449726, 30.274508, 35.468620>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.888891, 30.645008, 35.324112> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.067390, 30.874672, 35.598690>,  <27.174490, 31.012470, 35.763435>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.067390, 30.874672, 35.598690>,  <26.888891, 30.645008, 35.324112>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.067390, 30.874672, 35.598690> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359651, 0.817444, -0.449928,
		-0.819459, -0.046100, 0.571281,
		0.446248, 0.574160, 0.686442,
		27.201265, 31.046921, 35.804623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.404884, 31.151543, 35.524780>,  <26.888891, 30.645008, 35.324112>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.404884, 31.151543, 35.524780> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.744297, 31.327847, 35.641891>,  <26.947945, 31.433628, 35.712158>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.744297, 31.327847, 35.641891>,  <26.404884, 31.151543, 35.524780>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.744297, 31.327847, 35.641891> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309618, 0.862278, -0.400767,
		-0.429101, 0.249414, 0.868139,
		0.848534, 0.440760, 0.292781,
		26.998857, 31.460075, 35.729725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.178637, 31.766199, 35.792122>,  <26.404884, 31.151543, 35.524780>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.178637, 31.766199, 35.792122> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.567034, 31.818419, 35.711987>,  <26.800072, 31.849751, 35.663906>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.567034, 31.818419, 35.711987>,  <26.178637, 31.766199, 35.792122>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.567034, 31.818419, 35.711987> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188135, 0.934209, -0.303084,
		0.147586, 0.331981, 0.931669,
		0.970991, 0.130548, -0.200334,
		26.858332, 31.857582, 35.651886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.409143, 32.428917, 36.083874>,  <26.178637, 31.766199, 35.792122>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.409143, 32.428917, 36.083874> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.734661, 32.382515, 35.856091>,  <26.929972, 32.354675, 35.719421>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.734661, 32.382515, 35.856091>,  <26.409143, 32.428917, 36.083874>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.734661, 32.382515, 35.856091> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120631, 0.992252, -0.029744,
		0.568497, -0.044489, 0.821481,
		0.813793, -0.116005, -0.569459,
		26.978800, 32.347713, 35.685253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.945734, 32.873749, 36.311340>,  <26.409143, 32.428917, 36.083874>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.945734, 32.873749, 36.311340> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.029942, 32.794415, 35.928436>,  <27.080467, 32.746815, 35.698696>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.029942, 32.794415, 35.928436>,  <26.945734, 32.873749, 36.311340>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.029942, 32.794415, 35.928436> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184269, 0.969701, -0.160393,
		0.960066, -0.142627, 0.240689,
		0.210520, -0.198339, -0.957258,
		27.093098, 32.734913, 35.641258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.529081, 33.226429, 36.173725>,  <26.945734, 32.873749, 36.311340>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.529081, 33.226429, 36.173725> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.374037, 33.156467, 35.811695>,  <27.281010, 33.114491, 35.594475>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.374037, 33.156467, 35.811695>,  <27.529081, 33.226429, 36.173725>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.374037, 33.156467, 35.811695> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112319, 0.965559, -0.234694,
		0.914954, -0.192628, -0.354618,
		-0.387613, -0.174904, -0.905077,
		27.257753, 33.103996, 35.540173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.797907, 33.753426, 35.702381>,  <27.529081, 33.226429, 36.173725>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.797907, 33.753426, 35.702381> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.491718, 33.615463, 35.485092>,  <27.308004, 33.532684, 35.354717>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.491718, 33.615463, 35.485092>,  <27.797907, 33.753426, 35.702381>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.491718, 33.615463, 35.485092> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104555, 0.899658, -0.423892,
		0.634919, -0.267680, -0.724724,
		-0.765471, -0.344910, -0.543222,
		27.262077, 33.511990, 35.322124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.021713, 33.902405, 35.017738>,  <27.797907, 33.753426, 35.702381>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.021713, 33.902405, 35.017738> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.627489, 33.889931, 35.084309>,  <27.390955, 33.882446, 35.124252>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.627489, 33.889931, 35.084309>,  <28.021713, 33.902405, 35.017738>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.627489, 33.889931, 35.084309> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119512, 0.824391, -0.553259,
		-0.119944, -0.565160, -0.816215,
		-0.985561, -0.031188, 0.166424,
		27.331821, 33.880573, 35.134235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.767530, 34.140442, 35.257214>,  <28.021713, 33.902405, 35.017738>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.767530, 34.140442, 35.257214> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.164099, 34.130596, 35.205868>,  <29.402040, 34.124687, 35.175060>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.164099, 34.130596, 35.205868>,  <28.767530, 34.140442, 35.257214>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.164099, 34.130596, 35.205868> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030354, -0.998617, -0.042938,
		-0.127129, 0.046466, -0.990797,
		0.991422, -0.024616, -0.128364,
		29.461525, 34.123211, 35.167358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.985579, 33.511539, 34.772533>,  <28.767530, 34.140442, 35.257214>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.985579, 33.511539, 34.772533> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.330490, 33.621807, 34.942463>,  <29.537437, 33.687969, 35.044422>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.330490, 33.621807, 34.942463>,  <28.985579, 33.511539, 34.772533>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.330490, 33.621807, 34.942463> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215297, -0.958828, 0.185192,
		0.458388, -0.068223, -0.886130,
		0.862281, 0.275671, 0.424827,
		29.589174, 33.704510, 35.069912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.493593, 33.032253, 34.486599>,  <28.985579, 33.511539, 34.772533>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.493593, 33.032253, 34.486599> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.645473, 33.191147, 34.820793>,  <29.736601, 33.286484, 35.021309>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.645473, 33.191147, 34.820793>,  <29.493593, 33.032253, 34.486599>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.645473, 33.191147, 34.820793> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312602, -0.905087, 0.288266,
		0.870695, 0.151719, -0.467838,
		0.379698, 0.397239, 0.835482,
		29.759382, 33.310318, 35.071438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.100853, 32.739681, 34.563793>,  <29.493593, 33.032253, 34.486599>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.100853, 32.739681, 34.563793> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.003960, 32.859524, 34.932915>,  <29.945824, 32.931427, 35.154388>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.003960, 32.859524, 34.932915>,  <30.100853, 32.739681, 34.563793>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.003960, 32.859524, 34.932915> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159371, -0.925920, 0.342450,
		0.957039, 0.230021, 0.176541,
		-0.242234, 0.299603, 0.922801,
		29.931290, 32.949406, 35.209755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.631353, 32.477509, 34.975105>,  <30.100853, 32.739681, 34.563793>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.631353, 32.477509, 34.975105> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.377899, 32.580128, 35.267048>,  <30.225826, 32.641701, 35.442215>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.377899, 32.580128, 35.267048>,  <30.631353, 32.477509, 34.975105>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.377899, 32.580128, 35.267048> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233841, -0.835773, 0.496792,
		0.737445, 0.485455, 0.469584,
		-0.633636, 0.256548, 0.729855,
		30.187809, 32.657093, 35.486004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.055319, 32.394257, 35.660553>,  <30.631353, 32.477509, 34.975105>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.055319, 32.394257, 35.660553> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.670731, 32.417168, 35.768105>,  <30.439978, 32.430916, 35.832634>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.670731, 32.417168, 35.768105>,  <31.055319, 32.394257, 35.660553>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.670731, 32.417168, 35.768105> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120224, -0.791958, 0.598622,
		0.247231, 0.607883, 0.754557,
		-0.961469, 0.057282, 0.268879,
		30.382290, 32.434353, 35.848766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.076887, 32.222084, 36.350544>,  <31.055319, 32.394257, 35.660553>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.076887, 32.222084, 36.350544> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.693644, 32.138195, 36.272526>,  <30.463697, 32.087860, 36.225716>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.693644, 32.138195, 36.272526>,  <31.076887, 32.222084, 36.350544>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.693644, 32.138195, 36.272526> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058936, -0.810821, 0.582319,
		-0.280274, 0.546430, 0.789215,
		-0.958109, -0.209722, -0.195048,
		30.406210, 32.075279, 36.214012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.662457, 32.186920, 36.973732>,  <31.076887, 32.222084, 36.350544>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.662457, 32.186920, 36.973732> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.469828, 31.984171, 36.687748>,  <30.354250, 31.862520, 36.516159>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.469828, 31.984171, 36.687748>,  <30.662457, 32.186920, 36.973732>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.469828, 31.984171, 36.687748> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046869, -0.829509, 0.556523,
		-0.875151, 0.234498, 0.423227,
		-0.481574, -0.506878, -0.714955,
		30.325356, 31.832108, 36.473263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.065611, 31.837698, 37.254284>,  <30.662457, 32.186920, 36.973732>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.065611, 31.837698, 37.254284> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.123632, 31.616537, 36.926075>,  <30.158445, 31.483841, 36.729149>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.123632, 31.616537, 36.926075>,  <30.065611, 31.837698, 37.254284>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.123632, 31.616537, 36.926075> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048691, -0.824301, 0.564054,
		-0.988225, -0.121770, -0.092646,
		0.145054, -0.552901, -0.820524,
		30.167149, 31.450666, 36.679916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.563211, 31.155420, 37.202232>,  <30.065611, 31.837698, 37.254284>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.563211, 31.155420, 37.202232> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.879217, 31.085493, 36.967178>,  <30.068821, 31.043537, 36.826145>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.879217, 31.085493, 36.967178>,  <29.563211, 31.155420, 37.202232>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.879217, 31.085493, 36.967178> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049038, -0.937396, 0.344794,
		-0.611125, -0.301208, -0.731983,
		0.790013, -0.174818, -0.587637,
		30.116220, 31.033049, 36.790886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.483021, 30.435478, 37.046078>,  <29.563211, 31.155420, 37.202232>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.483021, 30.435478, 37.046078> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.855812, 30.520767, 36.928806>,  <30.079487, 30.571939, 36.858444>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.855812, 30.520767, 36.928806>,  <29.483021, 30.435478, 37.046078>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.855812, 30.520767, 36.928806> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266228, -0.951477, 0.154318,
		-0.246051, -0.221874, -0.943520,
		0.931977, 0.213221, -0.293181,
		30.135405, 30.584734, 36.840851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.658295, 29.853022, 36.723976>,  <29.483021, 30.435478, 37.046078>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.658295, 29.853022, 36.723976> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.002882, 30.042454, 36.797291>,  <30.209635, 30.156113, 36.841278>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.002882, 30.042454, 36.797291>,  <29.658295, 29.853022, 36.723976>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.002882, 30.042454, 36.797291> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428238, -0.871486, 0.239007,
		0.272921, -0.127407, -0.953563,
		0.861468, 0.473582, 0.183286,
		30.261322, 30.184528, 36.852276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.184341, 29.572775, 36.319664>,  <29.658295, 29.853022, 36.723976>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.184341, 29.572775, 36.319664> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.341154, 29.727219, 36.653667>,  <30.435242, 29.819885, 36.854069>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.341154, 29.727219, 36.653667>,  <30.184341, 29.572775, 36.319664>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.341154, 29.727219, 36.653667> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329842, -0.906307, 0.264219,
		0.858788, 0.171837, -0.482655,
		0.392031, 0.386108, 0.835005,
		30.458763, 29.843050, 36.904167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.608198, 29.048143, 36.576611>,  <30.184341, 29.572775, 36.319664>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.608198, 29.048143, 36.576611> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.657831, 29.297478, 36.885429>,  <30.687611, 29.447079, 37.070721>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.657831, 29.297478, 36.885429>,  <30.608198, 29.048143, 36.576611>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.657831, 29.297478, 36.885429> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241274, -0.773661, 0.585863,
		0.962492, 0.113579, -0.246393,
		0.124083, 0.623336, 0.772046,
		30.695057, 29.484478, 37.117043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.318699, 28.957508, 36.846931>,  <30.608198, 29.048143, 36.576611>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.318699, 28.957508, 36.846931> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.091858, 29.098879, 37.144516>,  <30.955753, 29.183701, 37.323067>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.091858, 29.098879, 37.144516>,  <31.318699, 28.957508, 36.846931>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.091858, 29.098879, 37.144516> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203356, -0.815213, 0.542287,
		0.798149, 0.458822, 0.390438,
		-0.567102, 0.353427, 0.743965,
		30.921726, 29.204906, 37.367706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.670895, 28.700636, 37.459496>,  <31.318699, 28.957508, 36.846931>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.670895, 28.700636, 37.459496> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.296761, 28.796711, 37.563385>,  <31.072279, 28.854357, 37.625717>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.296761, 28.796711, 37.563385>,  <31.670895, 28.700636, 37.459496>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.296761, 28.796711, 37.563385> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011172, -0.753863, 0.656937,
		0.353583, 0.611555, 0.707799,
		-0.935336, 0.240190, 0.259721,
		31.016159, 28.868769, 37.641300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.676125, 28.604027, 38.210461>,  <31.670895, 28.700636, 37.459496>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.676125, 28.604027, 38.210461> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.289143, 28.593607, 38.109779>,  <31.056953, 28.587355, 38.049370>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.289143, 28.593607, 38.109779>,  <31.676125, 28.604027, 38.210461>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.289143, 28.593607, 38.109779> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138941, -0.776647, 0.614423,
		-0.211488, 0.629397, 0.747751,
		-0.967454, -0.026050, -0.251700,
		30.998907, 28.585793, 38.034267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.495996, 28.291157, 38.798271>,  <31.676125, 28.604027, 38.210461>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.495996, 28.291157, 38.798271> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.172430, 28.240049, 38.568722>,  <30.978291, 28.209385, 38.430992>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.172430, 28.240049, 38.568722>,  <31.495996, 28.291157, 38.798271>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.172430, 28.240049, 38.568722> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187328, -0.869213, 0.457578,
		-0.557279, 0.477645, 0.679188,
		-0.808918, -0.127768, -0.573870,
		30.929754, 28.201719, 38.396561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.150894, 27.967627, 39.235931>,  <31.495996, 28.291157, 38.798271>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.150894, 27.967627, 39.235931> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.973053, 27.906378, 38.882915>,  <30.866348, 27.869629, 38.671104>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.973053, 27.906378, 38.882915>,  <31.150894, 27.967627, 39.235931>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.973053, 27.906378, 38.882915> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310295, -0.897944, 0.312112,
		-0.840264, 0.412615, 0.351718,
		-0.444605, -0.153120, -0.882542,
		30.839672, 27.860441, 38.618153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.465759, 27.634136, 39.369556>,  <31.150894, 27.967627, 39.235931>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.465759, 27.634136, 39.369556> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.567492, 27.551750, 38.991585>,  <30.628531, 27.502317, 38.764801>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.567492, 27.551750, 38.991585>,  <30.465759, 27.634136, 39.369556>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.567492, 27.551750, 38.991585> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172392, -0.971066, 0.165264,
		-0.951629, 0.120866, -0.282478,
		0.254330, -0.205967, -0.944930,
		30.643791, 27.489960, 38.708107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.939957, 27.186430, 39.005775>,  <30.465759, 27.634136, 39.369556>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.939957, 27.186430, 39.005775> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.287441, 27.118176, 38.819778>,  <30.495932, 27.077223, 38.708179>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.287441, 27.118176, 38.819778>,  <29.939957, 27.186430, 39.005775>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.287441, 27.118176, 38.819778> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028224, -0.954315, 0.297465,
		-0.494511, -0.245288, -0.833842,
		0.868713, -0.170634, -0.464997,
		30.548056, 27.066986, 38.680279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.948374, 26.544298, 38.701096>,  <29.939957, 27.186430, 39.005775>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.948374, 26.544298, 38.701096> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.344967, 26.594526, 38.687271>,  <30.582922, 26.624662, 38.678974>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.344967, 26.594526, 38.687271>,  <29.948374, 26.544298, 38.701096>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.344967, 26.594526, 38.687271> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128486, -0.986464, 0.101887,
		-0.021304, -0.105460, -0.994195,
		0.991482, 0.125569, -0.034566,
		30.642412, 26.632196, 38.676903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.115273, 26.077787, 38.261021>,  <29.948374, 26.544298, 38.701096>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.115273, 26.077787, 38.261021> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.437767, 26.156773, 38.484085>,  <30.631264, 26.204163, 38.617924>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.437767, 26.156773, 38.484085>,  <30.115273, 26.077787, 38.261021>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.437767, 26.156773, 38.484085> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002186, -0.943639, 0.330970,
		0.591587, -0.265622, -0.761229,
		0.806239, 0.197461, 0.557663,
		30.679638, 26.216011, 38.651382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<40.269245, 34.042732, 47.482208> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.887363, 33.924713, 47.466812>,  <39.658234, 33.853901, 47.457573>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.887363, 33.924713, 47.466812>,  <40.269245, 34.042732, 47.482208>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.887363, 33.924713, 47.466812> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003722, -0.117510, 0.993065,
		-0.297522, 0.948230, 0.111089,
		-0.954708, -0.295046, -0.038491,
		39.600952, 33.836201, 47.455265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.963432, 34.490608, 47.904438>,  <40.269245, 34.042732, 47.482208>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.963432, 34.490608, 47.904438> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.702805, 34.189686, 47.865482>,  <39.546429, 34.009132, 47.842110>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.702805, 34.189686, 47.865482>,  <39.963432, 34.490608, 47.904438>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.702805, 34.189686, 47.865482> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105319, -0.037421, 0.993734,
		-0.751240, 0.657746, -0.054850,
		-0.651573, -0.752309, -0.097385,
		39.507332, 33.963993, 47.836266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.288960, 34.733086, 48.305305>,  <39.963432, 34.490608, 47.904438>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.288960, 34.733086, 48.305305> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.262112, 34.337471, 48.252705>,  <39.246002, 34.100101, 48.221142>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.262112, 34.337471, 48.252705>,  <39.288960, 34.733086, 48.305305>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.262112, 34.337471, 48.252705> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162740, -0.119187, 0.979444,
		-0.984383, 0.087140, -0.152957,
		-0.067119, -0.989040, -0.131507,
		39.241978, 34.040760, 48.213253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.659344, 34.477287, 48.611759>,  <39.288960, 34.733086, 48.305305>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.659344, 34.477287, 48.611759> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.908482, 34.164608, 48.599049>,  <39.057964, 33.977001, 48.591423>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.908482, 34.164608, 48.599049>,  <38.659344, 34.477287, 48.611759>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.908482, 34.164608, 48.599049> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244393, -0.232992, 0.941269,
		-0.743194, -0.578497, -0.336160,
		0.622844, -0.781700, -0.031778,
		39.095333, 33.930099, 48.589516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.313339, 33.966179, 48.880398>,  <38.659344, 34.477287, 48.611759>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.313339, 33.966179, 48.880398> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.685982, 33.823463, 48.908138>,  <38.909569, 33.737835, 48.924782>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.685982, 33.823463, 48.908138>,  <38.313339, 33.966179, 48.880398>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.685982, 33.823463, 48.908138> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125749, -0.137361, 0.982507,
		-0.341022, -0.924031, -0.172832,
		0.931607, -0.356790, 0.069353,
		38.965466, 33.716427, 48.928944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.297581, 33.289001, 49.330650>,  <38.313339, 33.966179, 48.880398>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.297581, 33.289001, 49.330650> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.675056, 33.419189, 49.354385>,  <38.901543, 33.497303, 49.368626>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.675056, 33.419189, 49.354385>,  <38.297581, 33.289001, 49.330650>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.675056, 33.419189, 49.354385> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097900, -0.446046, 0.889640,
		0.316017, -0.833734, -0.452792,
		0.943689, 0.325470, 0.059335,
		38.958164, 33.516830, 49.372185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.596172, 32.649529, 49.630661>,  <38.297581, 33.289001, 49.330650>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.596172, 32.649529, 49.630661> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.839382, 32.962460, 49.684715>,  <38.985310, 33.150219, 49.717148>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.839382, 32.962460, 49.684715>,  <38.596172, 32.649529, 49.630661>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.839382, 32.962460, 49.684715> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160522, -0.287844, 0.944128,
		0.777519, -0.552362, -0.300598,
		0.608026, 0.782331, 0.135138,
		39.021790, 33.197159, 49.725258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.222412, 32.362991, 49.893200>,  <38.596172, 32.649529, 49.630661>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.222412, 32.362991, 49.893200> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.214085, 32.757103, 49.961082>,  <39.209087, 32.993568, 50.001812>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.214085, 32.757103, 49.961082>,  <39.222412, 32.362991, 49.893200>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.214085, 32.757103, 49.961082> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117346, -0.166161, 0.979092,
		0.992873, 0.040299, -0.112158,
		-0.020820, 0.985275, 0.169706,
		39.207840, 33.052685, 50.011993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.737915, 32.495625, 50.352531>,  <39.222412, 32.362991, 49.893200>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.737915, 32.495625, 50.352531> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.535023, 32.836201, 50.405861>,  <39.413288, 33.040546, 50.437859>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.535023, 32.836201, 50.405861>,  <39.737915, 32.495625, 50.352531>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.535023, 32.836201, 50.405861> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075787, -0.110039, 0.991034,
		0.858473, 0.512785, -0.008713,
		-0.507228, 0.851436, 0.133328,
		39.382854, 33.091633, 50.445858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.054863, 32.788891, 50.996624>,  <39.737915, 32.495625, 50.352531>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.054863, 32.788891, 50.996624> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.703327, 32.978992, 50.979748>,  <39.492405, 33.093052, 50.969620>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.703327, 32.978992, 50.979748>,  <40.054863, 32.788891, 50.996624>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.703327, 32.978992, 50.979748> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116513, -0.128012, 0.984905,
		0.462678, 0.870487, 0.167874,
		-0.878837, 0.475253, -0.042195,
		39.439674, 33.121567, 50.967091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.997700, 33.236523, 51.613461>,  <40.054863, 32.788891, 50.996624>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.997700, 33.236523, 51.613461> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.611954, 33.211658, 51.510593>,  <39.380505, 33.196739, 51.448872>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.611954, 33.211658, 51.510593>,  <39.997700, 33.236523, 51.613461>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.611954, 33.211658, 51.510593> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234188, -0.251758, 0.939028,
		-0.123113, 0.965792, 0.228230,
		-0.964365, -0.062158, -0.257171,
		39.322643, 33.193012, 51.433441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.560093, 33.694847, 52.105782>,  <39.997700, 33.236523, 51.613461>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.560093, 33.694847, 52.105782> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.349998, 33.393013, 51.948437>,  <39.223942, 33.211914, 51.854031>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.349998, 33.393013, 51.948437>,  <39.560093, 33.694847, 52.105782>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.349998, 33.393013, 51.948437> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256650, -0.300264, 0.918680,
		-0.811332, 0.583479, -0.035954,
		-0.525235, -0.754582, -0.393363,
		39.192429, 33.166637, 51.830429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.904137, 33.709816, 52.385220>,  <39.560093, 33.694847, 52.105782>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.904137, 33.709816, 52.385220> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.034813, 33.347965, 52.275726>,  <39.113220, 33.130856, 52.210030>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.034813, 33.347965, 52.275726>,  <38.904137, 33.709816, 52.385220>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.034813, 33.347965, 52.275726> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116065, -0.325831, 0.938277,
		-0.937976, -0.274759, -0.211443,
		0.326694, -0.904622, -0.273732,
		39.132820, 33.076580, 52.193607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.376896, 33.291107, 52.577789>,  <38.904137, 33.709816, 52.385220>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.376896, 33.291107, 52.577789> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.735443, 33.114765, 52.596458>,  <38.950569, 33.008961, 52.607658>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.735443, 33.114765, 52.596458>,  <38.376896, 33.291107, 52.577789>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.735443, 33.114765, 52.596458> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185306, -0.276953, 0.942846,
		-0.402731, -0.853783, -0.329944,
		0.896365, -0.440854, 0.046674,
		39.004353, 32.982510, 52.610462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.620575, 33.649189, 52.440716>,  <38.376896, 33.291107, 52.577789>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.620575, 33.649189, 52.440716> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.226871, 33.602020, 52.493359>,  <36.990650, 33.573719, 52.524944>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.226871, 33.602020, 52.493359>,  <37.620575, 33.649189, 52.440716>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.226871, 33.602020, 52.493359> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159668, 0.274341, -0.948284,
		0.075719, -0.954375, -0.288852,
		-0.984262, -0.117924, 0.131610,
		36.931591, 33.566643, 52.532841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.376747, 33.181210, 51.891720>,  <37.620575, 33.649189, 52.440716>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.376747, 33.181210, 51.891720> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.102619, 33.439091, 52.027184>,  <36.938141, 33.593819, 52.108463>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.102619, 33.439091, 52.027184>,  <37.376747, 33.181210, 51.891720>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.102619, 33.439091, 52.027184> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187171, 0.293481, -0.937462,
		-0.703780, -0.705848, -0.080458,
		-0.685318, 0.644707, 0.338660,
		36.897022, 33.632504, 52.128780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.744484, 33.027523, 51.444279>,  <37.376747, 33.181210, 51.891720>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.744484, 33.027523, 51.444279> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.683346, 33.392406, 51.596344>,  <36.646664, 33.611336, 51.687584>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.683346, 33.392406, 51.596344>,  <36.744484, 33.027523, 51.444279>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.683346, 33.392406, 51.596344> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392954, 0.296865, -0.870321,
		-0.906767, -0.282407, 0.313081,
		-0.152842, 0.912205, 0.380160,
		36.637493, 33.666069, 51.710392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.040909, 33.195305, 51.319675>,  <36.744484, 33.027523, 51.444279>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.040909, 33.195305, 51.319675> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.254944, 33.531231, 51.356335>,  <36.383366, 33.732784, 51.378330>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.254944, 33.531231, 51.356335>,  <36.040909, 33.195305, 51.319675>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.254944, 33.531231, 51.356335> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303728, 0.292470, -0.906758,
		-0.788311, 0.457358, 0.411570,
		0.535085, 0.839813, 0.091645,
		36.415470, 33.783176, 51.383827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.674141, 33.694187, 50.950520>,  <36.040909, 33.195305, 51.319675>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.674141, 33.694187, 50.950520> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.016491, 33.890400, 51.016071>,  <36.221901, 34.008125, 51.055401>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.016491, 33.890400, 51.016071>,  <35.674141, 33.694187, 50.950520>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.016491, 33.890400, 51.016071> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117769, 0.493393, -0.861797,
		-0.503593, 0.718292, 0.480052,
		0.855877, 0.490530, 0.163877,
		36.273254, 34.037560, 51.065235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.527321, 34.412117, 50.765068>,  <35.674141, 33.694187, 50.950520>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.527321, 34.412117, 50.765068> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.920609, 34.350174, 50.726494>,  <36.156582, 34.313007, 50.703350>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.920609, 34.350174, 50.726494>,  <35.527321, 34.412117, 50.765068>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.920609, 34.350174, 50.726494> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002151, 0.518718, -0.854943,
		0.182417, 0.840803, 0.509680,
		0.983219, -0.154859, -0.096432,
		36.215572, 34.303715, 50.697563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.798576, 35.043545, 50.471142>,  <35.527321, 34.412117, 50.765068>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.798576, 35.043545, 50.471142> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.057663, 34.756123, 50.369839>,  <36.213116, 34.583668, 50.309055>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.057663, 34.756123, 50.369839>,  <35.798576, 35.043545, 50.471142>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.057663, 34.756123, 50.369839> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266122, 0.524857, -0.808520,
		0.713892, 0.456294, 0.531182,
		0.647717, -0.718555, -0.253261,
		36.251980, 34.540558, 50.293861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.429405, 35.436352, 50.308205>,  <35.798576, 35.043545, 50.471142>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.429405, 35.436352, 50.308205> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.474091, 35.083431, 50.125309>,  <36.500904, 34.871677, 50.015572>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.474091, 35.083431, 50.125309>,  <36.429405, 35.436352, 50.308205>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.474091, 35.083431, 50.125309> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309994, 0.468096, -0.827520,
		0.944152, -0.049294, 0.325802,
		0.111715, -0.882302, -0.457235,
		36.507607, 34.818741, 49.988140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.008301, 35.451565, 49.847935>,  <36.429405, 35.436352, 50.308205>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.008301, 35.451565, 49.847935> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.843620, 35.118732, 49.699261>,  <36.744812, 34.919033, 49.610058>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.843620, 35.118732, 49.699261>,  <37.008301, 35.451565, 49.847935>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.843620, 35.118732, 49.699261> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399560, 0.201753, -0.894230,
		0.819057, -0.516666, 0.249402,
		-0.411701, -0.832076, -0.371686,
		36.720112, 34.869110, 49.587753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.532269, 35.153885, 49.322304>,  <37.008301, 35.451565, 49.847935>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.532269, 35.153885, 49.322304> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.173309, 34.990879, 49.254654>,  <36.957932, 34.893074, 49.214066>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.173309, 34.990879, 49.254654>,  <37.532269, 35.153885, 49.322304>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.173309, 34.990879, 49.254654> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111462, 0.161483, -0.980561,
		0.426904, -0.898808, -0.099492,
		-0.897402, -0.407515, -0.169120,
		36.904087, 34.868626, 49.203918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.660942, 34.553913, 48.932289>,  <37.532269, 35.153885, 49.322304>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.660942, 34.553913, 48.932289> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.293350, 34.695148, 48.862076>,  <37.072796, 34.779888, 48.819950>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.293350, 34.695148, 48.862076>,  <37.660942, 34.553913, 48.932289>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.293350, 34.695148, 48.862076> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185589, -0.005451, -0.982612,
		-0.347904, -0.935575, -0.060520,
		-0.918977, 0.353087, -0.175529,
		37.017658, 34.801075, 48.809418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.432106, 34.066788, 48.415813>,  <37.660942, 34.553913, 48.932289>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.432106, 34.066788, 48.415813> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.155651, 34.355320, 48.397865>,  <36.989777, 34.528439, 48.387096>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.155651, 34.355320, 48.397865>,  <37.432106, 34.066788, 48.415813>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.155651, 34.355320, 48.397865> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089389, 0.023715, -0.995714,
		-0.717171, -0.692189, -0.080869,
		-0.691140, 0.721326, -0.044867,
		36.948311, 34.571716, 48.384407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.840458, 33.862625, 47.937824>,  <37.432106, 34.066788, 48.415813>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.840458, 33.862625, 47.937824> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.864048, 34.261761, 47.949467>,  <36.878201, 34.501240, 47.956451>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.864048, 34.261761, 47.949467>,  <36.840458, 33.862625, 47.937824>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.864048, 34.261761, 47.949467> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020343, 0.030350, -0.999332,
		-0.998052, 0.058344, 0.022089,
		0.058976, 0.997835, 0.029104,
		36.881741, 34.561111, 47.958199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.491974, 34.015152, 47.220852>,  <36.840458, 33.862625, 47.937824>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.491974, 34.015152, 47.220852> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.621181, 34.368435, 47.356850>,  <36.698708, 34.580406, 47.438450>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.621181, 34.368435, 47.356850>,  <36.491974, 34.015152, 47.220852>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.621181, 34.368435, 47.356850> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033934, 0.348214, -0.936801,
		-0.945783, 0.314144, 0.082510,
		0.323021, 0.883210, 0.339995,
		36.718086, 34.633396, 47.458847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.868191, 33.982807, 47.624733>,  <36.491974, 34.015152, 47.220852>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.868191, 33.982807, 47.624733> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.538727, 33.872673, 47.426426>,  <35.341049, 33.806595, 47.307442>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.538727, 33.872673, 47.426426>,  <35.868191, 33.982807, 47.624733>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.538727, 33.872673, 47.426426> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328670, -0.480650, 0.812989,
		-0.462130, 0.832567, 0.305398,
		-0.823658, -0.275331, -0.495763,
		35.291630, 33.790073, 47.277699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.290642, 34.406521, 47.966133>,  <35.868191, 33.982807, 47.624733>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.290642, 34.406521, 47.966133> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.176449, 34.068695, 47.784927>,  <35.107933, 33.866001, 47.676205>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.176449, 34.068695, 47.784927>,  <35.290642, 34.406521, 47.966133>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.176449, 34.068695, 47.784927> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250716, -0.390408, 0.885846,
		-0.925010, 0.366468, -0.100291,
		-0.285480, -0.844561, -0.453011,
		35.090805, 33.815327, 47.649025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.714233, 34.271748, 48.306835>,  <35.290642, 34.406521, 47.966133>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.714233, 34.271748, 48.306835> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.757408, 33.919079, 48.123093>,  <34.783314, 33.707478, 48.012848>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.757408, 33.919079, 48.123093>,  <34.714233, 34.271748, 48.306835>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.757408, 33.919079, 48.123093> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349057, -0.466246, 0.812880,
		-0.930865, 0.072602, -0.358078,
		0.107935, -0.881671, -0.459354,
		34.789787, 33.654579, 47.985287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.055458, 33.887451, 48.376873>,  <34.714233, 34.271748, 48.306835>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.055458, 33.887451, 48.376873> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.328609, 33.607079, 48.294540>,  <34.492500, 33.438854, 48.245140>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.328609, 33.607079, 48.294540>,  <34.055458, 33.887451, 48.376873>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.328609, 33.607079, 48.294540> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372974, -0.576791, 0.726776,
		-0.628143, -0.419531, -0.655309,
		0.682881, -0.700933, -0.205833,
		34.533474, 33.396801, 48.232792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.748405, 33.211704, 48.261547>,  <34.055458, 33.887451, 48.376873>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.748405, 33.211704, 48.261547> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.125656, 33.166195, 48.386490>,  <34.352005, 33.138889, 48.461456>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.125656, 33.166195, 48.386490>,  <33.748405, 33.211704, 48.261547>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.125656, 33.166195, 48.386490> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311726, -0.629108, 0.712075,
		0.115486, -0.768946, -0.628796,
		0.943128, -0.113777, 0.312354,
		34.408596, 33.132061, 48.480194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.873100, 32.425282, 48.464348>,  <33.748405, 33.211704, 48.261547>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.873100, 32.425282, 48.464348> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.153801, 32.647739, 48.642448>,  <34.322220, 32.781216, 48.749310>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.153801, 32.647739, 48.642448>,  <33.873100, 32.425282, 48.464348>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.153801, 32.647739, 48.642448> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162604, -0.483450, 0.860137,
		0.693622, -0.675998, -0.248827,
		0.701747, 0.556149, 0.445252,
		34.364326, 32.814583, 48.776024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.136604, 31.965326, 48.945450>,  <33.873100, 32.425282, 48.464348>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.136604, 31.965326, 48.945450> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.276745, 32.318481, 49.070518>,  <34.360828, 32.530373, 49.145561>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.276745, 32.318481, 49.070518>,  <34.136604, 31.965326, 48.945450>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.276745, 32.318481, 49.070518> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151921, -0.275846, 0.949120,
		0.924216, -0.380026, 0.037487,
		0.350350, 0.882887, 0.312675,
		34.381851, 32.583347, 49.164322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.804905, 31.487772, 48.870857>,  <34.136604, 31.965326, 48.945450>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.804905, 31.487772, 48.870857> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.817341, 31.089409, 48.836903>,  <34.824802, 30.850391, 48.816528>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.817341, 31.089409, 48.836903>,  <34.804905, 31.487772, 48.870857>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.817341, 31.089409, 48.836903> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243866, 0.089918, -0.965632,
		0.969311, 0.009321, 0.245663,
		0.031090, -0.995906, -0.084886,
		34.826668, 30.790638, 48.811436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.538078, 31.228670, 48.657200>,  <34.804905, 31.487772, 48.870857>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.538078, 31.228670, 48.657200> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.255627, 30.970057, 48.541698>,  <35.086155, 30.814888, 48.472397>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.255627, 30.970057, 48.541698>,  <35.538078, 31.228670, 48.657200>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.255627, 30.970057, 48.541698> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320337, 0.072001, -0.944563,
		0.631481, -0.759482, 0.156266,
		-0.706127, -0.646532, -0.288758,
		35.043789, 30.776096, 48.455070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.813499, 30.833479, 48.140984>,  <35.538078, 31.228670, 48.657200>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.813499, 30.833479, 48.140984> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.422466, 30.769796, 48.085880>,  <35.187847, 30.731586, 48.052818>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.422466, 30.769796, 48.085880>,  <35.813499, 30.833479, 48.140984>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.422466, 30.769796, 48.085880> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137244, 0.014262, -0.990435,
		0.159647, -0.987142, 0.007908,
		-0.977587, -0.159205, -0.137756,
		35.129189, 30.722034, 48.044552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.880970, 30.565531, 47.501671>,  <35.813499, 30.833479, 48.140984>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.880970, 30.565531, 47.501671> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.487720, 30.636059, 47.521202>,  <35.251770, 30.678375, 47.532921>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.487720, 30.636059, 47.521202>,  <35.880970, 30.565531, 47.501671>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.487720, 30.636059, 47.521202> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036534, 0.072323, -0.996712,
		-0.179271, -0.981672, -0.064661,
		-0.983121, 0.176319, 0.048830,
		35.192783, 30.688953, 47.535851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.711205, 30.143162, 46.964138>,  <35.880970, 30.565531, 47.501671>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.711205, 30.143162, 46.964138> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.427353, 30.415247, 47.037617>,  <35.257042, 30.578497, 47.081703>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.427353, 30.415247, 47.037617>,  <35.711205, 30.143162, 46.964138>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.427353, 30.415247, 47.037617> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246190, 0.004907, -0.969209,
		-0.660169, -0.732999, 0.163979,
		-0.709624, 0.680212, 0.183696,
		35.214466, 30.619310, 47.092724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.098858, 29.977392, 46.451691>,  <35.711205, 30.143162, 46.964138>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.098858, 29.977392, 46.451691> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.033100, 30.358599, 46.553463>,  <34.993645, 30.587322, 46.614525>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.033100, 30.358599, 46.553463>,  <35.098858, 29.977392, 46.451691>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.033100, 30.358599, 46.553463> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301708, 0.196997, -0.932826,
		-0.939121, -0.230112, 0.255148,
		-0.164392, 0.953017, 0.254430,
		34.983784, 30.644505, 46.629791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.429226, 30.184858, 46.246525>,  <35.098858, 29.977392, 46.451691>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.429226, 30.184858, 46.246525> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.642799, 30.522118, 46.271870>,  <34.770943, 30.724472, 46.287075>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.642799, 30.522118, 46.271870>,  <34.429226, 30.184858, 46.246525>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.642799, 30.522118, 46.271870> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289077, 0.252454, -0.923418,
		-0.794572, 0.474733, 0.378529,
		0.533938, 0.843146, 0.063358,
		34.802982, 30.775061, 46.290878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<38.184982, 30.051962, 51.057312> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.331829, 30.416254, 51.132988>,  <38.419937, 30.634830, 51.178394>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.331829, 30.416254, 51.132988>,  <38.184982, 30.051962, 51.057312>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.331829, 30.416254, 51.132988> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026129, 0.193214, -0.980809,
		-0.929808, 0.365013, 0.047135,
		0.367116, 0.910733, 0.189189,
		38.441963, 30.689474, 51.189743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.742195, 30.535009, 50.677979>,  <38.184982, 30.051962, 51.057312>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.742195, 30.535009, 50.677979> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.110462, 30.678213, 50.740211>,  <38.331421, 30.764135, 50.777554>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.110462, 30.678213, 50.740211>,  <37.742195, 30.535009, 50.677979>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.110462, 30.678213, 50.740211> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152551, 0.036894, -0.987607,
		-0.359311, 0.932989, -0.020647,
		0.920665, 0.358008, 0.155585,
		38.386662, 30.785616, 50.786888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.794567, 31.016222, 50.161415>,  <37.742195, 30.535009, 50.677979>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.794567, 31.016222, 50.161415> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.166687, 30.928301, 50.278877>,  <38.389957, 30.875547, 50.349354>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.166687, 30.928301, 50.278877>,  <37.794567, 31.016222, 50.161415>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.166687, 30.928301, 50.278877> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262069, -0.161846, -0.951381,
		0.256642, 0.962025, -0.092962,
		0.930298, -0.219802, 0.293654,
		38.445778, 30.862360, 50.366974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.136101, 31.334406, 49.745007>,  <37.794567, 31.016222, 50.161415>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.136101, 31.334406, 49.745007> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.383965, 31.061064, 49.899433>,  <38.532681, 30.897058, 49.992088>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.383965, 31.061064, 49.899433>,  <38.136101, 31.334406, 49.745007>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.383965, 31.061064, 49.899433> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197723, -0.340113, -0.919363,
		0.759559, 0.646025, -0.075638,
		0.619658, -0.683355, 0.386070,
		38.569862, 30.856058, 50.015255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.751263, 31.369770, 49.378571>,  <38.136101, 31.334406, 49.745007>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.751263, 31.369770, 49.378571> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.727394, 31.001888, 49.533791>,  <38.713074, 30.781160, 49.626923>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.727394, 31.001888, 49.533791>,  <38.751263, 31.369770, 49.378571>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.727394, 31.001888, 49.533791> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212822, -0.391529, -0.895216,
		0.975267, 0.029171, 0.219095,
		-0.059668, -0.919703, 0.388054,
		38.709496, 30.725977, 49.650208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.327904, 31.069862, 49.210911>,  <38.751263, 31.369770, 49.378571>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.327904, 31.069862, 49.210911> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.044807, 30.794710, 49.275314>,  <38.874950, 30.629620, 49.313957>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.044807, 30.794710, 49.275314>,  <39.327904, 31.069862, 49.210911>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.044807, 30.794710, 49.275314> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216077, -0.427753, -0.877689,
		0.672618, -0.586386, 0.451373,
		-0.707740, -0.687880, 0.161010,
		38.832485, 30.588346, 49.323616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.710011, 30.535706, 48.778687>,  <39.327904, 31.069862, 49.210911>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.710011, 30.535706, 48.778687> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.329220, 30.431353, 48.842777>,  <39.100746, 30.368742, 48.881233>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.329220, 30.431353, 48.842777>,  <39.710011, 30.535706, 48.778687>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.329220, 30.431353, 48.842777> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008026, -0.544434, -0.838765,
		0.306050, -0.797203, 0.520385,
		-0.951981, -0.260881, 0.160226,
		39.043625, 30.353088, 48.890846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.686142, 29.747833, 48.746159>,  <39.710011, 30.535706, 48.778687>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.686142, 29.747833, 48.746159> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.315247, 29.878164, 48.672325>,  <39.092709, 29.956364, 48.628025>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.315247, 29.878164, 48.672325>,  <39.686142, 29.747833, 48.746159>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.315247, 29.878164, 48.672325> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026980, -0.549746, -0.834896,
		-0.373506, -0.769165, 0.518535,
		-0.927236, 0.325829, -0.184582,
		39.037075, 29.975914, 48.616951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.360397, 29.284290, 48.197983>,  <39.686142, 29.747833, 48.746159>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.360397, 29.284290, 48.197983> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.103413, 29.590769, 48.192551>,  <38.949223, 29.774656, 48.189293>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.103413, 29.590769, 48.192551>,  <39.360397, 29.284290, 48.197983>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.103413, 29.590769, 48.192551> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316930, -0.281798, -0.905619,
		-0.697709, -0.577522, 0.423875,
		-0.642462, 0.766197, -0.013579,
		38.910675, 29.820627, 48.188477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.685150, 28.985275, 47.936268>,  <39.360397, 29.284290, 48.197983>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.685150, 28.985275, 47.936268> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.652172, 29.375807, 47.856285>,  <38.632385, 29.610126, 47.808296>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.652172, 29.375807, 47.856285>,  <38.685150, 28.985275, 47.936268>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.652172, 29.375807, 47.856285> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139408, -0.209964, -0.967719,
		-0.986797, -0.051911, 0.153420,
		-0.082448, 0.976330, -0.199955,
		38.627438, 29.668705, 47.796299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.242157, 28.967840, 47.384644>,  <38.685150, 28.985275, 47.936268>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.242157, 28.967840, 47.384644> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.374729, 29.342907, 47.342819>,  <38.454273, 29.567947, 47.317726>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.374729, 29.342907, 47.342819>,  <38.242157, 28.967840, 47.384644>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.374729, 29.342907, 47.342819> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134483, -0.062743, -0.988927,
		-0.933846, 0.341821, 0.105305,
		0.331429, 0.937668, -0.104562,
		38.474159, 29.624207, 47.311451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.752148, 29.374619, 46.918720>,  <38.242157, 28.967840, 47.384644>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.752148, 29.374619, 46.918720> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.102180, 29.567984, 46.909393>,  <38.312199, 29.684002, 46.903797>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.102180, 29.567984, 46.909393>,  <37.752148, 29.374619, 46.918720>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.102180, 29.567984, 46.909393> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062418, -0.160498, -0.985061,
		-0.479931, 0.860555, -0.170622,
		0.875083, 0.483411, -0.023314,
		38.364704, 29.713007, 46.902397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.025253, 29.715498, 46.878445>,  <37.752148, 29.374619, 46.918720>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.025253, 29.715498, 46.878445> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.732918, 29.466208, 46.767113>,  <36.557518, 29.316633, 46.700314>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.732918, 29.466208, 46.767113>,  <37.025253, 29.715498, 46.878445>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.732918, 29.466208, 46.767113> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264199, -0.117693, 0.957260,
		-0.629348, 0.773134, -0.078642,
		-0.730835, -0.623227, -0.278331,
		36.513668, 29.279240, 46.683613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.488571, 29.881790, 47.302372>,  <37.025253, 29.715498, 46.878445>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.488571, 29.881790, 47.302372> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.375748, 29.519501, 47.175816>,  <36.308056, 29.302126, 47.099880>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.375748, 29.519501, 47.175816>,  <36.488571, 29.881790, 47.302372>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.375748, 29.519501, 47.175816> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398612, -0.189340, 0.897362,
		-0.872670, 0.379225, -0.307629,
		-0.282055, -0.905726, -0.316395,
		36.291130, 29.247784, 47.080898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.917950, 29.652269, 47.788940>,  <36.488571, 29.881790, 47.302372>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.917950, 29.652269, 47.788940> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.006962, 29.311842, 47.598713>,  <36.060368, 29.107586, 47.484577>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.006962, 29.311842, 47.598713>,  <35.917950, 29.652269, 47.788940>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.006962, 29.311842, 47.598713> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340604, -0.524927, 0.780026,
		-0.913493, -0.011599, -0.406690,
		0.222530, -0.851068, -0.475567,
		36.073719, 29.056522, 47.456043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.269825, 29.219173, 47.849987>,  <35.917950, 29.652269, 47.788940>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.269825, 29.219173, 47.849987> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.588276, 28.996006, 47.756256>,  <35.779346, 28.862104, 47.700016>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.588276, 28.996006, 47.756256>,  <35.269825, 29.219173, 47.849987>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.588276, 28.996006, 47.756256> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146655, -0.553583, 0.819779,
		-0.587096, -0.618278, -0.522542,
		0.796122, -0.557923, -0.234333,
		35.827114, 28.828630, 47.685959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.104595, 28.556978, 48.069565>,  <35.269825, 29.219173, 47.849987>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.104595, 28.556978, 48.069565> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.504578, 28.554243, 48.072063>,  <35.744568, 28.552603, 48.073563>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.504578, 28.554243, 48.072063>,  <35.104595, 28.556978, 48.069565>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.504578, 28.554243, 48.072063> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008592, -0.433874, 0.900933,
		-0.003450, -0.900948, -0.433914,
		0.999957, -0.006836, 0.006244,
		35.804565, 28.552193, 48.073936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.248009, 27.839008, 48.273907>,  <35.104595, 28.556978, 48.069565>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.248009, 27.839008, 48.273907> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.574970, 28.061844, 48.332554>,  <35.771149, 28.195545, 48.367741>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.574970, 28.061844, 48.332554>,  <35.248009, 27.839008, 48.273907>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.574970, 28.061844, 48.332554> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056562, -0.330905, 0.941968,
		0.573276, -0.761679, -0.301994,
		0.817408, 0.557088, 0.146618,
		35.820194, 28.228970, 48.376537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.731148, 27.426287, 48.569397>,  <35.248009, 27.839008, 48.273907>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.731148, 27.426287, 48.569397> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.870071, 27.788609, 48.666470>,  <35.953426, 28.006002, 48.724712>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.870071, 27.788609, 48.666470>,  <35.731148, 27.426287, 48.569397>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.870071, 27.788609, 48.666470> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252283, -0.339504, 0.906140,
		0.903177, -0.253487, -0.346433,
		0.347310, 0.905804, 0.242682,
		35.974266, 28.060350, 48.739273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.379078, 27.266689, 48.879692>,  <35.731148, 27.426287, 48.569397>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.379078, 27.266689, 48.879692> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.311119, 27.641754, 49.000973>,  <36.270344, 27.866793, 49.073742>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.311119, 27.641754, 49.000973>,  <36.379078, 27.266689, 48.879692>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.311119, 27.641754, 49.000973> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177834, -0.273450, 0.945304,
		0.969284, 0.214521, -0.120290,
		-0.169894, 0.937660, 0.303200,
		36.260151, 27.923052, 49.091934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.968437, 27.489040, 49.387352>,  <36.379078, 27.266689, 48.879692>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.968437, 27.489040, 49.387352> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.658108, 27.728676, 49.466545>,  <36.471912, 27.872458, 49.514061>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.658108, 27.728676, 49.466545>,  <36.968437, 27.489040, 49.387352>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.658108, 27.728676, 49.466545> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117624, -0.170959, 0.978232,
		0.619893, 0.782220, 0.062166,
		-0.775820, 0.599087, 0.197985,
		36.425362, 27.908401, 49.525940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.088619, 27.880878, 50.002056>,  <36.968437, 27.489040, 49.387352>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.088619, 27.880878, 50.002056> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.689907, 27.912691, 49.997932>,  <36.450680, 27.931780, 49.995457>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.689907, 27.912691, 49.997932>,  <37.088619, 27.880878, 50.002056>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.689907, 27.912691, 49.997932> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027527, -0.218567, 0.975434,
		0.075327, 0.972575, 0.220052,
		-0.996779, 0.079534, -0.010308,
		36.390873, 27.936552, 49.994839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.981857, 28.248539, 50.603081>,  <37.088619, 27.880878, 50.002056>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.981857, 28.248539, 50.603081> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.627655, 28.100302, 50.490982>,  <36.415134, 28.011360, 50.423721>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.627655, 28.100302, 50.490982>,  <36.981857, 28.248539, 50.603081>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.627655, 28.100302, 50.490982> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225730, -0.184056, 0.956645,
		-0.406107, 0.910376, 0.079328,
		-0.885507, -0.370593, -0.280245,
		36.362003, 27.989124, 50.406910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.468102, 28.736803, 50.881496>,  <36.981857, 28.248539, 50.603081>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.468102, 28.736803, 50.881496> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.330830, 28.363300, 50.840855>,  <36.248466, 28.139198, 50.816467>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.330830, 28.363300, 50.840855>,  <36.468102, 28.736803, 50.881496>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.330830, 28.363300, 50.840855> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301158, 0.006923, 0.953549,
		-0.889681, 0.357836, -0.283585,
		-0.343178, -0.933759, -0.101606,
		36.227875, 28.083172, 50.810371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.888985, 28.732325, 51.177551>,  <36.468102, 28.736803, 50.881496>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.888985, 28.732325, 51.177551> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.958263, 28.338915, 51.198284>,  <35.999828, 28.102869, 51.210724>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.958263, 28.338915, 51.198284>,  <35.888985, 28.732325, 51.177551>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.958263, 28.338915, 51.198284> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512422, -0.045039, 0.857552,
		-0.841088, -0.175082, -0.511779,
		0.173192, -0.983523, 0.051835,
		36.010220, 28.043858, 51.213833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.352901, 28.610312, 51.594116>,  <35.888985, 28.732325, 51.177551>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.352901, 28.610312, 51.594116> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.571434, 28.275974, 51.615620>,  <35.702553, 28.075371, 51.628521>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.571434, 28.275974, 51.615620>,  <35.352901, 28.610312, 51.594116>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.571434, 28.275974, 51.615620> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392561, -0.198831, 0.897977,
		-0.739881, -0.511693, -0.436746,
		0.546327, -0.835845, 0.053759,
		35.735332, 28.025221, 51.631748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.868729, 29.197338, 51.493298>,  <35.352901, 28.610312, 51.594116>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.868729, 29.197338, 51.493298> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.546513, 29.434080, 51.504753>,  <34.353184, 29.576124, 51.511627>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.546513, 29.434080, 51.504753>,  <34.868729, 29.197338, 51.493298>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.546513, 29.434080, 51.504753> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215221, 0.337269, -0.916476,
		-0.552078, -0.732092, -0.399062,
		-0.805536, 0.591854, 0.028637,
		34.304852, 29.611637, 51.513344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.622154, 29.097538, 50.793118>,  <34.868729, 29.197338, 51.493298>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.622154, 29.097538, 50.793118> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.432774, 29.422501, 50.929260>,  <34.319145, 29.617477, 51.010948>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.432774, 29.422501, 50.929260>,  <34.622154, 29.097538, 50.793118>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.432774, 29.422501, 50.929260> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034337, 0.403140, -0.914494,
		-0.880152, -0.421279, -0.218761,
		-0.473448, 0.812405, 0.340359,
		34.290741, 29.666222, 51.031368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.997894, 29.145741, 50.420856>,  <34.622154, 29.097538, 50.793118>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.997894, 29.145741, 50.420856> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.144329, 29.485813, 50.572205>,  <34.232189, 29.689857, 50.663013>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.144329, 29.485813, 50.572205>,  <33.997894, 29.145741, 50.420856>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.144329, 29.485813, 50.572205> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166528, 0.340182, -0.925497,
		-0.915558, 0.401826, -0.017042,
		0.366091, 0.850184, 0.378372,
		34.254158, 29.740868, 50.685715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.702312, 29.584352, 49.911777>,  <33.997894, 29.145741, 50.420856>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.702312, 29.584352, 49.911777> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.994637, 29.789415, 50.092045>,  <34.170029, 29.912453, 50.200207>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.994637, 29.789415, 50.092045>,  <33.702312, 29.584352, 49.911777>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.994637, 29.789415, 50.092045> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130335, 0.543289, -0.829367,
		-0.670026, 0.664845, 0.330222,
		0.730807, 0.512658, 0.450670,
		34.213879, 29.943213, 50.227245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.550854, 30.260647, 49.767044>,  <33.702312, 29.584352, 49.911777>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.550854, 30.260647, 49.767044> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.942013, 30.217970, 49.838978>,  <34.176708, 30.192364, 49.882137>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.942013, 30.217970, 49.838978>,  <33.550854, 30.260647, 49.767044>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.942013, 30.217970, 49.838978> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209099, 0.501334, -0.839608,
		-0.000574, 0.858650, 0.512562,
		0.977894, -0.106695, 0.179831,
		34.235382, 30.185961, 49.892925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.801739, 30.823475, 49.465744>,  <33.550854, 30.260647, 49.767044>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.801739, 30.823475, 49.465744> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.128456, 30.606115, 49.543270>,  <34.324486, 30.475698, 49.589787>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.128456, 30.606115, 49.543270>,  <33.801739, 30.823475, 49.465744>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.128456, 30.606115, 49.543270> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455747, 0.401739, -0.794292,
		0.353756, 0.737103, 0.575791,
		0.816793, -0.543401, 0.193815,
		34.373493, 30.443094, 49.601414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.279537, 31.329536, 49.407894>,  <33.801739, 30.823475, 49.465744>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.279537, 31.329536, 49.407894> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.461288, 30.976480, 49.359753>,  <34.570339, 30.764647, 49.330868>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.461288, 30.976480, 49.359753>,  <34.279537, 31.329536, 49.407894>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.461288, 30.976480, 49.359753> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343899, 0.298436, -0.890320,
		0.821748, 0.363158, 0.439143,
		0.454383, -0.882639, -0.120350,
		34.597603, 30.711689, 49.323647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.250107, 31.902918, 49.753368>,  <34.279537, 31.329536, 49.407894>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.250107, 31.902918, 49.753368> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.284702, 32.299538, 49.714684>,  <34.305458, 32.537510, 49.691471>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.284702, 32.299538, 49.714684>,  <34.250107, 31.902918, 49.753368>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.284702, 32.299538, 49.714684> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227799, 0.114186, 0.966990,
		0.969859, -0.061604, 0.235750,
		0.086490, 0.991548, -0.096711,
		34.310650, 32.597000, 49.685669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.648888, 32.078888, 50.309532>,  <34.250107, 31.902918, 49.753368>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.648888, 32.078888, 50.309532> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.478973, 32.422737, 50.195965>,  <34.377026, 32.629047, 50.127827>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.478973, 32.422737, 50.195965>,  <34.648888, 32.078888, 50.309532>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.478973, 32.422737, 50.195965> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224829, 0.203620, 0.952885,
		0.876933, 0.468603, 0.106774,
		-0.424783, 0.859622, -0.283916,
		34.351540, 32.680622, 50.110790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.046608, 32.548885, 50.673145>,  <34.648888, 32.078888, 50.309532>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.046608, 32.548885, 50.673145> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.686829, 32.688625, 50.568115>,  <34.470963, 32.772469, 50.505096>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.686829, 32.688625, 50.568115>,  <35.046608, 32.548885, 50.673145>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.686829, 32.688625, 50.568115> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188744, 0.231374, 0.954381,
		0.394165, 0.907977, -0.142172,
		-0.899450, 0.349349, -0.262574,
		34.416992, 32.793430, 50.489342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.951736, 33.168365, 51.164597>,  <35.046608, 32.548885, 50.673145>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.951736, 33.168365, 51.164597> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.597256, 33.044109, 51.027100>,  <34.384567, 32.969555, 50.944603>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.597256, 33.044109, 51.027100>,  <34.951736, 33.168365, 51.164597>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.597256, 33.044109, 51.027100> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373499, 0.040007, 0.926767,
		-0.274139, 0.949685, -0.151479,
		-0.886197, -0.310641, -0.343739,
		34.331398, 32.950916, 50.923977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.398685, 33.619167, 51.394558>,  <34.951736, 33.168365, 51.164597>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.398685, 33.619167, 51.394558> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.244823, 33.260242, 51.307953>,  <34.152508, 33.044888, 51.255989>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.244823, 33.260242, 51.307953>,  <34.398685, 33.619167, 51.394558>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.244823, 33.260242, 51.307953> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450681, -0.022130, 0.892411,
		-0.805560, 0.440848, -0.395888,
		-0.384656, -0.897309, -0.216509,
		34.129425, 32.991051, 51.243000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.767567, 33.732265, 51.568886>,  <34.398685, 33.619167, 51.394558>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.767567, 33.732265, 51.568886> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.791004, 33.333004, 51.562481>,  <33.805065, 33.093449, 51.558640>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.791004, 33.333004, 51.562481>,  <33.767567, 33.732265, 51.568886>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.791004, 33.333004, 51.562481> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399346, -0.038135, 0.916007,
		-0.914926, -0.047277, -0.400843,
		0.058592, -0.998154, -0.016011,
		33.808582, 33.033558, 51.557678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.232559, 33.512035, 52.015408>,  <33.767567, 33.732265, 51.568886>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.232559, 33.512035, 52.015408> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.476208, 33.196758, 51.980251>,  <33.622398, 33.007591, 51.959160>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.476208, 33.196758, 51.980251>,  <33.232559, 33.512035, 52.015408>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.476208, 33.196758, 51.980251> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111205, -0.194607, 0.974557,
		-0.785241, -0.583851, -0.206190,
		0.609122, -0.788192, -0.087886,
		33.658943, 32.960300, 51.953884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.877777, 33.119137, 52.451702>,  <33.232559, 33.512035, 52.015408>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.877777, 33.119137, 52.451702> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.228668, 32.929668, 52.420437>,  <33.439201, 32.815987, 52.401676>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.228668, 32.929668, 52.420437>,  <32.877777, 33.119137, 52.451702>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.228668, 32.929668, 52.420437> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098547, -0.337020, 0.936326,
		-0.469852, -0.813668, -0.342322,
		0.877227, -0.473669, -0.078165,
		33.491837, 32.787567, 52.396988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.733059, 32.332474, 52.452152>,  <32.877777, 33.119137, 52.451702>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.733059, 32.332474, 52.452152> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.098320, 32.435875, 52.578220>,  <33.317474, 32.497917, 52.653862>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.098320, 32.435875, 52.578220>,  <32.733059, 32.332474, 52.452152>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.098320, 32.435875, 52.578220> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117997, -0.572442, 0.811410,
		0.390170, -0.778129, -0.492223,
		0.913151, 0.258507, 0.315167,
		33.372265, 32.513428, 52.672771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<36.137642, 34.764465, 37.184898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.476143, 34.643387, 37.360279>,  <36.679241, 34.570740, 37.465508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.476143, 34.643387, 37.360279>,  <36.137642, 34.764465, 37.184898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.476143, 34.643387, 37.360279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451103, 0.030815, 0.891940,
		-0.283494, -0.952590, -0.110468,
		0.846249, -0.302692, 0.438452,
		36.730019, 34.552578, 37.491814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.989491, 34.210079, 37.594807>,  <36.137642, 34.764465, 37.184898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.989491, 34.210079, 37.594807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.327896, 34.357346, 37.749062>,  <36.530937, 34.445705, 37.841614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.327896, 34.357346, 37.749062>,  <35.989491, 34.210079, 37.594807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.327896, 34.357346, 37.749062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440885, 0.076368, 0.894309,
		0.299808, -0.926617, 0.226929,
		0.846012, 0.368170, 0.385636,
		36.581699, 34.467796, 37.864754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.996571, 33.808716, 38.174206>,  <35.989491, 34.210079, 37.594807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.996571, 33.808716, 38.174206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.242229, 34.118374, 38.235546>,  <36.389626, 34.304169, 38.272350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.242229, 34.118374, 38.235546>,  <35.996571, 33.808716, 38.174206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.242229, 34.118374, 38.235546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320014, 0.066666, 0.945065,
		0.721398, -0.629483, 0.288681,
		0.614147, 0.774149, 0.153351,
		36.426476, 34.350620, 38.281551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.467464, 33.671207, 38.803005>,  <35.996571, 33.808716, 38.174206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.467464, 33.671207, 38.803005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.424931, 34.063835, 38.739487>,  <36.399410, 34.299412, 38.701374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.424931, 34.063835, 38.739487>,  <36.467464, 33.671207, 38.803005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.424931, 34.063835, 38.739487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376830, 0.108011, 0.919964,
		0.920159, 0.157666, 0.358398,
		-0.106336, 0.981568, -0.158801,
		36.393028, 34.358307, 38.691845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.720150, 33.848118, 39.418404>,  <36.467464, 33.671207, 38.803005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.720150, 33.848118, 39.418404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.522701, 34.168701, 39.283352>,  <36.404232, 34.361053, 39.202320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.522701, 34.168701, 39.283352>,  <36.720150, 33.848118, 39.418404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.522701, 34.168701, 39.283352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167592, 0.293281, 0.941222,
		0.853373, 0.521196, -0.010452,
		-0.493626, 0.801462, -0.337626,
		36.374615, 34.409142, 39.182064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.001266, 34.467613, 39.885109>,  <36.720150, 33.848118, 39.418404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.001266, 34.467613, 39.885109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.666611, 34.607979, 39.716873>,  <36.465816, 34.692200, 39.615932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.666611, 34.607979, 39.716873>,  <37.001266, 34.467613, 39.885109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.666611, 34.607979, 39.716873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208059, 0.506700, 0.836640,
		0.506700, 0.787473, -0.350915,
		-0.836640, 0.350915, -0.420585,
		36.415619, 34.713253, 39.590698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.873936, 35.271294, 40.165138>,  <37.001266, 34.467613, 39.885109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.873936, 35.271294, 40.165138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.522991, 35.151787, 40.014950>,  <36.312424, 35.080082, 39.924835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.522991, 35.151787, 40.014950>,  <36.873936, 35.271294, 40.165138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.522991, 35.151787, 40.014950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474631, 0.425425, 0.770544,
		-0.070477, 0.854255, -0.515055,
		-0.877358, -0.298767, -0.375474,
		36.259785, 35.062157, 39.902309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.387421, 35.844528, 40.134941>,  <36.873936, 35.271294, 40.165138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.387421, 35.844528, 40.134941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.154766, 35.519760, 40.115013>,  <36.015175, 35.324898, 40.103058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.154766, 35.519760, 40.115013>,  <36.387421, 35.844528, 40.134941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.154766, 35.519760, 40.115013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.571386, 0.364195, 0.735445,
		-0.578983, 0.456225, -0.675750,
		-0.581633, -0.811924, -0.049818,
		35.980278, 35.276184, 40.100067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.686069, 36.068939, 40.281910>,  <36.387421, 35.844528, 40.134941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.686069, 36.068939, 40.281910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.690338, 35.670746, 40.319630>,  <35.692898, 35.431828, 40.342262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.690338, 35.670746, 40.319630>,  <35.686069, 36.068939, 40.281910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.690338, 35.670746, 40.319630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.534521, 0.074022, 0.841908,
		-0.845088, -0.059391, -0.531318,
		0.010672, -0.995487, 0.094300,
		35.693539, 35.372101, 40.347919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.009193, 35.850052, 40.304199>,  <35.686069, 36.068939, 40.281910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.009193, 35.850052, 40.304199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.222725, 35.561867, 40.481266>,  <35.350842, 35.388954, 40.587505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.222725, 35.561867, 40.481266>,  <35.009193, 35.850052, 40.304199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.222725, 35.561867, 40.481266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.654005, -0.019938, 0.756228,
		-0.536011, -0.693203, -0.481832,
		0.533826, -0.720466, 0.442671,
		35.382874, 35.345726, 40.614067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.452808, 35.324310, 40.579086>,  <35.009193, 35.850052, 40.304199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.452808, 35.324310, 40.579086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.799088, 35.290165, 40.776379>,  <35.006855, 35.269676, 40.894753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.799088, 35.290165, 40.776379>,  <34.452808, 35.324310, 40.579086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.799088, 35.290165, 40.776379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500512, -0.161488, 0.850535,
		0.007049, -0.983176, -0.182525,
		0.865701, -0.085361, 0.493229,
		35.058800, 35.264557, 40.924347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.247532, 34.807430, 41.066841>,  <34.452808, 35.324310, 40.579086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.247532, 34.807430, 41.066841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.591839, 34.946533, 41.215511>,  <34.798424, 35.029995, 41.304714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.591839, 34.946533, 41.215511>,  <34.247532, 34.807430, 41.066841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.591839, 34.946533, 41.215511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370734, -0.071991, 0.925945,
		0.348765, -0.934815, 0.066960,
		0.860767, 0.347761, 0.371676,
		34.850067, 35.050861, 41.327015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.190804, 34.102932, 40.947918>,  <34.247532, 34.807430, 41.066841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.190804, 34.102932, 40.947918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.029888, 33.737545, 40.972404>,  <33.933338, 33.518314, 40.987095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.029888, 33.737545, 40.972404>,  <34.190804, 34.102932, 40.947918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.029888, 33.737545, 40.972404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421225, 0.125310, -0.898258,
		0.812857, -0.387141, -0.435184,
		-0.402285, -0.913466, 0.061214,
		33.909203, 33.463505, 40.990768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.447884, 33.821987, 40.276215>,  <34.190804, 34.102932, 40.947918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.447884, 33.821987, 40.276215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.119858, 33.636074, 40.409767>,  <33.923042, 33.524525, 40.489899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.119858, 33.636074, 40.409767>,  <34.447884, 33.821987, 40.276215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.119858, 33.636074, 40.409767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438813, 0.136203, -0.888196,
		0.367344, -0.874886, -0.315648,
		-0.820062, -0.464784, 0.333878,
		33.873840, 33.496639, 40.509930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.470684, 33.225853, 39.871147>,  <34.447884, 33.821987, 40.276215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.470684, 33.225853, 39.871147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.095310, 33.267548, 40.002888>,  <33.870087, 33.292564, 40.081932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.095310, 33.267548, 40.002888>,  <34.470684, 33.225853, 39.871147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.095310, 33.267548, 40.002888> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333772, -0.027756, -0.942245,
		-0.089078, -0.994165, 0.060840,
		-0.938435, 0.104240, 0.329352,
		33.813778, 33.298820, 40.101692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.010296, 32.721607, 39.611233>,  <34.470684, 33.225853, 39.871147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.010296, 32.721607, 39.611233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.760506, 33.011387, 39.727997>,  <33.610634, 33.185253, 39.798054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.760506, 33.011387, 39.727997>,  <34.010296, 32.721607, 39.611233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.760506, 33.011387, 39.727997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427447, -0.004186, -0.904031,
		-0.653701, -0.689318, 0.312277,
		-0.624471, 0.724447, 0.291911,
		33.573166, 33.228722, 39.815571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.359600, 32.545479, 39.597145>,  <34.010296, 32.721607, 39.611233>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.359600, 32.545479, 39.597145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.327110, 32.941227, 39.548889>,  <33.307617, 33.178677, 39.519936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.327110, 32.941227, 39.548889>,  <33.359600, 32.545479, 39.597145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.327110, 32.941227, 39.548889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330676, -0.140930, -0.933162,
		-0.940243, -0.035902, 0.338607,
		-0.081222, 0.989368, -0.120636,
		33.302742, 33.238037, 39.512699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.686291, 32.630859, 39.232777>,  <33.359600, 32.545479, 39.597145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.686291, 32.630859, 39.232777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.883480, 32.971767, 39.162800>,  <33.001793, 33.176311, 39.120815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.883480, 32.971767, 39.162800>,  <32.686291, 32.630859, 39.232777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.883480, 32.971767, 39.162800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347157, 0.008313, -0.937770,
		-0.797783, 0.523029, 0.299971,
		0.492975, 0.852274, -0.174941,
		33.031372, 33.227451, 39.110317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.274258, 32.973331, 38.853607>,  <32.686291, 32.630859, 39.232777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.274258, 32.973331, 38.853607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.606884, 33.184502, 38.784557>,  <32.806458, 33.311203, 38.743126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.606884, 33.184502, 38.784557>,  <32.274258, 32.973331, 38.853607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.606884, 33.184502, 38.784557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273781, 0.119171, -0.954380,
		-0.483269, 0.840888, 0.243634,
		0.831562, 0.527925, -0.172627,
		32.856354, 33.342880, 38.732769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.106255, 33.421032, 38.190735>,  <32.274258, 32.973331, 38.853607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.106255, 33.421032, 38.190735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.502110, 33.449120, 38.240845>,  <32.739620, 33.465973, 38.270912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.502110, 33.449120, 38.240845>,  <32.106255, 33.421032, 38.190735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.502110, 33.449120, 38.240845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111238, 0.176951, -0.977913,
		-0.090834, 0.981712, 0.167306,
		0.989634, 0.070217, 0.125276,
		32.799000, 33.470184, 38.278427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.224770, 33.898014, 37.805386>,  <32.106255, 33.421032, 38.190735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.224770, 33.898014, 37.805386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.574326, 33.706120, 37.836800>,  <32.784058, 33.590984, 37.855648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.574326, 33.706120, 37.836800>,  <32.224770, 33.898014, 37.805386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.574326, 33.706120, 37.836800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139142, 0.092052, -0.985985,
		0.465785, 0.872570, 0.147195,
		0.873890, -0.479738, 0.078535,
		32.836494, 33.562199, 37.860359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.652981, 34.276421, 37.387390>,  <32.224770, 33.898014, 37.805386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.652981, 34.276421, 37.387390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.853325, 33.934986, 37.444702>,  <32.973530, 33.730125, 37.479092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.853325, 33.934986, 37.444702>,  <32.652981, 34.276421, 37.387390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.853325, 33.934986, 37.444702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309693, 0.022155, -0.950579,
		0.808226, 0.520480, 0.275446,
		0.500860, -0.853586, 0.143282,
		33.003582, 33.678909, 37.487686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.363651, 34.330200, 36.960194>,  <32.652981, 34.276421, 37.387390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.363651, 34.330200, 36.960194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.255001, 33.948765, 37.012165>,  <33.189812, 33.719902, 37.043346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.255001, 33.948765, 37.012165>,  <33.363651, 34.330200, 36.960194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.255001, 33.948765, 37.012165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250331, -0.200359, -0.947201,
		0.929276, -0.224760, 0.293136,
		-0.271625, -0.953593, 0.129925,
		33.173512, 33.662685, 37.051144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.920166, 33.938442, 36.736191>,  <33.363651, 34.330200, 36.960194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.920166, 33.938442, 36.736191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.628445, 33.665771, 36.712753>,  <33.453411, 33.502171, 36.698692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.628445, 33.665771, 36.712753>,  <33.920166, 33.938442, 36.736191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.628445, 33.665771, 36.712753> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319702, -0.263814, -0.910051,
		0.604904, -0.682434, 0.410334,
		-0.729302, -0.681678, -0.058593,
		33.409653, 33.461269, 36.695175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.214256, 33.343803, 36.575520>,  <33.920166, 33.938442, 36.736191>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.214256, 33.343803, 36.575520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.831192, 33.280514, 36.479305>,  <33.601353, 33.242542, 36.421577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.831192, 33.280514, 36.479305>,  <34.214256, 33.343803, 36.575520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.831192, 33.280514, 36.479305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277432, -0.283795, -0.917873,
		0.076962, -0.945741, 0.315674,
		-0.957658, -0.158220, -0.240538,
		33.543896, 33.233047, 36.407143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.236118, 32.666302, 36.274517>,  <34.214256, 33.343803, 36.575520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.236118, 32.666302, 36.274517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.921181, 32.881828, 36.154675>,  <33.732216, 33.011143, 36.082767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.921181, 32.881828, 36.154675>,  <34.236118, 32.666302, 36.274517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.921181, 32.881828, 36.154675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258526, -0.152624, -0.953871,
		-0.559687, -0.828483, -0.019130,
		-0.787346, 0.538815, -0.299606,
		33.684978, 33.043472, 36.064793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.610909, 32.106812, 36.384178>,  <34.236118, 32.666302, 36.274517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.610909, 32.106812, 36.384178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.799843, 31.815102, 36.186169>,  <34.913204, 31.640074, 36.067364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.799843, 31.815102, 36.186169>,  <34.610909, 32.106812, 36.384178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.799843, 31.815102, 36.186169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232436, -0.438686, 0.868060,
		-0.850219, -0.525078, -0.037696,
		0.472336, -0.729279, -0.495026,
		34.941544, 31.596317, 36.037663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.382904, 31.514542, 36.639290>,  <34.610909, 32.106812, 36.384178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.382904, 31.514542, 36.639290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.764709, 31.483274, 36.524193>,  <34.993793, 31.464514, 36.455135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.764709, 31.483274, 36.524193>,  <34.382904, 31.514542, 36.639290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.764709, 31.483274, 36.524193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246146, -0.338083, 0.908357,
		-0.168287, -0.937864, -0.303463,
		0.954511, -0.078168, -0.287746,
		35.051064, 31.459824, 36.437870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.609249, 30.888214, 36.775520>,  <34.382904, 31.514542, 36.639290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.609249, 30.888214, 36.775520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.945915, 31.104210, 36.776360>,  <35.147915, 31.233809, 36.776863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.945915, 31.104210, 36.776360>,  <34.609249, 30.888214, 36.775520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.945915, 31.104210, 36.776360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206418, -0.325318, 0.922800,
		0.498986, -0.776259, -0.385273,
		0.841668, 0.539992, 0.002096,
		35.198414, 31.266207, 36.776989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.114708, 30.357372, 36.768021>,  <34.609249, 30.888214, 36.775520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.114708, 30.357372, 36.768021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.293213, 30.691971, 36.895222>,  <35.400314, 30.892729, 36.971542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.293213, 30.691971, 36.895222>,  <35.114708, 30.357372, 36.768021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.293213, 30.691971, 36.895222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270945, -0.464968, 0.842849,
		0.852902, -0.289967, -0.434141,
		0.446259, 0.836495, 0.318006,
		35.427090, 30.942919, 36.990623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.745022, 30.156549, 36.919605>,  <35.114708, 30.357372, 36.768021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.745022, 30.156549, 36.919605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.673073, 30.483385, 37.138699>,  <35.629902, 30.679485, 37.270153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.673073, 30.483385, 37.138699>,  <35.745022, 30.156549, 36.919605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.673073, 30.483385, 37.138699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208755, -0.512426, 0.832971,
		0.961283, 0.264175, -0.078397,
		-0.179877, 0.817087, 0.547734,
		35.619110, 30.728512, 37.303020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.365093, 30.245308, 37.338169>,  <35.745022, 30.156549, 36.919605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.365093, 30.245308, 37.338169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.068226, 30.444681, 37.517391>,  <35.890106, 30.564304, 37.624924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.068226, 30.444681, 37.517391>,  <36.365093, 30.245308, 37.338169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.068226, 30.444681, 37.517391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263022, -0.398282, 0.878744,
		0.616445, 0.770024, 0.164495,
		-0.742169, 0.498432, 0.448052,
		35.845573, 30.594212, 37.651806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.701950, 30.529535, 37.848026>,  <36.365093, 30.245308, 37.338169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.701950, 30.529535, 37.848026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.318584, 30.518311, 37.961628>,  <36.088566, 30.511576, 38.029789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.318584, 30.518311, 37.961628>,  <36.701950, 30.529535, 37.848026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.318584, 30.518311, 37.961628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261316, -0.486327, 0.833787,
		0.114723, 0.873326, 0.473434,
		-0.958412, -0.028061, 0.284007,
		36.031059, 30.509892, 38.046829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.636974, 30.836548, 38.534779>,  <36.701950, 30.529535, 37.848026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.636974, 30.836548, 38.534779> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.312603, 30.604071, 38.507622>,  <36.117981, 30.464584, 38.491325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.312603, 30.604071, 38.507622>,  <36.636974, 30.836548, 38.534779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.312603, 30.604071, 38.507622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187399, -0.367876, 0.910796,
		-0.554323, 0.725868, 0.407236,
		-0.810930, -0.581191, -0.067895,
		36.069324, 30.429714, 38.487251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.252048, 30.897705, 39.159256>,  <36.636974, 30.836548, 38.534779>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.252048, 30.897705, 39.159256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.075684, 30.572950, 39.006187>,  <35.969864, 30.378098, 38.914345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.075684, 30.572950, 39.006187>,  <36.252048, 30.897705, 39.159256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.075684, 30.572950, 39.006187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018468, -0.418055, 0.908234,
		-0.897361, 0.407518, 0.169331,
		-0.440911, -0.811886, -0.382672,
		35.943409, 30.329384, 38.891384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.464016, 30.866842, 39.404812>,  <36.252048, 30.897705, 39.159256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.464016, 30.866842, 39.404812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.607628, 30.499155, 39.340149>,  <35.693794, 30.278542, 39.301350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.607628, 30.499155, 39.340149>,  <35.464016, 30.866842, 39.404812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.607628, 30.499155, 39.340149> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004355, -0.174856, 0.984585,
		-0.933317, -0.352790, -0.066782,
		0.359029, -0.919220, -0.161659,
		35.715336, 30.223389, 39.291653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.124077, 30.489910, 39.827232>,  <35.464016, 30.866842, 39.404812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.124077, 30.489910, 39.827232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.411587, 30.236782, 39.712059>,  <35.584091, 30.084906, 39.642956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.411587, 30.236782, 39.712059>,  <35.124077, 30.489910, 39.827232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.411587, 30.236782, 39.712059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027144, -0.388292, 0.921136,
		-0.694716, -0.669903, -0.261916,
		0.718772, -0.632818, -0.287937,
		35.627220, 30.046936, 39.625679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.922661, 29.699413, 40.080479>,  <35.124077, 30.489910, 39.827232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.922661, 29.699413, 40.080479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.316208, 29.691198, 40.009403>,  <35.552338, 29.686270, 39.966759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.316208, 29.691198, 40.009403>,  <34.922661, 29.699413, 40.080479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.316208, 29.691198, 40.009403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165414, -0.273614, 0.947509,
		-0.068081, -0.961620, -0.265804,
		0.983872, -0.020539, -0.177693,
		35.611370, 29.685036, 39.956097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.184864, 29.131128, 40.303368>,  <34.922661, 29.699413, 40.080479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.184864, 29.131128, 40.303368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.513847, 29.358540, 40.310829>,  <35.711235, 29.494986, 40.315308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.513847, 29.358540, 40.310829>,  <35.184864, 29.131128, 40.303368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.513847, 29.358540, 40.310829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193669, -0.310703, 0.930568,
		0.534848, -0.761736, -0.365645,
		0.822454, 0.568526, 0.018654,
		35.760582, 29.529097, 40.316425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.754681, 28.723551, 40.659576>,  <35.184864, 29.131128, 40.303368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.754681, 28.723551, 40.659576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.867744, 29.107199, 40.654018>,  <35.935581, 29.337387, 40.650684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.867744, 29.107199, 40.654018>,  <35.754681, 28.723551, 40.659576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.867744, 29.107199, 40.654018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341494, -0.087080, 0.935842,
		0.896373, -0.269272, -0.352147,
		0.282661, 0.959119, -0.013899,
		35.952541, 29.394934, 40.649849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.303307, 28.763363, 41.094639>,  <35.754681, 28.723551, 40.659576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.303307, 28.763363, 41.094639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.209309, 29.151409, 41.070454>,  <36.152908, 29.384237, 41.055943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.209309, 29.151409, 41.070454>,  <36.303307, 28.763363, 41.094639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.209309, 29.151409, 41.070454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253140, 0.121145, 0.959815,
		0.938454, 0.210248, -0.274043,
		-0.234998, 0.970113, -0.060466,
		36.138809, 29.442444, 41.052315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.788567, 29.129890, 41.529819>,  <36.303307, 28.763363, 41.094639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.788567, 29.129890, 41.529819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.478020, 29.380863, 41.505890>,  <36.291691, 29.531446, 41.491531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.478020, 29.380863, 41.505890>,  <36.788567, 29.129890, 41.529819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.478020, 29.380863, 41.505890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058260, 0.165956, 0.984411,
		0.627578, 0.760782, -0.165397,
		-0.776371, 0.627430, -0.059827,
		36.245110, 29.569092, 41.487942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.966888, 29.655622, 41.992237>,  <36.788567, 29.129890, 41.529819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.966888, 29.655622, 41.992237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.580708, 29.738516, 41.929035>,  <36.348999, 29.788252, 41.891113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.580708, 29.738516, 41.929035>,  <36.966888, 29.655622, 41.992237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.580708, 29.738516, 41.929035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136893, 0.112621, 0.984163,
		0.221746, 0.971788, -0.080361,
		-0.965448, 0.207234, -0.158004,
		36.291073, 29.800686, 41.881634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.827282, 30.253139, 42.364471>,  <36.966888, 29.655622, 41.992237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.827282, 30.253139, 42.364471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.471577, 30.081417, 42.301346>,  <36.258152, 29.978384, 42.263470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.471577, 30.081417, 42.301346>,  <36.827282, 30.253139, 42.364471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.471577, 30.081417, 42.301346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131701, -0.090084, 0.987188,
		-0.438024, 0.898654, 0.023568,
		-0.889263, -0.429308, -0.157813,
		36.204796, 29.952625, 42.254002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.480545, 30.652779, 42.824059>,  <36.827282, 30.253139, 42.364471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.480545, 30.652779, 42.824059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.264442, 30.324635, 42.749088>,  <36.134781, 30.127748, 42.704105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.264442, 30.324635, 42.749088>,  <36.480545, 30.652779, 42.824059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.264442, 30.324635, 42.749088> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222790, -0.075343, 0.971951,
		-0.811472, 0.566861, -0.142063,
		-0.540257, -0.820361, -0.187430,
		36.102364, 30.078526, 42.692860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.754280, 30.683201, 43.084026>,  <36.480545, 30.652779, 42.824059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.754280, 30.683201, 43.084026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.840553, 30.292778, 43.072758>,  <35.892315, 30.058525, 43.065998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.840553, 30.292778, 43.072758>,  <35.754280, 30.683201, 43.084026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.840553, 30.292778, 43.072758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188012, -0.069821, 0.979682,
		-0.958193, -0.206001, -0.198569,
		0.215680, -0.976058, -0.028171,
		35.905258, 29.999960, 43.064308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.302639, 30.375566, 43.541428>,  <35.754280, 30.683201, 43.084026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.302639, 30.375566, 43.541428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.564571, 30.078701, 43.484314>,  <35.721729, 29.900581, 43.450047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.564571, 30.078701, 43.484314>,  <35.302639, 30.375566, 43.541428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.564571, 30.078701, 43.484314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001661, -0.190334, 0.981718,
		-0.755774, -0.642621, -0.125869,
		0.654830, -0.742166, -0.142783,
		35.761021, 29.856050, 43.441479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.204521, 29.847950, 44.141403>,  <35.302639, 30.375566, 43.541428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.204521, 29.847950, 44.141403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.562668, 29.730169, 44.007767>,  <35.777557, 29.659500, 43.927586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.562668, 29.730169, 44.007767>,  <35.204521, 29.847950, 44.141403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.562668, 29.730169, 44.007767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260010, -0.263396, 0.928987,
		-0.361541, -0.918651, -0.159275,
		0.895368, -0.294454, -0.334087,
		35.831280, 29.641834, 43.907539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.237701, 29.209019, 44.309055>,  <35.204521, 29.847950, 44.141403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.237701, 29.209019, 44.309055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.612476, 29.336931, 44.252647>,  <35.837341, 29.413679, 44.218803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.612476, 29.336931, 44.252647>,  <35.237701, 29.209019, 44.309055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.612476, 29.336931, 44.252647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181253, -0.099621, 0.978378,
		0.298819, -0.942239, -0.151300,
		0.936939, 0.319782, -0.141015,
		35.893559, 29.432865, 44.210342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.708191, 28.614323, 44.510807>,  <35.237701, 29.209019, 44.309055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.708191, 28.614323, 44.510807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.910912, 28.956125, 44.556370>,  <36.032543, 29.161207, 44.583706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.910912, 28.956125, 44.556370>,  <35.708191, 28.614323, 44.510807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.910912, 28.956125, 44.556370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247739, -0.270922, 0.930176,
		0.825699, -0.443196, -0.348997,
		0.506801, 0.854505, 0.113903,
		36.062950, 29.212477, 44.590542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.247452, 28.400040, 44.845387>,  <35.708191, 28.614323, 44.510807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.247452, 28.400040, 44.845387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.244778, 28.795389, 44.906147>,  <36.243172, 29.032598, 44.942604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.244778, 28.795389, 44.906147>,  <36.247452, 28.400040, 44.845387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.244778, 28.795389, 44.906147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295176, -0.143182, 0.944654,
		0.955420, 0.051153, -0.290787,
		-0.006686, 0.988374, 0.151898,
		36.242771, 29.091902, 44.951717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.796257, 28.491468, 45.285320>,  <36.247452, 28.400040, 44.845387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.796257, 28.491468, 45.285320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.619736, 28.847984, 45.326988>,  <36.513821, 29.061893, 45.351990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.619736, 28.847984, 45.326988>,  <36.796257, 28.491468, 45.285320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.619736, 28.847984, 45.326988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108004, -0.062483, 0.992185,
		0.890834, 0.449108, -0.068688,
		-0.441306, 0.891290, 0.104167,
		36.487343, 29.115372, 45.358238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.222347, 28.867098, 45.675632>,  <36.796257, 28.491468, 45.285320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.222347, 28.867098, 45.675632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.867199, 29.044121, 45.725967>,  <36.654110, 29.150335, 45.756168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.867199, 29.044121, 45.725967>,  <37.222347, 28.867098, 45.675632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.867199, 29.044121, 45.725967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123854, -0.033514, 0.991734,
		0.443116, 0.896114, -0.025056,
		-0.887867, 0.442557, 0.125838,
		36.600838, 29.176888, 45.763718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.380531, 29.392923, 46.292625>,  <37.222347, 28.867098, 45.675632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.380531, 29.392923, 46.292625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.993279, 29.305773, 46.243233>,  <36.760925, 29.253483, 46.213596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.993279, 29.305773, 46.243233>,  <37.380531, 29.392923, 46.292625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.993279, 29.305773, 46.243233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105141, -0.093885, 0.990016,
		-0.227295, 0.971450, 0.067985,
		-0.968133, -0.217878, -0.123479,
		36.702839, 29.240410, 46.206188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.660332, 30.028099, 46.488010>,  <37.380531, 29.392923, 46.292625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.660332, 30.028099, 46.488010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.052948, 29.954937, 46.465652>,  <38.288517, 29.911039, 46.452236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.052948, 29.954937, 46.465652>,  <37.660332, 30.028099, 46.488010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.052948, 29.954937, 46.465652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101032, -0.247724, -0.963549,
		0.162392, 0.951409, -0.261630,
		0.981540, -0.182906, -0.055895,
		38.347408, 29.900064, 46.448883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.915943, 30.363789, 45.898510>,  <37.660332, 30.028099, 46.488010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.915943, 30.363789, 45.898510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.181526, 30.070768, 45.958546>,  <38.340878, 29.894957, 45.994568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.181526, 30.070768, 45.958546>,  <37.915943, 30.363789, 45.898510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.181526, 30.070768, 45.958546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088343, -0.122461, -0.988534,
		0.742530, 0.669607, -0.016594,
		0.663961, -0.732550, 0.150086,
		38.380714, 29.851004, 46.003571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.438969, 30.518764, 45.541298>,  <37.915943, 30.363789, 45.898510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.438969, 30.518764, 45.541298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.525341, 30.133228, 45.603764>,  <38.577164, 29.901907, 45.641243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.525341, 30.133228, 45.603764>,  <38.438969, 30.518764, 45.541298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.525341, 30.133228, 45.603764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227742, -0.105809, -0.967956,
		0.949476, 0.244580, 0.196659,
		0.215935, -0.963839, 0.156164,
		38.590122, 29.844076, 45.650612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.137814, 30.391317, 45.321018>,  <38.438969, 30.518764, 45.541298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.137814, 30.391317, 45.321018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.957172, 30.034920, 45.339691>,  <38.848785, 29.821081, 45.350895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.957172, 30.034920, 45.339691>,  <39.137814, 30.391317, 45.321018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.957172, 30.034920, 45.339691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257668, -0.180334, -0.949256,
		0.854201, -0.416661, 0.311021,
		-0.451605, -0.890996, 0.046681,
		38.821690, 29.767620, 45.353695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.540264, 30.125372, 44.960632>,  <39.137814, 30.391317, 45.321018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.540264, 30.125372, 44.960632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.246426, 29.854010, 44.955978>,  <39.070122, 29.691193, 44.953186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.246426, 29.854010, 44.955978>,  <39.540264, 30.125372, 44.960632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.246426, 29.854010, 44.955978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283409, -0.291209, -0.913716,
		0.616482, -0.674509, 0.406187,
		-0.734594, -0.678406, -0.011637,
		39.026047, 29.650488, 44.952488>
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
