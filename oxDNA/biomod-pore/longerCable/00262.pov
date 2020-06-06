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
	<24.260899, 34.725487, 34.760509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.345428, 34.997196, 35.041630>,  <24.396147, 35.160221, 35.210304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.345428, 34.997196, 35.041630>,  <24.260899, 34.725487, 34.760509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.345428, 34.997196, 35.041630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.774578, 0.322162, -0.544280,
		-0.596131, 0.659394, -0.458069,
		0.211322, 0.679273, 0.702803,
		24.408825, 35.200977, 35.252472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.277742, 35.405502, 34.404945>,  <24.260899, 34.725487, 34.760509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.277742, 35.405502, 34.404945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.492275, 35.348522, 34.737705>,  <24.620995, 35.314335, 34.937363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.492275, 35.348522, 34.737705>,  <24.277742, 35.405502, 34.404945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.492275, 35.348522, 34.737705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.822285, 0.310371, -0.476988,
		-0.190250, 0.939882, 0.283598,
		0.536333, -0.142451, 0.831898,
		24.653175, 35.305786, 34.987274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.063498, 35.319149, 34.508457>,  <24.277742, 35.405502, 34.404945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.063498, 35.319149, 34.508457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.040493, 34.928463, 34.425777>,  <25.026690, 34.694054, 34.376171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.040493, 34.928463, 34.425777>,  <25.063498, 35.319149, 34.508457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.040493, 34.928463, 34.425777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060158, 0.203272, -0.977273,
		0.996531, -0.068640, 0.047066,
		-0.057512, -0.976714, -0.206696,
		25.023239, 34.635448, 34.363770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.676271, 35.076302, 34.071659>,  <25.063498, 35.319149, 34.508457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.676271, 35.076302, 34.071659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.363428, 34.832222, 34.021111>,  <25.175722, 34.685776, 33.990784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.363428, 34.832222, 34.021111>,  <25.676271, 35.076302, 34.071659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.363428, 34.832222, 34.021111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123464, 0.047030, -0.991234,
		0.610791, -0.790853, 0.038555,
		-0.782107, -0.610197, -0.126368,
		25.128796, 34.649162, 33.983200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.816404, 34.483147, 33.635895>,  <25.676271, 35.076302, 34.071659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.816404, 34.483147, 33.635895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.425413, 34.559452, 33.599785>,  <25.190819, 34.605236, 33.578117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.425413, 34.559452, 33.599785>,  <25.816404, 34.483147, 33.635895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.425413, 34.559452, 33.599785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103821, 0.062228, -0.992647,
		-0.183740, -0.979662, -0.080632,
		-0.977477, 0.190760, -0.090276,
		25.132170, 34.616680, 33.572701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.411325, 33.987854, 33.229027>,  <25.816404, 34.483147, 33.635895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.411325, 33.987854, 33.229027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.260555, 34.355576, 33.183754>,  <25.170094, 34.576210, 33.156590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.260555, 34.355576, 33.183754>,  <25.411325, 33.987854, 33.229027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.260555, 34.355576, 33.183754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185055, -0.044987, -0.981698,
		-0.907570, -0.390969, -0.153165,
		-0.376923, 0.919304, -0.113180,
		25.147478, 34.631367, 33.149799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.991371, 33.885063, 32.616745>,  <25.411325, 33.987854, 33.229027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.991371, 33.885063, 32.616745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.060062, 34.273415, 32.683567>,  <25.101276, 34.506424, 32.723660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.060062, 34.273415, 32.683567>,  <24.991371, 33.885063, 32.616745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.060062, 34.273415, 32.683567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166519, 0.138532, -0.976258,
		-0.970969, 0.195468, -0.137880,
		0.171726, 0.970877, 0.167060,
		25.111580, 34.564678, 32.733685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.588352, 34.346214, 32.122070>,  <24.991371, 33.885063, 32.616745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.588352, 34.346214, 32.122070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.911175, 34.549828, 32.241760>,  <25.104868, 34.671997, 32.313576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.911175, 34.549828, 32.241760>,  <24.588352, 34.346214, 32.122070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.911175, 34.549828, 32.241760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175033, 0.277745, -0.944575,
		-0.563933, 0.814702, 0.135058,
		0.807058, 0.509037, 0.299229,
		25.153292, 34.702538, 32.331528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.470278, 35.018524, 31.909649>,  <24.588352, 34.346214, 32.122070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.470278, 35.018524, 31.909649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.860891, 35.022129, 31.995716>,  <25.095261, 35.024292, 32.047356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.860891, 35.022129, 31.995716>,  <24.470278, 35.018524, 31.909649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.860891, 35.022129, 31.995716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185333, 0.473692, -0.860969,
		-0.109680, 0.880644, 0.460907,
		0.976536, 0.009010, 0.215167,
		25.153852, 35.024834, 32.060265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.795784, 35.670639, 31.812918>,  <24.470278, 35.018524, 31.909649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.795784, 35.670639, 31.812918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.102308, 35.413670, 31.809973>,  <25.286222, 35.259487, 31.808207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.102308, 35.413670, 31.809973>,  <24.795784, 35.670639, 31.812918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.102308, 35.413670, 31.809973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326018, 0.398712, -0.857170,
		0.553604, 0.654460, 0.514980,
		0.766312, -0.642426, -0.007363,
		25.332203, 35.220943, 31.807764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.446859, 36.131584, 31.682264>,  <24.795784, 35.670639, 31.812918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.446859, 36.131584, 31.682264> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.543005, 35.761150, 31.565926>,  <25.600693, 35.538891, 31.496122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.543005, 35.761150, 31.565926>,  <25.446859, 36.131584, 31.682264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.543005, 35.761150, 31.565926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495107, 0.374690, -0.783885,
		0.834922, 0.044418, 0.548573,
		0.240364, -0.926085, -0.290845,
		25.615114, 35.483326, 31.478672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.184505, 36.090942, 31.632057>,  <25.446859, 36.131584, 31.682264>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.184505, 36.090942, 31.632057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.024008, 35.827297, 31.377632>,  <25.927710, 35.669109, 31.224977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.024008, 35.827297, 31.377632>,  <26.184505, 36.090942, 31.632057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.024008, 35.827297, 31.377632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387456, 0.507097, -0.769891,
		0.829988, -0.555361, 0.051906,
		-0.401246, -0.659111, -0.636062,
		25.903633, 35.629562, 31.186813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.684317, 35.688892, 31.180307>,  <26.184505, 36.090942, 31.632057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.684317, 35.688892, 31.180307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.324183, 35.768661, 31.025581>,  <26.108101, 35.816521, 30.932747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.324183, 35.768661, 31.025581>,  <26.684317, 35.688892, 31.180307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.324183, 35.768661, 31.025581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432611, 0.506798, -0.745657,
		0.047338, -0.838682, -0.542560,
		-0.900337, 0.199420, -0.386814,
		26.054081, 35.828487, 30.909536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.449362, 36.006725, 30.687992>,  <26.684317, 35.688892, 31.180307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.449362, 36.006725, 30.687992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.488186, 35.645710, 30.520182>,  <26.511480, 35.429100, 30.419495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.488186, 35.645710, 30.520182>,  <26.449362, 36.006725, 30.687992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.488186, 35.645710, 30.520182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.513789, -0.406445, 0.755528,
		-0.852408, 0.142218, -0.503164,
		0.097059, -0.902538, -0.419527,
		26.517303, 35.374947, 30.394323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.748671, 35.584911, 30.446428>,  <26.449362, 36.006725, 30.687992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.748671, 35.584911, 30.446428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.030703, 35.339420, 30.588530>,  <26.199921, 35.192127, 30.673790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.030703, 35.339420, 30.588530>,  <25.748671, 35.584911, 30.446428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.030703, 35.339420, 30.588530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.626817, -0.305119, 0.716940,
		-0.331614, -0.728174, -0.599829,
		0.705076, -0.613731, 0.355250,
		26.242226, 35.155304, 30.695107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.614431, 34.759510, 30.547352>,  <25.748671, 35.584911, 30.446428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.614431, 34.759510, 30.547352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.841751, 34.951481, 30.814697>,  <25.978144, 35.066662, 30.975103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.841751, 34.951481, 30.814697>,  <25.614431, 34.759510, 30.547352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.841751, 34.951481, 30.814697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.522582, -0.416903, 0.743707,
		0.635566, -0.771922, 0.013874,
		0.568300, 0.479925, 0.668362,
		26.012241, 35.095459, 31.015205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.921295, 34.303066, 31.129421>,  <25.614431, 34.759510, 30.547352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.921295, 34.303066, 31.129421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.828196, 34.673725, 31.247511>,  <25.772337, 34.896122, 31.318365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.828196, 34.673725, 31.247511>,  <25.921295, 34.303066, 31.129421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.828196, 34.673725, 31.247511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483923, -0.373658, 0.791327,
		0.843592, 0.041314, 0.535393,
		-0.232747, 0.926646, 0.295222,
		25.758371, 34.951717, 31.336077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.265409, 34.341988, 31.715414>,  <25.921295, 34.303066, 31.129421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.265409, 34.341988, 31.715414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.974789, 34.616058, 31.736006>,  <25.800415, 34.780502, 31.748360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.974789, 34.616058, 31.736006>,  <26.265409, 34.341988, 31.715414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.974789, 34.616058, 31.736006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099194, -0.178728, 0.978886,
		0.679912, 0.706107, 0.197821,
		-0.726554, 0.685179, 0.051478,
		25.756823, 34.821613, 31.751450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.427080, 34.836449, 32.249012>,  <26.265409, 34.341988, 31.715414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.427080, 34.836449, 32.249012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.034815, 34.902870, 32.207584>,  <25.799456, 34.942722, 32.182728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.034815, 34.902870, 32.207584>,  <26.427080, 34.836449, 32.249012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.034815, 34.902870, 32.207584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117861, -0.078618, 0.989913,
		0.156240, 0.982977, 0.096669,
		-0.980662, 0.166057, -0.103571,
		25.740616, 34.952686, 32.176514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.216150, 35.314854, 32.762585>,  <26.427080, 34.836449, 32.249012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.216150, 35.314854, 32.762585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.913883, 35.086185, 32.634735>,  <25.732523, 34.948986, 32.558025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.913883, 35.086185, 32.634735>,  <26.216150, 35.314854, 32.762585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.913883, 35.086185, 32.634735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222554, -0.234852, 0.946211,
		-0.615983, 0.786155, 0.050243,
		-0.755668, -0.571668, -0.319627,
		25.687183, 34.914684, 32.538849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.693447, 35.495361, 33.172848>,  <26.216150, 35.314854, 32.762585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.693447, 35.495361, 33.172848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.644949, 35.127995, 33.022217>,  <25.615850, 34.907574, 32.931839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.644949, 35.127995, 33.022217>,  <25.693447, 35.495361, 33.172848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.644949, 35.127995, 33.022217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095015, -0.366895, 0.925397,
		-0.988065, 0.147981, -0.042778,
		-0.121246, -0.918417, -0.376577,
		25.608576, 34.852470, 32.909245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.184885, 35.593243, 32.537132>,  <25.693447, 35.495361, 33.172848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.184885, 35.593243, 32.537132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.883663, 35.332916, 32.498451>,  <24.702930, 35.176720, 32.475243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.883663, 35.332916, 32.498451>,  <25.184885, 35.593243, 32.537132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.883663, 35.332916, 32.498451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175068, -0.339872, 0.924034,
		-0.634241, 0.678918, 0.369878,
		-0.753054, -0.650814, -0.096704,
		24.657747, 35.137672, 32.469440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.684618, 35.646027, 33.127071>,  <25.184885, 35.593243, 32.537132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.684618, 35.646027, 33.127071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.681150, 35.279003, 32.968067>,  <24.679070, 35.058788, 32.872665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.681150, 35.279003, 32.968067>,  <24.684618, 35.646027, 33.127071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.681150, 35.279003, 32.968067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007572, -0.397575, 0.917539,
		-0.999934, 0.004943, 0.010394,
		-0.008667, -0.917556, -0.397511,
		24.678551, 35.003735, 32.848812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.072681, 35.221470, 33.361610>,  <24.684618, 35.646027, 33.127071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.072681, 35.221470, 33.361610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.392778, 34.996609, 33.278099>,  <24.584837, 34.861691, 33.227993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.392778, 34.996609, 33.278099>,  <24.072681, 35.221470, 33.361610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.392778, 34.996609, 33.278099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050979, -0.283126, 0.957727,
		-0.597506, -0.777057, -0.197912,
		0.800242, -0.562158, -0.208783,
		24.632851, 34.827961, 33.215466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.846098, 34.656841, 33.540195>,  <24.072681, 35.221470, 33.361610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.846098, 34.656841, 33.540195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.245373, 34.633293, 33.545254>,  <24.484938, 34.619164, 33.548286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.245373, 34.633293, 33.545254>,  <23.846098, 34.656841, 33.540195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.245373, 34.633293, 33.545254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033064, -0.360452, 0.932192,
		-0.050319, -0.930919, -0.361744,
		0.998186, -0.058868, 0.012643,
		24.544828, 34.615631, 33.549046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.003166, 33.965149, 33.777477>,  <23.846098, 34.656841, 33.540195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.003166, 33.965149, 33.777477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.337944, 34.177593, 33.830307>,  <24.538811, 34.305058, 33.862007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.337944, 34.177593, 33.830307>,  <24.003166, 33.965149, 33.777477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.337944, 34.177593, 33.830307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112606, -0.403283, 0.908121,
		0.535576, -0.745175, -0.397332,
		0.836946, 0.531109, 0.132078,
		24.589027, 34.336926, 33.869930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.607622, 33.483643, 33.993298>,  <24.003166, 33.965149, 33.777477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.607622, 33.483643, 33.993298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.748285, 33.839035, 34.111237>,  <24.832684, 34.052269, 34.181999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.748285, 33.839035, 34.111237>,  <24.607622, 33.483643, 33.993298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.748285, 33.839035, 34.111237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300920, -0.405538, 0.863126,
		0.886444, -0.214800, -0.409973,
		0.351659, 0.888482, 0.294849,
		24.853783, 34.105579, 34.199692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.409126, 33.497253, 34.007061>,  <24.607622, 33.483643, 33.993298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.409126, 33.497253, 34.007061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.202717, 33.715698, 34.271023>,  <25.078871, 33.846767, 34.429401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.202717, 33.715698, 34.271023>,  <25.409126, 33.497253, 34.007061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.202717, 33.715698, 34.271023> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364513, -0.557161, 0.746124,
		0.775145, 0.625562, 0.088442,
		-0.516024, 0.546116, 0.659906,
		25.047909, 33.879532, 34.468994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.922066, 33.602787, 34.605003>,  <25.409126, 33.497253, 34.007061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.922066, 33.602787, 34.605003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.538980, 33.635548, 34.715332>,  <25.309130, 33.655205, 34.781528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.538980, 33.635548, 34.715332>,  <25.922066, 33.602787, 34.605003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.538980, 33.635548, 34.715332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201182, -0.494705, 0.845454,
		0.205697, 0.865193, 0.457307,
		-0.957713, 0.081905, 0.275820,
		25.251667, 33.660118, 34.798077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.726593, 33.818493, 35.360073>,  <25.922066, 33.602787, 34.605003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.726593, 33.818493, 35.360073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.429047, 33.586994, 35.226376>,  <25.250519, 33.448093, 35.146156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.429047, 33.586994, 35.226376>,  <25.726593, 33.818493, 35.360073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.429047, 33.586994, 35.226376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062009, -0.557721, 0.827709,
		-0.665446, 0.594979, 0.450757,
		-0.743866, -0.578747, -0.334240,
		25.205887, 33.413372, 35.126102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.211555, 33.743107, 35.844742>,  <25.726593, 33.818493, 35.360073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.211555, 33.743107, 35.844742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.255842, 33.434128, 35.594601>,  <25.282413, 33.248741, 35.444515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.255842, 33.434128, 35.594601>,  <25.211555, 33.743107, 35.844742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.255842, 33.434128, 35.594601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046834, -0.624466, 0.779646,
		-0.992748, -0.115606, -0.032961,
		0.110715, -0.772449, -0.625352,
		25.289057, 33.202393, 35.406994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.650007, 33.225559, 35.913807>,  <25.211555, 33.743107, 35.844742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.650007, 33.225559, 35.913807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.982872, 33.045197, 35.784695>,  <25.182590, 32.936977, 35.707226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.982872, 33.045197, 35.784695>,  <24.650007, 33.225559, 35.913807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.982872, 33.045197, 35.784695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096867, -0.691327, 0.716019,
		-0.546008, -0.564576, -0.618974,
		0.832161, -0.450911, -0.322781,
		25.232521, 32.909924, 35.687859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.480585, 32.513638, 35.823540>,  <24.650007, 33.225559, 35.913807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.480585, 32.513638, 35.823540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.876053, 32.552311, 35.869469>,  <25.113333, 32.575516, 35.897026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.876053, 32.552311, 35.869469>,  <24.480585, 32.513638, 35.823540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.876053, 32.552311, 35.869469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029008, -0.627457, 0.778111,
		0.147278, -0.772625, -0.617543,
		0.988670, 0.096685, 0.114823,
		25.172653, 32.581318, 35.903915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.734425, 31.830500, 35.876011>,  <24.480585, 32.513638, 35.823540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.734425, 31.830500, 35.876011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.995852, 32.079853, 36.047703>,  <25.152708, 32.229465, 36.150719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.995852, 32.079853, 36.047703>,  <24.734425, 31.830500, 35.876011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.995852, 32.079853, 36.047703> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065199, -0.518641, 0.852503,
		0.754054, -0.585155, -0.298323,
		0.653569, 0.623382, 0.429234,
		25.191923, 32.266869, 36.176472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.573446, 31.116142, 35.847809>,  <24.734425, 31.830500, 35.876011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.573446, 31.116142, 35.847809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.568153, 30.734432, 35.728355>,  <24.564978, 30.505405, 35.656681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.568153, 30.734432, 35.728355>,  <24.573446, 31.116142, 35.847809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.568153, 30.734432, 35.728355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358405, 0.274291, -0.892362,
		0.933472, -0.118840, 0.338388,
		-0.013232, -0.954275, -0.298636,
		24.564184, 30.448149, 35.638763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.330488, 30.849012, 35.635441>,  <24.573446, 31.116142, 35.847809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.330488, 30.849012, 35.635441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.051401, 30.639757, 35.439678>,  <24.883949, 30.514204, 35.322220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.051401, 30.639757, 35.439678>,  <25.330488, 30.849012, 35.635441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.051401, 30.639757, 35.439678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466432, 0.186775, -0.864613,
		0.543721, -0.831530, 0.113692,
		-0.697717, -0.523138, -0.489406,
		24.842087, 30.482815, 35.292858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.244909, 31.352551, 36.167374>,  <25.330488, 30.849012, 35.635441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.244909, 31.352551, 36.167374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.290230, 31.697489, 36.364765>,  <25.317423, 31.904451, 36.483200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.290230, 31.697489, 36.364765>,  <25.244909, 31.352551, 36.167374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.290230, 31.697489, 36.364765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273657, -0.450384, 0.849862,
		0.955131, -0.231334, 0.184958,
		0.113301, 0.862345, 0.493482,
		25.324221, 31.956192, 36.512810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.564774, 31.208229, 36.840588>,  <25.244909, 31.352551, 36.167374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.564774, 31.208229, 36.840588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.387564, 31.563757, 36.887466>,  <25.281239, 31.777073, 36.915592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.387564, 31.563757, 36.887466>,  <25.564774, 31.208229, 36.840588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.387564, 31.563757, 36.887466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324435, -0.280809, 0.903265,
		0.835747, 0.362146, 0.412769,
		-0.443023, 0.888818, 0.117193,
		25.254658, 31.830402, 36.922623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.758669, 31.483549, 37.515404>,  <25.564774, 31.208229, 36.840588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.758669, 31.483549, 37.515404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.425562, 31.673923, 37.402279>,  <25.225697, 31.788149, 37.334404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.425562, 31.673923, 37.402279>,  <25.758669, 31.483549, 37.515404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.425562, 31.673923, 37.402279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434067, -0.244240, 0.867140,
		0.343630, 0.844886, 0.409984,
		-0.832769, 0.475936, -0.282809,
		25.175732, 31.816704, 37.317436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.562174, 31.659140, 38.127918>,  <25.758669, 31.483549, 37.515404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.562174, 31.659140, 38.127918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.218098, 31.643488, 37.924530>,  <25.011652, 31.634096, 37.802498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.218098, 31.643488, 37.924530>,  <25.562174, 31.659140, 38.127918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.218098, 31.643488, 37.924530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472367, -0.314628, 0.823334,
		-0.192196, 0.948408, 0.252157,
		-0.860192, -0.039131, -0.508467,
		24.960039, 31.631748, 37.771992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.930119, 31.122095, 38.207500>,  <25.562174, 31.659140, 38.127918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.930119, 31.122095, 38.207500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.704527, 31.434723, 38.314140>,  <24.569172, 31.622299, 38.378124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.704527, 31.434723, 38.314140>,  <24.930119, 31.122095, 38.207500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.704527, 31.434723, 38.314140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087901, 0.377826, -0.921695,
		-0.821096, -0.496384, -0.281787,
		-0.563981, 0.781569, 0.266599,
		24.535332, 31.669193, 38.394119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.308632, 31.130630, 37.754005>,  <24.930119, 31.122095, 38.207500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.308632, 31.130630, 37.754005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.464190, 31.471926, 37.893002>,  <24.557524, 31.676702, 37.976398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.464190, 31.471926, 37.893002>,  <24.308632, 31.130630, 37.754005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.464190, 31.471926, 37.893002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101512, 0.335202, -0.936662,
		-0.915674, 0.399535, 0.043744,
		0.388892, 0.853236, 0.347493,
		24.580856, 31.727896, 37.997250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.004391, 31.667837, 37.261662>,  <24.308632, 31.130630, 37.754005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.004391, 31.667837, 37.261662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.313051, 31.817205, 37.467617>,  <24.498247, 31.906826, 37.591190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.313051, 31.817205, 37.467617>,  <24.004391, 31.667837, 37.261662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.313051, 31.817205, 37.467617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391596, 0.358971, -0.847226,
		-0.501202, 0.855392, 0.130770,
		0.771653, 0.373423, 0.514885,
		24.544548, 31.929232, 37.622082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.086525, 32.455452, 37.077003>,  <24.004391, 31.667837, 37.261662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.086525, 32.455452, 37.077003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.427700, 32.273148, 37.178810>,  <24.632406, 32.163765, 37.239895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.427700, 32.273148, 37.178810>,  <24.086525, 32.455452, 37.077003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.427700, 32.273148, 37.178810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445148, 0.380385, -0.810648,
		0.272648, 0.804729, 0.527327,
		0.852940, -0.455760, 0.254512,
		24.683582, 32.136421, 37.255165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.617136, 32.939766, 37.037216>,  <24.086525, 32.455452, 37.077003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.617136, 32.939766, 37.037216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.837027, 32.606201, 37.017647>,  <24.968962, 32.406063, 37.005905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.837027, 32.606201, 37.017647>,  <24.617136, 32.939766, 37.037216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.837027, 32.606201, 37.017647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512079, 0.382682, -0.768980,
		0.659982, 0.397677, 0.637398,
		0.549727, -0.833911, -0.048921,
		25.001945, 32.356030, 37.002972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.386515, 33.159969, 37.042358>,  <24.617136, 32.939766, 37.037216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.386515, 33.159969, 37.042358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.349150, 32.795609, 36.881599>,  <25.326731, 32.576992, 36.785145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.349150, 32.795609, 36.881599>,  <25.386515, 33.159969, 37.042358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.349150, 32.795609, 36.881599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495329, 0.307647, -0.812405,
		0.863669, -0.274960, 0.422461,
		-0.093411, -0.910906, -0.401901,
		25.321127, 32.522335, 36.761028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.004318, 33.093990, 36.718479>,  <25.386515, 33.159969, 37.042358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.004318, 33.093990, 36.718479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.749828, 32.840916, 36.541878>,  <25.597136, 32.689072, 36.435917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.749828, 32.840916, 36.541878>,  <26.004318, 33.093990, 36.718479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.749828, 32.840916, 36.541878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382784, 0.237991, -0.892657,
		0.669848, -0.736929, 0.090767,
		-0.636223, -0.632689, -0.441503,
		25.558962, 32.651108, 36.409428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.419302, 32.843212, 36.149372>,  <26.004318, 33.093990, 36.718479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.419302, 32.843212, 36.149372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.036949, 32.759418, 36.066998>,  <25.807537, 32.709145, 36.017570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.036949, 32.759418, 36.066998>,  <26.419302, 32.843212, 36.149372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.036949, 32.759418, 36.066998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131697, 0.321061, -0.937857,
		0.262578, -0.923601, -0.279309,
		-0.955881, -0.209477, -0.205939,
		25.750185, 32.696575, 36.005215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.447201, 32.483749, 35.522144>,  <26.419302, 32.843212, 36.149372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.447201, 32.483749, 35.522144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.070284, 32.610153, 35.566364>,  <25.844133, 32.685997, 35.592896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.070284, 32.610153, 35.566364>,  <26.447201, 32.483749, 35.522144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.070284, 32.610153, 35.566364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082215, 0.101660, -0.991416,
		-0.324538, -0.943293, -0.069812,
		-0.942293, 0.316013, 0.110546,
		25.787596, 32.704956, 35.599529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.043684, 32.845463, 35.199989>,  <26.447201, 32.483749, 35.522144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.043684, 32.845463, 35.199989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.012478, 32.541054, 35.457596>,  <26.993755, 32.358410, 35.612160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.012478, 32.541054, 35.457596>,  <27.043684, 32.845463, 35.199989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.012478, 32.541054, 35.457596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.606867, -0.476263, -0.636306,
		0.790965, -0.440473, -0.424685,
		-0.078014, -0.761023, 0.644016,
		26.989073, 32.312748, 35.650803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.110735, 32.415165, 34.622307>,  <27.043684, 32.845463, 35.199989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.110735, 32.415165, 34.622307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.998770, 32.476223, 34.243183>,  <26.931591, 32.512859, 34.015709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.998770, 32.476223, 34.243183>,  <27.110735, 32.415165, 34.622307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.998770, 32.476223, 34.243183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.632105, -0.713765, -0.301633,
		-0.722559, -0.683548, 0.103302,
		-0.279914, 0.152649, -0.947811,
		26.914797, 32.522018, 33.958839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.784189, 31.805120, 34.465832>,  <27.110735, 32.415165, 34.622307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.784189, 31.805120, 34.465832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.897009, 31.973093, 34.120785>,  <26.964701, 32.073875, 33.913757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.897009, 31.973093, 34.120785>,  <26.784189, 31.805120, 34.465832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.897009, 31.973093, 34.120785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172089, -0.906681, -0.385117,
		-0.943840, -0.039825, -0.327993,
		0.282048, 0.419933, -0.862616,
		26.981623, 32.099072, 33.862000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.364986, 31.338350, 34.312634>,  <26.784189, 31.805120, 34.465832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.364986, 31.338350, 34.312634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.615459, 31.026484, 34.314232>,  <27.765743, 30.839363, 34.315189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.615459, 31.026484, 34.314232>,  <27.364986, 31.338350, 34.312634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.615459, 31.026484, 34.314232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.543917, -0.433157, 0.718699,
		-0.558616, -0.452209, -0.695310,
		0.626181, -0.779668, 0.003996,
		27.803314, 30.792583, 34.315430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.051144, 31.661106, 34.610062>,  <27.364986, 31.338350, 34.312634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.051144, 31.661106, 34.610062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.392555, 31.468866, 34.529549>,  <28.597403, 31.353523, 34.481239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.392555, 31.468866, 34.529549>,  <28.051144, 31.661106, 34.610062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.392555, 31.468866, 34.529549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097509, -0.232158, 0.967778,
		-0.511843, -0.845652, -0.151290,
		0.853527, -0.480599, -0.201287,
		28.648613, 31.324686, 34.469162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.028219, 30.873455, 34.862686>,  <28.051144, 31.661106, 34.610062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.028219, 30.873455, 34.862686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.398979, 31.022167, 34.842140>,  <28.621435, 31.111395, 34.829811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.398979, 31.022167, 34.842140>,  <28.028219, 30.873455, 34.862686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.398979, 31.022167, 34.842140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133717, -0.199253, 0.970782,
		0.350684, -0.906685, -0.234401,
		0.926898, 0.371781, -0.051364,
		28.677050, 31.133701, 34.826733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.449665, 30.410875, 35.082401>,  <28.028219, 30.873455, 34.862686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.449665, 30.410875, 35.082401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.668951, 30.740923, 35.137016>,  <28.800522, 30.938951, 35.169785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.668951, 30.740923, 35.137016>,  <28.449665, 30.410875, 35.082401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.668951, 30.740923, 35.137016> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061487, -0.202579, 0.977334,
		0.834074, -0.527394, -0.161790,
		0.548215, 0.825117, 0.136538,
		28.833416, 30.988459, 35.177979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.985506, 30.187216, 35.425438>,  <28.449665, 30.410875, 35.082401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.985506, 30.187216, 35.425438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.006607, 30.578751, 35.504524>,  <29.019268, 30.813671, 35.551975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.006607, 30.578751, 35.504524>,  <28.985506, 30.187216, 35.425438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.006607, 30.578751, 35.504524> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176946, -0.204021, 0.962842,
		0.982806, -0.015808, -0.183964,
		0.052753, 0.978839, 0.197716,
		29.022432, 30.872402, 35.563839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.312569, 30.068153, 36.008854>,  <28.985506, 30.187216, 35.425438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.312569, 30.068153, 36.008854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.155764, 30.435894, 35.995483>,  <29.061682, 30.656538, 35.987461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.155764, 30.435894, 35.995483>,  <29.312569, 30.068153, 36.008854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.155764, 30.435894, 35.995483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230056, -0.062787, 0.971150,
		0.890731, 0.388391, 0.236116,
		-0.392011, 0.919353, -0.033426,
		29.038160, 30.711700, 35.985455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.640020, 30.593649, 36.436661>,  <29.312569, 30.068153, 36.008854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.640020, 30.593649, 36.436661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.243130, 30.615370, 36.391876>,  <29.004995, 30.628403, 36.365005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.243130, 30.615370, 36.391876>,  <29.640020, 30.593649, 36.436661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.243130, 30.615370, 36.391876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116424, -0.087487, 0.989339,
		0.043929, 0.994684, 0.093129,
		-0.992228, 0.054304, -0.111962,
		28.945461, 30.631660, 36.358288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.979216, 30.870916, 36.840927>,  <29.640020, 30.593649, 36.436661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.979216, 30.870916, 36.840927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.965508, 31.260014, 36.932659>,  <28.957283, 31.493473, 36.987698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.965508, 31.260014, 36.932659>,  <28.979216, 30.870916, 36.840927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.965508, 31.260014, 36.932659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.858884, -0.088668, 0.504437,
		0.511023, 0.214257, -0.832436,
		-0.034269, 0.972745, 0.229333,
		28.955227, 31.551836, 37.001457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.241720, 31.106155, 36.824223>,  <28.979216, 30.870916, 36.840927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.241720, 31.106155, 36.824223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.483049, 31.424774, 36.808666>,  <28.627846, 31.615946, 36.799332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.483049, 31.424774, 36.808666>,  <28.241720, 31.106155, 36.824223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.483049, 31.424774, 36.808666> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411650, -0.352822, -0.840274,
		-0.683042, 0.490945, -0.540765,
		0.603322, 0.796549, -0.038894,
		28.664045, 31.663738, 36.796997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.963928, 31.469158, 36.179935>,  <28.241720, 31.106155, 36.824223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.963928, 31.469158, 36.179935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.347200, 31.527983, 36.278133>,  <28.577164, 31.563276, 36.337051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.347200, 31.527983, 36.278133>,  <27.963928, 31.469158, 36.179935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.347200, 31.527983, 36.278133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276435, -0.253780, -0.926919,
		-0.074011, 0.956017, -0.283819,
		0.958179, 0.147060, 0.245494,
		28.634653, 31.572100, 36.351780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.259760, 31.866081, 35.684155>,  <27.963928, 31.469158, 36.179935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.259760, 31.866081, 35.684155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.568647, 31.665480, 35.840195>,  <28.753981, 31.545118, 35.933819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.568647, 31.665480, 35.840195>,  <28.259760, 31.866081, 35.684155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.568647, 31.665480, 35.840195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438732, -0.023198, -0.898318,
		0.459558, 0.864846, 0.202111,
		0.772218, -0.501502, 0.390096,
		28.800312, 31.515030, 35.957222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.039015, 32.140285, 35.753548>,  <28.259760, 31.866081, 35.684155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.039015, 32.140285, 35.753548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.065920, 31.743721, 35.708675>,  <29.082064, 31.505783, 35.681751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.065920, 31.743721, 35.708675>,  <29.039015, 32.140285, 35.753548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.065920, 31.743721, 35.708675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442416, 0.130418, -0.887276,
		0.894284, 0.010050, 0.447387,
		0.067264, -0.991408, -0.112184,
		29.086100, 31.446299, 35.675018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.555677, 32.058170, 35.225773>,  <29.039015, 32.140285, 35.753548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.555677, 32.058170, 35.225773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.345421, 31.717937, 35.231487>,  <29.219267, 31.513798, 35.234917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.345421, 31.717937, 35.231487>,  <29.555677, 32.058170, 35.225773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.345421, 31.717937, 35.231487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095949, -0.075964, -0.992483,
		0.845278, -0.520320, 0.121543,
		-0.525642, -0.850586, 0.014287,
		29.187729, 31.462761, 35.235775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.855782, 31.654421, 34.785717>,  <29.555677, 32.058170, 35.225773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.855782, 31.654421, 34.785717> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.492430, 31.487713, 34.799278>,  <29.274418, 31.387688, 34.807415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.492430, 31.487713, 34.799278>,  <29.855782, 31.654421, 34.785717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.492430, 31.487713, 34.799278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094571, 0.125792, -0.987539,
		0.407314, -0.900265, -0.153681,
		-0.908379, -0.416772, 0.033902,
		29.219915, 31.362682, 34.809448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.755016, 31.272058, 34.272942>,  <29.855782, 31.654421, 34.785717>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.755016, 31.272058, 34.272942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.382608, 31.389374, 34.359833>,  <29.159164, 31.459763, 34.411968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.382608, 31.389374, 34.359833>,  <29.755016, 31.272058, 34.272942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.382608, 31.389374, 34.359833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181704, 0.143706, -0.972796,
		-0.316526, -0.945162, -0.080502,
		-0.931018, 0.293288, 0.217227,
		29.103302, 31.477360, 34.424999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.301596, 30.770535, 34.042740>,  <29.755016, 31.272058, 34.272942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.301596, 30.770535, 34.042740> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.137878, 31.135450, 34.036964>,  <29.039648, 31.354401, 34.033501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.137878, 31.135450, 34.036964>,  <29.301596, 30.770535, 34.042740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.137878, 31.135450, 34.036964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249398, -0.127081, -0.960027,
		-0.877657, -0.389330, 0.279536,
		-0.409291, 0.912290, -0.014435,
		29.015091, 31.409138, 34.032635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.597843, 30.606049, 33.990746>,  <29.301596, 30.770535, 34.042740>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.597843, 30.606049, 33.990746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.677500, 30.980873, 33.876022>,  <28.725294, 31.205769, 33.807186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.677500, 30.980873, 33.876022>,  <28.597843, 30.606049, 33.990746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.677500, 30.980873, 33.876022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404432, -0.188000, -0.895036,
		-0.892624, 0.294233, 0.341539,
		0.199140, 0.937061, -0.286811,
		28.737242, 31.261992, 33.789978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.980000, 31.057125, 33.755894>,  <28.597843, 30.606049, 33.990746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.980000, 31.057125, 33.755894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.293343, 31.197746, 33.550854>,  <28.481348, 31.282120, 33.427830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.293343, 31.197746, 33.550854>,  <27.980000, 31.057125, 33.755894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.293343, 31.197746, 33.550854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467983, -0.209164, -0.858628,
		-0.409072, 0.912502, 0.000671,
		0.783359, 0.351555, -0.512599,
		28.528351, 31.303213, 33.397076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.692184, 31.217932, 33.107384>,  <27.980000, 31.057125, 33.755894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.692184, 31.217932, 33.107384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.071709, 31.266325, 32.990681>,  <28.299423, 31.295361, 32.920658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.071709, 31.266325, 32.990681>,  <27.692184, 31.217932, 33.107384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.071709, 31.266325, 32.990681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244412, -0.303853, -0.920834,
		-0.200057, 0.945006, -0.258729,
		0.948810, 0.120983, -0.291759,
		28.356352, 31.302620, 32.903152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.736732, 31.607065, 32.494156>,  <27.692184, 31.217932, 33.107384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.736732, 31.607065, 32.494156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.081327, 31.404215, 32.483829>,  <28.288084, 31.282505, 32.477634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.081327, 31.404215, 32.483829>,  <27.736732, 31.607065, 32.494156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.081327, 31.404215, 32.483829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051869, -0.037319, -0.997956,
		0.505126, 0.861063, -0.058454,
		0.861485, -0.507126, -0.025812,
		28.339773, 31.252077, 32.476086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.104897, 31.750805, 31.856905>,  <27.736732, 31.607065, 32.494156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.104897, 31.750805, 31.856905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.260593, 31.403023, 31.978588>,  <28.354012, 31.194353, 32.051598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.260593, 31.403023, 31.978588>,  <28.104897, 31.750805, 31.856905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.260593, 31.403023, 31.978588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025360, -0.340245, -0.939995,
		0.920787, 0.358169, -0.154487,
		0.389240, -0.869453, 0.304210,
		28.377365, 31.142187, 32.069851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.598351, 31.623991, 31.322142>,  <28.104897, 31.750805, 31.856905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.598351, 31.623991, 31.322142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.560349, 31.256008, 31.474274>,  <28.537548, 31.035219, 31.565554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.560349, 31.256008, 31.474274>,  <28.598351, 31.623991, 31.322142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.560349, 31.256008, 31.474274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006360, -0.382613, -0.923887,
		0.995457, -0.085354, 0.042201,
		-0.095004, -0.919958, 0.380332,
		28.531847, 30.980021, 31.588373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.244549, 31.218433, 31.041727>,  <28.598351, 31.623991, 31.322142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.244549, 31.218433, 31.041727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.965754, 30.960880, 31.167980>,  <28.798477, 30.806349, 31.243732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.965754, 30.960880, 31.167980>,  <29.244549, 31.218433, 31.041727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.965754, 30.960880, 31.167980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018896, -0.456498, -0.889524,
		0.716836, -0.614021, 0.330340,
		-0.696986, -0.643885, 0.315631,
		28.756659, 30.767715, 31.262671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.400166, 30.569084, 30.619453>,  <29.244549, 31.218433, 31.041727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.400166, 30.569084, 30.619453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.029913, 30.529058, 30.765438>,  <28.807762, 30.505043, 30.853029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.029913, 30.529058, 30.765438>,  <29.400166, 30.569084, 30.619453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.029913, 30.529058, 30.765438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287296, -0.441901, -0.849815,
		0.246314, -0.891465, 0.380288,
		-0.925630, -0.100066, 0.364961,
		28.752224, 30.499039, 30.874926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.161093, 29.861954, 30.512821>,  <29.400166, 30.569084, 30.619453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.161093, 29.861954, 30.512821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.833532, 30.088617, 30.549265>,  <28.636997, 30.224615, 30.571131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.833532, 30.088617, 30.549265>,  <29.161093, 29.861954, 30.512821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.833532, 30.088617, 30.549265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361855, -0.386532, -0.848324,
		-0.445494, -0.727661, 0.521579,
		-0.818899, 0.566660, 0.091110,
		28.587862, 30.258615, 30.576597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.707264, 29.421017, 30.352589>,  <29.161093, 29.861954, 30.512821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.707264, 29.421017, 30.352589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.502514, 29.763680, 30.326893>,  <28.379663, 29.969276, 30.311476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.502514, 29.763680, 30.326893>,  <28.707264, 29.421017, 30.352589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.502514, 29.763680, 30.326893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.529392, -0.373446, -0.761763,
		-0.676558, -0.355919, 0.644664,
		-0.511873, 0.856656, -0.064238,
		28.348951, 30.020676, 30.307621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.076313, 29.249510, 30.165377>,  <28.707264, 29.421017, 30.352589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.076313, 29.249510, 30.165377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.091524, 29.636389, 30.064909>,  <28.100651, 29.868515, 30.004629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.091524, 29.636389, 30.064909>,  <28.076313, 29.249510, 30.165377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.091524, 29.636389, 30.064909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.590760, -0.180961, -0.786292,
		-0.805950, 0.178282, 0.564499,
		0.038029, 0.967196, -0.251168,
		28.102932, 29.926548, 29.989559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.375071, 29.525978, 30.053719>,  <28.076313, 29.249510, 30.165377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.375071, 29.525978, 30.053719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.652428, 29.721151, 29.841635>,  <27.818842, 29.838255, 29.714384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.652428, 29.721151, 29.841635>,  <27.375071, 29.525978, 30.053719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.652428, 29.721151, 29.841635> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403401, -0.346841, -0.846740,
		-0.597052, 0.801014, -0.043665,
		0.693395, 0.487933, -0.530212,
		27.860447, 29.867531, 29.682571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.014605, 29.655334, 29.443777>,  <27.375071, 29.525978, 30.053719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.014605, 29.655334, 29.443777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.379707, 29.762821, 29.320707>,  <27.598770, 29.827312, 29.246866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.379707, 29.762821, 29.320707>,  <27.014605, 29.655334, 29.443777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.379707, 29.762821, 29.320707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323239, 0.014571, -0.946205,
		-0.249777, 0.963109, 0.100159,
		0.912758, 0.268716, -0.307675,
		27.653536, 29.843435, 29.228405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.824026, 30.061781, 28.877205>,  <27.014605, 29.655334, 29.443777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.824026, 30.061781, 28.877205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.214796, 29.984253, 28.841322>,  <27.449259, 29.937737, 28.819792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.214796, 29.984253, 28.841322>,  <26.824026, 30.061781, 28.877205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.214796, 29.984253, 28.841322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065221, 0.129226, -0.989468,
		0.203374, 0.972488, 0.113603,
		0.976926, -0.193822, -0.089708,
		27.507874, 29.926105, 28.814409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.116488, 30.624067, 28.463207>,  <26.824026, 30.061781, 28.877205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.116488, 30.624067, 28.463207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.365026, 30.314306, 28.415497>,  <27.514151, 30.128450, 28.386871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.365026, 30.314306, 28.415497>,  <27.116488, 30.624067, 28.463207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.365026, 30.314306, 28.415497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003580, 0.149418, -0.988768,
		0.783526, 0.614796, 0.090068,
		0.621349, -0.774403, -0.119274,
		27.551432, 30.081985, 28.379715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.497341, 30.794384, 27.983086>,  <27.116488, 30.624067, 28.463207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.497341, 30.794384, 27.983086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.523691, 30.395380, 27.993170>,  <27.539501, 30.155977, 27.999220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.523691, 30.395380, 27.993170>,  <27.497341, 30.794384, 27.983086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.523691, 30.395380, 27.993170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080704, -0.019855, -0.996540,
		0.994559, 0.067680, 0.079195,
		0.065874, -0.997510, 0.025209,
		27.543453, 30.096127, 28.000732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.933533, 30.723886, 27.354864>,  <27.497341, 30.794384, 27.983086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.933533, 30.723886, 27.354864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.778862, 30.366295, 27.445444>,  <27.686060, 30.151739, 27.499792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.778862, 30.366295, 27.445444>,  <27.933533, 30.723886, 27.354864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.778862, 30.366295, 27.445444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084932, -0.279028, -0.956520,
		0.918296, -0.350631, 0.183821,
		-0.386676, -0.893981, 0.226451,
		27.662859, 30.098101, 27.513380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.331427, 30.258457, 27.036987>,  <27.933533, 30.723886, 27.354864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.331427, 30.258457, 27.036987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.003805, 30.040030, 27.107372>,  <27.807232, 29.908974, 27.149603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.003805, 30.040030, 27.107372>,  <28.331427, 30.258457, 27.036987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.003805, 30.040030, 27.107372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119004, -0.461741, -0.878996,
		0.561242, -0.699002, 0.443174,
		-0.819052, -0.546069, 0.175965,
		27.758089, 29.876209, 27.160162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.469316, 29.707602, 26.704853>,  <28.331427, 30.258457, 27.036987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.469316, 29.707602, 26.704853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.071518, 29.713839, 26.746302>,  <27.832840, 29.717581, 26.771172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.071518, 29.713839, 26.746302>,  <28.469316, 29.707602, 26.704853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.071518, 29.713839, 26.746302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102876, -0.333386, -0.937161,
		0.019936, -0.942662, 0.333154,
		-0.994494, 0.015591, 0.103624,
		27.773170, 29.718515, 26.777390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.206049, 29.062784, 26.310295>,  <28.469316, 29.707602, 26.704853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.206049, 29.062784, 26.310295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.894175, 29.311989, 26.335426>,  <27.707050, 29.461512, 26.350506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.894175, 29.311989, 26.335426>,  <28.206049, 29.062784, 26.310295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.894175, 29.311989, 26.335426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291664, -0.272548, -0.916869,
		-0.554096, -0.733195, 0.394212,
		-0.779685, 0.623012, 0.062829,
		27.660269, 29.498892, 26.354275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.551651, 28.711451, 25.952322>,  <28.206049, 29.062784, 26.310295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.551651, 28.711451, 25.952322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.449333, 29.097349, 25.977104>,  <27.387943, 29.328888, 25.991974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.449333, 29.097349, 25.977104>,  <27.551651, 28.711451, 25.952322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.449333, 29.097349, 25.977104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351627, -0.033151, -0.935553,
		-0.900516, -0.261093, 0.347710,
		-0.255793, 0.964744, 0.061955,
		27.372595, 29.386772, 25.995691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.013544, 28.740025, 25.496634>,  <27.551651, 28.711451, 25.952322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.013544, 28.740025, 25.496634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.118690, 29.121819, 25.552999>,  <27.181778, 29.350895, 25.586819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.118690, 29.121819, 25.552999>,  <27.013544, 28.740025, 25.496634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.118690, 29.121819, 25.552999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261687, 0.211107, -0.941782,
		-0.928666, 0.210688, 0.305270,
		0.262866, 0.954487, 0.140913,
		27.197550, 29.408165, 25.595274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.563238, 29.066416, 25.072090>,  <27.013544, 28.740025, 25.496634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.563238, 29.066416, 25.072090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.873652, 29.312115, 25.129320>,  <27.059900, 29.459534, 25.163658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.873652, 29.312115, 25.129320>,  <26.563238, 29.066416, 25.072090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.873652, 29.312115, 25.129320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127111, 0.374523, -0.918464,
		-0.617747, 0.694575, 0.368720,
		0.776036, 0.614247, 0.143073,
		27.106462, 29.496389, 25.172241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.381470, 29.779577, 24.756048>,  <26.563238, 29.066416, 25.072090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.381470, 29.779577, 24.756048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.774227, 29.704426, 24.765730>,  <27.009882, 29.659334, 24.771540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.774227, 29.704426, 24.765730>,  <26.381470, 29.779577, 24.756048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.774227, 29.704426, 24.765730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072294, 0.253549, -0.964617,
		0.175096, 0.948901, 0.262541,
		0.981894, -0.187881, 0.024204,
		27.068794, 29.648062, 24.772991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.617773, 30.258345, 24.354712>,  <26.381470, 29.779577, 24.756048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.617773, 30.258345, 24.354712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.923916, 30.001425, 24.371109>,  <27.107601, 29.847273, 24.380947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.923916, 30.001425, 24.371109>,  <26.617773, 30.258345, 24.354712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.923916, 30.001425, 24.371109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115143, 0.073981, -0.990590,
		0.633221, 0.762877, 0.130578,
		0.765358, -0.642298, 0.040994,
		27.153522, 29.808735, 24.383408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.048248, 30.525805, 23.919693>,  <26.617773, 30.258345, 24.354712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.048248, 30.525805, 23.919693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.169914, 30.145803, 23.947916>,  <27.242914, 29.917803, 23.964849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.169914, 30.145803, 23.947916>,  <27.048248, 30.525805, 23.919693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.169914, 30.145803, 23.947916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050530, -0.057871, -0.997045,
		0.951278, 0.306832, 0.030401,
		0.304166, -0.950003, 0.070555,
		27.261164, 29.860802, 23.969082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.573618, 30.509014, 23.456718>,  <27.048248, 30.525805, 23.919693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.573618, 30.509014, 23.456718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.455940, 30.133879, 23.530376>,  <27.385334, 29.908798, 23.574572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.455940, 30.133879, 23.530376>,  <27.573618, 30.509014, 23.456718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.455940, 30.133879, 23.530376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076600, -0.168915, -0.982650,
		0.952672, -0.303193, -0.022145,
		-0.294192, -0.937839, 0.184145,
		27.367683, 29.852528, 23.585619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.964371, 30.065466, 23.220617>,  <27.573618, 30.509014, 23.456718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.964371, 30.065466, 23.220617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.624956, 29.854017, 23.211266>,  <27.421309, 29.727148, 23.205654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.624956, 29.854017, 23.211266>,  <27.964371, 30.065466, 23.220617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.624956, 29.854017, 23.211266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129728, -0.164994, -0.977726,
		0.512990, -0.832668, 0.208580,
		-0.848535, -0.528623, -0.023380,
		27.370396, 29.695431, 23.204252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.097433, 29.514679, 22.785475>,  <27.964371, 30.065466, 23.220617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.097433, 29.514679, 22.785475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.697548, 29.521933, 22.791796>,  <27.457617, 29.526285, 22.795589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.697548, 29.521933, 22.791796>,  <28.097433, 29.514679, 22.785475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.697548, 29.521933, 22.791796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017648, -0.106497, -0.994156,
		-0.016343, -0.994148, 0.106786,
		-0.999711, 0.018132, 0.015804,
		27.397635, 29.527372, 22.796537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.973778, 29.007492, 22.300137>,  <28.097433, 29.514679, 22.785475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.973778, 29.007492, 22.300137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.660091, 29.253529, 22.332794>,  <27.471880, 29.401152, 22.352388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.660091, 29.253529, 22.332794>,  <27.973778, 29.007492, 22.300137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.660091, 29.253529, 22.332794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067906, 0.045709, -0.996644,
		-0.616761, -0.787128, 0.005923,
		-0.784216, 0.615093, 0.081642,
		27.424826, 29.438057, 22.357286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.500631, 28.766479, 21.813957>,  <27.973778, 29.007492, 22.300137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.500631, 28.766479, 21.813957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.385202, 29.140079, 21.898218>,  <27.315945, 29.364239, 21.948774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.385202, 29.140079, 21.898218>,  <27.500631, 28.766479, 21.813957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.385202, 29.140079, 21.898218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039005, 0.208362, -0.977274,
		-0.956664, -0.290229, -0.023696,
		-0.288571, 0.933998, 0.210653,
		27.298632, 29.420279, 21.961414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.985512, 28.999168, 21.295691>,  <27.500631, 28.766479, 21.813957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.985512, 28.999168, 21.295691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.146139, 29.334806, 21.442478>,  <27.242516, 29.536188, 21.530552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.146139, 29.334806, 21.442478>,  <26.985512, 28.999168, 21.295691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.146139, 29.334806, 21.442478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018036, 0.393373, -0.919202,
		-0.915652, 0.375740, 0.142832,
		0.401567, 0.839093, 0.366970,
		27.266609, 29.586535, 21.552568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.635654, 29.531248, 20.958845>,  <26.985512, 28.999168, 21.295691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.635654, 29.531248, 20.958845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.978701, 29.675114, 21.105888>,  <27.184528, 29.761433, 21.194115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.978701, 29.675114, 21.105888>,  <26.635654, 29.531248, 20.958845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.978701, 29.675114, 21.105888> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208363, 0.410501, -0.887735,
		-0.470188, 0.837933, 0.277113,
		0.857618, 0.359663, 0.367607,
		27.235987, 29.783012, 21.216171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.687540, 30.116766, 20.702314>,  <26.635654, 29.531248, 20.958845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.687540, 30.116766, 20.702314> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.069551, 30.065758, 20.809389>,  <27.298759, 30.035152, 20.873634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.069551, 30.065758, 20.809389>,  <26.687540, 30.116766, 20.702314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.069551, 30.065758, 20.809389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296475, 0.397402, -0.868432,
		0.004364, 0.908741, 0.417337,
		0.955031, -0.127521, 0.267685,
		27.356060, 30.027502, 20.889694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.978790, 30.761389, 20.625347>,  <26.687540, 30.116766, 20.702314>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.978790, 30.761389, 20.625347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.301981, 30.525835, 20.633183>,  <27.495895, 30.384502, 20.637884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.301981, 30.525835, 20.633183>,  <26.978790, 30.761389, 20.625347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.301981, 30.525835, 20.633183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392913, 0.513726, -0.762696,
		0.439077, 0.623939, 0.646461,
		0.807979, -0.588885, 0.019589,
		27.544374, 30.349169, 20.639059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.509359, 31.238375, 20.739305>,  <26.978790, 30.761389, 20.625347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.509359, 31.238375, 20.739305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.643795, 30.907707, 20.558790>,  <27.724457, 30.709307, 20.450481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.643795, 30.907707, 20.558790>,  <27.509359, 31.238375, 20.739305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.643795, 30.907707, 20.558790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.561281, 0.560580, -0.608862,
		0.756312, -0.048667, 0.652399,
		0.336090, -0.826669, -0.451290,
		27.744621, 30.659706, 20.423403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.113882, 31.390327, 20.708941>,  <27.509359, 31.238375, 20.739305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.113882, 31.390327, 20.708941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.075808, 31.111086, 20.425083>,  <28.052963, 30.943541, 20.254768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.075808, 31.111086, 20.425083>,  <28.113882, 31.390327, 20.708941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.075808, 31.111086, 20.425083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.703594, 0.457116, -0.544059,
		0.704198, -0.551088, 0.447669,
		-0.095188, -0.698102, -0.709642,
		28.047251, 30.901655, 20.212191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.794945, 31.325674, 20.441048>,  <28.113882, 31.390327, 20.708941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.794945, 31.325674, 20.441048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.567627, 31.177181, 20.147318>,  <28.431236, 31.088085, 19.971081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.567627, 31.177181, 20.147318>,  <28.794945, 31.325674, 20.441048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.567627, 31.177181, 20.147318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457727, 0.598980, -0.657046,
		0.683762, -0.709513, -0.170472,
		-0.568292, -0.371233, -0.734323,
		28.397139, 31.065811, 19.927021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.241068, 31.336006, 19.920830>,  <28.794945, 31.325674, 20.441048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.241068, 31.336006, 19.920830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.875870, 31.307962, 19.760067>,  <28.656752, 31.291136, 19.663610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.875870, 31.307962, 19.760067>,  <29.241068, 31.336006, 19.920830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.875870, 31.307962, 19.760067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200490, 0.780859, -0.591662,
		0.355312, -0.620761, -0.698862,
		-0.912994, -0.070110, -0.401905,
		28.601973, 31.286930, 19.639496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.354626, 31.380009, 19.196352>,  <29.241068, 31.336006, 19.920830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.354626, 31.380009, 19.196352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.967432, 31.464521, 19.250555>,  <28.735115, 31.515228, 19.283077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.967432, 31.464521, 19.250555>,  <29.354626, 31.380009, 19.196352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.967432, 31.464521, 19.250555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068981, 0.743005, -0.665721,
		-0.241338, -0.635061, -0.733793,
		-0.967986, 0.211282, 0.135509,
		28.677036, 31.527906, 19.291208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.043201, 31.497976, 18.413561>,  <29.354626, 31.380009, 19.196352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.043201, 31.497976, 18.413561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.800798, 31.663567, 18.685261>,  <28.655355, 31.762920, 18.848280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.800798, 31.663567, 18.685261>,  <29.043201, 31.497976, 18.413561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.800798, 31.663567, 18.685261> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016153, 0.860137, -0.509807,
		-0.795294, -0.297975, -0.527937,
		-0.606008, 0.413975, 0.679249,
		28.618996, 31.787760, 18.889036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.615349, 31.893379, 18.101410>,  <29.043201, 31.497976, 18.413561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.615349, 31.893379, 18.101410> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.587046, 32.072170, 18.458107>,  <28.570065, 32.179443, 18.672125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.587046, 32.072170, 18.458107>,  <28.615349, 31.893379, 18.101410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.587046, 32.072170, 18.458107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276273, 0.850229, -0.448089,
		-0.958471, -0.278070, 0.063328,
		-0.070756, 0.446976, 0.891743,
		28.565819, 32.206264, 18.725630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.600540, 32.674206, 18.035675>,  <28.615349, 31.893379, 18.101410>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.600540, 32.674206, 18.035675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.681370, 33.061825, 17.978949>,  <28.729868, 33.294395, 17.944914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.681370, 33.061825, 17.978949>,  <28.600540, 32.674206, 18.035675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.681370, 33.061825, 17.978949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434135, -0.218428, -0.873966,
		-0.877892, 0.115037, -0.464836,
		0.202072, 0.969049, -0.141814,
		28.741991, 33.352539, 17.936405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.372805, 32.840805, 17.323467>,  <28.600540, 32.674206, 18.035675>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.372805, 32.840805, 17.323467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.659790, 33.092552, 17.442894>,  <28.831982, 33.243599, 17.514549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.659790, 33.092552, 17.442894>,  <28.372805, 32.840805, 17.323467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.659790, 33.092552, 17.442894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512385, -0.186439, -0.838273,
		-0.471917, 0.754412, -0.456242,
		0.717465, 0.629367, 0.298565,
		28.875029, 33.281361, 17.532463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.473763, 33.422081, 16.855820>,  <28.372805, 32.840805, 17.323467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.473763, 33.422081, 16.855820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.829214, 33.378098, 17.033920>,  <29.042484, 33.351707, 17.140781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.829214, 33.378098, 17.033920>,  <28.473763, 33.422081, 16.855820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.829214, 33.378098, 17.033920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438814, -0.078425, -0.895149,
		0.133348, 0.990837, -0.021440,
		0.888629, -0.109958, 0.445251,
		29.095802, 33.345112, 17.167496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.824776, 33.139900, 16.285028>,  <28.473763, 33.422081, 16.855820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.824776, 33.139900, 16.285028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.134407, 33.224438, 16.523739>,  <29.320185, 33.275158, 16.666965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.134407, 33.224438, 16.523739>,  <28.824776, 33.139900, 16.285028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.134407, 33.224438, 16.523739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.633079, -0.252369, -0.731793,
		-0.004049, 0.944270, -0.329148,
		0.774076, 0.211340, 0.596776,
		29.366631, 33.287838, 16.702772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.650780, 33.029469, 16.315521>,  <28.824776, 33.139900, 16.285028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.650780, 33.029469, 16.315521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.327871, 32.879589, 16.497913>,  <29.134127, 32.789661, 16.607349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.327871, 32.879589, 16.497913>,  <29.650780, 33.029469, 16.315521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.327871, 32.879589, 16.497913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480589, 0.031106, 0.876394,
		-0.342565, 0.926626, 0.154963,
		-0.807269, -0.374695, 0.455982,
		29.085691, 32.767181, 16.634708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.058424, 32.487064, 16.291121>,  <29.650780, 33.029469, 16.315521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.058424, 32.487064, 16.291121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.271774, 32.715641, 16.540588>,  <30.399784, 32.852787, 16.690269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.271774, 32.715641, 16.540588>,  <30.058424, 32.487064, 16.291121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.271774, 32.715641, 16.540588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.837772, 0.255048, 0.482793,
		0.116823, -0.780003, 0.614775,
		0.533377, 0.571442, 0.623669,
		30.431787, 32.887074, 16.727690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.826174, 32.348110, 17.004511>,  <30.058424, 32.487064, 16.291121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.826174, 32.348110, 17.004511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.976009, 32.713158, 16.939024>,  <30.065910, 32.932186, 16.899731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.976009, 32.713158, 16.939024>,  <29.826174, 32.348110, 17.004511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.976009, 32.713158, 16.939024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.805142, 0.407736, 0.430694,
		0.459816, -0.029515, 0.887524,
		0.374587, 0.912623, -0.163720,
		30.088387, 32.986946, 16.889908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.961142, 32.683556, 17.633270>,  <29.826174, 32.348110, 17.004511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.961142, 32.683556, 17.633270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.868389, 32.994175, 17.398933>,  <29.812738, 33.180546, 17.258331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.868389, 32.994175, 17.398933>,  <29.961142, 32.683556, 17.633270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.868389, 32.994175, 17.398933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466634, 0.439637, 0.767445,
		0.853513, 0.451328, 0.260420,
		-0.231879, 0.776545, -0.585841,
		29.798826, 33.227139, 17.223181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.164120, 33.254387, 17.965357>,  <29.961142, 32.683556, 17.633270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.164120, 33.254387, 17.965357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.861183, 33.333054, 17.716276>,  <29.679420, 33.380253, 17.566828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.861183, 33.333054, 17.716276>,  <30.164120, 33.254387, 17.965357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.861183, 33.333054, 17.716276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.543235, 0.339450, 0.767900,
		0.362394, 0.919836, -0.150245,
		-0.757342, 0.196664, -0.622701,
		29.633980, 33.392052, 17.529467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.928835, 33.868874, 18.113531>,  <30.164120, 33.254387, 17.965357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.928835, 33.868874, 18.113531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.614174, 33.693821, 17.939329>,  <29.425377, 33.588791, 17.834808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.614174, 33.693821, 17.939329>,  <29.928835, 33.868874, 18.113531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.614174, 33.693821, 17.939329> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.576643, 0.268754, 0.771527,
		-0.220598, 0.858052, -0.463770,
		-0.786651, -0.437627, -0.435504,
		29.378180, 33.562534, 17.808678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.391790, 34.361534, 17.815498>,  <29.928835, 33.868874, 18.113531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.391790, 34.361534, 17.815498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.268421, 34.014549, 17.971645>,  <29.194401, 33.806358, 18.065334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.268421, 34.014549, 17.971645>,  <29.391790, 34.361534, 17.815498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.268421, 34.014549, 17.971645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373085, 0.487804, 0.789211,
		-0.875033, 0.097769, -0.474086,
		-0.308422, -0.867461, 0.390369,
		29.175894, 33.754311, 18.088757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.649864, 34.403362, 18.059307>,  <29.391790, 34.361534, 17.815498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.649864, 34.403362, 18.059307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.851118, 34.130863, 18.272007>,  <28.971870, 33.967365, 18.399626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.851118, 34.130863, 18.272007>,  <28.649864, 34.403362, 18.059307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.851118, 34.130863, 18.272007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243836, 0.478397, 0.843611,
		-0.829095, -0.554110, 0.074586,
		0.503136, -0.681247, 0.531749,
		29.002058, 33.926491, 18.431532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.197195, 34.164799, 18.666702>,  <28.649864, 34.403362, 18.059307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.197195, 34.164799, 18.666702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.576511, 34.061707, 18.740805>,  <28.804102, 33.999851, 18.785265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.576511, 34.061707, 18.740805>,  <28.197195, 34.164799, 18.666702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.576511, 34.061707, 18.740805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084676, 0.357082, 0.930227,
		-0.305900, -0.897812, 0.316794,
		0.948291, -0.257731, 0.185254,
		28.860998, 33.984386, 18.796381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.100655, 33.846004, 19.461790>,  <28.197195, 34.164799, 18.666702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.100655, 33.846004, 19.461790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.491779, 33.915287, 19.414663>,  <28.726454, 33.956856, 19.386387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.491779, 33.915287, 19.414663>,  <28.100655, 33.846004, 19.461790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.491779, 33.915287, 19.414663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092463, 0.147801, 0.984685,
		0.187970, -0.973732, 0.128506,
		0.977813, 0.173209, -0.117816,
		28.785124, 33.967247, 19.379318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.423929, 33.529034, 20.046640>,  <28.100655, 33.846004, 19.461790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.423929, 33.529034, 20.046640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.704647, 33.782612, 19.916655>,  <28.873077, 33.934757, 19.838663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.704647, 33.782612, 19.916655>,  <28.423929, 33.529034, 20.046640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.704647, 33.782612, 19.916655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235639, 0.223908, 0.945695,
		0.672277, -0.740259, 0.007756,
		0.701796, 0.633942, -0.324962,
		28.915186, 33.972794, 19.819166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.145220, 33.243729, 20.340591>,  <28.423929, 33.529034, 20.046640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.145220, 33.243729, 20.340591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.173231, 33.632420, 20.250393>,  <29.190039, 33.865635, 20.196274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.173231, 33.632420, 20.250393>,  <29.145220, 33.243729, 20.340591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.173231, 33.632420, 20.250393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305413, 0.194311, 0.932184,
		0.949641, -0.134150, -0.283169,
		0.070030, 0.971724, -0.225497,
		29.194241, 33.923935, 20.182743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.777527, 33.450294, 20.621412>,  <29.145220, 33.243729, 20.340591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.777527, 33.450294, 20.621412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.564268, 33.785000, 20.571480>,  <29.436314, 33.985825, 20.541521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.564268, 33.785000, 20.571480>,  <29.777527, 33.450294, 20.621412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.564268, 33.785000, 20.571480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233953, 0.287615, 0.928732,
		0.813033, 0.465944, -0.349104,
		-0.533145, 0.836764, -0.124832,
		29.404325, 34.036030, 20.534031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.118216, 34.117813, 20.769283>,  <29.777527, 33.450294, 20.621412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.118216, 34.117813, 20.769283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.729546, 34.195457, 20.823204>,  <29.496344, 34.242043, 20.855556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.729546, 34.195457, 20.823204>,  <30.118216, 34.117813, 20.769283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.729546, 34.195457, 20.823204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191879, 0.315022, 0.929486,
		0.137958, 0.929022, -0.343344,
		-0.971674, 0.194110, 0.134800,
		29.438044, 34.253689, 20.863644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.189413, 34.681702, 21.185604>,  <30.118216, 34.117813, 20.769283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.189413, 34.681702, 21.185604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.803040, 34.584599, 21.221474>,  <29.571215, 34.526337, 21.242996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.803040, 34.584599, 21.221474>,  <30.189413, 34.681702, 21.185604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.803040, 34.584599, 21.221474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031909, 0.455588, 0.889619,
		-0.256815, 0.856451, -0.447814,
		-0.965934, -0.242756, 0.089674,
		29.513260, 34.511772, 21.248375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.866793, 35.258312, 21.383066>,  <30.189413, 34.681702, 21.185604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.866793, 35.258312, 21.383066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.625494, 34.956970, 21.487795>,  <29.480715, 34.776165, 21.550632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.625494, 34.956970, 21.487795>,  <29.866793, 35.258312, 21.383066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.625494, 34.956970, 21.487795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109986, 0.403726, 0.908245,
		-0.789935, 0.519098, -0.326405,
		-0.603246, -0.753354, 0.261824,
		29.444521, 34.730965, 21.566341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.403204, 35.580906, 21.872755>,  <29.866793, 35.258312, 21.383066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.403204, 35.580906, 21.872755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.376871, 35.186878, 21.936390>,  <29.361071, 34.950462, 21.974571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.376871, 35.186878, 21.936390>,  <29.403204, 35.580906, 21.872755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.376871, 35.186878, 21.936390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020960, 0.160764, 0.986770,
		-0.997610, 0.061628, -0.031231,
		-0.065834, -0.985067, 0.159088,
		29.357121, 34.891357, 21.984116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.799461, 35.437328, 22.291439>,  <29.403204, 35.580906, 21.872755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.799461, 35.437328, 22.291439> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.026897, 35.113998, 22.352528>,  <29.163359, 34.920002, 22.389181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.026897, 35.113998, 22.352528>,  <28.799461, 35.437328, 22.291439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.026897, 35.113998, 22.352528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096191, 0.119047, 0.988218,
		-0.816979, -0.576580, -0.010065,
		0.568589, -0.808321, 0.152721,
		29.197474, 34.871502, 22.398344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.480307, 35.078857, 22.887838>,  <28.799461, 35.437328, 22.291439>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.480307, 35.078857, 22.887838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.847570, 34.924809, 22.850611>,  <29.067928, 34.832378, 22.828274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.847570, 34.924809, 22.850611>,  <28.480307, 35.078857, 22.887838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.847570, 34.924809, 22.850611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089582, -0.027026, 0.995613,
		-0.385951, -0.922468, 0.009687,
		0.918159, -0.385126, -0.093067,
		29.123018, 34.809273, 22.822691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.470615, 34.413574, 23.260965>,  <28.480307, 35.078857, 22.887838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.470615, 34.413574, 23.260965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.848324, 34.545132, 23.255568>,  <29.074949, 34.624065, 23.252329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.848324, 34.545132, 23.255568>,  <28.470615, 34.413574, 23.260965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.848324, 34.545132, 23.255568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087187, -0.210370, 0.973726,
		0.317410, -0.920639, -0.227321,
		0.944272, 0.328889, -0.013494,
		29.131605, 34.643799, 23.251520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.837173, 33.982410, 23.644625>,  <28.470615, 34.413574, 23.260965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.837173, 33.982410, 23.644625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.094660, 34.287415, 23.618683>,  <29.249151, 34.470417, 23.603117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.094660, 34.287415, 23.618683>,  <28.837173, 33.982410, 23.644625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.094660, 34.287415, 23.618683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219979, -0.103202, 0.970030,
		0.732966, -0.638691, -0.234169,
		0.643716, 0.762511, -0.064855,
		29.287775, 34.516167, 23.599226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.326241, 33.723774, 24.107216>,  <28.837173, 33.982410, 23.644625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.326241, 33.723774, 24.107216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.345205, 34.121429, 24.068352>,  <29.356585, 34.360023, 24.045033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.345205, 34.121429, 24.068352>,  <29.326241, 33.723774, 24.107216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.345205, 34.121429, 24.068352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090489, 0.101144, 0.990748,
		0.994768, -0.038183, 0.094754,
		0.047414, 0.994139, -0.097160,
		29.359430, 34.419670, 24.039204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.844149, 33.911911, 24.603975>,  <29.326241, 33.723774, 24.107216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.844149, 33.911911, 24.603975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.640108, 34.243633, 24.512714>,  <29.517685, 34.442665, 24.457958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.640108, 34.243633, 24.512714>,  <29.844149, 33.911911, 24.603975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.640108, 34.243633, 24.512714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049549, 0.236483, 0.970372,
		0.858687, 0.506291, -0.079538,
		-0.510100, 0.829304, -0.228151,
		29.487078, 34.492424, 24.444269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.210033, 34.504742, 24.994961>,  <29.844149, 33.911911, 24.603975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.210033, 34.504742, 24.994961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.846678, 34.618446, 24.872307>,  <29.628664, 34.686668, 24.798716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.846678, 34.618446, 24.872307>,  <30.210033, 34.504742, 24.994961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.846678, 34.618446, 24.872307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160363, 0.440421, 0.883353,
		0.386148, 0.851602, -0.354490,
		-0.908390, 0.284258, -0.306634,
		29.574162, 34.703724, 24.780317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.215607, 35.181606, 25.284512>,  <30.210033, 34.504742, 24.994961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.215607, 35.181606, 25.284512> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.847773, 35.035667, 25.226200>,  <29.627071, 34.948105, 25.191214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.847773, 35.035667, 25.226200>,  <30.215607, 35.181606, 25.284512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.847773, 35.035667, 25.226200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245526, 0.243980, 0.938185,
		-0.306726, 0.898533, -0.313939,
		-0.919585, -0.364846, -0.145778,
		29.571898, 34.926212, 25.182467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.796701, 35.704895, 25.660490>,  <30.215607, 35.181606, 25.284512>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.796701, 35.704895, 25.660490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.540674, 35.400856, 25.615665>,  <29.387058, 35.218430, 25.588770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.540674, 35.400856, 25.615665>,  <29.796701, 35.704895, 25.660490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.540674, 35.400856, 25.615665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353133, 0.161506, 0.921527,
		-0.682356, 0.629413, -0.371792,
		-0.640068, -0.760102, -0.112062,
		29.348654, 35.172825, 25.582047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.174341, 35.927860, 26.000467>,  <29.796701, 35.704895, 25.660490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.174341, 35.927860, 26.000467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.167574, 35.529537, 25.964518>,  <29.163513, 35.290543, 25.942947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.167574, 35.529537, 25.964518>,  <29.174341, 35.927860, 26.000467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.167574, 35.529537, 25.964518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237537, -0.083309, 0.967799,
		-0.971231, 0.037723, -0.235132,
		-0.016920, -0.995809, -0.089873,
		29.162498, 35.230793, 25.937555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.525257, 35.794884, 26.320156>,  <29.174341, 35.927860, 26.000467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.525257, 35.794884, 26.320156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.728088, 35.451080, 26.294510>,  <28.849787, 35.244797, 26.279123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.728088, 35.451080, 26.294510>,  <28.525257, 35.794884, 26.320156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.728088, 35.451080, 26.294510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140615, -0.155888, 0.977715,
		-0.850352, -0.486762, -0.199908,
		0.507078, -0.859512, -0.064113,
		28.880213, 35.193226, 26.275276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.092903, 35.242184, 26.452320>,  <28.525257, 35.794884, 26.320156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.092903, 35.242184, 26.452320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.464207, 35.120113, 26.537359>,  <28.686989, 35.046871, 26.588383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.464207, 35.120113, 26.537359>,  <28.092903, 35.242184, 26.452320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.464207, 35.120113, 26.537359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289403, -0.233618, 0.928261,
		-0.233618, -0.923195, -0.305177,
		-0.928261, 0.305177, -0.212598,
		28.742685, 35.028561, 26.601139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.061897, 34.612312, 26.780912>,  <28.092903, 35.242184, 26.452320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.061897, 34.612312, 26.780912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.441832, 34.689163, 26.879622>,  <28.669792, 34.735271, 26.938847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.441832, 34.689163, 26.879622>,  <28.061897, 34.612312, 26.780912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.441832, 34.689163, 26.879622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173620, -0.332373, 0.927030,
		0.260124, -0.923373, -0.282344,
		0.949837, 0.192123, 0.246774,
		28.726784, 34.746799, 26.953653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.348934, 34.038383, 27.238741>,  <28.061897, 34.612312, 26.780912>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.348934, 34.038383, 27.238741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.599306, 34.341866, 27.310946>,  <28.749529, 34.523952, 27.354269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.599306, 34.341866, 27.310946>,  <28.348934, 34.038383, 27.238741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.599306, 34.341866, 27.310946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057469, -0.275703, 0.959523,
		0.777761, -0.590218, -0.216172,
		0.625927, 0.758703, 0.180511,
		28.787085, 34.569477, 27.365099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.998232, 33.807930, 27.477276>,  <28.348934, 34.038383, 27.238741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.998232, 33.807930, 27.477276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.992918, 34.186100, 27.607502>,  <28.989729, 34.413002, 27.685638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.992918, 34.186100, 27.607502>,  <28.998232, 33.807930, 27.477276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.992918, 34.186100, 27.607502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201302, -0.316399, 0.927022,
		0.979439, 0.077854, -0.186112,
		-0.013286, 0.945426, 0.325566,
		28.988932, 34.469727, 27.705172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.543621, 33.856564, 27.904818>,  <28.998232, 33.807930, 27.477276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.543621, 33.856564, 27.904818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.325443, 34.176254, 28.005798>,  <29.194536, 34.368069, 28.066387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.325443, 34.176254, 28.005798>,  <29.543621, 33.856564, 27.904818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.325443, 34.176254, 28.005798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093951, -0.241004, 0.965966,
		0.832866, 0.550598, 0.056366,
		-0.545443, 0.799224, 0.252454,
		29.161810, 34.416023, 28.081535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.029650, 34.187473, 28.382660>,  <29.543621, 33.856564, 27.904818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.029650, 34.187473, 28.382660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.653492, 34.300663, 28.458117>,  <29.427797, 34.368576, 28.503389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.653492, 34.300663, 28.458117>,  <30.029650, 34.187473, 28.382660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.653492, 34.300663, 28.458117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198830, 0.007459, 0.980006,
		0.275908, 0.959099, -0.063278,
		-0.940394, 0.282973, 0.188640,
		29.371374, 34.385555, 28.514708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.116007, 34.679180, 28.923765>,  <30.029650, 34.187473, 28.382660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.116007, 34.679180, 28.923765> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.724844, 34.597527, 28.941788>,  <29.490147, 34.548534, 28.952600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.724844, 34.597527, 28.941788>,  <30.116007, 34.679180, 28.923765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.724844, 34.597527, 28.941788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070492, -0.119098, 0.990377,
		-0.196801, 0.971672, 0.130856,
		-0.977906, -0.204132, 0.045057,
		29.431473, 34.536285, 28.955305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.867235, 34.994286, 29.556477>,  <30.116007, 34.679180, 28.923765>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.867235, 34.994286, 29.556477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.615860, 34.703243, 29.446455>,  <29.465034, 34.528618, 29.380442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.615860, 34.703243, 29.446455>,  <29.867235, 34.994286, 29.556477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.615860, 34.703243, 29.446455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007049, -0.348263, 0.937370,
		-0.777826, 0.591020, 0.213734,
		-0.628440, -0.727605, -0.275054,
		29.427328, 34.484962, 29.363939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.296600, 35.072350, 30.070089>,  <29.867235, 34.994286, 29.556477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.296600, 35.072350, 30.070089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.308897, 34.706730, 29.908316>,  <29.316275, 34.487358, 29.811253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.308897, 34.706730, 29.908316>,  <29.296600, 35.072350, 30.070089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.308897, 34.706730, 29.908316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098455, -0.399887, 0.911261,
		-0.994667, -0.067830, 0.077700,
		0.030739, -0.914051, -0.404432,
		29.318119, 34.432514, 29.786985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.862103, 34.736103, 30.481169>,  <29.296600, 35.072350, 30.070089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.862103, 34.736103, 30.481169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.066107, 34.450844, 30.288790>,  <29.188509, 34.279690, 30.173363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.066107, 34.450844, 30.288790>,  <28.862103, 34.736103, 30.481169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.066107, 34.450844, 30.288790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117845, -0.495929, 0.860330,
		-0.852058, -0.495453, -0.168887,
		0.510009, -0.713148, -0.480947,
		29.219110, 34.236900, 30.144506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.581457, 34.074757, 30.714766>,  <28.862103, 34.736103, 30.481169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.581457, 34.074757, 30.714766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.937910, 33.979912, 30.560022>,  <29.151781, 33.923004, 30.467176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.937910, 33.979912, 30.560022>,  <28.581457, 34.074757, 30.714766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.937910, 33.979912, 30.560022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230542, -0.497737, 0.836127,
		-0.390809, -0.834288, -0.388886,
		0.891133, -0.237112, -0.386858,
		29.205250, 33.908779, 30.443964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.717642, 33.455891, 30.890179>,  <28.581457, 34.074757, 30.714766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.717642, 33.455891, 30.890179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.087494, 33.579376, 30.800957>,  <29.309406, 33.653469, 30.747423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.087494, 33.579376, 30.800957>,  <28.717642, 33.455891, 30.890179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.087494, 33.579376, 30.800957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332623, -0.369264, 0.867759,
		0.185525, -0.876549, -0.444119,
		0.924631, 0.308715, -0.223053,
		29.364883, 33.671989, 30.734041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.229776, 32.924755, 31.044847>,  <28.717642, 33.455891, 30.890179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.229776, 32.924755, 31.044847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.457600, 33.253223, 31.059118>,  <29.594294, 33.450306, 31.067680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.457600, 33.253223, 31.059118>,  <29.229776, 32.924755, 31.044847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.457600, 33.253223, 31.059118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498963, -0.379915, 0.778910,
		0.653175, -0.425834, -0.626121,
		0.569559, 0.821175, 0.035676,
		29.628468, 33.499577, 31.069820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.898935, 32.691948, 31.147089>,  <29.229776, 32.924755, 31.044847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.898935, 32.691948, 31.147089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.888969, 33.070129, 31.277008>,  <29.882990, 33.297039, 31.354959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.888969, 33.070129, 31.277008>,  <29.898935, 32.691948, 31.147089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.888969, 33.070129, 31.277008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442872, -0.280839, 0.851466,
		0.896239, 0.165058, -0.411718,
		-0.024915, 0.945455, 0.324799,
		29.881495, 33.353767, 31.374447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.516018, 32.785736, 31.513958>,  <29.898935, 32.691948, 31.147089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.516018, 32.785736, 31.513958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.274841, 33.074657, 31.649452>,  <30.130135, 33.248009, 31.730749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.274841, 33.074657, 31.649452>,  <30.516018, 32.785736, 31.513958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.274841, 33.074657, 31.649452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386749, -0.106731, 0.915988,
		0.697772, 0.683294, -0.214996,
		-0.602942, 0.722300, 0.338738,
		30.093958, 33.291348, 31.751074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.939943, 33.327847, 31.860147>,  <30.516018, 32.785736, 31.513958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.939943, 33.327847, 31.860147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.565950, 33.318829, 32.001740>,  <30.341555, 33.313419, 32.086697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.565950, 33.318829, 32.001740>,  <30.939943, 33.327847, 31.860147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.565950, 33.318829, 32.001740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348048, -0.250670, 0.903342,
		0.068368, 0.967810, 0.242218,
		-0.934981, -0.022544, 0.353982,
		30.285456, 33.312065, 32.107933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.130651, 34.083633, 31.929899>,  <30.939943, 33.327847, 31.860147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.130651, 34.083633, 31.929899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.214428, 34.226254, 32.294098>,  <31.264694, 34.311825, 32.512619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.214428, 34.226254, 32.294098>,  <31.130651, 34.083633, 31.929899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.214428, 34.226254, 32.294098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.798017, 0.475770, -0.369881,
		-0.565069, 0.804061, -0.184888,
		0.209443, 0.356552, 0.910497,
		31.277260, 34.333218, 32.567245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.940163, 34.887577, 32.075825>,  <31.130651, 34.083633, 31.929899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.940163, 34.887577, 32.075825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.249262, 34.703773, 32.250961>,  <31.434721, 34.593491, 32.356045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.249262, 34.703773, 32.250961>,  <30.940163, 34.887577, 32.075825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.249262, 34.703773, 32.250961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.634310, 0.534560, -0.558476,
		0.022574, 0.709291, 0.704555,
		0.772749, -0.459513, 0.437844,
		31.481087, 34.565918, 32.382313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.452339, 35.400440, 32.278412>,  <30.940163, 34.887577, 32.075825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.452339, 35.400440, 32.278412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.630081, 35.045330, 32.230400>,  <31.736727, 34.832264, 32.201595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.630081, 35.045330, 32.230400>,  <31.452339, 35.400440, 32.278412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.630081, 35.045330, 32.230400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.666562, 0.417156, -0.617799,
		0.598536, 0.194518, 0.777122,
		0.444354, -0.887774, -0.120025,
		31.763388, 34.778999, 32.194393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.079659, 35.591724, 32.127045>,  <31.452339, 35.400440, 32.278412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.079659, 35.591724, 32.127045> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.089760, 35.202686, 32.034599>,  <32.095821, 34.969261, 31.979132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.089760, 35.202686, 32.034599>,  <32.079659, 35.591724, 32.127045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.089760, 35.202686, 32.034599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.725429, 0.176903, -0.665175,
		0.687833, -0.150857, 0.710020,
		0.025258, -0.972598, -0.231115,
		32.097336, 34.910908, 31.965265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.666058, 35.499290, 31.776327>,  <32.079659, 35.591724, 32.127045>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.666058, 35.499290, 31.776327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.478607, 35.167282, 31.655363>,  <32.366138, 34.968075, 31.582785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.478607, 35.167282, 31.655363>,  <32.666058, 35.499290, 31.776327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.478607, 35.167282, 31.655363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511858, 0.023880, -0.858738,
		0.719993, -0.557218, 0.413663,
		-0.468626, -0.830023, -0.302410,
		32.338020, 34.918274, 31.564640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.150703, 34.828491, 31.635099>,  <32.666058, 35.499290, 31.776327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.150703, 34.828491, 31.635099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.818577, 34.830917, 31.412195>,  <32.619301, 34.832375, 31.278454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.818577, 34.830917, 31.412195>,  <33.150703, 34.828491, 31.635099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.818577, 34.830917, 31.412195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553926, -0.100742, -0.826449,
		-0.061148, -0.994894, 0.080291,
		-0.830317, 0.006060, -0.557258,
		32.569481, 34.832737, 31.245018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.299587, 34.394245, 31.181133>,  <33.150703, 34.828491, 31.635099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.299587, 34.394245, 31.181133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.992123, 34.574944, 30.999987>,  <32.807644, 34.683361, 30.891298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.992123, 34.574944, 30.999987>,  <33.299587, 34.394245, 31.181133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.992123, 34.574944, 30.999987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407110, -0.200585, -0.891082,
		-0.493381, -0.869305, -0.029729,
		-0.768659, 0.451746, -0.452867,
		32.761524, 34.710468, 30.864126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.206596, 33.975361, 30.560205>,  <33.299587, 34.394245, 31.181133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.206596, 33.975361, 30.560205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.011711, 34.317253, 30.488588>,  <32.894779, 34.522388, 30.445618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.011711, 34.317253, 30.488588>,  <33.206596, 33.975361, 30.560205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.011711, 34.317253, 30.488588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263344, -0.051679, -0.963317,
		-0.832629, -0.516492, -0.199910,
		-0.487215, 0.854731, -0.179045,
		32.865547, 34.573673, 30.434875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.876694, 33.906460, 29.974613>,  <33.206596, 33.975361, 30.560205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.876694, 33.906460, 29.974613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.922504, 34.303001, 30.000246>,  <32.949993, 34.540924, 30.015625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.922504, 34.303001, 30.000246>,  <32.876694, 33.906460, 29.974613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.922504, 34.303001, 30.000246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274722, 0.030384, -0.961043,
		-0.954679, 0.127672, -0.268866,
		0.114529, 0.991351, 0.064081,
		32.956863, 34.600407, 30.019470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.360336, 34.179493, 29.548321>,  <32.876694, 33.906460, 29.974613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.360336, 34.179493, 29.548321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.628384, 34.476326, 29.554802>,  <32.789211, 34.654427, 29.558691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.628384, 34.476326, 29.554802>,  <32.360336, 34.179493, 29.548321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.628384, 34.476326, 29.554802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112821, 0.123407, -0.985922,
		-0.733633, 0.658853, 0.166419,
		0.670114, 0.742081, 0.016203,
		32.829418, 34.698952, 29.559662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.065491, 34.683647, 29.122503>,  <32.360336, 34.179493, 29.548321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.065491, 34.683647, 29.122503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.456741, 34.765629, 29.136753>,  <32.691490, 34.814816, 29.145304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.456741, 34.765629, 29.136753>,  <32.065491, 34.683647, 29.122503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.456741, 34.765629, 29.136753> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005810, 0.144279, -0.989520,
		-0.207943, 0.968080, 0.139932,
		0.978124, 0.204950, 0.035626,
		32.750179, 34.827114, 29.147442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.171131, 35.328278, 28.721668>,  <32.065491, 34.683647, 29.122503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.171131, 35.328278, 28.721668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.540398, 35.175209, 28.736271>,  <32.761955, 35.083370, 28.745033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.540398, 35.175209, 28.736271>,  <32.171131, 35.328278, 28.721668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.540398, 35.175209, 28.736271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077879, 0.093183, -0.992598,
		0.376435, 0.919174, 0.115825,
		0.923164, -0.382670, 0.036507,
		32.817348, 35.060410, 28.747223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.613075, 35.794136, 28.303278>,  <32.171131, 35.328278, 28.721668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.613075, 35.794136, 28.303278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.855423, 35.476830, 28.327415>,  <33.000832, 35.286446, 28.341898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.855423, 35.476830, 28.327415>,  <32.613075, 35.794136, 28.303278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.855423, 35.476830, 28.327415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301473, 0.158738, -0.940168,
		0.736228, 0.587814, 0.335324,
		0.605873, -0.793269, 0.060343,
		33.037186, 35.238850, 28.345518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.212208, 36.104408, 27.986273>,  <32.613075, 35.794136, 28.303278>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.212208, 36.104408, 27.986273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.210800, 35.704479, 27.993628>,  <33.209957, 35.464520, 27.998041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.210800, 35.704479, 27.993628>,  <33.212208, 36.104408, 27.986273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.210800, 35.704479, 27.993628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122761, -0.018681, -0.992260,
		0.992430, -0.001235, 0.122805,
		-0.003519, -0.999825, 0.018388,
		33.209743, 35.404533, 27.999144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.517929, 35.964272, 27.390471>,  <33.212208, 36.104408, 27.986273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.517929, 35.964272, 27.390471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.351582, 35.610531, 27.475309>,  <33.251774, 35.398289, 27.526213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.351582, 35.610531, 27.475309>,  <33.517929, 35.964272, 27.390471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.351582, 35.610531, 27.475309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147886, -0.164353, -0.975253,
		0.897321, -0.436940, -0.062434,
		-0.415865, -0.884348, 0.212095,
		33.226822, 35.345226, 27.538939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.820560, 35.534489, 26.921722>,  <33.517929, 35.964272, 27.390471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.820560, 35.534489, 26.921722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.483311, 35.347813, 27.028570>,  <33.280960, 35.235809, 27.092678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.483311, 35.347813, 27.028570>,  <33.820560, 35.534489, 26.921722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.483311, 35.347813, 27.028570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180353, -0.222558, -0.958092,
		0.506579, -0.855962, 0.103474,
		-0.843120, -0.466688, 0.267118,
		33.230373, 35.207806, 27.108706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.821491, 34.830334, 26.568470>,  <33.820560, 35.534489, 26.921722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.821491, 34.830334, 26.568470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.442966, 34.938858, 26.638762>,  <33.215851, 35.003971, 26.680937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.442966, 34.938858, 26.638762>,  <33.821491, 34.830334, 26.568470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.442966, 34.938858, 26.638762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259277, -0.312424, -0.913875,
		-0.193039, -0.910376, 0.365995,
		-0.946315, 0.271307, 0.175729,
		33.159073, 35.020252, 26.691481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.475643, 34.308323, 26.269793>,  <33.821491, 34.830334, 26.568470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.475643, 34.308323, 26.269793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.239670, 34.630730, 26.289043>,  <33.098083, 34.824173, 26.300594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.239670, 34.630730, 26.289043>,  <33.475643, 34.308323, 26.269793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.239670, 34.630730, 26.289043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300705, -0.163992, -0.939512,
		-0.749368, -0.568724, 0.339118,
		-0.589936, 0.806015, 0.048128,
		33.062691, 34.872536, 26.303482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.800732, 34.030144, 26.063927>,  <33.475643, 34.308323, 26.269793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.800732, 34.030144, 26.063927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.770504, 34.425816, 26.013641>,  <32.752365, 34.663219, 25.983471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.770504, 34.425816, 26.013641>,  <32.800732, 34.030144, 26.063927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.770504, 34.425816, 26.013641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185745, -0.137832, -0.972883,
		-0.979687, -0.050172, 0.194152,
		-0.075572, 0.989184, -0.125714,
		32.747833, 34.722572, 25.975927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.195736, 34.144863, 25.703808>,  <32.800732, 34.030144, 26.063927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.195736, 34.144863, 25.703808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.395206, 34.488102, 25.654819>,  <32.514889, 34.694046, 25.625427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.395206, 34.488102, 25.654819>,  <32.195736, 34.144863, 25.703808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.395206, 34.488102, 25.654819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272491, 0.021065, -0.961928,
		-0.822844, 0.513061, 0.244328,
		0.498674, 0.858094, -0.122471,
		32.544807, 34.745529, 25.618078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.739267, 34.467972, 25.161057>,  <32.195736, 34.144863, 25.703808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.739267, 34.467972, 25.161057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.093658, 34.653419, 25.156996>,  <32.306293, 34.764687, 25.154560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.093658, 34.653419, 25.156996>,  <31.739267, 34.467972, 25.161057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.093658, 34.653419, 25.156996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066773, 0.105883, -0.992134,
		-0.458896, 0.879686, 0.124767,
		0.885977, 0.463618, -0.010150,
		32.359451, 34.792503, 25.153952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.573978, 35.023678, 24.788406>,  <31.739267, 34.467972, 25.161057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.573978, 35.023678, 24.788406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.969442, 34.966572, 24.769760>,  <32.206718, 34.932308, 24.758574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.969442, 34.966572, 24.769760>,  <31.573978, 35.023678, 24.788406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.969442, 34.966572, 24.769760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010738, 0.242396, -0.970118,
		0.149799, 0.959616, 0.238114,
		0.988658, -0.142766, -0.046615,
		32.266041, 34.923740, 24.755775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.757700, 35.606213, 24.509169>,  <31.573978, 35.023678, 24.788406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.757700, 35.606213, 24.509169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.028770, 35.322803, 24.430435>,  <32.191414, 35.152756, 24.383196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.028770, 35.322803, 24.430435>,  <31.757700, 35.606213, 24.509169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.028770, 35.322803, 24.430435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063345, 0.210427, -0.975555,
		0.732626, 0.673580, 0.097720,
		0.677677, -0.708527, -0.196832,
		32.232075, 35.110245, 24.371386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.067612, 35.805233, 23.908915>,  <31.757700, 35.606213, 24.509169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.067612, 35.805233, 23.908915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.199677, 35.427887, 23.921871>,  <32.278915, 35.201477, 23.929646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.199677, 35.427887, 23.921871>,  <32.067612, 35.805233, 23.908915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.199677, 35.427887, 23.921871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136874, -0.081799, -0.987205,
		0.933949, 0.321502, -0.156129,
		0.330160, -0.943369, 0.032391,
		32.298725, 35.144875, 23.931589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.475639, 35.676064, 23.277000>,  <32.067612, 35.805233, 23.908915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.475639, 35.676064, 23.277000> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.374107, 35.315426, 23.417110>,  <32.313190, 35.099041, 23.501177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.374107, 35.315426, 23.417110>,  <32.475639, 35.676064, 23.277000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.374107, 35.315426, 23.417110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215117, -0.300445, -0.929224,
		0.943025, -0.311212, -0.117688,
		-0.253827, -0.901598, 0.350274,
		32.297958, 35.044945, 23.522192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.769161, 35.268799, 22.890623>,  <32.475639, 35.676064, 23.277000>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.769161, 35.268799, 22.890623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.461052, 35.059757, 23.036808>,  <32.276188, 34.934330, 23.124519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.461052, 35.059757, 23.036808>,  <32.769161, 35.268799, 22.890623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.461052, 35.059757, 23.036808> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278158, -0.240364, -0.929975,
		0.573856, -0.817990, 0.039778,
		-0.770271, -0.522607, 0.365464,
		32.229969, 34.902977, 23.146448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.802208, 34.560867, 22.693672>,  <32.769161, 35.268799, 22.890623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.802208, 34.560867, 22.693672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.415047, 34.570541, 22.793736>,  <32.182751, 34.576344, 22.853773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.415047, 34.570541, 22.793736>,  <32.802208, 34.560867, 22.693672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.415047, 34.570541, 22.793736> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232442, -0.464642, -0.854446,
		0.095571, -0.885168, 0.455350,
		-0.967903, 0.024182, 0.250156,
		32.124676, 34.577797, 22.868782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.615704, 33.914001, 22.515026>,  <32.802208, 34.560867, 22.693672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.615704, 33.914001, 22.515026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.278225, 34.125301, 22.553240>,  <32.075737, 34.252083, 22.576168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.278225, 34.125301, 22.553240>,  <32.615704, 33.914001, 22.515026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.278225, 34.125301, 22.553240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372432, -0.447819, -0.812867,
		-0.386617, -0.721392, 0.574561,
		-0.843695, 0.528253, 0.095535,
		32.025116, 34.283779, 22.581900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.057934, 33.340935, 22.615702>,  <32.615704, 33.914001, 22.515026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.057934, 33.340935, 22.615702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.913553, 33.686436, 22.475048>,  <31.826925, 33.893738, 22.390656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.913553, 33.686436, 22.475048>,  <32.057934, 33.340935, 22.615702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.913553, 33.686436, 22.475048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258217, -0.454875, -0.852298,
		-0.896124, -0.216841, 0.387223,
		-0.360951, 0.863753, -0.351633,
		31.805267, 33.945560, 22.369558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.561506, 33.141205, 22.208271>,  <32.057934, 33.340935, 22.615702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.561506, 33.141205, 22.208271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.617443, 33.519569, 22.091175>,  <31.651005, 33.746590, 22.020918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.617443, 33.519569, 22.091175>,  <31.561506, 33.141205, 22.208271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.617443, 33.519569, 22.091175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201679, -0.262239, -0.943693,
		-0.969417, 0.191007, 0.154099,
		0.139842, 0.945911, -0.292741,
		31.659395, 33.803341, 22.003353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.924286, 33.299377, 21.847256>,  <31.561506, 33.141205, 22.208271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.924286, 33.299377, 21.847256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.225939, 33.529938, 21.721371>,  <31.406931, 33.668274, 21.645840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.225939, 33.529938, 21.721371>,  <30.924286, 33.299377, 21.847256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.225939, 33.529938, 21.721371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133469, -0.334692, -0.932828,
		-0.643016, 0.745480, -0.175470,
		0.754133, 0.576403, -0.314711,
		31.452179, 33.702858, 21.626957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.670649, 33.590683, 21.116077>,  <30.924286, 33.299377, 21.847256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.670649, 33.590683, 21.116077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.067556, 33.636356, 21.135504>,  <31.305702, 33.663761, 21.147160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.067556, 33.636356, 21.135504>,  <30.670649, 33.590683, 21.116077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.067556, 33.636356, 21.135504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104857, -0.562319, -0.820245,
		-0.066351, 0.818998, -0.569947,
		0.992271, 0.114187, 0.048568,
		31.365238, 33.670612, 21.150074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.841221, 33.891632, 20.431528>,  <30.670649, 33.590683, 21.116077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.841221, 33.891632, 20.431528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.163342, 33.703571, 20.575998>,  <31.356613, 33.590736, 20.662682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.163342, 33.703571, 20.575998>,  <30.841221, 33.891632, 20.431528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.163342, 33.703571, 20.575998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049819, -0.553385, -0.831435,
		0.590771, 0.687548, -0.422218,
		0.805300, -0.470153, 0.361176,
		31.404932, 33.562527, 20.684351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.350168, 34.024246, 20.060925>,  <30.841221, 33.891632, 20.431528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.350168, 34.024246, 20.060925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.499969, 33.688183, 20.217833>,  <31.589849, 33.486546, 20.311977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.499969, 33.688183, 20.217833>,  <31.350168, 34.024246, 20.060925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.499969, 33.688183, 20.217833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416240, -0.225705, -0.880796,
		0.828549, 0.493139, 0.265182,
		0.374502, -0.840162, 0.392271,
		31.612320, 33.436134, 20.335514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.020691, 34.055248, 19.813457>,  <31.350168, 34.024246, 20.060925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.020691, 34.055248, 19.813457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.946459, 33.679649, 19.929287>,  <31.901920, 33.454292, 19.998785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.946459, 33.679649, 19.929287>,  <32.020691, 34.055248, 19.813457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.946459, 33.679649, 19.929287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211106, -0.325909, -0.921530,
		0.959684, -0.109887, 0.258710,
		-0.185580, -0.938993, 0.289572,
		31.890785, 33.397953, 20.016159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.558323, 33.600338, 19.508650>,  <32.020691, 34.055248, 19.813457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.558323, 33.600338, 19.508650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.286907, 33.320164, 19.597160>,  <32.124058, 33.152058, 19.650267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.286907, 33.320164, 19.597160>,  <32.558323, 33.600338, 19.508650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.286907, 33.320164, 19.597160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173034, -0.445173, -0.878567,
		0.713890, -0.557857, 0.423269,
		-0.678543, -0.700440, 0.221277,
		32.083344, 33.110031, 19.663544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.889297, 32.938755, 19.317873>,  <32.558323, 33.600338, 19.508650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.889297, 32.938755, 19.317873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.493874, 32.879265, 19.327856>,  <32.256618, 32.843571, 19.333845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.493874, 32.879265, 19.327856>,  <32.889297, 32.938755, 19.317873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.493874, 32.879265, 19.327856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058460, -0.530479, -0.845680,
		0.139014, -0.834549, 0.533107,
		-0.988563, -0.148727, 0.024956,
		32.197304, 32.834648, 19.335342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.805702, 32.217186, 19.092762>,  <32.889297, 32.938755, 19.317873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.805702, 32.217186, 19.092762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.478973, 32.433399, 19.012133>,  <32.282936, 32.563126, 18.963755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.478973, 32.433399, 19.012133>,  <32.805702, 32.217186, 19.092762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.478973, 32.433399, 19.012133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145565, -0.531220, -0.834635,
		-0.558233, -0.652400, 0.512592,
		-0.816815, 0.540536, -0.201578,
		32.233929, 32.595558, 18.951660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.299850, 31.690760, 18.837582>,  <32.805702, 32.217186, 19.092762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.299850, 31.690760, 18.837582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.173058, 32.051914, 18.721432>,  <32.096981, 32.268608, 18.651743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.173058, 32.051914, 18.721432>,  <32.299850, 31.690760, 18.837582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.173058, 32.051914, 18.721432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332734, -0.392568, -0.857426,
		-0.888149, -0.175173, 0.424859,
		-0.316984, 0.902887, -0.290373,
		32.077961, 32.322781, 18.634319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.373726, 31.159115, 19.197470>,  <32.299850, 31.690760, 18.837582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.373726, 31.159115, 19.197470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.588207, 30.889109, 18.994751>,  <32.716896, 30.727104, 18.873119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.588207, 30.889109, 18.994751>,  <32.373726, 31.159115, 19.197470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.588207, 30.889109, 18.994751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.757264, 0.119459, 0.642092,
		-0.372880, -0.728068, 0.575219,
		0.536202, -0.675015, -0.506796,
		32.749069, 30.686604, 18.842712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.412827, 30.645342, 19.637922>,  <32.373726, 31.159115, 19.197470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.412827, 30.645342, 19.637922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.705120, 30.618013, 19.366228>,  <32.880497, 30.601616, 19.203213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.705120, 30.618013, 19.366228>,  <32.412827, 30.645342, 19.637922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.705120, 30.618013, 19.366228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.678556, -0.036262, 0.733653,
		-0.074755, -0.997004, 0.019863,
		0.730734, -0.068323, -0.679234,
		32.924339, 30.597517, 19.162458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.901505, 30.031433, 19.794706>,  <32.412827, 30.645342, 19.637922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.901505, 30.031433, 19.794706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.120144, 30.280806, 19.571077>,  <33.251328, 30.430429, 19.436901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.120144, 30.280806, 19.571077>,  <32.901505, 30.031433, 19.794706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.120144, 30.280806, 19.571077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.740159, -0.047432, 0.670757,
		0.391653, -0.780438, -0.487365,
		0.546601, 0.623432, -0.559071,
		33.284122, 30.467834, 19.403357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.503189, 29.754202, 19.918741>,  <32.901505, 30.031433, 19.794706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.503189, 29.754202, 19.918741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.582104, 30.125019, 19.791199>,  <33.629452, 30.347509, 19.714674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.582104, 30.125019, 19.791199>,  <33.503189, 29.754202, 19.918741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.582104, 30.125019, 19.791199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469880, 0.196037, 0.860687,
		0.860402, -0.319625, -0.396924,
		0.197286, 0.927043, -0.318856,
		33.641289, 30.403131, 19.695541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.219368, 29.845850, 20.157930>,  <33.503189, 29.754202, 19.918741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.219368, 29.845850, 20.157930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.054852, 30.198839, 20.066650>,  <33.956142, 30.410633, 20.011883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.054852, 30.198839, 20.066650>,  <34.219368, 29.845850, 20.157930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.054852, 30.198839, 20.066650> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405525, 0.401372, 0.821249,
		0.816325, 0.245234, -0.522947,
		-0.411295, 0.882474, -0.228202,
		33.931461, 30.463581, 19.998190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.778355, 30.301788, 20.182964>,  <34.219368, 29.845850, 20.157930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.778355, 30.301788, 20.182964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.447304, 30.522068, 20.226358>,  <34.248672, 30.654236, 20.252394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.447304, 30.522068, 20.226358>,  <34.778355, 30.301788, 20.182964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.447304, 30.522068, 20.226358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322063, 0.307643, 0.895338,
		0.459686, 0.775943, -0.431972,
		-0.827625, 0.550698, 0.108484,
		34.199017, 30.687277, 20.258904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.043579, 30.916079, 20.419655>,  <34.778355, 30.301788, 20.182964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.043579, 30.916079, 20.419655> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.655815, 30.940418, 20.514771>,  <34.423157, 30.955021, 20.571840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.655815, 30.940418, 20.514771>,  <35.043579, 30.916079, 20.419655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.655815, 30.940418, 20.514771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245097, 0.291948, 0.924497,
		-0.013168, 0.954497, -0.297930,
		-0.969409, 0.060848, 0.237788,
		34.364994, 30.958673, 20.586107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.944530, 31.630524, 20.640373>,  <35.043579, 30.916079, 20.419655>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.944530, 31.630524, 20.640373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.644787, 31.406111, 20.781057>,  <34.464939, 31.271463, 20.865467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.644787, 31.406111, 20.781057>,  <34.944530, 31.630524, 20.640373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.644787, 31.406111, 20.781057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102352, 0.426633, 0.898615,
		-0.654202, 0.709387, -0.262280,
		-0.749363, -0.561030, 0.351711,
		34.419979, 31.237803, 20.886570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.410538, 32.133224, 20.954653>,  <34.944530, 31.630524, 20.640373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.410538, 32.133224, 20.954653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.339718, 31.769848, 21.106121>,  <34.297226, 31.551823, 21.197002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.339718, 31.769848, 21.106121>,  <34.410538, 32.133224, 20.954653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.339718, 31.769848, 21.106121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072286, 0.395710, 0.915526,
		-0.981544, 0.134721, -0.135727,
		-0.177049, -0.908440, 0.378669,
		34.286602, 31.497316, 21.219721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.838459, 32.100449, 21.360680>,  <34.410538, 32.133224, 20.954653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.838459, 32.100449, 21.360680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.046917, 31.791073, 21.505016>,  <34.171989, 31.605448, 21.591619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.046917, 31.791073, 21.505016>,  <33.838459, 32.100449, 21.360680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.046917, 31.791073, 21.505016> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052215, 0.450897, 0.891047,
		-0.851873, -0.445519, 0.275366,
		0.521140, -0.773437, 0.360844,
		34.203259, 31.559042, 21.613270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.598042, 32.039795, 21.996292>,  <33.838459, 32.100449, 21.360680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.598042, 32.039795, 21.996292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.916275, 31.801020, 22.037676>,  <34.107216, 31.657753, 22.062506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.916275, 31.801020, 22.037676>,  <33.598042, 32.039795, 21.996292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.916275, 31.801020, 22.037676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145900, 0.354523, 0.923595,
		-0.588011, -0.719704, 0.369147,
		0.795586, -0.596942, 0.103458,
		34.154949, 31.621937, 22.068714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.492939, 31.729433, 22.616001>,  <33.598042, 32.039795, 21.996292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.492939, 31.729433, 22.616001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.884064, 31.695568, 22.539347>,  <34.118736, 31.675249, 22.493355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.884064, 31.695568, 22.539347>,  <33.492939, 31.729433, 22.616001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.884064, 31.695568, 22.539347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203685, 0.170078, 0.964150,
		-0.049034, -0.981787, 0.183548,
		0.977808, -0.084662, -0.191636,
		34.177406, 31.670170, 22.481855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.731377, 31.252853, 23.136391>,  <33.492939, 31.729433, 22.616001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.731377, 31.252853, 23.136391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.047028, 31.461369, 23.006441>,  <34.236416, 31.586477, 22.928471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.047028, 31.461369, 23.006441>,  <33.731377, 31.252853, 23.136391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.047028, 31.461369, 23.006441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226884, 0.244127, 0.942828,
		0.570795, -0.817717, 0.074375,
		0.789124, 0.521288, -0.324874,
		34.283764, 31.617754, 22.908979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.281555, 31.014072, 23.540272>,  <33.731377, 31.252853, 23.136391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.281555, 31.014072, 23.540272> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.383842, 31.373592, 23.397858>,  <34.445217, 31.589304, 23.312408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.383842, 31.373592, 23.397858>,  <34.281555, 31.014072, 23.540272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.383842, 31.373592, 23.397858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183874, 0.316340, 0.930655,
		0.949103, -0.303454, -0.084371,
		0.255721, 0.898802, -0.356037,
		34.460560, 31.643232, 23.291046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.940811, 31.155640, 23.854723>,  <34.281555, 31.014072, 23.540272>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.940811, 31.155640, 23.854723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.775627, 31.508894, 23.765697>,  <34.676517, 31.720846, 23.712282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.775627, 31.508894, 23.765697>,  <34.940811, 31.155640, 23.854723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.775627, 31.508894, 23.765697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304749, 0.364283, 0.880015,
		0.858248, 0.295587, -0.419570,
		-0.412964, 0.883134, -0.222565,
		34.651737, 31.773834, 23.698929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.448071, 31.760323, 24.001226>,  <34.940811, 31.155640, 23.854723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.448071, 31.760323, 24.001226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.093590, 31.942533, 23.967415>,  <34.880901, 32.051861, 23.947128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.093590, 31.942533, 23.967415>,  <35.448071, 31.760323, 24.001226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.093590, 31.942533, 23.967415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212808, 0.562288, 0.799090,
		0.411537, 0.690165, -0.595239,
		-0.886200, 0.455526, -0.084530,
		34.827728, 32.079193, 23.942057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.559692, 32.423840, 24.223228>,  <35.448071, 31.760323, 24.001226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.559692, 32.423840, 24.223228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.164059, 32.389061, 24.270803>,  <34.926678, 32.368195, 24.299349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.164059, 32.389061, 24.270803>,  <35.559692, 32.423840, 24.223228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.164059, 32.389061, 24.270803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083987, 0.330502, 0.940061,
		-0.121044, 0.939792, -0.319593,
		-0.989088, -0.086947, 0.118936,
		34.867332, 32.362976, 24.306484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.326122, 33.054565, 24.597540>,  <35.559692, 32.423840, 24.223228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.326122, 33.054565, 24.597540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.038673, 32.785980, 24.669893>,  <34.866203, 32.624828, 24.713305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.038673, 32.785980, 24.669893>,  <35.326122, 33.054565, 24.597540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.038673, 32.785980, 24.669893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001877, 0.258236, 0.966080,
		-0.695401, 0.694583, -0.184313,
		-0.718619, -0.671467, 0.180881,
		34.823086, 32.584541, 24.724157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.803093, 33.361530, 25.002016>,  <35.326122, 33.054565, 24.597540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.803093, 33.361530, 25.002016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.693119, 32.982494, 25.067125>,  <34.627136, 32.755074, 25.106190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.693119, 32.982494, 25.067125>,  <34.803093, 33.361530, 25.002016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.693119, 32.982494, 25.067125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102147, 0.197124, 0.975043,
		-0.956022, 0.251444, -0.150989,
		-0.274932, -0.947586, 0.162771,
		34.610638, 32.698219, 25.115957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.271313, 33.357841, 25.382053>,  <34.803093, 33.361530, 25.002016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.271313, 33.357841, 25.382053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.396126, 32.987122, 25.465649>,  <34.471016, 32.764690, 25.515806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.396126, 32.987122, 25.465649>,  <34.271313, 33.357841, 25.382053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.396126, 32.987122, 25.465649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217074, 0.144604, 0.965385,
		-0.924940, -0.346599, -0.156063,
		0.312034, -0.926801, 0.208987,
		34.489735, 32.709080, 25.528345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.826954, 33.137447, 25.870710>,  <34.271313, 33.357841, 25.382053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.826954, 33.137447, 25.870710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.120670, 32.869324, 25.913609>,  <34.296902, 32.708450, 25.939348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.120670, 32.869324, 25.913609>,  <33.826954, 33.137447, 25.870710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.120670, 32.869324, 25.913609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159153, -0.016410, 0.987117,
		-0.659914, -0.741900, -0.118732,
		0.734291, -0.670309, 0.107246,
		34.340958, 32.668232, 25.945782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.540539, 32.561413, 26.226280>,  <33.826954, 33.137447, 25.870710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.540539, 32.561413, 26.226280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.934811, 32.585316, 26.289347>,  <34.171375, 32.599659, 26.327187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.934811, 32.585316, 26.289347>,  <33.540539, 32.561413, 26.226280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.934811, 32.585316, 26.289347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154743, -0.050786, 0.986649,
		0.066968, -0.996920, -0.040812,
		0.985683, 0.059759, 0.157668,
		34.230515, 32.603245, 26.336647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.770985, 32.013912, 26.768091>,  <33.540539, 32.561413, 26.226280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.770985, 32.013912, 26.768091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.085403, 32.260750, 26.753593>,  <34.274055, 32.408852, 26.744894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.085403, 32.260750, 26.753593>,  <33.770985, 32.013912, 26.768091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.085403, 32.260750, 26.753593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062556, -0.021078, 0.997819,
		0.614989, -0.786603, -0.055171,
		0.786051, 0.617099, -0.036244,
		34.321220, 32.445881, 26.742720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.222736, 31.777918, 27.303185>,  <33.770985, 32.013912, 26.768091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.222736, 31.777918, 27.303185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.342072, 32.155247, 27.245035>,  <34.413673, 32.381645, 27.210146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.342072, 32.155247, 27.245035>,  <34.222736, 31.777918, 27.303185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.342072, 32.155247, 27.245035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280083, 0.059078, 0.958156,
		0.912440, -0.326572, -0.246584,
		0.298339, 0.943324, -0.145372,
		34.431572, 32.438244, 27.201424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.654793, 31.948421, 27.891397>,  <34.222736, 31.777918, 27.303185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.654793, 31.948421, 27.891397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.611061, 32.325905, 27.766520>,  <34.584824, 32.552395, 27.691593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.611061, 32.325905, 27.766520>,  <34.654793, 31.948421, 27.891397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.611061, 32.325905, 27.766520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387021, 0.329706, 0.861109,
		0.915567, -0.026683, -0.401280,
		-0.109327, 0.943707, -0.312194,
		34.578262, 32.609016, 27.672861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.259125, 32.269894, 27.946064>,  <34.654793, 31.948421, 27.891397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.259125, 32.269894, 27.946064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.974537, 32.550343, 27.964979>,  <34.803783, 32.718613, 27.976328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.974537, 32.550343, 27.964979>,  <35.259125, 32.269894, 27.946064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.974537, 32.550343, 27.964979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410807, 0.360386, 0.837472,
		0.570130, 0.615262, -0.544430,
		-0.711470, 0.701124, 0.047287,
		34.761097, 32.760681, 27.979166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.596409, 32.831459, 28.149721>,  <35.259125, 32.269894, 27.946064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.596409, 32.831459, 28.149721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.226139, 32.969734, 28.211199>,  <35.003975, 33.052700, 28.248085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.226139, 32.969734, 28.211199>,  <35.596409, 32.831459, 28.149721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.226139, 32.969734, 28.211199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339997, 0.582022, 0.738683,
		0.165901, 0.736038, -0.656297,
		-0.925678, 0.345687, 0.153693,
		34.948437, 33.073441, 28.257307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.627747, 33.583050, 28.298094>,  <35.596409, 32.831459, 28.149721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.627747, 33.583050, 28.298094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.274551, 33.489040, 28.460623>,  <35.062634, 33.432636, 28.558140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.274551, 33.489040, 28.460623>,  <35.627747, 33.583050, 28.298094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.274551, 33.489040, 28.460623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248296, 0.500747, 0.829217,
		-0.398350, 0.833076, -0.383798,
		-0.882987, -0.235023, 0.406322,
		35.009655, 33.418533, 28.582520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.406418, 34.136890, 28.704689>,  <35.627747, 33.583050, 28.298094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.406418, 34.136890, 28.704689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.197212, 33.841465, 28.874857>,  <35.071690, 33.664211, 28.976957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.197212, 33.841465, 28.874857>,  <35.406418, 34.136890, 28.704689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.197212, 33.841465, 28.874857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234206, 0.355383, 0.904903,
		-0.819515, 0.572913, -0.012894,
		-0.523013, -0.738562, 0.425422,
		35.040310, 33.619896, 29.002483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.147930, 34.356857, 29.252220>,  <35.406418, 34.136890, 28.704689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.147930, 34.356857, 29.252220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.114635, 33.973785, 29.362436>,  <35.094658, 33.743942, 29.428566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.114635, 33.973785, 29.362436>,  <35.147930, 34.356857, 29.252220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.114635, 33.973785, 29.362436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269863, 0.244506, 0.931338,
		-0.959294, 0.151883, 0.238089,
		-0.083240, -0.957678, 0.275541,
		35.089664, 33.686481, 29.445099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.778492, 34.421211, 29.862179>,  <35.147930, 34.356857, 29.252220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.778492, 34.421211, 29.862179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.980301, 34.076321, 29.880178>,  <35.101387, 33.869389, 29.890978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.980301, 34.076321, 29.880178>,  <34.778492, 34.421211, 29.862179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.980301, 34.076321, 29.880178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132907, 0.129058, 0.982690,
		-0.853107, -0.489810, 0.179709,
		0.504524, -0.862224, 0.045001,
		35.131657, 33.817654, 29.893679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.714066, 34.170074, 30.579809>,  <34.778492, 34.421211, 29.862179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.714066, 34.170074, 30.579809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.018925, 33.936935, 30.467081>,  <35.201839, 33.797050, 30.399445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.018925, 33.936935, 30.467081>,  <34.714066, 34.170074, 30.579809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.018925, 33.936935, 30.467081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381619, 0.052811, 0.922810,
		-0.522976, -0.810862, 0.262676,
		0.762144, -0.582850, -0.281821,
		35.247566, 33.762081, 30.382534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.792137, 33.663139, 31.031763>,  <34.714066, 34.170074, 30.579809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.792137, 33.663139, 31.031763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.158901, 33.623146, 30.877220>,  <35.378960, 33.599152, 30.784494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.158901, 33.623146, 30.877220>,  <34.792137, 33.663139, 31.031763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.158901, 33.623146, 30.877220> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367738, -0.164425, 0.915277,
		-0.155027, -0.981310, -0.114002,
		0.916916, -0.099970, -0.386356,
		35.433975, 33.593151, 30.761312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.964455, 32.978832, 31.137669>,  <34.792137, 33.663139, 31.031763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.964455, 32.978832, 31.137669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.279564, 33.223747, 31.110777>,  <35.468628, 33.370697, 31.094643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.279564, 33.223747, 31.110777>,  <34.964455, 32.978832, 31.137669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.279564, 33.223747, 31.110777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211660, -0.166582, 0.963042,
		0.578462, -0.772885, -0.260826,
		0.787770, 0.612290, -0.067227,
		35.515896, 33.407433, 31.090609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.486229, 32.631618, 31.445642>,  <34.964455, 32.978832, 31.137669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.486229, 32.631618, 31.445642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.614403, 33.010273, 31.431732>,  <35.691307, 33.237465, 31.423386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.614403, 33.010273, 31.431732>,  <35.486229, 32.631618, 31.445642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.614403, 33.010273, 31.431732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143322, -0.012161, 0.989601,
		0.936367, -0.322084, -0.139570,
		0.320432, 0.946633, -0.034774,
		35.710533, 33.294262, 31.421299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.059338, 32.597408, 31.864347>,  <35.486229, 32.631618, 31.445642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.059338, 32.597408, 31.864347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.929867, 32.975845, 31.859579>,  <35.852184, 33.202908, 31.856718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.929867, 32.975845, 31.859579>,  <36.059338, 32.597408, 31.864347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.929867, 32.975845, 31.859579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109239, 0.049881, 0.992763,
		0.939839, 0.320036, -0.119495,
		-0.323680, 0.946092, -0.011920,
		35.832764, 33.259674, 31.856003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.480057, 32.986134, 32.345497>,  <36.059338, 32.597408, 31.864347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.480057, 32.986134, 32.345497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.159477, 33.219685, 32.293697>,  <35.967129, 33.359814, 32.262615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.159477, 33.219685, 32.293697>,  <36.480057, 32.986134, 32.345497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.159477, 33.219685, 32.293697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083959, 0.324229, 0.942245,
		0.592145, 0.744286, -0.308873,
		-0.801446, 0.583879, -0.129501,
		35.919044, 33.394848, 32.254848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.651943, 33.556667, 32.676212>,  <36.480057, 32.986134, 32.345497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.651943, 33.556667, 32.676212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.252666, 33.577324, 32.663898>,  <36.013100, 33.589718, 32.656509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.252666, 33.577324, 32.663898>,  <36.651943, 33.556667, 32.676212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.252666, 33.577324, 32.663898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009630, 0.368028, 0.929765,
		0.059345, 0.928379, -0.366865,
		-0.998191, 0.051644, -0.030781,
		35.953209, 33.592815, 32.654663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.574574, 34.251762, 33.014481>,  <36.651943, 33.556667, 32.676212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.574574, 34.251762, 33.014481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.244637, 34.025620, 33.013374>,  <36.046673, 33.889935, 33.012711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.244637, 34.025620, 33.013374>,  <36.574574, 34.251762, 33.014481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.244637, 34.025620, 33.013374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182756, 0.262005, 0.947604,
		-0.535007, 0.782131, -0.319435,
		-0.824844, -0.565354, -0.002764,
		35.997185, 33.856014, 33.012547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.143154, 34.659496, 33.224693>,  <36.574574, 34.251762, 33.014481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.143154, 34.659496, 33.224693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.961639, 34.311005, 33.299564>,  <35.852730, 34.101910, 33.344486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.961639, 34.311005, 33.299564>,  <36.143154, 34.659496, 33.224693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.961639, 34.311005, 33.299564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321183, 0.355838, 0.877622,
		-0.831215, 0.338136, -0.441300,
		-0.453787, -0.871231, 0.187174,
		35.825504, 34.049637, 33.355717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.467297, 34.763107, 33.493679>,  <36.143154, 34.659496, 33.224693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.467297, 34.763107, 33.493679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.594330, 34.417542, 33.650028>,  <35.670551, 34.210201, 33.743839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.594330, 34.417542, 33.650028>,  <35.467297, 34.763107, 33.493679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.594330, 34.417542, 33.650028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206649, 0.339251, 0.917717,
		-0.925438, -0.372228, -0.070787,
		0.317586, -0.863918, 0.390876,
		35.689606, 34.158367, 33.767292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.897541, 35.128124, 34.057762>,  <35.467297, 34.763107, 33.493679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.897541, 35.128124, 34.057762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.630611, 35.382324, 34.213104>,  <35.470455, 35.534843, 34.306309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.630611, 35.382324, 34.213104>,  <35.897541, 35.128124, 34.057762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.630611, 35.382324, 34.213104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026452, 0.500896, -0.865103,
		-0.744301, -0.587574, -0.317448,
		-0.667320, 0.635499, 0.388360,
		35.430416, 35.572975, 34.329613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.570034, 34.612431, 33.979076>,  <35.897541, 35.128124, 34.057762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.570034, 34.612431, 33.979076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.775547, 34.273972, 33.922424>,  <36.898853, 34.070896, 33.888435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.775547, 34.273972, 33.922424>,  <36.570034, 34.612431, 33.979076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.775547, 34.273972, 33.922424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341689, -0.353242, 0.870901,
		-0.786944, -0.399057, -0.470609,
		0.513778, -0.846152, -0.141628,
		36.929680, 34.020126, 33.879936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.188557, 34.044487, 34.077610>,  <36.570034, 34.612431, 33.979076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.188557, 34.044487, 34.077610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.570866, 34.006824, 34.189060>,  <36.800251, 33.984226, 34.255932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.570866, 34.006824, 34.189060>,  <36.188557, 34.044487, 34.077610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.570866, 34.006824, 34.189060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289816, -0.140326, 0.946739,
		-0.050042, -0.985618, -0.161408,
		0.955774, -0.094156, 0.278625,
		36.857597, 33.978577, 34.272648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.273445, 33.571747, 34.566414>,  <36.188557, 34.044487, 34.077610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.273445, 33.571747, 34.566414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.589870, 33.804951, 34.640522>,  <36.779724, 33.944874, 34.684986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.589870, 33.804951, 34.640522>,  <36.273445, 33.571747, 34.566414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.589870, 33.804951, 34.640522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247312, 0.027791, 0.968537,
		0.559514, -0.811993, 0.166169,
		0.791063, 0.583006, 0.185266,
		36.827190, 33.979851, 34.696102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.724281, 33.287224, 35.085400>,  <36.273445, 33.571747, 34.566414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.724281, 33.287224, 35.085400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.783772, 33.682449, 35.101494>,  <36.819466, 33.919582, 35.111149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.783772, 33.682449, 35.101494>,  <36.724281, 33.287224, 35.085400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.783772, 33.682449, 35.101494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240320, -0.003354, 0.970688,
		0.959233, -0.154035, 0.236951,
		0.148725, 0.988060, 0.040235,
		36.828388, 33.978867, 35.113564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.119331, 33.447544, 35.605675>,  <36.724281, 33.287224, 35.085400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.119331, 33.447544, 35.605675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.892651, 33.769733, 35.536327>,  <36.756641, 33.963047, 35.494717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.892651, 33.769733, 35.536327>,  <37.119331, 33.447544, 35.605675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.892651, 33.769733, 35.536327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343850, -0.039985, 0.938173,
		0.748742, 0.591280, 0.299622,
		-0.566704, 0.805474, -0.173373,
		36.722641, 34.011375, 35.484314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.710464, 33.539513, 35.241344>,  <37.119331, 33.447544, 35.605675>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.710464, 33.539513, 35.241344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.607594, 33.793644, 35.532612>,  <37.545872, 33.946121, 35.707371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.607594, 33.793644, 35.532612>,  <37.710464, 33.539513, 35.241344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.607594, 33.793644, 35.532612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.761032, -0.331228, 0.557780,
		0.595559, 0.697604, -0.398318,
		-0.257175, 0.635323, 0.728165,
		37.530441, 33.984241, 35.751060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.244553, 33.704517, 35.604229>,  <37.710464, 33.539513, 35.241344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.244553, 33.704517, 35.604229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.011246, 33.867451, 35.885338>,  <37.871262, 33.965210, 36.054001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.011246, 33.867451, 35.885338>,  <38.244553, 33.704517, 35.604229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.011246, 33.867451, 35.885338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.731959, -0.111559, 0.672154,
		0.352188, 0.906442, -0.233081,
		-0.583266, 0.407330, 0.702768,
		37.836266, 33.989651, 36.096169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.563545, 34.178852, 35.883446>,  <38.244553, 33.704517, 35.604229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.563545, 34.178852, 35.883446> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.295815, 34.080807, 36.163994>,  <38.135174, 34.021980, 36.332321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.295815, 34.080807, 36.163994>,  <38.563545, 34.178852, 35.883446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.295815, 34.080807, 36.163994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.728653, -0.032167, 0.684127,
		-0.145126, 0.968961, 0.200131,
		-0.669331, -0.245110, 0.701368,
		38.095016, 34.007275, 36.374405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.584480, 34.646294, 36.541698>,  <38.563545, 34.178852, 35.883446>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.584480, 34.646294, 36.541698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.363953, 34.330387, 36.649261>,  <38.231636, 34.140842, 36.713799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.363953, 34.330387, 36.649261>,  <38.584480, 34.646294, 36.541698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.363953, 34.330387, 36.649261> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531937, -0.084451, 0.842562,
		-0.642718, 0.607566, 0.466666,
		-0.551322, -0.789767, 0.268909,
		38.198555, 34.093456, 36.729935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.355087, 34.814442, 37.261513>,  <38.584480, 34.646294, 36.541698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.355087, 34.814442, 37.261513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.382805, 34.426296, 37.168911>,  <38.399437, 34.193409, 37.113350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.382805, 34.426296, 37.168911>,  <38.355087, 34.814442, 37.261513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.382805, 34.426296, 37.168911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466631, -0.173583, 0.867251,
		-0.881733, -0.168125, 0.440773,
		0.069296, -0.970362, -0.231506,
		38.403595, 34.135189, 37.099461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.981266, 34.567223, 37.754635>,  <38.355087, 34.814442, 37.261513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.981266, 34.567223, 37.754635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.187984, 34.242954, 37.644558>,  <38.312016, 34.048393, 37.578510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.187984, 34.242954, 37.644558>,  <37.981266, 34.567223, 37.754635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.187984, 34.242954, 37.644558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246937, -0.166634, 0.954597,
		-0.819720, -0.561291, 0.114068,
		0.516799, -0.810670, -0.275197,
		38.343025, 33.999752, 37.562000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.775837, 33.902657, 38.196693>,  <37.981266, 34.567223, 37.754635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.775837, 33.902657, 38.196693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.152748, 33.898140, 38.062836>,  <38.378895, 33.895432, 37.982521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.152748, 33.898140, 38.062836>,  <37.775837, 33.902657, 38.196693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.152748, 33.898140, 38.062836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321406, -0.249688, 0.913430,
		-0.093868, -0.968261, -0.231647,
		0.942278, -0.011289, -0.334643,
		38.435432, 33.894753, 37.962444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.025425, 33.210960, 38.381298>,  <37.775837, 33.902657, 38.196693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.025425, 33.210960, 38.381298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.330982, 33.468288, 38.360851>,  <38.514317, 33.622684, 38.348583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.330982, 33.468288, 38.360851>,  <38.025425, 33.210960, 38.381298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.330982, 33.468288, 38.360851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317756, -0.306001, 0.897438,
		0.561698, -0.701785, -0.438169,
		0.763889, 0.643320, -0.051117,
		38.560150, 33.661285, 38.345516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.560017, 33.001854, 38.844707>,  <38.025425, 33.210960, 38.381298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.560017, 33.001854, 38.844707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.784576, 33.311211, 38.726929>,  <38.919312, 33.496826, 38.656261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.784576, 33.311211, 38.726929>,  <38.560017, 33.001854, 38.844707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.784576, 33.311211, 38.726929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552149, -0.085031, 0.829398,
		0.616411, -0.628201, -0.474763,
		0.561399, 0.773390, -0.294447,
		38.952995, 33.543228, 38.638596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.302059, 32.880760, 38.761814>,  <38.560017, 33.001854, 38.844707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.302059, 32.880760, 38.761814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.235184, 33.259354, 38.872250>,  <39.195057, 33.486507, 38.938511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.235184, 33.259354, 38.872250>,  <39.302059, 32.880760, 38.761814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.235184, 33.259354, 38.872250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459531, -0.172944, 0.871161,
		0.872284, 0.272519, -0.406022,
		-0.167189, 0.946480, 0.276087,
		39.185028, 33.543297, 38.955074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.948853, 33.211922, 39.018845>,  <39.302059, 32.880760, 38.761814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.948853, 33.211922, 39.018845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.638096, 33.380013, 39.206394>,  <39.451641, 33.480869, 39.318924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.638096, 33.380013, 39.206394>,  <39.948853, 33.211922, 39.018845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.638096, 33.380013, 39.206394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435267, -0.179632, 0.882199,
		0.454952, 0.889460, -0.043358,
		-0.776892, 0.420231, 0.468876,
		39.405029, 33.506081, 39.347057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.364986, 33.621284, 39.502426>,  <39.948853, 33.211922, 39.018845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.364986, 33.621284, 39.502426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.984463, 33.642956, 39.623806>,  <39.756149, 33.655956, 39.696632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.984463, 33.642956, 39.623806>,  <40.364986, 33.621284, 39.502426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.984463, 33.642956, 39.623806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304860, 0.019852, 0.952190,
		0.045562, 0.998334, -0.035401,
		-0.951307, 0.054176, 0.303448,
		39.699070, 33.659210, 39.714840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.091209, 34.239086, 39.898628>,  <40.364986, 33.621284, 39.502426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.091209, 34.239086, 39.898628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.866856, 33.937332, 40.035042>,  <39.732243, 33.756279, 40.116890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.866856, 33.937332, 40.035042>,  <40.091209, 34.239086, 39.898628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.866856, 33.937332, 40.035042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340422, 0.165345, 0.925621,
		-0.754665, 0.635265, 0.164070,
		-0.560886, -0.754387, 0.341038,
		39.698589, 33.711018, 40.137352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.892719, 34.488667, 40.492317>,  <40.091209, 34.239086, 39.898628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.892719, 34.488667, 40.492317> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.854343, 34.090549, 40.486935>,  <39.831318, 33.851677, 40.483704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.854343, 34.090549, 40.486935>,  <39.892719, 34.488667, 40.492317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.854343, 34.090549, 40.486935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455938, -0.055960, 0.888251,
		-0.884826, 0.079084, 0.459162,
		-0.095941, -0.995296, -0.013457,
		39.825562, 33.791962, 40.482899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.630123, 34.214161, 41.117931>,  <39.892719, 34.488667, 40.492317>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.630123, 34.214161, 41.117931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.825645, 33.888535, 40.992477>,  <39.942959, 33.693157, 40.917206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.825645, 33.888535, 40.992477>,  <39.630123, 34.214161, 41.117931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.825645, 33.888535, 40.992477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.641109, 0.091383, 0.761990,
		-0.591649, -0.573539, 0.566573,
		0.488806, -0.814065, -0.313634,
		39.972286, 33.644314, 40.898388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.403778, 33.662716, 41.462555>,  <39.630123, 34.214161, 41.117931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.403778, 33.662716, 41.462555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.784260, 33.679699, 41.340309>,  <40.012550, 33.689888, 41.266960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.784260, 33.679699, 41.340309>,  <39.403778, 33.662716, 41.462555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.784260, 33.679699, 41.340309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303898, 0.042484, 0.951757,
		0.053409, -0.998194, 0.027503,
		0.951207, 0.042474, -0.305618,
		40.069622, 33.692436, 41.248623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.927864, 33.713573, 41.003857>,  <39.403778, 33.662716, 41.462555>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.927864, 33.713573, 41.003857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.721481, 34.054440, 40.968967>,  <38.597652, 34.258957, 40.948032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.721481, 34.054440, 40.968967>,  <38.927864, 33.713573, 41.003857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.721481, 34.054440, 40.968967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.674112, 0.341096, -0.655153,
		-0.528545, -0.396830, -0.750444,
		-0.515958, 0.852162, -0.087224,
		38.566692, 34.310089, 40.942799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.288364, 33.062538, 41.015396>,  <38.927864, 33.713573, 41.003857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.288364, 33.062538, 41.015396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.317394, 33.429207, 40.858200>,  <39.334812, 33.649208, 40.763882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.317394, 33.429207, 40.858200>,  <39.288364, 33.062538, 41.015396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.317394, 33.429207, 40.858200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318938, -0.352013, -0.879980,
		-0.944993, 0.189206, 0.266815,
		0.072575, 0.916673, -0.392994,
		39.339169, 33.704208, 40.740303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.770958, 33.111210, 40.446697>,  <39.288364, 33.062538, 41.015396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.770958, 33.111210, 40.446697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.019814, 33.411400, 40.357502>,  <39.169128, 33.591515, 40.303986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.019814, 33.411400, 40.357502>,  <38.770958, 33.111210, 40.446697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.019814, 33.411400, 40.357502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212536, -0.112234, -0.970686,
		-0.753506, 0.651296, 0.089678,
		0.622140, 0.750477, -0.222993,
		39.206455, 33.636543, 40.290604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.429344, 33.633793, 40.015617>,  <38.770958, 33.111210, 40.446697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.429344, 33.633793, 40.015617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.822365, 33.676800, 39.954903>,  <39.058178, 33.702602, 39.918472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.822365, 33.676800, 39.954903>,  <38.429344, 33.633793, 40.015617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.822365, 33.676800, 39.954903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166589, 0.145583, -0.975220,
		-0.082756, 0.983486, 0.160954,
		0.982548, 0.107518, -0.151790,
		39.117130, 33.709057, 39.909367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.476204, 34.268517, 39.751789>,  <38.429344, 33.633793, 40.015617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.476204, 34.268517, 39.751789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.792988, 34.052994, 39.636913>,  <38.983059, 33.923679, 39.567989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.792988, 34.052994, 39.636913>,  <38.476204, 34.268517, 39.751789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.792988, 34.052994, 39.636913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183270, 0.238889, -0.953595,
		0.582413, 0.807846, 0.090444,
		0.791964, -0.538810, -0.287186,
		39.030579, 33.891350, 39.550758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.849709, 34.741070, 39.252686>,  <38.476204, 34.268517, 39.751789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.849709, 34.741070, 39.252686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.968678, 34.366066, 39.180435>,  <39.040058, 34.141064, 39.137085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.968678, 34.366066, 39.180435>,  <38.849709, 34.741070, 39.252686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.968678, 34.366066, 39.180435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126389, 0.148857, -0.980748,
		0.946344, 0.314523, -0.074217,
		0.297421, -0.937505, -0.180622,
		39.057903, 34.084816, 39.126247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.107006, 34.745251, 38.538151>,  <38.849709, 34.741070, 39.252686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.107006, 34.745251, 38.538151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.098240, 34.350693, 38.603329>,  <39.092979, 34.113960, 38.642433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.098240, 34.350693, 38.603329>,  <39.107006, 34.745251, 38.538151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.098240, 34.350693, 38.603329> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016462, -0.163315, -0.986437,
		0.999624, -0.018934, 0.019817,
		-0.021913, -0.986392, 0.162942,
		39.091667, 34.054775, 38.652210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.691967, 34.378410, 38.211151>,  <39.107006, 34.745251, 38.538151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.691967, 34.378410, 38.211151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.363682, 34.153225, 38.250160>,  <39.166710, 34.018116, 38.273563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.363682, 34.153225, 38.250160>,  <39.691967, 34.378410, 38.211151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.363682, 34.153225, 38.250160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140697, 0.033712, -0.989478,
		0.553750, -0.825796, -0.106875,
		-0.820710, -0.562961, 0.097519,
		39.117470, 33.984337, 38.279415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.684372, 33.947140, 37.594849>,  <39.691967, 34.378410, 38.211151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.684372, 33.947140, 37.594849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.301682, 33.940189, 37.711037>,  <39.072067, 33.936020, 37.780750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.301682, 33.940189, 37.711037>,  <39.684372, 33.947140, 37.594849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.301682, 33.940189, 37.711037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290982, 0.050974, -0.955370,
		0.001793, -0.998549, -0.053824,
		-0.956727, -0.017375, 0.290469,
		39.014664, 33.934978, 37.798176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.305065, 33.288548, 37.491371>,  <39.684372, 33.947140, 37.594849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.305065, 33.288548, 37.491371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.962059, 33.404358, 37.661476>,  <38.756256, 33.473843, 37.763538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.962059, 33.404358, 37.661476>,  <39.305065, 33.288548, 37.491371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.962059, 33.404358, 37.661476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496296, -0.247786, -0.832041,
		-0.135520, -0.924542, 0.356168,
		-0.857511, 0.289523, 0.425266,
		38.704807, 33.491215, 37.789055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.707161, 32.779045, 37.445091>,  <39.305065, 33.288548, 37.491371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.707161, 32.779045, 37.445091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.574696, 33.156017, 37.463707>,  <38.495216, 33.382198, 37.474876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.574696, 33.156017, 37.463707>,  <38.707161, 32.779045, 37.445091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.574696, 33.156017, 37.463707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.571821, -0.161215, -0.804382,
		-0.750568, -0.292990, 0.592287,
		-0.331162, 0.942426, 0.046535,
		38.475346, 33.438744, 37.477669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.214687, 32.818218, 36.940830>,  <38.707161, 32.779045, 37.445091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.214687, 32.818218, 36.940830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.213627, 33.207119, 37.034401>,  <38.212990, 33.440460, 37.090542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.213627, 33.207119, 37.034401>,  <38.214687, 32.818218, 36.940830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.213627, 33.207119, 37.034401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.858855, 0.117606, -0.498534,
		-0.512211, -0.202227, 0.834712,
		-0.002650, 0.972252, 0.233923,
		38.212833, 33.498795, 37.104576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.537136, 33.066055, 37.205002>,  <38.214687, 32.818218, 36.940830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.537136, 33.066055, 37.205002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.739132, 33.374432, 37.049755>,  <37.860329, 33.559456, 36.956608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.739132, 33.374432, 37.049755>,  <37.537136, 33.066055, 37.205002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.739132, 33.374432, 37.049755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.757263, 0.179965, -0.627825,
		-0.414166, 0.610957, 0.674684,
		0.504993, 0.770938, -0.388120,
		37.890629, 33.605713, 36.933319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.054863, 33.380939, 36.923466>,  <37.537136, 33.066055, 37.205002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.054863, 33.380939, 36.923466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.378494, 33.518677, 36.732960>,  <37.572674, 33.601318, 36.618656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.378494, 33.518677, 36.732960>,  <37.054863, 33.380939, 36.923466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.378494, 33.518677, 36.732960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.565707, 0.236654, -0.789918,
		-0.159296, 0.908527, 0.386269,
		0.809074, 0.344346, -0.476262,
		37.621216, 33.621979, 36.590080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.579502, 33.853878, 36.507000>,  <37.054863, 33.380939, 36.923466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.579502, 33.853878, 36.507000> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.958633, 33.823299, 36.383205>,  <37.186111, 33.804951, 36.308929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.958633, 33.823299, 36.383205>,  <36.579502, 33.853878, 36.507000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.958633, 33.823299, 36.383205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272579, 0.309080, -0.911137,
		0.165310, 0.947959, 0.272116,
		0.947826, -0.076446, -0.309488,
		37.242981, 33.800365, 36.290359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.677582, 34.481960, 36.298336>,  <36.579502, 33.853878, 36.507000>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.677582, 34.481960, 36.298336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.929668, 34.237984, 36.106171>,  <37.080921, 34.091599, 35.990871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.929668, 34.237984, 36.106171>,  <36.677582, 34.481960, 36.298336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.929668, 34.237984, 36.106171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208843, 0.462783, -0.861520,
		0.747805, 0.643274, 0.164271,
		0.630215, -0.609942, -0.480416,
		37.118732, 34.055000, 35.962048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.737572, 34.828705, 35.661057>,  <36.677582, 34.481960, 36.298336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.737572, 34.828705, 35.661057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.932995, 34.482735, 35.615082>,  <37.050251, 34.275154, 35.587498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.932995, 34.482735, 35.615082>,  <36.737572, 34.828705, 35.661057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.932995, 34.482735, 35.615082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078827, 0.087437, -0.993046,
		0.868962, 0.494223, -0.025461,
		0.488560, -0.864927, -0.114938,
		37.079563, 34.223255, 35.580601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.218639, 34.963322, 35.162045>,  <36.737572, 34.828705, 35.661057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.218639, 34.963322, 35.162045> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.202316, 34.564388, 35.186256>,  <37.192520, 34.325027, 35.200783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.202316, 34.564388, 35.186256>,  <37.218639, 34.963322, 35.162045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.202316, 34.564388, 35.186256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031106, -0.061820, -0.997602,
		0.998683, -0.038830, 0.033546,
		-0.040811, -0.997332, 0.060531,
		37.190071, 34.265190, 35.204414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.780224, 34.817791, 34.792633>,  <37.218639, 34.963322, 35.162045>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.780224, 34.817791, 34.792633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.480934, 34.552853, 34.777309>,  <37.301361, 34.393890, 34.768116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.480934, 34.552853, 34.777309>,  <37.780224, 34.817791, 34.792633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.480934, 34.552853, 34.777309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009982, 0.046502, -0.998868,
		0.663376, -0.747756, -0.028182,
		-0.748220, -0.662344, -0.038312,
		37.256470, 34.354149, 34.765816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.970875, 34.217098, 34.410446>,  <37.780224, 34.817791, 34.792633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.970875, 34.217098, 34.410446> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.585804, 34.324593, 34.423332>,  <37.354763, 34.389091, 34.431065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.585804, 34.324593, 34.423332>,  <37.970875, 34.217098, 34.410446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.585804, 34.324593, 34.423332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003362, 0.107127, -0.994240,
		-0.270641, -0.957237, -0.102225,
		-0.962674, 0.268739, 0.032211,
		37.297001, 34.405212, 34.432995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.155930, 34.881329, 33.986401>,  <37.970875, 34.217098, 34.410446>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.155930, 34.881329, 33.986401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.485191, 34.754261, 33.798145>,  <38.682751, 34.678020, 33.685192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.485191, 34.754261, 33.798145>,  <38.155930, 34.881329, 33.986401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.485191, 34.754261, 33.798145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129602, -0.701867, 0.700419,
		-0.552823, -0.637551, -0.536577,
		0.823159, -0.317666, -0.470636,
		38.732140, 34.658962, 33.656956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.807537, 34.600140, 34.145599>,  <38.155930, 34.881329, 33.986401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.807537, 34.600140, 34.145599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.143848, 34.652443, 33.935459>,  <39.345634, 34.683826, 33.809376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.143848, 34.652443, 33.935459>,  <38.807537, 34.600140, 34.145599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.143848, 34.652443, 33.935459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505010, 0.160249, 0.848107,
		0.195090, -0.978377, 0.068695,
		0.840776, 0.130766, -0.525353,
		39.396080, 34.691669, 33.777855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.301266, 34.093666, 34.495720>,  <38.807537, 34.600140, 34.145599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.301266, 34.093666, 34.495720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.517216, 34.389896, 34.335682>,  <39.646786, 34.567635, 34.239658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.517216, 34.389896, 34.335682>,  <39.301266, 34.093666, 34.495720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.517216, 34.389896, 34.335682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494351, 0.105745, 0.862806,
		0.681284, -0.663597, -0.309017,
		0.539879, 0.740579, -0.400092,
		39.679180, 34.612068, 34.215652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.067238, 34.222771, 34.466175>,  <39.301266, 34.093666, 34.495720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.067238, 34.222771, 34.466175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.149773, 33.880569, 34.656143>,  <40.199291, 33.675251, 34.770123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.149773, 33.880569, 34.656143>,  <40.067238, 34.222771, 34.466175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.149773, 33.880569, 34.656143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.919590, 0.003698, -0.392861,
		0.334336, 0.517792, 0.787471,
		0.206332, -0.855499, 0.474920,
		40.211674, 33.623920, 34.798618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.609951, 34.286411, 35.000847>,  <40.067238, 34.222771, 34.466175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.609951, 34.286411, 35.000847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.619423, 33.924149, 34.831505>,  <40.625107, 33.706791, 34.729900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.619423, 33.924149, 34.831505>,  <40.609951, 34.286411, 35.000847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.619423, 33.924149, 34.831505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.927844, 0.177575, -0.327983,
		0.372216, -0.385043, 0.844510,
		0.023677, -0.905654, -0.423356,
		40.626526, 33.652451, 34.704498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.117428, 33.837898, 35.352886>,  <40.609951, 34.286411, 35.000847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.117428, 33.837898, 35.352886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.078018, 33.701897, 34.978786>,  <41.054375, 33.620296, 34.754326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.078018, 33.701897, 34.978786>,  <41.117428, 33.837898, 35.352886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.078018, 33.701897, 34.978786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.986774, 0.088189, -0.136007,
		0.128722, -0.936280, 0.326818,
		-0.098519, -0.340003, -0.935250,
		41.048462, 33.599895, 34.698212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.658260, 33.328388, 35.190033>,  <41.117428, 33.837898, 35.352886>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.658260, 33.328388, 35.190033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.567253, 33.456142, 34.822071>,  <41.512650, 33.532795, 34.601292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.567253, 33.456142, 34.822071>,  <41.658260, 33.328388, 35.190033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.567253, 33.456142, 34.822071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.972564, 0.027452, -0.231008,
		-0.048527, -0.947227, -0.316869,
		-0.227516, 0.319386, -0.919907,
		41.498997, 33.551960, 34.546101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.341805, 32.986866, 34.970844>,  <41.658260, 33.328388, 35.190033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.341805, 32.986866, 34.970844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.651661, 32.736248, 34.936501>,  <42.837574, 32.585876, 34.915894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.651661, 32.736248, 34.936501>,  <42.341805, 32.986866, 34.970844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.651661, 32.736248, 34.936501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515114, 0.703897, -0.489068,
		0.366859, 0.334625, 0.868010,
		0.774643, -0.626542, -0.085861,
		42.884052, 32.548286, 34.910744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.100224, 33.144398, 35.368004>,  <42.341805, 32.986866, 34.970844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.100224, 33.144398, 35.368004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.092091, 32.958458, 35.013943>,  <43.087212, 32.846893, 34.801506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.092091, 32.958458, 35.013943>,  <43.100224, 33.144398, 35.368004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.092091, 32.958458, 35.013943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398796, 0.808090, -0.433535,
		0.916814, -0.361811, 0.168950,
		-0.020331, -0.464847, -0.885157,
		43.085991, 32.819004, 34.748394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.745594, 33.343220, 35.086372>,  <43.100224, 33.144398, 35.368004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.745594, 33.343220, 35.086372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.498905, 33.226650, 34.793873>,  <43.350891, 33.156708, 34.618374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.498905, 33.226650, 34.793873>,  <43.745594, 33.343220, 35.086372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.498905, 33.226650, 34.793873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304209, 0.768547, -0.562844,
		0.726024, -0.569572, -0.385327,
		-0.616722, -0.291418, -0.731252,
		43.313889, 33.139225, 34.574497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.031445, 33.811459, 34.528694>,  <43.745594, 33.343220, 35.086372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.031445, 33.811459, 34.528694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.952824, 33.799946, 34.920723>,  <43.905651, 33.793037, 35.155941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.952824, 33.799946, 34.920723>,  <44.031445, 33.811459, 34.528694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.952824, 33.799946, 34.920723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.909460, 0.368176, 0.193204,
		-0.366400, 0.929310, -0.046189,
		-0.196553, -0.028783, 0.980071,
		43.893856, 33.791309, 35.214745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.294067, 34.443829, 34.849678>,  <44.031445, 33.811459, 34.528694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.294067, 34.443829, 34.849678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.330410, 34.129776, 35.094727>,  <44.352215, 33.941345, 35.241756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.330410, 34.129776, 35.094727>,  <44.294067, 34.443829, 34.849678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.330410, 34.129776, 35.094727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.905548, 0.321120, 0.277246,
		-0.414401, 0.529571, 0.740153,
		0.090857, -0.785134, 0.612625,
		44.357666, 33.894238, 35.278515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.324043, 34.728310, 35.455727>,  <44.294067, 34.443829, 34.849678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.324043, 34.728310, 35.455727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.477192, 34.359699, 35.481678>,  <44.569080, 34.138535, 35.497250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.477192, 34.359699, 35.481678>,  <44.324043, 34.728310, 35.455727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.477192, 34.359699, 35.481678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.865543, 0.382384, 0.323448,
		-0.322874, -0.067681, 0.944019,
		0.382869, -0.921522, 0.064881,
		44.592052, 34.083244, 35.501141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.619839, 34.716003, 36.118732>,  <44.324043, 34.728310, 35.455727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.619839, 34.716003, 36.118732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.806702, 34.451900, 35.883507>,  <44.918819, 34.293438, 35.742371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.806702, 34.451900, 35.883507>,  <44.619839, 34.716003, 36.118732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.806702, 34.451900, 35.883507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.882099, 0.302519, 0.361086,
		-0.060508, -0.687418, 0.723737,
		0.467162, -0.660257, -0.588066,
		44.946850, 34.253822, 35.707088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.913120, 34.218857, 36.588058>,  <44.619839, 34.716003, 36.118732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.913120, 34.218857, 36.588058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.102631, 34.255875, 36.237751>,  <45.216335, 34.278088, 36.027565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.102631, 34.255875, 36.237751>,  <44.913120, 34.218857, 36.588058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.102631, 34.255875, 36.237751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.841217, 0.246681, 0.481147,
		0.260568, -0.964667, 0.039013,
		0.473770, 0.092553, -0.875772,
		45.244762, 34.283638, 35.975021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.478523, 33.676594, 36.564426>,  <44.913120, 34.218857, 36.588058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.478523, 33.676594, 36.564426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.576340, 33.987316, 36.332294>,  <45.635029, 34.173748, 36.193016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.576340, 33.987316, 36.332294>,  <45.478523, 33.676594, 36.564426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.576340, 33.987316, 36.332294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.895882, 0.047951, 0.441698,
		0.370939, -0.627917, -0.684196,
		0.244542, 0.776802, -0.580326,
		45.649704, 34.220356, 36.158195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.163429, 33.819763, 36.749268>,  <45.478523, 33.676594, 36.564426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.163429, 33.819763, 36.749268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.134777, 34.132404, 36.501408>,  <46.117588, 34.319988, 36.352692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.134777, 34.132404, 36.501408>,  <46.163429, 33.819763, 36.749268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.134777, 34.132404, 36.501408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.768556, 0.439230, 0.465187,
		0.635760, -0.442915, -0.632167,
		-0.071628, 0.781603, -0.619650,
		46.113289, 34.366886, 36.315514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.828533, 33.938862, 36.371529>,  <46.163429, 33.819763, 36.749268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.828533, 33.938862, 36.371529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.630268, 34.277706, 36.448189>,  <46.511311, 34.481010, 36.494183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.630268, 34.277706, 36.448189>,  <46.828533, 33.938862, 36.371529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.630268, 34.277706, 36.448189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.742244, 0.298573, 0.599940,
		0.450994, 0.439614, -0.776752,
		-0.495659, 0.847109, 0.191646,
		46.481571, 34.531837, 36.505684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.279934, 33.818214, 35.964191>,  <46.828533, 33.938862, 36.371529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.279934, 33.818214, 35.964191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.010044, 33.958809, 35.704590>,  <45.848110, 34.043167, 35.548828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.010044, 33.958809, 35.704590>,  <46.279934, 33.818214, 35.964191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.010044, 33.958809, 35.704590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366427, 0.922827, 0.118832,
		0.640684, -0.157632, -0.751450,
		-0.674726, 0.351485, -0.649001,
		45.807625, 34.064255, 35.509888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.591351, 34.259121, 35.355846>,  <46.279934, 33.818214, 35.964191>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.591351, 34.259121, 35.355846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.207741, 34.357792, 35.411583>,  <45.977573, 34.416996, 35.445026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.207741, 34.357792, 35.411583>,  <46.591351, 34.259121, 35.355846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.207741, 34.357792, 35.411583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262546, 0.958642, 0.109889,
		-0.106471, 0.141970, -0.984128,
		-0.959027, 0.246679, 0.139341,
		45.920033, 34.431797, 35.453384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.562824, 34.739223, 34.894176>,  <46.591351, 34.259121, 35.355846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.562824, 34.739223, 34.894176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.348721, 34.824043, 35.221233>,  <46.220261, 34.874935, 35.417465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.348721, 34.824043, 35.221233>,  <46.562824, 34.739223, 34.894176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.348721, 34.824043, 35.221233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.615914, 0.760407, 0.205990,
		-0.578058, 0.613853, -0.537618,
		-0.535256, 0.212052, 0.817640,
		46.188145, 34.887657, 35.466526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.603779, 35.404030, 34.937435>,  <46.562824, 34.739223, 34.894176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.603779, 35.404030, 34.937435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.536766, 35.281925, 35.312401>,  <46.496559, 35.208664, 35.537380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.536766, 35.281925, 35.312401>,  <46.603779, 35.404030, 34.937435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.536766, 35.281925, 35.312401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489523, 0.799595, 0.347872,
		-0.855745, 0.517167, 0.015472,
		-0.167536, -0.305263, 0.937414,
		46.486504, 35.190346, 35.593624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.147461, 35.371555, 35.401955>,  <46.603779, 35.404030, 34.937435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.147461, 35.371555, 35.401955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.417801, 35.574848, 35.188438>,  <47.580006, 35.696823, 35.060329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.417801, 35.574848, 35.188438>,  <47.147461, 35.371555, 35.401955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.417801, 35.574848, 35.188438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.736952, -0.454726, 0.500125,
		0.011453, -0.731385, -0.681869,
		0.675848, 0.508233, -0.533788,
		47.620556, 35.727318, 35.028301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.557186, 34.997768, 34.848709>,  <47.147461, 35.371555, 35.401955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.557186, 34.997768, 34.848709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.741875, 35.288807, 35.051655>,  <47.852688, 35.463428, 35.173424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.741875, 35.288807, 35.051655>,  <47.557186, 34.997768, 34.848709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.741875, 35.288807, 35.051655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.633905, -0.670755, 0.385034,
		0.620466, 0.143842, -0.770929,
		0.461720, 0.727597, 0.507363,
		47.880390, 35.507088, 35.203865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<30.330578, 27.939129, 25.617847> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.948278, 28.047915, 25.572987>,  <29.718899, 28.113186, 25.546070>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.948278, 28.047915, 25.572987>,  <30.330578, 27.939129, 25.617847>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.948278, 28.047915, 25.572987> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016309, 0.331665, 0.943256,
		0.293731, 0.903345, -0.312553,
		-0.955749, 0.271966, -0.112153,
		29.661554, 28.129503, 25.539341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.297029, 28.713514, 25.660589>,  <30.330578, 27.939129, 25.617847>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.297029, 28.713514, 25.660589> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.942993, 28.562263, 25.769133>,  <29.730572, 28.471512, 25.834259>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.942993, 28.562263, 25.769133>,  <30.297029, 28.713514, 25.660589>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.942993, 28.562263, 25.769133> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075168, 0.459249, 0.885121,
		-0.459312, 0.803808, -0.378053,
		-0.885089, -0.378129, 0.271359,
		29.677467, 28.448824, 25.850540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.853415, 29.210300, 26.044950>,  <30.297029, 28.713514, 25.660589>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.853415, 29.210300, 26.044950> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.687359, 28.860735, 26.146091>,  <29.587725, 28.650995, 26.206776>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.687359, 28.860735, 26.146091>,  <29.853415, 29.210300, 26.044950>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.687359, 28.860735, 26.146091> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102910, 0.231043, 0.967486,
		-0.903919, 0.427662, -0.005981,
		-0.415139, -0.873913, 0.252855,
		29.562817, 28.598560, 26.221949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.569746, 29.491135, 26.565296>,  <29.853415, 29.210300, 26.044950>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.569746, 29.491135, 26.565296> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.547617, 29.093073, 26.597811>,  <29.534340, 28.854237, 26.617319>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.547617, 29.093073, 26.597811>,  <29.569746, 29.491135, 26.565296>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.547617, 29.093073, 26.597811> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193075, 0.069212, 0.978740,
		-0.979623, 0.069840, 0.188310,
		-0.055322, -0.995154, 0.081286,
		29.531021, 28.794527, 26.622196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.111750, 29.403723, 27.061493>,  <29.569746, 29.491135, 26.565296>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.111750, 29.403723, 27.061493> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.331879, 29.070353, 27.041315>,  <29.463957, 28.870331, 27.029209>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.331879, 29.070353, 27.041315>,  <29.111750, 29.403723, 27.061493>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.331879, 29.070353, 27.041315> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181108, 0.060173, 0.981621,
		-0.815074, -0.549344, 0.184055,
		0.550323, -0.833427, -0.050445,
		29.496975, 28.820324, 27.026182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.910580, 28.995590, 27.657976>,  <29.111750, 29.403723, 27.061493>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.910580, 28.995590, 27.657976> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.278416, 28.899536, 27.533598>,  <29.499117, 28.841904, 27.458971>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.278416, 28.899536, 27.533598>,  <28.910580, 28.995590, 27.657976>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.278416, 28.899536, 27.533598> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347081, 0.125711, 0.929372,
		-0.184087, -0.962565, 0.198950,
		0.919591, -0.240136, -0.310946,
		29.554293, 28.827496, 27.440313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.104607, 28.463549, 28.104588>,  <28.910580, 28.995590, 27.657976>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.104607, 28.463549, 28.104588> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.442902, 28.605341, 27.945051>,  <29.645878, 28.690416, 27.849329>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.442902, 28.605341, 27.945051>,  <29.104607, 28.463549, 28.104588>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.442902, 28.605341, 27.945051> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416649, 0.028277, 0.908628,
		0.333371, -0.934635, -0.123780,
		0.845735, 0.354483, -0.398841,
		29.696623, 28.711685, 27.825399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.629305, 28.013962, 28.325272>,  <29.104607, 28.463549, 28.104588>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.629305, 28.013962, 28.325272> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.804539, 28.358871, 28.223631>,  <29.909679, 28.565817, 28.162647>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.804539, 28.358871, 28.223631>,  <29.629305, 28.013962, 28.325272>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.804539, 28.358871, 28.223631> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354810, 0.093857, 0.930215,
		0.825949, -0.497670, -0.264826,
		0.438084, 0.862273, -0.254100,
		29.935965, 28.617554, 28.147402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.246216, 28.110298, 28.783455>,  <29.629305, 28.013962, 28.325272>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.246216, 28.110298, 28.783455> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.230179, 28.472755, 28.615026>,  <30.220556, 28.690229, 28.513969>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.230179, 28.472755, 28.615026>,  <30.246216, 28.110298, 28.783455>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.230179, 28.472755, 28.615026> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409068, 0.399362, 0.820472,
		0.911623, -0.139351, -0.386685,
		-0.040094, 0.906141, -0.421071,
		30.218151, 28.744598, 28.488705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.812893, 28.543098, 28.847315>,  <30.246216, 28.110298, 28.783455>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.812893, 28.543098, 28.847315> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.535164, 28.816231, 28.756399>,  <30.368526, 28.980110, 28.701849>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.535164, 28.816231, 28.756399>,  <30.812893, 28.543098, 28.847315>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.535164, 28.816231, 28.756399> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338117, 0.588315, 0.734549,
		0.635290, 0.433162, -0.639356,
		-0.694322, 0.682829, -0.227291,
		30.326868, 29.021080, 28.688211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.172506, 29.119062, 28.882965>,  <30.812893, 28.543098, 28.847315>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.172506, 29.119062, 28.882965> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.791569, 29.240225, 28.897310>,  <30.563005, 29.312922, 28.905916>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.791569, 29.240225, 28.897310>,  <31.172506, 29.119062, 28.882965>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.791569, 29.240225, 28.897310> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243294, 0.683436, 0.688276,
		0.183973, 0.664201, -0.724562,
		-0.952346, 0.302905, 0.035862,
		30.505865, 29.331097, 28.908070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.140184, 29.854073, 28.801989>,  <31.172506, 29.119062, 28.882965>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.140184, 29.854073, 28.801989> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.802164, 29.764509, 28.996208>,  <30.599352, 29.710772, 29.112740>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.802164, 29.764509, 28.996208>,  <31.140184, 29.854073, 28.801989>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.802164, 29.764509, 28.996208> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202239, 0.706784, 0.677906,
		-0.494964, 0.671061, -0.551985,
		-0.845050, -0.223906, 0.485547,
		30.548649, 29.697338, 29.141872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.967079, 30.538799, 29.066156>,  <31.140184, 29.854073, 28.801989>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.967079, 30.538799, 29.066156> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.740435, 30.289602, 29.281872>,  <30.604448, 30.140083, 29.411301>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.740435, 30.289602, 29.281872>,  <30.967079, 30.538799, 29.066156>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.740435, 30.289602, 29.281872> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210796, 0.523111, 0.825785,
		-0.796565, 0.581579, -0.165077,
		-0.566612, -0.622994, 0.539286,
		30.570452, 30.102705, 29.443657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.860926, 30.992691, 29.576927>,  <30.967079, 30.538799, 29.066156>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.860926, 30.992691, 29.576927> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.787739, 30.620478, 29.703819>,  <30.743828, 30.397150, 29.779955>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.787739, 30.620478, 29.703819>,  <30.860926, 30.992691, 29.576927>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.787739, 30.620478, 29.703819> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175610, 0.286551, 0.941833,
		-0.967308, 0.228031, 0.110982,
		-0.182965, -0.930532, 0.317228,
		30.732849, 30.341318, 29.798988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.469709, 31.103624, 30.156883>,  <30.860926, 30.992691, 29.576927>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.469709, 31.103624, 30.156883> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.645353, 30.746529, 30.197281>,  <30.750740, 30.532270, 30.221519>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.645353, 30.746529, 30.197281>,  <30.469709, 31.103624, 30.156883>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.645353, 30.746529, 30.197281> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228807, 0.219828, 0.948326,
		-0.868810, -0.393309, 0.300793,
		0.439108, -0.892740, 0.100996,
		30.777086, 30.478706, 30.227579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.250620, 30.827091, 30.885576>,  <30.469709, 31.103624, 30.156883>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.250620, 30.827091, 30.885576> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.577290, 30.622295, 30.779062>,  <30.773291, 30.499418, 30.715153>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.577290, 30.622295, 30.779062>,  <30.250620, 30.827091, 30.885576>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.577290, 30.622295, 30.779062> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357448, 0.086516, 0.929917,
		-0.453071, -0.854623, 0.253665,
		0.816675, -0.511991, -0.266286,
		30.822292, 30.468699, 30.699177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.293552, 30.304428, 31.391968>,  <30.250620, 30.827091, 30.885576>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.293552, 30.304428, 31.391968> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.657074, 30.366762, 31.237156>,  <30.875187, 30.404163, 31.144270>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.657074, 30.366762, 31.237156>,  <30.293552, 30.304428, 31.391968>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.657074, 30.366762, 31.237156> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365912, 0.147987, 0.918808,
		0.200462, -0.976634, 0.077468,
		0.908803, 0.155840, -0.387028,
		30.929716, 30.413513, 31.121048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.672916, 29.913250, 31.913836>,  <30.293552, 30.304428, 31.391968>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.672916, 29.913250, 31.913836> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.939726, 30.121077, 31.700245>,  <31.099812, 30.245773, 31.572090>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.939726, 30.121077, 31.700245>,  <30.672916, 29.913250, 31.913836>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.939726, 30.121077, 31.700245> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.580452, 0.086905, 0.809644,
		0.467068, -0.849999, -0.243616,
		0.667025, 0.519566, -0.533974,
		31.139833, 30.276947, 31.540052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.359381, 29.629450, 32.103691>,  <30.672916, 29.913250, 31.913836>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.359381, 29.629450, 32.103691> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.385328, 29.997824, 31.949978>,  <31.400896, 30.218847, 31.857750>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.385328, 29.997824, 31.949978>,  <31.359381, 29.629450, 32.103691>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.385328, 29.997824, 31.949978> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512388, 0.299712, 0.804756,
		0.856301, -0.249105, -0.452433,
		0.064869, 0.920934, -0.384282,
		31.404789, 30.274103, 31.834694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.886127, 29.877081, 32.506828>,  <31.359381, 29.629450, 32.103691>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.886127, 29.877081, 32.506828> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.770525, 30.204582, 32.308384>,  <31.701164, 30.401083, 32.189320>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.770525, 30.204582, 32.308384>,  <31.886127, 29.877081, 32.506828>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.770525, 30.204582, 32.308384> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513158, 0.569972, 0.641717,
		0.808174, -0.069122, -0.584873,
		-0.289004, 0.818752, -0.496107,
		31.683825, 30.450207, 32.159554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.464920, 30.308828, 32.298759>,  <31.886127, 29.877081, 32.506828>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.464920, 30.308828, 32.298759> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.148235, 30.547045, 32.353199>,  <31.958223, 30.689974, 32.385860>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.148235, 30.547045, 32.353199>,  <32.464920, 30.308828, 32.298759>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.148235, 30.547045, 32.353199> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360713, 0.275936, 0.890924,
		0.493028, 0.754447, -0.433281,
		-0.791713, 0.595541, 0.136095,
		31.910721, 30.725706, 32.394028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.616505, 30.981398, 32.563271>,  <32.464920, 30.308828, 32.298759>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.616505, 30.981398, 32.563271> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.254391, 30.868059, 32.689877>,  <32.037125, 30.800056, 32.765839>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.254391, 30.868059, 32.689877>,  <32.616505, 30.981398, 32.563271>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.254391, 30.868059, 32.689877> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294242, 0.119170, 0.948272,
		-0.306406, 0.951585, -0.024511,
		-0.905283, -0.283344, 0.316510,
		31.982805, 30.783056, 32.784828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.863823, 31.467848, 33.127888>,  <32.616505, 30.981398, 32.563271>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.863823, 31.467848, 33.127888> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.262081, 31.448309, 33.159634>,  <33.501038, 31.436586, 33.178680>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.262081, 31.448309, 33.159634>,  <32.863823, 31.467848, 33.127888>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.262081, 31.448309, 33.159634> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079576, 0.002381, -0.996826,
		0.048503, 0.998804, 0.006257,
		0.995648, -0.048847, 0.079366,
		33.560776, 31.433655, 33.183445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.158173, 32.077679, 32.697548>,  <32.863823, 31.467848, 33.127888>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.158173, 32.077679, 32.697548> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.482151, 31.843555, 32.712543>,  <33.676537, 31.703083, 32.721539>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.482151, 31.843555, 32.712543>,  <33.158173, 32.077679, 32.697548>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.482151, 31.843555, 32.712543> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038682, -0.010466, -0.999197,
		0.585227, 0.810745, 0.014164,
		0.809946, -0.585305, 0.037486,
		33.725136, 31.667963, 32.723789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.741451, 32.321171, 32.189938>,  <33.158173, 32.077679, 32.697548>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.741451, 32.321171, 32.189938> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.844822, 31.942198, 32.265385>,  <33.906845, 31.714813, 32.310654>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.844822, 31.942198, 32.265385>,  <33.741451, 32.321171, 32.189938>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.844822, 31.942198, 32.265385> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160244, -0.150503, -0.975536,
		0.952646, 0.282334, 0.112927,
		0.258431, -0.947437, 0.188618,
		33.922352, 31.657967, 32.321972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.468872, 32.169144, 31.889948>,  <33.741451, 32.321171, 32.189938>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.468872, 32.169144, 31.889948> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.271114, 31.821491, 31.895323>,  <34.152458, 31.612900, 31.898548>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.271114, 31.821491, 31.895323>,  <34.468872, 32.169144, 31.889948>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.271114, 31.821491, 31.895323> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182820, -0.119081, -0.975908,
		0.849795, -0.480028, 0.217768,
		-0.494395, -0.869134, 0.013436,
		34.122795, 31.560751, 31.899353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.824757, 31.795912, 31.393019>,  <34.468872, 32.169144, 31.889948>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.824757, 31.795912, 31.393019> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.483467, 31.598301, 31.459879>,  <34.278694, 31.479734, 31.499994>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.483467, 31.598301, 31.459879>,  <34.824757, 31.795912, 31.393019>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.483467, 31.598301, 31.459879> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035503, -0.264734, -0.963668,
		0.520330, -0.828162, 0.208339,
		-0.853227, -0.494028, 0.167151,
		34.227497, 31.450092, 31.510025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.933788, 31.098402, 31.083086>,  <34.824757, 31.795912, 31.393019>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.933788, 31.098402, 31.083086> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.544796, 31.190699, 31.095980>,  <34.311401, 31.246077, 31.103716>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.544796, 31.190699, 31.095980>,  <34.933788, 31.098402, 31.083086>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.544796, 31.190699, 31.095980> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118631, -0.371329, -0.920892,
		-0.200516, -0.899374, 0.388484,
		-0.972481, 0.230740, 0.032236,
		34.253052, 31.259920, 31.105650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.724476, 30.708817, 30.531630>,  <34.933788, 31.098402, 31.083086>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.724476, 30.708817, 30.531630> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.397472, 30.927555, 30.603901>,  <34.201271, 31.058798, 30.647264>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.397472, 30.927555, 30.603901>,  <34.724476, 30.708817, 30.531630>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.397472, 30.927555, 30.603901> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371625, -0.261214, -0.890877,
		-0.439977, -0.795441, 0.416766,
		-0.817505, 0.546846, 0.180678,
		34.152222, 31.091608, 30.658104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.135899, 30.325201, 30.430510>,  <34.724476, 30.708817, 30.531630>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.135899, 30.325201, 30.430510> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.997570, 30.698801, 30.394621>,  <33.914574, 30.922962, 30.373089>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.997570, 30.698801, 30.394621>,  <34.135899, 30.325201, 30.430510>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.997570, 30.698801, 30.394621> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.609072, -0.296186, -0.735734,
		-0.713751, -0.199784, 0.671301,
		-0.345818, 0.934002, -0.089721,
		33.893826, 30.979002, 30.367704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.420151, 30.295624, 30.297829>,  <34.135899, 30.325201, 30.430510>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.420151, 30.295624, 30.297829> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.483341, 30.674765, 30.187105>,  <33.521255, 30.902248, 30.120672>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.483341, 30.674765, 30.187105>,  <33.420151, 30.295624, 30.297829>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.483341, 30.674765, 30.187105> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.535738, -0.153207, -0.830369,
		-0.829474, 0.279477, 0.483596,
		0.157979, 0.947850, -0.276808,
		33.530735, 30.959120, 30.104063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.800926, 30.421522, 29.895258>,  <33.420151, 30.295624, 30.297829>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.800926, 30.421522, 29.895258> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.035538, 30.728861, 29.792788>,  <33.176304, 30.913263, 29.731306>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.035538, 30.728861, 29.792788>,  <32.800926, 30.421522, 29.895258>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.035538, 30.728861, 29.792788> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446962, 0.043292, -0.893504,
		-0.675430, 0.638569, 0.368814,
		0.586531, 0.768345, -0.256176,
		33.211498, 30.959364, 29.715935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.352188, 30.916609, 29.730274>,  <32.800926, 30.421522, 29.895258>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.352188, 30.916609, 29.730274> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.706631, 30.971443, 29.553175>,  <32.919296, 31.004343, 29.446915>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.706631, 30.971443, 29.553175>,  <32.352188, 30.916609, 29.730274>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.706631, 30.971443, 29.553175> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458241, 0.115838, -0.881247,
		-0.069518, 0.983763, 0.165462,
		0.886105, 0.137084, -0.442748,
		32.972462, 31.012568, 29.420351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.242859, 31.477585, 29.296005>,  <32.352188, 30.916609, 29.730274>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.242859, 31.477585, 29.296005> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.573536, 31.297382, 29.161175>,  <32.771942, 31.189260, 29.080276>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.573536, 31.297382, 29.161175>,  <32.242859, 31.477585, 29.296005>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.573536, 31.297382, 29.161175> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303055, 0.148238, -0.941373,
		0.474062, 0.880380, -0.013980,
		0.826694, -0.450506, -0.337077,
		32.821545, 31.162231, 29.060051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.573948, 31.938105, 28.668325>,  <32.242859, 31.477585, 29.296005>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.573948, 31.938105, 28.668325> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.688866, 31.555199, 28.654997>,  <32.757816, 31.325455, 28.646999>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.688866, 31.555199, 28.654997>,  <32.573948, 31.938105, 28.668325>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.688866, 31.555199, 28.654997> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399063, -0.087994, -0.912692,
		0.870755, 0.275506, -0.407288,
		0.287290, -0.957264, -0.033323,
		32.775051, 31.268019, 28.645000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.730610, 31.838617, 27.961079>,  <32.573948, 31.938105, 28.668325>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.730610, 31.838617, 27.961079> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.705967, 31.468250, 28.110147>,  <32.691181, 31.246031, 28.199589>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.705967, 31.468250, 28.110147>,  <32.730610, 31.838617, 27.961079>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.705967, 31.468250, 28.110147> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367927, -0.326018, -0.870828,
		0.927811, -0.190766, -0.320584,
		-0.061609, -0.925916, 0.372671,
		32.687485, 31.190475, 28.221949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.979523, 31.473759, 27.466917>,  <32.730610, 31.838617, 27.961079>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.979523, 31.473759, 27.466917> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.765873, 31.212362, 27.681454>,  <32.637684, 31.055525, 27.810175>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.765873, 31.212362, 27.681454>,  <32.979523, 31.473759, 27.466917>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.765873, 31.212362, 27.681454> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347314, -0.408788, -0.843958,
		0.770768, -0.637057, -0.008622,
		-0.534125, -0.653490, 0.536340,
		32.605637, 31.016315, 27.842356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.175549, 30.828690, 27.177536>,  <32.979523, 31.473759, 27.466917>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.175549, 30.828690, 27.177536> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.829483, 30.770758, 27.369583>,  <32.621841, 30.735998, 27.484812>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.829483, 30.770758, 27.369583>,  <33.175549, 30.828690, 27.177536>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.829483, 30.770758, 27.369583> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375808, -0.446672, -0.811944,
		0.332047, -0.882898, 0.332018,
		-0.865167, -0.144828, 0.480116,
		32.569935, 30.727308, 27.513618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.987453, 30.176052, 26.986984>,  <33.175549, 30.828690, 27.177536>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.987453, 30.176052, 26.986984> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.631584, 30.323929, 27.094168>,  <32.418060, 30.412655, 27.158478>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.631584, 30.323929, 27.094168>,  <32.987453, 30.176052, 26.986984>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.631584, 30.323929, 27.094168> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448403, -0.596792, -0.665413,
		-0.086081, -0.712157, 0.696723,
		-0.889677, 0.369692, 0.267960,
		32.364681, 30.434837, 27.174555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.594482, 29.576071, 27.051325>,  <32.987453, 30.176052, 26.986984>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.594482, 29.576071, 27.051325> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.323250, 29.867935, 27.015987>,  <32.160511, 30.043055, 26.994785>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.323250, 29.867935, 27.015987>,  <32.594482, 29.576071, 27.051325>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.323250, 29.867935, 27.015987> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393532, -0.461943, -0.794821,
		-0.620759, -0.504187, 0.600379,
		-0.678079, 0.729661, -0.088342,
		32.119827, 30.086834, 26.989485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<31.924049, 29.217897, 27.037874> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.841265, 29.572701, 26.872765>,  <31.791594, 29.785583, 26.773699>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.841265, 29.572701, 26.872765>,  <31.924049, 29.217897, 27.037874>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.841265, 29.572701, 26.872765> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406183, -0.461731, -0.788555,
		-0.890046, 0.004460, 0.455849,
		-0.206963, 0.887008, -0.412774,
		31.779177, 29.838802, 26.748932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.170824, 29.250738, 26.742468>,  <31.924049, 29.217897, 27.037874>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.170824, 29.250738, 26.742468> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.366814, 29.541708, 26.550310>,  <31.484407, 29.716290, 26.435017>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.366814, 29.541708, 26.550310>,  <31.170824, 29.250738, 26.742468>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.366814, 29.541708, 26.550310> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425742, -0.281203, -0.860040,
		-0.760704, 0.625920, 0.171914,
		0.489974, 0.727426, -0.480393,
		31.513805, 29.759935, 26.406193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.735674, 29.396725, 26.161514>,  <31.170824, 29.250738, 26.742468>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.735674, 29.396725, 26.161514> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.077101, 29.570618, 26.046669>,  <31.281956, 29.674953, 25.977762>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.077101, 29.570618, 26.046669>,  <30.735674, 29.396725, 26.161514>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.077101, 29.570618, 26.046669> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211172, -0.215098, -0.953488,
		-0.476268, 0.874495, -0.091797,
		0.853566, 0.434731, -0.287113,
		31.333170, 29.701036, 25.960535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.606157, 29.584684, 25.451828>,  <30.735674, 29.396725, 26.161514>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.606157, 29.584684, 25.451828> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.003633, 29.602554, 25.492973>,  <31.242119, 29.613276, 25.517660>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.003633, 29.602554, 25.492973>,  <30.606157, 29.584684, 25.451828>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.003633, 29.602554, 25.492973> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110648, -0.241107, -0.964170,
		-0.018273, 0.969470, -0.244530,
		0.993692, 0.044675, 0.102864,
		31.301741, 29.615957, 25.523832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.927317, 30.073532, 24.977066>,  <30.606157, 29.584684, 25.451828>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.927317, 30.073532, 24.977066> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.207558, 29.799690, 25.057533>,  <31.375702, 29.635386, 25.105814>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.207558, 29.799690, 25.057533>,  <30.927317, 30.073532, 24.977066>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.207558, 29.799690, 25.057533> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130950, -0.153778, -0.979390,
		0.701432, 0.712507, -0.018088,
		0.700604, -0.684607, 0.201168,
		31.417738, 29.594309, 25.117884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.373850, 30.120363, 24.428833>,  <30.927317, 30.073532, 24.977066>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.373850, 30.120363, 24.428833> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.452272, 29.758953, 24.581255>,  <31.499327, 29.542107, 24.672709>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.452272, 29.758953, 24.581255>,  <31.373850, 30.120363, 24.428833>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.452272, 29.758953, 24.581255> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139502, -0.358943, -0.922875,
		0.970618, 0.234095, 0.055670,
		0.196058, -0.903526, 0.381053,
		31.511089, 29.487896, 24.695572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.986902, 29.990562, 24.109234>,  <31.373850, 30.120363, 24.428833>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.986902, 29.990562, 24.109234> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.845304, 29.633106, 24.219574>,  <31.760345, 29.418633, 24.285778>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.845304, 29.633106, 24.219574>,  <31.986902, 29.990562, 24.109234>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.845304, 29.633106, 24.219574> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080695, -0.323035, -0.942940,
		0.931759, -0.311537, 0.186465,
		-0.353996, -0.893640, 0.275852,
		31.739105, 29.365015, 24.302330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.420975, 29.440208, 23.764961>,  <31.986902, 29.990562, 24.109234>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.420975, 29.440208, 23.764961> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.088039, 29.248415, 23.876179>,  <31.888279, 29.133339, 23.942909>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.088039, 29.248415, 23.876179>,  <32.420975, 29.440208, 23.764961>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.088039, 29.248415, 23.876179> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137645, -0.664738, -0.734287,
		0.536904, -0.572905, 0.619285,
		-0.832339, -0.479483, 0.278043,
		31.838337, 29.104570, 23.959591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.609028, 28.796114, 23.827541>,  <32.420975, 29.440208, 23.764961>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.609028, 28.796114, 23.827541> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.212509, 28.787838, 23.775549>,  <31.974598, 28.782873, 23.744352>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.212509, 28.787838, 23.775549>,  <32.609028, 28.796114, 23.827541>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.212509, 28.787838, 23.775549> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116981, -0.591119, -0.798056,
		-0.060322, -0.806319, 0.588397,
		-0.991301, -0.020691, -0.129982,
		31.915119, 28.781631, 23.736555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.498783, 28.230761, 23.579857>,  <32.609028, 28.796114, 23.827541>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.498783, 28.230761, 23.579857> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.157368, 28.399109, 23.456993>,  <31.952520, 28.500118, 23.383274>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.157368, 28.399109, 23.456993>,  <32.498783, 28.230761, 23.579857>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.157368, 28.399109, 23.456993> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019865, -0.562801, -0.826353,
		-0.520655, -0.711424, 0.472010,
		-0.853536, 0.420869, -0.307158,
		31.901308, 28.525370, 23.364845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.224518, 27.675665, 23.161692>,  <32.498783, 28.230761, 23.579857>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.224518, 27.675665, 23.161692> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.018414, 28.002895, 23.059509>,  <31.894753, 28.199234, 22.998199>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.018414, 28.002895, 23.059509>,  <32.224518, 27.675665, 23.161692>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.018414, 28.002895, 23.059509> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012447, -0.305179, -0.952214,
		-0.856945, -0.487456, 0.167428,
		-0.515258, 0.818079, -0.255454,
		31.863836, 28.248320, 22.982874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.669127, 27.474285, 22.742559>,  <32.224518, 27.675665, 23.161692>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.669127, 27.474285, 22.742559> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.799015, 27.845102, 22.667572>,  <31.876947, 28.067593, 22.622580>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.799015, 27.845102, 22.667572>,  <31.669127, 27.474285, 22.742559>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.799015, 27.845102, 22.667572> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208979, -0.263635, -0.941713,
		-0.922434, 0.266618, -0.279341,
		0.324722, 0.927044, -0.187469,
		31.896431, 28.123215, 22.611332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.469177, 27.651569, 22.108030>,  <31.669127, 27.474285, 22.742559>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.469177, 27.651569, 22.108030> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.741360, 27.939648, 22.162140>,  <31.904669, 28.112495, 22.194605>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.741360, 27.939648, 22.162140>,  <31.469177, 27.651569, 22.108030>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.741360, 27.939648, 22.162140> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199510, -0.004450, -0.979886,
		-0.705109, 0.693755, -0.146715,
		0.680454, 0.720197, 0.135273,
		31.945496, 28.155706, 22.202723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.333536, 27.966530, 21.572218>,  <31.469177, 27.651569, 22.108030>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.333536, 27.966530, 21.572218> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.690727, 28.128138, 21.651571>,  <31.905043, 28.225103, 21.699184>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.690727, 28.128138, 21.651571>,  <31.333536, 27.966530, 21.572218>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.690727, 28.128138, 21.651571> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197791, 0.043686, -0.979270,
		-0.404313, 0.913706, -0.040902,
		0.892978, 0.404022, 0.198386,
		31.958620, 28.249344, 21.711086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.386148, 28.608459, 21.257189>,  <31.333536, 27.966530, 21.572218>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.386148, 28.608459, 21.257189> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.767076, 28.492315, 21.294659>,  <31.995634, 28.422628, 21.317141>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.767076, 28.492315, 21.294659>,  <31.386148, 28.608459, 21.257189>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.767076, 28.492315, 21.294659> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117551, 0.065871, -0.990880,
		0.281542, 0.954647, 0.096863,
		0.952321, -0.290361, 0.093675,
		32.052773, 28.405207, 21.322762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.755859, 29.090755, 20.731743>,  <31.386148, 28.608459, 21.257189>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.755859, 29.090755, 20.731743> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.986656, 28.781780, 20.837891>,  <32.125134, 28.596395, 20.901579>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.986656, 28.781780, 20.837891>,  <31.755859, 29.090755, 20.731743>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.986656, 28.781780, 20.837891> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180491, -0.196287, -0.963792,
		0.796557, 0.603996, 0.026163,
		0.576991, -0.772438, 0.265370,
		32.159752, 28.550049, 20.917501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.382786, 29.282393, 20.461651>,  <31.755859, 29.090755, 20.731743>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.382786, 29.282393, 20.461651> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.359394, 28.886385, 20.512945>,  <32.345360, 28.648781, 20.543722>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.359394, 28.886385, 20.512945>,  <32.382786, 29.282393, 20.461651>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.359394, 28.886385, 20.512945> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233264, -0.138454, -0.962507,
		0.970653, -0.026376, 0.239032,
		-0.058482, -0.990018, 0.128238,
		32.341850, 28.589380, 20.551416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.022758, 29.047947, 20.198893>,  <32.382786, 29.282393, 20.461651>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.022758, 29.047947, 20.198893> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.754852, 28.750927, 20.196690>,  <32.594109, 28.572714, 20.195368>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.754852, 28.750927, 20.196690>,  <33.022758, 29.047947, 20.198893>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.754852, 28.750927, 20.196690> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242484, -0.211697, -0.946777,
		0.701865, -0.635454, 0.321844,
		-0.669767, -0.742551, -0.005505,
		32.553921, 28.528162, 20.195038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.311893, 28.510664, 19.839275>,  <33.022758, 29.047947, 20.198893>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.311893, 28.510664, 19.839275> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.929043, 28.395227, 19.829302>,  <32.699333, 28.325966, 19.823317>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.929043, 28.395227, 19.829302>,  <33.311893, 28.510664, 19.839275>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.929043, 28.395227, 19.829302> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132505, -0.359653, -0.923630,
		0.257584, -0.887335, 0.382474,
		-0.957127, -0.288592, -0.024935,
		32.641903, 28.308649, 19.821821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.351089, 27.805899, 19.576361>,  <33.311893, 28.510664, 19.839275>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.351089, 27.805899, 19.576361> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.984745, 27.947992, 19.501516>,  <32.764938, 28.033249, 19.456610>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.984745, 27.947992, 19.501516>,  <33.351089, 27.805899, 19.576361>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.984745, 27.947992, 19.501516> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031871, -0.400231, -0.915860,
		-0.400231, -0.844763, 0.355234,
		0.915860, -0.355234, 0.187109,
		32.709988, 28.054562, 19.445383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.954384, 27.313810, 19.117470>,  <33.351089, 27.805899, 19.576361>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.954384, 27.313810, 19.117470> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.692699, 27.612976, 19.072504>,  <32.535690, 27.792477, 19.045525>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.692699, 27.612976, 19.072504>,  <32.954384, 27.313810, 19.117470>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.692699, 27.612976, 19.072504> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050204, -0.191250, -0.980257,
		-0.754648, -0.635646, 0.162665,
		-0.654206, 0.747915, -0.112414,
		32.496437, 27.837351, 19.038780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.614799, 27.104778, 18.513727>,  <32.954384, 27.313810, 19.117470>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.614799, 27.104778, 18.513727> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.531384, 27.492769, 18.563772>,  <32.481335, 27.725565, 18.593800>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.531384, 27.492769, 18.563772>,  <32.614799, 27.104778, 18.513727>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.531384, 27.492769, 18.563772> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225197, 0.076866, -0.971276,
		-0.951734, -0.230723, 0.202407,
		-0.208537, 0.969979, 0.125114,
		32.468822, 27.783762, 18.601307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.035091, 27.201038, 18.068460>,  <32.614799, 27.104778, 18.513727>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.035091, 27.201038, 18.068460> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.234993, 27.545040, 18.109715>,  <32.354935, 27.751440, 18.134468>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.234993, 27.545040, 18.109715>,  <32.035091, 27.201038, 18.068460>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.234993, 27.545040, 18.109715> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003833, 0.116876, -0.993139,
		-0.866157, 0.496723, 0.055113,
		0.499757, 0.860003, 0.103137,
		32.384918, 27.803041, 18.140656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.673634, 27.725962, 17.689451>,  <32.035091, 27.201038, 18.068460>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.673634, 27.725962, 17.689451> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.054256, 27.844936, 17.720625>,  <32.282631, 27.916321, 17.739328>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.054256, 27.844936, 17.720625>,  <31.673634, 27.725962, 17.689451>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.054256, 27.844936, 17.720625> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070899, 0.034383, -0.996891,
		-0.299192, 0.954122, 0.011629,
		0.951555, 0.297437, 0.077933,
		32.339722, 27.934168, 17.744005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.961847, 27.939276, 18.083368>,  <31.673634, 27.725962, 17.689451>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.961847, 27.939276, 18.083368> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.591055, 28.007338, 17.949652>,  <30.368580, 28.048174, 17.869421>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.591055, 28.007338, 17.949652>,  <30.961847, 27.939276, 18.083368>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.591055, 28.007338, 17.949652> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197682, 0.535796, 0.820881,
		0.318788, 0.827025, -0.463037,
		-0.926982, 0.170153, -0.334293,
		30.312960, 28.058384, 17.849363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.791620, 28.691883, 18.348732>,  <30.961847, 27.939276, 18.083368>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.791620, 28.691883, 18.348732> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.470577, 28.465897, 18.272169>,  <30.277952, 28.330305, 18.226231>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.470577, 28.465897, 18.272169>,  <30.791620, 28.691883, 18.348732>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.470577, 28.465897, 18.272169> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452658, 0.367865, 0.812266,
		-0.388489, 0.738573, -0.550987,
		-0.802606, -0.564965, -0.191410,
		30.229795, 28.296408, 18.214746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.235069, 29.143290, 18.459003>,  <30.791620, 28.691883, 18.348732>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.235069, 29.143290, 18.459003> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.101179, 28.768633, 18.500307>,  <30.020845, 28.543839, 18.525089>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.101179, 28.768633, 18.500307>,  <30.235069, 29.143290, 18.459003>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.101179, 28.768633, 18.500307> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335328, 0.220806, 0.915860,
		-0.880632, 0.271938, -0.387991,
		-0.334727, -0.936640, 0.103260,
		30.000761, 28.487640, 18.531284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.606884, 29.257530, 18.760599>,  <30.235069, 29.143290, 18.459003>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.606884, 29.257530, 18.760599> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.707045, 28.875021, 18.821047>,  <29.767141, 28.645515, 18.857315>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.707045, 28.875021, 18.821047>,  <29.606884, 29.257530, 18.760599>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.707045, 28.875021, 18.821047> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139300, 0.118882, 0.983088,
		-0.958068, -0.267217, -0.103441,
		0.250401, -0.956275, 0.151121,
		29.782166, 28.588139, 18.866383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.038473, 28.932402, 19.135113>,  <29.606884, 29.257530, 18.760599>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.038473, 28.932402, 19.135113> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.380936, 28.738453, 19.206549>,  <29.586414, 28.622084, 19.249411>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.380936, 28.738453, 19.206549>,  <29.038473, 28.932402, 19.135113>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.380936, 28.738453, 19.206549> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173926, 0.055040, 0.983219,
		-0.486564, -0.872852, -0.037208,
		0.856157, -0.484870, 0.178592,
		29.637783, 28.592991, 19.260126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.877417, 28.377447, 19.530039>,  <29.038473, 28.932402, 19.135113>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.877417, 28.377447, 19.530039> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.262894, 28.461128, 19.596409>,  <29.494181, 28.511337, 19.636230>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.262894, 28.461128, 19.596409>,  <28.877417, 28.377447, 19.530039>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.262894, 28.461128, 19.596409> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139821, -0.134024, 0.981065,
		0.227478, -0.968645, -0.099908,
		0.963693, 0.209201, 0.165924,
		29.552002, 28.523888, 19.646187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.144983, 27.755875, 19.956367>,  <28.877417, 28.377447, 19.530039>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.144983, 27.755875, 19.956367> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.425825, 28.036560, 20.004782>,  <29.594330, 28.204971, 20.033831>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.425825, 28.036560, 20.004782>,  <29.144983, 27.755875, 19.956367>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.425825, 28.036560, 20.004782> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117728, -0.282025, 0.952157,
		0.702276, -0.654263, -0.280622,
		0.702103, 0.701714, 0.121035,
		29.636456, 28.247074, 20.041092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.505943, 27.536179, 20.577574>,  <29.144983, 27.755875, 19.956367>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.505943, 27.536179, 20.577574> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.641754, 27.907553, 20.517267>,  <29.723242, 28.130377, 20.481083>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.641754, 27.907553, 20.517267>,  <29.505943, 27.536179, 20.577574>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.641754, 27.907553, 20.517267> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022166, 0.152345, 0.988079,
		0.940334, -0.338823, 0.031146,
		0.339529, 0.928434, -0.150766,
		29.743612, 28.186083, 20.472038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.157766, 27.656843, 20.968958>,  <29.505943, 27.536179, 20.577574>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.157766, 27.656843, 20.968958> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.974552, 28.006800, 20.906010>,  <29.864624, 28.216774, 20.868240>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.974552, 28.006800, 20.906010>,  <30.157766, 27.656843, 20.968958>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.974552, 28.006800, 20.906010> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040181, 0.156475, 0.986864,
		0.888024, 0.458344, -0.036518,
		-0.458038, 0.874892, -0.157371,
		29.837141, 28.269268, 20.858799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.556231, 28.212645, 21.078508>,  <30.157766, 27.656843, 20.968958>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.556231, 28.212645, 21.078508> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.179861, 28.334887, 21.136843>,  <29.954039, 28.408232, 21.171843>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.179861, 28.334887, 21.136843>,  <30.556231, 28.212645, 21.078508>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.179861, 28.334887, 21.136843> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150338, -0.008882, 0.988595,
		0.303415, 0.952117, -0.037587,
		-0.940924, 0.305605, 0.145834,
		29.897583, 28.426569, 21.180593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.590391, 28.717993, 21.624437>,  <30.556231, 28.212645, 21.078508>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.590391, 28.717993, 21.624437> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.196314, 28.650320, 21.613338>,  <29.959867, 28.609716, 21.606680>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.196314, 28.650320, 21.613338>,  <30.590391, 28.717993, 21.624437>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.196314, 28.650320, 21.613338> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008729, -0.112138, 0.993654,
		-0.171217, 0.979185, 0.109001,
		-0.985195, -0.169179, -0.027747,
		29.900755, 28.599566, 21.605015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.344955, 29.191029, 22.134020>,  <30.590391, 28.717993, 21.624437>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.344955, 29.191029, 22.134020> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.069447, 28.902817, 22.101944>,  <29.904142, 28.729889, 22.082699>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.069447, 28.902817, 22.101944>,  <30.344955, 29.191029, 22.134020>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.069447, 28.902817, 22.101944> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149483, 0.032914, 0.988216,
		-0.709401, 0.692641, -0.130377,
		-0.688771, -0.720531, -0.080189,
		29.862816, 28.686657, 22.077887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.821724, 29.387753, 22.715435>,  <30.344955, 29.191029, 22.134020>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.821724, 29.387753, 22.715435> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.722300, 29.012451, 22.619186>,  <29.662645, 28.787270, 22.561438>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.722300, 29.012451, 22.619186>,  <29.821724, 29.387753, 22.715435>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.722300, 29.012451, 22.619186> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351508, -0.144109, 0.925027,
		-0.902585, 0.314506, -0.293984,
		-0.248561, -0.938253, -0.240622,
		29.647732, 28.730976, 22.546999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.192720, 29.354259, 23.042942>,  <29.821724, 29.387753, 22.715435>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.192720, 29.354259, 23.042942> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.280172, 28.971283, 22.967573>,  <29.332644, 28.741497, 22.922352>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.280172, 28.971283, 22.967573>,  <29.192720, 29.354259, 23.042942>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.280172, 28.971283, 22.967573> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217039, -0.235971, 0.947213,
		-0.951364, -0.166195, -0.259393,
		0.218632, -0.957443, -0.188424,
		29.345762, 28.684050, 22.911047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.646500, 28.971638, 23.276945>,  <29.192720, 29.354259, 23.042942>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.646500, 28.971638, 23.276945> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.954704, 28.717081, 23.262434>,  <29.139627, 28.564346, 23.253727>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.954704, 28.717081, 23.262434>,  <28.646500, 28.971638, 23.276945>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.954704, 28.717081, 23.262434> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124374, -0.205914, 0.970634,
		-0.625174, -0.743373, -0.237810,
		0.770512, -0.636393, -0.036276,
		29.185858, 28.526163, 23.251551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.363642, 28.356812, 23.546768>,  <28.646500, 28.971638, 23.276945>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.363642, 28.356812, 23.546768> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.756371, 28.289177, 23.581263>,  <28.992008, 28.248596, 23.601959>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.756371, 28.289177, 23.581263>,  <28.363642, 28.356812, 23.546768>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.756371, 28.289177, 23.581263> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107503, -0.120926, 0.986823,
		-0.156438, -0.978153, -0.136905,
		0.981820, -0.169095, 0.086237,
		29.050917, 28.238451, 23.607134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.300238, 27.778952, 23.961689>,  <28.363642, 28.356812, 23.546768>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.300238, 27.778952, 23.961689> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.667519, 27.937397, 23.960995>,  <28.887886, 28.032463, 23.960577>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.667519, 27.937397, 23.960995>,  <28.300238, 27.778952, 23.961689>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.667519, 27.937397, 23.960995> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035105, -0.077003, 0.996413,
		0.394558, -0.914967, -0.084610,
		0.918201, 0.396112, -0.001738,
		28.942978, 28.056231, 23.960474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.813135, 27.300156, 24.293575>,  <28.300238, 27.778952, 23.961689>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.813135, 27.300156, 24.293575> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.974720, 27.664312, 24.329344>,  <29.071671, 27.882807, 24.350805>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.974720, 27.664312, 24.329344>,  <28.813135, 27.300156, 24.293575>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.974720, 27.664312, 24.329344> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140113, -0.158175, 0.977420,
		0.903981, -0.382313, -0.191455,
		0.403963, 0.910394, 0.089421,
		29.095909, 27.937431, 24.356171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.479521, 27.166666, 24.751959>,  <28.813135, 27.300156, 24.293575>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.479521, 27.166666, 24.751959> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.422823, 27.562538, 24.760405>,  <29.388803, 27.800060, 24.765472>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.422823, 27.562538, 24.760405>,  <29.479521, 27.166666, 24.751959>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.422823, 27.562538, 24.760405> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090359, -0.008305, 0.995874,
		0.985771, 0.143067, -0.088249,
		-0.141744, 0.989678, 0.021114,
		29.380301, 27.859442, 24.766739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.937504, 27.414463, 25.319628>,  <29.479521, 27.166666, 24.751959>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.937504, 27.414463, 25.319628> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.681299, 27.713675, 25.250118>,  <29.527576, 27.893202, 25.208412>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.681299, 27.713675, 25.250118>,  <29.937504, 27.414463, 25.319628>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.681299, 27.713675, 25.250118> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083764, 0.292983, 0.952441,
		0.763366, 0.595494, -0.250317,
		-0.640512, 0.748029, -0.173772,
		29.489145, 27.938084, 25.197987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<33.865570, 30.563606, 28.732914> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.551426, 30.803722, 28.793398>,  <33.362942, 30.947792, 28.829687>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.551426, 30.803722, 28.793398>,  <33.865570, 30.563606, 28.732914>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.551426, 30.803722, 28.793398> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396379, 0.300018, 0.867682,
		0.475497, 0.741376, -0.473564,
		-0.785357, 0.600292, 0.151209,
		33.315819, 30.983810, 28.838760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.142952, 31.188965, 28.868582>,  <33.865570, 30.563606, 28.732914>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.142952, 31.188965, 28.868582> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.772266, 31.187565, 29.018877>,  <33.549854, 31.186724, 29.109055>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.772266, 31.187565, 29.018877>,  <34.142952, 31.188965, 28.868582>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.772266, 31.187565, 29.018877> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357565, 0.299147, 0.884680,
		-0.115499, 0.954201, -0.275973,
		-0.926719, -0.003501, 0.375740,
		33.494251, 31.186514, 29.131599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.091351, 31.820713, 29.276262>,  <34.142952, 31.188965, 28.868582>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.091351, 31.820713, 29.276262> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.821983, 31.561815, 29.419140>,  <33.660362, 31.406477, 29.504866>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.821983, 31.561815, 29.419140>,  <34.091351, 31.820713, 29.276262>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.821983, 31.561815, 29.419140> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322432, 0.177643, 0.929774,
		-0.665244, 0.741294, 0.089065,
		-0.673415, -0.647245, 0.357193,
		33.619961, 31.367641, 29.526299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.683258, 32.170670, 29.685968>,  <34.091351, 31.820713, 29.276262>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.683258, 32.170670, 29.685968> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.660889, 31.792057, 29.813061>,  <33.647465, 31.564890, 29.889317>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.660889, 31.792057, 29.813061>,  <33.683258, 32.170670, 29.685968>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.660889, 31.792057, 29.813061> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491483, 0.250905, 0.833961,
		-0.869090, 0.202800, 0.451171,
		-0.055927, -0.946530, 0.317731,
		33.644112, 31.508099, 29.908381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.630875, 32.240078, 30.407957>,  <33.683258, 32.170670, 29.685968>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.630875, 32.240078, 30.407957> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.668335, 31.841974, 30.397461>,  <33.690811, 31.603111, 30.391163>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.668335, 31.841974, 30.397461>,  <33.630875, 32.240078, 30.407957>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.668335, 31.841974, 30.397461> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226277, -0.004392, 0.974053,
		-0.969551, -0.097157, 0.224793,
		0.093649, -0.995259, -0.026242,
		33.696430, 31.543396, 30.389587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.162621, 31.955635, 30.844820>,  <33.630875, 32.240078, 30.407957>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.162621, 31.955635, 30.844820> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.459347, 31.690041, 30.807220>,  <33.637383, 31.530684, 30.784660>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.459347, 31.690041, 30.807220>,  <33.162621, 31.955635, 30.844820>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.459347, 31.690041, 30.807220> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083996, -0.047065, 0.995354,
		-0.665324, -0.746263, 0.020859,
		0.741814, -0.663985, -0.093997,
		33.681892, 31.490845, 30.779022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.934124, 31.433853, 31.353308>,  <33.162621, 31.955635, 30.844820>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.934124, 31.433853, 31.353308> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.321819, 31.368374, 31.279797>,  <33.554436, 31.329086, 31.235689>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.321819, 31.368374, 31.279797>,  <32.934124, 31.433853, 31.353308>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.321819, 31.368374, 31.279797> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143096, -0.232707, 0.961962,
		-0.200237, -0.958672, -0.202125,
		0.969241, -0.163697, -0.183778,
		33.612591, 31.319263, 31.224663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.094440, 30.855047, 31.628416>,  <32.934124, 31.433853, 31.353308>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.094440, 30.855047, 31.628416> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.439178, 31.053905, 31.588270>,  <33.646023, 31.173220, 31.564182>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.439178, 31.053905, 31.588270>,  <33.094440, 30.855047, 31.628416>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.439178, 31.053905, 31.588270> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086915, 0.050189, 0.994951,
		0.499671, -0.866215, 0.000046,
		0.861843, 0.497144, -0.100365,
		33.697731, 31.203049, 31.558161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.595299, 30.387033, 31.948145>,  <33.094440, 30.855047, 31.628416>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.595299, 30.387033, 31.948145> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.736080, 30.761335, 31.939310>,  <33.820549, 30.985916, 31.934010>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.736080, 30.761335, 31.939310>,  <33.595299, 30.387033, 31.948145>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.736080, 30.761335, 31.939310> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209648, -0.055810, 0.976183,
		0.912236, -0.348205, -0.215822,
		0.351956, 0.935756, -0.022088,
		33.841667, 31.042063, 31.932684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.105198, 30.425180, 32.494480>,  <33.595299, 30.387033, 31.948145>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.105198, 30.425180, 32.494480> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.044529, 30.816870, 32.440632>,  <34.008129, 31.051884, 32.408325>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.044529, 30.816870, 32.440632>,  <34.105198, 30.425180, 32.494480>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.044529, 30.816870, 32.440632> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107592, 0.151739, 0.982547,
		0.982557, 0.134543, -0.128371,
		-0.151674, 0.979221, -0.134616,
		33.999027, 31.110636, 32.400246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.644039, 30.794592, 32.776363>,  <34.105198, 30.425180, 32.494480>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.644039, 30.794592, 32.776363> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.329376, 31.041241, 32.764103>,  <34.140579, 31.189230, 32.756748>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.329376, 31.041241, 32.764103>,  <34.644039, 30.794592, 32.776363>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.329376, 31.041241, 32.764103> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109829, 0.188623, 0.975889,
		0.607537, 0.764328, -0.216106,
		-0.786662, 0.616623, -0.030651,
		34.093376, 31.226227, 32.754910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.854519, 31.314571, 33.188747>,  <34.644039, 30.794592, 32.776363>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.854519, 31.314571, 33.188747> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.455074, 31.335623, 33.189995>,  <34.215408, 31.348253, 33.190742>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.455074, 31.335623, 33.189995>,  <34.854519, 31.314571, 33.188747>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.455074, 31.335623, 33.189995> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016897, 0.263414, 0.964535,
		0.049939, 0.963246, -0.263937,
		-0.998609, 0.052628, 0.003122,
		34.155491, 31.351412, 33.190929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.632351, 31.916204, 33.657806>,  <34.854519, 31.314571, 33.188747>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.632351, 31.916204, 33.657806> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.376720, 31.610872, 33.620041>,  <34.223343, 31.427673, 33.597382>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.376720, 31.610872, 33.620041>,  <34.632351, 31.916204, 33.657806>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.376720, 31.610872, 33.620041> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213361, 0.058002, 0.975250,
		-0.738961, 0.643400, -0.199932,
		-0.639072, -0.763330, -0.094416,
		34.184998, 31.381874, 33.591717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.289509, 32.188026, 33.330143>,  <34.632351, 31.916204, 33.657806>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.289509, 32.188026, 33.330143> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.608253, 32.237614, 33.093620>,  <35.799500, 32.267365, 32.951706>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.608253, 32.237614, 33.093620>,  <35.289509, 32.188026, 33.330143>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.608253, 32.237614, 33.093620> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.600559, 0.269229, -0.752890,
		0.065862, 0.955064, 0.288989,
		0.796863, 0.123969, -0.591305,
		35.847313, 32.274803, 32.916229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.285805, 32.821503, 33.521610>,  <35.289509, 32.188026, 33.330143>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.285805, 32.821503, 33.521610> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.393917, 33.203785, 33.475018>,  <35.458786, 33.433155, 33.447063>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.393917, 33.203785, 33.475018>,  <35.285805, 32.821503, 33.521610>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.393917, 33.203785, 33.475018> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246108, -0.048384, -0.968034,
		-0.930795, 0.290308, 0.222131,
		0.270280, 0.955709, -0.116483,
		35.475002, 33.490498, 33.440071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.787189, 33.176357, 33.050488>,  <35.285805, 32.821503, 33.521610>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.787189, 33.176357, 33.050488> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.152763, 33.338531, 33.042965>,  <35.372108, 33.435837, 33.038452>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.152763, 33.338531, 33.042965>,  <34.787189, 33.176357, 33.050488>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.152763, 33.338531, 33.042965> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053655, 0.074763, -0.995757,
		-0.402305, 0.911063, 0.090082,
		0.913932, 0.405431, -0.018806,
		35.426945, 33.460159, 33.037323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.652710, 33.694607, 32.614033>,  <34.787189, 33.176357, 33.050488>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.652710, 33.694607, 32.614033> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.047688, 33.631588, 32.609280>,  <35.284672, 33.593777, 32.606426>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.047688, 33.631588, 32.609280>,  <34.652710, 33.694607, 32.614033>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.047688, 33.631588, 32.609280> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015550, 0.171761, -0.985016,
		0.157223, 0.972460, 0.172053,
		0.987441, -0.157542, -0.011883,
		35.343922, 33.584324, 32.605717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.912285, 34.179989, 32.176750>,  <34.652710, 33.694607, 32.614033>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.912285, 34.179989, 32.176750> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.226650, 33.933430, 32.196320>,  <35.415272, 33.785496, 32.208061>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.226650, 33.933430, 32.196320>,  <34.912285, 34.179989, 32.176750>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.226650, 33.933430, 32.196320> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197382, 0.175110, -0.964560,
		0.585981, 0.767721, 0.259287,
		0.785917, -0.616393, 0.048923,
		35.462425, 33.748512, 32.210995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.499710, 34.530380, 31.833008>,  <34.912285, 34.179989, 32.176750>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.499710, 34.530380, 31.833008> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.616066, 34.147694, 31.836472>,  <35.685879, 33.918083, 31.838551>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.616066, 34.147694, 31.836472>,  <35.499710, 34.530380, 31.833008>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.616066, 34.147694, 31.836472> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285242, 0.078082, -0.955270,
		0.913247, 0.280350, 0.295609,
		0.290892, -0.956717, 0.008660,
		35.703335, 33.860680, 31.839069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.180393, 34.504112, 31.540152>,  <35.499710, 34.530380, 31.833008>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.180393, 34.504112, 31.540152> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.046730, 34.129192, 31.500557>,  <35.966530, 33.904240, 31.476801>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.046730, 34.129192, 31.500557>,  <36.180393, 34.504112, 31.540152>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.046730, 34.129192, 31.500557> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205043, 0.030214, -0.978287,
		0.919942, -0.347202, 0.182091,
		-0.334161, -0.937304, -0.098986,
		35.946480, 33.848000, 31.470861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.524670, 34.245235, 31.011711>,  <36.180393, 34.504112, 31.540152>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.524670, 34.245235, 31.011711> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.223579, 33.982224, 31.024712>,  <36.042927, 33.824417, 31.032513>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.223579, 33.982224, 31.024712>,  <36.524670, 34.245235, 31.011711>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.223579, 33.982224, 31.024712> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021051, -0.073383, -0.997082,
		0.657997, -0.749845, 0.069079,
		-0.752726, -0.657531, 0.032501,
		35.997761, 33.784966, 31.034462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.565712, 33.906746, 30.278107>,  <36.524670, 34.245235, 31.011711>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.565712, 33.906746, 30.278107> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.219231, 33.768841, 30.422787>,  <36.011341, 33.686100, 30.509594>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.219231, 33.768841, 30.422787>,  <36.565712, 33.906746, 30.278107>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.219231, 33.768841, 30.422787> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341786, -0.119251, -0.932181,
		0.364513, -0.931085, -0.014539,
		-0.866206, -0.344761, 0.361701,
		35.959370, 33.665413, 30.531298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.346748, 33.190140, 29.973473>,  <36.565712, 33.906746, 30.278107>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.346748, 33.190140, 29.973473> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.999981, 33.337708, 30.107553>,  <35.791920, 33.426247, 30.188002>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.999981, 33.337708, 30.107553>,  <36.346748, 33.190140, 29.973473>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.999981, 33.337708, 30.107553> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455594, -0.313618, -0.833113,
		-0.202222, -0.874954, 0.439956,
		-0.866914, 0.368915, 0.335204,
		35.739906, 33.448383, 30.208115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.741718, 32.674217, 29.785559>,  <36.346748, 33.190140, 29.973473>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.741718, 32.674217, 29.785559> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.515373, 32.996033, 29.857685>,  <35.379566, 33.189121, 29.900961>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.515373, 32.996033, 29.857685>,  <35.741718, 32.674217, 29.785559>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.515373, 32.996033, 29.857685> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.560688, -0.215140, -0.799589,
		-0.604511, -0.553556, 0.572837,
		-0.565858, 0.804544, 0.180317,
		35.345615, 33.237396, 29.911781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.066746, 32.458153, 29.873106>,  <35.741718, 32.674217, 29.785559>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.066746, 32.458153, 29.873106> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.047817, 32.836689, 29.745226>,  <35.036461, 33.063808, 29.668497>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.047817, 32.836689, 29.745226>,  <35.066746, 32.458153, 29.873106>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.047817, 32.836689, 29.745226> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491392, -0.300706, -0.817380,
		-0.869652, 0.118419, 0.479252,
		-0.047321, 0.946337, -0.319700,
		35.033623, 33.120590, 29.649317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.472588, 32.522385, 29.453651>,  <35.066746, 32.458153, 29.873106>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.472588, 32.522385, 29.453651> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.631687, 32.870018, 29.336014>,  <34.727146, 33.078598, 29.265430>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.631687, 32.870018, 29.336014>,  <34.472588, 32.522385, 29.453651>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.631687, 32.870018, 29.336014> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376514, -0.137695, -0.916121,
		-0.836680, 0.475116, 0.272454,
		0.397748, 0.869083, -0.294094,
		34.751011, 33.130741, 29.247786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.895493, 32.850189, 29.081997>,  <34.472588, 32.522385, 29.453651>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.895493, 32.850189, 29.081997> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.228565, 33.022560, 28.942884>,  <34.428410, 33.125980, 28.859417>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.228565, 33.022560, 28.942884>,  <33.895493, 32.850189, 29.081997>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.228565, 33.022560, 28.942884> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343091, -0.091511, -0.934834,
		-0.434669, 0.897735, 0.071647,
		0.832677, 0.430925, -0.347782,
		34.478367, 33.151836, 28.838551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.708279, 33.404198, 28.554989>,  <33.895493, 32.850189, 29.081997>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.708279, 33.404198, 28.554989> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.084000, 33.306519, 28.458586>,  <34.309433, 33.247910, 28.400743>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.084000, 33.306519, 28.458586>,  <33.708279, 33.404198, 28.554989>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.084000, 33.306519, 28.458586> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262139, -0.057575, -0.963311,
		0.221366, 0.968014, -0.118095,
		0.939298, -0.244201, -0.241009,
		34.365788, 33.233257, 28.386284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.770824, 34.180733, 28.446012>,  <33.708279, 33.404198, 28.554989>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.770824, 34.180733, 28.446012> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.575577, 34.528622, 28.416855>,  <33.458427, 34.737354, 28.399361>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.575577, 34.528622, 28.416855>,  <33.770824, 34.180733, 28.446012>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.575577, 34.528622, 28.416855> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093110, 0.031149, 0.995169,
		0.867795, 0.492550, 0.065776,
		-0.488121, 0.869727, -0.072892,
		33.429142, 34.789539, 28.394987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.083912, 34.624973, 28.837427>,  <33.770824, 34.180733, 28.446012>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.083912, 34.624973, 28.837427> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.704365, 34.747131, 28.805470>,  <33.476635, 34.820427, 28.786295>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.704365, 34.747131, 28.805470>,  <34.083912, 34.624973, 28.837427>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.704365, 34.747131, 28.805470> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054743, 0.090067, 0.994430,
		0.310888, 0.947957, -0.068744,
		-0.948869, 0.305393, -0.079894,
		33.419704, 34.838749, 28.781502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.982754, 35.126194, 29.335785>,  <34.083912, 34.624973, 28.837427>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.982754, 35.126194, 29.335785> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.597195, 35.062851, 29.250154>,  <33.365860, 35.024845, 29.198776>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.597195, 35.062851, 29.250154>,  <33.982754, 35.126194, 29.335785>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.597195, 35.062851, 29.250154> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236645, 0.140810, 0.961339,
		-0.122094, 0.977289, -0.173201,
		-0.963894, -0.158361, -0.214078,
		33.308025, 35.015343, 29.185930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.673660, 35.675808, 29.708849>,  <33.982754, 35.126194, 29.335785>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.673660, 35.675808, 29.708849> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.423000, 35.367264, 29.664469>,  <33.272606, 35.182137, 29.637840>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.423000, 35.367264, 29.664469>,  <33.673660, 35.675808, 29.708849>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.423000, 35.367264, 29.664469> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235649, 0.051853, 0.970454,
		-0.742818, 0.634281, -0.214264,
		-0.626651, -0.771362, -0.110950,
		33.235004, 35.135857, 29.631184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.013737, 35.871387, 29.997320>,  <33.673660, 35.675808, 29.708849>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.013737, 35.871387, 29.997320> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.997673, 35.471825, 30.006895>,  <32.988033, 35.232086, 30.012640>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.997673, 35.471825, 30.006895>,  <33.013737, 35.871387, 29.997320>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.997673, 35.471825, 30.006895> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415718, 0.038491, 0.908679,
		-0.908606, 0.026544, -0.416809,
		-0.040163, -0.998906, 0.023939,
		32.985622, 35.172153, 30.014076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.322620, 35.726524, 30.167456>,  <33.013737, 35.871387, 29.997320>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.322620, 35.726524, 30.167456> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.467831, 35.359535, 30.232519>,  <32.554955, 35.139343, 30.271557>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.467831, 35.359535, 30.232519>,  <32.322620, 35.726524, 30.167456>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.467831, 35.359535, 30.232519> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.658503, -0.129109, 0.741421,
		-0.659233, -0.376263, -0.651028,
		0.363023, -0.917473, 0.162657,
		32.576736, 35.084293, 30.281317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.732714, 35.268360, 30.334816>,  <32.322620, 35.726524, 30.167456>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.732714, 35.268360, 30.334816> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.065266, 35.117756, 30.498304>,  <32.264797, 35.027393, 30.596397>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.065266, 35.117756, 30.498304>,  <31.732714, 35.268360, 30.334816>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.065266, 35.117756, 30.498304> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.531641, -0.324788, 0.782222,
		-0.161762, -0.867616, -0.470187,
		0.831379, -0.376504, 0.408722,
		32.314678, 35.004803, 30.620920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.476303, 34.575588, 30.587606>,  <31.732714, 35.268360, 30.334816>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.476303, 34.575588, 30.587606> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.808306, 34.682781, 30.783268>,  <32.007507, 34.747097, 30.900665>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.808306, 34.682781, 30.783268>,  <31.476303, 34.575588, 30.587606>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.808306, 34.682781, 30.783268> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447440, -0.203682, 0.870811,
		0.332993, -0.941648, -0.049152,
		0.830008, 0.267981, 0.489155,
		32.057308, 34.763176, 30.930014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.682245, 33.976151, 31.022009>,  <31.476303, 34.575588, 30.587606>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.682245, 33.976151, 31.022009> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.870354, 34.284019, 31.194729>,  <31.983219, 34.468742, 31.298361>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.870354, 34.284019, 31.194729>,  <31.682245, 33.976151, 31.022009>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.870354, 34.284019, 31.194729> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267341, -0.342045, 0.900852,
		0.841055, -0.539082, 0.044911,
		0.470272, 0.769673, 0.431798,
		32.011436, 34.514919, 31.324268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.053215, 33.666996, 31.482857>,  <31.682245, 33.976151, 31.022009>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.053215, 33.666996, 31.482857> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.067833, 34.039391, 31.628147>,  <32.076603, 34.262825, 31.715322>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.067833, 34.039391, 31.628147>,  <32.053215, 33.666996, 31.482857>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.067833, 34.039391, 31.628147> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298414, -0.336720, 0.893067,
		0.953737, -0.141029, 0.265513,
		0.036544, 0.930984, 0.363227,
		32.078796, 34.318687, 31.737116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.319935, 33.585285, 32.145195>,  <32.053215, 33.666996, 31.482857>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.319935, 33.585285, 32.145195> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.137581, 33.941284, 32.141869>,  <32.028168, 34.154884, 32.139874>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.137581, 33.941284, 32.141869>,  <32.319935, 33.585285, 32.145195>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.137581, 33.941284, 32.141869> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466077, -0.230756, 0.854122,
		0.758251, 0.393255, 0.520006,
		-0.455882, 0.890001, -0.008316,
		32.000816, 34.208286, 32.139374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.437553, 33.905666, 32.780869>,  <32.319935, 33.585285, 32.145195>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.437553, 33.905666, 32.780869> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.104595, 34.038891, 32.603699>,  <31.904819, 34.118828, 32.497398>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.104595, 34.038891, 32.603699>,  <32.437553, 33.905666, 32.780869>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.104595, 34.038891, 32.603699> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508742, -0.142331, 0.849072,
		0.219754, 0.932100, 0.287921,
		-0.832400, 0.333064, -0.442921,
		31.854876, 34.138809, 32.470821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<33.497517, 34.558628, 24.698992> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.113621, 34.670975, 24.700628>,  <32.883282, 34.738384, 24.701611>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.113621, 34.670975, 24.700628>,  <33.497517, 34.558628, 24.698992>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.113621, 34.670975, 24.700628> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103342, 0.339515, 0.934906,
		0.261195, 0.897688, -0.354871,
		-0.959738, 0.280866, 0.004089,
		32.825699, 34.755234, 24.701855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.533871, 35.248158, 25.005688>,  <33.497517, 34.558628, 24.698992>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.533871, 35.248158, 25.005688> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.158020, 35.127018, 25.069422>,  <32.932510, 35.054333, 25.107662>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.158020, 35.127018, 25.069422>,  <33.533871, 35.248158, 25.005688>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.158020, 35.127018, 25.069422> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048294, 0.343599, 0.937874,
		-0.338781, 0.888945, -0.308228,
		-0.939625, -0.302849, 0.159335,
		32.876133, 35.036163, 25.117222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.170864, 35.815575, 25.343231>,  <33.533871, 35.248158, 25.005688>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.170864, 35.815575, 25.343231> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.942566, 35.496536, 25.421291>,  <32.805588, 35.305111, 25.468128>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.942566, 35.496536, 25.421291>,  <33.170864, 35.815575, 25.343231>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.942566, 35.496536, 25.421291> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036027, 0.213111, 0.976363,
		-0.820335, 0.564287, -0.092898,
		-0.570747, -0.797599, 0.195152,
		32.771343, 35.257256, 25.479837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.626854, 36.021217, 25.872416>,  <33.170864, 35.815575, 25.343231>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.626854, 36.021217, 25.872416> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.658779, 35.624756, 25.914824>,  <32.677933, 35.386879, 25.940268>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.658779, 35.624756, 25.914824>,  <32.626854, 36.021217, 25.872416>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.658779, 35.624756, 25.914824> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281358, 0.124434, 0.951501,
		-0.956278, -0.046111, 0.288800,
		0.079812, -0.991156, 0.106019,
		32.682724, 35.327408, 25.946629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.133080, 35.716389, 26.363243>,  <32.626854, 36.021217, 25.872416>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.133080, 35.716389, 26.363243> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.439560, 35.459370, 26.366508>,  <32.623447, 35.305161, 26.368467>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.439560, 35.459370, 26.366508>,  <32.133080, 35.716389, 26.363243>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.439560, 35.459370, 26.366508> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004801, 0.006982, 0.999964,
		-0.642579, -0.766216, 0.002265,
		0.766204, -0.642545, 0.008165,
		32.669422, 35.266605, 26.368958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.851835, 35.159153, 26.815453>,  <32.133080, 35.716389, 26.363243>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.851835, 35.159153, 26.815453> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.251389, 35.155624, 26.796877>,  <32.491119, 35.153507, 26.785732>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.251389, 35.155624, 26.796877>,  <31.851835, 35.159153, 26.815453>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.251389, 35.155624, 26.796877> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045900, -0.053728, 0.997500,
		-0.011295, -0.998517, -0.053263,
		0.998883, -0.008822, -0.046439,
		32.551052, 35.152977, 26.782946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.100513, 34.745312, 27.429449>,  <31.851835, 35.159153, 26.815453>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.100513, 34.745312, 27.429449> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.459888, 34.886646, 27.325171>,  <32.675514, 34.971447, 27.262604>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.459888, 34.886646, 27.325171>,  <32.100513, 34.745312, 27.429449>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.459888, 34.886646, 27.325171> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288963, -0.028727, 0.956909,
		0.330622, -0.935055, -0.127910,
		0.898437, 0.353336, -0.260698,
		32.729420, 34.992645, 27.246962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.601170, 34.212620, 27.637192>,  <32.100513, 34.745312, 27.429449>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.601170, 34.212620, 27.637192> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.767986, 34.574787, 27.605461>,  <32.868076, 34.792088, 27.586422>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.767986, 34.574787, 27.605461>,  <32.601170, 34.212620, 27.637192>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.767986, 34.574787, 27.605461> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363041, -0.085929, 0.927803,
		0.833235, -0.415727, -0.364541,
		0.417038, 0.905421, -0.079327,
		32.893097, 34.846413, 27.581663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.343956, 34.156479, 27.871155>,  <32.601170, 34.212620, 27.637192>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.343956, 34.156479, 27.871155> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.287113, 34.548119, 27.929346>,  <33.253010, 34.783104, 27.964260>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.287113, 34.548119, 27.929346>,  <33.343956, 34.156479, 27.871155>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.287113, 34.548119, 27.929346> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354120, -0.086957, 0.931148,
		0.924340, 0.183837, -0.334363,
		-0.142105, 0.979103, 0.145479,
		33.244480, 34.841850, 27.972990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.897785, 33.728176, 27.907001>,  <33.343956, 34.156479, 27.871155>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.897785, 33.728176, 27.907001> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.191463, 33.458572, 27.939684>,  <34.367672, 33.296810, 27.959293>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.191463, 33.458572, 27.939684>,  <33.897785, 33.728176, 27.907001>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.191463, 33.458572, 27.939684> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027003, -0.149239, -0.988433,
		0.678402, 0.723495, -0.127770,
		0.734195, -0.674005, 0.081707,
		34.411720, 33.256371, 27.964195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.388565, 33.853027, 27.393322>,  <33.897785, 33.728176, 27.907001>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.388565, 33.853027, 27.393322> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.453682, 33.464832, 27.464481>,  <34.492752, 33.231915, 27.507177>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.453682, 33.464832, 27.464481>,  <34.388565, 33.853027, 27.393322>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.453682, 33.464832, 27.464481> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015932, -0.177695, -0.983957,
		0.986531, 0.163019, -0.013467,
		0.162796, -0.970489, 0.177899,
		34.502522, 33.173687, 27.517851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.872288, 33.648800, 26.962372>,  <34.388565, 33.853027, 27.393322>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.872288, 33.648800, 26.962372> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.745770, 33.277767, 27.041912>,  <34.669857, 33.055145, 27.089636>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.745770, 33.277767, 27.041912>,  <34.872288, 33.648800, 26.962372>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.745770, 33.277767, 27.041912> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232379, -0.278983, -0.931756,
		0.919758, -0.248503, 0.303793,
		-0.316297, -0.927585, 0.198850,
		34.650879, 32.999493, 27.101566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.357269, 33.239113, 26.777319>,  <34.872288, 33.648800, 26.962372>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.357269, 33.239113, 26.777319> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.033443, 33.004803, 26.761961>,  <34.839149, 32.864216, 26.752747>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.033443, 33.004803, 26.761961>,  <35.357269, 33.239113, 26.777319>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.033443, 33.004803, 26.761961> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138232, -0.126656, -0.982268,
		0.570525, -0.800516, 0.183509,
		-0.809564, -0.585775, -0.038396,
		34.790573, 32.829071, 26.750443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.554188, 32.573509, 26.464703>,  <35.357269, 33.239113, 26.777319>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.554188, 32.573509, 26.464703> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.158504, 32.605080, 26.415314>,  <34.921097, 32.624023, 26.385681>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.158504, 32.605080, 26.415314>,  <35.554188, 32.573509, 26.464703>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.158504, 32.605080, 26.415314> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074460, -0.454984, -0.887381,
		-0.126215, -0.886995, 0.444195,
		-0.989205, 0.078926, -0.123471,
		34.861744, 32.628757, 26.378273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.312557, 31.882248, 26.249763>,  <35.554188, 32.573509, 26.464703>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.312557, 31.882248, 26.249763> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.004875, 32.114639, 26.143341>,  <34.820267, 32.254074, 26.079487>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.004875, 32.114639, 26.143341>,  <35.312557, 31.882248, 26.249763>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.004875, 32.114639, 26.143341> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116444, -0.281947, -0.952338,
		-0.628302, -0.763524, 0.149223,
		-0.769205, 0.580980, -0.266056,
		34.774113, 32.288933, 26.063524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.891083, 31.512400, 25.734158>,  <35.312557, 31.882248, 26.249763>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.891083, 31.512400, 25.734158> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.760342, 31.885836, 25.675409>,  <34.681896, 32.109898, 25.640160>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.760342, 31.885836, 25.675409>,  <34.891083, 31.512400, 25.734158>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.760342, 31.885836, 25.675409> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039428, -0.168743, -0.984871,
		-0.944251, -0.316120, 0.091965,
		-0.326856, 0.933592, -0.146872,
		34.662285, 32.165913, 25.631348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.341400, 31.437838, 25.223616>,  <34.891083, 31.512400, 25.734158>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.341400, 31.437838, 25.223616> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.434082, 31.824856, 25.183283>,  <34.489693, 32.057068, 25.159084>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.434082, 31.824856, 25.183283>,  <34.341400, 31.437838, 25.223616>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.434082, 31.824856, 25.183283> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061843, -0.088790, -0.994129,
		-0.970818, 0.236583, 0.039263,
		0.231708, 0.967546, -0.100830,
		34.503593, 32.115120, 25.153034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.833370, 31.730217, 24.875952>,  <34.341400, 31.437838, 25.223616>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.833370, 31.730217, 24.875952> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.125053, 31.999369, 24.826159>,  <34.300064, 32.160858, 24.796282>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.125053, 31.999369, 24.826159>,  <33.833370, 31.730217, 24.875952>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.125053, 31.999369, 24.826159> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193609, 0.028392, -0.980668,
		-0.656335, 0.739209, 0.150978,
		0.729205, 0.672877, -0.124482,
		34.343815, 32.201233, 24.788815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.652225, 32.338249, 24.609182>,  <33.833370, 31.730217, 24.875952>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.652225, 32.338249, 24.609182> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.031425, 32.290024, 24.491364>,  <34.258945, 32.261089, 24.420673>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.031425, 32.290024, 24.491364>,  <33.652225, 32.338249, 24.609182>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.031425, 32.290024, 24.491364> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286955, 0.076500, -0.954885,
		0.137656, 0.989754, 0.037926,
		0.948002, -0.120562, -0.294546,
		34.315826, 32.253857, 24.403000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.682381, 32.755135, 23.908194>,  <33.652225, 32.338249, 24.609182>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.682381, 32.755135, 23.908194> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.001789, 32.515961, 23.936049>,  <34.193432, 32.372456, 23.952761>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.001789, 32.515961, 23.936049>,  <33.682381, 32.755135, 23.908194>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.001789, 32.515961, 23.936049> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105745, -0.253212, -0.961614,
		0.592612, 0.760501, -0.265423,
		0.798517, -0.597931, 0.069637,
		34.241344, 32.336582, 23.956940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.175346, 32.957573, 23.432423>,  <33.682381, 32.755135, 23.908194>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.175346, 32.957573, 23.432423> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.274555, 32.578476, 23.512699>,  <34.334080, 32.351017, 23.560865>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.274555, 32.578476, 23.512699>,  <34.175346, 32.957573, 23.432423>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.274555, 32.578476, 23.512699> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028732, -0.214269, -0.976352,
		0.968328, 0.236392, -0.080374,
		0.248023, -0.947738, 0.200691,
		34.348961, 32.294155, 23.572906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.754997, 32.785294, 22.794006>,  <34.175346, 32.957573, 23.432423>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.754997, 32.785294, 22.794006> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.683308, 32.427902, 22.958727>,  <34.640293, 32.213467, 23.057560>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.683308, 32.427902, 22.958727>,  <34.754997, 32.785294, 22.794006>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.683308, 32.427902, 22.958727> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082348, -0.403487, -0.911272,
		0.980355, -0.197236, -0.001260,
		-0.179227, -0.893474, 0.411802,
		34.629539, 32.159859, 23.082268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.282898, 32.266373, 22.483828>,  <34.754997, 32.785294, 22.794006>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.282898, 32.266373, 22.483828> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.958874, 32.064323, 22.602922>,  <34.764458, 31.943094, 22.674379>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.958874, 32.064323, 22.602922>,  <35.282898, 32.266373, 22.483828>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.958874, 32.064323, 22.602922> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042676, -0.557235, -0.829257,
		0.584788, -0.659044, 0.472952,
		-0.810063, -0.505124, 0.297739,
		34.715855, 31.912786, 22.692244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<27.059568, 28.586840, 23.677061> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.192038, 28.964136, 23.667116>,  <27.271519, 29.190514, 23.661148>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.192038, 28.964136, 23.667116>,  <27.059568, 28.586840, 23.677061>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.192038, 28.964136, 23.667116> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334994, -0.092900, 0.937629,
		0.882102, -0.318847, -0.346747,
		0.331173, 0.943242, -0.024864,
		27.291389, 29.247108, 23.659657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.646217, 28.647730, 24.041628>,  <27.059568, 28.586840, 23.677061>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.646217, 28.647730, 24.041628> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.549881, 29.035841, 24.032223>,  <27.492079, 29.268707, 24.026579>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.549881, 29.035841, 24.032223>,  <27.646217, 28.647730, 24.041628>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.549881, 29.035841, 24.032223> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261185, 0.088125, 0.961258,
		0.934761, 0.225368, -0.274646,
		-0.240839, 0.970280, -0.023513,
		27.477629, 29.326925, 24.025169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.108295, 28.976080, 24.375380>,  <27.646217, 28.647730, 24.041628>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.108295, 28.976080, 24.375380> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.814837, 29.246841, 24.399250>,  <27.638762, 29.409298, 24.413572>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.814837, 29.246841, 24.399250>,  <28.108295, 28.976080, 24.375380>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.814837, 29.246841, 24.399250> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147210, 0.072583, 0.986439,
		0.663393, 0.732484, -0.152897,
		-0.733648, 0.676904, 0.059678,
		27.594742, 29.449913, 24.417154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.368238, 29.546614, 24.829006>,  <28.108295, 28.976080, 24.375380>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.368238, 29.546614, 24.829006> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.968491, 29.560259, 24.824978>,  <27.728642, 29.568445, 24.822561>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.968491, 29.560259, 24.824978>,  <28.368238, 29.546614, 24.829006>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.968491, 29.560259, 24.824978> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006239, 0.110639, 0.993841,
		0.035015, 0.993275, -0.110357,
		-0.999367, 0.034111, -0.010071,
		27.668680, 29.570492, 24.821957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.114517, 30.246300, 25.157345>,  <28.368238, 29.546614, 24.829006>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.114517, 30.246300, 25.157345> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.819145, 29.976826, 25.169130>,  <27.641922, 29.815142, 25.176203>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.819145, 29.976826, 25.169130>,  <28.114517, 30.246300, 25.157345>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.819145, 29.976826, 25.169130> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011098, 0.055831, 0.998379,
		-0.674237, 0.736907, -0.048704,
		-0.738431, -0.673684, 0.029465,
		27.597616, 29.774721, 25.177969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.673506, 30.589050, 25.664900>,  <28.114517, 30.246300, 25.157345>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.673506, 30.589050, 25.664900> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.510288, 30.225626, 25.629089>,  <27.412357, 30.007572, 25.607603>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.510288, 30.225626, 25.629089>,  <27.673506, 30.589050, 25.664900>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.510288, 30.225626, 25.629089> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187189, -0.012718, 0.982242,
		-0.893565, 0.417558, -0.164883,
		-0.408046, -0.908561, -0.089527,
		27.387875, 29.953058, 25.602232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.168926, 30.658905, 26.111181>,  <27.673506, 30.589050, 25.664900>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.168926, 30.658905, 26.111181> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.219099, 30.265320, 26.060459>,  <27.249203, 30.029169, 26.030025>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.219099, 30.265320, 26.060459>,  <27.168926, 30.658905, 26.111181>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.219099, 30.265320, 26.060459> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099123, -0.114747, 0.988437,
		-0.987138, -0.136551, 0.083140,
		0.125432, -0.983965, -0.126806,
		27.256729, 29.970131, 26.022417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.661617, 30.277843, 26.556952>,  <27.168926, 30.658905, 26.111181>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.661617, 30.277843, 26.556952> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.985737, 30.054604, 26.485466>,  <27.180208, 29.920660, 26.442574>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.985737, 30.054604, 26.485466>,  <26.661617, 30.277843, 26.556952>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.985737, 30.054604, 26.485466> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041577, -0.249448, 0.967495,
		-0.584538, -0.791392, -0.178924,
		0.810301, -0.558098, -0.178715,
		27.228827, 29.887175, 26.431852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.463606, 29.642977, 26.843849>,  <26.661617, 30.277843, 26.556952>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.463606, 29.642977, 26.843849> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.862913, 29.656006, 26.824259>,  <27.102497, 29.663824, 26.812504>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.862913, 29.656006, 26.824259>,  <26.463606, 29.642977, 26.843849>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.862913, 29.656006, 26.824259> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050927, -0.062043, 0.996773,
		0.029430, -0.997542, -0.063594,
		0.998269, 0.032573, -0.048976,
		27.162394, 29.665777, 26.809566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.611254, 29.241243, 27.313549>,  <26.463606, 29.642977, 26.843849>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.611254, 29.241243, 27.313549> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.963072, 29.421688, 27.253021>,  <27.174162, 29.529955, 27.216705>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.963072, 29.421688, 27.253021>,  <26.611254, 29.241243, 27.313549>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.963072, 29.421688, 27.253021> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172021, -0.004965, 0.985081,
		0.443631, -0.892453, -0.081968,
		0.879546, 0.451112, -0.151318,
		27.226936, 29.557022, 27.207626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.013845, 28.956053, 27.797672>,  <26.611254, 29.241243, 27.313549>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.013845, 28.956053, 27.797672> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.221432, 29.289532, 27.722178>,  <27.345984, 29.489620, 27.676880>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.221432, 29.289532, 27.722178>,  <27.013845, 28.956053, 27.797672>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.221432, 29.289532, 27.722178> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293267, 0.033741, 0.955435,
		0.802913, -0.551187, -0.226986,
		0.518965, 0.833699, -0.188736,
		27.377121, 29.539642, 27.665556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.719812, 28.813248, 27.933151>,  <27.013845, 28.956053, 27.797672>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.719812, 28.813248, 27.933151> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.678850, 29.209820, 27.965590>,  <27.654272, 29.447763, 27.985052>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.678850, 29.209820, 27.965590>,  <27.719812, 28.813248, 27.933151>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.678850, 29.209820, 27.965590> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381424, -0.036157, 0.923693,
		0.918710, 0.125523, -0.374454,
		-0.102405, 0.991432, 0.081095,
		27.648129, 29.507250, 27.989918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.227150, 29.007076, 28.305231>,  <27.719812, 28.813248, 27.933151>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.227150, 29.007076, 28.305231> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.026777, 29.352665, 28.325716>,  <27.906553, 29.560019, 28.338007>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.026777, 29.352665, 28.325716>,  <28.227150, 29.007076, 28.305231>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.026777, 29.352665, 28.325716> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363249, 0.156166, 0.918511,
		0.785568, 0.478714, -0.392065,
		-0.500932, 0.863970, 0.051213,
		27.876497, 29.611856, 28.341080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.703547, 29.497862, 28.568735>,  <28.227150, 29.007076, 28.305231>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.703547, 29.497862, 28.568735> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.332634, 29.617937, 28.658215>,  <28.110086, 29.689981, 28.711903>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.332634, 29.617937, 28.658215>,  <28.703547, 29.497862, 28.568735>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.332634, 29.617937, 28.658215> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325863, 0.353042, 0.877026,
		0.184298, 0.886143, -0.425188,
		-0.927279, 0.300188, 0.223696,
		28.054451, 29.707993, 28.725323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.402260, 29.893841, 28.451250>,  <28.703547, 29.497862, 28.568735>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.402260, 29.893841, 28.451250> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.683874, 29.618544, 28.521282>,  <29.852842, 29.453365, 28.563301>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.683874, 29.618544, 28.521282>,  <29.402260, 29.893841, 28.451250>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.683874, 29.618544, 28.521282> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044693, -0.288989, -0.956288,
		0.708756, 0.665437, -0.234219,
		0.704037, -0.688243, 0.175082,
		29.895084, 29.412071, 28.573807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.870169, 29.881721, 27.841921>,  <29.402260, 29.893841, 28.451250>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.870169, 29.881721, 27.841921> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.986982, 29.562731, 28.053106>,  <30.057070, 29.371336, 28.179817>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.986982, 29.562731, 28.053106>,  <29.870169, 29.881721, 27.841921>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.986982, 29.562731, 28.053106> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177495, -0.497249, -0.849258,
		0.939793, 0.341724, -0.003666,
		0.292034, -0.797476, 0.527966,
		30.074593, 29.323488, 28.211496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.579586, 29.628166, 27.667635>,  <29.870169, 29.881721, 27.841921>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.579586, 29.628166, 27.667635> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.372089, 29.315636, 27.806448>,  <30.247591, 29.128117, 27.889736>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.372089, 29.315636, 27.806448>,  <30.579586, 29.628166, 27.667635>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.372089, 29.315636, 27.806448> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006251, -0.409376, -0.912344,
		0.854908, -0.471102, 0.217245,
		-0.518742, -0.781328, 0.347034,
		30.216467, 29.081238, 27.910559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.872686, 29.035923, 27.382540>,  <30.579586, 29.628166, 27.667635>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.872686, 29.035923, 27.382540> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.491980, 28.957516, 27.476955>,  <30.263556, 28.910471, 27.533606>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.491980, 28.957516, 27.476955>,  <30.872686, 29.035923, 27.382540>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.491980, 28.957516, 27.476955> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101141, -0.525867, -0.844532,
		0.289671, -0.827672, 0.480677,
		-0.951767, -0.196020, 0.236040,
		30.206450, 28.898710, 27.547768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.735250, 28.363312, 27.003242>,  <30.872686, 29.035923, 27.382540>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.735250, 28.363312, 27.003242> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.380383, 28.495089, 27.132483>,  <30.167461, 28.574154, 27.210028>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.380383, 28.495089, 27.132483>,  <30.735250, 28.363312, 27.003242>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.380383, 28.495089, 27.132483> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456077, -0.519601, -0.722502,
		-0.070139, -0.788342, 0.611226,
		-0.887172, 0.329442, 0.323101,
		30.114231, 28.593922, 27.229412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.279173, 27.825838, 26.894999>,  <30.735250, 28.363312, 27.003242>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.279173, 27.825838, 26.894999> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.025539, 28.130993, 26.945501>,  <29.873360, 28.314085, 26.975803>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.025539, 28.130993, 26.945501>,  <30.279173, 27.825838, 26.894999>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.025539, 28.130993, 26.945501> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.545629, -0.325721, -0.772136,
		-0.547928, -0.558489, 0.622788,
		-0.634085, 0.762887, 0.126256,
		29.835314, 28.359859, 26.983377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.555269, 27.517967, 26.924078>,  <30.279173, 27.825838, 26.894999>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.555269, 27.517967, 26.924078> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.544157, 27.902214, 26.813482>,  <29.537489, 28.132761, 26.747126>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.544157, 27.902214, 26.813482>,  <29.555269, 27.517967, 26.924078>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.544157, 27.902214, 26.813482> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.644893, -0.228559, -0.729297,
		-0.763768, 0.158045, 0.625844,
		-0.027781, 0.960616, -0.276488,
		29.535822, 28.190399, 26.730536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.983446, 27.468700, 26.552624>,  <29.555269, 27.517967, 26.924078>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.983446, 27.468700, 26.552624> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.148420, 27.820581, 26.457951>,  <29.247404, 28.031710, 26.401148>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.148420, 27.820581, 26.457951>,  <28.983446, 27.468700, 26.552624>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.148420, 27.820581, 26.457951> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362163, -0.080062, -0.928670,
		-0.835904, 0.468734, 0.285576,
		0.412435, 0.879704, -0.236682,
		29.272150, 28.084492, 26.386946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.530828, 27.900419, 26.111483>,  <28.983446, 27.468700, 26.552624>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.530828, 27.900419, 26.111483> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.868790, 28.094099, 26.020542>,  <29.071568, 28.210306, 25.965977>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.868790, 28.094099, 26.020542>,  <28.530828, 27.900419, 26.111483>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.868790, 28.094099, 26.020542> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227146, -0.060042, -0.972008,
		-0.484295, 0.872896, 0.059254,
		0.844904, 0.484198, -0.227353,
		29.122261, 28.239359, 25.952335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.343351, 28.306528, 25.569485>,  <28.530828, 27.900419, 26.111483>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.343351, 28.306528, 25.569485> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.741087, 28.273602, 25.542603>,  <28.979729, 28.253845, 25.526472>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.741087, 28.273602, 25.542603>,  <28.343351, 28.306528, 25.569485>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.741087, 28.273602, 25.542603> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070079, -0.032513, -0.997011,
		0.079883, 0.996076, -0.038097,
		0.994338, -0.082315, -0.067207,
		29.039389, 28.248907, 25.522440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.456968, 28.711613, 25.027737>,  <28.343351, 28.306528, 25.569485>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.456968, 28.711613, 25.027737> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.785759, 28.491776, 25.087475>,  <28.983032, 28.359873, 25.123318>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.785759, 28.491776, 25.087475>,  <28.456968, 28.711613, 25.027737>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.785759, 28.491776, 25.087475> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142640, -0.055211, -0.988234,
		0.551371, 0.833607, 0.033012,
		0.821976, -0.549592, 0.149347,
		29.032352, 28.326899, 25.132278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.032269, 29.133158, 24.825003>,  <28.456968, 28.711613, 25.027737>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.032269, 29.133158, 24.825003> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.130861, 28.746092, 24.803562>,  <29.190016, 28.513853, 24.790697>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.130861, 28.746092, 24.803562>,  <29.032269, 29.133158, 24.825003>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.130861, 28.746092, 24.803562> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177658, 0.099485, -0.979051,
		0.952725, 0.231793, 0.196435,
		0.246480, -0.967664, -0.053602,
		29.204805, 28.455793, 24.787481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.734524, 29.071453, 24.515871>,  <29.032269, 29.133158, 24.825003>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.734524, 29.071453, 24.515871> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.537886, 28.728933, 24.452518>,  <29.419903, 28.523420, 24.414507>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.537886, 28.728933, 24.452518>,  <29.734524, 29.071453, 24.515871>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.537886, 28.728933, 24.452518> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187222, 0.073692, -0.979549,
		0.850460, -0.511194, 0.124091,
		-0.491595, -0.856300, -0.158379,
		29.390408, 28.472044, 24.405005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.184444, 28.713427, 24.036587>,  <29.734524, 29.071453, 24.515871>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.184444, 28.713427, 24.036587> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.830173, 28.527866, 24.028891>,  <29.617611, 28.416531, 24.024273>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.830173, 28.527866, 24.028891>,  <30.184444, 28.713427, 24.036587>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.830173, 28.527866, 24.028891> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115724, -0.180429, -0.976756,
		0.449645, -0.867319, 0.213487,
		-0.885679, -0.463900, -0.019241,
		29.564470, 28.388697, 24.023119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.811926, 28.378986, 24.302200>,  <30.184444, 28.713427, 24.036587>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.811926, 28.378986, 24.302200> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.136986, 28.593647, 24.211329>,  <31.332022, 28.722443, 24.156805>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.136986, 28.593647, 24.211329>,  <30.811926, 28.378986, 24.302200>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.136986, 28.593647, 24.211329> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020341, 0.363476, 0.931382,
		0.582400, -0.761506, 0.284462,
		0.812648, 0.536650, -0.227178,
		31.380781, 28.754642, 24.143175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.234997, 28.208702, 24.809307>,  <30.811926, 28.378986, 24.302200>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.234997, 28.208702, 24.809307> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.378258, 28.545813, 24.648581>,  <31.464214, 28.748079, 24.552145>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.378258, 28.545813, 24.648581>,  <31.234997, 28.208702, 24.809307>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.378258, 28.545813, 24.648581> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177420, 0.361091, 0.915497,
		0.916651, -0.399178, -0.020199,
		0.358153, 0.842775, -0.401817,
		31.485704, 28.798645, 24.528036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.929070, 28.320614, 25.071600>,  <31.234997, 28.208702, 24.809307>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.929070, 28.320614, 25.071600> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.802614, 28.685833, 24.968529>,  <31.726742, 28.904964, 24.906687>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.802614, 28.685833, 24.968529>,  <31.929070, 28.320614, 25.071600>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.802614, 28.685833, 24.968529> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216204, 0.333796, 0.917516,
		0.923750, 0.234349, -0.302930,
		-0.316136, 0.913050, -0.257677,
		31.707773, 28.959747, 24.891226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.317810, 28.744574, 25.514919>,  <31.929070, 28.320614, 25.071600>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.317810, 28.744574, 25.514919> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.038708, 29.001438, 25.387947>,  <31.871246, 29.155558, 25.311764>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.038708, 29.001438, 25.387947>,  <32.317810, 28.744574, 25.514919>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.038708, 29.001438, 25.387947> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045571, 0.482026, 0.874971,
		0.714882, 0.596053, -0.365602,
		-0.697759, 0.642162, -0.317429,
		31.829380, 29.194086, 25.292719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.589668, 29.477472, 25.672609>,  <32.317810, 28.744574, 25.514919>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.589668, 29.477472, 25.672609> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.200794, 29.552485, 25.616478>,  <31.967470, 29.597492, 25.582798>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.200794, 29.552485, 25.616478>,  <32.589668, 29.477472, 25.672609>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.200794, 29.552485, 25.616478> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038968, 0.461284, 0.886397,
		0.230956, 0.867209, -0.441145,
		-0.972183, 0.187528, -0.140330,
		31.909140, 29.608744, 25.574379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.511795, 30.212585, 25.825855>,  <32.589668, 29.477472, 25.672609>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.511795, 30.212585, 25.825855> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.145683, 30.052397, 25.843245>,  <31.926016, 29.956284, 25.853678>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.145683, 30.052397, 25.843245>,  <32.511795, 30.212585, 25.825855>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.145683, 30.052397, 25.843245> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162892, 0.466654, 0.869310,
		-0.368421, 0.788578, -0.492352,
		-0.915277, -0.400472, 0.043472,
		31.871099, 29.932255, 25.856287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.045135, 30.746880, 25.820953>,  <32.511795, 30.212585, 25.825855>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.045135, 30.746880, 25.820953> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.887022, 30.434368, 26.014181>,  <31.792154, 30.246862, 26.130117>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.887022, 30.434368, 26.014181>,  <32.045135, 30.746880, 25.820953>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.887022, 30.434368, 26.014181> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076603, 0.552105, 0.830248,
		-0.915359, 0.291180, -0.278087,
		-0.395285, -0.781277, 0.483069,
		31.768436, 30.199986, 26.159101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.585674, 30.993835, 26.242876>,  <32.045135, 30.746880, 25.820953>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.585674, 30.993835, 26.242876> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.642157, 30.632380, 26.404613>,  <31.676046, 30.415506, 26.501656>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.642157, 30.632380, 26.404613>,  <31.585674, 30.993835, 26.242876>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.642157, 30.632380, 26.404613> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095969, 0.419006, 0.902898,
		-0.985318, -0.088689, 0.145887,
		0.141205, -0.903642, 0.404343,
		31.684519, 30.361286, 26.525917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.231888, 31.001040, 26.872557>,  <31.585674, 30.993835, 26.242876>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.231888, 31.001040, 26.872557> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.503868, 30.709650, 26.906002>,  <31.667057, 30.534817, 26.926069>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.503868, 30.709650, 26.906002>,  <31.231888, 31.001040, 26.872557>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.503868, 30.709650, 26.906002> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310228, 0.389121, 0.867377,
		-0.664398, -0.563836, 0.490576,
		0.679952, -0.728474, 0.083614,
		31.707853, 30.491108, 26.931086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.196329, 30.821426, 27.515856>,  <31.231888, 31.001040, 26.872557>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.196329, 30.821426, 27.515856> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.559488, 30.687252, 27.415297>,  <31.777384, 30.606747, 27.354961>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.559488, 30.687252, 27.415297>,  <31.196329, 30.821426, 27.515856>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.559488, 30.687252, 27.415297> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351615, 0.282875, 0.892384,
		-0.228223, -0.898590, 0.374766,
		0.907899, -0.335436, -0.251399,
		31.831858, 30.586620, 27.339876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.415953, 30.583244, 28.112494>,  <31.196329, 30.821426, 27.515856>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.415953, 30.583244, 28.112494> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.763586, 30.628599, 27.919897>,  <31.972166, 30.655811, 27.804338>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.763586, 30.628599, 27.919897>,  <31.415953, 30.583244, 28.112494>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.763586, 30.628599, 27.919897> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474170, 0.086304, 0.876193,
		0.140907, -0.989795, 0.021239,
		0.869084, 0.113391, -0.481492,
		32.024311, 30.662615, 27.775450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.821005, 30.241360, 28.529465>,  <31.415953, 30.583244, 28.112494>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.821005, 30.241360, 28.529465> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.079571, 30.465176, 28.321980>,  <32.234711, 30.599464, 28.197489>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.079571, 30.465176, 28.321980>,  <31.821005, 30.241360, 28.529465>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.079571, 30.465176, 28.321980> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537604, 0.148402, 0.830035,
		0.541415, -0.815410, -0.204881,
		0.646415, 0.559538, -0.518715,
		32.273495, 30.633038, 28.166365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.495464, 29.980017, 28.620602>,  <31.821005, 30.241360, 28.529465>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.495464, 29.980017, 28.620602> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.529232, 30.366970, 28.525070>,  <32.549492, 30.599142, 28.467751>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.529232, 30.366970, 28.525070>,  <32.495464, 29.980017, 28.620602>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.529232, 30.366970, 28.525070> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.580088, 0.147168, 0.801149,
		0.810168, -0.206175, -0.548744,
		0.084419, 0.967385, -0.238830,
		32.554558, 30.657185, 28.453421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.212891, 30.046894, 28.688112>,  <32.495464, 29.980017, 28.620602>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.212891, 30.046894, 28.688112> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.044411, 30.408754, 28.714037>,  <32.943321, 30.625870, 28.729591>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.044411, 30.408754, 28.714037>,  <33.212891, 30.046894, 28.688112>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.044411, 30.408754, 28.714037> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506947, 0.175575, 0.843907,
		0.752060, 0.388310, -0.532561,
		-0.421201, 0.904649, 0.064810,
		32.918049, 30.680149, 28.733480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<35.464993, 31.513807, 22.273121> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.072742, 31.561356, 22.335415>,  <34.837395, 31.589886, 22.372791>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.072742, 31.561356, 22.335415>,  <35.464993, 31.513807, 22.273121>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.072742, 31.561356, 22.335415> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195759, -0.562672, -0.803168,
		-0.007847, -0.818089, 0.575038,
		-0.980621, 0.118871, 0.155733,
		34.778557, 31.597017, 22.382135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.238018, 30.840622, 22.072632>,  <35.464993, 31.513807, 22.273121>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.238018, 30.840622, 22.072632> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.912479, 31.072857, 22.062998>,  <34.717155, 31.212198, 22.057217>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.912479, 31.072857, 22.062998>,  <35.238018, 30.840622, 22.072632>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.912479, 31.072857, 22.062998> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359309, -0.535377, -0.764375,
		-0.456678, -0.613428, 0.644322,
		-0.813844, 0.580584, -0.024084,
		34.668327, 31.247032, 22.055773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.717274, 30.437391, 21.928673>,  <35.238018, 30.840622, 22.072632>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.717274, 30.437391, 21.928673> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.553291, 30.789169, 21.831913>,  <34.454903, 31.000237, 21.773857>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.553291, 30.789169, 21.831913>,  <34.717274, 30.437391, 21.928673>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.553291, 30.789169, 21.831913> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263666, -0.368149, -0.891598,
		-0.873165, -0.301734, 0.382804,
		-0.409954, 0.879445, -0.241897,
		34.430305, 31.053003, 21.759344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.090145, 30.331654, 21.728548>,  <34.717274, 30.437391, 21.928673>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.090145, 30.331654, 21.728548> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.161312, 30.686916, 21.559065>,  <34.204014, 30.900074, 21.457375>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.161312, 30.686916, 21.559065>,  <34.090145, 30.331654, 21.728548>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.161312, 30.686916, 21.559065> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409012, -0.324877, -0.852739,
		-0.895017, 0.325017, 0.305465,
		0.177916, 0.888155, -0.423707,
		34.214687, 30.953363, 21.431953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.495529, 30.520044, 21.418055>,  <34.090145, 30.331654, 21.728548>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.495529, 30.520044, 21.418055> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.754410, 30.762558, 21.233208>,  <33.909737, 30.908066, 21.122299>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.754410, 30.762558, 21.233208>,  <33.495529, 30.520044, 21.418055>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.754410, 30.762558, 21.233208> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427397, -0.213382, -0.878521,
		-0.631240, 0.766088, 0.121022,
		0.647200, 0.606282, -0.462119,
		33.948570, 30.944443, 21.094572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.118683, 30.854322, 20.865543>,  <33.495529, 30.520044, 21.418055>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.118683, 30.854322, 20.865543> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.501484, 30.923395, 20.772305>,  <33.731163, 30.964838, 20.716362>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.501484, 30.923395, 20.772305>,  <33.118683, 30.854322, 20.865543>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.501484, 30.923395, 20.772305> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215861, -0.112899, -0.969875,
		-0.193797, 0.978486, -0.070769,
		0.956999, 0.172682, -0.233096,
		33.788582, 30.975201, 20.702375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.189068, 31.478405, 20.368500>,  <33.118683, 30.854322, 20.865543>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.189068, 31.478405, 20.368500> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.489780, 31.218454, 20.323799>,  <33.670208, 31.062485, 20.296978>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.489780, 31.218454, 20.323799>,  <33.189068, 31.478405, 20.368500>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.489780, 31.218454, 20.323799> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213320, -0.079324, -0.973757,
		0.623957, 0.755889, -0.198266,
		0.751779, -0.649876, -0.111751,
		33.715313, 31.023491, 20.290274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.555004, 31.714199, 19.803099>,  <33.189068, 31.478405, 20.368500>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.555004, 31.714199, 19.803099> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.642082, 31.326120, 19.845673>,  <33.694328, 31.093273, 19.871216>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.642082, 31.326120, 19.845673>,  <33.555004, 31.714199, 19.803099>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.642082, 31.326120, 19.845673> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162792, -0.143614, -0.976153,
		0.962346, 0.195173, -0.189204,
		0.217691, -0.970197, 0.106434,
		33.707390, 31.035061, 19.877604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.911415, 31.646139, 19.209578>,  <33.555004, 31.714199, 19.803099>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.911415, 31.646139, 19.209578> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.842918, 31.284292, 19.365702>,  <33.801819, 31.067184, 19.459375>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.842918, 31.284292, 19.365702>,  <33.911415, 31.646139, 19.209578>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.842918, 31.284292, 19.365702> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170001, -0.363087, -0.916115,
		0.970451, -0.223234, -0.091609,
		-0.171246, -0.904618, 0.390308,
		33.791546, 31.012907, 19.482794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.987373, 31.228344, 18.627083>,  <33.911415, 31.646139, 19.209578>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.987373, 31.228344, 18.627083> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.767433, 30.996843, 18.867983>,  <33.635468, 30.857943, 19.012524>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.767433, 30.996843, 18.867983>,  <33.987373, 31.228344, 18.627083>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.767433, 30.996843, 18.867983> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501102, -0.348292, -0.792206,
		0.668250, -0.737387, -0.098503,
		-0.549854, -0.578751, 0.602252,
		33.602478, 30.823217, 19.048658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.891533, 30.556625, 18.288265>,  <33.987373, 31.228344, 18.627083>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.891533, 30.556625, 18.288265> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.590122, 30.586189, 18.549562>,  <33.409275, 30.603928, 18.706341>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.590122, 30.586189, 18.549562>,  <33.891533, 30.556625, 18.288265>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.590122, 30.586189, 18.549562> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.636567, -0.330271, -0.696924,
		0.164237, -0.940988, 0.295919,
		-0.753531, 0.073911, 0.653245,
		33.364063, 30.608362, 18.745537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.553326, 29.890015, 18.294571>,  <33.891533, 30.556625, 18.288265>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.553326, 29.890015, 18.294571> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.298126, 30.172520, 18.417313>,  <33.145008, 30.342022, 18.490957>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.298126, 30.172520, 18.417313>,  <33.553326, 29.890015, 18.294571>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.298126, 30.172520, 18.417313> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.673848, -0.319194, -0.666366,
		-0.372686, -0.631907, 0.679558,
		-0.637992, 0.706264, 0.306850,
		33.106728, 30.384398, 18.509369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.971996, 29.628643, 18.682722>,  <33.553326, 29.890015, 18.294571>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.971996, 29.628643, 18.682722> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.872082, 29.967655, 18.495405>,  <32.812134, 30.171062, 18.383015>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.872082, 29.967655, 18.495405>,  <32.971996, 29.628643, 18.682722>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.872082, 29.967655, 18.495405> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466254, -0.529141, -0.708955,
		-0.848654, 0.041254, 0.527337,
		-0.249788, 0.847531, -0.468292,
		32.797146, 30.221914, 18.354918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.740051, 29.071838, 19.124155>,  <32.971996, 29.628643, 18.682722>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.740051, 29.071838, 19.124155> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.015186, 28.783035, 19.154062>,  <33.180267, 28.609755, 19.172007>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.015186, 28.783035, 19.154062>,  <32.740051, 29.071838, 19.124155>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.015186, 28.783035, 19.154062> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070757, -0.169210, -0.983037,
		0.722410, 0.670876, -0.167476,
		0.687835, -0.722006, 0.074769,
		33.221539, 28.566433, 19.176493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.300152, 29.066780, 18.458467>,  <32.740051, 29.071838, 19.124155>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.300152, 29.066780, 18.458467> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.319351, 28.671450, 18.516308>,  <32.330872, 28.434252, 18.551012>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.319351, 28.671450, 18.516308>,  <32.300152, 29.066780, 18.458467>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.319351, 28.671450, 18.516308> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156972, 0.135505, 0.978263,
		-0.986436, -0.069653, -0.148635,
		0.047998, -0.988325, 0.144600,
		32.333752, 28.374952, 18.559689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.714348, 28.840237, 18.788795>,  <32.300152, 29.066780, 18.458467>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.714348, 28.840237, 18.788795> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.974266, 28.548983, 18.876051>,  <32.130219, 28.374229, 18.928404>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.974266, 28.548983, 18.876051>,  <31.714348, 28.840237, 18.788795>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.974266, 28.548983, 18.876051> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259512, 0.057225, 0.964043,
		-0.714437, -0.683041, -0.151775,
		0.649795, -0.728135, 0.218141,
		32.169205, 28.330542, 18.941494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.392073, 28.442184, 19.249708>,  <31.714348, 28.840237, 18.788795>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.392073, 28.442184, 19.249708> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.771189, 28.341511, 19.328037>,  <31.998659, 28.281107, 19.375034>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.771189, 28.341511, 19.328037>,  <31.392073, 28.442184, 19.249708>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.771189, 28.341511, 19.328037> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176938, 0.095829, 0.979546,
		-0.265301, -0.963054, 0.046293,
		0.947791, -0.251683, 0.195824,
		32.055527, 28.266006, 19.386786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.420691, 27.912594, 19.783504>,  <31.392073, 28.442184, 19.249708>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.420691, 27.912594, 19.783504> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.796022, 28.050890, 19.783195>,  <32.021221, 28.133867, 19.783010>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.796022, 28.050890, 19.783195>,  <31.420691, 27.912594, 19.783504>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.796022, 28.050890, 19.783195> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000853, 0.004550, 0.999989,
		0.345740, -0.938319, 0.004564,
		0.938330, 0.345740, -0.000772,
		32.077522, 28.154612, 19.782965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.680721, 27.584484, 20.293816>,  <31.420691, 27.912594, 19.783504>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.680721, 27.584484, 20.293816> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.963171, 27.866692, 20.269701>,  <32.132641, 28.036016, 20.255232>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.963171, 27.866692, 20.269701>,  <31.680721, 27.584484, 20.293816>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.963171, 27.866692, 20.269701> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130013, -0.045487, 0.990468,
		0.696051, -0.707231, -0.123846,
		0.706123, 0.705517, -0.060288,
		32.175007, 28.078346, 20.251616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.309509, 27.334610, 20.725368>,  <31.680721, 27.584484, 20.293816>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.309509, 27.334610, 20.725368> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.315125, 27.731409, 20.675173>,  <32.318493, 27.969488, 20.645056>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.315125, 27.731409, 20.675173>,  <32.309509, 27.334610, 20.725368>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.315125, 27.731409, 20.675173> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141570, 0.122267, 0.982349,
		0.989829, -0.031552, -0.138721,
		0.014034, 0.991996, -0.125491,
		32.319336, 28.029007, 20.637526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.898865, 27.548637, 21.150864>,  <32.309509, 27.334610, 20.725368>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.898865, 27.548637, 21.150864> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.684372, 27.877947, 21.076378>,  <32.555676, 28.075533, 21.031687>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.684372, 27.877947, 21.076378>,  <32.898865, 27.548637, 21.150864>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.684372, 27.877947, 21.076378> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071172, 0.263931, 0.961912,
		0.841063, 0.502557, -0.200123,
		-0.536234, 0.823272, -0.186215,
		32.523502, 28.124929, 21.020514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.204037, 27.938421, 21.576807>,  <32.898865, 27.548637, 21.150864>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.204037, 27.938421, 21.576807> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.850891, 28.102385, 21.485134>,  <32.639004, 28.200762, 21.430130>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.850891, 28.102385, 21.485134>,  <33.204037, 27.938421, 21.576807>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.850891, 28.102385, 21.485134> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129973, 0.255674, 0.957986,
		0.451283, 0.875560, -0.172449,
		-0.882865, 0.409909, -0.229180,
		32.586033, 28.225357, 21.416380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.138306, 28.678183, 21.942684>,  <33.204037, 27.938421, 21.576807>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.138306, 28.678183, 21.942684> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.762478, 28.557222, 21.878487>,  <32.536980, 28.484646, 21.839968>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.762478, 28.557222, 21.878487>,  <33.138306, 28.678183, 21.942684>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.762478, 28.557222, 21.878487> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259184, 0.322035, 0.910559,
		-0.223670, 0.897133, -0.380953,
		-0.939572, -0.302402, -0.160493,
		32.480606, 28.466501, 21.830339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.729321, 29.135790, 22.184458>,  <33.138306, 28.678183, 21.942684>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.729321, 29.135790, 22.184458> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.480797, 28.822369, 22.186190>,  <32.331680, 28.634315, 22.187229>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.480797, 28.822369, 22.186190>,  <32.729321, 29.135790, 22.184458>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.480797, 28.822369, 22.186190> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343318, 0.277191, 0.897384,
		-0.704347, 0.556068, -0.441229,
		-0.621312, -0.783552, 0.004330,
		32.294403, 28.587303, 22.187489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.145748, 29.360914, 22.308956>,  <32.729321, 29.135790, 22.184458>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.145748, 29.360914, 22.308956> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.073185, 28.975698, 22.388601>,  <32.029648, 28.744570, 22.436388>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.073185, 28.975698, 22.388601>,  <32.145748, 29.360914, 22.308956>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.073185, 28.975698, 22.388601> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478034, 0.263297, 0.837949,
		-0.859403, 0.056831, -0.508131,
		-0.181411, -0.963039, 0.199111,
		32.018761, 28.686787, 22.448334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.483753, 29.446070, 22.579529>,  <32.145748, 29.360914, 22.308956>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.483753, 29.446070, 22.579529> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.560863, 29.070473, 22.693460>,  <31.607130, 28.845114, 22.761820>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.560863, 29.070473, 22.693460>,  <31.483753, 29.446070, 22.579529>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.560863, 29.070473, 22.693460> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387882, 0.193708, 0.901124,
		-0.901324, -0.284194, -0.326877,
		0.192775, -0.938995, 0.284827,
		31.618696, 28.788774, 22.778908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.905033, 29.211483, 22.919693>,  <31.483753, 29.446070, 22.579529>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.905033, 29.211483, 22.919693> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.226986, 29.015079, 23.053001>,  <31.420158, 28.897238, 23.132986>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.226986, 29.015079, 23.053001>,  <30.905033, 29.211483, 22.919693>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.226986, 29.015079, 23.053001> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254849, 0.221177, 0.941346,
		-0.535924, -0.842608, 0.052888,
		0.804884, -0.491011, 0.333272,
		31.468451, 28.867777, 23.152983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.638290, 28.729586, 23.455006>,  <30.905033, 29.211483, 22.919693>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.638290, 28.729586, 23.455006> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.025406, 28.762657, 23.550123>,  <31.257675, 28.782501, 23.607193>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.025406, 28.762657, 23.550123>,  <30.638290, 28.729586, 23.455006>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.025406, 28.762657, 23.550123> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251737, 0.329604, 0.909939,
		-0.003143, -0.940492, 0.339802,
		0.967791, 0.082681, 0.237793,
		31.315742, 28.787462, 23.621462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.306107, 28.054646, 23.817562>,  <30.638290, 28.729586, 23.455006>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.306107, 28.054646, 23.817562> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.919546, 28.105947, 23.728462>,  <29.687611, 28.136728, 23.675001>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.919546, 28.105947, 23.728462>,  <30.306107, 28.054646, 23.817562>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.919546, 28.105947, 23.728462> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203425, -0.148096, -0.967825,
		-0.157140, -0.980619, 0.117025,
		-0.966398, 0.128278, -0.222754,
		29.629625, 28.144424, 23.661636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.335308, 27.835714, 23.153374>,  <30.306107, 28.054646, 23.817562>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.335308, 27.835714, 23.153374> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.973057, 28.001537, 23.189112>,  <29.755707, 28.101032, 23.210556>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.973057, 28.001537, 23.189112>,  <30.335308, 27.835714, 23.153374>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.973057, 28.001537, 23.189112> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044550, 0.116519, -0.992189,
		-0.421731, -0.902532, -0.087054,
		-0.905626, 0.414559, 0.089347,
		29.701368, 28.125904, 23.215916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.793276, 27.470039, 22.776665>,  <30.335308, 27.835714, 23.153374>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.793276, 27.470039, 22.776665> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.636578, 27.836416, 22.811493>,  <29.542559, 28.056242, 22.832390>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.636578, 27.836416, 22.811493>,  <29.793276, 27.470039, 22.776665>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.636578, 27.836416, 22.811493> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095641, 0.134661, -0.986265,
		-0.915089, -0.378037, -0.140355,
		-0.391745, 0.915944, 0.087071,
		29.519054, 28.111200, 22.837614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.305639, 27.532965, 22.225113>,  <29.793276, 27.470039, 22.776665>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.305639, 27.532965, 22.225113> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.402103, 27.908220, 22.324499>,  <29.459982, 28.133373, 22.384130>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.402103, 27.908220, 22.324499>,  <29.305639, 27.532965, 22.225113>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.402103, 27.908220, 22.324499> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101757, 0.279055, -0.954868,
		-0.965136, 0.204994, 0.162760,
		0.241161, 0.938140, 0.248466,
		29.474451, 28.189663, 22.399038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.755911, 27.967579, 21.962606>,  <29.305639, 27.532965, 22.225113>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.755911, 27.967579, 21.962606> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.093956, 28.180573, 21.981550>,  <29.296783, 28.308369, 21.992916>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.093956, 28.180573, 21.981550>,  <28.755911, 27.967579, 21.962606>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.093956, 28.180573, 21.981550> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162239, 0.339886, -0.926367,
		-0.509372, 0.775203, 0.373632,
		0.845114, 0.532484, 0.047360,
		29.347490, 28.340317, 21.995758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.574543, 28.558897, 21.687881>,  <28.755911, 27.967579, 21.962606>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.574543, 28.558897, 21.687881> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.973255, 28.570673, 21.658047>,  <29.212482, 28.577740, 21.640146>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.973255, 28.570673, 21.658047>,  <28.574543, 28.558897, 21.687881>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.973255, 28.570673, 21.658047> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074911, 0.010011, -0.997140,
		-0.028610, 0.999516, 0.012184,
		0.996780, 0.029441, -0.074589,
		29.272289, 28.579506, 21.635670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.769644, 29.048138, 21.188171>,  <28.574543, 28.558897, 21.687881>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.769644, 29.048138, 21.188171> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.126425, 28.869579, 21.216877>,  <29.340494, 28.762445, 21.234100>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.126425, 28.869579, 21.216877>,  <28.769644, 29.048138, 21.188171>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.126425, 28.869579, 21.216877> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116187, 0.072912, -0.990548,
		0.436943, 0.891861, 0.116900,
		0.891954, -0.446395, 0.071764,
		29.394011, 28.735661, 21.238407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.563347, 29.785751, 21.318714>,  <28.769644, 29.048138, 21.188171>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.563347, 29.785751, 21.318714> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.204529, 29.893991, 21.178951>,  <27.989239, 29.958937, 21.095093>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.204529, 29.893991, 21.178951>,  <28.563347, 29.785751, 21.318714>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.204529, 29.893991, 21.178951> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377016, -0.056053, 0.924509,
		0.230589, 0.961058, 0.152304,
		-0.897044, 0.270603, -0.349409,
		27.935415, 29.975172, 21.074129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.301888, 30.310301, 21.738373>,  <28.563347, 29.785751, 21.318714>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.301888, 30.310301, 21.738373> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.963177, 30.170326, 21.578117>,  <27.759949, 30.086342, 21.481964>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.963177, 30.170326, 21.578117>,  <28.301888, 30.310301, 21.738373>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.963177, 30.170326, 21.578117> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419147, -0.024816, 0.907579,
		-0.327537, 0.936445, -0.125661,
		-0.846779, -0.349936, -0.400636,
		27.709143, 30.065346, 21.457926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.656145, 30.694000, 22.103901>,  <28.301888, 30.310301, 21.738373>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.656145, 30.694000, 22.103901> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.538635, 30.354717, 21.927610>,  <27.468130, 30.151148, 21.821836>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.538635, 30.354717, 21.927610>,  <27.656145, 30.694000, 22.103901>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.538635, 30.354717, 21.927610> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439857, -0.289396, 0.850162,
		-0.848659, 0.443611, -0.288074,
		-0.293774, -0.848210, -0.440724,
		27.450502, 30.100254, 21.795393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.959394, 30.642380, 22.363678>,  <27.656145, 30.694000, 22.103901>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.959394, 30.642380, 22.363678> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.042934, 30.278725, 22.219540>,  <27.093058, 30.060532, 22.133057>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.042934, 30.278725, 22.219540>,  <26.959394, 30.642380, 22.363678>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.042934, 30.278725, 22.219540> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285752, -0.409120, 0.866583,
		-0.935269, -0.078014, -0.345233,
		0.208848, -0.909139, -0.360345,
		27.105589, 30.005983, 22.111437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.401419, 30.223406, 22.580868>,  <26.959394, 30.642380, 22.363678>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.401419, 30.223406, 22.580868> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.687008, 29.957150, 22.493999>,  <26.858362, 29.797396, 22.441879>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.687008, 29.957150, 22.493999>,  <26.401419, 30.223406, 22.580868>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.687008, 29.957150, 22.493999> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130945, -0.431633, 0.892495,
		-0.687820, -0.608779, -0.395337,
		0.713973, -0.665644, -0.217169,
		26.901199, 29.757456, 22.428848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.106525, 29.488640, 22.692966>,  <26.401419, 30.223406, 22.580868>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.106525, 29.488640, 22.692966> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.503510, 29.514421, 22.734661>,  <26.741701, 29.529890, 22.759678>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.503510, 29.514421, 22.734661>,  <26.106525, 29.488640, 22.692966>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.503510, 29.514421, 22.734661> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068351, -0.414871, 0.907309,
		0.101728, -0.907594, -0.407338,
		0.992461, 0.064457, 0.104239,
		26.801249, 29.533758, 22.765932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.247282, 29.011120, 23.112434>,  <26.106525, 29.488640, 22.692966>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.247282, 29.011120, 23.112434> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.591467, 29.213007, 23.140322>,  <26.797977, 29.334139, 23.157055>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.591467, 29.213007, 23.140322>,  <26.247282, 29.011120, 23.112434>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.591467, 29.213007, 23.140322> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064268, -0.243258, 0.967830,
		0.505443, -0.828302, -0.241751,
		0.860464, 0.504720, 0.069720,
		26.849606, 29.364424, 23.161238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<31.558872, 33.452477, 18.227097> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.702414, 33.098450, 18.345678>,  <31.788538, 32.886036, 18.416826>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.702414, 33.098450, 18.345678>,  <31.558872, 33.452477, 18.227097>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.702414, 33.098450, 18.345678> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062005, 0.339511, 0.938556,
		-0.931333, -0.318421, 0.176712,
		0.358852, -0.885065, 0.296454,
		31.810070, 32.832932, 18.434614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.094379, 33.188026, 18.712532>,  <31.558872, 33.452477, 18.227097>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.094379, 33.188026, 18.712532> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.443676, 33.006344, 18.783121>,  <31.653254, 32.897335, 18.825476>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.443676, 33.006344, 18.783121>,  <31.094379, 33.188026, 18.712532>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.443676, 33.006344, 18.783121> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072444, 0.237123, 0.968775,
		-0.481871, -0.858760, 0.174161,
		0.873242, -0.454207, 0.176474,
		31.705648, 32.870083, 18.836063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.905527, 32.729271, 19.307404>,  <31.094379, 33.188026, 18.712532>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.905527, 32.729271, 19.307404> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.303736, 32.765743, 19.317368>,  <31.542662, 32.787628, 19.323347>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.303736, 32.765743, 19.317368>,  <30.905527, 32.729271, 19.307404>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.303736, 32.765743, 19.317368> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037087, 0.134374, 0.990237,
		0.086943, -0.986727, 0.137154,
		0.995522, 0.091181, 0.024911,
		31.602392, 32.793098, 19.324841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.147799, 32.305943, 19.899248>,  <30.905527, 32.729271, 19.307404>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.147799, 32.305943, 19.899248> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.467699, 32.541828, 19.854284>,  <31.659639, 32.683361, 19.827307>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.467699, 32.541828, 19.854284>,  <31.147799, 32.305943, 19.899248>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.467699, 32.541828, 19.854284> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033729, 0.231089, 0.972348,
		0.599384, -0.773844, 0.204704,
		0.799751, 0.589715, -0.112410,
		31.707624, 32.718742, 19.820560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.625126, 32.198200, 20.506487>,  <31.147799, 32.305943, 19.899248>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.625126, 32.198200, 20.506487> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.747065, 32.547153, 20.353638>,  <31.820227, 32.756527, 20.261929>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.747065, 32.547153, 20.353638>,  <31.625126, 32.198200, 20.506487>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.747065, 32.547153, 20.353638> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011071, 0.397946, 0.917342,
		0.952338, -0.283877, 0.111653,
		0.304845, 0.872383, -0.382122,
		31.838518, 32.808868, 20.239000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.997520, 32.471828, 21.069668>,  <31.625126, 32.198200, 20.506487>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.997520, 32.471828, 21.069668> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.936306, 32.769680, 20.809788>,  <31.899578, 32.948391, 20.653860>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.936306, 32.769680, 20.809788>,  <31.997520, 32.471828, 21.069668>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.936306, 32.769680, 20.809788> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000968, 0.657558, 0.753404,
		0.988220, 0.114668, -0.101350,
		-0.153035, 0.744627, -0.649701,
		31.890396, 32.993069, 20.614878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.469593, 33.011242, 21.197498>,  <31.997520, 32.471828, 21.069668>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.469593, 33.011242, 21.197498> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.167473, 33.205112, 21.021040>,  <31.986200, 33.321434, 20.915165>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.167473, 33.205112, 21.021040>,  <32.469593, 33.011242, 21.197498>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.167473, 33.205112, 21.021040> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027150, 0.649396, 0.759966,
		0.654816, 0.585979, -0.477330,
		-0.755301, 0.484678, -0.441144,
		31.940882, 33.350517, 20.888697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.619373, 33.703896, 21.287754>,  <32.469593, 33.011242, 21.197498>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.619373, 33.703896, 21.287754> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.226578, 33.724663, 21.215078>,  <31.990902, 33.737122, 21.171473>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.226578, 33.724663, 21.215078>,  <32.619373, 33.703896, 21.287754>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.226578, 33.724663, 21.215078> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110446, 0.622480, 0.774803,
		0.153321, 0.780912, -0.605532,
		-0.981985, 0.051915, -0.181688,
		31.931982, 33.740238, 21.160572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.489422, 34.425411, 21.313555>,  <32.619373, 33.703896, 21.287754>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.489422, 34.425411, 21.313555> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.156609, 34.220474, 21.398621>,  <31.956921, 34.097511, 21.449659>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.156609, 34.220474, 21.398621>,  <32.489422, 34.425411, 21.313555>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.156609, 34.220474, 21.398621> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035025, 0.431121, 0.901614,
		-0.553623, 0.742722, -0.376651,
		-0.832030, -0.512347, 0.212665,
		31.907000, 34.066769, 21.462420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.000458, 34.993053, 21.622717>,  <32.489422, 34.425411, 21.313555>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.000458, 34.993053, 21.622717> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.882019, 34.626015, 21.728802>,  <31.810957, 34.405792, 21.792452>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.882019, 34.626015, 21.728802>,  <32.000458, 34.993053, 21.622717>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.882019, 34.626015, 21.728802> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244339, 0.341188, 0.907683,
		-0.923378, 0.203958, -0.325229,
		-0.296094, -0.917601, 0.265211,
		31.793190, 34.350735, 21.808365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.246250, 35.095097, 21.843859>,  <32.000458, 34.993053, 21.622717>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.246250, 35.095097, 21.843859> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.423120, 34.772964, 22.001806>,  <31.529243, 34.579685, 22.096575>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.423120, 34.772964, 22.001806>,  <31.246250, 35.095097, 21.843859>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.423120, 34.772964, 22.001806> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126807, 0.379692, 0.916381,
		-0.887918, -0.455275, 0.065770,
		0.442177, -0.805331, 0.394867,
		31.555775, 34.531364, 22.120266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.973534, 35.095898, 22.559338>,  <31.246250, 35.095097, 21.843859>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.973534, 35.095898, 22.559338> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.269144, 34.827419, 22.582428>,  <31.446510, 34.666332, 22.596283>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.269144, 34.827419, 22.582428>,  <30.973534, 35.095898, 22.559338>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.269144, 34.827419, 22.582428> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192261, 0.292262, 0.936813,
		-0.645658, -0.681232, 0.345034,
		0.739027, -0.671198, 0.057727,
		31.490852, 34.626060, 22.599747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.379520, 34.566109, 22.611279>,  <30.973534, 35.095898, 22.559338>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.379520, 34.566109, 22.611279> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.988094, 34.607944, 22.682238>,  <29.753239, 34.633045, 22.724813>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.988094, 34.607944, 22.682238>,  <30.379520, 34.566109, 22.611279>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.988094, 34.607944, 22.682238> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198734, -0.253788, -0.946624,
		-0.053987, -0.961588, 0.269134,
		-0.978565, 0.104592, 0.177399,
		29.694525, 34.639324, 22.735456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.928001, 33.803841, 22.519444>,  <30.379520, 34.566109, 22.611279>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.928001, 33.803841, 22.519444> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.707846, 34.132717, 22.461380>,  <29.575752, 34.330044, 22.426542>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.707846, 34.132717, 22.461380>,  <29.928001, 33.803841, 22.519444>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.707846, 34.132717, 22.461380> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273451, -0.341791, -0.899113,
		-0.788857, -0.455168, 0.412948,
		-0.550389, 0.822193, -0.145158,
		29.542728, 34.379375, 22.417833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.252432, 33.632252, 22.203472>,  <29.928001, 33.803841, 22.519444>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.252432, 33.632252, 22.203472> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.281694, 34.025085, 22.134008>,  <29.299252, 34.260784, 22.092331>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.281694, 34.025085, 22.134008>,  <29.252432, 33.632252, 22.203472>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.281694, 34.025085, 22.134008> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354028, -0.137214, -0.925115,
		-0.932369, 0.129156, 0.337648,
		0.073154, 0.982085, -0.173659,
		29.303640, 34.319710, 22.081911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.620306, 33.803711, 21.938240>,  <29.252432, 33.632252, 22.203472>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.620306, 33.803711, 21.938240> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.877964, 34.085358, 21.818708>,  <29.032558, 34.254345, 21.746990>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.877964, 34.085358, 21.818708>,  <28.620306, 33.803711, 21.938240>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.877964, 34.085358, 21.818708> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356763, -0.069014, -0.931642,
		-0.676609, 0.706722, 0.206748,
		0.644144, 0.704117, -0.298828,
		29.071207, 34.296593, 21.729059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.226370, 34.213093, 21.385201>,  <28.620306, 33.803711, 21.938240>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.226370, 34.213093, 21.385201> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.611620, 34.310051, 21.338503>,  <28.842770, 34.368225, 21.310484>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.611620, 34.310051, 21.338503>,  <28.226370, 34.213093, 21.385201>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.611620, 34.310051, 21.338503> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141463, 0.087144, -0.986100,
		-0.228854, 0.966255, 0.118221,
		0.963127, 0.242397, -0.116746,
		28.900558, 34.382771, 21.303478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.228077, 34.646286, 20.710865>,  <28.226370, 34.213093, 21.385201>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.228077, 34.646286, 20.710865> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.611973, 34.563148, 20.786442>,  <28.842310, 34.513268, 20.831789>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.611973, 34.563148, 20.786442>,  <28.228077, 34.646286, 20.710865>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.611973, 34.563148, 20.786442> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193979, 0.003926, -0.980998,
		0.203150, 0.978155, 0.044085,
		0.959741, -0.207842, 0.188944,
		28.899895, 34.500797, 20.843124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.669930, 35.095837, 20.382742>,  <28.228077, 34.646286, 20.710865>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.669930, 35.095837, 20.382742> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.900028, 34.770298, 20.415588>,  <29.038088, 34.574974, 20.435297>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.900028, 34.770298, 20.415588>,  <28.669930, 35.095837, 20.382742>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.900028, 34.770298, 20.415588> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090989, -0.036100, -0.995197,
		0.812903, 0.579957, 0.053285,
		0.575248, -0.813847, 0.082116,
		29.072603, 34.526142, 20.440224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.210405, 35.239250, 19.885872>,  <28.669930, 35.095837, 20.382742>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.210405, 35.239250, 19.885872> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.196060, 34.847622, 19.965998>,  <29.187452, 34.612644, 20.014074>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.196060, 34.847622, 19.965998>,  <29.210405, 35.239250, 19.885872>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.196060, 34.847622, 19.965998> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144254, -0.203418, -0.968407,
		0.988891, -0.005835, 0.148531,
		-0.035864, -0.979074, 0.200317,
		29.185301, 34.553898, 20.026093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.703569, 34.927986, 19.452999>,  <29.210405, 35.239250, 19.885872>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.703569, 34.927986, 19.452999> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.448544, 34.636791, 19.553837>,  <29.295528, 34.462074, 19.614340>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.448544, 34.636791, 19.553837>,  <29.703569, 34.927986, 19.452999>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.448544, 34.636791, 19.553837> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050300, -0.365864, -0.929308,
		0.768754, -0.579812, 0.269879,
		-0.637563, -0.727984, 0.252095,
		29.257275, 34.418396, 19.629465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.989958, 34.413986, 19.148830>,  <29.703569, 34.927986, 19.452999>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.989958, 34.413986, 19.148830> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.621075, 34.276546, 19.219788>,  <29.399744, 34.194080, 19.262362>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.621075, 34.276546, 19.219788>,  <29.989958, 34.413986, 19.148830>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.621075, 34.276546, 19.219788> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012422, -0.484832, -0.874519,
		0.386491, -0.804286, 0.451385,
		-0.922210, -0.343601, 0.177393,
		29.344412, 34.173466, 19.273006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.010799, 33.662388, 19.102377>,  <29.989958, 34.413986, 19.148830>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.010799, 33.662388, 19.102377> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.669256, 33.836723, 18.988554>,  <29.464331, 33.941326, 18.920259>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.669256, 33.836723, 18.988554>,  <30.010799, 33.662388, 19.102377>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.669256, 33.836723, 18.988554> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033776, -0.499144, -0.865861,
		-0.519418, -0.748929, 0.411474,
		-0.853853, 0.435845, -0.284560,
		29.413099, 33.967476, 18.903187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.415436, 33.133862, 18.992115>,  <30.010799, 33.662388, 19.102377>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.415436, 33.133862, 18.992115> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.028347, 33.096519, 18.898481>,  <28.796093, 33.074112, 18.842302>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.028347, 33.096519, 18.898481>,  <29.415436, 33.133862, 18.992115>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.028347, 33.096519, 18.898481> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091844, -0.734324, 0.672557,
		-0.234680, 0.672348, 0.702049,
		-0.967724, -0.093357, -0.234082,
		28.738029, 33.068512, 18.828257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.219536, 32.639332, 19.443119>,  <29.415436, 33.133862, 18.992115>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.219536, 32.639332, 19.443119> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.879719, 32.689510, 19.238163>,  <28.675829, 32.719616, 19.115191>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.879719, 32.689510, 19.238163>,  <29.219536, 32.639332, 19.443119>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.879719, 32.689510, 19.238163> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349448, -0.861458, 0.368477,
		-0.395177, 0.492090, 0.775682,
		-0.849541, 0.125447, -0.512389,
		28.624857, 32.727146, 19.084446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.598972, 32.648937, 19.885347>,  <29.219536, 32.639332, 19.443119>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.598972, 32.648937, 19.885347> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.481180, 32.533012, 19.521086>,  <28.410505, 32.463455, 19.302528>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.481180, 32.533012, 19.521086>,  <28.598972, 32.648937, 19.885347>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.481180, 32.533012, 19.521086> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302015, -0.875847, 0.376403,
		-0.906680, 0.385874, 0.170391,
		-0.294481, -0.289816, -0.910652,
		28.392836, 32.446068, 19.247890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.870920, 32.337517, 19.854149>,  <28.598972, 32.648937, 19.885347>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.870920, 32.337517, 19.854149> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.093468, 32.184277, 19.559208>,  <28.226995, 32.092331, 19.382244>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.093468, 32.184277, 19.559208>,  <27.870920, 32.337517, 19.854149>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.093468, 32.184277, 19.559208> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342546, -0.914210, 0.216522,
		-0.757045, 0.132112, -0.639866,
		0.556367, -0.383100, -0.737353,
		28.260378, 32.069347, 19.338001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.403187, 31.885805, 19.371565>,  <27.870920, 32.337517, 19.854149>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.403187, 31.885805, 19.371565> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.785448, 31.768843, 19.357548>,  <28.014805, 31.698666, 19.349136>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.785448, 31.768843, 19.357548>,  <27.403187, 31.885805, 19.371565>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.785448, 31.768843, 19.357548> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283385, -0.945438, 0.160749,
		-0.080136, -0.143689, -0.986373,
		0.955652, -0.292405, -0.035044,
		28.072144, 31.681122, 19.347034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.438738, 31.268171, 19.007528>,  <27.403187, 31.885805, 19.371565>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.438738, 31.268171, 19.007528> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.781919, 31.248348, 19.212059>,  <27.987829, 31.236454, 19.334778>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.781919, 31.248348, 19.212059>,  <27.438738, 31.268171, 19.007528>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.781919, 31.248348, 19.212059> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212568, -0.940379, 0.265523,
		0.467683, -0.336499, -0.817338,
		0.857955, -0.049560, 0.511328,
		28.039307, 31.233480, 19.365458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.521404, 30.593164, 19.029589>,  <27.438738, 31.268171, 19.007528>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.521404, 30.593164, 19.029589> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.763573, 30.745533, 19.309122>,  <27.908875, 30.836954, 19.476841>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.763573, 30.745533, 19.309122>,  <27.521404, 30.593164, 19.029589>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.763573, 30.745533, 19.309122> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207297, -0.772261, 0.600534,
		0.768436, -0.508442, -0.388580,
		0.605421, 0.380920, 0.698831,
		27.945200, 30.859810, 19.518772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.778559, 30.050919, 19.319370>,  <27.521404, 30.593164, 19.029589>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.778559, 30.050919, 19.319370> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.875282, 30.328020, 19.591141>,  <27.933317, 30.494282, 19.754204>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.875282, 30.328020, 19.591141>,  <27.778559, 30.050919, 19.319370>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.875282, 30.328020, 19.591141> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148298, -0.665596, 0.731430,
		0.958924, -0.277625, -0.058214,
		0.241810, 0.692753, 0.679427,
		27.947824, 30.535847, 19.794970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.282965, 29.681210, 19.817354>,  <27.778559, 30.050919, 19.319370>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.282965, 29.681210, 19.817354> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.114065, 29.986002, 20.013758>,  <28.012726, 30.168877, 20.131599>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.114065, 29.986002, 20.013758>,  <28.282965, 29.681210, 19.817354>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.114065, 29.986002, 20.013758> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147336, -0.592154, 0.792241,
		0.894425, 0.262181, 0.362305,
		-0.422251, 0.761981, 0.491009,
		27.987391, 30.214596, 20.161060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.539902, 29.578310, 20.491856>,  <28.282965, 29.681210, 19.817354>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.539902, 29.578310, 20.491856> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.238974, 29.832825, 20.560150>,  <28.058416, 29.985535, 20.601128>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.238974, 29.832825, 20.560150>,  <28.539902, 29.578310, 20.491856>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.238974, 29.832825, 20.560150> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170758, -0.438645, 0.882288,
		0.636283, 0.634609, 0.438653,
		-0.752320, 0.636288, 0.170737,
		28.013277, 30.023712, 20.611372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.204670, 29.379375, 20.584131>,  <28.539902, 29.578310, 20.491856>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.204670, 29.379375, 20.584131> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.395958, 29.045008, 20.691868>,  <29.510731, 28.844387, 20.756510>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.395958, 29.045008, 20.691868>,  <29.204670, 29.379375, 20.584131>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.395958, 29.045008, 20.691868> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357480, -0.094853, -0.929091,
		0.802193, 0.540595, 0.253464,
		0.478220, -0.835919, 0.269342,
		29.539423, 28.794231, 20.772671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.930401, 29.463697, 20.297836>,  <29.204670, 29.379375, 20.584131>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.930401, 29.463697, 20.297836> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.878517, 29.070610, 20.350664>,  <29.847387, 28.834759, 20.382360>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.878517, 29.070610, 20.350664>,  <29.930401, 29.463697, 20.297836>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.878517, 29.070610, 20.350664> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348858, -0.169908, -0.921645,
		0.928156, -0.073471, 0.364867,
		-0.129708, -0.982717, 0.132070,
		29.839605, 28.775795, 20.390285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.568720, 29.221594, 20.136435>,  <29.930401, 29.463697, 20.297836>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.568720, 29.221594, 20.136435> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.299643, 28.928009, 20.098951>,  <30.138195, 28.751858, 20.076462>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.299643, 28.928009, 20.098951>,  <30.568720, 29.221594, 20.136435>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.299643, 28.928009, 20.098951> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336643, -0.190813, -0.922096,
		0.658903, -0.651836, 0.375442,
		-0.672695, -0.733962, -0.093709,
		30.097834, 28.707821, 20.070839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.867041, 28.590437, 19.721144>,  <30.568720, 29.221594, 20.136435>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.867041, 28.590437, 19.721144> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.468761, 28.555115, 19.709911>,  <30.229794, 28.533920, 19.703173>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.468761, 28.555115, 19.709911>,  <30.867041, 28.590437, 19.721144>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.468761, 28.555115, 19.709911> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053797, -0.304148, -0.951105,
		0.075449, -0.948523, 0.307590,
		-0.995697, -0.088307, -0.028080,
		30.170052, 28.528624, 19.701487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.688869, 27.846634, 19.430298>,  <30.867041, 28.590437, 19.721144>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.688869, 27.846634, 19.430298> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.368856, 28.076712, 19.362066>,  <30.176849, 28.214758, 19.321127>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.368856, 28.076712, 19.362066>,  <30.688869, 27.846634, 19.430298>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.368856, 28.076712, 19.362066> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074770, -0.377696, -0.922906,
		-0.595279, -0.725600, 0.345177,
		-0.800032, 0.575196, -0.170581,
		30.128847, 28.249269, 19.310892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.234556, 27.386665, 19.017593>,  <30.688869, 27.846634, 19.430298>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.234556, 27.386665, 19.017593> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.094906, 27.757877, 18.965641>,  <30.011116, 27.980604, 18.934469>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.094906, 27.757877, 18.965641>,  <30.234556, 27.386665, 19.017593>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.094906, 27.757877, 18.965641> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270278, -0.232438, -0.934303,
		-0.897251, -0.291087, 0.331977,
		-0.349128, 0.928031, -0.129881,
		29.990168, 28.036287, 18.926678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.583549, 27.233925, 18.643847>,  <30.234556, 27.386665, 19.017593>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.583549, 27.233925, 18.643847> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.712017, 27.609665, 18.595736>,  <29.789099, 27.835110, 18.566870>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.712017, 27.609665, 18.595736>,  <29.583549, 27.233925, 18.643847>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.712017, 27.609665, 18.595736> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154153, -0.073455, -0.985313,
		-0.934391, 0.334995, 0.121212,
		0.321171, 0.939352, -0.120276,
		29.808369, 27.891470, 18.559652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.145260, 27.586605, 18.076593>,  <29.583549, 27.233925, 18.643847>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.145260, 27.586605, 18.076593> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.493536, 27.779943, 18.112980>,  <29.702501, 27.895947, 18.134811>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.493536, 27.779943, 18.112980>,  <29.145260, 27.586605, 18.076593>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.493536, 27.779943, 18.112980> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170142, -0.122466, -0.977780,
		-0.461468, 0.866820, -0.188868,
		0.870689, 0.483348, 0.090968,
		29.754744, 27.924948, 18.140270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.169851, 28.107393, 17.534567>,  <29.145260, 27.586605, 18.076593>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.169851, 28.107393, 17.534567> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.544586, 28.012398, 17.637278>,  <29.769426, 27.955400, 17.698904>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.544586, 28.012398, 17.637278>,  <29.169851, 28.107393, 17.534567>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.544586, 28.012398, 17.637278> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207351, -0.214119, -0.954546,
		0.281677, 0.947497, -0.151350,
		0.936837, -0.237491, 0.256777,
		29.825638, 27.941151, 17.714310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<30.712740, 30.950634, 33.073299> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.101608, 30.973516, 32.982426>,  <31.334929, 30.987246, 32.927902>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.101608, 30.973516, 32.982426>,  <30.712740, 30.950634, 33.073299>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.101608, 30.973516, 32.982426> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222946, -0.071963, -0.972171,
		-0.071963, 0.995765, -0.057207,
		0.972171, 0.057207, -0.227181,
		31.393259, 30.990679, 32.914272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.849316, 31.429319, 32.564861>,  <30.712740, 30.950634, 33.073299>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.849316, 31.429319, 32.564861> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.176300, 31.203861, 32.517433>,  <31.372490, 31.068586, 32.488976>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.176300, 31.203861, 32.517433>,  <30.849316, 31.429319, 32.564861>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.176300, 31.203861, 32.517433> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098765, 0.065631, -0.992944,
		0.567452, 0.823404, -0.002018,
		0.817462, -0.563647, -0.118566,
		31.421539, 31.034767, 32.481865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.016947, 31.580715, 31.868040>,  <30.849316, 31.429319, 32.564861>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.016947, 31.580715, 31.868040> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.236425, 31.255646, 31.946520>,  <31.368113, 31.060604, 31.993608>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.236425, 31.255646, 31.946520>,  <31.016947, 31.580715, 31.868040>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.236425, 31.255646, 31.946520> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157355, -0.330877, -0.930462,
		0.821080, 0.479667, -0.309429,
		0.548695, -0.812674, 0.196199,
		31.401033, 31.011843, 32.005379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.567286, 31.477053, 31.324970>,  <31.016947, 31.580715, 31.868040>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.567286, 31.477053, 31.324970> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.546463, 31.104731, 31.469688>,  <31.533970, 30.881338, 31.556519>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.546463, 31.104731, 31.469688>,  <31.567286, 31.477053, 31.324970>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.546463, 31.104731, 31.469688> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060130, -0.358705, -0.931512,
		0.996832, -0.070247, -0.037296,
		-0.052058, -0.930804, 0.361793,
		31.530846, 30.825489, 31.578226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.992701, 31.096933, 30.911470>,  <31.567286, 31.477053, 31.324970>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.992701, 31.096933, 30.911470> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.742908, 30.840855, 31.090433>,  <31.593033, 30.687206, 31.197811>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.742908, 30.840855, 31.090433>,  <31.992701, 31.096933, 30.911470>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.742908, 30.840855, 31.090433> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100843, -0.501951, -0.858997,
		0.774505, -0.581543, 0.248898,
		-0.624478, -0.640197, 0.447408,
		31.555565, 30.648796, 31.224655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.143810, 30.394152, 30.642952>,  <31.992701, 31.096933, 30.911470>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.143810, 30.394152, 30.642952> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.769894, 30.395201, 30.785030>,  <31.545544, 30.395830, 30.870277>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.769894, 30.395201, 30.785030>,  <32.143810, 30.394152, 30.642952>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.769894, 30.395201, 30.785030> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325299, -0.407943, -0.853090,
		0.142663, -0.913004, 0.382193,
		-0.934788, 0.002623, 0.355198,
		31.489458, 30.395988, 30.891590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.847025, 29.766479, 30.470936>,  <32.143810, 30.394152, 30.642952>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.847025, 29.766479, 30.470936> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.537956, 30.009676, 30.543951>,  <31.352514, 30.155594, 30.587761>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.537956, 30.009676, 30.543951>,  <31.847025, 29.766479, 30.470936>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.537956, 30.009676, 30.543951> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500611, -0.406783, -0.764144,
		-0.390342, -0.681813, 0.618678,
		-0.772672, 0.607995, 0.182539,
		31.306154, 30.192074, 30.598713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.352970, 29.319336, 30.361015>,  <31.847025, 29.766479, 30.470936>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.352970, 29.319336, 30.361015> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.172586, 29.674154, 30.321451>,  <31.064356, 29.887045, 30.297712>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.172586, 29.674154, 30.321451>,  <31.352970, 29.319336, 30.361015>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.172586, 29.674154, 30.321451> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.566903, -0.370260, -0.735886,
		-0.689387, -0.275784, 0.669842,
		-0.450961, 0.887046, -0.098910,
		31.037298, 29.940268, 30.291779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.617989, 29.197201, 30.498718>,  <31.352970, 29.319336, 30.361015>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.617989, 29.197201, 30.498718> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.618925, 29.528910, 30.275183>,  <30.619488, 29.727936, 30.141062>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.618925, 29.528910, 30.275183>,  <30.617989, 29.197201, 30.498718>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.618925, 29.528910, 30.275183> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491402, -0.485756, -0.722887,
		-0.870930, 0.276307, 0.406369,
		0.002343, 0.829274, -0.558837,
		30.619627, 29.777693, 30.107531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.078518, 29.079699, 30.163561>,  <30.617989, 29.197201, 30.498718>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.078518, 29.079699, 30.163561> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.187878, 29.403248, 29.955339>,  <30.253494, 29.597378, 29.830406>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.187878, 29.403248, 29.955339>,  <30.078518, 29.079699, 30.163561>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.187878, 29.403248, 29.955339> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427056, -0.382841, -0.819179,
		-0.861902, 0.446270, 0.240766,
		0.273400, 0.808873, -0.520554,
		30.269897, 29.645910, 29.799173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.545086, 29.228159, 29.766506>,  <30.078518, 29.079699, 30.163561>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.545086, 29.228159, 29.766506> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.863613, 29.380676, 29.578682>,  <30.054729, 29.472187, 29.465986>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.863613, 29.380676, 29.578682>,  <29.545086, 29.228159, 29.766506>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.863613, 29.380676, 29.578682> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368598, -0.309618, -0.876512,
		-0.479595, 0.871063, -0.106011,
		0.796320, 0.381295, -0.469563,
		30.102509, 29.495066, 29.437813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.257736, 29.585974, 29.122683>,  <29.545086, 29.228159, 29.766506>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.257736, 29.585974, 29.122683> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.645679, 29.517996, 29.052835>,  <29.878447, 29.477209, 29.010927>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.645679, 29.517996, 29.052835>,  <29.257736, 29.585974, 29.122683>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.645679, 29.517996, 29.052835> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214880, -0.258635, -0.941772,
		0.114887, 0.950908, -0.287357,
		0.969860, -0.169944, -0.174617,
		29.936638, 29.467012, 29.000450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.827208, 30.204096, 28.855360>,  <29.257736, 29.585974, 29.122683>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.827208, 30.204096, 28.855360> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.460669, 30.095600, 28.973166>,  <28.240746, 30.030502, 29.043848>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.460669, 30.095600, 28.973166>,  <28.827208, 30.204096, 28.855360>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.460669, 30.095600, 28.973166> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173484, 0.393963, 0.902606,
		-0.360847, 0.878193, -0.313951,
		-0.916347, -0.271237, 0.294513,
		28.185764, 30.014229, 29.061520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.624069, 30.783005, 29.171337>,  <28.827208, 30.204096, 28.855360>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.624069, 30.783005, 29.171337> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.369555, 30.501680, 29.298141>,  <28.216846, 30.332886, 29.374224>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.369555, 30.501680, 29.298141>,  <28.624069, 30.783005, 29.171337>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.369555, 30.501680, 29.298141> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047058, 0.374775, 0.925921,
		-0.770017, 0.604068, -0.205368,
		-0.636286, -0.703310, 0.317009,
		28.178669, 30.290688, 29.393244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.158701, 31.162823, 29.663103>,  <28.624069, 30.783005, 29.171337>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.158701, 31.162823, 29.663103> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.151939, 30.775024, 29.760916>,  <28.147882, 30.542345, 29.819603>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.151939, 30.775024, 29.760916>,  <28.158701, 31.162823, 29.663103>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.151939, 30.775024, 29.760916> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001388, 0.244545, 0.969637,
		-0.999856, 0.016731, -0.002788,
		-0.016904, -0.969494, 0.244533,
		28.146868, 30.484177, 29.834276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.729218, 31.196039, 30.181482>,  <28.158701, 31.162823, 29.663103>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.729218, 31.196039, 30.181482> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.911705, 30.840940, 30.206034>,  <28.021198, 30.627880, 30.220764>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.911705, 30.840940, 30.206034>,  <27.729218, 31.196039, 30.181482>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.911705, 30.840940, 30.206034> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165387, 0.152361, 0.974389,
		-0.874364, -0.434382, 0.216331,
		0.456218, -0.887749, 0.061378,
		28.048571, 30.574615, 30.224447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.502588, 30.910744, 30.731174>,  <27.729218, 31.196039, 30.181482>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.502588, 30.910744, 30.731174> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.826960, 30.683458, 30.675280>,  <28.021584, 30.547087, 30.641743>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.826960, 30.683458, 30.675280>,  <27.502588, 30.910744, 30.731174>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.826960, 30.683458, 30.675280> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177064, 0.010676, 0.984141,
		-0.557711, -0.822812, 0.109267,
		0.810930, -0.568213, -0.139736,
		28.070238, 30.512995, 30.633358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.469042, 30.402822, 31.195608>,  <27.502588, 30.910744, 30.731174>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.469042, 30.402822, 31.195608> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.859100, 30.422537, 31.109201>,  <28.093136, 30.434366, 31.057358>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.859100, 30.422537, 31.109201>,  <27.469042, 30.402822, 31.195608>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.859100, 30.422537, 31.109201> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214517, 0.034008, 0.976128,
		0.055461, -0.998205, 0.022589,
		0.975144, 0.049291, -0.216018,
		28.151644, 30.437323, 31.044395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.793434, 30.021690, 31.728207>,  <27.469042, 30.402822, 31.195608>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.793434, 30.021690, 31.728207> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.090849, 30.244535, 31.580271>,  <28.269299, 30.378242, 31.491510>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.090849, 30.244535, 31.580271>,  <27.793434, 30.021690, 31.728207>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.090849, 30.244535, 31.580271> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340023, 0.161245, 0.926490,
		0.575792, -0.814633, -0.069539,
		0.743537, 0.557111, -0.369838,
		28.313910, 30.411669, 31.469320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.270895, 29.869503, 32.174541>,  <27.793434, 30.021690, 31.728207>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.270895, 29.869503, 32.174541> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.381357, 30.212471, 32.000843>,  <28.447636, 30.418251, 31.896626>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.381357, 30.212471, 32.000843>,  <28.270895, 29.869503, 32.174541>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.381357, 30.212471, 32.000843> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317999, 0.344853, 0.883149,
		0.906981, -0.381976, -0.177425,
		0.276156, 0.857421, -0.434243,
		28.464205, 30.469698, 31.870569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.976341, 30.074881, 32.439384>,  <28.270895, 29.869503, 32.174541>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.976341, 30.074881, 32.439384> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.782259, 30.407618, 32.331596>,  <28.665810, 30.607260, 32.266922>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.782259, 30.407618, 32.331596>,  <28.976341, 30.074881, 32.439384>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.782259, 30.407618, 32.331596> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272561, 0.436705, 0.857321,
		0.830834, 0.342531, -0.438620,
		-0.485206, 0.831842, -0.269469,
		28.636698, 30.657169, 32.250755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.407995, 30.580667, 32.680717>,  <28.976341, 30.074881, 32.439384>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.407995, 30.580667, 32.680717> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.075140, 30.787260, 32.599922>,  <28.875427, 30.911215, 32.551445>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.075140, 30.787260, 32.599922>,  <29.407995, 30.580667, 32.680717>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.075140, 30.787260, 32.599922> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254429, 0.679172, 0.688470,
		0.492764, 0.521511, -0.696571,
		-0.832136, 0.516481, -0.201984,
		28.825499, 30.942204, 32.539326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.623774, 31.297901, 32.760540>,  <29.407995, 30.580667, 32.680717>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.623774, 31.297901, 32.760540> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.225637, 31.281046, 32.795227>,  <28.986755, 31.270933, 32.816040>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.225637, 31.281046, 32.795227>,  <29.623774, 31.297901, 32.760540>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.225637, 31.281046, 32.795227> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055025, 0.490291, 0.869820,
		-0.079169, 0.870540, -0.485688,
		-0.995341, -0.042138, 0.086717,
		28.927034, 31.268404, 32.821243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.435640, 31.983240, 32.896435>,  <29.623774, 31.297901, 32.760540>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.435640, 31.983240, 32.896435> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.139526, 31.763998, 33.052158>,  <28.961859, 31.632454, 33.145592>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.139526, 31.763998, 33.052158>,  <29.435640, 31.983240, 32.896435>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.139526, 31.763998, 33.052158> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121549, 0.460416, 0.879342,
		-0.661215, 0.698284, -0.274217,
		-0.740285, -0.548103, 0.389309,
		28.917440, 31.599567, 33.168953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.058868, 32.448528, 33.358051>,  <29.435640, 31.983240, 32.896435>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.058868, 32.448528, 33.358051> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.961395, 32.081997, 33.485149>,  <28.902912, 31.862078, 33.561409>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.961395, 32.081997, 33.485149>,  <29.058868, 32.448528, 33.358051>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.961395, 32.081997, 33.485149> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175654, 0.363903, 0.914724,
		-0.953816, 0.167090, -0.249634,
		-0.243683, -0.916328, 0.317746,
		28.888290, 31.807098, 33.580475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.551197, 32.573605, 33.933266>,  <29.058868, 32.448528, 33.358051>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.551197, 32.573605, 33.933266> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.735323, 32.218906, 33.950226>,  <28.845798, 32.006088, 33.960403>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.735323, 32.218906, 33.950226>,  <28.551197, 32.573605, 33.933266>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.735323, 32.218906, 33.950226> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047635, 0.072368, 0.996240,
		-0.886476, -0.456565, 0.075552,
		0.460316, -0.886742, 0.042404,
		28.873417, 31.952885, 33.962948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.835911, 32.926331, 33.915157>,  <28.551197, 32.573605, 33.933266>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.835911, 32.926331, 33.915157> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.138474, 33.166607, 34.018707>,  <28.320011, 33.310772, 34.080837>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.138474, 33.166607, 34.018707>,  <27.835911, 32.926331, 33.915157>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.138474, 33.166607, 34.018707> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.616691, -0.522996, -0.588360,
		-0.218030, 0.604688, -0.766039,
		0.756409, 0.600690, 0.258877,
		28.365396, 33.346813, 34.096371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.202547, 33.067787, 33.405083>,  <27.835911, 32.926331, 33.915157>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.202547, 33.067787, 33.405083> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.494387, 33.131729, 33.671055>,  <28.669491, 33.170094, 33.830639>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.494387, 33.131729, 33.671055>,  <28.202547, 33.067787, 33.405083>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.494387, 33.131729, 33.671055> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.639305, -0.504689, -0.580153,
		0.242840, 0.848372, -0.470419,
		0.729601, 0.159857, 0.664927,
		28.713266, 33.179688, 33.870533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.818430, 33.137848, 33.022301>,  <28.202547, 33.067787, 33.405083>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.818430, 33.137848, 33.022301> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.958506, 33.040939, 33.384224>,  <29.042551, 32.982796, 33.601376>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.958506, 33.040939, 33.384224>,  <28.818430, 33.137848, 33.022301>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.958506, 33.040939, 33.384224> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.638277, -0.645264, -0.419807,
		0.685544, 0.724529, -0.071331,
		0.350189, -0.242267, 0.904806,
		29.063562, 32.968258, 33.655666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.076536, 33.575394, 32.456600>,  <28.818430, 33.137848, 33.022301>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.076536, 33.575394, 32.456600> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.466906, 33.537758, 32.377895>,  <29.701128, 33.515175, 32.330673>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.466906, 33.537758, 32.377895>,  <29.076536, 33.575394, 32.456600>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.466906, 33.537758, 32.377895> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152528, 0.350418, -0.924090,
		0.155898, 0.931855, 0.327631,
		0.975926, -0.094091, -0.196764,
		29.759684, 33.509529, 32.318867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.375694, 34.303791, 32.150288>,  <29.076536, 33.575394, 32.456600>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.375694, 34.303791, 32.150288> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.599794, 33.996956, 32.025269>,  <29.734255, 33.812855, 31.950256>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.599794, 33.996956, 32.025269>,  <29.375694, 34.303791, 32.150288>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.599794, 33.996956, 32.025269> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131043, 0.290496, -0.947861,
		0.817891, 0.571998, 0.062228,
		0.560251, -0.767092, -0.312550,
		29.767870, 33.766827, 31.931503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.881035, 34.610664, 31.724989>,  <29.375694, 34.303791, 32.150288>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.881035, 34.610664, 31.724989> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.874977, 34.223225, 31.625719>,  <29.871342, 33.990761, 31.566156>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.874977, 34.223225, 31.625719>,  <29.881035, 34.610664, 31.724989>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.874977, 34.223225, 31.625719> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102941, 0.248397, -0.963173,
		0.994572, 0.010959, -0.103471,
		-0.015146, -0.968597, -0.248177,
		29.870434, 33.932644, 31.551266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.295279, 34.573235, 31.079710>,  <29.881035, 34.610664, 31.724989>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.295279, 34.573235, 31.079710> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.077394, 34.237793, 31.081856>,  <29.946665, 34.036526, 31.083143>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.077394, 34.237793, 31.081856>,  <30.295279, 34.573235, 31.079710>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.077394, 34.237793, 31.081856> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205244, 0.127105, -0.970422,
		0.813121, -0.529700, -0.241354,
		-0.544710, -0.838607, 0.005366,
		29.913980, 33.986210, 31.083466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.525364, 34.159660, 30.488914>,  <30.295279, 34.573235, 31.079710>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.525364, 34.159660, 30.488914> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.167694, 33.997929, 30.565828>,  <29.953093, 33.900890, 30.611977>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.167694, 33.997929, 30.565828>,  <30.525364, 34.159660, 30.488914>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.167694, 33.997929, 30.565828> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282049, 0.175163, -0.943274,
		0.347708, -0.897685, -0.270666,
		-0.894174, -0.404325, 0.192285,
		29.899443, 33.876633, 30.623514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.366055, 33.645664, 29.948107>,  <30.525364, 34.159660, 30.488914>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.366055, 33.645664, 29.948107> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.003746, 33.732944, 30.093418>,  <29.786362, 33.785313, 30.180605>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.003746, 33.732944, 30.093418>,  <30.366055, 33.645664, 29.948107>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.003746, 33.732944, 30.093418> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323521, 0.197635, -0.925351,
		-0.273710, -0.955682, -0.108418,
		-0.905769, 0.218202, 0.363278,
		29.732016, 33.798405, 30.202402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.835751, 33.217182, 29.600006>,  <30.366055, 33.645664, 29.948107>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.835751, 33.217182, 29.600006> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.655195, 33.539616, 29.753099>,  <29.546862, 33.733074, 29.844955>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.655195, 33.539616, 29.753099>,  <29.835751, 33.217182, 29.600006>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.655195, 33.539616, 29.753099> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353491, 0.232293, -0.906137,
		-0.819326, -0.544310, 0.180089,
		-0.451386, 0.806081, 0.382733,
		29.519779, 33.781441, 29.867920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.182987, 33.269836, 29.237402>,  <29.835751, 33.217182, 29.600006>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.182987, 33.269836, 29.237402> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.216160, 33.625656, 29.417103>,  <29.236063, 33.839146, 29.524923>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.216160, 33.625656, 29.417103>,  <29.182987, 33.269836, 29.237402>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.216160, 33.625656, 29.417103> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376663, 0.445344, -0.812277,
		-0.922631, -0.101854, 0.371992,
		0.082930, 0.889547, 0.449252,
		29.241039, 33.892521, 29.551878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.532753, 33.594151, 29.218519>,  <29.182987, 33.269836, 29.237402>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.532753, 33.594151, 29.218519> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.801266, 33.885571, 29.273058>,  <28.962374, 34.060425, 29.305780>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.801266, 33.885571, 29.273058>,  <28.532753, 33.594151, 29.218519>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.801266, 33.885571, 29.273058> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275931, 0.416369, -0.866314,
		-0.687926, 0.543918, 0.480531,
		0.671282, 0.728553, 0.136347,
		29.002651, 34.104137, 29.313963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.222879, 34.117981, 28.972689>,  <28.532753, 33.594151, 29.218519>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.222879, 34.117981, 28.972689> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.601053, 34.247715, 28.985083>,  <28.827957, 34.325558, 28.992519>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.601053, 34.247715, 28.985083>,  <28.222879, 34.117981, 28.972689>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.601053, 34.247715, 28.985083> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097451, 0.372240, -0.923006,
		-0.310900, 0.869622, 0.383535,
		0.945433, 0.324338, 0.030984,
		28.884684, 34.345016, 28.994377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.100737, 34.809475, 28.729519>,  <28.222879, 34.117981, 28.972689>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.100737, 34.809475, 28.729519> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.485031, 34.708027, 28.684500>,  <28.715607, 34.647160, 28.657488>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.485031, 34.708027, 28.684500>,  <28.100737, 34.809475, 28.729519>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.485031, 34.708027, 28.684500> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026733, 0.319130, -0.947334,
		0.276177, 0.913146, 0.299819,
		0.960735, -0.253617, -0.112548,
		28.773252, 34.631943, 28.650736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.389153, 35.418842, 28.497974>,  <28.100737, 34.809475, 28.729519>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.389153, 35.418842, 28.497974> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.631800, 35.122810, 28.381842>,  <28.777388, 34.945190, 28.312162>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.631800, 35.122810, 28.381842>,  <28.389153, 35.418842, 28.497974>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.631800, 35.122810, 28.381842> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056787, 0.404609, -0.912725,
		0.792961, 0.537190, 0.287471,
		0.606620, -0.740080, -0.290333,
		28.813786, 34.900787, 28.294743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.906094, 35.701874, 28.056526>,  <28.389153, 35.418842, 28.497974>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.906094, 35.701874, 28.056526> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.938366, 35.316711, 27.953526>,  <28.957729, 35.085613, 27.891726>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.938366, 35.316711, 27.953526>,  <28.906094, 35.701874, 28.056526>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.938366, 35.316711, 27.953526> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382814, 0.268466, -0.883957,
		0.920295, -0.027256, 0.390274,
		0.080682, -0.962904, -0.257502,
		28.962570, 35.027840, 27.876274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.517090, 35.623215, 27.598526>,  <28.906094, 35.701874, 28.056526>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.517090, 35.623215, 27.598526> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.296398, 35.297874, 27.524706>,  <29.163984, 35.102669, 27.480413>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.296398, 35.297874, 27.524706>,  <29.517090, 35.623215, 27.598526>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.296398, 35.297874, 27.524706> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315411, 0.001366, -0.948954,
		0.772084, -0.581773, 0.255786,
		-0.551727, -0.813350, -0.184552,
		29.130880, 35.053871, 27.469339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.926449, 35.189941, 27.248476>,  <29.517090, 35.623215, 27.598526>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.926449, 35.189941, 27.248476> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.554893, 35.065201, 27.168564>,  <29.331961, 34.990356, 27.120617>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.554893, 35.065201, 27.168564>,  <29.926449, 35.189941, 27.248476>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.554893, 35.065201, 27.168564> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267880, -0.193240, -0.943874,
		0.255742, -0.930273, 0.263037,
		-0.928890, -0.311851, -0.199782,
		29.276226, 34.971645, 27.108629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.989164, 34.542671, 26.804968>,  <29.926449, 35.189941, 27.248476>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.989164, 34.542671, 26.804968> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.615206, 34.675705, 26.755394>,  <29.390831, 34.755524, 26.725651>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.615206, 34.675705, 26.755394>,  <29.989164, 34.542671, 26.804968>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.615206, 34.675705, 26.755394> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046592, -0.231158, -0.971800,
		-0.351851, -0.914306, 0.200613,
		-0.934896, 0.332581, -0.123933,
		29.334738, 34.775478, 26.718214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.774717, 34.150494, 26.318420>,  <29.989164, 34.542671, 26.804968>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.774717, 34.150494, 26.318420> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.527403, 34.464649, 26.306519>,  <29.379015, 34.653145, 26.299377>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.527403, 34.464649, 26.306519>,  <29.774717, 34.150494, 26.318420>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.527403, 34.464649, 26.306519> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127788, -0.137807, -0.982181,
		-0.775496, -0.603465, 0.185568,
		-0.618285, 0.785391, -0.029753,
		29.341917, 34.700268, 26.297592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.268343, 33.978855, 25.879494>,  <29.774717, 34.150494, 26.318420>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.268343, 33.978855, 25.879494> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.218569, 34.375587, 25.890753>,  <29.188705, 34.613625, 25.897509>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.218569, 34.375587, 25.890753>,  <29.268343, 33.978855, 25.879494>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.218569, 34.375587, 25.890753> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216388, 0.000559, -0.976307,
		-0.968345, -0.127577, 0.214550,
		-0.124434, 0.991829, 0.028148,
		29.181238, 34.673138, 25.899197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.716244, 34.074848, 25.515415>,  <29.268343, 33.978855, 25.879494>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.716244, 34.074848, 25.515415> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.908140, 34.425560, 25.528728>,  <29.023277, 34.635986, 25.536716>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.908140, 34.425560, 25.528728>,  <28.716244, 34.074848, 25.515415>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.908140, 34.425560, 25.528728> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005012, 0.040671, -0.999160,
		-0.877396, 0.479170, 0.023906,
		0.479740, 0.876779, 0.033283,
		29.052063, 34.688595, 25.538713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.376423, 34.494122, 24.941320>,  <28.716244, 34.074848, 25.515415>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.376423, 34.494122, 24.941320> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.746496, 34.618137, 25.028870>,  <28.968540, 34.692547, 25.081400>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.746496, 34.618137, 25.028870>,  <28.376423, 34.494122, 24.941320>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.746496, 34.618137, 25.028870> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201140, 0.088481, -0.975558,
		-0.321831, 0.946596, 0.019500,
		0.925185, 0.310042, 0.218875,
		29.024052, 34.711151, 25.094532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.411617, 35.118202, 24.515879>,  <28.376423, 34.494122, 24.941320>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.411617, 35.118202, 24.515879> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.769367, 34.974361, 24.622297>,  <28.984016, 34.888058, 24.686150>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.769367, 34.974361, 24.622297>,  <28.411617, 35.118202, 24.515879>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.769367, 34.974361, 24.622297> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327551, 0.121430, -0.936998,
		0.304637, 0.925172, 0.226390,
		0.894375, -0.359599, 0.266049,
		29.037680, 34.866482, 24.702112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.805174, 35.515179, 24.136450>,  <28.411617, 35.118202, 24.515879>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.805174, 35.515179, 24.136450> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.025183, 35.196583, 24.236914>,  <29.157188, 35.005424, 24.297192>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.025183, 35.196583, 24.236914>,  <28.805174, 35.515179, 24.136450>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.025183, 35.196583, 24.236914> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245689, -0.133110, -0.960166,
		0.798192, 0.589822, 0.122474,
		0.550024, -0.796488, 0.251160,
		29.190189, 34.957638, 24.312262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.442162, 35.656891, 23.947405>,  <28.805174, 35.515179, 24.136450>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.442162, 35.656891, 23.947405> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.430061, 35.257568, 23.967297>,  <29.422802, 35.017975, 23.979231>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.430061, 35.257568, 23.967297>,  <29.442162, 35.656891, 23.947405>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.430061, 35.257568, 23.967297> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422163, -0.057857, -0.904672,
		0.906015, -0.006373, 0.423197,
		-0.030251, -0.998305, 0.049728,
		29.420986, 34.958076, 23.982216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.089272, 35.535809, 23.633747>,  <29.442162, 35.656891, 23.947405>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.089272, 35.535809, 23.633747> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.841282, 35.223129, 23.606665>,  <29.692488, 35.035522, 23.590414>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.841282, 35.223129, 23.606665>,  <30.089272, 35.535809, 23.633747>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.841282, 35.223129, 23.606665> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215155, -0.086388, -0.972751,
		0.754545, -0.617650, 0.221744,
		-0.619976, -0.781694, -0.067707,
		29.655289, 34.988621, 23.586353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.376940, 35.209789, 23.029787>,  <30.089272, 35.535809, 23.633747>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.376940, 35.209789, 23.029787> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.020937, 35.044491, 23.106848>,  <29.807335, 34.945312, 23.153084>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.020937, 35.044491, 23.106848>,  <30.376940, 35.209789, 23.029787>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.020937, 35.044491, 23.106848> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202405, -0.020528, -0.979087,
		0.408563, -0.910386, -0.065374,
		-0.890005, -0.413251, 0.192654,
		29.753935, 34.920517, 23.164644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.877087, 34.638855, 23.168463>,  <30.376940, 35.209789, 23.029787>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.877087, 34.638855, 23.168463> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.263252, 34.596973, 23.072950>,  <31.494951, 34.571846, 23.015642>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.263252, 34.596973, 23.072950>,  <30.877087, 34.638855, 23.168463>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.263252, 34.596973, 23.072950> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260137, 0.325112, 0.909192,
		-0.017567, -0.939861, 0.341105,
		0.965412, -0.104706, -0.238782,
		31.552876, 34.565563, 23.001316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.190622, 34.329842, 23.758974>,  <30.877087, 34.638855, 23.168463>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.190622, 34.329842, 23.758974> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.505360, 34.475872, 23.559938>,  <31.694202, 34.563488, 23.440517>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.505360, 34.475872, 23.559938>,  <31.190622, 34.329842, 23.758974>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.505360, 34.475872, 23.559938> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488642, 0.123953, 0.863634,
		0.376968, -0.922690, -0.080859,
		0.786844, 0.365074, -0.497591,
		31.741413, 34.585396, 23.410662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.786255, 33.974136, 23.954790>,  <31.190622, 34.329842, 23.758974>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.786255, 33.974136, 23.954790> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.927553, 34.321079, 23.814558>,  <32.012333, 34.529243, 23.730419>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.927553, 34.321079, 23.814558>,  <31.786255, 33.974136, 23.954790>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.927553, 34.321079, 23.814558> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.661319, 0.033551, 0.749354,
		0.661720, -0.496553, -0.561749,
		0.353247, 0.867358, -0.350581,
		32.033527, 34.581287, 23.709383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.585999, 33.864204, 23.989149>,  <31.786255, 33.974136, 23.954790>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.585999, 33.864204, 23.989149> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.501980, 34.254509, 23.964613>,  <32.451569, 34.488693, 23.949890>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.501980, 34.254509, 23.964613>,  <32.585999, 33.864204, 23.989149>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.501980, 34.254509, 23.964613> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538239, 0.167787, 0.825921,
		0.816197, 0.140469, -0.560439,
		-0.210051, 0.975764, -0.061342,
		32.438965, 34.547237, 23.946211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.172043, 34.211319, 24.104780>,  <32.585999, 33.864204, 23.989149>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.172043, 34.211319, 24.104780> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.889034, 34.476978, 24.201378>,  <32.719231, 34.636375, 24.259336>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.889034, 34.476978, 24.201378>,  <33.172043, 34.211319, 24.104780>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.889034, 34.476978, 24.201378> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467859, 0.184101, 0.864416,
		0.529641, 0.724579, -0.440983,
		-0.707523, 0.664148, 0.241494,
		32.676777, 34.676224, 24.273827>
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
