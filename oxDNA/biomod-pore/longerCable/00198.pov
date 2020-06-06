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
	<24.239573, 34.483891, 35.131233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.453419, 34.813118, 35.054554>,  <24.581726, 35.010654, 35.008545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.453419, 34.813118, 35.054554>,  <24.239573, 34.483891, 35.131233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.453419, 34.813118, 35.054554> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.711145, -0.315598, 0.628228,
		0.456572, -0.472188, -0.754043,
		0.534616, 0.823065, -0.191701,
		24.613804, 35.060036, 34.997044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.892120, 34.204559, 34.815788>,  <24.239573, 34.483891, 35.131233>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.892120, 34.204559, 34.815788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.916374, 34.575161, 34.964340>,  <24.930925, 34.797520, 35.053471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.916374, 34.575161, 34.964340>,  <24.892120, 34.204559, 34.815788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.916374, 34.575161, 34.964340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.843851, -0.246307, 0.476706,
		0.533141, 0.284482, -0.796763,
		0.060634, 0.926500, 0.371377,
		24.934565, 34.853111, 35.075752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.612375, 34.416130, 34.783817>,  <24.892120, 34.204559, 34.815788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.612375, 34.416130, 34.783817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.426247, 34.638897, 35.059010>,  <25.314569, 34.772556, 35.224125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.426247, 34.638897, 35.059010>,  <25.612375, 34.416130, 34.783817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.426247, 34.638897, 35.059010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.868796, 0.138676, 0.475356,
		0.169326, 0.818911, -0.548373,
		-0.465320, 0.556914, 0.687985,
		25.286650, 34.805973, 35.265404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.911272, 35.046856, 34.755901>,  <25.612375, 34.416130, 34.783817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.911272, 35.046856, 34.755901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.771679, 34.991081, 35.126579>,  <25.687923, 34.957615, 35.348988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.771679, 34.991081, 35.126579>,  <25.911272, 35.046856, 34.755901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.771679, 34.991081, 35.126579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.927264, 0.091719, 0.363000,
		-0.135613, 0.985974, 0.097290,
		-0.348985, -0.139441, 0.926696,
		25.666983, 34.949249, 35.404587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.306948, 35.138165, 35.394207>,  <25.911272, 35.046856, 34.755901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.306948, 35.138165, 35.394207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.700167, 35.200317, 35.355282>,  <26.936098, 35.237610, 35.331928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.700167, 35.200317, 35.355282>,  <26.306948, 35.138165, 35.394207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.700167, 35.200317, 35.355282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165223, 0.520757, -0.837564,
		-0.079465, 0.839445, 0.537603,
		0.983050, 0.155382, -0.097314,
		26.995081, 35.246933, 35.326088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.417728, 35.848492, 35.297398>,  <26.306948, 35.138165, 35.394207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.417728, 35.848492, 35.297398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.674292, 35.639000, 35.073147>,  <26.828230, 35.513306, 34.938599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.674292, 35.639000, 35.073147>,  <26.417728, 35.848492, 35.297398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.674292, 35.639000, 35.073147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215774, 0.578096, -0.786922,
		0.736232, 0.625706, 0.257788,
		0.641408, -0.523733, -0.560624,
		26.866714, 35.481880, 34.904961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.947458, 36.289585, 34.971676>,  <26.417728, 35.848492, 35.297398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.947458, 36.289585, 34.971676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.978367, 35.951298, 34.760475>,  <26.996912, 35.748325, 34.633755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.978367, 35.951298, 34.760475>,  <26.947458, 36.289585, 34.971676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.978367, 35.951298, 34.760475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008902, 0.528982, -0.848586,
		0.996970, 0.070274, 0.033348,
		0.077274, -0.845719, -0.528005,
		27.001549, 35.697582, 34.602074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.472332, 36.512638, 34.464058>,  <26.947458, 36.289585, 34.971676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.472332, 36.512638, 34.464058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.266298, 36.205486, 34.311718>,  <27.142677, 36.021194, 34.220314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.266298, 36.205486, 34.311718>,  <27.472332, 36.512638, 34.464058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.266298, 36.205486, 34.311718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183452, 0.532795, -0.826121,
		0.837277, -0.355655, -0.415304,
		-0.515085, -0.767880, -0.380851,
		27.111773, 35.975121, 34.197464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.675873, 36.326752, 33.823776>,  <27.472332, 36.512638, 34.464058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.675873, 36.326752, 33.823776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.290607, 36.219212, 33.821445>,  <27.059448, 36.154690, 33.820045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.290607, 36.219212, 33.821445>,  <27.675873, 36.326752, 33.823776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.290607, 36.219212, 33.821445> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147033, 0.544658, -0.825669,
		0.225152, -0.794399, -0.564125,
		-0.963166, -0.268846, -0.005828,
		27.001657, 36.138557, 33.819698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.517948, 36.122128, 33.086494>,  <27.675873, 36.326752, 33.823776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.517948, 36.122128, 33.086494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.169159, 36.197453, 33.267250>,  <26.959885, 36.242645, 33.375702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.169159, 36.197453, 33.267250>,  <27.517948, 36.122128, 33.086494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.169159, 36.197453, 33.267250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376772, 0.331233, -0.865059,
		-0.312580, -0.924567, -0.217876,
		-0.871973, 0.188310, 0.451888,
		26.907566, 36.253944, 33.402817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.956186, 35.960442, 32.535156>,  <27.517948, 36.122128, 33.086494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.956186, 35.960442, 32.535156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.734142, 36.170792, 32.792931>,  <26.600916, 36.297001, 32.947598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.734142, 36.170792, 32.792931>,  <26.956186, 35.960442, 32.535156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.734142, 36.170792, 32.792931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.515139, 0.390944, -0.762754,
		-0.653056, -0.755390, 0.053884,
		-0.555111, 0.525879, 0.644439,
		26.567610, 36.328556, 32.986263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.233160, 35.895737, 32.391914>,  <26.956186, 35.960442, 32.535156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.233160, 35.895737, 32.391914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.294977, 36.244858, 32.577099>,  <26.332067, 36.454330, 32.688210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.294977, 36.244858, 32.577099>,  <26.233160, 35.895737, 32.391914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.294977, 36.244858, 32.577099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416876, 0.482441, -0.770367,
		-0.895729, -0.073943, 0.438407,
		0.154543, 0.872802, 0.462962,
		26.341339, 36.506699, 32.715988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.006855, 36.503143, 32.066799>,  <26.233160, 35.895737, 32.391914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.006855, 36.503143, 32.066799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.012012, 36.901100, 32.026752>,  <26.015106, 37.139874, 32.002724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.012012, 36.901100, 32.026752>,  <26.006855, 36.503143, 32.066799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.012012, 36.901100, 32.026752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112101, 0.100931, 0.988558,
		0.993613, -0.001523, 0.112830,
		0.012894, 0.994892, -0.100115,
		26.015881, 37.199570, 31.996717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.635830, 36.821167, 32.329220>,  <26.006855, 36.503143, 32.066799>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.635830, 36.821167, 32.329220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.315886, 37.058666, 32.364300>,  <26.123919, 37.201164, 32.385349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.315886, 37.058666, 32.364300>,  <26.635830, 36.821167, 32.329220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.315886, 37.058666, 32.364300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032171, -0.188328, 0.981579,
		0.599325, 0.782303, 0.169738,
		-0.799859, 0.593746, 0.087702,
		26.075928, 37.236790, 32.390610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.882166, 37.348873, 32.793041>,  <26.635830, 36.821167, 32.329220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.882166, 37.348873, 32.793041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.517086, 37.188961, 32.759205>,  <26.298038, 37.093014, 32.738903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.517086, 37.188961, 32.759205>,  <26.882166, 37.348873, 32.793041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.517086, 37.188961, 32.759205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031152, -0.274481, 0.961088,
		-0.407440, 0.874550, 0.262973,
		-0.912701, -0.399777, -0.084591,
		26.243277, 37.069027, 32.733829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.549616, 37.451397, 33.478767>,  <26.882166, 37.348873, 32.793041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.549616, 37.451397, 33.478767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.390396, 37.151180, 33.267769>,  <26.294865, 36.971050, 33.141171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.390396, 37.151180, 33.267769>,  <26.549616, 37.451397, 33.478767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.390396, 37.151180, 33.267769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043506, -0.589805, 0.806373,
		-0.916332, 0.298026, 0.267424,
		-0.398048, -0.750540, -0.527492,
		26.270983, 36.926018, 33.109520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.136866, 37.031223, 33.943455>,  <26.549616, 37.451397, 33.478767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.136866, 37.031223, 33.943455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.224916, 36.801067, 33.628376>,  <26.277746, 36.662975, 33.439327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.224916, 36.801067, 33.628376>,  <26.136866, 37.031223, 33.943455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.224916, 36.801067, 33.628376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184537, -0.768363, 0.612833,
		-0.957857, -0.280260, -0.062956,
		0.220126, -0.575389, -0.787701,
		26.290955, 36.628452, 33.392067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.706741, 36.429192, 33.871880>,  <26.136866, 37.031223, 33.943455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.706741, 36.429192, 33.871880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.078070, 36.366028, 33.737247>,  <26.300867, 36.328129, 33.656467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.078070, 36.366028, 33.737247>,  <25.706741, 36.429192, 33.871880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.078070, 36.366028, 33.737247> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134389, -0.701581, 0.699803,
		-0.346645, -0.694874, -0.630070,
		0.928319, -0.157908, -0.336583,
		26.356565, 36.318657, 33.636272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.852783, 35.640972, 33.765022>,  <25.706741, 36.429192, 33.871880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.852783, 35.640972, 33.765022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.216843, 35.803738, 33.796143>,  <26.435278, 35.901398, 33.814816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.216843, 35.803738, 33.796143>,  <25.852783, 35.640972, 33.765022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.216843, 35.803738, 33.796143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248989, -0.687377, 0.682289,
		0.331108, -0.601613, -0.726932,
		0.910149, 0.406909, 0.077801,
		26.489887, 35.925812, 33.819485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.322664, 35.049835, 33.720829>,  <25.852783, 35.640972, 33.765022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.322664, 35.049835, 33.720829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.553665, 35.335957, 33.878223>,  <26.692265, 35.507629, 33.972660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.553665, 35.335957, 33.878223>,  <26.322664, 35.049835, 33.720829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.553665, 35.335957, 33.878223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416565, -0.672701, 0.611512,
		0.702116, -0.189236, -0.686457,
		0.577500, 0.715306, 0.393485,
		26.726915, 35.550549, 33.996269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.953590, 34.797123, 33.657707>,  <26.322664, 35.049835, 33.720829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.953590, 34.797123, 33.657707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.914469, 35.070393, 33.947178>,  <26.890995, 35.234356, 34.120861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.914469, 35.070393, 33.947178>,  <26.953590, 34.797123, 33.657707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.914469, 35.070393, 33.947178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323600, -0.665814, 0.672291,
		0.941126, 0.299933, -0.155957,
		-0.097804, 0.683178, 0.723673,
		26.885128, 35.275345, 34.164280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.578192, 34.952137, 34.014000>,  <26.953590, 34.797123, 33.657707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.578192, 34.952137, 34.014000> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.252542, 35.006927, 34.239723>,  <27.057154, 35.039803, 34.375156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.252542, 35.006927, 34.239723>,  <27.578192, 34.952137, 34.014000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.252542, 35.006927, 34.239723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340724, -0.674230, 0.655226,
		0.470224, 0.725707, 0.502234,
		-0.814123, 0.136979, 0.564304,
		27.008305, 35.048023, 34.409016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.768637, 35.024082, 34.683842>,  <27.578192, 34.952137, 34.014000>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.768637, 35.024082, 34.683842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.406315, 34.862705, 34.735607>,  <27.188921, 34.765877, 34.766666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.406315, 34.862705, 34.735607>,  <27.768637, 35.024082, 34.683842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.406315, 34.862705, 34.735607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356237, -0.559850, 0.748106,
		-0.229368, 0.723741, 0.650837,
		-0.905807, -0.403444, 0.129412,
		27.134573, 34.741673, 34.774429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.814152, 35.457188, 35.346798>,  <27.768637, 35.024082, 34.683842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.814152, 35.457188, 35.346798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.942787, 35.748528, 35.588818>,  <28.019968, 35.923332, 35.734032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.942787, 35.748528, 35.588818>,  <27.814152, 35.457188, 35.346798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.942787, 35.748528, 35.588818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.790643, -0.145056, 0.594846,
		0.521022, -0.669676, 0.529216,
		0.321588, 0.728350, 0.605053,
		28.039263, 35.967033, 35.770332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.093906, 35.209454, 36.109474>,  <27.814152, 35.457188, 35.346798>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.093906, 35.209454, 36.109474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.919287, 35.569302, 36.113503>,  <27.814516, 35.785210, 36.115921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.919287, 35.569302, 36.113503>,  <28.093906, 35.209454, 36.109474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.919287, 35.569302, 36.113503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.590113, -0.294772, 0.751583,
		0.679112, 0.322157, 0.659562,
		-0.436548, 0.899624, 0.010074,
		27.788322, 35.839188, 36.116524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.670706, 35.006016, 36.601479>,  <28.093906, 35.209454, 36.109474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.670706, 35.006016, 36.601479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.767315, 35.385044, 36.517780>,  <28.825281, 35.612461, 36.467564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.767315, 35.385044, 36.517780>,  <28.670706, 35.006016, 36.601479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.767315, 35.385044, 36.517780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475816, 0.303568, 0.825497,
		0.845733, -0.099816, 0.524187,
		0.241524, 0.947567, -0.209243,
		28.839771, 35.669315, 36.455006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.861027, 35.364227, 37.236156>,  <28.670706, 35.006016, 36.601479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.861027, 35.364227, 37.236156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.725121, 35.650711, 36.992321>,  <28.643578, 35.822601, 36.846020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.725121, 35.650711, 36.992321>,  <28.861027, 35.364227, 37.236156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.725121, 35.650711, 36.992321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.610223, 0.325331, 0.722349,
		0.715673, 0.617415, 0.326512,
		-0.339765, 0.716211, -0.609591,
		28.623192, 35.865574, 36.809444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.909369, 36.114029, 37.369816>,  <28.861027, 35.364227, 37.236156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.909369, 36.114029, 37.369816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.565262, 36.134964, 37.166954>,  <28.358799, 36.147526, 37.045238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.565262, 36.134964, 37.166954>,  <28.909369, 36.114029, 37.369816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.565262, 36.134964, 37.166954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467746, 0.314787, 0.825907,
		0.202870, 0.947718, -0.246320,
		-0.860266, 0.052336, -0.507152,
		28.307182, 36.150665, 37.014809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.555967, 36.638336, 37.641521>,  <28.909369, 36.114029, 37.369816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.555967, 36.638336, 37.641521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.252447, 36.495945, 37.423347>,  <28.070335, 36.410511, 37.292442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.252447, 36.495945, 37.423347>,  <28.555967, 36.638336, 37.641521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.252447, 36.495945, 37.423347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.617102, 0.125047, 0.776884,
		-0.208348, 0.926090, -0.314560,
		-0.758799, -0.355978, -0.545438,
		28.024807, 36.389153, 37.259716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.974833, 37.087078, 37.784775>,  <28.555967, 36.638336, 37.641521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.974833, 37.087078, 37.784775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.806431, 36.751289, 37.647343>,  <27.705391, 36.549816, 37.564884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.806431, 36.751289, 37.647343>,  <27.974833, 37.087078, 37.784775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.806431, 36.751289, 37.647343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.699914, 0.059717, 0.711727,
		-0.576955, 0.540115, -0.612697,
		-0.421003, -0.839469, -0.343580,
		27.680130, 36.499447, 37.544270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.210804, 37.136333, 37.760258>,  <27.974833, 37.087078, 37.784775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.210804, 37.136333, 37.760258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.240301, 36.737698, 37.775085>,  <27.257999, 36.498516, 37.783981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.240301, 36.737698, 37.775085>,  <27.210804, 37.136333, 37.760258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.240301, 36.737698, 37.775085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.837392, -0.041689, 0.545011,
		-0.541606, -0.071232, -0.837609,
		0.073741, -0.996588, 0.037070,
		27.262424, 36.438721, 37.786205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.574333, 36.860073, 37.660931>,  <27.210804, 37.136333, 37.760258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.574333, 36.860073, 37.660931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.779554, 36.602459, 37.887909>,  <26.902687, 36.447891, 38.024097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.779554, 36.602459, 37.887909>,  <26.574333, 36.860073, 37.660931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.779554, 36.602459, 37.887909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.662625, 0.123059, 0.738772,
		-0.545623, -0.755036, -0.363616,
		0.513053, -0.644032, 0.567450,
		26.933470, 36.409248, 38.058144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.105877, 36.358860, 37.880001>,  <26.574333, 36.860073, 37.660931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.105877, 36.358860, 37.880001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.413000, 36.370514, 38.136009>,  <26.597275, 36.377506, 38.289612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.413000, 36.370514, 38.136009>,  <26.105877, 36.358860, 37.880001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.413000, 36.370514, 38.136009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.640035, -0.009958, 0.768281,
		0.028768, -0.999525, 0.011011,
		0.767807, 0.029149, 0.640018,
		26.643343, 36.379257, 38.328014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.934202, 35.949371, 38.436268>,  <26.105877, 36.358860, 37.880001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.934202, 35.949371, 38.436268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.233006, 36.171719, 38.582138>,  <26.412289, 36.305126, 38.669659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.233006, 36.171719, 38.582138>,  <25.934202, 35.949371, 38.436268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.233006, 36.171719, 38.582138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480627, 0.072571, 0.873917,
		0.459319, -0.828096, 0.321377,
		0.747010, 0.555869, 0.364672,
		26.457108, 36.338478, 38.691540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.369518, 35.644276, 39.123421>,  <25.934202, 35.949371, 38.436268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.369518, 35.644276, 39.123421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.348957, 36.043655, 39.131889>,  <26.336620, 36.283283, 39.136971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.348957, 36.043655, 39.131889>,  <26.369518, 35.644276, 39.123421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.348957, 36.043655, 39.131889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467127, -0.042776, 0.883155,
		0.882695, 0.035508, 0.468604,
		-0.051404, 0.998454, 0.021172,
		26.333536, 36.343193, 39.138241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.969389, 35.930084, 39.615578>,  <26.369518, 35.644276, 39.123421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.969389, 35.930084, 39.615578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.601419, 36.077106, 39.560963>,  <26.380638, 36.165321, 39.528194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.601419, 36.077106, 39.560963>,  <26.969389, 35.930084, 39.615578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.601419, 36.077106, 39.560963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225313, -0.210558, 0.951262,
		0.320892, 0.905853, 0.276513,
		-0.919925, 0.367555, -0.136533,
		26.325441, 36.187374, 39.520004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.290405, 36.619438, 39.299728>,  <26.969389, 35.930084, 39.615578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.290405, 36.619438, 39.299728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.986311, 36.416843, 39.136997>,  <26.803854, 36.295288, 39.039356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.986311, 36.416843, 39.136997>,  <27.290405, 36.619438, 39.299728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.986311, 36.416843, 39.136997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531552, -0.124932, -0.837761,
		0.373488, -0.853149, 0.364202,
		-0.760236, -0.506486, -0.406833,
		26.758240, 36.264896, 39.014946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.620794, 36.018204, 39.067196>,  <27.290405, 36.619438, 39.299728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.620794, 36.018204, 39.067196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.297087, 36.124878, 38.857830>,  <27.102861, 36.188881, 38.732212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.297087, 36.124878, 38.857830>,  <27.620794, 36.018204, 39.067196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.297087, 36.124878, 38.857830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411256, -0.379023, -0.828981,
		-0.419468, -0.886124, 0.197053,
		-0.809268, 0.266692, -0.523412,
		27.054306, 36.204884, 38.700806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.588949, 35.475937, 38.643555>,  <27.620794, 36.018204, 39.067196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.588949, 35.475937, 38.643555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.386982, 35.756546, 38.442387>,  <27.265802, 35.924911, 38.321686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.386982, 35.756546, 38.442387>,  <27.588949, 35.475937, 38.643555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.386982, 35.756546, 38.442387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461796, -0.272705, -0.844024,
		-0.729248, -0.658409, -0.186266,
		-0.504917, 0.701520, -0.502920,
		27.235506, 35.967003, 38.291512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.510969, 35.205601, 37.953304>,  <27.588949, 35.475937, 38.643555>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.510969, 35.205601, 37.953304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.428986, 35.590862, 37.883648>,  <27.379795, 35.822018, 37.841854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.428986, 35.590862, 37.883648>,  <27.510969, 35.205601, 37.953304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.428986, 35.590862, 37.883648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483319, -0.055116, -0.873708,
		-0.851114, -0.263238, -0.454215,
		-0.204958, 0.963155, -0.174138,
		27.367498, 35.879810, 37.831406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.389647, 35.229454, 37.224514>,  <27.510969, 35.205601, 37.953304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.389647, 35.229454, 37.224514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.475260, 35.607330, 37.323914>,  <27.526628, 35.834057, 37.383553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.475260, 35.607330, 37.323914>,  <27.389647, 35.229454, 37.224514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.475260, 35.607330, 37.323914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521288, 0.104675, -0.846937,
		-0.826104, 0.310812, -0.470052,
		0.214035, 0.944690, 0.248495,
		27.539471, 35.890736, 37.398460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.082043, 35.807053, 36.732586>,  <27.389647, 35.229454, 37.224514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.082043, 35.807053, 36.732586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.407120, 35.965229, 36.903774>,  <27.602165, 36.060135, 37.006485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.407120, 35.965229, 36.903774>,  <27.082043, 35.807053, 36.732586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.407120, 35.965229, 36.903774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336115, 0.281821, -0.898668,
		-0.475984, 0.874186, 0.096118,
		0.812691, 0.395444, 0.427969,
		27.650927, 36.083862, 37.032166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.176571, 36.509010, 36.447269>,  <27.082043, 35.807053, 36.732586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.176571, 36.509010, 36.447269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.518633, 36.357388, 36.588707>,  <27.723869, 36.266415, 36.673569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.518633, 36.357388, 36.588707>,  <27.176571, 36.509010, 36.447269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.518633, 36.357388, 36.588707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468463, 0.273089, -0.840217,
		0.221928, 0.884160, 0.411107,
		0.855155, -0.379056, 0.353590,
		27.775179, 36.243671, 36.694782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.884060, 36.924931, 36.464664>,  <27.176571, 36.509010, 36.447269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.884060, 36.924931, 36.464664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.005348, 36.545044, 36.433430>,  <28.078121, 36.317112, 36.414688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.005348, 36.545044, 36.433430>,  <27.884060, 36.924931, 36.464664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.005348, 36.545044, 36.433430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.633022, 0.262002, -0.728449,
		0.712279, 0.171450, 0.680635,
		0.303221, -0.949716, -0.078087,
		28.096313, 36.260128, 36.410004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.586992, 36.897861, 36.554005>,  <27.884060, 36.924931, 36.464664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.586992, 36.897861, 36.554005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.422800, 36.619408, 36.318409>,  <28.324284, 36.452335, 36.177052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.422800, 36.619408, 36.318409>,  <28.586992, 36.897861, 36.554005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.422800, 36.619408, 36.318409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511180, 0.359210, -0.780809,
		0.755116, -0.621587, 0.208399,
		-0.410482, -0.696131, -0.588988,
		28.299656, 36.410568, 36.141712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.124626, 36.513035, 36.049618>,  <28.586992, 36.897861, 36.554005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.124626, 36.513035, 36.049618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.754354, 36.507294, 35.898403>,  <28.532192, 36.503849, 35.807674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.754354, 36.507294, 35.898403>,  <29.124626, 36.513035, 36.049618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.754354, 36.507294, 35.898403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334227, 0.437116, -0.834998,
		0.177227, -0.899290, -0.399834,
		-0.925679, -0.014349, -0.378036,
		28.476650, 36.502991, 35.784992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.977016, 36.107704, 35.306099>,  <29.124626, 36.513035, 36.049618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.977016, 36.107704, 35.306099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.807146, 36.451504, 35.419884>,  <28.705225, 36.657784, 35.488155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.807146, 36.451504, 35.419884>,  <28.977016, 36.107704, 35.306099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.807146, 36.451504, 35.419884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295778, 0.428681, -0.853667,
		-0.855668, -0.278392, -0.436270,
		-0.424675, 0.859494, 0.284466,
		28.679743, 36.709351, 35.505222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.625299, 35.908672, 35.201279>,  <28.977016, 36.107704, 35.306099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.625299, 35.908672, 35.201279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.980108, 35.765572, 35.318039>,  <30.192993, 35.679710, 35.388096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.980108, 35.765572, 35.318039>,  <29.625299, 35.908672, 35.201279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.980108, 35.765572, 35.318039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052720, 0.706526, 0.705721,
		-0.458708, -0.610601, 0.645564,
		0.887022, -0.357754, 0.291898,
		30.246214, 35.658245, 35.405609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.689579, 35.647503, 35.977531>,  <29.625299, 35.908672, 35.201279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.689579, 35.647503, 35.977531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.997534, 35.836231, 35.805641>,  <30.182306, 35.949467, 35.702507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.997534, 35.836231, 35.805641>,  <29.689579, 35.647503, 35.977531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.997534, 35.836231, 35.805641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131799, 0.541285, 0.830445,
		0.624425, -0.695984, 0.354541,
		0.769884, 0.471823, -0.429722,
		30.228498, 35.977779, 35.676723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.285902, 35.656193, 36.398357>,  <29.689579, 35.647503, 35.977531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.285902, 35.656193, 36.398357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.316353, 35.974689, 36.158291>,  <30.334623, 36.165787, 36.014252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.316353, 35.974689, 36.158291>,  <30.285902, 35.656193, 36.398357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.316353, 35.974689, 36.158291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236111, 0.570400, 0.786700,
		0.968740, -0.201593, -0.144580,
		0.076125, 0.796244, -0.600167,
		30.339190, 36.213562, 35.978241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.990097, 35.994038, 36.448048>,  <30.285902, 35.656193, 36.398357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.990097, 35.994038, 36.448048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.691736, 36.247772, 36.366810>,  <30.512720, 36.400013, 36.318066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.691736, 36.247772, 36.366810>,  <30.990097, 35.994038, 36.448048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.691736, 36.247772, 36.366810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327074, 0.614465, 0.717952,
		0.580217, 0.469096, -0.665805,
		-0.745902, 0.634336, -0.203094,
		30.467966, 36.438072, 36.305882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.158224, 35.521000, 35.868763>,  <30.990097, 35.994038, 36.448048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.158224, 35.521000, 35.868763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.970360, 35.266048, 35.624413>,  <30.857641, 35.113079, 35.477802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.970360, 35.266048, 35.624413>,  <31.158224, 35.521000, 35.868763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.970360, 35.266048, 35.624413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.825890, -0.561708, -0.048890,
		-0.311972, -0.527477, 0.790216,
		-0.469659, -0.637379, -0.610876,
		30.829462, 35.074837, 35.441151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.655056, 35.254887, 35.354767>,  <31.158224, 35.521000, 35.868763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.655056, 35.254887, 35.354767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.877188, 35.352036, 35.036617>,  <32.010468, 35.410324, 34.845726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.877188, 35.352036, 35.036617>,  <31.655056, 35.254887, 35.354767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.877188, 35.352036, 35.036617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.802236, 0.408474, -0.435392,
		0.219147, 0.879866, 0.421676,
		0.555330, 0.242868, -0.795376,
		32.043785, 35.424896, 34.798004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.575094, 36.063770, 35.040939>,  <31.655056, 35.254887, 35.354767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.575094, 36.063770, 35.040939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.700348, 35.799431, 34.768112>,  <31.775501, 35.640827, 34.604416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.700348, 35.799431, 34.768112>,  <31.575094, 36.063770, 35.040939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.700348, 35.799431, 34.768112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497365, 0.497715, -0.710568,
		0.809057, 0.561743, -0.172831,
		0.313136, -0.660851, -0.682072,
		31.794289, 35.601177, 34.563492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.764021, 36.468365, 34.395744>,  <31.575094, 36.063770, 35.040939>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.764021, 36.468365, 34.395744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.638054, 36.092312, 34.343636>,  <31.562473, 35.866680, 34.312370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.638054, 36.092312, 34.343636>,  <31.764021, 36.468365, 34.395744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.638054, 36.092312, 34.343636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.696783, 0.322203, -0.640842,
		0.644454, -0.111038, -0.756538,
		-0.314917, -0.940136, -0.130275,
		31.543579, 35.810272, 34.304554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.655130, 36.533001, 33.738007>,  <31.764021, 36.468365, 34.395744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.655130, 36.533001, 33.738007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.464018, 36.202065, 33.856148>,  <31.349350, 36.003502, 33.927032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.464018, 36.202065, 33.856148>,  <31.655130, 36.533001, 33.738007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.464018, 36.202065, 33.856148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.825312, 0.307550, -0.473576,
		0.300974, -0.470021, -0.829756,
		-0.477781, -0.827341, 0.295349,
		31.320684, 35.953861, 33.944752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.356281, 36.237469, 33.202610>,  <31.655130, 36.533001, 33.738007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.356281, 36.237469, 33.202610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.142118, 36.073917, 33.498222>,  <31.013620, 35.975788, 33.675591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.142118, 36.073917, 33.498222>,  <31.356281, 36.237469, 33.202610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.142118, 36.073917, 33.498222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.823160, 0.056740, -0.564967,
		0.189070, -0.910824, -0.366951,
		-0.535406, -0.408877, 0.739026,
		30.981497, 35.951256, 33.719929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.997192, 35.637959, 32.920094>,  <31.356281, 36.237469, 33.202610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.997192, 35.637959, 32.920094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.829445, 35.804569, 33.242741>,  <30.728796, 35.904537, 33.436329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.829445, 35.804569, 33.242741>,  <30.997192, 35.637959, 32.920094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.829445, 35.804569, 33.242741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.878207, 0.038928, -0.476693,
		-0.229958, -0.908287, 0.349476,
		-0.419370, 0.416532, 0.806616,
		30.703634, 35.929527, 33.484726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.387650, 35.272686, 33.052799>,  <30.997192, 35.637959, 32.920094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.387650, 35.272686, 33.052799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.360392, 35.652802, 33.174328>,  <30.344038, 35.880871, 33.247246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.360392, 35.652802, 33.174328>,  <30.387650, 35.272686, 33.052799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.360392, 35.652802, 33.174328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.932432, 0.047656, -0.358190,
		-0.354863, -0.307701, 0.882832,
		-0.068143, 0.950289, 0.303822,
		30.339949, 35.937889, 33.265472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.716637, 35.426895, 33.416229>,  <30.387650, 35.272686, 33.052799>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.716637, 35.426895, 33.416229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.841200, 35.780891, 33.277771>,  <29.915937, 35.993290, 33.194695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.841200, 35.780891, 33.277771>,  <29.716637, 35.426895, 33.416229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.841200, 35.780891, 33.277771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.929980, 0.208937, -0.302460,
		-0.195350, 0.416102, 0.888086,
		0.311408, 0.884989, -0.346151,
		29.934622, 36.046387, 33.173927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.475670, 36.059547, 33.794415>,  <29.716637, 35.426895, 33.416229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.475670, 36.059547, 33.794415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.543034, 36.193882, 33.423717>,  <29.583452, 36.274483, 33.201298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.543034, 36.193882, 33.423717>,  <29.475670, 36.059547, 33.794415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.543034, 36.193882, 33.423717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.961350, 0.263712, -0.079134,
		0.217817, 0.904253, 0.367264,
		0.168409, 0.335832, -0.926745,
		29.593555, 36.294632, 33.145695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.151125, 36.487892, 33.918285>,  <29.475670, 36.059547, 33.794415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.151125, 36.487892, 33.918285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.127514, 36.123775, 33.754395>,  <30.113346, 35.905304, 33.656059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.127514, 36.123775, 33.754395>,  <30.151125, 36.487892, 33.918285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.127514, 36.123775, 33.754395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480478, -0.385681, 0.787649,
		-0.875018, -0.150370, 0.460144,
		-0.059030, -0.910296, -0.409727,
		30.109804, 35.850685, 33.631477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.903728, 36.032593, 34.474464>,  <30.151125, 36.487892, 33.918285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.903728, 36.032593, 34.474464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.131842, 35.860741, 34.194408>,  <30.268709, 35.757629, 34.026375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.131842, 35.860741, 34.194408>,  <29.903728, 36.032593, 34.474464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.131842, 35.860741, 34.194408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.680323, -0.230647, 0.695675,
		-0.460366, -0.873053, 0.160752,
		0.570284, -0.429628, -0.700140,
		30.302927, 35.731853, 33.984367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.281122, 35.437347, 34.729412>,  <29.903728, 36.032593, 34.474464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.281122, 35.437347, 34.729412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.489132, 35.531422, 34.400959>,  <30.613937, 35.587864, 34.203888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.489132, 35.531422, 34.400959>,  <30.281122, 35.437347, 34.729412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.489132, 35.531422, 34.400959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.835519, -0.339760, 0.431822,
		-0.177433, -0.910633, -0.373182,
		0.520024, 0.235181, -0.821136,
		30.645140, 35.601974, 34.154617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.722490, 34.880657, 34.460995>,  <30.281122, 35.437347, 34.729412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.722490, 34.880657, 34.460995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.886385, 35.202221, 34.288559>,  <30.984722, 35.395161, 34.185097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.886385, 35.202221, 34.288559>,  <30.722490, 34.880657, 34.460995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.886385, 35.202221, 34.288559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.912195, -0.359071, 0.197402,
		0.003902, -0.474122, -0.880451,
		0.409737, 0.803913, -0.431091,
		31.009306, 35.443394, 34.159233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.115509, 34.653702, 33.887646>,  <30.722490, 34.880657, 34.460995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.115509, 34.653702, 33.887646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.249102, 34.994919, 34.048035>,  <31.329258, 35.199650, 34.144268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.249102, 34.994919, 34.048035>,  <31.115509, 34.653702, 33.887646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.249102, 34.994919, 34.048035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.869601, -0.442979, 0.218091,
		0.363663, 0.275849, -0.889751,
		0.333981, 0.853040, 0.400974,
		31.349297, 35.250832, 34.168327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.682264, 34.908150, 33.445877>,  <31.115509, 34.653702, 33.887646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.682264, 34.908150, 33.445877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.677515, 34.981945, 33.838982>,  <31.674665, 35.026222, 34.074844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.677515, 34.981945, 33.838982>,  <31.682264, 34.908150, 33.445877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.677515, 34.981945, 33.838982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.870430, -0.481826, 0.100968,
		0.492148, 0.856626, -0.154863,
		-0.011875, 0.184489, 0.982763,
		31.673952, 35.037292, 34.133812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.188553, 34.515945, 33.076721>,  <31.682264, 34.908150, 33.445877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.188553, 34.515945, 33.076721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.298996, 34.742470, 32.766094>,  <31.365263, 34.878384, 32.579720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.298996, 34.742470, 32.766094>,  <31.188553, 34.515945, 33.076721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.298996, 34.742470, 32.766094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262681, -0.821676, -0.505812,
		-0.924533, -0.064329, -0.375633,
		0.276110, 0.566312, -0.776565,
		31.381828, 34.912365, 32.533123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.951340, 34.090881, 32.477627>,  <31.188553, 34.515945, 33.076721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.951340, 34.090881, 32.477627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.234203, 34.347221, 32.358135>,  <31.403921, 34.501026, 32.286442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.234203, 34.347221, 32.358135>,  <30.951340, 34.090881, 32.477627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.234203, 34.347221, 32.358135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280875, -0.642341, -0.713097,
		-0.648873, 0.420368, -0.634235,
		0.707158, 0.640851, -0.298727,
		31.446350, 34.539478, 32.268517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.764771, 34.181156, 31.653278>,  <30.951340, 34.090881, 32.477627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.764771, 34.181156, 31.653278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.135229, 34.314747, 31.723381>,  <31.357504, 34.394901, 31.765442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.135229, 34.314747, 31.723381>,  <30.764771, 34.181156, 31.653278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.135229, 34.314747, 31.723381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345280, -0.563767, -0.750299,
		-0.151778, 0.755399, -0.637445,
		0.926146, 0.333976, 0.175256,
		31.413073, 34.414940, 31.775957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.095709, 34.294437, 31.067616>,  <30.764771, 34.181156, 31.653278>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.095709, 34.294437, 31.067616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.411074, 34.235260, 31.306454>,  <31.600292, 34.199753, 31.449757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.411074, 34.235260, 31.306454>,  <31.095709, 34.294437, 31.067616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.411074, 34.235260, 31.306454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455673, -0.511600, -0.728442,
		0.413245, 0.846390, -0.335935,
		0.788410, -0.147948, 0.597093,
		31.647596, 34.190876, 31.485582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.705225, 34.270420, 30.676477>,  <31.095709, 34.294437, 31.067616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.705225, 34.270420, 30.676477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.825609, 34.075813, 31.004559>,  <31.897839, 33.959049, 31.201406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.825609, 34.075813, 31.004559>,  <31.705225, 34.270420, 30.676477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.825609, 34.075813, 31.004559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556191, -0.609097, -0.565378,
		0.774645, 0.626344, 0.087280,
		0.300959, -0.486512, 0.820201,
		31.915897, 33.929859, 31.250618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.368122, 34.012543, 30.449604>,  <31.705225, 34.270420, 30.676477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.368122, 34.012543, 30.449604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.257042, 33.794029, 30.765694>,  <32.190395, 33.662922, 30.955347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.257042, 33.794029, 30.765694>,  <32.368122, 34.012543, 30.449604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.257042, 33.794029, 30.765694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279932, -0.832897, -0.477410,
		0.918978, 0.088633, 0.384219,
		-0.277700, -0.546284, 0.790225,
		32.173733, 33.630142, 31.002762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.887444, 33.672947, 30.834929>,  <32.368122, 34.012543, 30.449604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.887444, 33.672947, 30.834929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.567360, 33.444965, 30.909569>,  <32.375309, 33.308178, 30.954353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.567360, 33.444965, 30.909569>,  <32.887444, 33.672947, 30.834929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.567360, 33.444965, 30.909569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486046, -0.798612, -0.354933,
		0.351317, -0.193324, 0.916080,
		-0.800210, -0.569951, 0.186602,
		32.327297, 33.273979, 30.965549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.136059, 33.087299, 30.937498>,  <32.887444, 33.672947, 30.834929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.136059, 33.087299, 30.937498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.756054, 33.009922, 30.839478>,  <32.528049, 32.963497, 30.780666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.756054, 33.009922, 30.839478>,  <33.136059, 33.087299, 30.937498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.756054, 33.009922, 30.839478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293289, -0.822001, -0.488155,
		-0.107002, -0.535626, 0.837649,
		-0.950017, -0.193439, -0.245049,
		32.471050, 32.951889, 30.765963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.089336, 32.391659, 31.044470>,  <33.136059, 33.087299, 30.937498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.089336, 32.391659, 31.044470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.761715, 32.478642, 30.832109>,  <32.565140, 32.530830, 30.704693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.761715, 32.478642, 30.832109>,  <33.089336, 32.391659, 31.044470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.761715, 32.478642, 30.832109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214029, -0.742760, -0.634428,
		-0.532294, -0.633262, 0.561821,
		-0.819057, 0.217456, -0.530903,
		32.515999, 32.543877, 30.672838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.893631, 31.722446, 30.746704>,  <33.089336, 32.391659, 31.044470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.893631, 31.722446, 30.746704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.705521, 31.991449, 30.518118>,  <32.592655, 32.152851, 30.380966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.705521, 31.991449, 30.518118>,  <32.893631, 31.722446, 30.746704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.705521, 31.991449, 30.518118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156805, -0.573561, -0.804015,
		-0.868476, -0.467719, 0.164280,
		-0.470278, 0.672507, -0.571465,
		32.564438, 32.193203, 30.346678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.385487, 31.375563, 30.368103>,  <32.893631, 31.722446, 30.746704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.385487, 31.375563, 30.368103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.478928, 31.711073, 30.171375>,  <32.534992, 31.912380, 30.053339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.478928, 31.711073, 30.171375>,  <32.385487, 31.375563, 30.368103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.478928, 31.711073, 30.171375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171880, -0.533469, -0.828171,
		-0.957021, 0.108926, -0.268786,
		0.233599, 0.838776, -0.491819,
		32.549007, 31.962706, 30.023830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.184662, 31.171757, 29.765039>,  <32.385487, 31.375563, 30.368103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.184662, 31.171757, 29.765039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.369209, 31.515657, 29.677435>,  <32.479939, 31.721998, 29.624872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.369209, 31.515657, 29.677435>,  <32.184662, 31.171757, 29.765039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.369209, 31.515657, 29.677435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154987, -0.321161, -0.934256,
		-0.873567, 0.397090, -0.281423,
		0.461366, 0.859753, -0.219012,
		32.507618, 31.773582, 29.611731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.918484, 31.359800, 29.194984>,  <32.184662, 31.171757, 29.765039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.918484, 31.359800, 29.194984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.249413, 31.583149, 29.170443>,  <32.447968, 31.717157, 29.155718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.249413, 31.583149, 29.170443>,  <31.918484, 31.359800, 29.194984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.249413, 31.583149, 29.170443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174193, -0.358859, -0.916993,
		-0.534040, 0.747959, -0.394156,
		0.827320, 0.558370, -0.061356,
		32.497608, 31.750660, 29.152037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.821672, 31.672073, 28.573851>,  <31.918484, 31.359800, 29.194984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.821672, 31.672073, 28.573851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.210300, 31.713272, 28.659122>,  <32.443478, 31.737991, 28.710285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.210300, 31.713272, 28.659122>,  <31.821672, 31.672073, 28.573851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.210300, 31.713272, 28.659122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234007, -0.280922, -0.930765,
		-0.035977, 0.954188, -0.297037,
		0.971569, 0.102995, 0.213180,
		32.501770, 31.744171, 28.723076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.151386, 32.149902, 28.054359>,  <31.821672, 31.672073, 28.573851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.151386, 32.149902, 28.054359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.438595, 31.914335, 28.202749>,  <32.610920, 31.772995, 28.291782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.438595, 31.914335, 28.202749>,  <32.151386, 32.149902, 28.054359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.438595, 31.914335, 28.202749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172686, -0.365598, -0.914614,
		0.674261, 0.720772, -0.160809,
		0.718019, -0.588919, 0.370975,
		32.653999, 31.737659, 28.314041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.732735, 32.260067, 27.626122>,  <32.151386, 32.149902, 28.054359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.732735, 32.260067, 27.626122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.768528, 31.904572, 27.805958>,  <32.790005, 31.691275, 27.913860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.768528, 31.904572, 27.805958>,  <32.732735, 32.260067, 27.626122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.768528, 31.904572, 27.805958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342562, -0.396400, -0.851773,
		0.935224, 0.230236, 0.268976,
		0.089486, -0.888740, 0.449593,
		32.795372, 31.637949, 27.940836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.181831, 32.065742, 27.214535>,  <32.732735, 32.260067, 27.626122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.181831, 32.065742, 27.214535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.059143, 31.743006, 27.416496>,  <32.985531, 31.549364, 27.537674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.059143, 31.743006, 27.416496>,  <33.181831, 32.065742, 27.214535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.059143, 31.743006, 27.416496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236214, -0.578404, -0.780802,
		0.922023, -0.120221, 0.367995,
		-0.306718, -0.806843, 0.504904,
		32.967129, 31.500954, 27.567968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.772182, 31.522976, 27.190306>,  <33.181831, 32.065742, 27.214535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.772182, 31.522976, 27.190306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.418709, 31.351122, 27.264614>,  <33.206623, 31.248011, 27.309198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.418709, 31.351122, 27.264614>,  <33.772182, 31.522976, 27.190306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.418709, 31.351122, 27.264614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078256, -0.526902, -0.846316,
		0.461488, -0.733342, 0.499238,
		-0.883689, -0.429633, 0.185770,
		33.153603, 31.222233, 27.320345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.786606, 30.909124, 26.950493>,  <33.772182, 31.522976, 27.190306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.786606, 30.909124, 26.950493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.391014, 30.939131, 27.001562>,  <33.153660, 30.957134, 27.032204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.391014, 30.939131, 27.001562>,  <33.786606, 30.909124, 26.950493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.391014, 30.939131, 27.001562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148076, -0.507078, -0.849085,
		0.001043, -0.858629, 0.512596,
		-0.988975, 0.075017, 0.127671,
		33.094322, 30.961636, 27.039864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.478516, 30.262903, 26.898626>,  <33.786606, 30.909124, 26.950493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.478516, 30.262903, 26.898626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.218685, 30.546032, 26.787603>,  <33.062786, 30.715908, 26.720989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.218685, 30.546032, 26.787603>,  <33.478516, 30.262903, 26.898626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.218685, 30.546032, 26.787603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053748, -0.406905, -0.911888,
		-0.758392, -0.577425, 0.302361,
		-0.649579, 0.707820, -0.277557,
		33.023811, 30.758377, 26.704336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.970013, 29.762039, 26.581305>,  <33.478516, 30.262903, 26.898626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.970013, 29.762039, 26.581305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.897640, 30.135975, 26.459099>,  <32.854218, 30.360336, 26.385777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.897640, 30.135975, 26.459099>,  <32.970013, 29.762039, 26.581305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.897640, 30.135975, 26.459099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205648, -0.339734, -0.917763,
		-0.961754, -0.103228, 0.253717,
		-0.180935, 0.934839, -0.305512,
		32.843361, 30.416428, 26.367445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.569653, 29.578926, 26.162008>,  <32.970013, 29.762039, 26.581305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.569653, 29.578926, 26.162008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.640530, 29.960518, 26.065241>,  <32.683056, 30.189474, 26.007181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.640530, 29.960518, 26.065241>,  <32.569653, 29.578926, 26.162008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.640530, 29.960518, 26.065241> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283860, -0.185821, -0.940688,
		-0.942351, 0.235354, 0.237870,
		0.177194, 0.953980, -0.241917,
		32.693687, 30.246712, 25.992666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.939148, 29.806864, 25.887690>,  <32.569653, 29.578926, 26.162008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.939148, 29.806864, 25.887690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.227661, 30.050898, 25.756510>,  <32.400768, 30.197317, 25.677803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.227661, 30.050898, 25.756510>,  <31.939148, 29.806864, 25.887690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.227661, 30.050898, 25.756510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307812, -0.141818, -0.940818,
		-0.620486, 0.779543, 0.085499,
		0.721283, 0.610082, -0.327948,
		32.444046, 30.233923, 25.658125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.604555, 30.198767, 25.348696>,  <31.939148, 29.806864, 25.887690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.604555, 30.198767, 25.348696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.995518, 30.272577, 25.307457>,  <32.230095, 30.316864, 25.282713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.995518, 30.272577, 25.307457>,  <31.604555, 30.198767, 25.348696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.995518, 30.272577, 25.307457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107715, 0.015153, -0.994066,
		-0.181868, 0.982711, 0.034687,
		0.977405, 0.184525, -0.103097,
		32.288738, 30.327934, 25.276527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.604937, 30.744335, 24.929068>,  <31.604555, 30.198767, 25.348696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.604937, 30.744335, 24.929068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.945972, 30.539442, 24.887682>,  <32.150593, 30.416506, 24.862850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.945972, 30.539442, 24.887682>,  <31.604937, 30.744335, 24.929068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.945972, 30.539442, 24.887682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089624, 0.051729, -0.994631,
		0.514836, 0.857287, -0.001804,
		0.852591, -0.512234, -0.103465,
		32.201748, 30.385773, 24.856642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.795036, 30.892035, 24.295279>,  <31.604937, 30.744335, 24.929068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.795036, 30.892035, 24.295279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.026760, 30.572214, 24.358673>,  <32.165794, 30.380322, 24.396709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.026760, 30.572214, 24.358673>,  <31.795036, 30.892035, 24.295279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.026760, 30.572214, 24.358673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115383, -0.112037, -0.986983,
		0.806898, 0.590057, 0.027350,
		0.579312, -0.799550, 0.158485,
		32.200554, 30.332350, 24.406218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.446110, 30.875526, 23.762560>,  <31.795036, 30.892035, 24.295279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.446110, 30.875526, 23.762560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.365955, 30.516392, 23.919397>,  <32.317863, 30.300911, 24.013500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.365955, 30.516392, 23.919397>,  <32.446110, 30.875526, 23.762560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.365955, 30.516392, 23.919397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048439, -0.408801, -0.911337,
		0.978519, -0.163626, 0.125408,
		-0.200386, -0.897836, 0.392093,
		32.305840, 30.247042, 24.037025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.893360, 30.426357, 23.393017>,  <32.446110, 30.875526, 23.762560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.893360, 30.426357, 23.393017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.624092, 30.179897, 23.556578>,  <32.462532, 30.032021, 23.654715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.624092, 30.179897, 23.556578>,  <32.893360, 30.426357, 23.393017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.624092, 30.179897, 23.556578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033335, -0.527105, -0.849146,
		0.738736, -0.585251, 0.334292,
		-0.673170, -0.616151, 0.408900,
		32.422142, 29.995052, 23.679247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.162594, 29.680864, 23.277697>,  <32.893360, 30.426357, 23.393017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.162594, 29.680864, 23.277697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.763596, 29.679520, 23.305979>,  <32.524197, 29.678713, 23.322948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.763596, 29.679520, 23.305979>,  <33.162594, 29.680864, 23.277697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.763596, 29.679520, 23.305979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057569, -0.542688, -0.837959,
		0.041188, -0.839927, 0.541134,
		-0.997491, -0.003361, 0.070706,
		32.464348, 29.678511, 23.327190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.863892, 28.929789, 23.385452>,  <33.162594, 29.680864, 23.277697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.863892, 28.929789, 23.385452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.566559, 29.150576, 23.234304>,  <32.388161, 29.283049, 23.143616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.566559, 29.150576, 23.234304>,  <32.863892, 28.929789, 23.385452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.566559, 29.150576, 23.234304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068176, -0.499440, -0.863662,
		-0.665439, -0.667749, 0.333620,
		-0.743333, 0.551969, -0.377871,
		32.343559, 29.316166, 23.120943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.341984, 28.455032, 23.169682>,  <32.863892, 28.929789, 23.385452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.341984, 28.455032, 23.169682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.290543, 28.799917, 22.973701>,  <32.259678, 29.006847, 22.856113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.290543, 28.799917, 22.973701>,  <32.341984, 28.455032, 23.169682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.290543, 28.799917, 22.973701> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084641, -0.482709, -0.871681,
		-0.988077, -0.153571, -0.010900,
		-0.128603, 0.862211, -0.489952,
		32.251961, 29.058580, 22.826715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.862335, 28.360025, 22.649729>,  <32.341984, 28.455032, 23.169682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.862335, 28.360025, 22.649729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.074368, 28.671278, 22.514956>,  <32.201588, 28.858030, 22.434092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.074368, 28.671278, 22.514956>,  <31.862335, 28.360025, 22.649729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.074368, 28.671278, 22.514956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039938, -0.374001, -0.926568,
		-0.847005, 0.504614, -0.167174,
		0.530082, 0.778131, -0.336934,
		32.233391, 28.904716, 22.413876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.464239, 28.431725, 22.021963>,  <31.862335, 28.360025, 22.649729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.464239, 28.431725, 22.021963> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.794567, 28.654451, 21.986240>,  <31.992764, 28.788088, 21.964808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.794567, 28.654451, 21.986240>,  <31.464239, 28.431725, 22.021963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.794567, 28.654451, 21.986240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072678, -0.262129, -0.962292,
		-0.559229, 0.788191, -0.256940,
		0.825821, 0.556816, -0.089306,
		32.042313, 28.821497, 21.959448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.358328, 28.967384, 21.401436>,  <31.464239, 28.431725, 22.021963>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.358328, 28.967384, 21.401436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.742790, 28.890179, 21.480352>,  <31.973467, 28.843855, 21.527702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.742790, 28.890179, 21.480352>,  <31.358328, 28.967384, 21.401436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.742790, 28.890179, 21.480352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145921, -0.251382, -0.956825,
		0.234278, 0.948447, -0.213452,
		0.961156, -0.193016, 0.197292,
		32.031136, 28.832273, 21.539539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.624256, 29.253067, 20.824812>,  <31.358328, 28.967384, 21.401436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.624256, 29.253067, 20.824812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.925053, 29.027365, 20.961121>,  <32.105530, 28.891943, 21.042906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.925053, 29.027365, 20.961121>,  <31.624256, 29.253067, 20.824812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.925053, 29.027365, 20.961121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308299, -0.155878, -0.938432,
		0.582636, 0.810750, 0.056741,
		0.751989, -0.564257, 0.340773,
		32.150650, 28.858088, 21.063353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.204704, 29.571178, 20.528011>,  <31.624256, 29.253067, 20.824812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.204704, 29.571178, 20.528011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.272762, 29.189262, 20.625519>,  <32.313599, 28.960112, 20.684023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.272762, 29.189262, 20.625519>,  <32.204704, 29.571178, 20.528011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.272762, 29.189262, 20.625519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240257, -0.199717, -0.949942,
		0.955682, 0.220194, 0.195415,
		0.170144, -0.954792, 0.243769,
		32.323807, 28.902824, 20.698650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.878769, 29.444761, 20.144136>,  <32.204704, 29.571178, 20.528011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.878769, 29.444761, 20.144136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.735439, 29.087288, 20.252161>,  <32.649441, 28.872805, 20.316975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.735439, 29.087288, 20.252161>,  <32.878769, 29.444761, 20.144136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.735439, 29.087288, 20.252161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250089, -0.370580, -0.894497,
		0.899476, -0.252983, 0.356289,
		-0.358327, -0.893683, 0.270060,
		32.627941, 28.819183, 20.333179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.339844, 28.938396, 19.902094>,  <32.878769, 29.444761, 20.144136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.339844, 28.938396, 19.902094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.020283, 28.708199, 19.972021>,  <32.828545, 28.570080, 20.013977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.020283, 28.708199, 19.972021>,  <33.339844, 28.938396, 19.902094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.020283, 28.708199, 19.972021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014237, -0.308670, -0.951063,
		0.601291, -0.757318, 0.254791,
		-0.798903, -0.575493, 0.174819,
		32.780613, 28.535551, 20.024467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.506176, 28.203032, 19.680323>,  <33.339844, 28.938396, 19.902094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.506176, 28.203032, 19.680323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.107723, 28.238100, 19.682589>,  <32.868652, 28.259140, 19.683949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.107723, 28.238100, 19.682589>,  <33.506176, 28.203032, 19.680323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.107723, 28.238100, 19.682589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053126, -0.549755, -0.833635,
		-0.069969, -0.830713, 0.552287,
		-0.996134, 0.087670, 0.005667,
		32.808884, 28.264400, 19.684288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.233833, 27.559515, 19.589314>,  <33.506176, 28.203032, 19.680323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.233833, 27.559515, 19.589314> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.937500, 27.802256, 19.474150>,  <32.759701, 27.947901, 19.405052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.937500, 27.802256, 19.474150>,  <33.233833, 27.559515, 19.589314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.937500, 27.802256, 19.474150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217856, -0.622558, -0.751639,
		-0.635379, -0.494115, 0.593418,
		-0.740832, 0.606855, -0.287914,
		32.715248, 27.984310, 19.387777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.698036, 27.164722, 19.414289>,  <33.233833, 27.559515, 19.589314>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.698036, 27.164722, 19.414289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.603851, 27.500944, 19.219135>,  <32.547340, 27.702677, 19.102043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.603851, 27.500944, 19.219135>,  <32.698036, 27.164722, 19.414289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.603851, 27.500944, 19.219135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170004, -0.529879, -0.830859,
		-0.956900, -0.112690, 0.267662,
		-0.235458, 0.840553, -0.487884,
		32.533215, 27.753111, 19.072771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.126526, 26.973660, 18.986111>,  <32.698036, 27.164722, 19.414289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.126526, 26.973660, 18.986111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.223671, 27.323092, 18.817410>,  <32.281960, 27.532751, 18.716188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.223671, 27.323092, 18.817410>,  <32.126526, 26.973660, 18.986111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.223671, 27.323092, 18.817410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088693, -0.412954, -0.906423,
		-0.965997, 0.257544, -0.022811,
		0.242863, 0.873579, -0.421755,
		32.296532, 27.585165, 18.690884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.681072, 27.127811, 18.383327>,  <32.126526, 26.973660, 18.986111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.681072, 27.127811, 18.383327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.994549, 27.366947, 18.315897>,  <32.182632, 27.510429, 18.275438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.994549, 27.366947, 18.315897>,  <31.681072, 27.127811, 18.383327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.994549, 27.366947, 18.315897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067930, -0.187275, -0.979956,
		-0.617427, 0.779433, -0.106155,
		0.783690, 0.597840, -0.168575,
		32.229656, 27.546299, 18.265324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.509462, 27.601093, 17.869930>,  <31.681072, 27.127811, 18.383327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.509462, 27.601093, 17.869930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.905796, 27.557421, 17.838108>,  <32.143597, 27.531218, 17.819016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.905796, 27.557421, 17.838108>,  <31.509462, 27.601093, 17.869930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.905796, 27.557421, 17.838108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111979, -0.334367, -0.935767,
		0.075568, 0.936097, -0.343528,
		0.990833, -0.109182, -0.079556,
		32.203045, 27.524666, 17.814241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.714764, 27.982304, 17.280125>,  <31.509462, 27.601093, 17.869930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.714764, 27.982304, 17.280125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.920797, 27.650036, 17.364672>,  <32.044418, 27.450676, 17.415400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.920797, 27.650036, 17.364672>,  <31.714764, 27.982304, 17.280125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.920797, 27.650036, 17.364672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328300, -0.418985, -0.846564,
		0.791775, 0.366659, -0.488521,
		0.515084, -0.830670, 0.211367,
		32.075321, 27.400835, 17.428082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.323368, 27.823643, 17.005966>,  <31.714764, 27.982304, 17.280125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.323368, 27.823643, 17.005966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.003277, 27.862701, 16.769289>,  <31.811222, 27.886137, 16.627283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.003277, 27.862701, 16.769289>,  <32.323368, 27.823643, 17.005966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.003277, 27.862701, 16.769289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549712, -0.274914, -0.788822,
		-0.239683, -0.956498, 0.166322,
		-0.800231, 0.097637, -0.591690,
		31.763208, 27.891994, 16.591782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.382557, 27.261339, 16.691631>,  <32.323368, 27.823643, 17.005966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.382557, 27.261339, 16.691631> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.194122, 27.515816, 16.447226>,  <32.081062, 27.668501, 16.300581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.194122, 27.515816, 16.447226>,  <32.382557, 27.261339, 16.691631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.194122, 27.515816, 16.447226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.586074, -0.291950, -0.755833,
		-0.659241, -0.714160, -0.235323,
		-0.471083, 0.636192, -0.611016,
		32.052799, 27.706673, 16.263920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.979279, 27.447727, 16.364931>,  <32.382557, 27.261339, 16.691631>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.979279, 27.447727, 16.364931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.366379, 27.362247, 16.311586>,  <33.598640, 27.310959, 16.279579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.366379, 27.362247, 16.311586>,  <32.979279, 27.447727, 16.364931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.366379, 27.362247, 16.311586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229689, 0.965979, 0.118863,
		0.103422, -0.145661, 0.983914,
		0.967754, -0.213701, -0.133360,
		33.656704, 27.298138, 16.271578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.312290, 27.546194, 16.968115>,  <32.979279, 27.447727, 16.364931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.312290, 27.546194, 16.968115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.572453, 27.592991, 16.667906>,  <33.728550, 27.621069, 16.487780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.572453, 27.592991, 16.667906>,  <33.312290, 27.546194, 16.968115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.572453, 27.592991, 16.667906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244520, 0.903225, 0.352696,
		0.719154, -0.412914, 0.558857,
		0.650406, 0.116991, -0.750523,
		33.767574, 27.628088, 16.442749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.996769, 27.618710, 17.229069>,  <33.312290, 27.546194, 16.968115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.996769, 27.618710, 17.229069> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.925373, 27.805601, 16.882696>,  <33.882534, 27.917736, 16.674871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.925373, 27.805601, 16.882696>,  <33.996769, 27.618710, 17.229069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.925373, 27.805601, 16.882696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204328, 0.878481, 0.431881,
		0.962493, -0.099848, -0.252267,
		-0.178490, 0.467228, -0.865933,
		33.871826, 27.945770, 16.622917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.593239, 28.188555, 17.134027>,  <33.996769, 27.618710, 17.229069>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.593239, 28.188555, 17.134027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.240799, 28.288103, 16.973162>,  <34.029335, 28.347832, 16.876642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.240799, 28.288103, 16.973162>,  <34.593239, 28.188555, 17.134027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.240799, 28.288103, 16.973162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183101, 0.963539, 0.195108,
		0.436056, 0.098273, -0.894538,
		-0.881096, 0.248869, -0.402163,
		33.976471, 28.362764, 16.852512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.807816, 28.753275, 16.649399>,  <34.593239, 28.188555, 17.134027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.807816, 28.753275, 16.649399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.433212, 28.741411, 16.789154>,  <34.208450, 28.734293, 16.873007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.433212, 28.741411, 16.789154>,  <34.807816, 28.753275, 16.649399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.433212, 28.741411, 16.789154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075834, 0.955702, 0.284398,
		-0.342344, 0.292837, -0.892775,
		-0.936509, -0.029660, 0.349386,
		34.152260, 28.732513, 16.893970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.696815, 29.448883, 16.734625>,  <34.807816, 28.753275, 16.649399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.696815, 29.448883, 16.734625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.363575, 29.278315, 16.875536>,  <34.163631, 29.175974, 16.960083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.363575, 29.278315, 16.875536>,  <34.696815, 29.448883, 16.734625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.363575, 29.278315, 16.875536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305346, 0.885624, 0.349907,
		-0.461196, 0.183942, -0.868023,
		-0.833104, -0.426422, 0.352280,
		34.113644, 29.150389, 16.981220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.153339, 29.930210, 16.629559>,  <34.696815, 29.448883, 16.734625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.153339, 29.930210, 16.629559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.051258, 29.707592, 16.945818>,  <33.990009, 29.574020, 17.135574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.051258, 29.707592, 16.945818>,  <34.153339, 29.930210, 16.629559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.051258, 29.707592, 16.945818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336116, 0.817793, 0.467162,
		-0.906585, -0.146527, -0.395770,
		-0.255206, -0.556546, 0.790649,
		33.974697, 29.540628, 17.183012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.434509, 30.055227, 16.815573>,  <34.153339, 29.930210, 16.629559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.434509, 30.055227, 16.815573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.598034, 29.916168, 17.153097>,  <33.696148, 29.832733, 17.355612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.598034, 29.916168, 17.153097>,  <33.434509, 30.055227, 16.815573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.598034, 29.916168, 17.153097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438320, 0.736185, 0.515662,
		-0.800470, -0.580665, 0.148577,
		0.408807, -0.347647, 0.843812,
		33.720676, 29.811874, 17.406240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.889526, 30.097681, 17.365175>,  <33.434509, 30.055227, 16.815573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.889526, 30.097681, 17.365175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.231033, 30.071903, 17.571835>,  <33.435940, 30.056437, 17.695829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.231033, 30.071903, 17.571835>,  <32.889526, 30.097681, 17.365175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.231033, 30.071903, 17.571835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399908, 0.554244, 0.729991,
		-0.333394, -0.829856, 0.447424,
		0.853770, -0.064446, 0.516647,
		33.487164, 30.052570, 17.726830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.555470, 30.061296, 18.042854>,  <32.889526, 30.097681, 17.365175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.555470, 30.061296, 18.042854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.938160, 30.175005, 18.067745>,  <33.167774, 30.243231, 18.082680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.938160, 30.175005, 18.067745>,  <32.555470, 30.061296, 18.042854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.938160, 30.175005, 18.067745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178718, 0.405209, 0.896586,
		0.229656, -0.868906, 0.438476,
		0.956722, 0.284270, 0.062230,
		33.225178, 30.260286, 18.086414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.597221, 30.115168, 18.675995>,  <32.555470, 30.061296, 18.042854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.597221, 30.115168, 18.675995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.933914, 30.299065, 18.562765>,  <33.135929, 30.409403, 18.494827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.933914, 30.299065, 18.562765>,  <32.597221, 30.115168, 18.675995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.933914, 30.299065, 18.562765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056394, 0.596306, 0.800774,
		0.536948, -0.658071, 0.527854,
		0.841728, 0.459741, -0.283074,
		33.186432, 30.436987, 18.477842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.789856, 30.298656, 19.307112>,  <32.597221, 30.115168, 18.675995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.789856, 30.298656, 19.307112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.986580, 30.524275, 19.041788>,  <33.104614, 30.659645, 18.882595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.986580, 30.524275, 19.041788>,  <32.789856, 30.298656, 19.307112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.986580, 30.524275, 19.041788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068530, 0.734368, 0.675283,
		0.868003, -0.377565, 0.322513,
		0.491807, 0.564046, -0.663308,
		33.134121, 30.693489, 18.842796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.283852, 30.552210, 19.728024>,  <32.789856, 30.298656, 19.307112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.283852, 30.552210, 19.728024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.253082, 30.791689, 19.409115>,  <33.234619, 30.935377, 19.217770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.253082, 30.791689, 19.409115>,  <33.283852, 30.552210, 19.728024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.253082, 30.791689, 19.409115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200418, 0.792606, 0.575855,
		0.976686, -0.115489, -0.180963,
		-0.076928, 0.598697, -0.797273,
		33.230003, 30.971298, 19.169933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.959286, 30.900764, 19.717552>,  <33.283852, 30.552210, 19.728024>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.959286, 30.900764, 19.717552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.668163, 31.099327, 19.528292>,  <33.493488, 31.218466, 19.414736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.668163, 31.099327, 19.528292>,  <33.959286, 30.900764, 19.717552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.668163, 31.099327, 19.528292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111857, 0.766638, 0.632261,
		0.676595, 0.407241, -0.613493,
		-0.727810, 0.496408, -0.473151,
		33.449821, 31.248249, 19.386347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.079071, 31.597919, 19.823128>,  <33.959286, 30.900764, 19.717552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.079071, 31.597919, 19.823128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.694725, 31.622887, 19.715170>,  <33.464119, 31.637867, 19.650396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.694725, 31.622887, 19.715170>,  <34.079071, 31.597919, 19.823128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.694725, 31.622887, 19.715170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161816, 0.664311, 0.729730,
		0.224841, 0.744845, -0.628214,
		-0.960865, 0.062418, -0.269892,
		33.406464, 31.641611, 19.634203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.856316, 32.394066, 19.875849>,  <34.079071, 31.597919, 19.823128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.856316, 32.394066, 19.875849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.529888, 32.163616, 19.894224>,  <33.334030, 32.025349, 19.905251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.529888, 32.163616, 19.894224>,  <33.856316, 32.394066, 19.875849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.529888, 32.163616, 19.894224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324713, 0.522802, 0.788187,
		-0.478110, 0.628300, -0.613718,
		-0.816072, -0.576122, 0.045940,
		33.285069, 31.990780, 19.908007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.313454, 32.911705, 20.072023>,  <33.856316, 32.394066, 19.875849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.313454, 32.911705, 20.072023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.196072, 32.539181, 20.158325>,  <33.125641, 32.315666, 20.210106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.196072, 32.539181, 20.158325>,  <33.313454, 32.911705, 20.072023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.196072, 32.539181, 20.158325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482615, 0.339148, 0.807503,
		-0.825206, 0.132842, -0.548989,
		-0.293459, -0.931306, 0.215755,
		33.108032, 32.259789, 20.223051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.582577, 33.007595, 20.263891>,  <33.313454, 32.911705, 20.072023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.582577, 33.007595, 20.263891> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.721565, 32.659374, 20.403267>,  <32.804958, 32.450443, 20.486893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.721565, 32.659374, 20.403267>,  <32.582577, 33.007595, 20.263891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.721565, 32.659374, 20.403267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206449, 0.291449, 0.934043,
		-0.914681, -0.396488, -0.078453,
		0.347472, -0.870548, 0.348438,
		32.825806, 32.398209, 20.507799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.179207, 32.889824, 20.886480>,  <32.582577, 33.007595, 20.263891>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.179207, 32.889824, 20.886480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.469524, 32.619740, 20.939114>,  <32.643715, 32.457687, 20.970694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.469524, 32.619740, 20.939114>,  <32.179207, 32.889824, 20.886480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.469524, 32.619740, 20.939114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215267, -0.041258, 0.975683,
		-0.653364, -0.736469, -0.175296,
		0.725793, -0.675212, 0.131581,
		32.687263, 32.417175, 20.978588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.839066, 32.290768, 21.112495>,  <32.179207, 32.889824, 20.886480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.839066, 32.290768, 21.112495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.219517, 32.309792, 21.234543>,  <32.447788, 32.321205, 21.307772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.219517, 32.309792, 21.234543>,  <31.839066, 32.290768, 21.112495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.219517, 32.309792, 21.234543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307992, 0.074509, 0.948467,
		0.022377, -0.996085, 0.085516,
		0.951126, 0.047562, 0.305119,
		32.504856, 32.324059, 21.326078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.955206, 31.800812, 21.815966>,  <31.839066, 32.290768, 21.112495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.955206, 31.800812, 21.815966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.282658, 32.029823, 21.797825>,  <32.479130, 32.167229, 21.786940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.282658, 32.029823, 21.797825>,  <31.955206, 31.800812, 21.815966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.282658, 32.029823, 21.797825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134052, 0.267267, 0.954253,
		0.558458, -0.775100, 0.295541,
		0.818630, 0.572528, -0.045353,
		32.528248, 32.201580, 21.784220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.328476, 31.670078, 22.395222>,  <31.955206, 31.800812, 21.815966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.328476, 31.670078, 22.395222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.519955, 32.006924, 22.295872>,  <32.634842, 32.209030, 22.236261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.519955, 32.006924, 22.295872>,  <32.328476, 31.670078, 22.395222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.519955, 32.006924, 22.295872> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004014, 0.280793, 0.959760,
		0.877969, -0.460434, 0.131035,
		0.478700, 0.842114, -0.248375,
		32.663567, 32.259560, 22.221359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.857937, 31.674828, 22.800819>,  <32.328476, 31.670078, 22.395222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.857937, 31.674828, 22.800819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.783657, 32.052769, 22.692915>,  <32.739090, 32.279533, 22.628172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.783657, 32.052769, 22.692915>,  <32.857937, 31.674828, 22.800819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.783657, 32.052769, 22.692915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078837, 0.287978, 0.954387,
		0.979439, 0.155962, -0.127967,
		-0.185700, 0.944852, -0.269761,
		32.727947, 32.336224, 22.611986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.462704, 32.150593, 22.962591>,  <32.857937, 31.674828, 22.800819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.462704, 32.150593, 22.962591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.143127, 32.389023, 22.930626>,  <32.951382, 32.532082, 22.911448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.143127, 32.389023, 22.930626>,  <33.462704, 32.150593, 22.962591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.143127, 32.389023, 22.930626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140091, 0.313677, 0.939139,
		0.584863, 0.739123, -0.334115,
		-0.798943, 0.596074, -0.079913,
		32.903446, 32.567844, 22.906652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.682266, 32.821503, 23.144684>,  <33.462704, 32.150593, 22.962591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.682266, 32.821503, 23.144684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.285027, 32.815720, 23.191248>,  <33.046684, 32.812248, 23.219187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.285027, 32.815720, 23.191248>,  <33.682266, 32.821503, 23.144684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.285027, 32.815720, 23.191248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109932, 0.231586, 0.966583,
		-0.040937, 0.972707, -0.228397,
		-0.993096, -0.014461, 0.116412,
		32.987099, 32.811382, 23.226171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.487965, 33.365002, 23.564693>,  <33.682266, 32.821503, 23.144684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.487965, 33.365002, 23.564693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.164619, 33.130375, 23.584641>,  <32.970612, 32.989601, 23.596609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.164619, 33.130375, 23.584641>,  <33.487965, 33.365002, 23.564693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.164619, 33.130375, 23.584641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122916, 0.251023, 0.960145,
		-0.575704, 0.770020, -0.275017,
		-0.808367, -0.586563, 0.049867,
		32.922108, 32.954407, 23.599600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.050381, 33.711071, 24.020407>,  <33.487965, 33.365002, 23.564693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.050381, 33.711071, 24.020407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.912407, 33.336227, 23.999071>,  <32.829624, 33.111320, 23.986269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.912407, 33.336227, 23.999071>,  <33.050381, 33.711071, 24.020407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.912407, 33.336227, 23.999071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210087, 0.021695, 0.977442,
		-0.914813, 0.348359, -0.204358,
		-0.344934, -0.937110, -0.053339,
		32.808926, 33.055096, 23.983070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.384090, 33.748253, 24.290474>,  <33.050381, 33.711071, 24.020407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.384090, 33.748253, 24.290474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.488216, 33.364002, 24.329338>,  <32.550694, 33.133453, 24.352655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.488216, 33.364002, 24.329338>,  <32.384090, 33.748253, 24.290474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.488216, 33.364002, 24.329338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434957, -0.026836, 0.900051,
		-0.862002, -0.276558, -0.424815,
		0.260316, -0.960623, 0.097158,
		32.566311, 33.075817, 24.358486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.756268, 33.362160, 24.462603>,  <32.384090, 33.748253, 24.290474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.756268, 33.362160, 24.462603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.083145, 33.184052, 24.608990>,  <32.279270, 33.077187, 24.696821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.083145, 33.184052, 24.608990>,  <31.756268, 33.362160, 24.462603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.083145, 33.184052, 24.608990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301889, 0.210214, 0.929878,
		-0.490975, -0.870372, 0.037365,
		0.817194, -0.445267, 0.365966,
		32.328304, 33.050472, 24.718779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.508276, 33.069981, 24.988142>,  <31.756268, 33.362160, 24.462603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.508276, 33.069981, 24.988142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.903214, 33.068516, 25.051569>,  <32.140175, 33.067638, 25.089624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.903214, 33.068516, 25.051569>,  <31.508276, 33.069981, 24.988142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.903214, 33.068516, 25.051569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141340, 0.433310, 0.890093,
		-0.071969, -0.901237, 0.427307,
		0.987342, -0.003663, 0.158566,
		32.199417, 33.067417, 25.099138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.607170, 32.856270, 25.704168>,  <31.508276, 33.069981, 24.988142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.607170, 32.856270, 25.704168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.937330, 33.059856, 25.606459>,  <32.135426, 33.182007, 25.547832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.937330, 33.059856, 25.606459>,  <31.607170, 32.856270, 25.704168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.937330, 33.059856, 25.606459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008913, 0.420885, 0.907070,
		0.564480, -0.750872, 0.342861,
		0.825399, 0.508967, -0.244274,
		32.184952, 33.212547, 25.533176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.045830, 32.753956, 26.270588>,  <31.607170, 32.856270, 25.704168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.045830, 32.753956, 26.270588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.168324, 33.078629, 26.071632>,  <32.241817, 33.273434, 25.952259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.168324, 33.078629, 26.071632>,  <32.045830, 32.753956, 26.270588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.168324, 33.078629, 26.071632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128820, 0.482353, 0.866453,
		0.943200, -0.329410, 0.043152,
		0.306233, 0.811680, -0.497390,
		32.260193, 33.322132, 25.922415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.429283, 33.099045, 26.760988>,  <32.045830, 32.753956, 26.270588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.429283, 33.099045, 26.760988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.389713, 33.398411, 26.498665>,  <32.365971, 33.578030, 26.341270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.389713, 33.398411, 26.498665>,  <32.429283, 33.099045, 26.760988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.389713, 33.398411, 26.498665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016943, 0.660213, 0.750887,
		0.994950, 0.063172, -0.077993,
		-0.098927, 0.748417, -0.655809,
		32.360035, 33.622936, 26.301922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.006123, 33.574745, 26.873583>,  <32.429283, 33.099045, 26.760988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.006123, 33.574745, 26.873583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.703083, 33.773495, 26.704269>,  <32.521259, 33.892746, 26.602682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.703083, 33.773495, 26.704269>,  <33.006123, 33.574745, 26.873583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.703083, 33.773495, 26.704269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091763, 0.560968, 0.822736,
		0.646242, 0.662142, -0.379393,
		-0.757595, 0.496872, -0.423282,
		32.475803, 33.922558, 26.577286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.199284, 34.232395, 27.081930>,  <33.006123, 33.574745, 26.873583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.199284, 34.232395, 27.081930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.817684, 34.242237, 26.962414>,  <32.588722, 34.248142, 26.890705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.817684, 34.242237, 26.962414>,  <33.199284, 34.232395, 27.081930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.817684, 34.242237, 26.962414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192682, 0.713220, 0.673937,
		0.229683, 0.700508, -0.675673,
		-0.954002, 0.024602, -0.298790,
		32.531483, 34.249619, 26.872776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.077446, 34.938633, 27.041775>,  <33.199284, 34.232395, 27.081930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.077446, 34.938633, 27.041775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.736012, 34.736137, 27.090954>,  <32.531151, 34.614639, 27.120461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.736012, 34.736137, 27.090954>,  <33.077446, 34.938633, 27.041775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.736012, 34.736137, 27.090954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296418, 0.666033, 0.684497,
		-0.428408, 0.547831, -0.718573,
		-0.853582, -0.506242, 0.122946,
		32.479939, 34.584263, 27.127838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.553768, 35.479427, 27.203651>,  <33.077446, 34.938633, 27.041775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.553768, 35.479427, 27.203651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.403362, 35.126297, 27.316240>,  <32.313118, 34.914417, 27.383793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.403362, 35.126297, 27.316240>,  <32.553768, 35.479427, 27.203651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.403362, 35.126297, 27.316240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379562, 0.423854, 0.822363,
		-0.845309, 0.202383, -0.494463,
		-0.376012, -0.882830, 0.281471,
		32.290558, 34.861446, 27.400681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.909182, 35.660816, 27.422127>,  <32.553768, 35.479427, 27.203651>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.909182, 35.660816, 27.422127> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.945560, 35.307114, 27.605352>,  <31.967388, 35.094891, 27.715288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.945560, 35.307114, 27.605352>,  <31.909182, 35.660816, 27.422127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.945560, 35.307114, 27.605352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.595514, 0.320376, 0.736696,
		-0.798180, -0.339782, -0.497450,
		0.090945, -0.884255, 0.458063,
		31.972843, 35.041836, 27.742771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.321890, 35.598419, 27.711048>,  <31.909182, 35.660816, 27.422127>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.321890, 35.598419, 27.711048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.535433, 35.313709, 27.893637>,  <31.663559, 35.142883, 28.003191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.535433, 35.313709, 27.893637>,  <31.321890, 35.598419, 27.711048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.535433, 35.313709, 27.893637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338940, 0.314440, 0.886706,
		-0.774671, -0.628092, -0.073384,
		0.533858, -0.711778, 0.456473,
		31.695591, 35.100174, 28.030579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.902988, 35.340126, 28.249750>,  <31.321890, 35.598419, 27.711048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.902988, 35.340126, 28.249750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.271730, 35.234650, 28.363342>,  <31.492977, 35.171364, 28.431498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.271730, 35.234650, 28.363342>,  <30.902988, 35.340126, 28.249750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.271730, 35.234650, 28.363342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210029, 0.275881, 0.937965,
		-0.325679, -0.924314, 0.198940,
		0.921857, -0.263692, 0.283982,
		31.548288, 35.155540, 28.448536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.859413, 34.863361, 28.796032>,  <30.902988, 35.340126, 28.249750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.859413, 34.863361, 28.796032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.200466, 35.071056, 28.819391>,  <31.405098, 35.195671, 28.833406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.200466, 35.071056, 28.819391>,  <30.859413, 34.863361, 28.796032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.200466, 35.071056, 28.819391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157548, 0.148917, 0.976218,
		0.498191, -0.841557, 0.208776,
		0.852634, 0.519235, 0.058397,
		31.456257, 35.226826, 28.836910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.268005, 34.606979, 29.413658>,  <30.859413, 34.863361, 28.796032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.268005, 34.606979, 29.413658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.406021, 34.972218, 29.326757>,  <31.488831, 35.191360, 29.274616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.406021, 34.972218, 29.326757>,  <31.268005, 34.606979, 29.413658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.406021, 34.972218, 29.326757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199459, 0.297514, 0.933650,
		0.917150, -0.278813, 0.284780,
		0.345040, 0.913098, -0.217253,
		31.509533, 35.246147, 29.261581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.613361, 34.785805, 29.975727>,  <31.268005, 34.606979, 29.413658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.613361, 34.785805, 29.975727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.635572, 35.139069, 29.789417>,  <31.648899, 35.351028, 29.677631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.635572, 35.139069, 29.789417>,  <31.613361, 34.785805, 29.975727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.635572, 35.139069, 29.789417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035746, 0.467953, 0.883030,
		0.997817, -0.032382, 0.057553,
		0.055526, 0.883160, -0.465774,
		31.652231, 35.404018, 29.649685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.195484, 35.130081, 30.187252>,  <31.613361, 34.785805, 29.975727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.195484, 35.130081, 30.187252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.912743, 35.384106, 30.062637>,  <31.743099, 35.536522, 29.987869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.912743, 35.384106, 30.062637>,  <32.195484, 35.130081, 30.187252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.912743, 35.384106, 30.062637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093336, 0.352831, 0.931020,
		0.701178, 0.687170, -0.190124,
		-0.706850, 0.635066, -0.311535,
		31.700687, 35.574627, 29.969177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.437210, 35.813709, 30.326859>,  <32.195484, 35.130081, 30.187252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.437210, 35.813709, 30.326859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.037796, 35.830692, 30.313498>,  <31.798147, 35.840881, 30.305481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.037796, 35.830692, 30.313498>,  <32.437210, 35.813709, 30.326859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.037796, 35.830692, 30.313498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019318, 0.296810, 0.954741,
		0.050454, 0.953992, -0.295556,
		-0.998540, 0.042461, -0.033404,
		31.738234, 35.843430, 30.303476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.072620, 35.366928, 30.285641>,  <32.437210, 35.813709, 30.326859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.072620, 35.366928, 30.285641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.308289, 35.644108, 30.451870>,  <33.449688, 35.810413, 30.551607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.308289, 35.644108, 30.451870>,  <33.072620, 35.366928, 30.285641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.308289, 35.644108, 30.451870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503153, 0.087796, -0.859726,
		-0.632230, 0.715624, -0.296931,
		0.589171, 0.692946, 0.415575,
		33.485039, 35.851994, 30.576542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.009518, 35.979858, 29.876621>,  <33.072620, 35.366928, 30.285641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.009518, 35.979858, 29.876621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.374386, 35.982246, 30.040525>,  <33.593307, 35.983681, 30.138868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.374386, 35.982246, 30.040525>,  <33.009518, 35.979858, 29.876621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.374386, 35.982246, 30.040525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404688, 0.144361, -0.902988,
		-0.064543, 0.989507, 0.129267,
		0.912174, 0.005969, 0.409759,
		33.648037, 35.984035, 30.163454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.388893, 36.388920, 29.456553>,  <33.009518, 35.979858, 29.876621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.388893, 36.388920, 29.456553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.687893, 36.192074, 29.635021>,  <33.867290, 36.073967, 29.742104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.687893, 36.192074, 29.635021>,  <33.388893, 36.388920, 29.456553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.687893, 36.192074, 29.635021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486819, -0.051145, -0.872004,
		0.451949, 0.869024, 0.201342,
		0.747495, -0.492119, 0.446173,
		33.912140, 36.044437, 29.768873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.972263, 36.715435, 29.213081>,  <33.388893, 36.388920, 29.456553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.972263, 36.715435, 29.213081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.100784, 36.366966, 29.361578>,  <34.177898, 36.157887, 29.450676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.100784, 36.366966, 29.361578>,  <33.972263, 36.715435, 29.213081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.100784, 36.366966, 29.361578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451426, -0.203712, -0.868744,
		0.832453, 0.446720, 0.327816,
		0.321305, -0.871173, 0.371242,
		34.197174, 36.105614, 29.472950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.726192, 36.683487, 29.214191>,  <33.972263, 36.715435, 29.213081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.726192, 36.683487, 29.214191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.581444, 36.312153, 29.180153>,  <34.494595, 36.089352, 29.159731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.581444, 36.312153, 29.180153>,  <34.726192, 36.683487, 29.214191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.581444, 36.312153, 29.180153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.603556, -0.163745, -0.780325,
		0.710469, -0.333740, 0.619557,
		-0.361876, -0.928334, -0.085095,
		34.472881, 36.033653, 29.154625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.305977, 36.257675, 29.080372>,  <34.726192, 36.683487, 29.214191>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.305977, 36.257675, 29.080372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.011139, 36.009773, 28.972593>,  <34.834236, 35.861031, 28.907927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.011139, 36.009773, 28.972593>,  <35.305977, 36.257675, 29.080372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.011139, 36.009773, 28.972593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528024, -0.279327, -0.801977,
		0.421765, -0.733404, 0.533135,
		-0.737092, -0.619754, -0.269445,
		34.790012, 35.823849, 28.891760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.694157, 35.684128, 28.760145>,  <35.305977, 36.257675, 29.080372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.694157, 35.684128, 28.760145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.319252, 35.601093, 28.648109>,  <35.094311, 35.551273, 28.580889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.319252, 35.601093, 28.648109>,  <35.694157, 35.684128, 28.760145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.319252, 35.601093, 28.648109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327756, -0.250857, -0.910850,
		0.118817, -0.945505, 0.303155,
		-0.937262, -0.207585, -0.280089,
		35.038074, 35.538818, 28.564083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.707302, 34.990322, 28.366104>,  <35.694157, 35.684128, 28.760145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.707302, 34.990322, 28.366104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.379150, 35.186779, 28.248964>,  <35.182259, 35.304653, 28.178680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.379150, 35.186779, 28.248964>,  <35.707302, 34.990322, 28.366104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.379150, 35.186779, 28.248964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187393, -0.252942, -0.949160,
		-0.540245, -0.833548, 0.115472,
		-0.820377, 0.491140, -0.292851,
		35.133038, 35.334122, 28.161108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.366657, 34.453182, 28.038973>,  <35.707302, 34.990322, 28.366104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.366657, 34.453182, 28.038973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.226803, 34.810246, 27.925194>,  <35.142891, 35.024483, 27.856926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.226803, 34.810246, 27.925194>,  <35.366657, 34.453182, 28.038973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.226803, 34.810246, 27.925194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291150, -0.185053, -0.938609,
		-0.890499, -0.410986, -0.195198,
		-0.349633, 0.892662, -0.284448,
		35.121914, 35.078045, 27.839859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.927456, 34.308975, 27.372362>,  <35.366657, 34.453182, 28.038973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.927456, 34.308975, 27.372362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.030739, 34.695110, 27.357105>,  <35.092709, 34.926792, 27.347952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.030739, 34.695110, 27.357105>,  <34.927456, 34.308975, 27.372362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.030739, 34.695110, 27.357105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132345, -0.074451, -0.988404,
		-0.956983, 0.250162, -0.146981,
		0.258203, 0.965337, -0.038140,
		35.108200, 34.984711, 27.345663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.487686, 34.544056, 26.888565>,  <34.927456, 34.308975, 27.372362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.487686, 34.544056, 26.888565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.786564, 34.809608, 26.900997>,  <34.965889, 34.968941, 26.908457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.786564, 34.809608, 26.900997>,  <34.487686, 34.544056, 26.888565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.786564, 34.809608, 26.900997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041479, 0.093255, -0.994778,
		-0.663309, 0.742004, 0.097217,
		0.747195, 0.663878, 0.031079,
		35.010723, 35.008770, 26.910320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.343384, 34.877045, 26.304379>,  <34.487686, 34.544056, 26.888565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.343384, 34.877045, 26.304379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.712158, 35.008202, 26.386854>,  <34.933422, 35.086895, 26.436338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.712158, 35.008202, 26.386854>,  <34.343384, 34.877045, 26.304379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.712158, 35.008202, 26.386854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141385, 0.210708, -0.967271,
		-0.360607, 0.920917, 0.147900,
		0.921939, 0.327894, 0.206187,
		34.988739, 35.106571, 26.448709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.395538, 35.574547, 26.139313>,  <34.343384, 34.877045, 26.304379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.395538, 35.574547, 26.139313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.756863, 35.403961, 26.120745>,  <34.973660, 35.301609, 26.109604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.756863, 35.403961, 26.120745>,  <34.395538, 35.574547, 26.139313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.756863, 35.403961, 26.120745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054641, 0.221717, -0.973579,
		0.425487, 0.876910, 0.223582,
		0.903313, -0.426462, -0.046422,
		35.027855, 35.276024, 26.106817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.924625, 36.125141, 25.812454>,  <34.395538, 35.574547, 26.139313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.924625, 36.125141, 25.812454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.015598, 35.736778, 25.782471>,  <35.070183, 35.503761, 25.764481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.015598, 35.736778, 25.782471>,  <34.924625, 36.125141, 25.812454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.015598, 35.736778, 25.782471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042035, 0.086692, -0.995348,
		0.972887, 0.223220, 0.060529,
		0.227429, -0.970905, -0.074958,
		35.083828, 35.445507, 25.759983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.053326, 36.106800, 25.129955>,  <34.924625, 36.125141, 25.812454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.053326, 36.106800, 25.129955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.098106, 35.716652, 25.205975>,  <35.124973, 35.482563, 25.251585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.098106, 35.716652, 25.205975>,  <35.053326, 36.106800, 25.129955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.098106, 35.716652, 25.205975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110494, -0.202282, -0.973074,
		0.987551, 0.087939, -0.130419,
		0.111952, -0.975371, 0.190047,
		35.131691, 35.424042, 25.262989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.481136, 35.801266, 24.580439>,  <35.053326, 36.106800, 25.129955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.481136, 35.801266, 24.580439> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.303772, 35.482845, 24.745214>,  <35.197353, 35.291794, 24.844080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.303772, 35.482845, 24.745214>,  <35.481136, 35.801266, 24.580439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.303772, 35.482845, 24.745214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139294, -0.515209, -0.845670,
		0.885429, -0.317597, 0.339333,
		-0.443410, -0.796048, 0.411941,
		35.170750, 35.244030, 24.868797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.952053, 35.132854, 24.478083>,  <35.481136, 35.801266, 24.580439>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.952053, 35.132854, 24.478083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.576584, 35.005264, 24.530462>,  <35.351303, 34.928711, 24.561890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.576584, 35.005264, 24.530462>,  <35.952053, 35.132854, 24.478083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.576584, 35.005264, 24.530462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102760, -0.621300, -0.776806,
		0.329144, -0.715709, 0.615975,
		-0.938672, -0.318978, 0.130951,
		35.294983, 34.909573, 24.569748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.996300, 34.462669, 24.388304>,  <35.952053, 35.132854, 24.478083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.996300, 34.462669, 24.388304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.604416, 34.523144, 24.335663>,  <35.369286, 34.559429, 24.304079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.604416, 34.523144, 24.335663>,  <35.996300, 34.462669, 24.388304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.604416, 34.523144, 24.335663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009082, -0.689367, -0.724356,
		-0.200235, -0.708460, 0.676750,
		-0.979706, 0.151188, -0.131601,
		35.310505, 34.568501, 24.296183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.625366, 33.881508, 24.344358>,  <35.996300, 34.462669, 24.388304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.625366, 33.881508, 24.344358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.364552, 34.117001, 24.153261>,  <35.208061, 34.258297, 24.038603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.364552, 34.117001, 24.153261>,  <35.625366, 33.881508, 24.344358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.364552, 34.117001, 24.153261> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138426, -0.711962, -0.688439,
		-0.745447, -0.382753, 0.545720,
		-0.652034, 0.588737, -0.477747,
		35.168941, 34.293621, 24.009937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.135921, 33.454311, 24.068733>,  <35.625366, 33.881508, 24.344358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.135921, 33.454311, 24.068733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.074108, 33.779518, 23.844191>,  <35.037018, 33.974644, 23.709465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.074108, 33.779518, 23.844191>,  <35.135921, 33.454311, 24.068733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.074108, 33.779518, 23.844191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055492, -0.574428, -0.816672,
		-0.986428, -0.095054, 0.133886,
		-0.154536, 0.813017, -0.561357,
		35.027748, 34.023422, 23.675783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.511318, 33.361816, 23.609364>,  <35.135921, 33.454311, 24.068733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.511318, 33.361816, 23.609364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.735920, 33.631832, 23.417934>,  <34.870682, 33.793842, 23.303078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.735920, 33.631832, 23.417934>,  <34.511318, 33.361816, 23.609364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.735920, 33.631832, 23.417934> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168181, -0.473182, -0.864762,
		-0.810200, 0.566058, -0.152167,
		0.561509, 0.675038, -0.478572,
		34.904373, 33.834343, 23.274363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.199402, 33.519127, 22.960138>,  <34.511318, 33.361816, 23.609364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.199402, 33.519127, 22.960138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.595623, 33.573818, 22.955896>,  <34.833355, 33.606632, 22.953350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.595623, 33.573818, 22.955896>,  <34.199402, 33.519127, 22.960138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.595623, 33.573818, 22.955896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074286, -0.599968, -0.796567,
		-0.115276, 0.788254, -0.604457,
		0.990552, 0.136728, -0.010606,
		34.892788, 33.614838, 22.952715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.436901, 33.813725, 22.290556>,  <34.199402, 33.519127, 22.960138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.436901, 33.813725, 22.290556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.734848, 33.610489, 22.463533>,  <34.913616, 33.488548, 22.567320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.734848, 33.610489, 22.463533>,  <34.436901, 33.813725, 22.290556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.734848, 33.610489, 22.463533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106094, -0.549697, -0.828600,
		0.658719, 0.663080, -0.355547,
		0.744871, -0.508093, 0.432445,
		34.958309, 33.458061, 22.593267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.974388, 33.764511, 21.783640>,  <34.436901, 33.813725, 22.290556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.974388, 33.764511, 21.783640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.080109, 33.463428, 22.024828>,  <35.143543, 33.282780, 22.169540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.080109, 33.463428, 22.024828>,  <34.974388, 33.764511, 21.783640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.080109, 33.463428, 22.024828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090366, -0.603125, -0.792511,
		0.960196, 0.263953, -0.091389,
		0.264304, -0.752708, 0.602971,
		35.159401, 33.237617, 22.205719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.675102, 33.524387, 21.597040>,  <34.974388, 33.764511, 21.783640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.675102, 33.524387, 21.597040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.502716, 33.213684, 21.780743>,  <35.399284, 33.027264, 21.890965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.502716, 33.213684, 21.780743>,  <35.675102, 33.524387, 21.597040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.502716, 33.213684, 21.780743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262263, -0.594796, -0.759892,
		0.863417, -0.207039, 0.460050,
		-0.430963, -0.776758, 0.459258,
		35.373428, 32.980656, 21.918520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.123268, 33.010178, 21.545635>,  <35.675102, 33.524387, 21.597040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.123268, 33.010178, 21.545635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.780842, 32.831848, 21.650244>,  <35.575386, 32.724850, 21.713009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.780842, 32.831848, 21.650244>,  <36.123268, 33.010178, 21.545635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.780842, 32.831848, 21.650244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189847, -0.741827, -0.643156,
		0.480735, -0.500936, 0.719692,
		-0.856068, -0.445819, 0.261521,
		35.524021, 32.698101, 21.728701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.244488, 32.340366, 21.704752>,  <36.123268, 33.010178, 21.545635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.244488, 32.340366, 21.704752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.871391, 32.365520, 21.562742>,  <35.647533, 32.380611, 21.477535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.871391, 32.365520, 21.562742>,  <36.244488, 32.340366, 21.704752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.871391, 32.365520, 21.562742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249360, -0.598691, -0.761176,
		-0.260417, -0.798508, 0.542742,
		-0.932739, 0.062885, -0.355026,
		35.591568, 32.384384, 21.456234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.210747, 31.656002, 21.509295>,  <36.244488, 32.340366, 21.704752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.210747, 31.656002, 21.509295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.923389, 31.857769, 21.317682>,  <35.750973, 31.978828, 21.202715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.923389, 31.857769, 21.317682>,  <36.210747, 31.656002, 21.509295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.923389, 31.857769, 21.317682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170088, -0.540351, -0.824070,
		-0.674520, -0.673486, 0.302390,
		-0.718397, 0.504419, -0.479029,
		35.707870, 32.009094, 21.173973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.698257, 31.113834, 21.207455>,  <36.210747, 31.656002, 21.509295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.698257, 31.113834, 21.207455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.654217, 31.452942, 20.999929>,  <35.627792, 31.656406, 20.875414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.654217, 31.452942, 20.999929>,  <35.698257, 31.113834, 21.207455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.654217, 31.452942, 20.999929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185197, -0.495348, -0.848724,
		-0.976514, -0.189527, -0.102466,
		-0.110100, 0.847768, -0.518814,
		35.621185, 31.707272, 20.844286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.277477, 30.848616, 20.567223>,  <35.698257, 31.113834, 21.207455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.277477, 30.848616, 20.567223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.417820, 31.211573, 20.474672>,  <35.502026, 31.429348, 20.419142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.417820, 31.211573, 20.474672>,  <35.277477, 30.848616, 20.567223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.417820, 31.211573, 20.474672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268223, -0.334110, -0.903564,
		-0.897193, 0.254964, -0.360609,
		0.350859, 0.907394, -0.231374,
		35.523079, 31.483791, 20.405260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.911095, 30.966125, 19.990143>,  <35.277477, 30.848616, 20.567223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.911095, 30.966125, 19.990143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.230927, 31.205814, 20.006189>,  <35.422825, 31.349628, 20.015818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.230927, 31.205814, 20.006189>,  <34.911095, 30.966125, 19.990143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.230927, 31.205814, 20.006189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306621, -0.349879, -0.885194,
		-0.516391, 0.720082, -0.463490,
		0.799577, 0.599222, 0.040118,
		35.470798, 31.385580, 20.018225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.907261, 31.306267, 19.339207>,  <34.911095, 30.966125, 19.990143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.907261, 31.306267, 19.339207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.277699, 31.345543, 19.484922>,  <35.499962, 31.369108, 19.572351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.277699, 31.345543, 19.484922>,  <34.907261, 31.306267, 19.339207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.277699, 31.345543, 19.484922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375167, -0.137358, -0.916724,
		-0.039976, 0.985643, -0.164045,
		0.926095, 0.098191, 0.364290,
		35.555527, 31.375000, 19.594210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.345623, 31.723934, 18.813156>,  <34.907261, 31.306267, 19.339207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.345623, 31.723934, 18.813156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.576687, 31.463654, 19.010292>,  <35.715324, 31.307486, 19.128572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.576687, 31.463654, 19.010292>,  <35.345623, 31.723934, 18.813156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.576687, 31.463654, 19.010292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454021, -0.245622, -0.856466,
		0.678358, 0.718508, 0.153546,
		0.577664, -0.650704, 0.492838,
		35.749985, 31.268442, 19.158144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.977650, 31.799896, 18.426359>,  <35.345623, 31.723934, 18.813156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.977650, 31.799896, 18.426359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.013847, 31.461203, 18.636063>,  <36.035568, 31.257986, 18.761885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.013847, 31.461203, 18.636063>,  <35.977650, 31.799896, 18.426359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.013847, 31.461203, 18.636063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476915, -0.425288, -0.769209,
		0.874278, 0.319639, 0.365333,
		0.090497, -0.846735, 0.524261,
		36.040997, 31.207182, 18.793341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.688408, 31.625128, 18.303370>,  <35.977650, 31.799896, 18.426359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.688408, 31.625128, 18.303370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.454300, 31.318357, 18.408661>,  <36.313835, 31.134296, 18.471836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.454300, 31.318357, 18.408661>,  <36.688408, 31.625128, 18.303370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.454300, 31.318357, 18.408661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381539, -0.546931, -0.745182,
		0.715465, -0.335700, 0.612712,
		-0.585268, -0.766925, 0.263227,
		36.278721, 31.088280, 18.487629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.142708, 31.059969, 18.257746>,  <36.688408, 31.625128, 18.303370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.142708, 31.059969, 18.257746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.786114, 30.880009, 18.279099>,  <36.572159, 30.772034, 18.291910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.786114, 30.880009, 18.279099>,  <37.142708, 31.059969, 18.257746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.786114, 30.880009, 18.279099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290129, -0.657410, -0.695441,
		0.347970, -0.604487, 0.716599,
		-0.891483, -0.449898, 0.053380,
		36.518669, 30.745039, 18.295113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.270348, 30.298464, 18.264309>,  <37.142708, 31.059969, 18.257746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.270348, 30.298464, 18.264309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.898685, 30.334654, 18.120930>,  <36.675690, 30.356369, 18.034903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.898685, 30.334654, 18.120930>,  <37.270348, 30.298464, 18.264309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.898685, 30.334654, 18.120930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299640, -0.383593, -0.873540,
		-0.216533, -0.919060, 0.329307,
		-0.929155, 0.090476, -0.358447,
		36.619938, 30.361797, 18.013395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.076077, 29.688751, 17.892962>,  <37.270348, 30.298464, 18.264309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.076077, 29.688751, 17.892962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.806591, 29.947079, 17.749281>,  <36.644897, 30.102076, 17.663073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.806591, 29.947079, 17.749281>,  <37.076077, 29.688751, 17.892962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.806591, 29.947079, 17.749281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239164, -0.269361, -0.932869,
		-0.699218, -0.714398, 0.027017,
		-0.673717, 0.645817, -0.359201,
		36.604477, 30.140823, 17.641521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.591232, 29.086973, 18.176250>,  <37.076077, 29.688751, 17.892962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.591232, 29.086973, 18.176250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.860249, 28.816679, 18.296961>,  <38.021660, 28.654503, 18.369387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.860249, 28.816679, 18.296961>,  <37.591232, 29.086973, 18.176250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.860249, 28.816679, 18.296961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217951, 0.208838, 0.953354,
		-0.707240, -0.706941, -0.006826,
		0.672539, -0.675738, 0.301777,
		38.062012, 28.613958, 18.387493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.239239, 28.646046, 18.612913>,  <37.591232, 29.086973, 18.176250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.239239, 28.646046, 18.612913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.625366, 28.635401, 18.716797>,  <37.857044, 28.629015, 18.779127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.625366, 28.635401, 18.716797>,  <37.239239, 28.646046, 18.612913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.625366, 28.635401, 18.716797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252790, 0.153232, 0.955310,
		-0.065217, -0.987832, 0.141191,
		0.965321, -0.026611, 0.259707,
		37.914963, 28.627417, 18.794708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.295017, 28.562410, 19.396570>,  <37.239239, 28.646046, 18.612913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.295017, 28.562410, 19.396570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.669476, 28.668434, 19.304157>,  <37.894150, 28.732048, 19.248709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.669476, 28.668434, 19.304157>,  <37.295017, 28.562410, 19.396570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.669476, 28.668434, 19.304157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181962, 0.197030, 0.963363,
		0.300869, -0.943887, 0.136217,
		0.936145, 0.265060, -0.231032,
		37.950317, 28.747952, 19.234848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.713375, 28.433399, 19.984161>,  <37.295017, 28.562410, 19.396570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.713375, 28.433399, 19.984161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.940327, 28.700563, 19.791502>,  <38.076496, 28.860861, 19.675907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.940327, 28.700563, 19.791502>,  <37.713375, 28.433399, 19.984161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.940327, 28.700563, 19.791502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286164, 0.388526, 0.875876,
		0.772138, -0.634779, 0.029308,
		0.567375, 0.667910, -0.481647,
		38.110538, 28.900936, 19.647009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.406719, 28.462782, 20.300632>,  <37.713375, 28.433399, 19.984161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.406719, 28.462782, 20.300632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.350193, 28.805700, 20.102613>,  <38.316277, 29.011452, 19.983803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.350193, 28.805700, 20.102613>,  <38.406719, 28.462782, 20.300632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.350193, 28.805700, 20.102613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344163, 0.511417, 0.787403,
		0.928214, -0.059102, -0.367323,
		-0.141319, 0.857298, -0.495045,
		38.307796, 29.062889, 19.954100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.025360, 28.817457, 20.386398>,  <38.406719, 28.462782, 20.300632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.025360, 28.817457, 20.386398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.766716, 29.108393, 20.294428>,  <38.611530, 29.282955, 20.239244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.766716, 29.108393, 20.294428>,  <39.025360, 28.817457, 20.386398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.766716, 29.108393, 20.294428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278263, 0.505552, 0.816692,
		0.710254, 0.464104, -0.529289,
		-0.646613, 0.727341, -0.229927,
		38.572731, 29.326595, 20.225451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.420223, 29.478905, 20.390648>,  <39.025360, 28.817457, 20.386398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.420223, 29.478905, 20.390648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.031658, 29.572001, 20.409393>,  <38.798519, 29.627857, 20.420641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.031658, 29.572001, 20.409393>,  <39.420223, 29.478905, 20.390648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.031658, 29.572001, 20.409393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195434, 0.671841, 0.714447,
		0.134795, 0.703180, -0.698118,
		-0.971409, 0.232740, 0.046865,
		38.740234, 29.641823, 20.423452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.343925, 30.212404, 20.638996>,  <39.420223, 29.478905, 20.390648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.343925, 30.212404, 20.638996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.979115, 30.074190, 20.727371>,  <38.760227, 29.991262, 20.780396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.979115, 30.074190, 20.727371>,  <39.343925, 30.212404, 20.638996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.979115, 30.074190, 20.727371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030035, 0.593524, 0.804256,
		-0.409028, 0.726867, -0.551688,
		-0.912027, -0.345533, 0.220937,
		38.705505, 29.970530, 20.793652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.989830, 30.825262, 20.841398>,  <39.343925, 30.212404, 20.638996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.989830, 30.825262, 20.841398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.778606, 30.517925, 20.986067>,  <38.651871, 30.333523, 21.072868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.778606, 30.517925, 20.986067>,  <38.989830, 30.825262, 20.841398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.778606, 30.517925, 20.986067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096903, 0.477629, 0.873201,
		-0.843662, 0.426054, -0.326670,
		-0.528058, -0.768342, 0.361672,
		38.620190, 30.287422, 21.094568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.304474, 31.064468, 20.976955>,  <38.989830, 30.825262, 20.841398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.304474, 31.064468, 20.976955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.385399, 30.749500, 21.209864>,  <38.433952, 30.560518, 21.349609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.385399, 30.749500, 21.209864>,  <38.304474, 31.064468, 20.976955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.385399, 30.749500, 21.209864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147667, 0.563240, 0.812992,
		-0.968125, -0.250457, -0.002328,
		0.202308, -0.787421, 0.582270,
		38.446091, 30.513273, 21.384544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.795399, 30.971233, 21.325676>,  <38.304474, 31.064468, 20.976955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.795399, 30.971233, 21.325676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.071693, 30.785383, 21.547308>,  <38.237469, 30.673872, 21.680288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.071693, 30.785383, 21.547308>,  <37.795399, 30.971233, 21.325676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.071693, 30.785383, 21.547308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238721, 0.576769, 0.781249,
		-0.682566, -0.671907, 0.287479,
		0.690736, -0.464627, 0.554081,
		38.278915, 30.645996, 21.713531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.363930, 30.782831, 21.975077>,  <37.795399, 30.971233, 21.325676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.363930, 30.782831, 21.975077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.751995, 30.785595, 22.072025>,  <37.984833, 30.787252, 22.130194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.751995, 30.785595, 22.072025>,  <37.363930, 30.782831, 21.975077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.751995, 30.785595, 22.072025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203842, 0.564532, 0.799845,
		-0.131299, -0.825382, 0.549095,
		0.970159, 0.006909, 0.242370,
		38.043041, 30.787668, 22.144737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.430794, 30.705563, 22.697113>,  <37.363930, 30.782831, 21.975077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.430794, 30.705563, 22.697113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.790607, 30.845667, 22.592691>,  <38.006496, 30.929729, 22.530039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.790607, 30.845667, 22.592691>,  <37.430794, 30.705563, 22.697113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.790607, 30.845667, 22.592691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029971, 0.645670, 0.763028,
		0.435811, -0.678549, 0.591303,
		0.899539, 0.350258, -0.261054,
		38.060471, 30.950745, 22.514376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.936333, 30.742090, 23.286316>,  <37.430794, 30.705563, 22.697113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.936333, 30.742090, 23.286316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.068542, 31.008070, 23.018406>,  <38.147869, 31.167658, 22.857660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.068542, 31.008070, 23.018406>,  <37.936333, 30.742090, 23.286316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.068542, 31.008070, 23.018406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001941, 0.710136, 0.704062,
		0.943794, -0.231412, 0.236010,
		0.330528, 0.664947, -0.669773,
		38.167702, 31.207554, 22.817474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.501652, 31.104538, 23.564444>,  <37.936333, 30.742090, 23.286316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.501652, 31.104538, 23.564444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.383293, 31.372004, 23.291582>,  <38.312279, 31.532484, 23.127865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.383293, 31.372004, 23.291582>,  <38.501652, 31.104538, 23.564444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.383293, 31.372004, 23.291582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013059, 0.716897, 0.697057,
		0.955132, 0.197346, -0.220857,
		-0.295894, 0.668665, -0.682154,
		38.294525, 31.572603, 23.086935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.990704, 31.708250, 23.657618>,  <38.501652, 31.104538, 23.564444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.990704, 31.708250, 23.657618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.651894, 31.812618, 23.472372>,  <38.448608, 31.875240, 23.361225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.651894, 31.812618, 23.472372>,  <38.990704, 31.708250, 23.657618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.651894, 31.812618, 23.472372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102042, 0.775220, 0.623395,
		0.521674, 0.575285, -0.630002,
		-0.847020, 0.260922, -0.463115,
		38.397789, 31.890896, 23.333437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.939278, 32.414085, 23.804216>,  <38.990704, 31.708250, 23.657618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.939278, 32.414085, 23.804216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.578274, 32.341904, 23.647800>,  <38.361671, 32.298595, 23.553951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.578274, 32.341904, 23.647800>,  <38.939278, 32.414085, 23.804216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.578274, 32.341904, 23.647800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393235, 0.715552, 0.577366,
		0.175621, 0.674849, -0.716753,
		-0.902509, -0.180455, -0.391041,
		38.307522, 32.287766, 23.530489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.666523, 33.054306, 23.561316>,  <38.939278, 32.414085, 23.804216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.666523, 33.054306, 23.561316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.330784, 32.837643, 23.579639>,  <38.129341, 32.707645, 23.590633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.330784, 32.837643, 23.579639>,  <38.666523, 33.054306, 23.561316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.330784, 32.837643, 23.579639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394612, 0.665102, 0.633972,
		-0.373864, 0.514047, -0.771998,
		-0.839349, -0.541660, 0.045809,
		38.078979, 32.675144, 23.593382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.174992, 33.476871, 23.466709>,  <38.666523, 33.054306, 23.561316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.174992, 33.476871, 23.466709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.008526, 33.179863, 23.676653>,  <37.908646, 33.001659, 23.802620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.008526, 33.179863, 23.676653>,  <38.174992, 33.476871, 23.466709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.008526, 33.179863, 23.676653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314151, 0.659083, 0.683314,
		-0.853299, 0.119483, -0.507547,
		-0.416160, -0.742518, 0.524860,
		37.883678, 32.957108, 23.834110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.592037, 33.766396, 23.689373>,  <38.174992, 33.476871, 23.466709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.592037, 33.766396, 23.689373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.634224, 33.442383, 23.920101>,  <37.659534, 33.247974, 24.058538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.634224, 33.442383, 23.920101>,  <37.592037, 33.766396, 23.689373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.634224, 33.442383, 23.920101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268263, 0.535375, 0.800880,
		-0.957555, -0.239206, -0.160838,
		0.105467, -0.810033, 0.576821,
		37.665863, 33.199371, 24.093147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.957905, 33.765816, 24.084740>,  <37.592037, 33.766396, 23.689373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.957905, 33.765816, 24.084740> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.219326, 33.522606, 24.265039>,  <37.376179, 33.376678, 24.373219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.219326, 33.522606, 24.265039>,  <36.957905, 33.765816, 24.084740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.219326, 33.522606, 24.265039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189246, 0.445344, 0.875132,
		-0.732843, -0.657244, 0.175987,
		0.653550, -0.608029, 0.450747,
		37.415390, 33.340199, 24.400263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.539043, 33.519363, 24.587975>,  <36.957905, 33.765816, 24.084740>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.539043, 33.519363, 24.587975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.924084, 33.477352, 24.687872>,  <37.155109, 33.452145, 24.747810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.924084, 33.477352, 24.687872>,  <36.539043, 33.519363, 24.587975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.924084, 33.477352, 24.687872> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128721, 0.633838, 0.762680,
		-0.238398, -0.766302, 0.596613,
		0.962599, -0.105025, 0.249745,
		37.212864, 33.445843, 24.762794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.474186, 33.448574, 25.316725>,  <36.539043, 33.519363, 24.587975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.474186, 33.448574, 25.316725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.872036, 33.479889, 25.289612>,  <37.110744, 33.498676, 25.273344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.872036, 33.479889, 25.289612>,  <36.474186, 33.448574, 25.316725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.872036, 33.479889, 25.289612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046336, 0.248893, 0.967422,
		0.092606, -0.965362, 0.243928,
		0.994624, 0.078287, -0.067780,
		37.170422, 33.503376, 25.269278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.636269, 33.136196, 25.898977>,  <36.474186, 33.448574, 25.316725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.636269, 33.136196, 25.898977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.925949, 33.377670, 25.765659>,  <37.099758, 33.522556, 25.685669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.925949, 33.377670, 25.765659>,  <36.636269, 33.136196, 25.898977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.925949, 33.377670, 25.765659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247818, 0.223199, 0.942745,
		0.643516, -0.765338, 0.012037,
		0.724206, 0.603688, -0.333296,
		37.143211, 33.558777, 25.665670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.327320, 32.963161, 26.244688>,  <36.636269, 33.136196, 25.898977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.327320, 32.963161, 26.244688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.328114, 33.337898, 26.104790>,  <37.328590, 33.562740, 26.020851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.328114, 33.337898, 26.104790>,  <37.327320, 32.963161, 26.244688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.328114, 33.337898, 26.104790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542649, 0.292764, 0.787287,
		0.839957, -0.191347, -0.507797,
		0.001981, 0.936843, -0.349744,
		37.328709, 33.618950, 25.999866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.972866, 33.206554, 26.370380>,  <37.327320, 32.963161, 26.244688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.972866, 33.206554, 26.370380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.791126, 33.556091, 26.301142>,  <37.682083, 33.765816, 26.259600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.791126, 33.556091, 26.301142>,  <37.972866, 33.206554, 26.370380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.791126, 33.556091, 26.301142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.631250, 0.452925, 0.629589,
		0.628562, 0.176788, -0.757401,
		-0.454350, 0.873845, -0.173094,
		37.654823, 33.818245, 26.249214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.485363, 33.705330, 26.422989>,  <37.972866, 33.206554, 26.370380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.485363, 33.705330, 26.422989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.126141, 33.866760, 26.492996>,  <37.910606, 33.963619, 26.535002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.126141, 33.866760, 26.492996>,  <38.485363, 33.705330, 26.422989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.126141, 33.866760, 26.492996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376378, 0.499013, 0.780593,
		0.227689, 0.766887, -0.600036,
		-0.898052, 0.403573, 0.175020,
		37.856724, 33.987831, 26.545502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.595837, 34.447781, 26.539907>,  <38.485363, 33.705330, 26.422989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.595837, 34.447781, 26.539907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.245567, 34.355244, 26.709459>,  <38.035404, 34.299721, 26.811190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.245567, 34.355244, 26.709459>,  <38.595837, 34.447781, 26.539907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.245567, 34.355244, 26.709459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280305, 0.471256, 0.836269,
		-0.393217, 0.851117, -0.347823,
		-0.875677, -0.231338, 0.423878,
		37.982864, 34.285843, 26.836622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.468227, 35.059860, 26.819984>,  <38.595837, 34.447781, 26.539907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.468227, 35.059860, 26.819984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.188343, 34.831814, 26.992203>,  <38.020412, 34.694988, 27.095533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.188343, 34.831814, 26.992203>,  <38.468227, 35.059860, 26.819984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.188343, 34.831814, 26.992203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035574, 0.574097, 0.818014,
		-0.713536, 0.587693, -0.381423,
		-0.699715, -0.570114, 0.430545,
		37.978428, 34.660778, 27.121367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.828621, 35.462936, 27.010321>,  <38.468227, 35.059860, 26.819984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.828621, 35.462936, 27.010321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.841579, 35.151085, 27.260481>,  <37.849354, 34.963974, 27.410578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.841579, 35.151085, 27.260481>,  <37.828621, 35.462936, 27.010321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.841579, 35.151085, 27.260481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159036, 0.621779, 0.766876,
		-0.986741, 0.074621, 0.144130,
		0.032392, -0.779630, 0.625402,
		37.851295, 34.917194, 27.448101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.410397, 35.654827, 27.593800>,  <37.828621, 35.462936, 27.010321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.410397, 35.654827, 27.593800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.641781, 35.347488, 27.703358>,  <37.780613, 35.163086, 27.769093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.641781, 35.347488, 27.703358>,  <37.410397, 35.654827, 27.593800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.641781, 35.347488, 27.703358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060425, 0.375214, 0.924967,
		-0.813467, -0.518510, 0.263476,
		0.578464, -0.768350, 0.273893,
		37.815319, 35.116985, 27.785526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.119595, 35.442051, 28.284327>,  <37.410397, 35.654827, 27.593800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.119595, 35.442051, 28.284327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.495853, 35.308048, 28.262625>,  <37.721611, 35.227646, 28.249603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.495853, 35.308048, 28.262625>,  <37.119595, 35.442051, 28.284327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.495853, 35.308048, 28.262625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131584, 0.212656, 0.968227,
		-0.312828, -0.917903, 0.244117,
		0.940651, -0.335010, -0.054256,
		37.778049, 35.207546, 28.246347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.160187, 35.182709, 28.919052>,  <37.119595, 35.442051, 28.284327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.160187, 35.182709, 28.919052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.523441, 35.257908, 28.769417>,  <37.741394, 35.303028, 28.679636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.523441, 35.257908, 28.769417>,  <37.160187, 35.182709, 28.919052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.523441, 35.257908, 28.769417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280904, 0.388951, 0.877388,
		0.310443, -0.901874, 0.300415,
		0.908140, 0.187992, -0.374087,
		37.795883, 35.314308, 28.657190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.431946, 35.364567, 29.500195>,  <37.160187, 35.182709, 28.919052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.431946, 35.364567, 29.500195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.738922, 35.455933, 29.260574>,  <37.923107, 35.510750, 29.116802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.738922, 35.455933, 29.260574>,  <37.431946, 35.364567, 29.500195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.738922, 35.455933, 29.260574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472142, 0.430762, 0.769107,
		0.433770, -0.873067, 0.222705,
		0.767415, 0.228467, -0.599063,
		37.969154, 35.524456, 29.080858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.997898, 35.109558, 29.785393>,  <37.431946, 35.364567, 29.500195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.997898, 35.109558, 29.785393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.120010, 35.415615, 29.558636>,  <38.193279, 35.599247, 29.422583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.120010, 35.415615, 29.558636>,  <37.997898, 35.109558, 29.785393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.120010, 35.415615, 29.558636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469343, 0.397083, 0.788696,
		0.828566, -0.506839, -0.237892,
		0.305279, 0.765140, -0.566891,
		38.211594, 35.645157, 29.388569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.690395, 35.256138, 29.988855>,  <37.997898, 35.109558, 29.785393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.690395, 35.256138, 29.988855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.586655, 35.597637, 29.808254>,  <38.524410, 35.802536, 29.699894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.586655, 35.597637, 29.808254>,  <38.690395, 35.256138, 29.988855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.586655, 35.597637, 29.808254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552443, 0.514605, 0.655734,
		0.792177, -0.079367, -0.605108,
		-0.259348, 0.853746, -0.451504,
		38.508850, 35.853760, 29.672802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.172695, 35.798744, 30.117437>,  <38.690395, 35.256138, 29.988855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.172695, 35.798744, 30.117437> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.864651, 36.019207, 29.988966>,  <38.679825, 36.151485, 29.911884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.864651, 36.019207, 29.988966>,  <39.172695, 35.798744, 30.117437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.864651, 36.019207, 29.988966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236238, 0.714097, 0.658982,
		0.592554, 0.431615, -0.680139,
		-0.770111, 0.551157, -0.321177,
		38.633617, 36.184555, 29.892612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.456001, 36.435478, 29.945860>,  <39.172695, 35.798744, 30.117437>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.456001, 36.435478, 29.945860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.069481, 36.485004, 30.036129>,  <38.837566, 36.514721, 30.090290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.069481, 36.485004, 30.036129>,  <39.456001, 36.435478, 29.945860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.069481, 36.485004, 30.036129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250249, 0.657176, 0.710982,
		-0.060276, 0.743499, -0.666016,
		-0.966303, 0.123815, 0.225672,
		38.779591, 36.522148, 30.103830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.421219, 37.065964, 30.156305>,  <39.456001, 36.435478, 29.945860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.421219, 37.065964, 30.156305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.100479, 36.897388, 30.325739>,  <38.908035, 36.796246, 30.427399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.100479, 36.897388, 30.325739>,  <39.421219, 37.065964, 30.156305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.100479, 36.897388, 30.325739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117850, 0.583434, 0.803565,
		-0.585783, 0.694261, -0.418163,
		-0.801854, -0.421434, 0.423584,
		38.859924, 36.770958, 30.452814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.861782, 37.593842, 30.371889>,  <39.421219, 37.065964, 30.156305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.861782, 37.593842, 30.371889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.795956, 37.274239, 30.603233>,  <38.756458, 37.082478, 30.742041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.795956, 37.274239, 30.603233>,  <38.861782, 37.593842, 30.371889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.795956, 37.274239, 30.603233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065689, 0.576176, 0.814681,
		-0.984176, 0.172064, -0.042335,
		-0.164570, -0.799009, 0.578362,
		38.746586, 37.034534, 30.776741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.405052, 37.855289, 30.887911>,  <38.861782, 37.593842, 30.371889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.405052, 37.855289, 30.887911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.471569, 37.488976, 31.034161>,  <38.511478, 37.269188, 31.121910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.471569, 37.488976, 31.034161>,  <38.405052, 37.855289, 30.887911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.471569, 37.488976, 31.034161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035367, 0.365012, 0.930331,
		-0.985442, -0.167640, 0.028311,
		0.166295, -0.915786, 0.365627,
		38.521458, 37.214241, 31.143848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.971317, 37.815536, 31.388422>,  <38.405052, 37.855289, 30.887911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.971317, 37.815536, 31.388422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.265724, 37.557396, 31.470200>,  <38.442368, 37.402512, 31.519266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.265724, 37.557396, 31.470200>,  <37.971317, 37.815536, 31.388422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.265724, 37.557396, 31.470200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079343, 0.382159, 0.920684,
		-0.672297, -0.661418, 0.332480,
		0.736018, -0.645353, 0.204446,
		38.486530, 37.363789, 31.531534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.836418, 37.647705, 32.071407>,  <37.971317, 37.815536, 31.388422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.836418, 37.647705, 32.071407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.222103, 37.553852, 32.022011>,  <38.453514, 37.497540, 31.992373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.222103, 37.553852, 32.022011>,  <37.836418, 37.647705, 32.071407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.222103, 37.553852, 32.022011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219950, 0.447690, 0.866716,
		-0.148071, -0.862857, 0.483273,
		0.964208, -0.234631, -0.123495,
		38.511364, 37.483463, 31.984962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.063293, 37.243538, 32.565121>,  <37.836418, 37.647705, 32.071407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.063293, 37.243538, 32.565121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.419891, 37.382893, 32.449291>,  <38.633850, 37.466507, 32.379795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.419891, 37.382893, 32.449291>,  <38.063293, 37.243538, 32.565121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.419891, 37.382893, 32.449291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285401, 0.064487, 0.956236,
		0.351817, -0.935129, -0.041941,
		0.891499, 0.348390, -0.289574,
		38.687340, 37.487411, 32.362419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.434982, 37.063026, 33.105888>,  <38.063293, 37.243538, 32.565121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.434982, 37.063026, 33.105888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.678471, 37.327755, 32.930866>,  <38.824562, 37.486591, 32.825851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.678471, 37.327755, 32.930866>,  <38.434982, 37.063026, 33.105888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.678471, 37.327755, 32.930866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421414, 0.197563, 0.885087,
		0.672215, -0.723159, -0.158641,
		0.608717, 0.661822, -0.437554,
		38.861088, 37.526302, 32.799599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.060738, 36.948532, 33.488693>,  <38.434982, 37.063026, 33.105888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.060738, 36.948532, 33.488693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.085571, 37.306290, 33.311512>,  <39.100471, 37.520943, 33.205204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.085571, 37.306290, 33.311512>,  <39.060738, 36.948532, 33.488693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.085571, 37.306290, 33.311512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426940, 0.377358, 0.821780,
		0.902146, -0.240138, -0.358422,
		0.062087, 0.894391, -0.442957,
		39.104198, 37.574608, 33.178623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.766670, 37.146935, 33.472725>,  <39.060738, 36.948532, 33.488693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.766670, 37.146935, 33.472725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.558819, 37.488335, 33.457161>,  <39.434109, 37.693176, 33.447823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.558819, 37.488335, 33.457161>,  <39.766670, 37.146935, 33.472725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.558819, 37.488335, 33.457161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529477, 0.357430, 0.769349,
		0.670549, 0.379177, -0.637643,
		-0.519632, 0.853504, -0.038908,
		39.402927, 37.744385, 33.445488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.242748, 37.626431, 33.560383>,  <39.766670, 37.146935, 33.472725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.242748, 37.626431, 33.560383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.912491, 37.828049, 33.661766>,  <39.714336, 37.949020, 33.722595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.912491, 37.828049, 33.661766>,  <40.242748, 37.626431, 33.560383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.912491, 37.828049, 33.661766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447245, 0.310889, 0.838642,
		0.343919, 0.805780, -0.482118,
		-0.825646, 0.504050, 0.253461,
		39.664799, 37.979263, 33.737804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.406036, 38.102203, 33.969059>,  <40.242748, 37.626431, 33.560383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.406036, 38.102203, 33.969059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.023926, 38.214535, 34.006119>,  <39.794659, 38.281933, 34.028355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.023926, 38.214535, 34.006119>,  <40.406036, 38.102203, 33.969059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.023926, 38.214535, 34.006119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205103, 0.403497, 0.891697,
		0.213031, 0.870818, -0.443050,
		-0.955275, 0.280830, 0.092650,
		39.737343, 38.298782, 34.033913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.290001, 38.876274, 34.064327>,  <40.406036, 38.102203, 33.969059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.290001, 38.876274, 34.064327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.028614, 38.625652, 34.234226>,  <39.871780, 38.475277, 34.336166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.028614, 38.625652, 34.234226>,  <40.290001, 38.876274, 34.064327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.028614, 38.625652, 34.234226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339727, 0.258679, 0.904251,
		-0.676437, 0.735196, 0.043820,
		-0.653466, -0.626556, 0.424746,
		39.832573, 38.437687, 34.361649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.131786, 39.074375, 34.759892>,  <40.290001, 38.876274, 34.064327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.131786, 39.074375, 34.759892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.054474, 38.681942, 34.755444>,  <40.008087, 38.446484, 34.752777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.054474, 38.681942, 34.755444>,  <40.131786, 39.074375, 34.759892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.054474, 38.681942, 34.755444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418761, -0.092733, 0.903349,
		-0.887290, 0.169944, 0.428762,
		-0.193279, -0.981081, -0.011115,
		39.996490, 38.387619, 34.752110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.952099, 38.860718, 35.519360>,  <40.131786, 39.074375, 34.759892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.952099, 38.860718, 35.519360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.039165, 38.514488, 35.338955>,  <40.091404, 38.306751, 35.230713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.039165, 38.514488, 35.338955>,  <39.952099, 38.860718, 35.519360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.039165, 38.514488, 35.338955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436798, -0.326844, 0.838081,
		-0.872828, -0.379422, 0.306937,
		0.217666, -0.865570, -0.451009,
		40.104465, 38.254818, 35.203651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.695595, 38.295231, 35.962383>,  <39.952099, 38.860718, 35.519360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.695595, 38.295231, 35.962383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.970009, 38.130627, 35.722378>,  <40.134655, 38.031864, 35.578373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.970009, 38.130627, 35.722378>,  <39.695595, 38.295231, 35.962383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.970009, 38.130627, 35.722378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517462, -0.303759, 0.799977,
		-0.511461, -0.859294, 0.004554,
		0.686033, -0.411514, -0.600013,
		40.175819, 38.007172, 35.542374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.762321, 37.558537, 35.960522>,  <39.695595, 38.295231, 35.962383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.762321, 37.558537, 35.960522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.119522, 37.725716, 35.893753>,  <40.333843, 37.826023, 35.853691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.119522, 37.725716, 35.893753>,  <39.762321, 37.558537, 35.960522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.119522, 37.725716, 35.893753> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318048, -0.323644, 0.891123,
		0.318420, -0.848866, -0.421943,
		0.893003, 0.417949, -0.166925,
		40.387424, 37.851101, 35.843674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.310810, 36.986485, 36.180294>,  <39.762321, 37.558537, 35.960522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.310810, 36.986485, 36.180294> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.499760, 37.338921, 36.170948>,  <40.613129, 37.550381, 36.165340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.499760, 37.338921, 36.170948>,  <40.310810, 36.986485, 36.180294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.499760, 37.338921, 36.170948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.564722, -0.282194, 0.775536,
		0.676720, -0.379542, -0.630871,
		0.472376, 0.881087, -0.023369,
		40.641472, 37.603249, 36.163937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.129070, 36.858730, 36.094349>,  <40.310810, 36.986485, 36.180294>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.129070, 36.858730, 36.094349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.083157, 37.223953, 36.250881>,  <41.055611, 37.443089, 36.344803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.083157, 37.223953, 36.250881>,  <41.129070, 36.858730, 36.094349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.083157, 37.223953, 36.250881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384595, -0.322372, 0.864964,
		0.915921, 0.249788, -0.314157,
		-0.114782, 0.913062, 0.391335,
		41.048721, 37.497871, 36.368282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.778599, 36.933563, 36.511707>,  <41.129070, 36.858730, 36.094349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.778599, 36.933563, 36.511707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.500927, 37.201252, 36.617729>,  <41.334324, 37.361866, 36.681343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.500927, 37.201252, 36.617729>,  <41.778599, 36.933563, 36.511707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.500927, 37.201252, 36.617729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321030, -0.041736, 0.946149,
		0.644246, 0.741890, -0.185867,
		-0.694181, 0.669221, 0.265058,
		41.292671, 37.402020, 36.697247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.112041, 37.347847, 36.896595>,  <41.778599, 36.933563, 36.511707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.112041, 37.347847, 36.896595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.735771, 37.422150, 37.010174>,  <41.510010, 37.466732, 37.078320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.735771, 37.422150, 37.010174>,  <42.112041, 37.347847, 36.896595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.735771, 37.422150, 37.010174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262782, -0.130564, 0.955981,
		0.214655, 0.973882, 0.074004,
		-0.940675, 0.185759, 0.283945,
		41.453568, 37.477879, 37.095356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.167854, 37.785866, 37.510731>,  <42.112041, 37.347847, 36.896595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.167854, 37.785866, 37.510731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.791851, 37.654533, 37.547791>,  <41.566250, 37.575733, 37.570026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.791851, 37.654533, 37.547791>,  <42.167854, 37.785866, 37.510731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.791851, 37.654533, 37.547791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059524, 0.109555, 0.992197,
		-0.335915, 0.938189, -0.083439,
		-0.940010, -0.328327, 0.092646,
		41.509850, 37.556034, 37.575584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.913494, 38.330589, 37.802872>,  <42.167854, 37.785866, 37.510731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.913494, 38.330589, 37.802872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.755669, 37.969032, 37.868950>,  <41.660973, 37.752098, 37.908596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.755669, 37.969032, 37.868950>,  <41.913494, 38.330589, 37.802872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.755669, 37.969032, 37.868950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415924, -0.015383, 0.909269,
		-0.819344, 0.427475, 0.382022,
		-0.394566, -0.903896, 0.165193,
		41.637299, 37.697865, 37.918507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.508980, 38.354183, 38.461140>,  <41.913494, 38.330589, 37.802872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.508980, 38.354183, 38.461140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.635578, 37.987255, 38.364513>,  <41.711536, 37.767097, 38.306538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.635578, 37.987255, 38.364513>,  <41.508980, 38.354183, 38.461140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.635578, 37.987255, 38.364513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321370, -0.135912, 0.937149,
		-0.892499, -0.374233, 0.251785,
		0.316492, -0.917321, -0.241568,
		41.730526, 37.712059, 38.292042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.172222, 37.761524, 38.848946>,  <41.508980, 38.354183, 38.461140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.172222, 37.761524, 38.848946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.557487, 37.698444, 38.761810>,  <41.788647, 37.660599, 38.709530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.557487, 37.698444, 38.761810>,  <41.172222, 37.761524, 38.848946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.557487, 37.698444, 38.761810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218416, -0.013858, 0.975757,
		-0.156893, -0.987390, 0.021096,
		0.963161, -0.157697, -0.217836,
		41.846436, 37.651134, 38.696461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.385979, 37.117664, 39.158955>,  <41.172222, 37.761524, 38.848946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.385979, 37.117664, 39.158955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.691784, 37.371861, 39.115742>,  <41.875267, 37.524380, 39.089813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.691784, 37.371861, 39.115742>,  <41.385979, 37.117664, 39.158955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.691784, 37.371861, 39.115742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154994, -0.018554, 0.987741,
		0.625697, -0.771884, -0.112682,
		0.764513, 0.635492, -0.108028,
		41.921139, 37.562508, 39.083332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.516968, 36.539459, 38.787182>,  <41.385979, 37.117664, 39.158955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.516968, 36.539459, 38.787182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.220673, 36.280209, 38.716476>,  <41.042896, 36.124660, 38.674053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.220673, 36.280209, 38.716476>,  <41.516968, 36.539459, 38.787182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.220673, 36.280209, 38.716476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347075, 0.594493, -0.725339,
		0.575195, -0.475935, -0.665310,
		-0.740736, -0.648124, -0.176764,
		40.998451, 36.085770, 38.663448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.698757, 36.930565, 38.056076>,  <41.516968, 36.539459, 38.787182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.698757, 36.930565, 38.056076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.011463, 37.170979, 38.122543>,  <42.199085, 37.315228, 38.162426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.011463, 37.170979, 38.122543>,  <41.698757, 36.930565, 38.056076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.011463, 37.170979, 38.122543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074319, 0.174781, -0.981798,
		-0.619134, 0.779881, 0.091969,
		0.781761, 0.601030, 0.166173,
		42.245991, 37.351288, 38.172394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.062717, 36.819447, 37.709114>,  <41.698757, 36.930565, 38.056076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.062717, 36.819447, 37.709114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.134178, 37.126831, 37.954895>,  <41.177055, 37.311260, 38.102364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.134178, 37.126831, 37.954895>,  <41.062717, 36.819447, 37.709114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.134178, 37.126831, 37.954895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306095, 0.636916, -0.707562,
		-0.935089, -0.061676, 0.349006,
		0.178648, 0.768463, 0.614451,
		41.187771, 37.357368, 38.139229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.274426, 37.229294, 37.777145>,  <41.062717, 36.819447, 37.709114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.274426, 37.229294, 37.777145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.647758, 37.351906, 37.702389>,  <40.871758, 37.425472, 37.657536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.647758, 37.351906, 37.702389>,  <40.274426, 37.229294, 37.777145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.647758, 37.351906, 37.702389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282645, 0.306406, -0.908970,
		-0.221357, 0.901198, 0.372617,
		0.933334, 0.306526, -0.186894,
		40.927757, 37.443863, 37.646320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.253098, 37.858932, 37.444687>,  <40.274426, 37.229294, 37.777145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.253098, 37.858932, 37.444687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.622318, 37.746090, 37.340080>,  <40.843849, 37.678383, 37.277317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.622318, 37.746090, 37.340080>,  <40.253098, 37.858932, 37.444687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.622318, 37.746090, 37.340080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173405, 0.301687, -0.937505,
		0.343376, 0.910713, 0.229554,
		0.923051, -0.282111, -0.261514,
		40.899235, 37.661457, 37.261627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.593517, 38.462090, 37.144817>,  <40.253098, 37.858932, 37.444687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.593517, 38.462090, 37.144817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.753273, 38.119907, 37.012951>,  <40.849125, 37.914597, 36.933830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.753273, 38.119907, 37.012951>,  <40.593517, 38.462090, 37.144817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.753273, 38.119907, 37.012951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184564, 0.277201, -0.942918,
		0.898011, 0.437437, -0.047176,
		0.399390, -0.855458, -0.329665,
		40.873089, 37.863270, 36.914051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.349201, 38.498547, 36.943783>,  <40.593517, 38.462090, 37.144817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.349201, 38.498547, 36.943783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.158386, 38.207306, 36.746887>,  <41.043896, 38.032562, 36.628750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.158386, 38.207306, 36.746887>,  <41.349201, 38.498547, 36.943783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.158386, 38.207306, 36.746887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085111, 0.519170, -0.850423,
		0.874751, -0.447581, -0.185695,
		-0.477040, -0.728103, -0.492238,
		41.015274, 37.988876, 36.599216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.283409, 38.713867, 36.227283>,  <41.349201, 38.498547, 36.943783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.283409, 38.713867, 36.227283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.100895, 38.358738, 36.203407>,  <40.991386, 38.145660, 36.189079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.100895, 38.358738, 36.203407>,  <41.283409, 38.713867, 36.227283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.100895, 38.358738, 36.203407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114025, 0.124870, -0.985599,
		0.882496, -0.442911, -0.158212,
		-0.456288, -0.887828, -0.059694,
		40.964008, 38.092388, 36.185497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.479271, 38.429104, 35.470238>,  <41.283409, 38.713867, 36.227283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.479271, 38.429104, 35.470238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.131767, 38.269188, 35.587147>,  <40.923264, 38.173237, 35.657291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.131767, 38.269188, 35.587147>,  <41.479271, 38.429104, 35.470238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.131767, 38.269188, 35.587147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357735, 0.098497, -0.928614,
		0.342464, -0.911298, -0.228590,
		-0.868760, -0.399792, 0.292271,
		40.871140, 38.149250, 35.674828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.393532, 37.668583, 35.323212>,  <41.479271, 38.429104, 35.470238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.393532, 37.668583, 35.323212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.094944, 37.932861, 35.291550>,  <40.915791, 38.091431, 35.272552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.094944, 37.932861, 35.291550>,  <41.393532, 37.668583, 35.323212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.094944, 37.932861, 35.291550> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077044, -0.203967, -0.975941,
		-0.660949, -0.722408, 0.203157,
		-0.746465, 0.660700, -0.079155,
		40.871006, 38.131073, 35.267803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.032757, 37.584003, 34.657654>,  <41.393532, 37.668583, 35.323212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.032757, 37.584003, 34.657654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.771366, 37.704559, 34.935394>,  <40.614532, 37.776894, 35.102039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.771366, 37.704559, 34.935394>,  <41.032757, 37.584003, 34.657654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.771366, 37.704559, 34.935394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.736318, -0.040417, -0.675427,
		-0.175508, -0.952642, 0.248335,
		-0.653477, 0.301396, 0.694354,
		40.575321, 37.794979, 35.143700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.437046, 37.137241, 34.570538>,  <41.032757, 37.584003, 34.657654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.437046, 37.137241, 34.570538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.309109, 37.454086, 34.778484>,  <40.232346, 37.644192, 34.903252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.309109, 37.454086, 34.778484>,  <40.437046, 37.137241, 34.570538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.309109, 37.454086, 34.778484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.847282, 0.006450, -0.531104,
		-0.424047, -0.610341, 0.669080,
		-0.319839, 0.792112, 0.519866,
		40.213158, 37.691719, 34.934444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.638824, 37.078171, 34.812855>,  <40.437046, 37.137241, 34.570538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.638824, 37.078171, 34.812855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.733795, 37.466587, 34.802193>,  <39.790779, 37.699638, 34.795795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.733795, 37.466587, 34.802193>,  <39.638824, 37.078171, 34.812855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.733795, 37.466587, 34.802193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.697665, 0.151362, -0.700253,
		-0.675939, 0.184854, 0.713398,
		0.237426, 0.971040, -0.026655,
		39.805023, 37.757900, 34.794197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.039093, 37.402134, 34.750767>,  <39.638824, 37.078171, 34.812855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.039093, 37.402134, 34.750767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.311287, 37.664948, 34.620998>,  <39.474602, 37.822636, 34.543137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.311287, 37.664948, 34.620998>,  <39.039093, 37.402134, 34.750767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.311287, 37.664948, 34.620998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.529745, 0.135211, -0.837310,
		-0.506274, 0.741638, 0.440068,
		0.680483, 0.657032, -0.324425,
		39.515430, 37.862057, 34.523670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.508652, 37.944420, 34.511150>,  <39.039093, 37.402134, 34.750767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.508652, 37.944420, 34.511150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.863743, 38.026554, 34.346333>,  <39.076797, 38.075832, 34.247440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.863743, 38.026554, 34.346333>,  <38.508652, 37.944420, 34.511150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.863743, 38.026554, 34.346333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436498, 0.090908, -0.895101,
		-0.146336, 0.974461, 0.170329,
		0.887725, 0.205333, -0.412047,
		39.130062, 38.088154, 34.222717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.489449, 38.524143, 33.994568>,  <38.508652, 37.944420, 34.511150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.489449, 38.524143, 33.994568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.848656, 38.375130, 33.900948>,  <39.064178, 38.285721, 33.844776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.848656, 38.375130, 33.900948>,  <38.489449, 38.524143, 33.994568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.848656, 38.375130, 33.900948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251436, 0.001987, -0.967872,
		0.361028, 0.928017, -0.091883,
		0.898019, -0.372532, -0.234054,
		39.118061, 38.263371, 33.830730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.770885, 38.880238, 33.294044>,  <38.489449, 38.524143, 33.994568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.770885, 38.880238, 33.294044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.944611, 38.526878, 33.364445>,  <39.048847, 38.314861, 33.406685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.944611, 38.526878, 33.364445>,  <38.770885, 38.880238, 33.294044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.944611, 38.526878, 33.364445> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132400, -0.255876, -0.957600,
		0.890977, 0.392599, -0.228093,
		0.434317, -0.883399, 0.175999,
		39.074905, 38.261860, 33.417244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.942753, 38.807438, 32.617619>,  <38.770885, 38.880238, 33.294044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.942753, 38.807438, 32.617619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.049965, 38.446453, 32.752506>,  <39.114292, 38.229862, 32.833439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.049965, 38.446453, 32.752506>,  <38.942753, 38.807438, 32.617619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.049965, 38.446453, 32.752506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187041, -0.392109, -0.900703,
		0.945078, 0.178347, -0.273897,
		0.268035, -0.902465, 0.337216,
		39.130375, 38.175713, 32.853672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.512920, 38.464737, 32.138218>,  <38.942753, 38.807438, 32.617619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.512920, 38.464737, 32.138218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.335350, 38.175480, 32.349876>,  <39.228806, 38.001926, 32.476871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.335350, 38.175480, 32.349876>,  <39.512920, 38.464737, 32.138218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.335350, 38.175480, 32.349876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159451, -0.517343, -0.840792,
		0.881761, -0.457624, 0.114358,
		-0.443929, -0.723143, 0.529141,
		39.202171, 37.958538, 32.508617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.822060, 37.820366, 31.878582>,  <39.512920, 38.464737, 32.138218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.822060, 37.820366, 31.878582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.477810, 37.726864, 32.059551>,  <39.271259, 37.670761, 32.168133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.477810, 37.726864, 32.059551>,  <39.822060, 37.820366, 31.878582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.477810, 37.726864, 32.059551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281127, -0.522694, -0.804834,
		0.424615, -0.819847, 0.384126,
		-0.860621, -0.233757, 0.452425,
		39.219624, 37.656738, 32.195278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.780434, 37.167191, 31.791187>,  <39.822060, 37.820366, 31.878582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.780434, 37.167191, 31.791187> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.401844, 37.271812, 31.866852>,  <39.174690, 37.334587, 31.912251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.401844, 37.271812, 31.866852>,  <39.780434, 37.167191, 31.791187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.401844, 37.271812, 31.866852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314043, -0.610649, -0.726969,
		-0.074633, -0.747460, 0.660102,
		-0.946471, 0.261556, 0.189160,
		39.117905, 37.350281, 31.923599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.447937, 36.523621, 31.907345>,  <39.780434, 37.167191, 31.791187>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.447937, 36.523621, 31.907345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.153774, 36.763908, 31.781929>,  <38.977276, 36.908081, 31.706678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.153774, 36.763908, 31.781929>,  <39.447937, 36.523621, 31.907345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.153774, 36.763908, 31.781929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153999, -0.598763, -0.785981,
		-0.659894, -0.529732, 0.532846,
		-0.735408, 0.600722, -0.313542,
		38.933151, 36.944126, 31.687866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.897835, 36.112064, 31.740911>,  <39.447937, 36.523621, 31.907345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.897835, 36.112064, 31.740911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.809147, 36.451809, 31.549320>,  <38.755932, 36.655655, 31.434366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.809147, 36.451809, 31.549320>,  <38.897835, 36.112064, 31.740911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.809147, 36.451809, 31.549320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041487, -0.482542, -0.874890,
		-0.974227, -0.213855, 0.071753,
		-0.221723, 0.849364, -0.478978,
		38.742630, 36.706619, 31.405626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.468288, 35.708458, 32.077278>,  <38.897835, 36.112064, 31.740911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.468288, 35.708458, 32.077278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.383942, 35.319389, 32.038414>,  <39.333332, 35.085949, 32.015095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.383942, 35.319389, 32.038414>,  <39.468288, 35.708458, 32.077278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.383942, 35.319389, 32.038414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.971566, 0.219498, -0.088766,
		0.107668, 0.075683, -0.991302,
		-0.210871, -0.972673, -0.097164,
		39.320679, 35.027588, 32.009266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.103973, 35.873905, 32.191963>,  <39.468288, 35.708458, 32.077278>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.103973, 35.873905, 32.191963> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.898155, 35.806343, 32.528229>,  <39.774666, 35.765804, 32.729988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.898155, 35.806343, 32.528229>,  <40.103973, 35.873905, 32.191963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.898155, 35.806343, 32.528229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436479, 0.895475, -0.087236,
		-0.738059, -0.411819, -0.534484,
		-0.514543, -0.168905, 0.840664,
		39.743793, 35.755672, 32.780430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.271900, 36.170891, 32.941940>,  <40.103973, 35.873905, 32.191963>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.271900, 36.170891, 32.941940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.062458, 36.503029, 32.865662>,  <39.936794, 36.702312, 32.819893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.062458, 36.503029, 32.865662>,  <40.271900, 36.170891, 32.941940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.062458, 36.503029, 32.865662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.751106, 0.555545, 0.356665,
		0.402096, 0.043517, -0.914563,
		-0.523602, 0.830347, -0.190696,
		39.905376, 36.752132, 32.808453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.636791, 36.650043, 32.429565>,  <40.271900, 36.170891, 32.941940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.636791, 36.650043, 32.429565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.402294, 36.801525, 32.716034>,  <40.261597, 36.892414, 32.887913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.402294, 36.801525, 32.716034>,  <40.636791, 36.650043, 32.429565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.402294, 36.801525, 32.716034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.765239, 0.549058, 0.336073,
		-0.265944, 0.745061, -0.611685,
		-0.586245, 0.378708, 0.716168,
		40.226421, 36.915138, 32.930885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.507477, 37.312584, 32.344040>,  <40.636791, 36.650043, 32.429565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.507477, 37.312584, 32.344040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.519653, 37.204712, 32.729027>,  <40.526958, 37.139988, 32.960018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.519653, 37.204712, 32.729027>,  <40.507477, 37.312584, 32.344040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.519653, 37.204712, 32.729027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.828100, 0.546049, 0.126810,
		-0.559753, 0.793162, 0.239939,
		0.030438, -0.269676, 0.962470,
		40.528786, 37.123810, 33.017769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.488243, 37.892147, 32.851162>,  <40.507477, 37.312584, 32.344040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.488243, 37.892147, 32.851162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.700928, 37.568687, 32.951859>,  <40.828537, 37.374611, 33.012276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.700928, 37.568687, 32.951859>,  <40.488243, 37.892147, 32.851162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.700928, 37.568687, 32.951859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.846485, 0.517001, -0.127176,
		-0.027308, 0.280712, 0.959403,
		0.531712, -0.808647, 0.251737,
		40.860443, 37.326092, 33.027378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.070049, 38.084263, 33.207195>,  <40.488243, 37.892147, 32.851162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.070049, 38.084263, 33.207195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.180988, 37.740070, 33.036247>,  <41.247551, 37.533554, 32.933678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.180988, 37.740070, 33.036247>,  <41.070049, 38.084263, 33.207195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.180988, 37.740070, 33.036247> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.865671, 0.416766, -0.277347,
		0.416766, -0.293040, 0.860485,
		0.277347, -0.860485, -0.427369,
		41.264191, 37.481926, 32.908035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.698467, 37.757862, 33.524490>,  <41.070049, 38.084263, 33.207195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.698467, 37.757862, 33.524490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.628464, 37.743256, 33.130936>,  <41.586464, 37.734489, 32.894802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.628464, 37.743256, 33.130936>,  <41.698467, 37.757862, 33.524490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.628464, 37.743256, 33.130936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.922229, 0.343853, -0.176802,
		0.344768, -0.938313, -0.026508,
		-0.175011, -0.036509, -0.983889,
		41.575962, 37.732300, 32.835770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.382622, 37.769444, 33.305393>,  <41.698467, 37.757862, 33.524490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.382622, 37.769444, 33.305393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.189251, 37.795540, 32.956211>,  <42.073231, 37.811199, 32.746704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.189251, 37.795540, 32.956211>,  <42.382622, 37.769444, 33.305393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.189251, 37.795540, 32.956211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.812464, 0.404683, -0.419682,
		0.325886, -0.912127, -0.248644,
		-0.483425, 0.065246, -0.872951,
		42.044224, 37.815113, 32.694324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.827560, 37.232315, 33.208900>,  <42.382622, 37.769444, 33.305393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.827560, 37.232315, 33.208900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.151550, 37.231636, 32.974316>,  <43.345943, 37.231228, 32.833565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.151550, 37.231636, 32.974316>,  <42.827560, 37.232315, 33.208900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.151550, 37.231636, 32.974316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.580430, -0.140761, 0.802052,
		-0.083911, -0.990043, -0.113029,
		0.809976, -0.001695, -0.586461,
		43.394543, 37.231125, 32.798378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.330601, 36.733662, 33.517326>,  <42.827560, 37.232315, 33.208900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.330601, 36.733662, 33.517326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.551758, 36.910671, 33.234913>,  <43.684452, 37.016876, 33.065464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.551758, 36.910671, 33.234913>,  <43.330601, 36.733662, 33.517326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.551758, 36.910671, 33.234913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.823788, -0.162945, 0.542976,
		0.125234, -0.881830, -0.454635,
		0.552893, 0.442522, -0.706034,
		43.717625, 37.043427, 33.023102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.958458, 36.374798, 33.301128>,  <43.330601, 36.733662, 33.517326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.958458, 36.374798, 33.301128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.055790, 36.750587, 33.204647>,  <44.114189, 36.976063, 33.146759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.055790, 36.750587, 33.204647>,  <43.958458, 36.374798, 33.301128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.055790, 36.750587, 33.204647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.856109, -0.091133, 0.508697,
		0.455927, -0.330272, -0.826469,
		0.243326, 0.939476, -0.241199,
		44.128788, 37.032429, 33.132286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.588223, 36.255341, 33.008026>,  <43.958458, 36.374798, 33.301128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.588223, 36.255341, 33.008026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.572300, 36.649887, 33.071896>,  <44.562748, 36.886616, 33.110218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.572300, 36.649887, 33.071896>,  <44.588223, 36.255341, 33.008026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.572300, 36.649887, 33.071896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.905201, -0.032074, 0.423771,
		0.423116, 0.161404, -0.891584,
		-0.039802, 0.986367, 0.159674,
		44.560360, 36.945797, 33.119797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.108437, 36.653473, 32.544788>,  <44.588223, 36.255341, 33.008026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.108437, 36.653473, 32.544788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.033360, 36.789631, 32.913334>,  <44.988312, 36.871326, 33.134460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.033360, 36.789631, 32.913334>,  <45.108437, 36.653473, 32.544788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.033360, 36.789631, 32.913334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.960802, -0.131225, 0.244212,
		0.204033, 0.931081, -0.302420,
		-0.187696, 0.340393, 0.921359,
		44.977051, 36.891750, 33.189743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.600468, 37.147774, 32.817780>,  <45.108437, 36.653473, 32.544788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.600468, 37.147774, 32.817780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.454906, 36.942394, 33.128635>,  <45.367569, 36.819168, 33.315147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.454906, 36.942394, 33.128635>,  <45.600468, 37.147774, 32.817780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.454906, 36.942394, 33.128635> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.930013, -0.246391, 0.272704,
		0.051462, 0.821989, 0.567174,
		-0.363907, -0.513445, 0.777140,
		45.345734, 36.788361, 33.361778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.918278, 37.170094, 33.524887>,  <45.600468, 37.147774, 32.817780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.918278, 37.170094, 33.524887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.796772, 36.803661, 33.420181>,  <45.723869, 36.583801, 33.357357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.796772, 36.803661, 33.420181>,  <45.918278, 37.170094, 33.524887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.796772, 36.803661, 33.420181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.942300, -0.329445, 0.059463,
		-0.140709, -0.228595, 0.963299,
		-0.303761, -0.916084, -0.261761,
		45.705643, 36.528835, 33.341652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.202705, 36.707275, 34.019371>,  <45.918278, 37.170094, 33.524887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.202705, 36.707275, 34.019371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.139771, 36.475456, 33.699528>,  <46.102009, 36.336365, 33.507622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.139771, 36.475456, 33.699528>,  <46.202705, 36.707275, 34.019371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.139771, 36.475456, 33.699528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.915506, -0.389178, 0.101927,
		-0.370261, -0.716009, 0.591809,
		-0.157338, -0.579544, -0.799608,
		46.092567, 36.301594, 33.459644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.727074, 36.281464, 34.194382>,  <46.202705, 36.707275, 34.019371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.727074, 36.281464, 34.194382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.542721, 35.949062, 34.069794>,  <46.432110, 35.749622, 33.995041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.542721, 35.949062, 34.069794>,  <46.727074, 36.281464, 34.194382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.542721, 35.949062, 34.069794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.829700, -0.278932, -0.483523,
		0.314931, -0.481278, 0.818041,
		-0.460887, -0.831005, -0.311472,
		46.404453, 35.699760, 33.976353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.001904, 35.567009, 34.248829>,  <46.727074, 36.281464, 34.194382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.001904, 35.567009, 34.248829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.784512, 35.620342, 33.917324>,  <46.654076, 35.652344, 33.718422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.784512, 35.620342, 33.917324>,  <47.001904, 35.567009, 34.248829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.784512, 35.620342, 33.917324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.778313, -0.289762, -0.557016,
		-0.314413, -0.947766, 0.053705,
		-0.543483, 0.133334, -0.828763,
		46.621468, 35.660343, 33.668694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.433708, 34.989948, 34.514275>,  <47.001904, 35.567009, 34.248829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.433708, 34.989948, 34.514275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.514469, 34.794868, 34.854012>,  <47.562927, 34.677822, 35.057854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.514469, 34.794868, 34.854012>,  <47.433708, 34.989948, 34.514275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.514469, 34.794868, 34.854012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.978842, 0.129906, -0.158093,
		-0.033233, 0.863293, 0.503608,
		0.201902, -0.487699, 0.849344,
		47.575039, 34.648560, 35.108814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.650726, 35.469177, 35.086197>,  <47.433708, 34.989948, 34.514275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.650726, 35.469177, 35.086197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.790554, 35.094437, 35.081871>,  <47.874451, 34.869595, 35.079273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.790554, 35.094437, 35.081871>,  <47.650726, 35.469177, 35.086197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.790554, 35.094437, 35.081871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.915088, 0.343880, -0.210621,
		0.201039, 0.063728, 0.977508,
		0.349568, -0.936849, -0.010817,
		47.895424, 34.813381, 35.078625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<36.045773, 29.305008, 25.283922> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.698040, 29.153337, 25.410725>,  <35.489399, 29.062336, 25.486805>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.698040, 29.153337, 25.410725>,  <36.045773, 29.305008, 25.283922>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.698040, 29.153337, 25.410725> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051662, 0.568178, 0.821282,
		-0.491525, 0.730342, -0.474345,
		-0.869330, -0.379175, 0.317005,
		35.437241, 29.039585, 25.505827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.607544, 29.923403, 25.482887>,  <36.045773, 29.305008, 25.283922>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.607544, 29.923403, 25.482887> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.413448, 29.619232, 25.655533>,  <35.296989, 29.436729, 25.759121>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.413448, 29.619232, 25.655533>,  <35.607544, 29.923403, 25.482887>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.413448, 29.619232, 25.655533> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120604, 0.547114, 0.828324,
		-0.866021, 0.349885, -0.357194,
		-0.485244, -0.760426, 0.431615,
		35.267876, 29.391104, 25.785017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.979198, 30.181984, 25.782902>,  <35.607544, 29.923403, 25.482887>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.979198, 30.181984, 25.782902> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.020870, 29.835466, 25.978321>,  <35.045876, 29.627556, 26.095572>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.020870, 29.835466, 25.978321>,  <34.979198, 30.181984, 25.782902>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.020870, 29.835466, 25.978321> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093734, 0.480481, 0.871982,
		-0.990131, -0.136637, -0.031144,
		0.104181, -0.866296, 0.488547,
		35.052124, 29.575577, 26.124886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.325760, 30.031569, 26.247004>,  <34.979198, 30.181984, 25.782902>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.325760, 30.031569, 26.247004> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.651844, 29.837128, 26.372946>,  <34.847496, 29.720463, 26.448511>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.651844, 29.837128, 26.372946>,  <34.325760, 30.031569, 26.247004>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.651844, 29.837128, 26.372946> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045364, 0.488376, 0.871453,
		-0.577381, -0.724703, 0.376079,
		0.815213, -0.486100, 0.314855,
		34.896408, 29.691298, 26.467402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.143970, 29.908907, 26.862429>,  <34.325760, 30.031569, 26.247004>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.143970, 29.908907, 26.862429> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.538235, 29.849726, 26.894875>,  <34.774796, 29.814217, 26.914343>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.538235, 29.849726, 26.894875>,  <34.143970, 29.908907, 26.862429>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.538235, 29.849726, 26.894875> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029834, 0.320346, 0.946831,
		-0.166069, -0.935676, 0.311339,
		0.985663, -0.147951, 0.081115,
		34.833935, 29.805340, 26.919209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.200943, 29.727890, 27.504139>,  <34.143970, 29.908907, 26.862429>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.200943, 29.727890, 27.504139> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.574097, 29.840429, 27.414192>,  <34.797989, 29.907953, 27.360224>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.574097, 29.840429, 27.414192>,  <34.200943, 29.727890, 27.504139>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.574097, 29.840429, 27.414192> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070766, 0.468989, 0.880364,
		0.353150, -0.837193, 0.417604,
		0.932886, 0.281349, -0.224868,
		34.853962, 29.924835, 27.346731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.610138, 29.624355, 28.129768>,  <34.200943, 29.727890, 27.504139>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.610138, 29.624355, 28.129768> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.801220, 29.877310, 27.885838>,  <34.915871, 30.029083, 27.739479>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.801220, 29.877310, 27.885838>,  <34.610138, 29.624355, 28.129768>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.801220, 29.877310, 27.885838> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214009, 0.589473, 0.778924,
		0.852056, -0.502603, 0.146257,
		0.477704, 0.632386, -0.609825,
		34.944530, 30.067026, 27.702890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.269634, 29.655058, 28.350863>,  <34.610138, 29.624355, 28.129768>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.269634, 29.655058, 28.350863> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.225872, 30.009670, 28.171043>,  <35.199615, 30.222437, 28.063152>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.225872, 30.009670, 28.171043>,  <35.269634, 29.655058, 28.350863>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.225872, 30.009670, 28.171043> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177627, 0.462420, 0.868687,
		0.977998, 0.015187, -0.208063,
		-0.109405, 0.886531, -0.449548,
		35.193050, 30.275629, 28.036179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.684528, 30.047892, 28.826277>,  <35.269634, 29.655058, 28.350863>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.684528, 30.047892, 28.826277> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.471359, 30.300478, 28.600981>,  <35.343456, 30.452030, 28.465803>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.471359, 30.300478, 28.600981>,  <35.684528, 30.047892, 28.826277>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.471359, 30.300478, 28.600981> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020473, 0.655824, 0.754636,
		0.845916, 0.413695, -0.336576,
		-0.532924, 0.631467, -0.563242,
		35.311481, 30.489918, 28.432009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.034008, 30.691299, 28.869904>,  <35.684528, 30.047892, 28.826277>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.034008, 30.691299, 28.869904> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.655640, 30.777269, 28.772713>,  <35.428619, 30.828852, 28.714397>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.655640, 30.777269, 28.772713>,  <36.034008, 30.691299, 28.869904>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.655640, 30.777269, 28.772713> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000308, 0.748427, 0.663217,
		0.324391, 0.627427, -0.707889,
		-0.945923, 0.214923, -0.242977,
		35.371864, 30.841747, 28.699820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.012947, 31.427883, 28.791048>,  <36.034008, 30.691299, 28.869904>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.012947, 31.427883, 28.791048> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.627819, 31.324574, 28.822723>,  <35.396744, 31.262589, 28.841728>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.627819, 31.324574, 28.822723>,  <36.012947, 31.427883, 28.791048>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.627819, 31.324574, 28.822723> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155291, 0.769031, 0.620061,
		-0.221045, 0.584710, -0.780547,
		-0.962821, -0.258274, 0.079190,
		35.338974, 31.247091, 28.846481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.769566, 32.022095, 28.774031>,  <36.012947, 31.427883, 28.791048>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.769566, 32.022095, 28.774031> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.508457, 31.777349, 28.952698>,  <35.351791, 31.630503, 29.059898>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.508457, 31.777349, 28.952698>,  <35.769566, 32.022095, 28.774031>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.508457, 31.777349, 28.952698> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137682, 0.675619, 0.724281,
		-0.744938, 0.411292, -0.525268,
		-0.652772, -0.611864, 0.446666,
		35.312626, 31.593790, 29.086699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.012280, 32.413574, 28.941847>,  <35.769566, 32.022095, 28.774031>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.012280, 32.413574, 28.941847> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.069584, 32.108395, 29.194002>,  <35.103966, 31.925287, 29.345295>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.069584, 32.108395, 29.194002>,  <35.012280, 32.413574, 28.941847>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.069584, 32.108395, 29.194002> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049701, 0.630610, 0.774506,
		-0.988436, -0.142288, 0.052423,
		0.143262, -0.762945, 0.630390,
		35.112564, 31.879511, 29.383120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.457134, 32.511711, 29.499447>,  <35.012280, 32.413574, 28.941847>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.457134, 32.511711, 29.499447> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.755165, 32.293072, 29.652332>,  <34.933983, 32.161888, 29.744062>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.755165, 32.293072, 29.652332>,  <34.457134, 32.511711, 29.499447>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.755165, 32.293072, 29.652332> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049399, 0.616700, 0.785647,
		-0.665146, -0.566487, 0.486491,
		0.745077, -0.546602, 0.382211,
		34.978687, 32.129089, 29.766996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.243958, 32.430637, 30.192345>,  <34.457134, 32.511711, 29.499447>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.243958, 32.430637, 30.192345> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.630505, 32.328701, 30.206198>,  <34.862431, 32.267540, 30.214510>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.630505, 32.328701, 30.206198>,  <34.243958, 32.430637, 30.192345>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.630505, 32.328701, 30.206198> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123171, 0.576813, 0.807537,
		-0.225767, -0.776109, 0.588799,
		0.966363, -0.254838, 0.034631,
		34.920414, 32.252251, 30.216587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.379623, 32.238918, 30.870401>,  <34.243958, 32.430637, 30.192345>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.379623, 32.238918, 30.870401> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.745152, 32.325218, 30.732773>,  <34.964470, 32.376999, 30.650196>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.745152, 32.325218, 30.732773>,  <34.379623, 32.238918, 30.870401>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.745152, 32.325218, 30.732773> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190244, 0.521095, 0.832026,
		0.358801, -0.825780, 0.435143,
		0.913821, 0.215748, -0.344069,
		35.019299, 32.389942, 30.629553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.873886, 31.943964, 31.339453>,  <34.379623, 32.238918, 30.870401>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.873886, 31.943964, 31.339453> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.047577, 32.247227, 31.144867>,  <35.151791, 32.429184, 31.028116>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.047577, 32.247227, 31.144867>,  <34.873886, 31.943964, 31.339453>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.047577, 32.247227, 31.144867> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175082, 0.458701, 0.871171,
		0.883626, -0.463455, 0.066440,
		0.434225, 0.758157, -0.486463,
		35.177845, 32.474674, 30.998928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.395966, 32.129822, 31.698746>,  <34.873886, 31.943964, 31.339453>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.395966, 32.129822, 31.698746> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.350227, 32.447613, 31.460171>,  <35.322784, 32.638287, 31.317026>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.350227, 32.447613, 31.460171>,  <35.395966, 32.129822, 31.698746>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.350227, 32.447613, 31.460171> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340268, 0.595381, 0.727831,
		0.933350, -0.119723, -0.338413,
		-0.114347, 0.794473, -0.596438,
		35.315922, 32.685955, 31.281239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.970642, 32.560894, 31.678267>,  <35.395966, 32.129822, 31.698746>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.970642, 32.560894, 31.678267> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.671799, 32.818466, 31.612331>,  <35.492493, 32.973011, 31.572769>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.671799, 32.818466, 31.612331>,  <35.970642, 32.560894, 31.678267>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.671799, 32.818466, 31.612331> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317958, 0.563995, 0.762110,
		0.583718, 0.516969, -0.626112,
		-0.747112, 0.643935, -0.164840,
		35.447666, 33.011646, 31.562880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.413689, 33.174015, 31.692427>,  <35.970642, 32.560894, 31.678267>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.413689, 33.174015, 31.692427> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.029274, 33.281170, 31.719671>,  <35.798626, 33.345463, 31.736019>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.029274, 33.281170, 31.719671>,  <36.413689, 33.174015, 31.692427>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.029274, 33.281170, 31.719671> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213162, 0.561404, 0.799617,
		0.175968, 0.782983, -0.596635,
		-0.961040, 0.267887, 0.068113,
		35.740963, 33.361534, 31.740105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.381771, 33.878651, 31.701015>,  <36.413689, 33.174015, 31.692427>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.381771, 33.878651, 31.701015> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.059834, 33.747726, 31.899042>,  <35.866673, 33.669170, 32.017857>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.059834, 33.747726, 31.899042>,  <36.381771, 33.878651, 31.701015>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.059834, 33.747726, 31.899042> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157105, 0.686908, 0.709560,
		-0.572313, 0.648863, -0.501432,
		-0.804845, -0.327313, 0.495067,
		35.818378, 33.649532, 32.047562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.647884, 34.543209, 32.172310>,  <36.381771, 33.878651, 31.701015>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.647884, 34.543209, 32.172310> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.040062, 34.615486, 32.141140>,  <37.275368, 34.658852, 32.122437>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.040062, 34.615486, 32.141140>,  <36.647884, 34.543209, 32.172310>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.040062, 34.615486, 32.141140> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067626, -0.681291, -0.728883,
		-0.184795, 0.709361, -0.680189,
		0.980448, 0.180692, -0.077928,
		37.334198, 34.669693, 32.117764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.823589, 34.581020, 31.524752>,  <36.647884, 34.543209, 32.172310>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.823589, 34.581020, 31.524752> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.180805, 34.508625, 31.689539>,  <37.395134, 34.465187, 31.788410>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.180805, 34.508625, 31.689539>,  <36.823589, 34.581020, 31.524752>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.180805, 34.508625, 31.689539> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231583, -0.600106, -0.765665,
		0.385804, 0.779175, -0.494006,
		0.893043, -0.180993, 0.411967,
		37.448719, 34.454327, 31.813129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.282364, 34.687431, 30.978146>,  <36.823589, 34.581020, 31.524752>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.282364, 34.687431, 30.978146> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.455627, 34.454960, 31.253710>,  <37.559586, 34.315475, 31.419048>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.455627, 34.454960, 31.253710>,  <37.282364, 34.687431, 30.978146>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.455627, 34.454960, 31.253710> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151402, -0.706561, -0.691266,
		0.888509, 0.403733, -0.218064,
		0.433163, -0.581180, 0.688912,
		37.585575, 34.280605, 31.460382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.822922, 34.461533, 30.606943>,  <37.282364, 34.687431, 30.978146>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.822922, 34.461533, 30.606943> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.823421, 34.216637, 30.923212>,  <37.823719, 34.069698, 31.112974>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.823421, 34.216637, 30.923212>,  <37.822922, 34.461533, 30.606943>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.823421, 34.216637, 30.923212> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214626, -0.772083, -0.598184,
		0.976696, 0.170444, 0.130440,
		0.001247, -0.612239, 0.790672,
		37.823795, 34.032967, 31.160414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.308678, 34.016987, 30.414312>,  <37.822922, 34.461533, 30.606943>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.308678, 34.016987, 30.414312> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.091610, 33.811691, 30.680273>,  <37.961369, 33.688515, 30.839849>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.091610, 33.811691, 30.680273>,  <38.308678, 34.016987, 30.414312>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.091610, 33.811691, 30.680273> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200850, -0.847926, -0.490592,
		0.815580, -0.132683, 0.563227,
		-0.542668, -0.513241, 0.664902,
		37.928810, 33.657719, 30.879744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.707706, 33.478065, 30.447277>,  <38.308678, 34.016987, 30.414312>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.707706, 33.478065, 30.447277> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.359055, 33.339184, 30.585670>,  <38.149864, 33.255856, 30.668707>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.359055, 33.339184, 30.585670>,  <38.707706, 33.478065, 30.447277>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.359055, 33.339184, 30.585670> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188332, -0.888904, -0.417590,
		0.452535, -0.298826, 0.840187,
		-0.871632, -0.347208, 0.345982,
		38.097565, 33.235020, 30.689465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.870907, 32.760830, 30.752962>,  <38.707706, 33.478065, 30.447277>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.870907, 32.760830, 30.752962> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.494087, 32.816635, 30.630922>,  <38.267998, 32.850117, 30.557697>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.494087, 32.816635, 30.630922>,  <38.870907, 32.760830, 30.752962>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.494087, 32.816635, 30.630922> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111695, -0.727125, -0.677358,
		-0.316344, -0.672180, 0.669402,
		-0.942046, 0.139510, -0.305101,
		38.211472, 32.858490, 30.539392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.645420, 32.026070, 30.691076>,  <38.870907, 32.760830, 30.752962>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.645420, 32.026070, 30.691076> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.392429, 32.246468, 30.473314>,  <38.240635, 32.378708, 30.342657>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.392429, 32.246468, 30.473314>,  <38.645420, 32.026070, 30.691076>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.392429, 32.246468, 30.473314> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069668, -0.740456, -0.668485,
		-0.771443, -0.384871, 0.506705,
		-0.632473, 0.550999, -0.544406,
		38.202686, 32.411766, 30.309994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.203472, 31.507772, 30.538599>,  <38.645420, 32.026070, 30.691076>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.203472, 31.507772, 30.538599> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.138050, 31.802738, 30.276464>,  <38.098797, 31.979717, 30.119183>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.138050, 31.802738, 30.276464>,  <38.203472, 31.507772, 30.538599>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.138050, 31.802738, 30.276464> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062723, -0.670713, -0.739060,
		-0.984538, -0.079775, 0.155954,
		-0.163559, 0.737414, -0.655338,
		38.088982, 32.023964, 30.079863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.585770, 31.338074, 30.143951>,  <38.203472, 31.507772, 30.538599>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.585770, 31.338074, 30.143951> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.779774, 31.590523, 29.901812>,  <37.896175, 31.741993, 29.756527>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.779774, 31.590523, 29.901812>,  <37.585770, 31.338074, 30.143951>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.779774, 31.590523, 29.901812> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278332, -0.544820, -0.791014,
		-0.829036, 0.552135, -0.088579,
		0.485006, 0.631125, -0.605352,
		37.925274, 31.779860, 29.720205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.167385, 31.432255, 29.531567>,  <37.585770, 31.338074, 30.143951>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.167385, 31.432255, 29.531567> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.538376, 31.534313, 29.422256>,  <37.760971, 31.595549, 29.356670>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.538376, 31.534313, 29.422256>,  <37.167385, 31.432255, 29.531567>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.538376, 31.534313, 29.422256> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064908, -0.609950, -0.789777,
		-0.368194, 0.750241, -0.549156,
		0.927481, 0.255147, -0.273276,
		37.816620, 31.610857, 29.340273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.069153, 31.500845, 28.857918>,  <37.167385, 31.432255, 29.531567>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.069153, 31.500845, 28.857918> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.467079, 31.504463, 28.898441>,  <37.705833, 31.506634, 28.922756>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.467079, 31.504463, 28.898441>,  <37.069153, 31.500845, 28.857918>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.467079, 31.504463, 28.898441> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098209, -0.344573, -0.933608,
		0.026463, 0.938716, -0.343674,
		0.994814, 0.009046, 0.101308,
		37.765522, 31.507177, 28.928833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.319717, 31.868332, 28.316853>,  <37.069153, 31.500845, 28.857918>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.319717, 31.868332, 28.316853> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.624836, 31.649326, 28.454472>,  <37.807907, 31.517923, 28.537043>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.624836, 31.649326, 28.454472>,  <37.319717, 31.868332, 28.316853>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.624836, 31.649326, 28.454472> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093922, -0.432601, -0.896680,
		0.639782, 0.716298, -0.278562,
		0.762796, -0.547516, 0.344046,
		37.853676, 31.485071, 28.557686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.884026, 32.031742, 27.854376>,  <37.319717, 31.868332, 28.316853>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.884026, 32.031742, 27.854376> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.942924, 31.678997, 28.033550>,  <37.978264, 31.467352, 28.141054>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.942924, 31.678997, 28.033550>,  <37.884026, 32.031742, 27.854376>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.942924, 31.678997, 28.033550> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122711, -0.433085, -0.892961,
		0.981459, 0.186451, 0.044444,
		0.147245, -0.881858, 0.447934,
		37.987099, 31.414440, 28.167931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.474953, 31.766842, 27.606356>,  <37.884026, 32.031742, 27.854376>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.474953, 31.766842, 27.606356> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.284931, 31.453157, 27.766024>,  <38.170918, 31.264946, 27.861824>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.284931, 31.453157, 27.766024>,  <38.474953, 31.766842, 27.606356>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.284931, 31.453157, 27.766024> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266642, -0.560583, -0.783996,
		0.838586, -0.266004, 0.475410,
		-0.475053, -0.784212, 0.399169,
		38.142414, 31.217894, 27.885775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.987438, 31.227287, 27.583055>,  <38.474953, 31.766842, 27.606356>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.987438, 31.227287, 27.583055> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.635460, 31.041271, 27.621893>,  <38.424271, 30.929661, 27.645195>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.635460, 31.041271, 27.621893>,  <38.987438, 31.227287, 27.583055>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.635460, 31.041271, 27.621893> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269614, -0.657127, -0.703913,
		0.391151, -0.593229, 0.703619,
		-0.879948, -0.465041, 0.097093,
		38.371475, 30.901758, 27.651020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.142723, 30.497482, 27.435871>,  <38.987438, 31.227287, 27.583055>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.142723, 30.497482, 27.435871> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.743652, 30.520109, 27.420643>,  <38.504211, 30.533686, 27.411507>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.743652, 30.520109, 27.420643>,  <39.142723, 30.497482, 27.435871>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.743652, 30.520109, 27.420643> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000274, -0.555007, -0.831846,
		-0.068182, -0.829920, 0.553700,
		-0.997673, 0.056565, -0.038069,
		38.444351, 30.537079, 27.409222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.827000, 29.780422, 27.390408>,  <39.142723, 30.497482, 27.435871>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.827000, 29.780422, 27.390408> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.582127, 30.039701, 27.209269>,  <38.435204, 30.195269, 27.100586>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.582127, 30.039701, 27.209269>,  <38.827000, 29.780422, 27.390408>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.582127, 30.039701, 27.209269> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002311, -0.571236, -0.820782,
		-0.790714, -0.503514, 0.348203,
		-0.612182, 0.648199, -0.452848,
		38.398472, 30.234161, 27.073414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.517559, 29.340101, 26.949511>,  <38.827000, 29.780422, 27.390408>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.517559, 29.340101, 26.949511> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.394279, 29.680204, 26.778830>,  <38.320312, 29.884266, 26.676420>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.394279, 29.680204, 26.778830>,  <38.517559, 29.340101, 26.949511>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.394279, 29.680204, 26.778830> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013428, -0.444604, -0.895627,
		-0.951227, -0.281762, 0.125610,
		-0.308200, 0.850257, -0.426703,
		38.301819, 29.935282, 26.650818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<37.711655, 29.388819, 26.591379> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.936653, 29.660906, 26.403381>,  <38.071651, 29.824158, 26.290583>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.936653, 29.660906, 26.403381>,  <37.711655, 29.388819, 26.591379>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.936653, 29.660906, 26.403381> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302766, -0.359502, -0.882662,
		-0.769368, 0.638795, 0.003728,
		0.562500, 0.680220, -0.469994,
		38.105404, 29.864971, 26.262383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.229862, 29.625082, 26.135967>,  <37.711655, 29.388819, 26.591379>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.229862, 29.625082, 26.135967> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.571556, 29.764837, 25.981974>,  <37.776573, 29.848690, 25.889578>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.571556, 29.764837, 25.981974>,  <37.229862, 29.625082, 26.135967>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.571556, 29.764837, 25.981974> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296111, -0.281684, -0.912673,
		-0.427319, 0.893635, -0.137167,
		0.854234, 0.349386, -0.384984,
		37.827827, 29.869654, 25.866478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.045139, 30.199745, 25.654758>,  <37.229862, 29.625082, 26.135967>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.045139, 30.199745, 25.654758> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.396843, 30.034615, 25.559702>,  <37.607864, 29.935535, 25.502668>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.396843, 30.034615, 25.559702>,  <37.045139, 30.199745, 25.654758>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.396843, 30.034615, 25.559702> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363033, -0.257768, -0.895412,
		0.308395, 0.873572, -0.376516,
		0.879261, -0.412828, -0.237641,
		37.660622, 29.910767, 25.488409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.119118, 30.430504, 24.958601>,  <37.045139, 30.199745, 25.654758>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.119118, 30.430504, 24.958601> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.378296, 30.132332, 25.021217>,  <37.533802, 29.953428, 25.058786>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.378296, 30.132332, 25.021217>,  <37.119118, 30.430504, 24.958601>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.378296, 30.132332, 25.021217> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196996, -0.362525, -0.910916,
		0.735774, 0.559384, -0.381742,
		0.647943, -0.745430, 0.156540,
		37.572678, 29.908703, 25.068180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.564568, 30.391651, 24.368517>,  <37.119118, 30.430504, 24.958601>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.564568, 30.391651, 24.368517> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.593189, 30.029015, 24.534878>,  <37.610363, 29.811434, 24.634695>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.593189, 30.029015, 24.534878>,  <37.564568, 30.391651, 24.368517>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.593189, 30.029015, 24.534878> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079393, -0.420824, -0.903661,
		0.994272, 0.031640, -0.102089,
		0.071553, -0.906590, 0.415902,
		37.614655, 29.757038, 24.659649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.890659, 30.078379, 23.875832>,  <37.564568, 30.391651, 24.368517>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.890659, 30.078379, 23.875832> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.737736, 29.774347, 24.086021>,  <37.645981, 29.591928, 24.212135>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.737736, 29.774347, 24.086021>,  <37.890659, 30.078379, 23.875832>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.737736, 29.774347, 24.086021> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281228, -0.445988, -0.849709,
		0.880200, -0.472629, -0.043250,
		-0.382308, -0.760077, 0.525475,
		37.623043, 29.546324, 24.243664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.171921, 29.453882, 23.541508>,  <37.890659, 30.078379, 23.875832>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.171921, 29.453882, 23.541508> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.857132, 29.329384, 23.754602>,  <37.668259, 29.254684, 23.882460>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.857132, 29.329384, 23.754602>,  <38.171921, 29.453882, 23.541508>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.857132, 29.329384, 23.754602> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233437, -0.649053, -0.724043,
		0.571128, -0.694159, 0.438128,
		-0.786969, -0.311246, 0.532735,
		37.621040, 29.236010, 23.914423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.164398, 28.719158, 23.616060>,  <38.171921, 29.453882, 23.541508>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.164398, 28.719158, 23.616060> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.773972, 28.796343, 23.656187>,  <37.539715, 28.842653, 23.680264>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.773972, 28.796343, 23.656187>,  <38.164398, 28.719158, 23.616060>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.773972, 28.796343, 23.656187> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208214, -0.695942, -0.687249,
		-0.062797, -0.691688, 0.719461,
		-0.976065, 0.192959, 0.100316,
		37.481152, 28.854231, 23.686281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.981426, 28.081562, 23.631989>,  <38.164398, 28.719158, 23.616060>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.981426, 28.081562, 23.631989> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.640175, 28.287561, 23.598644>,  <37.435425, 28.411161, 23.578638>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.640175, 28.287561, 23.598644>,  <37.981426, 28.081562, 23.631989>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.640175, 28.287561, 23.598644> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343842, -0.675224, -0.652568,
		-0.392361, -0.528059, 0.753131,
		-0.853127, 0.515000, -0.083363,
		37.384235, 28.442062, 23.573635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.473484, 27.522320, 23.781704>,  <37.981426, 28.081562, 23.631989>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.473484, 27.522320, 23.781704> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.335972, 27.835512, 23.574337>,  <37.253464, 28.023428, 23.449917>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.335972, 27.835512, 23.574337>,  <37.473484, 27.522320, 23.781704>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.335972, 27.835512, 23.574337> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210792, -0.602321, -0.769920,
		-0.915084, -0.155409, 0.372115,
		-0.343785, 0.782980, -0.518415,
		37.232838, 28.070406, 23.418812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.772865, 27.317669, 23.478849>,  <37.473484, 27.522320, 23.781704>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.772865, 27.317669, 23.478849> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.943169, 27.603228, 23.256470>,  <37.045353, 27.774563, 23.123041>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.943169, 27.603228, 23.256470>,  <36.772865, 27.317669, 23.478849>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.943169, 27.603228, 23.256470> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206540, -0.521524, -0.827861,
		-0.880947, 0.467298, -0.074597,
		0.425762, 0.713895, -0.555950,
		37.070896, 27.817396, 23.089685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.447704, 27.277039, 22.854630>,  <36.772865, 27.317669, 23.478849>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.447704, 27.277039, 22.854630> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.753696, 27.510260, 22.745197>,  <36.937294, 27.650192, 22.679537>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.753696, 27.510260, 22.745197>,  <36.447704, 27.277039, 22.854630>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.753696, 27.510260, 22.745197> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126536, -0.552566, -0.823808,
		-0.631496, 0.595582, -0.496482,
		0.764984, 0.583054, -0.273581,
		36.983192, 27.685177, 22.663122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.324139, 27.359602, 22.116196>,  <36.447704, 27.277039, 22.854630>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.324139, 27.359602, 22.116196> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.705460, 27.471941, 22.160622>,  <36.934254, 27.539345, 22.187277>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.705460, 27.471941, 22.160622>,  <36.324139, 27.359602, 22.116196>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.705460, 27.471941, 22.160622> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234353, -0.455936, -0.858604,
		-0.190496, 0.844540, -0.500464,
		0.953305, 0.280846, 0.111066,
		36.991451, 27.556194, 22.193941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.470459, 27.813160, 21.563248>,  <36.324139, 27.359602, 22.116196>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.470459, 27.813160, 21.563248> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.800385, 27.637066, 21.705168>,  <36.998341, 27.531410, 21.790319>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.800385, 27.637066, 21.705168>,  <36.470459, 27.813160, 21.563248>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.800385, 27.637066, 21.705168> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272249, -0.240751, -0.931622,
		0.495550, 0.865005, -0.078721,
		0.824810, -0.440234, 0.354801,
		37.047829, 27.504995, 21.811607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.040318, 28.149488, 21.180677>,  <36.470459, 27.813160, 21.563248>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.040318, 28.149488, 21.180677> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.157211, 27.790997, 21.314167>,  <37.227348, 27.575901, 21.394260>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.157211, 27.790997, 21.314167>,  <37.040318, 28.149488, 21.180677>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.157211, 27.790997, 21.314167> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328288, -0.233741, -0.915200,
		0.898233, 0.377015, 0.225913,
		0.292239, -0.896228, 0.333724,
		37.244884, 27.522127, 21.414284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.577942, 28.149706, 20.764120>,  <37.040318, 28.149488, 21.180677>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.577942, 28.149706, 20.764120> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.490772, 27.789808, 20.915367>,  <37.438473, 27.573870, 21.006115>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.490772, 27.789808, 20.915367>,  <37.577942, 28.149706, 20.764120>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.490772, 27.789808, 20.915367> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231116, -0.423986, -0.875683,
		0.948206, -0.103442, 0.300341,
		-0.217922, -0.899742, 0.378119,
		37.425396, 27.519886, 21.028803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.109379, 27.750954, 20.576410>,  <37.577942, 28.149706, 20.764120>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.109379, 27.750954, 20.576410> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.802982, 27.495193, 20.603010>,  <37.619144, 27.341738, 20.618971>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.802982, 27.495193, 20.603010>,  <38.109379, 27.750954, 20.576410>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.802982, 27.495193, 20.603010> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095793, -0.215824, -0.971722,
		0.635671, -0.737962, 0.226570,
		-0.765993, -0.639400, 0.066501,
		37.573185, 27.303373, 20.622961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.315929, 27.194586, 20.233072>,  <38.109379, 27.750954, 20.576410>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.315929, 27.194586, 20.233072> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.924854, 27.110636, 20.229469>,  <37.690208, 27.060266, 20.227306>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.924854, 27.110636, 20.229469>,  <38.315929, 27.194586, 20.233072>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.924854, 27.110636, 20.229469> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064027, -0.256874, -0.964322,
		0.200071, -0.943382, 0.264580,
		-0.977687, -0.209873, -0.009009,
		37.631550, 27.047674, 20.226767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.316872, 26.584467, 19.923557>,  <38.315929, 27.194586, 20.233072>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.316872, 26.584467, 19.923557> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.952705, 26.744204, 19.880358>,  <37.734203, 26.840046, 19.854439>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.952705, 26.744204, 19.880358>,  <38.316872, 26.584467, 19.923557>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.952705, 26.744204, 19.880358> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016431, -0.295765, -0.955119,
		-0.413361, -0.867784, 0.275832,
		-0.910419, 0.399342, -0.107999,
		37.679581, 26.864006, 19.847958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.944603, 26.004763, 19.446953>,  <38.316872, 26.584467, 19.923557>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.944603, 26.004763, 19.446953> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.696217, 26.318256, 19.452017>,  <37.547184, 26.506353, 19.455055>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.696217, 26.318256, 19.452017>,  <37.944603, 26.004763, 19.446953>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.696217, 26.318256, 19.452017> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256041, -0.187551, -0.948297,
		-0.740839, -0.592103, 0.317132,
		-0.620968, 0.783734, 0.012658,
		37.509926, 26.553377, 19.455814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.299015, 25.665590, 19.315903>,  <37.944603, 26.004763, 19.446953>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.299015, 25.665590, 19.315903> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.307774, 26.051170, 19.209831>,  <37.313026, 26.282518, 19.146189>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.307774, 26.051170, 19.209831>,  <37.299015, 25.665590, 19.315903>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.307774, 26.051170, 19.209831> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106463, -0.261486, -0.959317,
		-0.994076, 0.049235, 0.096901,
		0.021893, 0.963951, -0.265179,
		37.314342, 26.340355, 19.130278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.765720, 25.665022, 18.954180>,  <37.299015, 25.665590, 19.315903>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.765720, 25.665022, 18.954180> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.996506, 25.977827, 18.859892>,  <37.134979, 26.165510, 18.803320>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.996506, 25.977827, 18.859892>,  <36.765720, 25.665022, 18.954180>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.996506, 25.977827, 18.859892> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220319, -0.128891, -0.966875,
		-0.786491, 0.609789, 0.097927,
		0.576968, 0.782013, -0.235720,
		37.169598, 26.212431, 18.789177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.389187, 25.907032, 18.394888>,  <36.765720, 25.665022, 18.954180>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.389187, 25.907032, 18.394888> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.745502, 26.073357, 18.321569>,  <36.959293, 26.173151, 18.277578>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.745502, 26.073357, 18.321569>,  <36.389187, 25.907032, 18.394888>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.745502, 26.073357, 18.321569> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102371, -0.209367, -0.972464,
		-0.442738, 0.885023, -0.143934,
		0.890788, 0.415812, -0.183295,
		37.012737, 26.198101, 18.266581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.119644, 26.527973, 18.241062>,  <36.389187, 25.907032, 18.394888>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.119644, 26.527973, 18.241062> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.761803, 26.451714, 18.079399>,  <35.547100, 26.405958, 17.982401>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.761803, 26.451714, 18.079399>,  <36.119644, 26.527973, 18.241062>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.761803, 26.451714, 18.079399> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442674, 0.254489, 0.859811,
		-0.061069, 0.948097, -0.312062,
		-0.894601, -0.190650, -0.404156,
		35.493423, 26.394518, 17.958153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.738033, 27.143974, 18.326229>,  <36.119644, 26.527973, 18.241062>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.738033, 27.143974, 18.326229> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.497028, 26.827543, 18.283945>,  <35.352425, 26.637684, 18.258575>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.497028, 26.827543, 18.283945>,  <35.738033, 27.143974, 18.326229>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.497028, 26.827543, 18.283945> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469453, 0.244165, 0.848526,
		-0.645442, 0.560871, -0.518487,
		-0.602510, -0.791080, -0.105708,
		35.316277, 26.590219, 18.252234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.125473, 27.336634, 18.331474>,  <35.738033, 27.143974, 18.326229>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.125473, 27.336634, 18.331474> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.095951, 26.953310, 18.441885>,  <35.078236, 26.723316, 18.508131>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.095951, 26.953310, 18.441885>,  <35.125473, 27.336634, 18.331474>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.095951, 26.953310, 18.441885> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443560, 0.279444, 0.851566,
		-0.893200, -0.059583, -0.445694,
		-0.073808, -0.958311, 0.276028,
		35.073811, 26.665817, 18.524694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.365582, 27.238014, 18.658579>,  <35.125473, 27.336634, 18.331474>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.365582, 27.238014, 18.658579> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.589325, 26.933384, 18.789497>,  <34.723572, 26.750605, 18.868048>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.589325, 26.933384, 18.789497>,  <34.365582, 27.238014, 18.658579>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.589325, 26.933384, 18.789497> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500634, 0.004319, 0.865648,
		-0.660671, -0.648060, -0.378856,
		0.559356, -0.761577, 0.327294,
		34.757133, 26.704910, 18.887686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.854149, 26.863228, 18.996780>,  <34.365582, 27.238014, 18.658579>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.854149, 26.863228, 18.996780> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.193710, 26.698065, 19.128765>,  <34.397446, 26.598967, 19.207956>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.193710, 26.698065, 19.128765>,  <33.854149, 26.863228, 18.996780>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.193710, 26.698065, 19.128765> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356432, 0.013765, 0.934220,
		-0.390289, -0.910668, -0.135489,
		0.848899, -0.412909, 0.329964,
		34.448380, 26.574192, 19.227755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.684639, 26.396961, 19.557747>,  <33.854149, 26.863228, 18.996780>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.684639, 26.396961, 19.557747> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.074238, 26.475864, 19.602337>,  <34.307995, 26.523207, 19.629091>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.074238, 26.475864, 19.602337>,  <33.684639, 26.396961, 19.557747>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.074238, 26.475864, 19.602337> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124360, 0.054143, 0.990759,
		0.189401, -0.978855, 0.077266,
		0.973992, 0.197260, 0.111476,
		34.366436, 26.535042, 19.635780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.869293, 25.973785, 20.054493>,  <33.684639, 26.396961, 19.557747>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.869293, 25.973785, 20.054493> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.157261, 26.250011, 20.026653>,  <34.330040, 26.415747, 20.009949>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.157261, 26.250011, 20.026653>,  <33.869293, 25.973785, 20.054493>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.157261, 26.250011, 20.026653> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048559, 0.150147, 0.987470,
		0.692361, -0.707516, 0.141626,
		0.719916, 0.690563, -0.069600,
		34.373234, 26.457180, 20.005774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.136917, 25.928162, 20.671688>,  <33.869293, 25.973785, 20.054493>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.136917, 25.928162, 20.671688> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.285885, 26.282560, 20.561190>,  <34.375267, 26.495199, 20.494890>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.285885, 26.282560, 20.561190>,  <34.136917, 25.928162, 20.671688>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.285885, 26.282560, 20.561190> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025324, 0.287847, 0.957341,
		0.927718, -0.363531, 0.084764,
		0.372422, 0.885996, -0.276247,
		34.397614, 26.548359, 20.478315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.686897, 26.005552, 21.078636>,  <34.136917, 25.928162, 20.671688>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.686897, 26.005552, 21.078636> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.572186, 26.366503, 20.949968>,  <34.503357, 26.583073, 20.872766>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.572186, 26.366503, 20.949968>,  <34.686897, 26.005552, 21.078636>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.572186, 26.366503, 20.949968> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262768, 0.396992, 0.879403,
		0.921254, 0.167673, -0.350966,
		-0.286783, 0.902376, -0.321672,
		34.486149, 26.637217, 20.853466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.187691, 26.486044, 21.302458>,  <34.686897, 26.005552, 21.078636>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.187691, 26.486044, 21.302458> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.871532, 26.720428, 21.230982>,  <34.681839, 26.861059, 21.188097>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.871532, 26.720428, 21.230982>,  <35.187691, 26.486044, 21.302458>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.871532, 26.720428, 21.230982> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162723, 0.482026, 0.860914,
		0.590595, 0.651383, -0.476339,
		-0.790392, 0.585962, -0.178688,
		34.634415, 26.896217, 21.177376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.399021, 27.172260, 21.309916>,  <35.187691, 26.486044, 21.302458>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.399021, 27.172260, 21.309916> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.009254, 27.196646, 21.396450>,  <34.775394, 27.211277, 21.448370>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.009254, 27.196646, 21.396450>,  <35.399021, 27.172260, 21.309916>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.009254, 27.196646, 21.396450> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213361, 0.553537, 0.805030,
		-0.070672, 0.830590, -0.552382,
		-0.974414, 0.060964, 0.216335,
		34.716930, 27.214935, 21.461351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.367634, 27.822412, 21.581844>,  <35.399021, 27.172260, 21.309916>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.367634, 27.822412, 21.581844> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.003174, 27.678844, 21.662811>,  <34.784496, 27.592703, 21.711391>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.003174, 27.678844, 21.662811>,  <35.367634, 27.822412, 21.581844>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.003174, 27.678844, 21.662811> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084091, 0.642853, 0.761360,
		-0.403394, 0.676695, -0.615920,
		-0.911154, -0.358921, 0.202419,
		34.729828, 27.571169, 21.723537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.864246, 28.363813, 21.754227>,  <35.367634, 27.822412, 21.581844>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.864246, 28.363813, 21.754227> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.723408, 28.046257, 21.952524>,  <34.638905, 27.855722, 22.071503>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.723408, 28.046257, 21.952524>,  <34.864246, 28.363813, 21.754227>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.723408, 28.046257, 21.952524> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113376, 0.561940, 0.819371,
		-0.929071, 0.232294, -0.287866,
		-0.352098, -0.793891, 0.495745,
		34.617779, 27.808090, 22.101248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.371906, 28.697544, 22.240061>,  <34.864246, 28.363813, 21.754227>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.371906, 28.697544, 22.240061> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.441174, 28.330858, 22.384089>,  <34.482735, 28.110847, 22.470505>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.441174, 28.330858, 22.384089>,  <34.371906, 28.697544, 22.240061>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.441174, 28.330858, 22.384089> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022901, 0.369241, 0.929051,
		-0.984626, -0.152634, 0.084934,
		0.173166, -0.916714, 0.360069,
		34.493122, 28.055843, 22.492109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.985767, 28.692648, 22.896639>,  <34.371906, 28.697544, 22.240061>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.985767, 28.692648, 22.896639> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.238117, 28.383512, 22.924107>,  <34.389526, 28.198030, 22.940588>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.238117, 28.383512, 22.924107>,  <33.985767, 28.692648, 22.896639>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.238117, 28.383512, 22.924107> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098256, 0.167370, 0.980986,
		-0.769639, -0.612131, 0.181525,
		0.630874, -0.772840, 0.068669,
		34.427380, 28.151661, 22.944708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.878311, 28.244358, 23.550789>,  <33.985767, 28.692648, 22.896639>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.878311, 28.244358, 23.550789> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.258648, 28.179852, 23.445034>,  <34.486851, 28.141148, 23.381580>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.258648, 28.179852, 23.445034>,  <33.878311, 28.244358, 23.550789>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.258648, 28.179852, 23.445034> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271169, 0.021189, 0.962299,
		-0.149588, -0.986683, 0.063879,
		0.950837, -0.161270, -0.264388,
		34.543900, 28.131472, 23.365717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.070412, 27.733938, 23.953484>,  <33.878311, 28.244358, 23.550789>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.070412, 27.733938, 23.953484> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.411469, 27.914717, 23.848608>,  <34.616104, 28.023184, 23.785683>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.411469, 27.914717, 23.848608>,  <34.070412, 27.733938, 23.953484>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.411469, 27.914717, 23.848608> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283109, 0.022131, 0.958832,
		0.439141, -0.891772, -0.109080,
		0.852646, 0.451944, -0.262187,
		34.667263, 28.050301, 23.769953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.493835, 27.597942, 24.567888>,  <34.070412, 27.733938, 23.953484>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.493835, 27.597942, 24.567888> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.685410, 27.897207, 24.384203>,  <34.800354, 28.076767, 24.273993>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.685410, 27.897207, 24.384203>,  <34.493835, 27.597942, 24.567888>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.685410, 27.897207, 24.384203> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438419, 0.249349, 0.863489,
		0.760536, -0.614879, -0.208588,
		0.478931, 0.748163, -0.459214,
		34.829090, 28.121656, 24.246439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.196449, 27.601213, 24.793184>,  <34.493835, 27.597942, 24.567888>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.196449, 27.601213, 24.793184> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.090176, 27.967249, 24.671843>,  <35.026413, 28.186871, 24.599037>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.090176, 27.967249, 24.671843>,  <35.196449, 27.601213, 24.793184>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.090176, 27.967249, 24.671843> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275909, 0.373679, 0.885572,
		0.923734, 0.151585, -0.351762,
		-0.265686, 0.915088, -0.303356,
		35.010471, 28.241776, 24.580835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.746571, 27.895136, 25.007587>,  <35.196449, 27.601213, 24.793184>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.746571, 27.895136, 25.007587> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.461296, 28.170536, 24.954939>,  <35.290131, 28.335777, 24.923349>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.461296, 28.170536, 24.954939>,  <35.746571, 27.895136, 25.007587>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.461296, 28.170536, 24.954939> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172067, 0.353977, 0.919289,
		0.679524, 0.632980, -0.370922,
		-0.713190, 0.688503, -0.131621,
		35.247337, 28.377087, 24.915453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.090607, 28.501919, 25.152697>,  <35.746571, 27.895136, 25.007587>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.090607, 28.501919, 25.152697> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.700703, 28.583668, 25.188643>,  <35.466759, 28.632717, 25.210209>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.700703, 28.583668, 25.188643>,  <36.090607, 28.501919, 25.152697>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.700703, 28.583668, 25.188643> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151830, 0.311740, 0.937958,
		0.163677, 0.927928, -0.334901,
		-0.974760, 0.204370, 0.089863,
		35.408276, 28.644979, 25.215601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<38.835857, 30.624674, 28.898903> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.554245, 30.890091, 28.797668>,  <38.385277, 31.049341, 28.736929>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.554245, 30.890091, 28.797668>,  <38.835857, 30.624674, 28.898903>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.554245, 30.890091, 28.797668> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149146, 0.486575, 0.860814,
		0.694331, 0.568294, -0.441528,
		-0.704032, 0.663541, -0.253085,
		38.343037, 31.089153, 28.721743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.031471, 31.300508, 29.160818>,  <38.835857, 30.624674, 28.898903>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.031471, 31.300508, 29.160818> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.646519, 31.363638, 29.072357>,  <38.415546, 31.401516, 29.019281>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.646519, 31.363638, 29.072357>,  <39.031471, 31.300508, 29.160818>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.646519, 31.363638, 29.072357> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008498, 0.796094, 0.605113,
		0.271559, 0.584230, -0.764807,
		-0.962384, 0.157825, -0.221152,
		38.357803, 31.410986, 29.006012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.963387, 32.001404, 28.972624>,  <39.031471, 31.300508, 29.160818>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.963387, 32.001404, 28.972624> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.607700, 31.878517, 29.108221>,  <38.394291, 31.804785, 29.189579>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.607700, 31.878517, 29.108221>,  <38.963387, 32.001404, 28.972624>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.607700, 31.878517, 29.108221> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049513, 0.801256, 0.596270,
		-0.454806, 0.513426, -0.727698,
		-0.889213, -0.307218, 0.338995,
		38.340935, 31.786352, 29.209919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.588776, 32.664368, 28.950300>,  <38.963387, 32.001404, 28.972624>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.588776, 32.664368, 28.950300> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.378826, 32.413185, 29.180147>,  <38.252857, 32.262478, 29.318054>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.378826, 32.413185, 29.180147>,  <38.588776, 32.664368, 28.950300>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.378826, 32.413185, 29.180147> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192709, 0.745220, 0.638366,
		-0.829078, 0.224328, -0.512159,
		-0.524874, -0.627953, 0.574615,
		38.221363, 32.224800, 29.352531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.886375, 32.967773, 29.207706>,  <38.588776, 32.664368, 28.950300>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.886375, 32.967773, 29.207706> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.950718, 32.666660, 29.463034>,  <37.989323, 32.485992, 29.616230>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.950718, 32.666660, 29.463034>,  <37.886375, 32.967773, 29.207706>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.950718, 32.666660, 29.463034> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176545, 0.614362, 0.769020,
		-0.971060, -0.236394, -0.034075,
		0.160857, -0.752780, 0.638316,
		37.998974, 32.440826, 29.654528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.345924, 33.042004, 29.582085>,  <37.886375, 32.967773, 29.207706>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.345924, 33.042004, 29.582085> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.572685, 32.816223, 29.822092>,  <37.708740, 32.680756, 29.966097>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.572685, 32.816223, 29.822092>,  <37.345924, 33.042004, 29.582085>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.572685, 32.816223, 29.822092> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281483, 0.551802, 0.785037,
		-0.774203, -0.613933, 0.153935,
		0.566901, -0.564448, 0.600018,
		37.742756, 32.646889, 30.002098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.950733, 32.908783, 30.236631>,  <37.345924, 33.042004, 29.582085>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.950733, 32.908783, 30.236631> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.334976, 32.869293, 30.340544>,  <37.565521, 32.845600, 30.402891>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.334976, 32.869293, 30.340544>,  <36.950733, 32.908783, 30.236631>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.334976, 32.869293, 30.340544> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173823, 0.515918, 0.838817,
		-0.216838, -0.850930, 0.478434,
		0.960608, -0.098725, 0.259782,
		37.623158, 32.839676, 30.418478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.029137, 32.679424, 31.061256>,  <36.950733, 32.908783, 30.236631>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.029137, 32.679424, 31.061256> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.382267, 32.833290, 30.953438>,  <37.594147, 32.925610, 30.888746>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.382267, 32.833290, 30.953438>,  <37.029137, 32.679424, 31.061256>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.382267, 32.833290, 30.953438> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010069, 0.558234, 0.829623,
		0.469592, -0.735127, 0.488950,
		0.882826, 0.384661, -0.269544,
		37.647114, 32.948689, 30.872574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.385311, 32.842819, 31.718344>,  <37.029137, 32.679424, 31.061256>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.385311, 32.842819, 31.718344> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.545303, 33.116001, 31.473856>,  <37.641300, 33.279911, 31.327164>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.545303, 33.116001, 31.473856>,  <37.385311, 32.842819, 31.718344>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.545303, 33.116001, 31.473856> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096063, 0.631978, 0.769010,
		0.911474, -0.366307, 0.187175,
		0.399984, 0.682952, -0.611220,
		37.665298, 33.320885, 31.290489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.771030, 33.203056, 32.172096>,  <37.385311, 32.842819, 31.718344>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.771030, 33.203056, 32.172096> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.782188, 33.443138, 31.852350>,  <37.788883, 33.587189, 31.660503>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.782188, 33.443138, 31.852350>,  <37.771030, 33.203056, 32.172096>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.782188, 33.443138, 31.852350> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028859, 0.799823, 0.599543,
		0.999194, 0.006343, 0.039634,
		0.027897, 0.600203, -0.799361,
		37.790558, 33.623199, 31.612541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.263432, 33.627548, 32.430115>,  <37.771030, 33.203056, 32.172096>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.263432, 33.627548, 32.430115> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.054470, 33.814060, 32.144547>,  <37.929092, 33.925968, 31.973207>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.054470, 33.814060, 32.144547>,  <38.263432, 33.627548, 32.430115>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.054470, 33.814060, 32.144547> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148601, 0.874214, 0.462242,
		0.839651, 0.135388, -0.525981,
		-0.522402, 0.466284, -0.713916,
		37.897751, 33.953945, 31.930372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.606792, 34.249741, 32.237225>,  <38.263432, 33.627548, 32.430115>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.606792, 34.249741, 32.237225> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.225403, 34.298061, 32.126740>,  <37.996571, 34.327053, 32.060448>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.225403, 34.298061, 32.126740>,  <38.606792, 34.249741, 32.237225>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.225403, 34.298061, 32.126740> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055126, 0.830894, 0.553694,
		0.296395, 0.543159, -0.785575,
		-0.953473, 0.120806, -0.276215,
		37.939362, 34.334305, 32.043877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.568306, 34.830704, 31.922710>,  <38.606792, 34.249741, 32.237225>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.568306, 34.830704, 31.922710> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.184669, 34.781261, 32.024593>,  <37.954487, 34.751598, 32.085724>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.184669, 34.781261, 32.024593>,  <38.568306, 34.830704, 31.922710>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.184669, 34.781261, 32.024593> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027889, 0.936537, 0.349459,
		-0.281735, 0.328058, -0.901667,
		-0.959087, -0.123601, 0.254706,
		37.896942, 34.744183, 32.101006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.244553, 35.417580, 31.682621>,  <38.568306, 34.830704, 31.922710>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.244553, 35.417580, 31.682621> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.052834, 35.244282, 31.987928>,  <37.937801, 35.140305, 32.171112>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.052834, 35.244282, 31.987928>,  <38.244553, 35.417580, 31.682621>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.052834, 35.244282, 31.987928> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009993, 0.866919, 0.498349,
		-0.877596, 0.246484, -0.411181,
		-0.479296, -0.433240, 0.763268,
		37.909046, 35.114311, 32.216908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.277348, 36.001972, 31.385759>,  <38.244553, 35.417580, 31.682621>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.277348, 36.001972, 31.385759> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.427311, 36.325005, 31.203653>,  <38.517288, 36.518822, 31.094389>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.427311, 36.325005, 31.203653>,  <38.277348, 36.001972, 31.385759>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.427311, 36.325005, 31.203653> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260340, -0.379611, -0.887760,
		-0.889758, 0.451349, 0.067927,
		0.374904, 0.807576, -0.455266,
		38.539783, 36.567276, 31.067074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.751625, 36.351929, 30.983677>,  <38.277348, 36.001972, 31.385759>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.751625, 36.351929, 30.983677> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.085869, 36.493156, 30.815344>,  <38.286415, 36.577892, 30.714344>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.085869, 36.493156, 30.815344>,  <37.751625, 36.351929, 30.983677>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.085869, 36.493156, 30.815344> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349281, -0.249799, -0.903108,
		-0.423980, 0.901635, -0.085416,
		0.835610, 0.353065, -0.420834,
		38.336552, 36.599075, 30.689095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.528679, 36.780319, 30.417540>,  <37.751625, 36.351929, 30.983677>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.528679, 36.780319, 30.417540> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.908760, 36.691319, 30.330263>,  <38.136810, 36.637917, 30.277897>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.908760, 36.691319, 30.330263>,  <37.528679, 36.780319, 30.417540>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.908760, 36.691319, 30.330263> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288693, -0.364837, -0.885184,
		0.117352, 0.904094, -0.410905,
		0.950202, -0.222504, -0.218192,
		38.193821, 36.624569, 30.264805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.579918, 36.976089, 29.740339>,  <37.528679, 36.780319, 30.417540>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.579918, 36.976089, 29.740339> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.874107, 36.709438, 29.788809>,  <38.050621, 36.549446, 29.817890>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.874107, 36.709438, 29.788809>,  <37.579918, 36.976089, 29.740339>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.874107, 36.709438, 29.788809> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337229, -0.515277, -0.787887,
		0.587665, 0.538609, -0.603780,
		0.735477, -0.666626, 0.121176,
		38.094749, 36.509449, 29.825161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.979504, 36.866943, 29.102911>,  <37.579918, 36.976089, 29.740339>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.979504, 36.866943, 29.102911> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.159569, 36.560902, 29.287069>,  <38.267609, 36.377277, 29.397564>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.159569, 36.560902, 29.287069>,  <37.979504, 36.866943, 29.102911>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.159569, 36.560902, 29.287069> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204736, -0.590295, -0.780792,
		0.869157, 0.257226, -0.422375,
		0.450166, -0.765106, 0.460395,
		38.294617, 36.331371, 29.425188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.481045, 36.667976, 28.641123>,  <37.979504, 36.866943, 29.102911>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.481045, 36.667976, 28.641123> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.409805, 36.354961, 28.879759>,  <38.367062, 36.167152, 29.022940>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.409805, 36.354961, 28.879759>,  <38.481045, 36.667976, 28.641123>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.409805, 36.354961, 28.879759> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343190, -0.518817, -0.782975,
		0.922226, -0.344190, -0.176157,
		-0.178099, -0.782535, 0.596590,
		38.356377, 36.120201, 29.058735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.736225, 36.065620, 28.233150>,  <38.481045, 36.667976, 28.641123>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.736225, 36.065620, 28.233150> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.515800, 35.876320, 28.508066>,  <38.383545, 35.762737, 28.673016>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.515800, 35.876320, 28.508066>,  <38.736225, 36.065620, 28.233150>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.515800, 35.876320, 28.508066> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277374, -0.672911, -0.685751,
		0.787017, -0.568526, 0.239546,
		-0.551060, -0.473254, 0.687287,
		38.350483, 35.734344, 28.714252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.064785, 35.440750, 28.226986>,  <38.736225, 36.065620, 28.233150>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.064785, 35.440750, 28.226986> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.681927, 35.415791, 28.340113>,  <38.452213, 35.400814, 28.407990>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.681927, 35.415791, 28.340113>,  <39.064785, 35.440750, 28.226986>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.681927, 35.415791, 28.340113> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170524, -0.667886, -0.724465,
		0.234098, -0.741643, 0.628621,
		-0.957141, -0.062401, 0.282819,
		38.394783, 35.397072, 28.424959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.948990, 34.760502, 28.102478>,  <39.064785, 35.440750, 28.226986>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.948990, 34.760502, 28.102478> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.590076, 34.932892, 28.140720>,  <38.374729, 35.036327, 28.163666>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.590076, 34.932892, 28.140720>,  <38.948990, 34.760502, 28.102478>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.590076, 34.932892, 28.140720> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383204, -0.652875, -0.653382,
		-0.219173, -0.622906, 0.750967,
		-0.897283, 0.430978, 0.095608,
		38.320892, 35.062183, 28.169403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.594158, 34.127567, 28.107265>,  <38.948990, 34.760502, 28.102478>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.594158, 34.127567, 28.107265> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.327919, 34.418316, 28.039570>,  <38.168175, 34.592766, 27.998953>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.327919, 34.418316, 28.039570>,  <38.594158, 34.127567, 28.107265>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.327919, 34.418316, 28.039570> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425359, -0.555800, -0.714252,
		-0.613233, -0.403414, 0.679119,
		-0.665593, 0.726873, -0.169239,
		38.128242, 34.636379, 27.988798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.876026, 33.853508, 28.171478>,  <38.594158, 34.127567, 28.107265>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.876026, 33.853508, 28.171478> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.877907, 34.181496, 27.942520>,  <37.879036, 34.378288, 27.805145>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.877907, 34.181496, 27.942520>,  <37.876026, 33.853508, 28.171478>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.877907, 34.181496, 27.942520> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338457, -0.537312, -0.772491,
		-0.940970, 0.197362, 0.274997,
		0.004701, 0.819966, -0.572393,
		37.879318, 34.427486, 27.770802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.297771, 33.851654, 27.813789>,  <37.876026, 33.853508, 28.171478>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.297771, 33.851654, 27.813789> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.486515, 34.118122, 27.582769>,  <37.599762, 34.278004, 27.444159>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.486515, 34.118122, 27.582769>,  <37.297771, 33.851654, 27.813789>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.486515, 34.118122, 27.582769> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391825, -0.428373, -0.814230,
		-0.789823, 0.610502, 0.058889,
		0.471862, 0.666171, -0.577549,
		37.628075, 34.317974, 27.409504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.738304, 34.111805, 27.318878>,  <37.297771, 33.851654, 27.813789>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.738304, 34.111805, 27.318878> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.104630, 34.166782, 27.167933>,  <37.324425, 34.199768, 27.077366>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.104630, 34.166782, 27.167933>,  <36.738304, 34.111805, 27.318878>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.104630, 34.166782, 27.167933> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309521, -0.357182, -0.881259,
		-0.255911, 0.923867, -0.284568,
		0.915809, 0.137444, -0.377363,
		37.379372, 34.208015, 27.054724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.767052, 34.676102, 26.818165>,  <36.738304, 34.111805, 27.318878>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.767052, 34.676102, 26.818165> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.086063, 34.445621, 26.746691>,  <37.277470, 34.307331, 26.703806>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.086063, 34.445621, 26.746691>,  <36.767052, 34.676102, 26.818165>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.086063, 34.445621, 26.746691> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319419, -0.152060, -0.935334,
		0.511773, 0.803035, -0.305324,
		0.797534, -0.576205, -0.178684,
		37.325325, 34.272758, 26.693085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.248531, 35.184158, 26.676636>,  <36.767052, 34.676102, 26.818165>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.248531, 35.184158, 26.676636> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.854435, 35.168030, 26.610085>,  <35.617977, 35.158352, 26.570154>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.854435, 35.168030, 26.610085>,  <36.248531, 35.184158, 26.676636>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.854435, 35.168030, 26.610085> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170767, 0.299987, 0.938534,
		0.012072, 0.953091, -0.302443,
		-0.985238, -0.040318, -0.166378,
		35.558865, 35.155933, 26.560171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.084698, 35.774460, 27.020874>,  <36.248531, 35.184158, 26.676636>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.084698, 35.774460, 27.020874> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.755833, 35.551102, 26.976620>,  <35.558514, 35.417088, 26.950068>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.755833, 35.551102, 26.976620>,  <36.084698, 35.774460, 27.020874>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.755833, 35.551102, 26.976620> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355529, 0.351912, 0.865885,
		-0.444572, 0.751235, -0.487855,
		-0.822165, -0.558395, -0.110635,
		35.509182, 35.383583, 26.943430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.480797, 36.170460, 27.329351>,  <36.084698, 35.774460, 27.020874>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.480797, 36.170460, 27.329351> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.332317, 35.799347, 27.344494>,  <35.243229, 35.576679, 27.353580>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.332317, 35.799347, 27.344494>,  <35.480797, 36.170460, 27.329351>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.332317, 35.799347, 27.344494> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379321, 0.188726, 0.905813,
		-0.847541, 0.321878, -0.421982,
		-0.371201, -0.927781, 0.037858,
		35.220959, 35.521011, 27.355852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.819447, 36.242397, 27.425276>,  <35.480797, 36.170460, 27.329351>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.819447, 36.242397, 27.425276> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.907837, 35.880882, 27.571880>,  <34.960873, 35.663971, 27.659843>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.907837, 35.880882, 27.571880>,  <34.819447, 36.242397, 27.425276>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.907837, 35.880882, 27.571880> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.566822, 0.186800, 0.802383,
		-0.793651, -0.385056, -0.471010,
		0.220978, -0.903791, 0.366512,
		34.974129, 35.609745, 27.681833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.133327, 36.030174, 27.689730>,  <34.819447, 36.242397, 27.425276>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.133327, 36.030174, 27.689730> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.422009, 35.799282, 27.842550>,  <34.595215, 35.660748, 27.934242>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.422009, 35.799282, 27.842550>,  <34.133327, 36.030174, 27.689730>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.422009, 35.799282, 27.842550> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438046, 0.046511, 0.897749,
		-0.535974, -0.815258, -0.219285,
		0.721698, -0.577227, 0.382049,
		34.638519, 35.626114, 27.957165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.890667, 35.431103, 27.983335>,  <34.133327, 36.030174, 27.689730>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.890667, 35.431103, 27.983335> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.233231, 35.502583, 28.177088>,  <34.438770, 35.545471, 28.293339>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.233231, 35.502583, 28.177088>,  <33.890667, 35.431103, 27.983335>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.233231, 35.502583, 28.177088> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483541, -0.051207, 0.873823,
		0.180953, -0.982571, 0.042552,
		0.856413, 0.178697, 0.484379,
		34.490154, 35.556190, 28.322401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.867214, 34.994698, 28.601690>,  <33.890667, 35.431103, 27.983335>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.867214, 34.994698, 28.601690> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.156452, 35.249966, 28.707422>,  <34.329994, 35.403126, 28.770863>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.156452, 35.249966, 28.707422>,  <33.867214, 34.994698, 28.601690>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.156452, 35.249966, 28.707422> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363996, 0.026807, 0.931015,
		0.587059, -0.769429, 0.251675,
		0.723096, 0.638169, 0.264332,
		34.373383, 35.441418, 28.786722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.011955, 34.774242, 29.287457>,  <33.867214, 34.994698, 28.601690>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.011955, 34.774242, 29.287457> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.147099, 35.146667, 29.232365>,  <34.228184, 35.370125, 29.199310>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.147099, 35.146667, 29.232365>,  <34.011955, 34.774242, 29.287457>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.147099, 35.146667, 29.232365> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320100, 0.251276, 0.913453,
		0.885094, -0.264527, 0.382929,
		0.337854, 0.931067, -0.137728,
		34.248455, 35.425987, 29.191046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.628792, 34.956310, 29.794312>,  <34.011955, 34.774242, 29.287457>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.628792, 34.956310, 29.794312> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.474388, 35.311584, 29.694609>,  <34.381748, 35.524750, 29.634787>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.474388, 35.311584, 29.694609>,  <34.628792, 34.956310, 29.794312>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.474388, 35.311584, 29.694609> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053317, 0.248265, 0.967224,
		0.920954, 0.386644, -0.048477,
		-0.386006, 0.888184, -0.249255,
		34.358585, 35.578041, 29.619833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.772686, 35.306740, 30.378513>,  <34.628792, 34.956310, 29.794312>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.772686, 35.306740, 30.378513> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.511120, 35.544483, 30.191269>,  <34.354179, 35.687130, 30.078922>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.511120, 35.544483, 30.191269>,  <34.772686, 35.306740, 30.378513>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.511120, 35.544483, 30.191269> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250602, 0.413640, 0.875272,
		0.713857, 0.689664, -0.121538,
		-0.653917, 0.594361, -0.468111,
		34.314945, 35.722790, 30.050835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.852875, 35.965908, 30.528934>,  <34.772686, 35.306740, 30.378513>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.852875, 35.965908, 30.528934> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.464733, 35.930603, 30.438934>,  <34.231850, 35.909420, 30.384933>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.464733, 35.930603, 30.438934>,  <34.852875, 35.965908, 30.528934>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.464733, 35.930603, 30.438934> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241472, 0.314141, 0.918154,
		-0.010359, 0.945264, -0.326141,
		-0.970352, -0.088265, -0.225000,
		34.173626, 35.904125, 30.371433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.521233, 36.630058, 30.627571>,  <34.852875, 35.965908, 30.528934>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.521233, 36.630058, 30.627571> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.253151, 36.336945, 30.674652>,  <34.092300, 36.161076, 30.702900>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.253151, 36.336945, 30.674652>,  <34.521233, 36.630058, 30.627571>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.253151, 36.336945, 30.674652> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351375, 0.452976, 0.819359,
		-0.653729, 0.507780, -0.561068,
		-0.670205, -0.732784, 0.117703,
		34.052090, 36.117111, 30.709963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<35.681541, 34.720844, 22.859011> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.407475, 34.448879, 22.963520>,  <35.243034, 34.285702, 23.026226>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.407475, 34.448879, 22.963520>,  <35.681541, 34.720844, 22.859011>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.407475, 34.448879, 22.963520> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237361, 0.547542, 0.802407,
		-0.688625, 0.487767, -0.536543,
		-0.685168, -0.679913, 0.261274,
		35.201923, 34.244904, 23.041903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.980225, 35.091949, 22.999498>,  <35.681541, 34.720844, 22.859011>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.980225, 35.091949, 22.999498> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.976151, 34.750515, 23.207838>,  <34.973705, 34.545654, 23.332842>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.976151, 34.750515, 23.207838>,  <34.980225, 35.091949, 22.999498>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.976151, 34.750515, 23.207838> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262810, 0.504851, 0.822227,
		-0.964794, -0.128510, -0.229473,
		-0.010185, -0.853587, 0.520851,
		34.973095, 34.494438, 23.364094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.428703, 35.197163, 23.497244>,  <34.980225, 35.091949, 22.999498>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.428703, 35.197163, 23.497244> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.674252, 34.918461, 23.645674>,  <34.821579, 34.751240, 23.734732>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.674252, 34.918461, 23.645674>,  <34.428703, 35.197163, 23.497244>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.674252, 34.918461, 23.645674> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305646, 0.223618, 0.925514,
		-0.727834, -0.681564, -0.075687,
		0.613871, -0.696754, 0.371074,
		34.858414, 34.709435, 23.756996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.086872, 34.867680, 24.091206>,  <34.428703, 35.197163, 23.497244>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.086872, 34.867680, 24.091206> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.473171, 34.789742, 24.159758>,  <34.704952, 34.742981, 24.200890>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.473171, 34.789742, 24.159758>,  <34.086872, 34.867680, 24.091206>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.473171, 34.789742, 24.159758> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062876, 0.465065, 0.883041,
		-0.251756, -0.863569, 0.436884,
		0.965746, -0.194841, 0.171381,
		34.762894, 34.731289, 24.211172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.113873, 34.417854, 24.781357>,  <34.086872, 34.867680, 24.091206>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.113873, 34.417854, 24.781357> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.476070, 34.576233, 24.720282>,  <34.693390, 34.671261, 24.683636>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.476070, 34.576233, 24.720282>,  <34.113873, 34.417854, 24.781357>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.476070, 34.576233, 24.720282> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075372, 0.204035, 0.976058,
		0.417616, -0.895321, 0.154909,
		0.905492, 0.395942, -0.152690,
		34.747719, 34.695015, 24.674475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.402863, 34.230938, 25.334970>,  <34.113873, 34.417854, 24.781357>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.402863, 34.230938, 25.334970> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.675499, 34.494007, 25.206657>,  <34.839081, 34.651848, 25.129669>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.675499, 34.494007, 25.206657>,  <34.402863, 34.230938, 25.334970>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.675499, 34.494007, 25.206657> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268286, 0.183248, 0.945750,
		0.680778, -0.730674, -0.051545,
		0.681589, 0.657675, -0.320780,
		34.879974, 34.691311, 25.110424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.004639, 34.139133, 25.680780>,  <34.402863, 34.230938, 25.334970>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.004639, 34.139133, 25.680780> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.064896, 34.506310, 25.533978>,  <35.101048, 34.726616, 25.445896>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.064896, 34.506310, 25.533978>,  <35.004639, 34.139133, 25.680780>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.064896, 34.506310, 25.533978> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407068, 0.280716, 0.869192,
		0.900890, -0.280332, -0.331377,
		0.150639, 0.917939, -0.367009,
		35.110088, 34.781693, 25.423876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.664349, 34.277515, 25.790865>,  <35.004639, 34.139133, 25.680780>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.664349, 34.277515, 25.790865> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.496311, 34.639668, 25.766172>,  <35.395489, 34.856956, 25.751356>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.496311, 34.639668, 25.766172>,  <35.664349, 34.277515, 25.790865>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.496311, 34.639668, 25.766172> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284644, 0.196057, 0.938371,
		0.861683, 0.376634, -0.340073,
		-0.420096, 0.905378, -0.061732,
		35.370281, 34.911282, 25.747652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.198948, 34.642525, 26.147434>,  <35.664349, 34.277515, 25.790865>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.198948, 34.642525, 26.147434> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.845909, 34.830429, 26.139912>,  <35.634087, 34.943172, 26.135397>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.845909, 34.830429, 26.139912>,  <36.198948, 34.642525, 26.147434>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.845909, 34.830429, 26.139912> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181607, 0.377563, 0.908001,
		0.433642, 0.797981, -0.418546,
		-0.882595, 0.469758, -0.018808,
		35.581131, 34.971355, 26.134270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.921898, 34.855350, 26.143915>,  <36.198948, 34.642525, 26.147434>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.921898, 34.855350, 26.143915> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.136639, 34.522682, 26.200653>,  <37.265484, 34.323082, 26.234695>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.136639, 34.522682, 26.200653>,  <36.921898, 34.855350, 26.143915>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.136639, 34.522682, 26.200653> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245601, -0.314901, -0.916798,
		0.807136, 0.457349, -0.373314,
		0.536853, -0.831667, 0.141843,
		37.297695, 34.273182, 26.243206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.433640, 34.829559, 25.565964>,  <36.921898, 34.855350, 26.143915>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.433640, 34.829559, 25.565964> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.377529, 34.458984, 25.705702>,  <37.343864, 34.236641, 25.789545>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.377529, 34.458984, 25.705702>,  <37.433640, 34.829559, 25.565964>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.377529, 34.458984, 25.705702> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100096, -0.337756, -0.935896,
		0.985040, -0.166250, -0.045354,
		-0.140274, -0.926435, 0.349344,
		37.335445, 34.181053, 25.810505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.993465, 34.414745, 25.337988>,  <37.433640, 34.829559, 25.565964>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.993465, 34.414745, 25.337988> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.699940, 34.157562, 25.425747>,  <37.523827, 34.003254, 25.478401>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.699940, 34.157562, 25.425747>,  <37.993465, 34.414745, 25.337988>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.699940, 34.157562, 25.425747> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239675, -0.547196, -0.801956,
		0.635673, -0.535899, 0.555637,
		-0.733809, -0.642953, 0.219396,
		37.479797, 33.964676, 25.491566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.376366, 33.890194, 25.056969>,  <37.993465, 34.414745, 25.337988>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.376366, 33.890194, 25.056969> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.006161, 33.761265, 25.136503>,  <37.784039, 33.683907, 25.184223>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.006161, 33.761265, 25.136503>,  <38.376366, 33.890194, 25.056969>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.006161, 33.761265, 25.136503> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146409, -0.788712, -0.597074,
		0.349277, -0.523487, 0.777153,
		-0.925511, -0.322327, 0.198835,
		37.728508, 33.664566, 25.196154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.414742, 33.184605, 25.213022>,  <38.376366, 33.890194, 25.056969>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.414742, 33.184605, 25.213022> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.046383, 33.263794, 25.078705>,  <37.825367, 33.311306, 24.998116>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.046383, 33.263794, 25.078705>,  <38.414742, 33.184605, 25.213022>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.046383, 33.263794, 25.078705> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029079, -0.824142, -0.565636,
		-0.388721, -0.530657, 0.753193,
		-0.920896, 0.197973, -0.335792,
		37.770115, 33.323185, 24.977966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.155258, 32.551167, 25.142056>,  <38.414742, 33.184605, 25.213022>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.155258, 32.551167, 25.142056> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.920441, 32.779057, 24.911999>,  <37.779552, 32.915791, 24.773964>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.920441, 32.779057, 24.911999>,  <38.155258, 32.551167, 25.142056>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.920441, 32.779057, 24.911999> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081273, -0.665378, -0.742069,
		-0.805467, -0.482368, 0.344301,
		-0.587041, 0.569730, -0.575144,
		37.744328, 32.949974, 24.739456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.776489, 32.105652, 24.813753>,  <38.155258, 32.551167, 25.142056>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.776489, 32.105652, 24.813753> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.734055, 32.436989, 24.593716>,  <37.708595, 32.635792, 24.461693>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.734055, 32.436989, 24.593716>,  <37.776489, 32.105652, 24.813753>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.734055, 32.436989, 24.593716> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070223, -0.558074, -0.826814,
		-0.991875, -0.049081, 0.117370,
		-0.106082, 0.828338, -0.550093,
		37.702229, 32.685490, 24.428688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.310474, 31.915716, 24.343752>,  <37.776489, 32.105652, 24.813753>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.310474, 31.915716, 24.343752> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.466812, 32.258293, 24.208847>,  <37.560616, 32.463840, 24.127905>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.466812, 32.258293, 24.208847>,  <37.310474, 31.915716, 24.343752>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.466812, 32.258293, 24.208847> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153239, -0.421836, -0.893629,
		-0.907611, 0.297590, -0.296113,
		0.390846, 0.856443, -0.337260,
		37.584064, 32.515224, 24.107670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.952423, 32.107159, 23.732227>,  <37.310474, 31.915716, 24.343752>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.952423, 32.107159, 23.732227> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.325249, 32.251785, 23.723131>,  <37.548946, 32.338562, 23.717674>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.325249, 32.251785, 23.723131>,  <36.952423, 32.107159, 23.732227>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.325249, 32.251785, 23.723131> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142226, -0.422922, -0.894935,
		-0.333200, 0.830905, -0.445617,
		0.932067, 0.361571, -0.022741,
		37.604870, 32.360256, 23.716309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.096401, 32.140892, 23.036274>,  <36.952423, 32.107159, 23.732227>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.096401, 32.140892, 23.036274> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.457092, 32.190773, 23.201841>,  <37.673508, 32.220703, 23.301182>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.457092, 32.190773, 23.201841>,  <37.096401, 32.140892, 23.036274>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.457092, 32.190773, 23.201841> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431937, -0.220957, -0.874419,
		-0.017586, 0.967278, -0.253108,
		0.901732, 0.124704, 0.413918,
		37.727612, 32.228184, 23.326017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.474686, 32.469795, 22.574953>,  <37.096401, 32.140892, 23.036274>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.474686, 32.469795, 22.574953> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.723690, 32.249630, 22.797495>,  <37.873093, 32.117531, 22.931021>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.723690, 32.249630, 22.797495>,  <37.474686, 32.469795, 22.574953>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.723690, 32.249630, 22.797495> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459277, -0.318680, -0.829161,
		0.633680, 0.771679, 0.054411,
		0.622506, -0.550412, 0.556356,
		37.910442, 32.084507, 22.964401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.004025, 32.397438, 22.166513>,  <37.474686, 32.469795, 22.574953>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.004025, 32.397438, 22.166513> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.079483, 32.131405, 22.455532>,  <38.124760, 31.971785, 22.628942>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.079483, 32.131405, 22.455532>,  <38.004025, 32.397438, 22.166513>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.079483, 32.131405, 22.455532> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147987, -0.708102, -0.690429,
		0.970830, 0.237176, -0.035159,
		0.188649, -0.665086, 0.722545,
		38.136078, 31.931879, 22.672297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.573318, 32.067135, 21.892595>,  <38.004025, 32.397438, 22.166513>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.573318, 32.067135, 21.892595> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.438984, 31.813782, 22.171461>,  <38.358383, 31.661770, 22.338781>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.438984, 31.813782, 22.171461>,  <38.573318, 32.067135, 21.892595>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.438984, 31.813782, 22.171461> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294680, -0.773650, -0.560918,
		0.894637, 0.017062, 0.446468,
		-0.335839, -0.633383, 0.697164,
		38.338234, 31.623766, 22.380610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.096352, 31.592777, 22.066185>,  <38.573318, 32.067135, 21.892595>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.096352, 31.592777, 22.066185> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.757687, 31.412842, 22.179895>,  <38.554489, 31.304880, 22.248121>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.757687, 31.412842, 22.179895>,  <39.096352, 31.592777, 22.066185>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.757687, 31.412842, 22.179895> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176060, -0.740933, -0.648090,
		0.502166, -0.498662, 0.706517,
		-0.846660, -0.449838, 0.284277,
		38.503689, 31.277891, 22.265179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<31.564301, 29.187748, 24.205112> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.831024, 29.431355, 24.033314>,  <31.991058, 29.577518, 23.930235>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.831024, 29.431355, 24.033314>,  <31.564301, 29.187748, 24.205112>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.831024, 29.431355, 24.033314> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345447, 0.258069, 0.902257,
		0.660328, -0.750000, -0.038300,
		0.666809, 0.609016, -0.429495,
		32.031067, 29.614059, 23.904465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.205349, 29.110432, 24.611858>,  <31.564301, 29.187748, 24.205112>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.205349, 29.110432, 24.611858> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.260094, 29.457575, 24.420822>,  <32.292938, 29.665861, 24.306200>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.260094, 29.457575, 24.420822>,  <32.205349, 29.110432, 24.611858>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.260094, 29.457575, 24.420822> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368679, 0.402864, 0.837720,
		0.919426, -0.290727, -0.264826,
		0.136859, 0.867858, -0.477589,
		32.301151, 29.717932, 24.277546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.837814, 29.255882, 24.775064>,  <32.205349, 29.110432, 24.611858>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.837814, 29.255882, 24.775064> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.665012, 29.592190, 24.644537>,  <32.561333, 29.793974, 24.566221>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.665012, 29.592190, 24.644537>,  <32.837814, 29.255882, 24.775064>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.665012, 29.592190, 24.644537> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154738, 0.425556, 0.891604,
		0.888498, 0.334683, -0.313940,
		-0.432004, 0.840767, -0.326317,
		32.535412, 29.844419, 24.546642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.359596, 29.812290, 24.641298>,  <32.837814, 29.255882, 24.775064>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.359596, 29.812290, 24.641298> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.001038, 29.971684, 24.718950>,  <32.785904, 30.067320, 24.765541>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.001038, 29.971684, 24.718950>,  <33.359596, 29.812290, 24.641298>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.001038, 29.971684, 24.718950> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374799, 0.447580, 0.811910,
		0.236643, 0.800552, -0.550559,
		-0.896396, 0.398482, 0.194130,
		32.732121, 30.091228, 24.777189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.494553, 30.564255, 24.861139>,  <33.359596, 29.812290, 24.641298>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.494553, 30.564255, 24.861139> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.127823, 30.463516, 24.985075>,  <32.907784, 30.403072, 25.059437>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.127823, 30.463516, 24.985075>,  <33.494553, 30.564255, 24.861139>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.127823, 30.463516, 24.985075> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179602, 0.432937, 0.883351,
		-0.356609, 0.865528, -0.351696,
		-0.916828, -0.251846, 0.309840,
		32.852776, 30.387962, 25.078028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.502274, 30.943462, 25.326279>,  <33.494553, 30.564255, 24.861139>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.502274, 30.943462, 25.326279> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.153790, 30.759583, 25.395172>,  <32.944698, 30.649254, 25.436508>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.153790, 30.759583, 25.395172>,  <33.502274, 30.943462, 25.326279>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.153790, 30.759583, 25.395172> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058659, 0.445821, 0.893198,
		-0.487391, 0.768061, -0.415370,
		-0.871211, -0.459702, 0.172235,
		32.892426, 30.621672, 25.446842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.112045, 31.478741, 25.552637>,  <33.502274, 30.943462, 25.326279>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.112045, 31.478741, 25.552637> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.935078, 31.143642, 25.680664>,  <32.828896, 30.942583, 25.757481>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.935078, 31.143642, 25.680664>,  <33.112045, 31.478741, 25.552637>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.935078, 31.143642, 25.680664> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004751, 0.359081, 0.933294,
		-0.896794, 0.411390, -0.162846,
		-0.442423, -0.837746, 0.320067,
		32.802349, 30.892319, 25.776684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.605633, 31.662878, 26.012810>,  <33.112045, 31.478741, 25.552637>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.605633, 31.662878, 26.012810> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.656723, 31.280960, 26.120184>,  <32.687378, 31.051809, 26.184608>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.656723, 31.280960, 26.120184>,  <32.605633, 31.662878, 26.012810>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.656723, 31.280960, 26.120184> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097945, 0.257185, 0.961386,
		-0.986962, -0.149085, -0.060669,
		0.127725, -0.954793, 0.268434,
		32.695042, 30.994522, 26.200714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.016369, 31.514723, 26.503094>,  <32.605633, 31.662878, 26.012810>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.016369, 31.514723, 26.503094> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.331070, 31.274134, 26.558588>,  <32.519890, 31.129780, 26.591885>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.331070, 31.274134, 26.558588>,  <32.016369, 31.514723, 26.503094>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.331070, 31.274134, 26.558588> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046366, 0.281707, 0.958380,
		-0.615523, -0.747576, 0.249522,
		0.786754, -0.601474, 0.138735,
		32.567097, 31.093691, 26.600208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.818731, 31.142120, 27.156858>,  <32.016369, 31.514723, 26.503094>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.818731, 31.142120, 27.156858> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.209736, 31.080400, 27.099361>,  <32.444340, 31.043367, 27.064863>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.209736, 31.080400, 27.099361>,  <31.818731, 31.142120, 27.156858>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.209736, 31.080400, 27.099361> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189373, 0.342391, 0.920275,
		-0.092784, -0.926801, 0.363911,
		0.977511, -0.154302, -0.143743,
		32.502991, 31.034109, 27.056238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.952553, 30.661465, 27.574591>,  <31.818731, 31.142120, 27.156858>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.952553, 30.661465, 27.574591> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.302418, 30.838379, 27.495241>,  <32.512337, 30.944527, 27.447632>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.302418, 30.838379, 27.495241>,  <31.952553, 30.661465, 27.574591>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.302418, 30.838379, 27.495241> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092455, 0.249508, 0.963949,
		0.475836, -0.861470, 0.177343,
		0.874661, 0.442285, -0.198372,
		32.564816, 30.971064, 27.435730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.519833, 30.346937, 27.974541>,  <31.952553, 30.661465, 27.574591>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.519833, 30.346937, 27.974541> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.616867, 30.719795, 27.867016>,  <32.675087, 30.943510, 27.802502>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.616867, 30.719795, 27.867016>,  <32.519833, 30.346937, 27.974541>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.616867, 30.719795, 27.867016> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241158, 0.210450, 0.947393,
		0.939679, -0.294647, -0.173743,
		0.242582, 0.932145, -0.268812,
		32.689640, 30.999439, 27.786373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.043079, 30.509802, 28.469776>,  <32.519833, 30.346937, 27.974541>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.043079, 30.509802, 28.469776> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.949654, 30.872391, 28.329062>,  <32.893600, 31.089945, 28.244633>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.949654, 30.872391, 28.329062>,  <33.043079, 30.509802, 28.469776>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.949654, 30.872391, 28.329062> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053191, 0.373164, 0.926239,
		0.970886, 0.197620, -0.135372,
		-0.233560, 0.906474, -0.351788,
		32.879585, 31.144333, 28.223526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.533695, 30.899221, 28.719044>,  <33.043079, 30.509802, 28.469776>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.533695, 30.899221, 28.719044> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.263985, 31.177963, 28.621271>,  <33.102158, 31.345209, 28.562607>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.263985, 31.177963, 28.621271>,  <33.533695, 30.899221, 28.719044>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.263985, 31.177963, 28.621271> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103643, 0.417016, 0.902971,
		0.731173, 0.583515, -0.353407,
		-0.674273, 0.696856, -0.244434,
		33.061703, 31.387020, 28.547941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.126923, 31.146124, 28.429840>,  <33.533695, 30.899221, 28.719044>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.126923, 31.146124, 28.429840> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.500942, 31.027336, 28.507294>,  <34.725353, 30.956064, 28.553766>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.500942, 31.027336, 28.507294>,  <34.126923, 31.146124, 28.429840>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.500942, 31.027336, 28.507294> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004911, -0.535288, -0.844655,
		0.354486, 0.790745, -0.499062,
		0.935048, -0.296968, 0.193635,
		34.781456, 30.938246, 28.565384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.533234, 31.378633, 27.888695>,  <34.126923, 31.146124, 28.429840>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.533234, 31.378633, 27.888695> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.778103, 31.096664, 28.031986>,  <34.925026, 30.927483, 28.117962>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.778103, 31.096664, 28.031986>,  <34.533234, 31.378633, 27.888695>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.778103, 31.096664, 28.031986> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067935, -0.404477, -0.912021,
		0.787798, 0.582653, -0.199723,
		0.612175, -0.704921, 0.358229,
		34.961754, 30.885189, 28.139456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.053814, 31.387877, 27.404406>,  <34.533234, 31.378633, 27.888695>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.053814, 31.387877, 27.404406> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.074669, 31.045095, 27.609507>,  <35.087181, 30.839428, 27.732567>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.074669, 31.045095, 27.609507>,  <35.053814, 31.387877, 27.404406>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.074669, 31.045095, 27.609507> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148464, -0.501093, -0.852563,
		0.987542, 0.120580, 0.101099,
		0.052142, -0.856952, 0.512752,
		35.090313, 30.788010, 27.763332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.555244, 30.993317, 26.987642>,  <35.053814, 31.387877, 27.404406>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.555244, 30.993317, 26.987642> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.375904, 30.710749, 27.206711>,  <35.268299, 30.541208, 27.338152>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.375904, 30.710749, 27.206711>,  <35.555244, 30.993317, 26.987642>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.375904, 30.710749, 27.206711> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165476, -0.667716, -0.725792,
		0.878405, -0.234785, 0.416270,
		-0.448355, -0.706422, 0.547674,
		35.241398, 30.498821, 27.371014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.978424, 30.410770, 27.004339>,  <35.555244, 30.993317, 26.987642>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.978424, 30.410770, 27.004339> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.634899, 30.237286, 27.113403>,  <35.428783, 30.133194, 27.178843>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.634899, 30.237286, 27.113403>,  <35.978424, 30.410770, 27.004339>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.634899, 30.237286, 27.113403> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204339, -0.778062, -0.594025,
		0.469782, -0.454438, 0.756830,
		-0.858808, -0.433712, 0.272660,
		35.377258, 30.107172, 27.195202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.081200, 29.654139, 27.147238>,  <35.978424, 30.410770, 27.004339>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.081200, 29.654139, 27.147238> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.695568, 29.683666, 27.045176>,  <35.464188, 29.701384, 26.983938>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.695568, 29.683666, 27.045176>,  <36.081200, 29.654139, 27.147238>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.695568, 29.683666, 27.045176> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119809, -0.736480, -0.665765,
		-0.237061, -0.672419, 0.701181,
		-0.964079, 0.073819, -0.255153,
		35.406345, 29.705812, 26.968630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.860153, 29.039997, 27.102858>,  <36.081200, 29.654139, 27.147238>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.860153, 29.039997, 27.102858> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.590057, 29.233419, 26.880068>,  <35.427998, 29.349474, 26.746395>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.590057, 29.233419, 26.880068>,  <35.860153, 29.039997, 27.102858>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.590057, 29.233419, 26.880068> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044121, -0.727288, -0.684912,
		-0.736279, -0.487053, 0.469758,
		-0.675238, 0.483561, -0.556976,
		35.387486, 29.378487, 26.712976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.505600, 28.525803, 26.660477>,  <35.860153, 29.039997, 27.102858>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.505600, 28.525803, 26.660477> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.366512, 28.866331, 26.503332>,  <35.283058, 29.070648, 26.409046>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.366512, 28.866331, 26.503332>,  <35.505600, 28.525803, 26.660477>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.366512, 28.866331, 26.503332> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304263, -0.498788, -0.811563,
		-0.886857, -0.162663, 0.432465,
		-0.347720, 0.851323, -0.392862,
		35.262196, 29.121729, 26.385473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.782341, 28.369019, 26.408195>,  <35.505600, 28.525803, 26.660477>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.782341, 28.369019, 26.408195> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.927570, 28.683578, 26.208294>,  <35.014709, 28.872314, 26.088352>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.927570, 28.683578, 26.208294>,  <34.782341, 28.369019, 26.408195>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.927570, 28.683578, 26.208294> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149318, -0.480317, -0.864291,
		-0.919718, 0.388424, -0.056967,
		0.363074, 0.786398, -0.499754,
		35.036491, 28.919498, 26.058367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.302555, 28.507492, 25.825680>,  <34.782341, 28.369019, 26.408195>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.302555, 28.507492, 25.825680> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.655067, 28.670681, 25.730261>,  <34.866573, 28.768595, 25.673010>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.655067, 28.670681, 25.730261>,  <34.302555, 28.507492, 25.825680>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.655067, 28.670681, 25.730261> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145205, -0.246598, -0.958178,
		-0.449737, 0.879060, -0.158082,
		0.881279, 0.407974, -0.238548,
		34.919453, 28.793074, 25.658697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.154552, 28.978018, 25.263609>,  <34.302555, 28.507492, 25.825680>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.154552, 28.978018, 25.263609> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.539738, 28.879536, 25.219648>,  <34.770851, 28.820446, 25.193272>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.539738, 28.879536, 25.219648>,  <34.154552, 28.978018, 25.263609>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.539738, 28.879536, 25.219648> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099743, 0.053392, -0.993580,
		0.250494, 0.967746, 0.026857,
		0.962966, -0.246207, -0.109900,
		34.828629, 28.805674, 25.186678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.340714, 29.311069, 24.711430>,  <34.154552, 28.978018, 25.263609>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.340714, 29.311069, 24.711430> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.633404, 29.042427, 24.757957>,  <34.809017, 28.881243, 24.785873>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.633404, 29.042427, 24.757957>,  <34.340714, 29.311069, 24.711430>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.633404, 29.042427, 24.757957> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011281, -0.158700, -0.987262,
		0.681510, 0.723714, -0.108548,
		0.731722, -0.671604, 0.116320,
		34.852921, 28.840946, 24.792854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.911140, 29.457228, 24.131361>,  <34.340714, 29.311069, 24.711430>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.911140, 29.457228, 24.131361> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.935017, 29.080971, 24.265005>,  <34.949341, 28.855217, 24.345192>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.935017, 29.080971, 24.265005>,  <34.911140, 29.457228, 24.131361>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.935017, 29.080971, 24.265005> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059035, -0.337450, -0.939491,
		0.996470, 0.036352, -0.075673,
		0.059688, -0.940641, 0.334112,
		34.952923, 28.798779, 24.365238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.503036, 29.148689, 23.830900>,  <34.911140, 29.457228, 24.131361>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.503036, 29.148689, 23.830900> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.274601, 28.834347, 23.925800>,  <35.137539, 28.645741, 23.982740>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.274601, 28.834347, 23.925800>,  <35.503036, 29.148689, 23.830900>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.274601, 28.834347, 23.925800> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012768, -0.280480, -0.959775,
		0.820792, -0.551142, 0.150144,
		-0.571085, -0.785859, 0.237252,
		35.103275, 28.598589, 23.996977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.240524, 29.050726, 23.977024>,  <35.503036, 29.148689, 23.830900>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.240524, 29.050726, 23.977024> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.629242, 28.998327, 23.898590>,  <36.862473, 28.966888, 23.851530>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.629242, 28.998327, 23.898590>,  <36.240524, 29.050726, 23.977024>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.629242, 28.998327, 23.898590> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233095, 0.407659, 0.882882,
		-0.035719, -0.903689, 0.426697,
		0.971798, -0.130996, -0.196084,
		36.920780, 28.959028, 23.839766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.548576, 28.997257, 24.603134>,  <36.240524, 29.050726, 23.977024>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.548576, 28.997257, 24.603134> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.890285, 29.032160, 24.398157>,  <37.095310, 29.053101, 24.275171>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.890285, 29.032160, 24.398157>,  <36.548576, 28.997257, 24.603134>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.890285, 29.032160, 24.398157> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453046, 0.358379, 0.816281,
		0.254873, -0.929490, 0.266624,
		0.854277, 0.087255, -0.512443,
		37.146568, 29.058336, 24.244425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.072159, 28.622562, 24.931820>,  <36.548576, 28.997257, 24.603134>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.072159, 28.622562, 24.931820> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.270882, 28.894939, 24.716597>,  <37.390114, 29.058365, 24.587463>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.270882, 28.894939, 24.716597>,  <37.072159, 28.622562, 24.931820>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.270882, 28.894939, 24.716597> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432382, 0.343350, 0.833760,
		0.752484, -0.646861, -0.123850,
		0.496803, 0.680942, -0.538057,
		37.419922, 29.099222, 24.555180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.820744, 28.578909, 25.054132>,  <37.072159, 28.622562, 24.931820>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.820744, 28.578909, 25.054132> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.780640, 28.955027, 24.924026>,  <37.756577, 29.180696, 24.845963>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.780640, 28.955027, 24.924026>,  <37.820744, 28.578909, 25.054132>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.780640, 28.955027, 24.924026> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428322, 0.335859, 0.838892,
		0.898047, -0.055209, -0.436421,
		-0.100261, 0.940293, -0.325265,
		37.750561, 29.237114, 24.826447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.498283, 28.909210, 25.242941>,  <37.820744, 28.578909, 25.054132>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.498283, 28.909210, 25.242941> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.235184, 29.201164, 25.168491>,  <38.077324, 29.376337, 25.123821>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.235184, 29.201164, 25.168491>,  <38.498283, 28.909210, 25.242941>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.235184, 29.201164, 25.168491> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502431, 0.609223, 0.613523,
		0.561190, 0.310028, -0.767430,
		-0.657745, 0.729884, -0.186122,
		38.037861, 29.420130, 25.112656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.884583, 29.504789, 25.270279>,  <38.498283, 28.909210, 25.242941>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.884583, 29.504789, 25.270279> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.519478, 29.661371, 25.316971>,  <38.300415, 29.755320, 25.344986>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.519478, 29.661371, 25.316971>,  <38.884583, 29.504789, 25.270279>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.519478, 29.661371, 25.316971> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373337, 0.683468, 0.627288,
		0.165775, 0.616145, -0.769990,
		-0.912764, 0.391454, 0.116728,
		38.245647, 29.778807, 25.351990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.023430, 30.160383, 25.439943>,  <38.884583, 29.504789, 25.270279>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.023430, 30.160383, 25.439943> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.649097, 30.086718, 25.560143>,  <38.424496, 30.042519, 25.632261>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.649097, 30.086718, 25.560143>,  <39.023430, 30.160383, 25.439943>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.649097, 30.086718, 25.560143> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179503, 0.484684, 0.856073,
		-0.303302, 0.855082, -0.420526,
		-0.935834, -0.184163, 0.300496,
		38.368347, 30.031469, 25.650291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.610996, 30.862967, 25.596909>,  <39.023430, 30.160383, 25.439943>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.610996, 30.862967, 25.596909> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.457081, 30.546940, 25.787794>,  <38.364731, 30.357325, 25.902325>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.457081, 30.546940, 25.787794>,  <38.610996, 30.862967, 25.596909>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.457081, 30.546940, 25.787794> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003444, 0.515790, 0.856708,
		-0.922999, 0.331295, -0.195749,
		-0.384788, -0.790066, 0.477215,
		38.341644, 30.309919, 25.930958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.196117, 31.150198, 26.144623>,  <38.610996, 30.862967, 25.596909>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.196117, 31.150198, 26.144623> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.218651, 30.777639, 26.288471>,  <38.232170, 30.554104, 26.374781>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.218651, 30.777639, 26.288471>,  <38.196117, 31.150198, 26.144623>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.218651, 30.777639, 26.288471> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167425, 0.346279, 0.923071,
		-0.984274, -0.112208, -0.136433,
		0.056332, -0.931397, 0.359620,
		38.235550, 30.498220, 26.396357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.590420, 31.096760, 26.594509>,  <38.196117, 31.150198, 26.144623>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.590420, 31.096760, 26.594509> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.826130, 30.810368, 26.744244>,  <37.967556, 30.638533, 26.834084>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.826130, 30.810368, 26.744244>,  <37.590420, 31.096760, 26.594509>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.826130, 30.810368, 26.744244> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099403, 0.395556, 0.913047,
		-0.801794, -0.575246, 0.161921,
		0.589276, -0.715980, 0.374335,
		38.002914, 30.595573, 26.856544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.173141, 30.800970, 27.288235>,  <37.590420, 31.096760, 26.594509>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.173141, 30.800970, 27.288235> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.566628, 30.731647, 27.307253>,  <37.802719, 30.690054, 27.318665>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.566628, 30.731647, 27.307253>,  <37.173141, 30.800970, 27.288235>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.566628, 30.731647, 27.307253> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031496, 0.426741, 0.903825,
		-0.176931, -0.887613, 0.425252,
		0.983719, -0.173308, 0.047547,
		37.861744, 30.679655, 27.321518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.161903, 30.451208, 27.854820>,  <37.173141, 30.800970, 27.288235>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.161903, 30.451208, 27.854820> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.536510, 30.578381, 27.795687>,  <37.761276, 30.654684, 27.760206>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.536510, 30.578381, 27.795687>,  <37.161903, 30.451208, 27.854820>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.536510, 30.578381, 27.795687> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078500, 0.220805, 0.972154,
		0.341724, -0.922043, 0.181829,
		0.936516, 0.317935, -0.147835,
		37.817467, 30.673761, 27.751337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.609013, 30.205194, 28.458792>,  <37.161903, 30.451208, 27.854820>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.609013, 30.205194, 28.458792> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.794415, 30.514820, 28.286285>,  <37.905655, 30.700596, 28.182781>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.794415, 30.514820, 28.286285>,  <37.609013, 30.205194, 28.458792>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.794415, 30.514820, 28.286285> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210099, 0.376820, 0.902145,
		0.860828, -0.508754, 0.012026,
		0.463502, 0.774065, -0.431265,
		37.933464, 30.747040, 28.156906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.201519, 30.282461, 28.882416>,  <37.609013, 30.205194, 28.458792>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.201519, 30.282461, 28.882416> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.131481, 30.615660, 28.672480>,  <38.089458, 30.815578, 28.546518>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.131481, 30.615660, 28.672480>,  <38.201519, 30.282461, 28.882416>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.131481, 30.615660, 28.672480> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203067, 0.552168, 0.808625,
		0.963383, 0.035006, -0.265835,
		-0.175092, 0.832998, -0.524840,
		38.078953, 30.865559, 28.515028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<39.242722, 30.577284, 22.516361> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.854370, 30.590727, 22.421478>,  <38.621361, 30.598793, 22.364548>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.854370, 30.590727, 22.421478>,  <39.242722, 30.577284, 22.516361>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.854370, 30.590727, 22.421478> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168834, -0.606495, -0.776955,
		-0.169974, -0.794377, 0.583159,
		-0.970878, 0.033605, -0.237207,
		38.563107, 30.600809, 22.350317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.926369, 29.889917, 22.507687>,  <39.242722, 30.577284, 22.516361>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.926369, 29.889917, 22.507687> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.720325, 30.118202, 22.251888>,  <38.596699, 30.255173, 22.098410>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.720325, 30.118202, 22.251888>,  <38.926369, 29.889917, 22.507687>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.720325, 30.118202, 22.251888> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035369, -0.759611, -0.649415,
		-0.856398, -0.311898, 0.411464,
		-0.515104, 0.570711, -0.639497,
		38.565792, 30.289415, 22.060040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.693428, 29.386770, 22.072449>,  <38.926369, 29.889917, 22.507687>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.693428, 29.386770, 22.072449> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.578499, 29.719164, 21.881908>,  <38.509541, 29.918600, 21.767584>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.578499, 29.719164, 21.881908>,  <38.693428, 29.386770, 22.072449>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.578499, 29.719164, 21.881908> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105559, -0.521764, -0.846534,
		-0.951999, -0.192946, 0.237633,
		-0.287324, 0.830984, -0.476352,
		38.492302, 29.968458, 21.739002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.031780, 29.282562, 21.699545>,  <38.693428, 29.386770, 22.072449>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.031780, 29.282562, 21.699545> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.206348, 29.586315, 21.506517>,  <38.311089, 29.768568, 21.390701>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.206348, 29.586315, 21.506517>,  <38.031780, 29.282562, 21.699545>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.206348, 29.586315, 21.506517> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237772, -0.419936, -0.875853,
		-0.867758, 0.496980, -0.002708,
		0.436419, 0.759384, -0.482570,
		38.337273, 29.814131, 21.361746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.596092, 29.561104, 21.240536>,  <38.031780, 29.282562, 21.699545>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.596092, 29.561104, 21.240536> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.952637, 29.674509, 21.099062>,  <38.166565, 29.742552, 21.014177>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.952637, 29.674509, 21.099062>,  <37.596092, 29.561104, 21.240536>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.952637, 29.674509, 21.099062> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258544, -0.322914, -0.910429,
		-0.372327, 0.902966, -0.214534,
		0.891363, 0.283511, -0.353686,
		38.220047, 29.759562, 20.992956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.431011, 29.824930, 20.591759>,  <37.596092, 29.561104, 21.240536>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.431011, 29.824930, 20.591759> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.826969, 29.774300, 20.566183>,  <38.064545, 29.743921, 20.550838>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.826969, 29.774300, 20.566183>,  <37.431011, 29.824930, 20.591759>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.826969, 29.774300, 20.566183> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099006, -0.294079, -0.950639,
		0.101524, 0.947363, -0.303639,
		0.989894, -0.126575, -0.063939,
		38.123936, 29.736328, 20.547001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.651947, 30.153151, 19.899971>,  <37.431011, 29.824930, 20.591759>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.651947, 30.153151, 19.899971> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.932915, 29.888252, 20.004307>,  <38.101494, 29.729313, 20.066908>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.932915, 29.888252, 20.004307>,  <37.651947, 30.153151, 19.899971>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.932915, 29.888252, 20.004307> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072334, -0.298151, -0.951774,
		0.708079, 0.687411, -0.161524,
		0.702418, -0.662248, 0.260837,
		38.143639, 29.689577, 20.082558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.244637, 30.234234, 19.361254>,  <37.651947, 30.153151, 19.899971>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.244637, 30.234234, 19.361254> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.261509, 29.874367, 19.535069>,  <38.271633, 29.658447, 19.639357>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.261509, 29.874367, 19.535069>,  <38.244637, 30.234234, 19.361254>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.261509, 29.874367, 19.535069> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069146, -0.431252, -0.899578,
		0.996714, 0.067994, 0.044016,
		0.042184, -0.899666, 0.434537,
		38.274166, 29.604467, 19.665430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.852074, 29.859228, 19.179659>,  <38.244637, 30.234234, 19.361254>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.852074, 29.859228, 19.179659> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.598125, 29.570074, 19.288746>,  <38.445755, 29.396582, 19.354198>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.598125, 29.570074, 19.288746>,  <38.852074, 29.859228, 19.179659>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.598125, 29.570074, 19.288746> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277748, -0.542921, -0.792523,
		0.720969, -0.427402, 0.545465,
		-0.634870, -0.722886, 0.272719,
		38.407665, 29.353209, 19.370562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.141289, 29.221386, 18.952528>,  <38.852074, 29.859228, 19.179659>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.141289, 29.221386, 18.952528> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.772758, 29.074413, 19.003359>,  <38.551640, 28.986229, 19.033857>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.772758, 29.074413, 19.003359>,  <39.141289, 29.221386, 18.952528>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.772758, 29.074413, 19.003359> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077400, -0.493660, -0.866204,
		0.381004, -0.788222, 0.483262,
		-0.921328, -0.367432, 0.127078,
		38.496361, 28.964184, 19.041483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.205933, 28.423946, 18.959452>,  <39.141289, 29.221386, 18.952528>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.205933, 28.423946, 18.959452> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.810963, 28.468876, 18.914961>,  <38.573978, 28.495834, 18.888266>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.810963, 28.468876, 18.914961>,  <39.205933, 28.423946, 18.959452>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.810963, 28.468876, 18.914961> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054914, -0.416066, -0.907675,
		-0.148231, -0.902371, 0.404666,
		-0.987427, 0.112324, -0.111226,
		38.514736, 28.502573, 18.881594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.992058, 27.792215, 18.764444>,  <39.205933, 28.423946, 18.959452>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.992058, 27.792215, 18.764444> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.705673, 28.046106, 18.648159>,  <38.533840, 28.198441, 18.578388>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.705673, 28.046106, 18.648159>,  <38.992058, 27.792215, 18.764444>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.705673, 28.046106, 18.648159> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003169, -0.419364, -0.907813,
		-0.698131, -0.649039, 0.302260,
		-0.715963, 0.634730, -0.290714,
		38.490883, 28.236525, 18.560946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.366566, 27.456530, 18.455446>,  <38.992058, 27.792215, 18.764444>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.366566, 27.456530, 18.455446> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.382915, 27.820765, 18.290928>,  <38.392727, 28.039305, 18.192217>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.382915, 27.820765, 18.290928>,  <38.366566, 27.456530, 18.455446>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.382915, 27.820765, 18.290928> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240487, -0.390571, -0.888606,
		-0.969791, 0.135233, 0.203020,
		0.040875, 0.910586, -0.411294,
		38.395180, 28.093941, 18.167540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.132122, 26.926823, 17.935902>,  <38.366566, 27.456530, 18.455446>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.132122, 26.926823, 17.935902> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.794304, 26.771225, 18.083103>,  <37.591614, 26.677866, 18.171425>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.794304, 26.771225, 18.083103>,  <38.132122, 26.926823, 17.935902>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.794304, 26.771225, 18.083103> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222005, 0.371039, 0.901689,
		-0.487294, 0.843217, -0.227002,
		-0.844546, -0.388992, 0.368004,
		37.540939, 26.654528, 18.193504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.676716, 27.384672, 18.354902>,  <38.132122, 26.926823, 17.935902>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.676716, 27.384672, 18.354902> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.517918, 27.044420, 18.492781>,  <37.422638, 26.840269, 18.575508>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.517918, 27.044420, 18.492781>,  <37.676716, 27.384672, 18.354902>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.517918, 27.044420, 18.492781> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015612, 0.381766, 0.924127,
		-0.917686, 0.361497, -0.164841,
		-0.397000, -0.850632, 0.344697,
		37.398819, 26.789230, 18.596189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.168484, 27.565001, 18.770905>,  <37.676716, 27.384672, 18.354902>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.168484, 27.565001, 18.770905> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.234947, 27.187378, 18.884853>,  <37.274826, 26.960804, 18.953222>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.234947, 27.187378, 18.884853>,  <37.168484, 27.565001, 18.770905>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.234947, 27.187378, 18.884853> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131189, 0.265157, 0.955239,
		-0.977334, -0.196092, -0.079792,
		0.166157, -0.944055, 0.284872,
		37.284794, 26.904161, 18.970314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.742046, 27.546345, 19.248459>,  <37.168484, 27.565001, 18.770905>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.742046, 27.546345, 19.248459> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.981915, 27.236500, 19.328827>,  <37.125835, 27.050592, 19.377047>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.981915, 27.236500, 19.328827>,  <36.742046, 27.546345, 19.248459>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.981915, 27.236500, 19.328827> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196720, 0.100674, 0.975277,
		-0.775692, -0.624369, -0.092011,
		0.599670, -0.774615, 0.200918,
		37.161816, 27.004116, 19.389103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.429676, 27.062660, 19.607716>,  <36.742046, 27.546345, 19.248459>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.429676, 27.062660, 19.607716> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.816067, 27.035202, 19.707453>,  <37.047901, 27.018728, 19.767296>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.816067, 27.035202, 19.707453>,  <36.429676, 27.062660, 19.607716>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.816067, 27.035202, 19.707453> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238985, 0.131553, 0.962071,
		-0.098842, -0.988930, 0.110673,
		0.965979, -0.068644, 0.249342,
		37.105862, 27.014608, 19.782255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.361511, 26.782997, 20.231241>,  <36.429676, 27.062660, 19.607716>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.361511, 26.782997, 20.231241> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.756824, 26.843515, 20.239262>,  <36.994015, 26.879827, 20.244074>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.756824, 26.843515, 20.239262>,  <36.361511, 26.782997, 20.231241>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.756824, 26.843515, 20.239262> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025352, 0.033187, 0.999128,
		0.150499, -0.987931, 0.036634,
		0.988285, 0.151297, 0.020051,
		37.053310, 26.888905, 20.245277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.559856, 26.546921, 20.901691>,  <36.361511, 26.782997, 20.231241>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.559856, 26.546921, 20.901691> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.898937, 26.748917, 20.836723>,  <37.102386, 26.870115, 20.797743>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.898937, 26.748917, 20.836723>,  <36.559856, 26.546921, 20.901691>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.898937, 26.748917, 20.836723> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043428, 0.239087, 0.970027,
		0.528688, -0.829350, 0.180744,
		0.847704, 0.504992, -0.162419,
		37.153248, 26.900414, 20.787998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.000118, 26.387764, 21.503119>,  <36.559856, 26.546921, 20.901691>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.000118, 26.387764, 21.503119> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.143082, 26.725019, 21.342432>,  <37.228859, 26.927372, 21.246019>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.143082, 26.725019, 21.342432>,  <37.000118, 26.387764, 21.503119>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.143082, 26.725019, 21.342432> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188855, 0.355997, 0.915205,
		0.914654, -0.402970, -0.031993,
		0.357411, 0.843138, -0.401717,
		37.250305, 26.977961, 21.221916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.624912, 26.371723, 21.861008>,  <37.000118, 26.387764, 21.503119>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.624912, 26.371723, 21.861008> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.531155, 26.739216, 21.733891>,  <37.474899, 26.959711, 21.657619>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.531155, 26.739216, 21.733891>,  <37.624912, 26.371723, 21.861008>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.531155, 26.739216, 21.733891> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026572, 0.320724, 0.946800,
		0.971778, 0.230372, -0.050765,
		-0.234397, 0.918730, -0.317794,
		37.460835, 27.014835, 21.638552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.068073, 26.876366, 22.284523>,  <37.624912, 26.371723, 21.861008>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.068073, 26.876366, 22.284523> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.762012, 27.094152, 22.147057>,  <37.578377, 27.224825, 22.064577>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.762012, 27.094152, 22.147057>,  <38.068073, 26.876366, 22.284523>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.762012, 27.094152, 22.147057> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147124, 0.371786, 0.916586,
		0.626820, 0.751884, -0.204367,
		-0.765147, 0.544467, -0.343664,
		37.532467, 27.257492, 22.043957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.273331, 27.596642, 22.535843>,  <38.068073, 26.876366, 22.284523>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.273331, 27.596642, 22.535843> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.898045, 27.642803, 22.405342>,  <37.672874, 27.670500, 22.327042>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.898045, 27.642803, 22.405342>,  <38.273331, 27.596642, 22.535843>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.898045, 27.642803, 22.405342> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151997, 0.709528, 0.688090,
		0.310894, 0.695163, -0.648146,
		-0.938212, 0.115406, -0.326251,
		37.616581, 27.677425, 22.307467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.119930, 28.296183, 22.402599>,  <38.273331, 27.596642, 22.535843>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.119930, 28.296183, 22.402599> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.777081, 28.115932, 22.502424>,  <37.571373, 28.007782, 22.562319>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.777081, 28.115932, 22.502424>,  <38.119930, 28.296183, 22.402599>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.777081, 28.115932, 22.502424> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103471, 0.625216, 0.773562,
		-0.504616, 0.637214, -0.582513,
		-0.857121, -0.450625, 0.249561,
		37.519943, 27.980745, 22.577293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.512642, 28.869274, 22.427292>,  <38.119930, 28.296183, 22.402599>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.512642, 28.869274, 22.427292> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.390587, 28.541407, 22.621212>,  <37.317352, 28.344687, 22.737564>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.390587, 28.541407, 22.621212>,  <37.512642, 28.869274, 22.427292>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.390587, 28.541407, 22.621212> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093578, 0.532427, 0.841288,
		-0.947698, 0.211345, -0.239169,
		-0.305142, -0.819668, 0.484802,
		37.299046, 28.295506, 22.766653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.882996, 29.028172, 22.705523>,  <37.512642, 28.869274, 22.427292>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.882996, 29.028172, 22.705523> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.012283, 28.735220, 22.945238>,  <37.089855, 28.559448, 23.089067>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.012283, 28.735220, 22.945238>,  <36.882996, 29.028172, 22.705523>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.012283, 28.735220, 22.945238> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225341, 0.555499, 0.800401,
		-0.919102, -0.393753, 0.014515,
		0.323223, -0.732379, 0.599289,
		37.109249, 28.515507, 23.125025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.313713, 29.062508, 23.274263>,  <36.882996, 29.028172, 22.705523>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.313713, 29.062508, 23.274263> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.647045, 28.873287, 23.388651>,  <36.847046, 28.759756, 23.457283>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.647045, 28.873287, 23.388651>,  <36.313713, 29.062508, 23.274263>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.647045, 28.873287, 23.388651> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062335, 0.594462, 0.801704,
		-0.549244, -0.650261, 0.524872,
		0.833334, -0.473049, 0.285971,
		36.897045, 28.731373, 23.474442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.762718, 28.576006, 23.393093>,  <36.313713, 29.062508, 23.274263>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.762718, 28.576006, 23.393093> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.406059, 28.443661, 23.516699>,  <35.192062, 28.364254, 23.590862>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.406059, 28.443661, 23.516699>,  <35.762718, 28.576006, 23.393093>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.406059, 28.443661, 23.516699> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122719, -0.480372, -0.868437,
		0.435776, -0.812264, 0.387720,
		-0.891650, -0.330863, 0.309015,
		35.138565, 28.344402, 23.609404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.749420, 27.836170, 23.124729>,  <35.762718, 28.576006, 23.393093>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.749420, 27.836170, 23.124729> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.371990, 27.957582, 23.177700>,  <35.145531, 28.030430, 23.209482>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.371990, 27.957582, 23.177700>,  <35.749420, 27.836170, 23.124729>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.371990, 27.957582, 23.177700> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281388, -0.524010, -0.803887,
		-0.174609, -0.795791, 0.579852,
		-0.943574, 0.303529, 0.132429,
		35.088917, 28.048641, 23.217428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.326969, 27.282272, 23.073708>,  <35.749420, 27.836170, 23.124729>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.326969, 27.282272, 23.073708> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.049812, 27.564890, 23.016169>,  <34.883518, 27.734461, 22.981646>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.049812, 27.564890, 23.016169>,  <35.326969, 27.282272, 23.073708>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.049812, 27.564890, 23.016169> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273567, -0.442187, -0.854185,
		-0.667127, -0.552508, 0.499676,
		-0.692894, 0.706544, -0.143847,
		34.841946, 27.776854, 22.973015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.706890, 26.964602, 23.069609>,  <35.326969, 27.282272, 23.073708>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.706890, 26.964602, 23.069609> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.688400, 27.306988, 22.863623>,  <34.677307, 27.512419, 22.740032>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.688400, 27.306988, 22.863623>,  <34.706890, 26.964602, 23.069609>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.688400, 27.306988, 22.863623> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333939, -0.499098, -0.799616,
		-0.941460, 0.135004, 0.308911,
		-0.046226, 0.855965, -0.514964,
		34.674534, 27.563778, 22.709133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.007065, 26.870153, 22.682299>,  <34.706890, 26.964602, 23.069609>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.007065, 26.870153, 22.682299> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.218670, 27.155468, 22.498402>,  <34.345634, 27.326656, 22.388063>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.218670, 27.155468, 22.498402>,  <34.007065, 26.870153, 22.682299>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.218670, 27.155468, 22.498402> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342004, -0.316609, -0.884755,
		-0.776643, 0.625284, 0.076456,
		0.529017, 0.713287, -0.459742,
		34.377377, 27.369453, 22.360479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.599476, 27.119478, 22.198427>,  <34.007065, 26.870153, 22.682299>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.599476, 27.119478, 22.198427> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.949238, 27.240091, 22.046375>,  <34.159096, 27.312460, 21.955145>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.949238, 27.240091, 22.046375>,  <33.599476, 27.119478, 22.198427>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.949238, 27.240091, 22.046375> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309968, -0.255583, -0.915749,
		-0.373284, 0.918561, -0.130017,
		0.874402, 0.301534, -0.380130,
		34.211559, 27.330551, 21.932337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.470921, 27.523476, 21.583954>,  <33.599476, 27.119478, 22.198427>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.470921, 27.523476, 21.583954> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.852085, 27.404543, 21.560083>,  <34.080784, 27.333183, 21.545761>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.852085, 27.404543, 21.560083>,  <33.470921, 27.523476, 21.583954>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.852085, 27.404543, 21.560083> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133220, -0.233649, -0.963151,
		0.272431, 0.925744, -0.262257,
		0.952908, -0.297331, -0.059674,
		34.137959, 27.315344, 21.542181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.170204, 28.153488, 21.521229>,  <33.470921, 27.523476, 21.583954>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.170204, 28.153488, 21.521229> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.856522, 28.355820, 21.377474>,  <32.668312, 28.477219, 21.291222>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.856522, 28.355820, 21.377474>,  <33.170204, 28.153488, 21.521229>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.856522, 28.355820, 21.377474> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072604, 0.500405, 0.862742,
		0.616240, 0.702659, -0.355694,
		-0.784205, 0.505831, -0.359385,
		32.621262, 28.507568, 21.269659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.301216, 28.747223, 21.708340>,  <33.170204, 28.153488, 21.521229>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.301216, 28.747223, 21.708340> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.908817, 28.784306, 21.640160>,  <32.673378, 28.806555, 21.599251>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.908817, 28.784306, 21.640160>,  <33.301216, 28.747223, 21.708340>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.908817, 28.784306, 21.640160> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089154, 0.564880, 0.820343,
		0.172336, 0.819949, -0.545879,
		-0.980995, 0.092708, -0.170451,
		32.614517, 28.812119, 21.589024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.053276, 29.484438, 21.648876>,  <33.301216, 28.747223, 21.708340>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.053276, 29.484438, 21.648876> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.752201, 29.258724, 21.784546>,  <32.571556, 29.123297, 21.865948>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.752201, 29.258724, 21.784546>,  <33.053276, 29.484438, 21.648876>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.752201, 29.258724, 21.784546> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091434, 0.599771, 0.794930,
		-0.651993, 0.567326, -0.503038,
		-0.752692, -0.564284, 0.339173,
		32.526394, 29.089439, 21.886297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.636425, 29.983419, 21.979218>,  <33.053276, 29.484438, 21.648876>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.636425, 29.983419, 21.979218> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.497715, 29.629824, 22.104635>,  <32.414490, 29.417665, 22.179886>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.497715, 29.629824, 22.104635>,  <32.636425, 29.983419, 21.979218>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.497715, 29.629824, 22.104635> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357438, 0.433607, 0.827178,
		-0.867172, 0.174770, -0.466335,
		-0.346772, -0.883991, 0.313542,
		32.393684, 29.364626, 22.198698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.947493, 30.146793, 22.206701>,  <32.636425, 29.983419, 21.979218>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.947493, 30.146793, 22.206701> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.081890, 29.823294, 22.399796>,  <32.162529, 29.629194, 22.515652>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.081890, 29.823294, 22.399796>,  <31.947493, 30.146793, 22.206701>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.081890, 29.823294, 22.399796> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336850, 0.375449, 0.863464,
		-0.879567, -0.452730, -0.146278,
		0.335996, -0.808748, 0.482735,
		32.182690, 29.580669, 22.544617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.391186, 30.029284, 22.660795>,  <31.947493, 30.146793, 22.206701>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.391186, 30.029284, 22.660795> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.673553, 29.788090, 22.809437>,  <31.842974, 29.643373, 22.898621>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.673553, 29.788090, 22.809437>,  <31.391186, 30.029284, 22.660795>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.673553, 29.788090, 22.809437> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182522, 0.352062, 0.918007,
		-0.684374, -0.715862, 0.138468,
		0.705917, -0.602987, 0.371603,
		31.885328, 29.607193, 22.920918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.199001, 29.878309, 23.343121>,  <31.391186, 30.029284, 22.660795>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.199001, 29.878309, 23.343121> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.589287, 29.791845, 23.357285>,  <31.823458, 29.739967, 23.365782>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.589287, 29.791845, 23.357285>,  <31.199001, 29.878309, 23.343121>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.589287, 29.791845, 23.357285> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036386, 0.319350, 0.946938,
		-0.216000, -0.922653, 0.319460,
		0.975715, -0.216162, 0.035408,
		31.882002, 29.726997, 23.367907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<35.676674, 30.876978, 17.123899> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.960148, 30.646835, 17.287233>,  <36.130230, 30.508751, 17.385233>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.960148, 30.646835, 17.287233>,  <35.676674, 30.876978, 17.123899>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.960148, 30.646835, 17.287233> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419569, 0.121613, 0.899540,
		-0.567213, -0.808813, -0.155216,
		0.708683, -0.575354, 0.408333,
		36.172752, 30.474230, 17.409733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.334042, 30.701471, 17.750250>,  <35.676674, 30.876978, 17.123899>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.334042, 30.701471, 17.750250> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.715103, 30.602337, 17.820705>,  <35.943741, 30.542856, 17.862980>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.715103, 30.602337, 17.820705>,  <35.334042, 30.701471, 17.750250>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.715103, 30.602337, 17.820705> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178772, 0.012035, 0.983817,
		-0.245944, -0.968727, -0.032841,
		0.952655, -0.247835, 0.176141,
		36.000900, 30.527987, 17.873549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.365978, 30.121498, 18.310097>,  <35.334042, 30.701471, 17.750250>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.365978, 30.121498, 18.310097> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.717358, 30.312109, 18.324272>,  <35.928185, 30.426476, 18.332777>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.717358, 30.312109, 18.324272>,  <35.365978, 30.121498, 18.310097>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.717358, 30.312109, 18.324272> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091393, 0.094754, 0.991297,
		0.469025, -0.874037, 0.126787,
		0.878444, 0.476530, 0.035439,
		35.980892, 30.455069, 18.334904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.789738, 29.882286, 18.883053>,  <35.365978, 30.121498, 18.310097>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.789738, 29.882286, 18.883053> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.946033, 30.236019, 18.780853>,  <36.039810, 30.448259, 18.719534>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.946033, 30.236019, 18.780853>,  <35.789738, 29.882286, 18.883053>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.946033, 30.236019, 18.780853> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015941, 0.284025, 0.958684,
		0.920365, -0.370519, 0.125076,
		0.390736, 0.884333, -0.255500,
		36.063255, 30.501320, 18.704203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.123253, 30.124805, 19.504364>,  <35.789738, 29.882286, 18.883053>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.123253, 30.124805, 19.504364> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.128086, 30.457411, 19.282215>,  <36.130985, 30.656975, 19.148926>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.128086, 30.457411, 19.282215>,  <36.123253, 30.124805, 19.504364>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.128086, 30.457411, 19.282215> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146942, 0.550860, 0.821560,
		0.989071, 0.071680, 0.128841,
		0.012084, 0.831514, -0.555372,
		36.131710, 30.706865, 19.115602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.584110, 30.690525, 19.906046>,  <36.123253, 30.124805, 19.504364>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.584110, 30.690525, 19.906046> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.314472, 30.857868, 19.662550>,  <36.152687, 30.958275, 19.516453>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.314472, 30.857868, 19.662550>,  <36.584110, 30.690525, 19.906046>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.314472, 30.857868, 19.662550> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280107, 0.617792, 0.734760,
		0.683469, 0.665814, -0.299268,
		-0.674099, 0.418359, -0.608741,
		36.112244, 30.983376, 19.479927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.808002, 31.418289, 19.998247>,  <36.584110, 30.690525, 19.906046>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.808002, 31.418289, 19.998247> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.424744, 31.390900, 19.887056>,  <36.194790, 31.374466, 19.820341>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.424744, 31.390900, 19.887056>,  <36.808002, 31.418289, 19.998247>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.424744, 31.390900, 19.887056> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252957, 0.657185, 0.710015,
		0.134067, 0.750613, -0.646998,
		-0.958143, -0.068473, -0.277979,
		36.137302, 31.370358, 19.803663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.562958, 32.055145, 19.997143>,  <36.808002, 31.418289, 19.998247>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.562958, 32.055145, 19.997143> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.221504, 31.847580, 20.015219>,  <36.016632, 31.723040, 20.026064>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.221504, 31.847580, 20.015219>,  <36.562958, 32.055145, 19.997143>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.221504, 31.847580, 20.015219> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333185, 0.610658, 0.718390,
		-0.400378, 0.598184, -0.694171,
		-0.853631, -0.518915, 0.045188,
		35.965416, 31.691906, 20.028774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.028736, 32.596142, 20.055454>,  <36.562958, 32.055145, 19.997143>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.028736, 32.596142, 20.055454> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.860237, 32.254410, 20.177223>,  <35.759136, 32.049370, 20.250284>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.860237, 32.254410, 20.177223>,  <36.028736, 32.596142, 20.055454>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.860237, 32.254410, 20.177223> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454815, 0.489390, 0.744070,
		-0.784661, 0.174983, -0.594716,
		-0.421248, -0.854329, 0.304420,
		35.733864, 31.998112, 20.268549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.235954, 32.662758, 20.149057>,  <36.028736, 32.596142, 20.055454>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.235954, 32.662758, 20.149057> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.390614, 32.373352, 20.377804>,  <35.483410, 32.199707, 20.515053>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.390614, 32.373352, 20.377804>,  <35.235954, 32.662758, 20.149057>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.390614, 32.373352, 20.377804> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417098, 0.415858, 0.808140,
		-0.822517, -0.550989, -0.140987,
		0.386646, -0.723514, 0.571867,
		35.506607, 32.156300, 20.549364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.681770, 32.460796, 20.562468>,  <35.235954, 32.662758, 20.149057>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.681770, 32.460796, 20.562468> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.009727, 32.343399, 20.759096>,  <35.206501, 32.272961, 20.877073>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.009727, 32.343399, 20.759096>,  <34.681770, 32.460796, 20.562468>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.009727, 32.343399, 20.759096> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410822, 0.296412, 0.862186,
		-0.398752, -0.908846, 0.122453,
		0.819891, -0.293492, 0.491569,
		35.255695, 32.255352, 20.906567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.419670, 32.090218, 21.212063>,  <34.681770, 32.460796, 20.562468>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.419670, 32.090218, 21.212063> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.798237, 32.199413, 21.281086>,  <35.025375, 32.264931, 21.322500>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.798237, 32.199413, 21.281086>,  <34.419670, 32.090218, 21.212063>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.798237, 32.199413, 21.281086> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290228, 0.484542, 0.825219,
		0.141666, -0.831080, 0.537807,
		0.946414, 0.272992, 0.172559,
		35.082161, 32.281311, 21.332853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.821434, 31.760384, 21.087757>,  <34.419670, 32.090218, 21.212063>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.821434, 31.760384, 21.087757> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.466541, 31.942450, 21.057697>,  <33.253605, 32.051689, 21.039661>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.466541, 31.942450, 21.057697>,  <33.821434, 31.760384, 21.087757>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.466541, 31.942450, 21.057697> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080062, -0.312344, -0.946589,
		-0.454330, -0.833825, 0.313562,
		-0.887229, 0.455168, -0.075149,
		33.200371, 32.078999, 21.035152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.304409, 31.243324, 20.923847>,  <33.821434, 31.760384, 21.087757>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.304409, 31.243324, 20.923847> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.163250, 31.596926, 20.801207>,  <33.078556, 31.809086, 20.727623>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.163250, 31.596926, 20.801207>,  <33.304409, 31.243324, 20.923847>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.163250, 31.596926, 20.801207> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034751, -0.339839, -0.939841,
		-0.935017, -0.321011, 0.150648,
		-0.352896, 0.884003, -0.306600,
		33.057381, 31.862127, 20.709227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.796879, 31.042904, 20.432030>,  <33.304409, 31.243324, 20.923847>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.796879, 31.042904, 20.432030> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.856800, 31.433060, 20.367317>,  <32.892754, 31.667152, 20.328489>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.856800, 31.433060, 20.367317>,  <32.796879, 31.042904, 20.432030>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.856800, 31.433060, 20.367317> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083313, -0.175499, -0.980948,
		-0.985199, 0.133474, -0.107554,
		0.149807, 0.975389, -0.161781,
		32.901741, 31.725677, 20.318783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.177414, 31.394331, 20.061104>,  <32.796879, 31.042904, 20.432030>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.177414, 31.394331, 20.061104> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.522423, 31.576073, 19.972006>,  <32.729427, 31.685118, 19.918547>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.522423, 31.576073, 19.972006>,  <32.177414, 31.394331, 20.061104>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.522423, 31.576073, 19.972006> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054702, -0.353885, -0.933688,
		-0.503052, 0.817512, -0.280380,
		0.862523, 0.454356, -0.222743,
		32.781181, 31.712379, 19.905184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.133793, 31.590801, 19.390024>,  <32.177414, 31.394331, 20.061104>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.133793, 31.590801, 19.390024> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.526577, 31.611485, 19.462786>,  <32.762245, 31.623894, 19.506443>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.526577, 31.611485, 19.462786>,  <32.133793, 31.590801, 19.390024>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.526577, 31.611485, 19.462786> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185284, -0.455574, -0.870702,
		0.037849, 0.888695, -0.456934,
		0.981956, 0.051707, 0.181904,
		32.821163, 31.626997, 19.517357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.506439, 31.925592, 18.795677>,  <32.133793, 31.590801, 19.390024>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.506439, 31.925592, 18.795677> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.784817, 31.713921, 18.989845>,  <32.951843, 31.586918, 19.106346>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.784817, 31.713921, 18.989845>,  <32.506439, 31.925592, 18.795677>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.784817, 31.713921, 18.989845> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167057, -0.538125, -0.826144,
		0.698397, 0.656040, -0.286099,
		0.695941, -0.529181, 0.485421,
		32.993599, 31.555166, 19.135471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.125126, 31.904209, 18.294676>,  <32.506439, 31.925592, 18.795677>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.125126, 31.904209, 18.294676> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.137718, 31.608007, 18.563202>,  <33.145271, 31.430286, 18.724318>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.137718, 31.608007, 18.563202>,  <33.125126, 31.904209, 18.294676>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.137718, 31.608007, 18.563202> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136688, -0.662149, -0.736801,
		0.990114, 0.114955, 0.080374,
		0.031479, -0.740503, 0.671316,
		33.147163, 31.385857, 18.764597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.678532, 31.541513, 18.059727>,  <33.125126, 31.904209, 18.294676>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.678532, 31.541513, 18.059727> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.496017, 31.271084, 18.291149>,  <33.386509, 31.108826, 18.430002>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.496017, 31.271084, 18.291149>,  <33.678532, 31.541513, 18.059727>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.496017, 31.271084, 18.291149> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289544, -0.727607, -0.621894,
		0.841406, -0.116246, 0.527752,
		-0.456289, -0.676073, 0.578555,
		33.359131, 31.068262, 18.464716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.249195, 31.060055, 18.042934>,  <33.678532, 31.541513, 18.059727>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.249195, 31.060055, 18.042934> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.917500, 30.888821, 18.186659>,  <33.718483, 30.786079, 18.272894>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.917500, 30.888821, 18.186659>,  <34.249195, 31.060055, 18.042934>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.917500, 30.888821, 18.186659> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210297, -0.834643, -0.509064,
		0.517818, -0.346575, 0.782145,
		-0.829240, -0.428085, 0.359309,
		33.668728, 30.760395, 18.294451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.535061, 30.472105, 18.303751>,  <34.249195, 31.060055, 18.042934>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.535061, 30.472105, 18.303751> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.149033, 30.415035, 18.215851>,  <33.917416, 30.380793, 18.163111>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.149033, 30.415035, 18.215851>,  <34.535061, 30.472105, 18.303751>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.149033, 30.415035, 18.215851> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224746, -0.881896, -0.414427,
		-0.134668, -0.449337, 0.883154,
		-0.965067, -0.142675, -0.219750,
		33.859512, 30.372232, 18.149925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.473473, 29.859402, 18.548666>,  <34.535061, 30.472105, 18.303751>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.473473, 29.859402, 18.548666> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.187054, 29.919945, 18.276089>,  <34.015202, 29.956270, 18.112543>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.187054, 29.919945, 18.276089>,  <34.473473, 29.859402, 18.548666>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.187054, 29.919945, 18.276089> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219060, -0.878172, -0.425238,
		-0.662786, -0.453769, 0.595659,
		-0.716050, 0.151357, -0.681442,
		33.972240, 29.965351, 18.071655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.175518, 29.272957, 18.473389>,  <34.473473, 29.859402, 18.548666>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.175518, 29.272957, 18.473389> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.016598, 29.427362, 18.140368>,  <33.921246, 29.520006, 17.940556>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.016598, 29.427362, 18.140368>,  <34.175518, 29.272957, 18.473389>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.016598, 29.427362, 18.140368> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272632, -0.816618, -0.508730,
		-0.876255, -0.429099, 0.219204,
		-0.397301, 0.386016, -0.832552,
		33.897408, 29.543167, 17.890602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.538128, 28.880470, 18.230907>,  <34.175518, 29.272957, 18.473389>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.538128, 28.880470, 18.230907> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.723461, 29.060223, 17.925390>,  <33.834660, 29.168074, 17.742079>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.723461, 29.060223, 17.925390>,  <33.538128, 28.880470, 18.230907>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.723461, 29.060223, 17.925390> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180196, -0.891658, -0.415301,
		-0.867672, 0.054789, -0.494109,
		0.463331, 0.449381, -0.763794,
		33.862461, 29.195038, 17.696253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.286259, 28.269266, 18.003292>,  <33.538128, 28.880470, 18.230907>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.286259, 28.269266, 18.003292> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.960941, 28.046404, 18.070391>,  <32.765751, 27.912687, 18.110649>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.960941, 28.046404, 18.070391>,  <33.286259, 28.269266, 18.003292>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.960941, 28.046404, 18.070391> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150936, 0.480438, 0.863943,
		-0.561940, 0.677317, -0.474831,
		-0.813290, -0.557153, 0.167746,
		32.716953, 27.879257, 18.120714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.687233, 28.731903, 18.191879>,  <33.286259, 28.269266, 18.003292>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.687233, 28.731903, 18.191879> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.582260, 28.381554, 18.353853>,  <32.519276, 28.171345, 18.451038>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.582260, 28.381554, 18.353853>,  <32.687233, 28.731903, 18.191879>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.582260, 28.381554, 18.353853> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199597, 0.459842, 0.865278,
		-0.944082, 0.146253, -0.295499,
		-0.262432, -0.875874, 0.404937,
		32.503532, 28.118792, 18.475334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.140957, 28.831875, 18.573090>,  <32.687233, 28.731903, 18.191879>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.140957, 28.831875, 18.573090> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.293919, 28.496367, 18.728125>,  <32.385696, 28.295061, 18.821146>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.293919, 28.496367, 18.728125>,  <32.140957, 28.831875, 18.573090>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.293919, 28.496367, 18.728125> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183169, 0.342331, 0.921552,
		-0.905657, -0.423402, -0.022727,
		0.382407, -0.838773, 0.387589,
		32.408642, 28.244734, 18.844400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.776581, 28.836325, 19.146379>,  <32.140957, 28.831875, 18.573090>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.776581, 28.836325, 19.146379> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.064590, 28.566586, 19.211887>,  <32.237396, 28.404743, 19.251192>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.064590, 28.566586, 19.211887>,  <31.776581, 28.836325, 19.146379>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.064590, 28.566586, 19.211887> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079428, 0.154360, 0.984817,
		-0.689387, -0.722101, 0.057582,
		0.720026, -0.674346, 0.163769,
		32.280598, 28.364283, 19.261019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.466974, 28.387812, 19.694515>,  <31.776581, 28.836325, 19.146379>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.466974, 28.387812, 19.694515> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.863411, 28.334650, 19.697929>,  <32.101273, 28.302753, 19.699978>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.863411, 28.334650, 19.697929>,  <31.466974, 28.387812, 19.694515>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.863411, 28.334650, 19.697929> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001847, 0.077802, 0.996967,
		-0.133167, -0.988070, 0.077354,
		0.991092, -0.132906, 0.008536,
		32.160740, 28.294779, 19.700491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.615835, 27.991667, 20.270290>,  <31.466974, 28.387812, 19.694515>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.615835, 27.991667, 20.270290> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.972849, 28.149021, 20.182081>,  <32.187057, 28.243433, 20.129156>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.972849, 28.149021, 20.182081>,  <31.615835, 27.991667, 20.270290>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.972849, 28.149021, 20.182081> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190615, 0.114089, 0.975013,
		0.408714, -0.912268, 0.026843,
		0.892535, 0.393384, -0.220521,
		32.240608, 28.267036, 20.115925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.137291, 27.654545, 20.648548>,  <31.615835, 27.991667, 20.270290>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.137291, 27.654545, 20.648548> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.296703, 28.009022, 20.554031>,  <32.392353, 28.221708, 20.497322>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.296703, 28.009022, 20.554031>,  <32.137291, 27.654545, 20.648548>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.296703, 28.009022, 20.554031> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142994, 0.194447, 0.970434,
		0.905938, -0.420538, -0.049227,
		0.398533, 0.886193, -0.236291,
		32.416264, 28.274879, 20.483145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.763813, 27.743902, 21.118238>,  <32.137291, 27.654545, 20.648548>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.763813, 27.743902, 21.118238> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.638344, 28.102293, 20.992483>,  <32.563065, 28.317327, 20.917030>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.638344, 28.102293, 20.992483>,  <32.763813, 27.743902, 21.118238>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.638344, 28.102293, 20.992483> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204407, 0.387048, 0.899117,
		0.927270, 0.217762, -0.304549,
		-0.313668, 0.895976, -0.314386,
		32.544243, 28.371086, 20.898167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.540306, 27.471586, 20.832348>,  <32.763813, 27.743902, 21.118238>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.540306, 27.471586, 20.832348> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.907944, 27.362349, 20.945972>,  <34.128525, 27.296806, 21.014147>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.907944, 27.362349, 20.945972>,  <33.540306, 27.471586, 20.832348>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.907944, 27.362349, 20.945972> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208661, -0.274219, -0.938757,
		0.334263, 0.922076, -0.195048,
		0.919091, -0.273093, 0.284063,
		34.183670, 27.280420, 21.031191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.110474, 27.857660, 20.526207>,  <33.540306, 27.471586, 20.832348>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.110474, 27.857660, 20.526207> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.230228, 27.484465, 20.606104>,  <34.302082, 27.260548, 20.654041>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.230228, 27.484465, 20.606104>,  <34.110474, 27.857660, 20.526207>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.230228, 27.484465, 20.606104> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091784, -0.180211, -0.979336,
		0.949705, 0.311538, 0.031680,
		0.299392, -0.932989, 0.199742,
		34.320045, 27.204569, 20.666027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.596687, 27.700769, 19.972588>,  <34.110474, 27.857660, 20.526207>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.596687, 27.700769, 19.972588> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.543045, 27.351751, 20.160494>,  <34.510860, 27.142340, 20.273237>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.543045, 27.351751, 20.160494>,  <34.596687, 27.700769, 19.972588>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.543045, 27.351751, 20.160494> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365480, -0.484178, -0.794982,
		0.921108, 0.065079, 0.383829,
		-0.134106, -0.872546, 0.469765,
		34.502815, 27.089987, 20.301424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.182560, 27.386429, 19.864605>,  <34.596687, 27.700769, 19.972588>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.182560, 27.386429, 19.864605> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.934975, 27.081078, 19.938513>,  <34.786423, 26.897867, 19.982859>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.934975, 27.081078, 19.938513>,  <35.182560, 27.386429, 19.864605>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.934975, 27.081078, 19.938513> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336343, -0.470212, -0.815950,
		0.709759, -0.442897, 0.547801,
		-0.618964, -0.763376, 0.184772,
		34.749287, 26.852064, 19.993944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.634014, 26.819822, 19.795805>,  <35.182560, 27.386429, 19.864605>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.634014, 26.819822, 19.795805> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.247677, 26.726704, 19.750267>,  <35.015877, 26.670832, 19.722944>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.247677, 26.726704, 19.750267>,  <35.634014, 26.819822, 19.795805>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.247677, 26.726704, 19.750267> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188853, -0.331469, -0.924372,
		0.177456, -0.914294, 0.364110,
		-0.965838, -0.232799, -0.113846,
		34.957924, 26.656864, 19.716114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.635075, 26.173697, 19.709927>,  <35.634014, 26.819822, 19.795805>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.635075, 26.173697, 19.709927> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.282196, 26.274761, 19.550982>,  <35.070469, 26.335400, 19.455614>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.282196, 26.274761, 19.550982>,  <35.635075, 26.173697, 19.709927>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.282196, 26.274761, 19.550982> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344811, -0.228065, -0.910545,
		-0.320687, -0.940291, 0.114076,
		-0.882193, 0.252665, -0.397361,
		35.017536, 26.350561, 19.431774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.436008, 25.671507, 19.319221>,  <35.635075, 26.173697, 19.709927>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.436008, 25.671507, 19.319221> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.234062, 25.990162, 19.186270>,  <35.112896, 26.181355, 19.106499>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.234062, 25.990162, 19.186270>,  <35.436008, 25.671507, 19.319221>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.234062, 25.990162, 19.186270> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199377, -0.267027, -0.942839,
		-0.839857, -0.542276, -0.024019,
		-0.504865, 0.796639, -0.332382,
		35.082603, 26.229153, 19.086555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.226318, 25.382608, 18.702427>,  <35.436008, 25.671507, 19.319221>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.226318, 25.382608, 18.702427> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.134655, 25.770126, 18.664642>,  <35.079659, 26.002638, 18.641972>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.134655, 25.770126, 18.664642>,  <35.226318, 25.382608, 18.702427>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.134655, 25.770126, 18.664642> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098992, -0.073346, -0.992382,
		-0.968343, -0.236764, -0.079095,
		-0.229159, 0.968795, -0.094462,
		35.065907, 26.060764, 18.636303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.674408, 25.403257, 18.131807>,  <35.226318, 25.382608, 18.702427>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.674408, 25.403257, 18.131807> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.864845, 25.752625, 18.172749>,  <34.979107, 25.962244, 18.197313>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.864845, 25.752625, 18.172749>,  <34.674408, 25.403257, 18.131807>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.864845, 25.752625, 18.172749> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063348, 0.082026, -0.994615,
		-0.877108, 0.480017, -0.016276,
		0.476097, 0.873416, 0.102354,
		35.007675, 26.014648, 18.203455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<35.091320, 33.317425, 33.038902> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.208073, 33.561085, 32.743946>,  <35.278122, 33.707279, 32.566971>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.208073, 33.561085, 32.743946>,  <35.091320, 33.317425, 33.038902>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.208073, 33.561085, 32.743946> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177309, -0.723139, -0.667557,
		-0.939877, 0.325591, -0.103061,
		0.291878, 0.609148, -0.737392,
		35.295635, 33.743828, 32.522728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.545654, 33.412647, 32.474922>,  <35.091320, 33.317425, 33.038902>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.545654, 33.412647, 32.474922> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.915493, 33.473560, 32.335247>,  <35.137398, 33.510109, 32.251442>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.915493, 33.473560, 32.335247>,  <34.545654, 33.412647, 32.474922>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.915493, 33.473560, 32.335247> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246521, -0.459633, -0.853209,
		-0.290430, 0.874955, -0.387433,
		0.924596, 0.152287, -0.349186,
		35.192871, 33.519245, 32.230492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.485039, 33.716324, 31.835718>,  <34.545654, 33.412647, 32.474922>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.485039, 33.716324, 31.835718> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.866566, 33.599316, 31.808390>,  <35.095482, 33.529110, 31.791992>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.866566, 33.599316, 31.808390>,  <34.485039, 33.716324, 31.835718>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.866566, 33.599316, 31.808390> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198334, -0.442447, -0.874588,
		0.225604, 0.847747, -0.480030,
		0.953817, -0.292516, -0.068319,
		35.152710, 33.511562, 31.787893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.703335, 33.957050, 31.075836>,  <34.485039, 33.716324, 31.835718>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.703335, 33.957050, 31.075836> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.921535, 33.655945, 31.223223>,  <35.052456, 33.475281, 31.311655>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.921535, 33.655945, 31.223223>,  <34.703335, 33.957050, 31.075836>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.921535, 33.655945, 31.223223> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041863, -0.463566, -0.885073,
		0.837061, 0.467387, -0.284391,
		0.545505, -0.752766, 0.368467,
		35.085186, 33.430115, 31.333763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.123360, 33.754246, 30.546921>,  <34.703335, 33.957050, 31.075836>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.123360, 33.754246, 30.546921> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.188717, 33.423859, 30.762730>,  <35.227932, 33.225628, 30.892216>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.188717, 33.423859, 30.762730>,  <35.123360, 33.754246, 30.546921>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.188717, 33.423859, 30.762730> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293258, -0.481491, -0.825933,
		0.941967, 0.293172, 0.163548,
		0.163394, -0.825964, 0.539524,
		35.237736, 33.176071, 30.924587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.726418, 33.336304, 30.206942>,  <35.123360, 33.754246, 30.546921>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.726418, 33.336304, 30.206942> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.573269, 33.078339, 30.471516>,  <35.481380, 32.923557, 30.630260>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.573269, 33.078339, 30.471516>,  <35.726418, 33.336304, 30.206942>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.573269, 33.078339, 30.471516> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041909, -0.703128, -0.709827,
		0.922851, -0.299492, 0.242179,
		-0.382870, -0.644915, 0.661434,
		35.458408, 32.884865, 30.669947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.195438, 32.682869, 30.244551>,  <35.726418, 33.336304, 30.206942>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.195438, 32.682869, 30.244551> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.819153, 32.601788, 30.353344>,  <35.593384, 32.553139, 30.418621>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.819153, 32.601788, 30.353344>,  <36.195438, 32.682869, 30.244551>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.819153, 32.601788, 30.353344> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010056, -0.784797, -0.619671,
		0.339061, -0.585666, 0.736228,
		-0.940711, -0.202703, 0.271984,
		35.536942, 32.540977, 30.434938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.180557, 31.967081, 30.341789>,  <36.195438, 32.682869, 30.244551>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.180557, 31.967081, 30.341789> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.793980, 32.057159, 30.292360>,  <35.562035, 32.111206, 30.262703>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.793980, 32.057159, 30.292360>,  <36.180557, 31.967081, 30.341789>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.793980, 32.057159, 30.292360> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066946, -0.685255, -0.725220,
		-0.247998, -0.692613, 0.677337,
		-0.966445, 0.225198, -0.123574,
		35.504047, 32.124718, 30.255287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.922726, 31.352901, 30.235180>,  <36.180557, 31.967081, 30.341789>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.922726, 31.352901, 30.235180> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.647022, 31.601984, 30.087042>,  <35.481598, 31.751434, 29.998159>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.647022, 31.601984, 30.087042>,  <35.922726, 31.352901, 30.235180>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.647022, 31.601984, 30.087042> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273964, -0.697220, -0.662440,
		-0.670714, -0.355137, 0.651169,
		-0.689265, 0.622705, -0.370341,
		35.440243, 31.788795, 29.975939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.215088, 30.917673, 30.177214>,  <35.922726, 31.352901, 30.235180>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.215088, 30.917673, 30.177214> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.162926, 31.238802, 29.944500>,  <35.131630, 31.431479, 29.804873>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.162926, 31.238802, 29.944500>,  <35.215088, 30.917673, 30.177214>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.162926, 31.238802, 29.944500> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416471, -0.576869, -0.702691,
		-0.899748, 0.150661, 0.409579,
		-0.130405, 0.802822, -0.581783,
		35.123806, 31.479649, 29.769966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.557770, 30.878548, 29.873285>,  <35.215088, 30.917673, 30.177214>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.557770, 30.878548, 29.873285> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.798489, 31.060913, 29.610992>,  <34.942921, 31.170332, 29.453617>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.798489, 31.060913, 29.610992>,  <34.557770, 30.878548, 29.873285>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.798489, 31.060913, 29.610992> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310369, -0.623011, -0.718003,
		-0.735875, 0.635611, -0.233425,
		0.601797, 0.455913, -0.655732,
		34.979027, 31.197687, 29.414272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.097912, 31.097097, 29.271580>,  <34.557770, 30.878548, 29.873285>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.097912, 31.097097, 29.271580> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.468842, 31.139820, 29.128103>,  <34.691399, 31.165455, 29.042017>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.468842, 31.139820, 29.128103>,  <34.097912, 31.097097, 29.271580>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.468842, 31.139820, 29.128103> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242929, -0.557285, -0.793989,
		-0.284698, 0.823423, -0.490838,
		0.927325, 0.106808, -0.358692,
		34.747040, 31.171862, 29.020496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.820004, 31.674040, 28.982367>,  <34.097912, 31.097097, 29.271580>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.820004, 31.674040, 28.982367> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.423508, 31.696877, 28.934734>,  <33.185608, 31.710579, 28.906155>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.423508, 31.696877, 28.934734>,  <33.820004, 31.674040, 28.982367>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.423508, 31.696877, 28.934734> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062058, 0.594570, 0.801646,
		0.116568, 0.802015, -0.585819,
		-0.991242, 0.057091, -0.119079,
		33.126137, 31.714005, 28.899010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.606304, 32.333244, 29.082357>,  <33.820004, 31.674040, 28.982367>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.606304, 32.333244, 29.082357> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.259960, 32.138073, 29.126566>,  <33.052155, 32.020969, 29.153091>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.259960, 32.138073, 29.126566>,  <33.606304, 32.333244, 29.082357>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.259960, 32.138073, 29.126566> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254919, 0.620378, 0.741719,
		-0.430472, 0.614049, -0.661542,
		-0.865858, -0.487929, 0.110523,
		33.000202, 31.991693, 29.159723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.299938, 32.785870, 29.365774>,  <33.606304, 32.333244, 29.082357>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.299938, 32.785870, 29.365774> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.050125, 32.479641, 29.427567>,  <32.900238, 32.295906, 29.464642>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.050125, 32.479641, 29.427567>,  <33.299938, 32.785870, 29.365774>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.050125, 32.479641, 29.427567> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465314, 0.523601, 0.713670,
		-0.627249, 0.373829, -0.683236,
		-0.624533, -0.765568, 0.154480,
		32.862766, 32.249969, 29.473911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.599762, 33.046341, 29.352514>,  <33.299938, 32.785870, 29.365774>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.599762, 33.046341, 29.352514> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.588402, 32.699341, 29.551168>,  <32.581585, 32.491142, 29.670361>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.588402, 32.699341, 29.551168>,  <32.599762, 33.046341, 29.352514>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.588402, 32.699341, 29.551168> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338715, 0.475794, 0.811722,
		-0.940460, -0.145161, -0.307348,
		-0.028404, -0.867496, 0.496633,
		32.579880, 32.439091, 29.700159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.945417, 33.025383, 29.512911>,  <32.599762, 33.046341, 29.352514>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.945417, 33.025383, 29.512911> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.134148, 32.785778, 29.771696>,  <32.247387, 32.642014, 29.926968>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.134148, 32.785778, 29.771696>,  <31.945417, 33.025383, 29.512911>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.134148, 32.785778, 29.771696> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283358, 0.591831, 0.754616,
		-0.834917, -0.539371, 0.109507,
		0.471828, -0.599012, 0.646965,
		32.275696, 32.606075, 29.965786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.455778, 32.910816, 30.030445>,  <31.945417, 33.025383, 29.512911>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.455778, 32.910816, 30.030445> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.790310, 32.800102, 30.219738>,  <31.991028, 32.733673, 30.333313>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.790310, 32.800102, 30.219738>,  <31.455778, 32.910816, 30.030445>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.790310, 32.800102, 30.219738> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339310, 0.416673, 0.843357,
		-0.430608, -0.865896, 0.254561,
		0.836328, -0.276782, 0.473230,
		32.041210, 32.717068, 30.361708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.198874, 32.580605, 30.655052>,  <31.455778, 32.910816, 30.030445>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.198874, 32.580605, 30.655052> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.581215, 32.688766, 30.701057>,  <31.810619, 32.753662, 30.728661>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.581215, 32.688766, 30.701057>,  <31.198874, 32.580605, 30.655052>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.581215, 32.688766, 30.701057> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263129, 0.613426, 0.744629,
		0.130795, -0.742019, 0.657495,
		0.955853, 0.270400, 0.115014,
		31.867971, 32.769886, 30.735561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.482679, 32.474140, 31.441668>,  <31.198874, 32.580605, 30.655052>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.482679, 32.474140, 31.441668> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.705938, 32.752224, 31.260490>,  <31.839893, 32.919075, 31.151785>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.705938, 32.752224, 31.260490>,  <31.482679, 32.474140, 31.441668>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.705938, 32.752224, 31.260490> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208782, 0.645990, 0.734239,
		0.803045, -0.315248, 0.505705,
		0.558148, 0.695209, -0.452941,
		31.873383, 32.960785, 31.124609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.718300, 32.926838, 32.026634>,  <31.482679, 32.474140, 31.441668>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.718300, 32.926838, 32.026634> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.846869, 33.136448, 31.711143>,  <31.924009, 33.262215, 31.521851>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.846869, 33.136448, 31.711143>,  <31.718300, 32.926838, 32.026634>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.846869, 33.136448, 31.711143> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097178, 0.846776, 0.522997,
		0.941937, -0.091455, 0.323095,
		0.321420, 0.524028, -0.788723,
		31.943295, 33.293655, 31.474527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.216621, 33.242043, 32.268276>,  <31.718300, 32.926838, 32.026634>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.216621, 33.242043, 32.268276> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.128101, 33.465336, 31.948425>,  <32.074989, 33.599312, 31.756516>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.128101, 33.465336, 31.948425>,  <32.216621, 33.242043, 32.268276>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.128101, 33.465336, 31.948425> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004162, 0.819409, 0.573193,
		0.975198, 0.130174, -0.179009,
		-0.221297, 0.558232, -0.799628,
		32.061714, 33.632805, 31.708536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.613022, 33.947792, 32.305626>,  <32.216621, 33.242043, 32.268276>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.613022, 33.947792, 32.305626> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.308987, 34.027859, 32.058338>,  <32.126564, 34.075897, 31.909966>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.308987, 34.027859, 32.058338>,  <32.613022, 33.947792, 32.305626>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.308987, 34.027859, 32.058338> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190375, 0.841037, 0.506374,
		0.621304, 0.502583, -0.601158,
		-0.760091, 0.200167, -0.618219,
		32.080959, 34.087910, 31.872873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.659615, 34.729702, 32.083950>,  <32.613022, 33.947792, 32.305626>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.659615, 34.729702, 32.083950> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.280682, 34.632381, 32.000656>,  <32.053322, 34.573990, 31.950680>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.280682, 34.632381, 32.000656>,  <32.659615, 34.729702, 32.083950>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.280682, 34.632381, 32.000656> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317015, 0.804540, 0.502212,
		0.045345, 0.541777, -0.839298,
		-0.947336, -0.243297, -0.208233,
		31.996481, 34.559391, 31.938187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.372166, 35.330402, 31.885456>,  <32.659615, 34.729702, 32.083950>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.372166, 35.330402, 31.885456> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.073471, 35.090084, 31.999594>,  <31.894253, 34.945892, 32.068077>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.073471, 35.090084, 31.999594>,  <32.372166, 35.330402, 31.885456>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.073471, 35.090084, 31.999594> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466359, 0.778844, 0.419417,
		-0.474225, 0.180122, -0.861781,
		-0.746740, -0.600797, 0.285346,
		31.849449, 34.909843, 32.085197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.722912, 35.473480, 31.544041>,  <32.372166, 35.330402, 31.885456>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.722912, 35.473480, 31.544041> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.646103, 35.337399, 31.912256>,  <31.600018, 35.255749, 32.133186>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.646103, 35.337399, 31.912256>,  <31.722912, 35.473480, 31.544041>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.646103, 35.337399, 31.912256> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.577173, 0.797773, 0.174440,
		-0.793725, -0.497813, -0.349546,
		-0.192020, -0.340206, 0.920537,
		31.588497, 35.235336, 32.188416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.111151, 35.353222, 30.978043>,  <31.722912, 35.473480, 31.544041>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.111151, 35.353222, 30.978043> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.113503, 35.751526, 30.941341>,  <31.114914, 35.990509, 30.919321>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.113503, 35.751526, 30.941341>,  <31.111151, 35.353222, 30.978043>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.113503, 35.751526, 30.941341> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016848, -0.091840, -0.995631,
		-0.999841, 0.004307, -0.017316,
		0.005878, 0.995764, -0.091752,
		31.115267, 36.050255, 30.913816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.689278, 35.533817, 30.468025>,  <31.111151, 35.353222, 30.978043>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.689278, 35.533817, 30.468025> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.950109, 35.836742, 30.482296>,  <31.106609, 36.018497, 30.490858>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.950109, 35.836742, 30.482296>,  <30.689278, 35.533817, 30.468025>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.950109, 35.836742, 30.482296> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218864, -0.142982, -0.965222,
		-0.725873, 0.637209, -0.258984,
		0.652079, 0.757311, 0.035675,
		31.145733, 36.063934, 30.492998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.508736, 35.978546, 29.902470>,  <30.689278, 35.533817, 30.468025>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.508736, 35.978546, 29.902470> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.895828, 36.007324, 29.999067>,  <31.128084, 36.024593, 30.057026>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.895828, 36.007324, 29.999067>,  <30.508736, 35.978546, 29.902470>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.895828, 36.007324, 29.999067> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250295, -0.163723, -0.954226,
		-0.029116, 0.983879, -0.176448,
		0.967732, 0.071947, 0.241493,
		31.186148, 36.028908, 30.071516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.804073, 36.367023, 29.365278>,  <30.508736, 35.978546, 29.902470>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.804073, 36.367023, 29.365278> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.093504, 36.176628, 29.565228>,  <31.267162, 36.062393, 29.685198>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.093504, 36.176628, 29.565228>,  <30.804073, 36.367023, 29.365278>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.093504, 36.176628, 29.565228> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459321, -0.208537, -0.863444,
		0.515229, 0.854371, 0.067737,
		0.723576, -0.475985, 0.499875,
		31.310577, 36.033833, 29.715191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.476757, 36.530632, 29.087212>,  <30.804073, 36.367023, 29.365278>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.476757, 36.530632, 29.087212> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.531279, 36.177055, 29.266125>,  <31.563992, 35.964909, 29.373472>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.531279, 36.177055, 29.266125>,  <31.476757, 36.530632, 29.087212>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.531279, 36.177055, 29.266125> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385627, -0.368542, -0.845854,
		0.912531, 0.287777, 0.290639,
		0.136305, -0.883946, 0.447281,
		31.572170, 35.911873, 29.400309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.176876, 36.375813, 28.928753>,  <31.476757, 36.530632, 29.087212>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.176876, 36.375813, 28.928753> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.971680, 36.048901, 29.033747>,  <31.848562, 35.852753, 29.096743>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.971680, 36.048901, 29.033747>,  <32.176876, 36.375813, 28.928753>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.971680, 36.048901, 29.033747> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505351, -0.534716, -0.677273,
		0.693876, -0.214786, 0.687316,
		-0.512988, -0.817279, 0.262484,
		31.817783, 35.803719, 29.112492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.586887, 35.843353, 28.928724>,  <32.176876, 36.375813, 28.928753>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.586887, 35.843353, 28.928724> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.243599, 35.638752, 28.911652>,  <32.037624, 35.515991, 28.901407>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.243599, 35.638752, 28.911652>,  <32.586887, 35.843353, 28.928724>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.243599, 35.638752, 28.911652> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383577, -0.583878, -0.715510,
		0.341065, -0.630437, 0.697297,
		-0.858220, -0.511503, -0.042681,
		31.986134, 35.485302, 28.898848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.751289, 34.991348, 28.928837>,  <32.586887, 35.843353, 28.928724>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.751289, 34.991348, 28.928837> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.386326, 35.015129, 28.766863>,  <32.167347, 35.029396, 28.669678>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.386326, 35.015129, 28.766863>,  <32.751289, 34.991348, 28.928837>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.386326, 35.015129, 28.766863> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309569, -0.546951, -0.777825,
		-0.267720, -0.835052, 0.480640,
		-0.912411, 0.059448, -0.404935,
		32.112602, 35.032963, 28.645382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.580376, 34.275352, 28.709558>,  <32.751289, 34.991348, 28.928837>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.580376, 34.275352, 28.709558> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.324066, 34.509838, 28.511261>,  <32.170280, 34.650528, 28.392282>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.324066, 34.509838, 28.511261>,  <32.580376, 34.275352, 28.709558>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.324066, 34.509838, 28.511261> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051820, -0.611229, -0.789756,
		-0.765977, -0.531746, 0.361283,
		-0.640776, 0.586212, -0.495742,
		32.131832, 34.685703, 28.362537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.135998, 33.882446, 28.279772>,  <32.580376, 34.275352, 28.709558>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.135998, 33.882446, 28.279772> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.056320, 34.230671, 28.099794>,  <32.008514, 34.439606, 27.991808>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.056320, 34.230671, 28.099794>,  <32.135998, 33.882446, 28.279772>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.056320, 34.230671, 28.099794> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417877, -0.339852, -0.842543,
		-0.886398, -0.355850, -0.296090,
		-0.199192, 0.870558, -0.449946,
		31.996563, 34.491837, 27.964811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.849215, 33.653233, 27.712107>,  <32.135998, 33.882446, 28.279772>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.849215, 33.653233, 27.712107> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.996130, 34.018116, 27.639475>,  <32.084278, 34.237045, 27.595896>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.996130, 34.018116, 27.639475>,  <31.849215, 33.653233, 27.712107>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.996130, 34.018116, 27.639475> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324565, -0.308653, -0.894087,
		-0.871641, 0.269453, -0.409436,
		0.367288, 0.912211, -0.181579,
		32.106316, 34.291779, 27.585001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.305132, 34.033836, 27.126087>,  <31.849215, 33.653233, 27.712107>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.305132, 34.033836, 27.126087> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.664686, 34.208225, 27.143648>,  <31.880419, 34.312859, 27.154184>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.664686, 34.208225, 27.143648>,  <31.305132, 34.033836, 27.126087>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.664686, 34.208225, 27.143648> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152567, -0.217473, -0.964069,
		-0.410764, 0.873287, -0.261999,
		0.898886, 0.435977, 0.043905,
		31.934353, 34.339020, 27.156820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.299887, 34.411255, 26.484537>,  <31.305132, 34.033836, 27.126087>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.299887, 34.411255, 26.484537> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.676619, 34.339958, 26.598509>,  <31.902658, 34.297180, 26.666891>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.676619, 34.339958, 26.598509>,  <31.299887, 34.411255, 26.484537>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.676619, 34.339958, 26.598509> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205378, -0.365839, -0.907734,
		0.266037, 0.913450, -0.307951,
		0.941830, -0.178245, 0.284929,
		31.959167, 34.286484, 26.683989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.562925, 34.501846, 25.870386>,  <31.299887, 34.411255, 26.484537>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.562925, 34.501846, 25.870386> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.846022, 34.333111, 26.097067>,  <32.015881, 34.231869, 26.233076>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.846022, 34.333111, 26.097067>,  <31.562925, 34.501846, 25.870386>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.846022, 34.333111, 26.097067> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313090, -0.531799, -0.786870,
		0.633305, 0.734330, -0.244303,
		0.707743, -0.421840, 0.566702,
		32.058346, 34.206558, 26.267078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.215122, 34.699001, 25.569029>,  <31.562925, 34.501846, 25.870386>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.215122, 34.699001, 25.569029> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.253670, 34.356987, 25.772846>,  <32.276798, 34.151779, 25.895136>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.253670, 34.356987, 25.772846>,  <32.215122, 34.699001, 25.569029>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.253670, 34.356987, 25.772846> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374322, -0.443213, -0.814521,
		0.922278, 0.269227, 0.277345,
		0.096368, -0.855031, 0.509543,
		32.282581, 34.100479, 25.925709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.827137, 34.338230, 25.279615>,  <32.215122, 34.699001, 25.569029>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.827137, 34.338230, 25.279615> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.672703, 34.031696, 25.485010>,  <32.580040, 33.847778, 25.608248>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.672703, 34.031696, 25.485010>,  <32.827137, 34.338230, 25.279615>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.672703, 34.031696, 25.485010> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273378, -0.626697, -0.729736,
		0.881022, -0.141367, 0.451459,
		-0.386089, -0.766333, 0.513488,
		32.556877, 33.801796, 25.639057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.325348, 33.880676, 25.214096>,  <32.827137, 34.338230, 25.279615>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.325348, 33.880676, 25.214096> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.991924, 33.680058, 25.306725>,  <32.791870, 33.559689, 25.362301>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.991924, 33.680058, 25.306725>,  <33.325348, 33.880676, 25.214096>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.991924, 33.680058, 25.306725> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093233, -0.540904, -0.835901,
		0.544499, -0.675187, 0.497638,
		-0.833564, -0.501544, 0.231572,
		32.741856, 33.529594, 25.376196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.562260, 33.103706, 25.281191>,  <33.325348, 33.880676, 25.214096>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.562260, 33.103706, 25.281191> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.167431, 33.117523, 25.218592>,  <32.930534, 33.125813, 25.181032>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.167431, 33.117523, 25.218592>,  <33.562260, 33.103706, 25.281191>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.167431, 33.117523, 25.218592> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080240, -0.738766, -0.669168,
		-0.138731, -0.673076, 0.726445,
		-0.987074, 0.034545, -0.156498,
		32.871307, 33.127888, 25.171642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.333405, 32.355072, 25.222359>,  <33.562260, 33.103706, 25.281191>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.333405, 32.355072, 25.222359> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.050335, 32.576111, 25.046251>,  <32.880493, 32.708733, 24.940586>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.050335, 32.576111, 25.046251>,  <33.333405, 32.355072, 25.222359>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.050335, 32.576111, 25.046251> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025874, -0.642986, -0.765441,
		-0.706068, -0.530289, 0.469321,
		-0.707672, 0.552596, -0.440271,
		32.838032, 32.741890, 24.914171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.964680, 31.879705, 24.645546>,  <33.333405, 32.355072, 25.222359>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.964680, 31.879705, 24.645546> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.819019, 32.240406, 24.552389>,  <32.731621, 32.456825, 24.496494>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.819019, 32.240406, 24.552389>,  <32.964680, 31.879705, 24.645546>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.819019, 32.240406, 24.552389> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040892, -0.265303, -0.963297,
		-0.930440, -0.341266, 0.133486,
		-0.364155, 0.901749, -0.232894,
		32.709774, 32.510929, 24.482521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.563606, 31.783155, 24.005461>,  <32.964680, 31.879705, 24.645546>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.563606, 31.783155, 24.005461> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.619900, 32.179173, 24.004259>,  <32.653675, 32.416782, 24.003538>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.619900, 32.179173, 24.004259>,  <32.563606, 31.783155, 24.005461>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.619900, 32.179173, 24.004259> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232243, 0.030063, -0.972193,
		-0.962423, 0.137516, 0.234162,
		0.140732, 0.990043, -0.003004,
		32.662121, 32.476185, 24.003357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.977997, 32.130394, 23.678337>,  <32.563606, 31.783155, 24.005461>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.977997, 32.130394, 23.678337> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.273296, 32.399593, 23.660175>,  <32.450478, 32.561111, 23.649279>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.273296, 32.399593, 23.660175>,  <31.977997, 32.130394, 23.678337>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.273296, 32.399593, 23.660175> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212491, 0.168155, -0.962586,
		-0.640182, 0.720277, 0.267146,
		0.738251, 0.672997, -0.045402,
		32.494770, 32.601494, 23.646555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.689375, 32.758987, 23.341246>,  <31.977997, 32.130394, 23.678337>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.689375, 32.758987, 23.341246> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.087631, 32.755756, 23.304071>,  <32.326584, 32.753819, 23.281767>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.087631, 32.755756, 23.304071>,  <31.689375, 32.758987, 23.341246>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.087631, 32.755756, 23.304071> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090439, 0.160601, -0.982867,
		0.022866, 0.986986, 0.159170,
		0.995639, -0.008080, -0.092934,
		32.386322, 32.753334, 23.276192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.751291, 33.234581, 22.773346>,  <31.689375, 32.758987, 23.341246>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.751291, 33.234581, 22.773346> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.087643, 33.022556, 22.817085>,  <32.289452, 32.895340, 22.843328>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.087643, 33.022556, 22.817085>,  <31.751291, 33.234581, 22.773346>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.087643, 33.022556, 22.817085> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170856, 0.068265, -0.982928,
		0.513552, 0.845204, 0.147968,
		0.840876, -0.530066, 0.109350,
		32.339905, 32.863537, 22.849890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.392757, 33.601425, 22.347845>,  <31.751291, 33.234581, 22.773346>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.392757, 33.601425, 22.347845> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.507462, 33.224308, 22.415857>,  <32.576286, 32.998039, 22.456665>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.507462, 33.224308, 22.415857>,  <32.392757, 33.601425, 22.347845>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.507462, 33.224308, 22.415857> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274794, -0.089077, -0.957368,
		0.917745, 0.321261, 0.233530,
		0.286763, -0.942792, 0.170031,
		32.593491, 32.941471, 22.466867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.076141, 33.530323, 22.037750>,  <32.392757, 33.601425, 22.347845>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.076141, 33.530323, 22.037750> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.938450, 33.155933, 22.067293>,  <32.855835, 32.931297, 22.085020>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.938450, 33.155933, 22.067293>,  <33.076141, 33.530323, 22.037750>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.938450, 33.155933, 22.067293> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356320, -0.203016, -0.912042,
		0.868644, -0.287634, 0.403391,
		-0.344230, -0.935976, 0.073859,
		32.835182, 32.875141, 22.089451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.552383, 33.083691, 21.730545>,  <33.076141, 33.530323, 22.037750>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.552383, 33.083691, 21.730545> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.252625, 32.819244, 21.745132>,  <33.072769, 32.660576, 21.753885>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.252625, 32.819244, 21.745132>,  <33.552383, 33.083691, 21.730545>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.252625, 32.819244, 21.745132> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273230, -0.358951, -0.892468,
		0.603113, -0.658850, 0.449634,
		-0.749400, -0.661113, 0.036470,
		33.027805, 32.620911, 21.756073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.865154, 32.477432, 21.564573>,  <33.552383, 33.083691, 21.730545>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.865154, 32.477432, 21.564573> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.471188, 32.443581, 21.504213>,  <33.234806, 32.423271, 21.467997>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.471188, 32.443581, 21.504213>,  <33.865154, 32.477432, 21.564573>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.471188, 32.443581, 21.504213> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173001, -0.473112, -0.863850,
		0.001713, -0.876928, 0.480618,
		-0.984920, -0.084627, -0.150899,
		33.175713, 32.418194, 21.458944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.372425, 32.081665, 21.996002>,  <33.865154, 32.477432, 21.564573>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.372425, 32.081665, 21.996002> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.733364, 32.238972, 21.925447>,  <34.949928, 32.333355, 21.883114>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.733364, 32.238972, 21.925447>,  <34.372425, 32.081665, 21.996002>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.733364, 32.238972, 21.925447> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096291, 0.582831, 0.806868,
		0.420117, -0.711090, 0.563784,
		0.902347, 0.393267, -0.176386,
		35.004066, 32.356953, 21.872532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.705383, 32.101669, 22.628553>,  <34.372425, 32.081665, 21.996002>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.705383, 32.101669, 22.628553> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.894505, 32.374336, 22.405203>,  <35.007977, 32.537937, 22.271193>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.894505, 32.374336, 22.405203>,  <34.705383, 32.101669, 22.628553>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.894505, 32.374336, 22.405203> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032593, 0.619715, 0.784150,
		0.880564, -0.388949, 0.270787,
		0.472806, 0.681668, -0.558375,
		35.036346, 32.578838, 22.237690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.343609, 32.231068, 22.916212>,  <34.705383, 32.101669, 22.628553>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.343609, 32.231068, 22.916212> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.275505, 32.555126, 22.691828>,  <35.234642, 32.749561, 22.557198>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.275505, 32.555126, 22.691828>,  <35.343609, 32.231068, 22.916212>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.275505, 32.555126, 22.691828> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056573, 0.576368, 0.815230,
		0.983774, 0.107067, -0.143965,
		-0.170260, 0.810146, -0.560959,
		35.224426, 32.798168, 22.523540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.861183, 32.714066, 23.163324>,  <35.343609, 32.231068, 22.916212>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.861183, 32.714066, 23.163324> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.581615, 32.934692, 22.981211>,  <35.413876, 33.067070, 22.871943>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.581615, 32.934692, 22.981211>,  <35.861183, 32.714066, 23.163324>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.581615, 32.934692, 22.981211> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199569, 0.761705, 0.616423,
		0.686792, 0.339970, -0.642447,
		-0.698920, 0.551566, -0.455285,
		35.371941, 33.100163, 22.844625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.204174, 33.414051, 23.056728>,  <35.861183, 32.714066, 23.163324>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.204174, 33.414051, 23.056728> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.807884, 33.459881, 23.027487>,  <35.570110, 33.487381, 23.009941>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.807884, 33.459881, 23.027487>,  <36.204174, 33.414051, 23.056728>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.807884, 33.459881, 23.027487> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035106, 0.735367, 0.676759,
		0.131300, 0.667913, -0.732566,
		-0.990721, 0.114576, -0.073106,
		35.510670, 33.494255, 23.005554>
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
