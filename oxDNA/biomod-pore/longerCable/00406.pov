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
	<24.824644, 35.002148, 35.105427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.485981, 34.791157, 35.077324>,  <24.282784, 34.664562, 35.060463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.485981, 34.791157, 35.077324>,  <24.824644, 35.002148, 35.105427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.485981, 34.791157, 35.077324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.519059, 0.847709, -0.109396,
		0.117263, -0.056153, -0.991512,
		-0.846656, -0.527481, -0.070259,
		24.231983, 34.632912, 35.056248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.355038, 34.436768, 35.211937>,  <24.824644, 35.002148, 35.105427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.355038, 34.436768, 35.211937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.652771, 34.666565, 35.348129>,  <25.831411, 34.804443, 35.429844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.652771, 34.666565, 35.348129>,  <25.355038, 34.436768, 35.211937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.652771, 34.666565, 35.348129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306636, -0.158905, 0.938469,
		0.593247, -0.802937, 0.057882,
		0.744333, 0.574492, 0.340480,
		25.876072, 34.838913, 35.450272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.906324, 34.089096, 35.732750>,  <25.355038, 34.436768, 35.211937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.906324, 34.089096, 35.732750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.871862, 34.482658, 35.795368>,  <25.851185, 34.718796, 35.832939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.871862, 34.482658, 35.795368>,  <25.906324, 34.089096, 35.732750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.871862, 34.482658, 35.795368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132009, -0.167019, 0.977076,
		0.987497, 0.063513, 0.144274,
		-0.086153, 0.983906, 0.156547,
		25.846016, 34.777832, 35.842331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.528120, 34.365551, 36.206745>,  <25.906324, 34.089096, 35.732750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.528120, 34.365551, 36.206745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.208014, 34.604393, 36.228802>,  <26.015949, 34.747700, 36.242035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.208014, 34.604393, 36.228802>,  <26.528120, 34.365551, 36.206745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.208014, 34.604393, 36.228802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076916, -0.193404, 0.978100,
		0.594694, 0.778497, 0.200702,
		-0.800264, 0.597107, 0.055137,
		25.967934, 34.783524, 36.245342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.698725, 34.910713, 36.733860>,  <26.528120, 34.365551, 36.206745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.698725, 34.910713, 36.733860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.301291, 34.873741, 36.707798>,  <26.062830, 34.851559, 36.692162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.301291, 34.873741, 36.707798>,  <26.698725, 34.910713, 36.733860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.301291, 34.873741, 36.707798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049593, -0.161663, 0.985599,
		-0.101634, 0.982508, 0.156042,
		-0.993585, -0.092432, -0.065156,
		26.003216, 34.846012, 36.688251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.455275, 35.248245, 37.267796>,  <26.698725, 34.910713, 36.733860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.455275, 35.248245, 37.267796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.192667, 34.965984, 37.161182>,  <26.035103, 34.796627, 37.097214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.192667, 34.965984, 37.161182>,  <26.455275, 35.248245, 37.267796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.192667, 34.965984, 37.161182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039506, -0.320694, 0.946359,
		-0.753276, 0.631830, 0.182664,
		-0.656517, -0.705653, -0.266532,
		25.995712, 34.754288, 37.081223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.794193, 35.247265, 37.627357>,  <26.455275, 35.248245, 37.267796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.794193, 35.247265, 37.627357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.880476, 34.864300, 37.550594>,  <25.932245, 34.634521, 37.504536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.880476, 34.864300, 37.550594>,  <25.794193, 35.247265, 37.627357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.880476, 34.864300, 37.550594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076600, -0.212523, 0.974149,
		-0.973449, -0.195432, -0.119181,
		0.215709, -0.957413, -0.191910,
		25.945189, 34.577076, 37.493023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.206463, 34.879566, 37.915215>,  <25.794193, 35.247265, 37.627357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.206463, 34.879566, 37.915215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.548141, 34.672287, 37.898167>,  <25.753149, 34.547920, 37.887939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.548141, 34.672287, 37.898167>,  <25.206463, 34.879566, 37.915215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.548141, 34.672287, 37.898167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012892, -0.103050, 0.994592,
		-0.519788, -0.849029, -0.094706,
		0.854197, -0.518198, -0.042619,
		25.804401, 34.516827, 37.885380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.147425, 34.255013, 38.355015>,  <25.206463, 34.879566, 37.915215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.147425, 34.255013, 38.355015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.543743, 34.293354, 38.316792>,  <25.781534, 34.316360, 38.293858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.543743, 34.293354, 38.316792>,  <25.147425, 34.255013, 38.355015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.543743, 34.293354, 38.316792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109994, -0.158816, 0.981162,
		0.078873, -0.982644, -0.167898,
		0.990798, 0.095855, -0.095559,
		25.840982, 34.322109, 38.288124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.545206, 33.651257, 38.662300>,  <25.147425, 34.255013, 38.355015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.545206, 33.651257, 38.662300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.782537, 33.973106, 38.671612>,  <25.924936, 34.166214, 38.677197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.782537, 33.973106, 38.671612>,  <25.545206, 33.651257, 38.662300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.782537, 33.973106, 38.671612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131555, -0.125454, 0.983339,
		0.794136, -0.580382, -0.180288,
		0.593330, 0.804623, 0.023276,
		25.960537, 34.214493, 38.678593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.116695, 33.419334, 39.197235>,  <25.545206, 33.651257, 38.662300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.116695, 33.419334, 39.197235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.173033, 33.813286, 39.156876>,  <26.206835, 34.049656, 39.132660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.173033, 33.813286, 39.156876>,  <26.116695, 33.419334, 39.197235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.173033, 33.813286, 39.156876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038529, 0.107292, 0.993481,
		0.989282, -0.136039, 0.053057,
		0.140845, 0.984877, -0.100900,
		26.215286, 34.108749, 39.126606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.693073, 33.658291, 39.645107>,  <26.116695, 33.419334, 39.197235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.693073, 33.658291, 39.645107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.411892, 33.934029, 39.575066>,  <26.243183, 34.099472, 39.533039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.411892, 33.934029, 39.575066>,  <26.693073, 33.658291, 39.645107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.411892, 33.934029, 39.575066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067403, 0.180519, 0.981259,
		0.708036, 0.701580, -0.080432,
		-0.702952, 0.689346, -0.175103,
		26.201006, 34.140831, 39.522533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.858578, 34.356323, 39.975624>,  <26.693073, 33.658291, 39.645107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.858578, 34.356323, 39.975624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.482651, 34.224735, 39.938705>,  <26.257093, 34.145782, 39.916553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.482651, 34.224735, 39.938705>,  <26.858578, 34.356323, 39.975624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.482651, 34.224735, 39.938705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118751, 0.061203, 0.991036,
		-0.320372, 0.942355, -0.096585,
		-0.939819, -0.328970, -0.092298,
		26.200705, 34.126045, 39.911015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.411787, 34.894768, 40.256290>,  <26.858578, 34.356323, 39.975624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.411787, 34.894768, 40.256290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.209183, 34.552559, 40.299225>,  <26.087620, 34.347233, 40.324986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.209183, 34.552559, 40.299225>,  <26.411787, 34.894768, 40.256290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.209183, 34.552559, 40.299225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222770, 0.250103, 0.942243,
		-0.832958, 0.453346, -0.317266,
		-0.506511, -0.855527, 0.107334,
		26.057230, 34.295902, 40.331425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.691246, 35.103191, 40.281368>,  <26.411787, 34.894768, 40.256290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.691246, 35.103191, 40.281368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.812952, 34.782009, 40.486382>,  <25.885977, 34.589302, 40.609390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.812952, 34.782009, 40.486382>,  <25.691246, 35.103191, 40.281368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.812952, 34.782009, 40.486382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377974, 0.392110, 0.838681,
		-0.874390, -0.448906, -0.184189,
		0.304267, -0.802953, 0.512531,
		25.904232, 34.541122, 40.640141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.738647, 35.253311, 39.516811>,  <25.691246, 35.103191, 40.281368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.738647, 35.253311, 39.516811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.989275, 34.942566, 39.491821>,  <26.139650, 34.756119, 39.476826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.989275, 34.942566, 39.491821>,  <25.738647, 35.253311, 39.516811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.989275, 34.942566, 39.491821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150916, -0.042291, -0.987642,
		0.764617, 0.628252, -0.143739,
		0.626567, -0.776860, -0.062477,
		26.177244, 34.709507, 39.473080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.386808, 35.361023, 39.073196>,  <25.738647, 35.253311, 39.516811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.386808, 35.361023, 39.073196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.301195, 34.971172, 39.099392>,  <26.249826, 34.737263, 39.115108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.301195, 34.971172, 39.099392>,  <26.386808, 35.361023, 39.073196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.301195, 34.971172, 39.099392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191504, -0.107608, -0.975575,
		0.957871, -0.196264, 0.209677,
		-0.214033, -0.974629, 0.065489,
		26.236984, 34.678783, 39.119038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.956171, 35.006310, 38.608650>,  <26.386808, 35.361023, 39.073196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.956171, 35.006310, 38.608650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.629248, 34.778076, 38.640755>,  <26.433094, 34.641136, 38.660015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.629248, 34.778076, 38.640755>,  <26.956171, 35.006310, 38.608650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.629248, 34.778076, 38.640755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100268, -0.278002, -0.955333,
		0.567406, -0.772756, 0.284425,
		-0.817310, -0.570581, 0.080258,
		26.384054, 34.606903, 38.664833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.085016, 34.415546, 38.119141>,  <26.956171, 35.006310, 38.608650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.085016, 34.415546, 38.119141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.690929, 34.406853, 38.187115>,  <26.454477, 34.401638, 38.227898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.690929, 34.406853, 38.187115>,  <27.085016, 34.415546, 38.119141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.690929, 34.406853, 38.187115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162258, -0.199918, -0.966284,
		0.054971, -0.979572, 0.193437,
		-0.985216, -0.021731, 0.169933,
		26.395365, 34.400333, 38.238094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.832146, 33.774307, 37.928185>,  <27.085016, 34.415546, 38.119141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.832146, 33.774307, 37.928185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.532799, 34.038822, 37.907597>,  <26.353191, 34.197529, 37.895245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.532799, 34.038822, 37.907597>,  <26.832146, 33.774307, 37.928185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.532799, 34.038822, 37.907597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181552, -0.278852, -0.943017,
		-0.637955, -0.696378, 0.328742,
		-0.748366, 0.661286, -0.051466,
		26.308289, 34.237209, 37.892159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.276506, 33.437939, 37.598457>,  <26.832146, 33.774307, 37.928185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.276506, 33.437939, 37.598457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.247772, 33.832657, 37.540382>,  <26.230532, 34.069489, 37.505539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.247772, 33.832657, 37.540382>,  <26.276506, 33.437939, 37.598457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.247772, 33.832657, 37.540382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014026, -0.144548, -0.989399,
		-0.997318, -0.073109, -0.003458,
		-0.071834, 0.986793, -0.145185,
		26.226221, 34.128696, 37.496826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.637110, 33.831894, 37.364567>,  <26.276506, 33.437939, 37.598457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.637110, 33.831894, 37.364567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.268915, 33.982929, 37.404819>,  <25.047998, 34.073551, 37.428970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.268915, 33.982929, 37.404819>,  <25.637110, 33.831894, 37.364567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.268915, 33.982929, 37.404819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260782, 0.785361, -0.561428,
		-0.291025, -0.490544, -0.821384,
		-0.920488, 0.377592, 0.100635,
		24.992769, 34.096207, 37.435009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.309385, 33.835083, 36.731262>,  <25.637110, 33.831894, 37.364567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.309385, 33.835083, 36.731262> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.177794, 34.137524, 36.957565>,  <25.098839, 34.318989, 37.093349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.177794, 34.137524, 36.957565>,  <25.309385, 33.835083, 36.731262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.177794, 34.137524, 36.957565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294172, 0.651353, -0.699430,
		-0.897349, -0.063669, -0.436706,
		-0.328981, 0.756099, 0.565761,
		25.079100, 34.364353, 37.127293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.764631, 34.250584, 36.441223>,  <25.309385, 33.835083, 36.731262>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.764631, 34.250584, 36.441223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.030920, 34.454372, 36.659306>,  <25.190693, 34.576645, 36.790154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.030920, 34.454372, 36.659306>,  <24.764631, 34.250584, 36.441223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.030920, 34.454372, 36.659306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217913, 0.566061, -0.795040,
		-0.713670, 0.648085, 0.265820,
		0.665724, 0.509471, 0.545207,
		25.230637, 34.607212, 36.822868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.668949, 35.025318, 36.389355>,  <24.764631, 34.250584, 36.441223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.668949, 35.025318, 36.389355> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.052467, 34.970413, 36.488850>,  <25.282579, 34.937469, 36.548546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.052467, 34.970413, 36.488850>,  <24.668949, 35.025318, 36.389355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.052467, 34.970413, 36.488850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283815, 0.501562, -0.817242,
		-0.012583, 0.854164, 0.519852,
		0.958797, -0.137258, 0.248736,
		25.340107, 34.929237, 36.563469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.072254, 35.671661, 36.143143>,  <24.668949, 35.025318, 36.389355>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.072254, 35.671661, 36.143143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.367516, 35.410564, 36.211323>,  <25.544672, 35.253906, 36.252232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.367516, 35.410564, 36.211323>,  <25.072254, 35.671661, 36.143143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.367516, 35.410564, 36.211323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395218, 0.213639, -0.893399,
		0.546748, 0.726829, 0.415675,
		0.738153, -0.652746, 0.170449,
		25.588961, 35.214741, 36.262459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.596876, 36.025852, 35.979916>,  <25.072254, 35.671661, 36.143143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.596876, 36.025852, 35.979916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.678782, 35.636608, 35.937717>,  <25.727924, 35.403061, 35.912399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.678782, 35.636608, 35.937717>,  <25.596876, 36.025852, 35.979916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.678782, 35.636608, 35.937717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275400, 0.160705, -0.947802,
		0.939269, 0.165023, 0.300901,
		0.204765, -0.973109, -0.105498,
		25.740211, 35.344677, 35.906067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.352949, 35.872993, 35.813850>,  <25.596876, 36.025852, 35.979916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.352949, 35.872993, 35.813850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.109413, 35.602806, 35.647449>,  <25.963291, 35.440693, 35.547607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.109413, 35.602806, 35.647449>,  <26.352949, 35.872993, 35.813850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.109413, 35.602806, 35.647449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197435, 0.378879, -0.904140,
		0.768331, -0.632612, -0.097317,
		-0.608841, -0.675465, -0.416005,
		25.926762, 35.400166, 35.522648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.653538, 35.517002, 35.193424>,  <26.352949, 35.872993, 35.813850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.653538, 35.517002, 35.193424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.253901, 35.528267, 35.180676>,  <26.014118, 35.535027, 35.173027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.253901, 35.528267, 35.180676>,  <26.653538, 35.517002, 35.193424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.253901, 35.528267, 35.180676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039450, 0.333409, -0.941957,
		-0.015900, -0.942362, -0.334218,
		-0.999095, 0.028162, -0.031875,
		25.954172, 35.536716, 35.171112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.401972, 36.256931, 35.052223>,  <26.653538, 35.517002, 35.193424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.401972, 36.256931, 35.052223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.099182, 36.502110, 35.142815>,  <25.917507, 36.649216, 35.197170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.099182, 36.502110, 35.142815>,  <26.401972, 36.256931, 35.052223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.099182, 36.502110, 35.142815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.576464, -0.789610, 0.210251,
		0.307698, 0.028600, 0.951054,
		-0.756975, 0.612942, 0.226475,
		25.872089, 36.685993, 35.210758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.573839, 37.044556, 35.192818>,  <26.401972, 36.256931, 35.052223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.573839, 37.044556, 35.192818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.756800, 37.202465, 34.874084>,  <26.866575, 37.297211, 34.682846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.756800, 37.202465, 34.874084>,  <26.573839, 37.044556, 35.192818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.756800, 37.202465, 34.874084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.576732, 0.813745, 0.072099,
		0.676878, 0.426579, 0.599888,
		0.457401, 0.394777, -0.796828,
		26.894020, 37.320900, 34.635036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.986803, 37.656887, 35.369984>,  <26.573839, 37.044556, 35.192818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.986803, 37.656887, 35.369984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.842714, 37.722301, 35.002617>,  <26.756262, 37.761551, 34.782196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.842714, 37.722301, 35.002617>,  <26.986803, 37.656887, 35.369984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.842714, 37.722301, 35.002617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407188, 0.858213, 0.312518,
		0.839308, 0.486546, -0.242560,
		-0.360223, 0.163532, -0.918421,
		26.734648, 37.771362, 34.727089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.954760, 38.331020, 35.351681>,  <26.986803, 37.656887, 35.369984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.954760, 38.331020, 35.351681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.746258, 38.247414, 35.020718>,  <26.621157, 38.197250, 34.822140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.746258, 38.247414, 35.020718>,  <26.954760, 38.331020, 35.351681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.746258, 38.247414, 35.020718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.574655, 0.802755, 0.159239,
		0.630923, 0.558478, -0.538552,
		-0.521256, -0.209014, -0.827409,
		26.589880, 38.184708, 34.772495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.987501, 38.923176, 34.974403>,  <26.954760, 38.331020, 35.351681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.987501, 38.923176, 34.974403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.652653, 38.720623, 34.891647>,  <26.451744, 38.599091, 34.841995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.652653, 38.720623, 34.891647>,  <26.987501, 38.923176, 34.974403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.652653, 38.720623, 34.891647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.541612, 0.820315, 0.183683,
		0.076698, 0.265818, -0.960967,
		-0.837122, -0.506383, -0.206887,
		26.401516, 38.568707, 34.829582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.467604, 39.330505, 34.421673>,  <26.987501, 38.923176, 34.974403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.467604, 39.330505, 34.421673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.270630, 39.096230, 34.679192>,  <26.152445, 38.955662, 34.833702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.270630, 39.096230, 34.679192>,  <26.467604, 39.330505, 34.421673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.270630, 39.096230, 34.679192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.578917, 0.772755, 0.260202,
		-0.649894, -0.244571, -0.719599,
		-0.492436, -0.585692, 0.643795,
		26.122900, 38.920521, 34.872330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.805246, 39.399342, 34.137978>,  <26.467604, 39.330505, 34.421673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.805246, 39.399342, 34.137978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.599533, 39.196682, 34.414768>,  <25.476105, 39.075089, 34.580841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.599533, 39.196682, 34.414768>,  <25.805246, 39.399342, 34.137978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.599533, 39.196682, 34.414768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179506, 0.725388, 0.664523,
		-0.838625, 0.465965, -0.282107,
		-0.514282, -0.506645, 0.691972,
		25.445248, 39.044689, 34.622360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.233372, 39.844395, 34.530849>,  <25.805246, 39.399342, 34.137978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.233372, 39.844395, 34.530849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.335577, 39.542843, 34.772964>,  <25.396900, 39.361912, 34.918236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.335577, 39.542843, 34.772964>,  <25.233372, 39.844395, 34.530849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.335577, 39.542843, 34.772964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335138, 0.656319, 0.675964,
		-0.906860, 0.030137, 0.420352,
		0.255514, -0.753881, 0.605290,
		25.412231, 39.316677, 34.954552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.735416, 39.822926, 35.171432>,  <25.233372, 39.844395, 34.530849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.735416, 39.822926, 35.171432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.092640, 39.656708, 35.240444>,  <25.306974, 39.556976, 35.281853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.092640, 39.656708, 35.240444>,  <24.735416, 39.822926, 35.171432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.092640, 39.656708, 35.240444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200561, 0.710907, 0.674082,
		-0.402763, -0.567393, 0.718225,
		0.893060, -0.415544, 0.172530,
		25.360558, 39.532043, 35.292202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.782568, 39.772884, 35.927643>,  <24.735416, 39.822926, 35.171432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.782568, 39.772884, 35.927643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.141354, 39.771530, 35.750809>,  <25.356625, 39.770718, 35.644707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.141354, 39.771530, 35.750809>,  <24.782568, 39.772884, 35.927643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.141354, 39.771530, 35.750809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325141, 0.682610, 0.654467,
		0.299558, -0.730775, 0.613379,
		0.896967, -0.003384, -0.442086,
		25.410444, 39.770515, 35.618183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.157461, 40.046085, 36.536304>,  <24.782568, 39.772884, 35.927643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.157461, 40.046085, 36.536304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.532751, 40.024033, 36.672947>,  <25.757925, 40.010799, 36.754932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.532751, 40.024033, 36.672947>,  <25.157461, 40.046085, 36.536304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.532751, 40.024033, 36.672947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299592, -0.364572, -0.881664,
		0.173151, 0.929541, -0.325533,
		0.938224, -0.055134, 0.341609,
		25.814219, 40.007492, 36.775429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.633217, 40.406670, 35.984325>,  <25.157461, 40.046085, 36.536304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.633217, 40.406670, 35.984325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.776722, 40.100964, 36.198685>,  <25.862825, 39.917538, 36.327301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.776722, 40.100964, 36.198685>,  <25.633217, 40.406670, 35.984325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.776722, 40.100964, 36.198685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159556, -0.515454, -0.841932,
		0.919691, 0.387559, -0.062982,
		0.358763, -0.764267, 0.535896,
		25.884352, 39.871685, 36.359455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.235374, 40.088444, 35.638641>,  <25.633217, 40.406670, 35.984325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.235374, 40.088444, 35.638641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.058784, 39.819153, 35.875916>,  <25.952831, 39.657578, 36.018280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.058784, 39.819153, 35.875916>,  <26.235374, 40.088444, 35.638641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.058784, 39.819153, 35.875916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080007, -0.628927, -0.773337,
		0.893700, -0.388867, 0.223792,
		-0.441474, -0.673226, 0.593184,
		25.926342, 39.617184, 36.053871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.585640, 39.467590, 35.556107>,  <26.235374, 40.088444, 35.638641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.585640, 39.467590, 35.556107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.203400, 39.449421, 35.672562>,  <25.974054, 39.438519, 35.742435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.203400, 39.449421, 35.672562>,  <26.585640, 39.467590, 35.556107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.203400, 39.449421, 35.672562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220349, -0.545816, -0.808413,
		0.195626, -0.836673, 0.511574,
		-0.955603, -0.045422, 0.291135,
		25.916719, 39.435795, 35.759903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.292078, 38.777020, 35.695408>,  <26.585640, 39.467590, 35.556107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.292078, 38.777020, 35.695408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.982794, 39.004620, 35.583416>,  <25.797224, 39.141178, 35.516220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.982794, 39.004620, 35.583416>,  <26.292078, 38.777020, 35.695408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.982794, 39.004620, 35.583416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191497, -0.630396, -0.752283,
		-0.604543, -0.528059, 0.596391,
		-0.773212, 0.568994, -0.279980,
		25.750832, 39.175320, 35.499420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.708887, 38.371635, 35.751335>,  <26.292078, 38.777020, 35.695408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.708887, 38.371635, 35.751335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.657236, 38.664597, 35.483929>,  <25.626245, 38.840374, 35.323486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.657236, 38.664597, 35.483929>,  <25.708887, 38.371635, 35.751335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.657236, 38.664597, 35.483929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158719, -0.680735, -0.715128,
		-0.978843, 0.013764, 0.204148,
		-0.129128, 0.732400, -0.668518,
		25.618498, 38.884315, 35.283375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.225405, 38.129948, 35.320587>,  <25.708887, 38.371635, 35.751335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.225405, 38.129948, 35.320587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.469614, 38.376797, 35.122025>,  <25.616140, 38.524906, 35.002888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.469614, 38.376797, 35.122025>,  <25.225405, 38.129948, 35.320587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.469614, 38.376797, 35.122025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157915, -0.709046, -0.687253,
		-0.776095, 0.341195, -0.530343,
		0.610524, 0.617122, -0.496408,
		25.652771, 38.561932, 34.973103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.291382, 37.909164, 34.530254>,  <25.225405, 38.129948, 35.320587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.291382, 37.909164, 34.530254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.629261, 38.102516, 34.622192>,  <25.831989, 38.218529, 34.677357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.629261, 38.102516, 34.622192>,  <25.291382, 37.909164, 34.530254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.629261, 38.102516, 34.622192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525892, -0.669600, -0.524474,
		-0.099618, 0.563895, -0.819816,
		0.844698, 0.483381, 0.229844,
		25.882669, 38.247532, 34.691147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.622452, 37.941166, 33.916195>,  <25.291382, 37.909164, 34.530254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.622452, 37.941166, 33.916195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.925526, 37.996632, 34.171284>,  <26.107370, 38.029911, 34.324337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.925526, 37.996632, 34.171284>,  <25.622452, 37.941166, 33.916195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.925526, 37.996632, 34.171284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514670, -0.727796, -0.453242,
		0.401282, 0.671629, -0.622805,
		0.757686, 0.138661, 0.637719,
		26.152832, 38.038231, 34.362598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.149925, 38.077652, 33.541397>,  <25.622452, 37.941166, 33.916195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.149925, 38.077652, 33.541397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.319996, 37.962509, 33.884644>,  <26.422039, 37.893421, 34.090591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.319996, 37.962509, 33.884644>,  <26.149925, 38.077652, 33.541397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.319996, 37.962509, 33.884644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.685931, -0.516084, -0.512988,
		0.590527, 0.806718, -0.021975,
		0.425178, -0.287860, 0.858115,
		26.447550, 37.876152, 34.142078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.674744, 37.608509, 33.303158>,  <26.149925, 38.077652, 33.541397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.674744, 37.608509, 33.303158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.716499, 37.625256, 33.700619>,  <26.741552, 37.635303, 33.939095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.716499, 37.625256, 33.700619>,  <26.674744, 37.608509, 33.303158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.716499, 37.625256, 33.700619> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.690140, -0.722452, -0.042065,
		0.716107, 0.690153, -0.104306,
		0.104388, 0.041863, 0.993655,
		26.747816, 37.637814, 33.998714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.345743, 37.682365, 33.437340>,  <26.674744, 37.608509, 33.303158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.345743, 37.682365, 33.437340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.182161, 37.540318, 33.773590>,  <27.084013, 37.455090, 33.975338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.182161, 37.540318, 33.773590>,  <27.345743, 37.682365, 33.437340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.182161, 37.540318, 33.773590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.700599, -0.712441, 0.039860,
		0.584738, 0.605240, 0.540154,
		-0.408953, -0.355123, 0.840622,
		27.059475, 37.433781, 34.025776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.858416, 37.644760, 33.817570>,  <27.345743, 37.682365, 33.437340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.858416, 37.644760, 33.817570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.601957, 37.345676, 33.886692>,  <27.448082, 37.166225, 33.928165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.601957, 37.345676, 33.886692>,  <27.858416, 37.644760, 33.817570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.601957, 37.345676, 33.886692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.737738, -0.662540, -0.129554,
		0.211361, 0.044423, 0.976398,
		-0.641147, -0.747708, 0.172808,
		27.409613, 37.121365, 33.938534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.042807, 37.122784, 34.295868>,  <27.858416, 37.644760, 33.817570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.042807, 37.122784, 34.295868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.789431, 36.925903, 34.057041>,  <27.637405, 36.807774, 33.913746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.789431, 36.925903, 34.057041>,  <28.042807, 37.122784, 34.295868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.789431, 36.925903, 34.057041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.735347, -0.623097, -0.266485,
		-0.240865, -0.607853, 0.756637,
		-0.633442, -0.492204, -0.597065,
		27.599398, 36.778244, 33.877922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.123775, 36.386993, 34.595009>,  <28.042807, 37.122784, 34.295868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.123775, 36.386993, 34.595009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.040134, 36.470028, 34.212765>,  <27.989950, 36.519848, 33.983418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.040134, 36.470028, 34.212765>,  <28.123775, 36.386993, 34.595009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.040134, 36.470028, 34.212765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.731189, -0.615692, -0.293743,
		-0.649336, -0.760153, -0.023038,
		-0.209105, 0.207583, -0.955607,
		27.977404, 36.532303, 33.926083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.016191, 35.743584, 34.816093>,  <28.123775, 36.386993, 34.595009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.016191, 35.743584, 34.816093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.721884, 35.606201, 34.582623>,  <27.545300, 35.523769, 34.442539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.721884, 35.606201, 34.582623>,  <28.016191, 35.743584, 34.816093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.721884, 35.606201, 34.582623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.677092, -0.390759, -0.623581,
		-0.013903, -0.854015, 0.520061,
		-0.735767, -0.343460, -0.583680,
		27.501154, 35.503162, 34.407520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.076239, 35.018890, 34.723946>,  <28.016191, 35.743584, 34.816093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.076239, 35.018890, 34.723946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.906876, 35.174507, 34.396687>,  <27.805258, 35.267879, 34.200329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.906876, 35.174507, 34.396687>,  <28.076239, 35.018890, 34.723946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.906876, 35.174507, 34.396687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.687117, -0.450661, -0.569890,
		-0.590421, -0.803461, -0.076507,
		-0.423405, 0.389044, -0.818152,
		27.779854, 35.291222, 34.151241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.181002, 34.504478, 34.221935>,  <28.076239, 35.018890, 34.723946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.181002, 34.504478, 34.221935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.099924, 34.845493, 34.029228>,  <28.051277, 35.050102, 33.913605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.099924, 34.845493, 34.029228>,  <28.181002, 34.504478, 34.221935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.099924, 34.845493, 34.029228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.687116, -0.226705, -0.690272,
		-0.697701, -0.470943, -0.539839,
		-0.202695, 0.852536, -0.481765,
		28.039116, 35.101254, 33.884697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.369839, 34.505127, 33.434307>,  <28.181002, 34.504478, 34.221935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.369839, 34.505127, 33.434307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.373720, 34.900398, 33.495506>,  <28.376049, 35.137562, 33.532227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.373720, 34.900398, 33.495506>,  <28.369839, 34.505127, 33.434307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.373720, 34.900398, 33.495506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.659978, 0.108619, -0.743391,
		-0.751222, 0.108192, -0.651122,
		0.009704, 0.988178, 0.153001,
		28.376631, 35.196854, 33.541405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.122896, 33.766197, 33.590111>,  <28.369839, 34.505127, 33.434307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.122896, 33.766197, 33.590111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.407335, 33.720264, 33.312649>,  <28.577999, 33.692703, 33.146172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.407335, 33.720264, 33.312649>,  <28.122896, 33.766197, 33.590111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.407335, 33.720264, 33.312649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.682145, 0.351717, 0.641072,
		0.170353, -0.929036, 0.328439,
		0.711096, -0.114834, -0.693654,
		28.620665, 33.685814, 33.104553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.515827, 33.242020, 33.797356>,  <28.122896, 33.766197, 33.590111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.515827, 33.242020, 33.797356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.682222, 33.559078, 33.619072>,  <28.782059, 33.749313, 33.512100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.682222, 33.559078, 33.619072>,  <28.515827, 33.242020, 33.797356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.682222, 33.559078, 33.619072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.645651, 0.087714, 0.758578,
		0.640383, -0.603333, -0.475288,
		0.415986, 0.792651, -0.445713,
		28.807018, 33.796875, 33.485359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.774069, 32.967403, 34.424355>,  <28.515827, 33.242020, 33.797356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.774069, 32.967403, 34.424355> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.859173, 33.086376, 34.796650>,  <28.910234, 33.157761, 35.020027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.859173, 33.086376, 34.796650>,  <28.774069, 32.967403, 34.424355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.859173, 33.086376, 34.796650> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.939723, -0.323242, -0.111516,
		0.267685, 0.898360, -0.348274,
		0.212758, 0.297430, 0.930736,
		28.923000, 33.175606, 35.075871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.243029, 32.396156, 34.437630>,  <28.774069, 32.967403, 34.424355>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.243029, 32.396156, 34.437630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.256477, 32.316040, 34.045967>,  <29.264547, 32.267971, 33.810970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.256477, 32.316040, 34.045967>,  <29.243029, 32.396156, 34.437630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.256477, 32.316040, 34.045967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.648615, 0.749742, -0.131094,
		0.760374, -0.630689, 0.155122,
		0.033622, -0.200295, -0.979159,
		29.266563, 32.255951, 33.752220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.844662, 32.031837, 34.278580>,  <29.243029, 32.396156, 34.437630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.844662, 32.031837, 34.278580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.673407, 32.281490, 34.017151>,  <29.570654, 32.431282, 33.860294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.673407, 32.281490, 34.017151>,  <29.844662, 32.031837, 34.278580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.673407, 32.281490, 34.017151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.803807, 0.593528, 0.040237,
		0.413026, -0.508119, -0.755794,
		-0.428139, 0.624131, -0.653572,
		29.544966, 32.468731, 33.821079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.405910, 32.367958, 33.912689>,  <29.844662, 32.031837, 34.278580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.405910, 32.367958, 33.912689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.104937, 32.605804, 33.799358>,  <29.924353, 32.748512, 33.731361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.104937, 32.605804, 33.799358>,  <30.405910, 32.367958, 33.912689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.104937, 32.605804, 33.799358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.638851, 0.763549, -0.094146,
		0.160350, -0.251839, -0.954392,
		-0.752435, 0.594618, -0.283323,
		29.879206, 32.784191, 33.714363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.524586, 32.625839, 33.231239>,  <30.405910, 32.367958, 33.912689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.524586, 32.625839, 33.231239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.299114, 32.894684, 33.423294>,  <30.163832, 33.055992, 33.538528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.299114, 32.894684, 33.423294>,  <30.524586, 32.625839, 33.231239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.299114, 32.894684, 33.423294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.635318, 0.724261, -0.267987,
		-0.527861, 0.153980, -0.835256,
		-0.563679, 0.672113, 0.480135,
		30.130011, 33.096317, 33.567333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.623672, 32.463963, 32.515430>,  <30.524586, 32.625839, 33.231239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.623672, 32.463963, 32.515430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.656376, 32.717468, 32.207752>,  <30.675999, 32.869572, 32.023144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.656376, 32.717468, 32.207752>,  <30.623672, 32.463963, 32.515430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.656376, 32.717468, 32.207752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.984809, -0.169996, -0.035386,
		-0.153187, -0.754618, -0.638033,
		0.081760, 0.633761, -0.769196,
		30.680904, 32.907597, 31.976994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.304422, 32.236122, 32.266617>,  <30.623672, 32.463963, 32.515430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.304422, 32.236122, 32.266617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.216986, 32.585228, 32.092037>,  <31.164524, 32.794693, 31.987288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.216986, 32.585228, 32.092037>,  <31.304422, 32.236122, 32.266617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.216986, 32.585228, 32.092037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.954684, 0.098698, -0.280779,
		-0.201978, -0.478051, -0.854793,
		-0.218593, 0.872769, -0.436453,
		31.151407, 32.847057, 31.961102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.454323, 32.255215, 31.450165>,  <31.304422, 32.236122, 32.266617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.454323, 32.255215, 31.450165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.463566, 32.619431, 31.615276>,  <31.469110, 32.837959, 31.714344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.463566, 32.619431, 31.615276>,  <31.454323, 32.255215, 31.450165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.463566, 32.619431, 31.615276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.812487, 0.223479, -0.538445,
		-0.582522, 0.347820, -0.734635,
		0.023106, 0.910537, 0.412781,
		31.470497, 32.892593, 31.739111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.639704, 32.757904, 30.932692>,  <31.454323, 32.255215, 31.450165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.639704, 32.757904, 30.932692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.743988, 32.937092, 31.274769>,  <31.806559, 33.044605, 31.480015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.743988, 32.937092, 31.274769>,  <31.639704, 32.757904, 30.932692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.743988, 32.937092, 31.274769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.769856, 0.438046, -0.464152,
		-0.582538, 0.779386, -0.230666,
		0.260712, 0.447966, 0.855193,
		31.822201, 33.071480, 31.531326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.827024, 33.512173, 30.768660>,  <31.639704, 32.757904, 30.932692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.827024, 33.512173, 30.768660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.004097, 33.438072, 31.119593>,  <32.110340, 33.393612, 31.330153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.004097, 33.438072, 31.119593>,  <31.827024, 33.512173, 30.768660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.004097, 33.438072, 31.119593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.867007, 0.338048, -0.366091,
		-0.228761, 0.922716, 0.310265,
		0.442682, -0.185255, 0.877333,
		32.136902, 33.382496, 31.382793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.210754, 34.126076, 30.835962>,  <31.827024, 33.512173, 30.768660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.210754, 34.126076, 30.835962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.352123, 33.882317, 31.119856>,  <32.436943, 33.736061, 31.290192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.352123, 33.882317, 31.119856>,  <32.210754, 34.126076, 30.835962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.352123, 33.882317, 31.119856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.934981, 0.254479, -0.247083,
		-0.030039, 0.750912, 0.659719,
		0.353423, -0.609402, 0.709733,
		32.458149, 33.699497, 31.332775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.606842, 34.425194, 31.398619>,  <32.210754, 34.126076, 30.835962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.606842, 34.425194, 31.398619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.745800, 34.050129, 31.402668>,  <32.829174, 33.825089, 31.405098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.745800, 34.050129, 31.402668>,  <32.606842, 34.425194, 31.398619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.745800, 34.050129, 31.402668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.934175, 0.345126, -0.090587,
		0.081447, 0.040925, 0.995837,
		0.347397, -0.937664, 0.010121,
		32.850018, 33.768829, 31.405704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.254917, 34.440380, 31.846081>,  <32.606842, 34.425194, 31.398619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.254917, 34.440380, 31.846081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.263107, 34.110622, 31.619822>,  <33.268021, 33.912769, 31.484066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.263107, 34.110622, 31.619822>,  <33.254917, 34.440380, 31.846081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.263107, 34.110622, 31.619822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.982337, 0.121843, -0.142016,
		0.185997, -0.552747, 0.812328,
		0.020478, -0.824394, -0.565646,
		33.269249, 33.863304, 31.450129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.775505, 34.051632, 32.053902>,  <33.254917, 34.440380, 31.846081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.775505, 34.051632, 32.053902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.713085, 33.925419, 31.679504>,  <33.675632, 33.849689, 31.454866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.713085, 33.925419, 31.679504>,  <33.775505, 34.051632, 32.053902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.713085, 33.925419, 31.679504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.982062, 0.051978, -0.181251,
		0.105842, -0.947490, 0.301763,
		-0.156049, -0.315534, -0.935995,
		33.666271, 33.830757, 31.398706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.411438, 33.607571, 31.830505>,  <33.775505, 34.051632, 32.053902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.411438, 33.607571, 31.830505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.260010, 33.670555, 31.465673>,  <34.169151, 33.708347, 31.246775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.260010, 33.670555, 31.465673>,  <34.411438, 33.607571, 31.830505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.260010, 33.670555, 31.465673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.924659, 0.020589, -0.380240,
		-0.041094, -0.987310, -0.153392,
		-0.378573, 0.157461, -0.912079,
		34.146439, 33.717793, 31.192049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.787865, 33.173779, 31.287830>,  <34.411438, 33.607571, 31.830505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.787865, 33.173779, 31.287830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.622086, 33.486454, 31.101410>,  <34.522617, 33.674057, 30.989557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.622086, 33.486454, 31.101410>,  <34.787865, 33.173779, 31.287830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.622086, 33.486454, 31.101410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.770678, 0.029085, -0.636560,
		-0.484035, -0.622995, -0.614482,
		-0.414446, 0.781685, -0.466051,
		34.497753, 33.720959, 30.961596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.968235, 33.054581, 30.605000>,  <34.787865, 33.173779, 31.287830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.968235, 33.054581, 30.605000> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.856476, 33.438492, 30.593903>,  <34.789421, 33.668839, 30.587244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.856476, 33.438492, 30.593903>,  <34.968235, 33.054581, 30.605000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.856476, 33.438492, 30.593903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.712821, 0.187974, -0.675687,
		-0.643293, -0.208559, -0.736667,
		-0.279394, 0.959776, -0.027743,
		34.772659, 33.726425, 30.585579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.891388, 33.153870, 29.919466>,  <34.968235, 33.054581, 30.605000>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.891388, 33.153870, 29.919466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.972656, 33.509525, 30.083488>,  <35.021416, 33.722919, 30.181902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.972656, 33.509525, 30.083488>,  <34.891388, 33.153870, 29.919466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.972656, 33.509525, 30.083488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514681, 0.259290, -0.817234,
		-0.832962, 0.377086, -0.404946,
		0.203169, 0.889143, 0.410058,
		35.033607, 33.776268, 30.206505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.868462, 33.554920, 29.349144>,  <34.891388, 33.153870, 29.919466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.868462, 33.554920, 29.349144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.045475, 33.786690, 29.622911>,  <35.151684, 33.925751, 29.787172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.045475, 33.786690, 29.622911>,  <34.868462, 33.554920, 29.349144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.045475, 33.786690, 29.622911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485130, 0.487201, -0.726143,
		-0.754196, 0.653376, -0.065493,
		0.442535, 0.579426, 0.684417,
		35.178234, 33.960518, 29.828238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.762733, 34.249321, 29.059635>,  <34.868462, 33.554920, 29.349144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.762733, 34.249321, 29.059635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.067440, 34.264473, 29.318333>,  <35.250263, 34.273563, 29.473551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.067440, 34.264473, 29.318333>,  <34.762733, 34.249321, 29.059635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.067440, 34.264473, 29.318333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488368, 0.622372, -0.611677,
		-0.425685, 0.781804, 0.455604,
		0.761767, 0.037879, 0.646743,
		35.295971, 34.275837, 29.512356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.893677, 34.920586, 29.267441>,  <34.762733, 34.249321, 29.059635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.893677, 34.920586, 29.267441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.232967, 34.723812, 29.345940>,  <35.436543, 34.605747, 29.393038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.232967, 34.723812, 29.345940>,  <34.893677, 34.920586, 29.267441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.232967, 34.723812, 29.345940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526594, 0.743694, -0.411848,
		0.056656, 0.452682, 0.889871,
		0.848227, -0.491934, 0.196245,
		35.487434, 34.576233, 29.404814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.345764, 35.533821, 29.558859>,  <34.893677, 34.920586, 29.267441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.345764, 35.533821, 29.558859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.536522, 35.212345, 29.416508>,  <35.650974, 35.019459, 29.331097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.536522, 35.212345, 29.416508>,  <35.345764, 35.533821, 29.558859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.536522, 35.212345, 29.416508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555905, 0.589407, -0.586147,
		0.680840, 0.081695, 0.727862,
		0.476892, -0.803694, -0.355877,
		35.679588, 34.971237, 29.309744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.987804, 35.704628, 29.647461>,  <35.345764, 35.533821, 29.558859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.987804, 35.704628, 29.647461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.980064, 35.419086, 29.367453>,  <35.975422, 35.247761, 29.199448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.980064, 35.419086, 29.367453>,  <35.987804, 35.704628, 29.647461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.980064, 35.419086, 29.367453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549772, 0.577205, -0.603808,
		0.835090, -0.396535, 0.381292,
		-0.019348, -0.713858, -0.700023,
		35.974258, 35.204929, 29.157446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.727646, 35.452831, 29.412983>,  <35.987804, 35.704628, 29.647461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.727646, 35.452831, 29.412983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.464100, 35.356487, 29.127920>,  <36.305973, 35.298683, 28.956882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.464100, 35.356487, 29.127920>,  <36.727646, 35.452831, 29.412983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.464100, 35.356487, 29.127920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.584235, 0.432943, -0.686461,
		0.473879, -0.868648, -0.144536,
		-0.658869, -0.240856, -0.712657,
		36.266441, 35.284229, 28.914124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.141682, 35.201378, 28.885685>,  <36.727646, 35.452831, 29.412983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.141682, 35.201378, 28.885685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.810776, 35.326729, 28.699165>,  <36.612232, 35.401939, 28.587254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.810776, 35.326729, 28.699165>,  <37.141682, 35.201378, 28.885685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.810776, 35.326729, 28.699165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555617, 0.333378, -0.761675,
		-0.083235, -0.889189, -0.449906,
		-0.827262, 0.313374, -0.466299,
		36.562595, 35.420742, 28.559275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.360859, 34.981575, 28.257040>,  <37.141682, 35.201378, 28.885685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.360859, 34.981575, 28.257040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.058609, 35.240173, 28.214966>,  <36.877258, 35.395332, 28.189722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.058609, 35.240173, 28.214966>,  <37.360859, 34.981575, 28.257040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.058609, 35.240173, 28.214966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373400, 0.293238, -0.880105,
		-0.538143, -0.704308, -0.462981,
		-0.755629, 0.646500, -0.105185,
		36.831921, 35.434124, 28.183411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.110306, 34.896446, 27.597342>,  <37.360859, 34.981575, 28.257040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.110306, 34.896446, 27.597342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.934978, 35.250126, 27.661913>,  <36.829781, 35.462334, 27.700655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.934978, 35.250126, 27.661913>,  <37.110306, 34.896446, 27.597342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.934978, 35.250126, 27.661913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231404, 0.284559, -0.930311,
		-0.868520, -0.370419, -0.329337,
		-0.438320, 0.884203, 0.161429,
		36.803482, 35.515388, 27.710342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.677780, 35.062485, 26.978296>,  <37.110306, 34.896446, 27.597342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.677780, 35.062485, 26.978296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.767876, 35.406807, 27.160849>,  <36.821934, 35.613400, 27.270380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.767876, 35.406807, 27.160849>,  <36.677780, 35.062485, 26.978296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.767876, 35.406807, 27.160849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100281, 0.445449, -0.889673,
		-0.969130, 0.246153, 0.014009,
		0.225236, 0.860804, 0.456383,
		36.835445, 35.665047, 27.297764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.325619, 35.547081, 26.598623>,  <36.677780, 35.062485, 26.978296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.325619, 35.547081, 26.598623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.612099, 35.755913, 26.783876>,  <36.783985, 35.881214, 26.895029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.612099, 35.755913, 26.783876>,  <36.325619, 35.547081, 26.598623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.612099, 35.755913, 26.783876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070016, 0.606514, -0.791984,
		-0.694379, 0.599642, 0.397828,
		0.716195, 0.522083, 0.463135,
		36.826958, 35.912537, 26.922817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.169056, 36.231049, 26.384367>,  <36.325619, 35.547081, 26.598623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.169056, 36.231049, 26.384367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.537113, 36.243008, 26.540541>,  <36.757950, 36.250183, 26.634245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.537113, 36.243008, 26.540541>,  <36.169056, 36.231049, 26.384367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.537113, 36.243008, 26.540541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248446, 0.726105, -0.641129,
		-0.302667, 0.686933, 0.660693,
		0.920146, 0.029902, 0.390433,
		36.813156, 36.251980, 26.657671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.278236, 36.890560, 26.530411>,  <36.169056, 36.231049, 26.384367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.278236, 36.890560, 26.530411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.628170, 36.702976, 26.481834>,  <36.838131, 36.590427, 26.452688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.628170, 36.702976, 26.481834>,  <36.278236, 36.890560, 26.530411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.628170, 36.702976, 26.481834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261499, 0.668190, -0.696520,
		0.407783, 0.577581, 0.707187,
		0.874832, -0.468958, -0.121439,
		36.890621, 36.562290, 26.445402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.705029, 37.433815, 26.511480>,  <36.278236, 36.890560, 26.530411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.705029, 37.433815, 26.511480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.897026, 37.118046, 26.358423>,  <37.012226, 36.928585, 26.266588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.897026, 37.118046, 26.358423>,  <36.705029, 37.433815, 26.511480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.897026, 37.118046, 26.358423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426744, 0.591201, -0.684376,
		0.766481, 0.165206, 0.620655,
		0.479995, -0.789423, -0.382644,
		37.041023, 36.881218, 26.243629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.447674, 37.646145, 26.485746>,  <36.705029, 37.433815, 26.511480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.447674, 37.646145, 26.485746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.368633, 37.349373, 26.229467>,  <37.321209, 37.171310, 26.075701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.368633, 37.349373, 26.229467>,  <37.447674, 37.646145, 26.485746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.368633, 37.349373, 26.229467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394145, 0.538296, -0.744907,
		0.897555, -0.399719, 0.186062,
		-0.197597, -0.741931, -0.640698,
		37.309353, 37.126793, 26.037258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.116180, 37.521393, 26.123579>,  <37.447674, 37.646145, 26.485746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.116180, 37.521393, 26.123579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.826641, 37.370987, 25.892185>,  <37.652916, 37.280743, 25.753349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.826641, 37.370987, 25.892185>,  <38.116180, 37.521393, 26.123579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.826641, 37.370987, 25.892185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449181, 0.379595, -0.808792,
		0.523711, -0.845292, -0.105871,
		-0.723853, -0.376018, -0.578487,
		37.609486, 37.258183, 25.718639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.405613, 37.306801, 25.544111>,  <38.116180, 37.521393, 26.123579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.405613, 37.306801, 25.544111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.023357, 37.363441, 25.440804>,  <37.794003, 37.397427, 25.378819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.023357, 37.363441, 25.440804>,  <38.405613, 37.306801, 25.544111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.023357, 37.363441, 25.440804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294374, 0.429772, -0.853604,
		-0.009875, -0.891765, -0.452391,
		-0.955639, 0.141602, -0.258268,
		37.736664, 37.405922, 25.363323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.351181, 37.040085, 24.879459>,  <38.405613, 37.306801, 25.544111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.351181, 37.040085, 24.879459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.047375, 37.295868, 24.927170>,  <37.865089, 37.449337, 24.955797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.047375, 37.295868, 24.927170>,  <38.351181, 37.040085, 24.879459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.047375, 37.295868, 24.927170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139982, 0.339745, -0.930042,
		-0.635245, -0.689688, -0.347555,
		-0.759519, 0.639456, 0.119277,
		37.819519, 37.487705, 24.962954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.964157, 36.997993, 24.331512>,  <38.351181, 37.040085, 24.879459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.964157, 36.997993, 24.331512> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.883686, 37.368446, 24.459145>,  <37.835403, 37.590717, 24.535723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.883686, 37.368446, 24.459145>,  <37.964157, 36.997993, 24.331512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.883686, 37.368446, 24.459145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184722, 0.355764, -0.916138,
		-0.961979, -0.125370, -0.242649,
		-0.201182, 0.926129, 0.319079,
		37.823330, 37.646286, 24.554869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.544609, 37.188042, 23.826960>,  <37.964157, 36.997993, 24.331512>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.544609, 37.188042, 23.826960> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.672279, 37.528019, 23.994637>,  <37.748882, 37.732006, 24.095243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.672279, 37.528019, 23.994637>,  <37.544609, 37.188042, 23.826960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.672279, 37.528019, 23.994637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135581, 0.396825, -0.907826,
		-0.937946, 0.346594, 0.011422,
		0.319180, 0.849943, 0.419192,
		37.768032, 37.783001, 24.120394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.288570, 37.655548, 23.494244>,  <37.544609, 37.188042, 23.826960>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.288570, 37.655548, 23.494244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.535915, 37.890015, 23.703642>,  <37.684322, 38.030693, 23.829281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.535915, 37.890015, 23.703642>,  <37.288570, 37.655548, 23.494244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.535915, 37.890015, 23.703642> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000514, 0.665809, -0.746122,
		-0.785896, 0.461640, 0.411407,
		0.618358, 0.586163, 0.523494,
		37.721424, 38.065865, 23.860691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.107803, 38.331081, 23.301109>,  <37.288570, 37.655548, 23.494244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.107803, 38.331081, 23.301109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.482727, 38.321922, 23.440207>,  <37.707680, 38.316425, 23.523664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.482727, 38.321922, 23.440207>,  <37.107803, 38.331081, 23.301109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.482727, 38.321922, 23.440207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310479, 0.508064, -0.803414,
		-0.158276, 0.861015, 0.483324,
		0.937311, -0.022901, 0.347741,
		37.763920, 38.315052, 23.544529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.206718, 39.026398, 23.081493>,  <37.107803, 38.331081, 23.301109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.206718, 39.026398, 23.081493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.565720, 38.871590, 23.166069>,  <37.781120, 38.778706, 23.216814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.565720, 38.871590, 23.166069>,  <37.206718, 39.026398, 23.081493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.565720, 38.871590, 23.166069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430006, 0.661556, -0.614360,
		0.097889, 0.642310, 0.760168,
		0.897503, -0.387016, 0.211439,
		37.834972, 38.755486, 23.229500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.673561, 39.640591, 23.211649>,  <37.206718, 39.026398, 23.081493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.673561, 39.640591, 23.211649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.902466, 39.328091, 23.111910>,  <38.039806, 39.140591, 23.052067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.902466, 39.328091, 23.111910>,  <37.673561, 39.640591, 23.211649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.902466, 39.328091, 23.111910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491431, 0.570104, -0.658390,
		0.656519, 0.254232, 0.710175,
		0.572257, -0.781247, -0.249346,
		38.074142, 39.093716, 23.037106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.421150, 39.793308, 23.263855>,  <37.673561, 39.640591, 23.211649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.421150, 39.793308, 23.263855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.414375, 39.497166, 22.995056>,  <38.410309, 39.319481, 22.833776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.414375, 39.497166, 22.995056>,  <38.421150, 39.793308, 23.263855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.414375, 39.497166, 22.995056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.565672, 0.547098, -0.617008,
		0.824456, -0.390581, 0.409534,
		-0.016937, -0.740358, -0.671999,
		38.409294, 39.275059, 22.793457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.109901, 39.715752, 23.014303>,  <38.421150, 39.793308, 23.263855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.109901, 39.715752, 23.014303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.891220, 39.514164, 22.746832>,  <38.760010, 39.393211, 22.586349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.891220, 39.514164, 22.746832>,  <39.109901, 39.715752, 23.014303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.891220, 39.514164, 22.746832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405398, 0.539435, -0.738013,
		0.732645, -0.674553, -0.090601,
		-0.546702, -0.503972, -0.668677,
		38.727211, 39.362972, 22.546228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.529934, 39.755241, 22.474352>,  <39.109901, 39.715752, 23.014303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.529934, 39.755241, 22.474352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.193050, 39.635098, 22.295258>,  <38.990921, 39.563011, 22.187801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.193050, 39.635098, 22.295258>,  <39.529934, 39.755241, 22.474352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.193050, 39.635098, 22.295258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276222, 0.472796, -0.836758,
		0.463025, -0.828397, -0.315223,
		-0.842205, -0.300368, -0.447738,
		38.940388, 39.544991, 22.160936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.798737, 39.464443, 21.872557>,  <39.529934, 39.755241, 22.474352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.798737, 39.464443, 21.872557> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.412872, 39.559872, 21.827818>,  <39.181355, 39.617130, 21.800974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.412872, 39.559872, 21.827818>,  <39.798737, 39.464443, 21.872557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.412872, 39.559872, 21.827818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221308, 0.503237, -0.835330,
		-0.142998, -0.830564, -0.538252,
		-0.964663, 0.238570, -0.111848,
		39.123474, 39.631443, 21.794264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.710518, 39.275589, 21.191387>,  <39.798737, 39.464443, 21.872557>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.710518, 39.275589, 21.191387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.408215, 39.523693, 21.275387>,  <39.226833, 39.672554, 21.325787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.408215, 39.523693, 21.275387>,  <39.710518, 39.275589, 21.191387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.408215, 39.523693, 21.275387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083808, 0.409664, -0.908379,
		-0.649461, -0.668919, -0.361591,
		-0.755762, 0.620261, 0.210000,
		39.181484, 39.709770, 21.338387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.098419, 39.189529, 20.668825>,  <39.710518, 39.275589, 21.191387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.098419, 39.189529, 20.668825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.122925, 39.549511, 20.841490>,  <39.137630, 39.765499, 20.945089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.122925, 39.549511, 20.841490>,  <39.098419, 39.189529, 20.668825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.122925, 39.549511, 20.841490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246109, 0.405502, -0.880340,
		-0.967304, 0.160171, -0.196643,
		0.061266, 0.899952, 0.431663,
		39.141304, 39.819496, 20.970989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.782230, 39.715790, 20.164587>,  <39.098419, 39.189529, 20.668825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.782230, 39.715790, 20.164587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.008984, 39.933060, 20.412333>,  <39.145035, 40.063419, 20.560980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.008984, 39.933060, 20.412333>,  <38.782230, 39.715790, 20.164587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.008984, 39.933060, 20.412333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292528, 0.570118, -0.767719,
		-0.770114, 0.616386, 0.164295,
		0.566879, 0.543171, 0.619366,
		39.179047, 40.096012, 20.598143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.522072, 40.442062, 20.063211>,  <38.782230, 39.715790, 20.164587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.522072, 40.442062, 20.063211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.898750, 40.417095, 20.195459>,  <39.124756, 40.402115, 20.274809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.898750, 40.417095, 20.195459>,  <38.522072, 40.442062, 20.063211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.898750, 40.417095, 20.195459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320002, 0.469734, -0.822769,
		-0.103948, 0.880598, 0.462321,
		0.941697, -0.062418, 0.330621,
		39.181259, 40.398369, 20.294645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.710884, 41.121635, 20.086445>,  <38.522072, 40.442062, 20.063211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.710884, 41.121635, 20.086445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.006252, 40.856907, 20.034718>,  <39.183472, 40.698071, 20.003681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.006252, 40.856907, 20.034718>,  <38.710884, 41.121635, 20.086445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.006252, 40.856907, 20.034718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281935, 0.477205, -0.832339,
		0.612573, 0.578157, 0.538970,
		0.738422, -0.661823, -0.129320,
		39.227779, 40.658360, 19.995922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.309135, 41.487015, 19.997841>,  <38.710884, 41.121635, 20.086445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.309135, 41.487015, 19.997841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.341217, 41.144081, 19.794449>,  <39.360466, 40.938320, 19.672415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.341217, 41.144081, 19.794449>,  <39.309135, 41.487015, 19.997841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.341217, 41.144081, 19.794449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397295, 0.495345, -0.772522,
		0.914180, -0.140056, 0.380342,
		0.080204, -0.857332, -0.508478,
		39.365280, 40.886883, 19.641905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.946075, 41.436016, 19.711441>,  <39.309135, 41.487015, 19.997841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.946075, 41.436016, 19.711441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.686417, 41.262550, 19.461468>,  <39.530621, 41.158470, 19.311483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.686417, 41.262550, 19.461468>,  <39.946075, 41.436016, 19.711441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.686417, 41.262550, 19.461468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490987, 0.388611, -0.779688,
		0.580981, -0.812966, -0.039341,
		-0.649148, -0.433668, -0.624931,
		39.491673, 41.132450, 19.273989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.307564, 42.151875, 19.687077>,  <39.946075, 41.436016, 19.711441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.307564, 42.151875, 19.687077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.608776, 42.361870, 19.528416>,  <40.789505, 42.487865, 19.433220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.608776, 42.361870, 19.528416>,  <40.307564, 42.151875, 19.687077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.608776, 42.361870, 19.528416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.657297, -0.627754, 0.416996,
		-0.030081, -0.574728, -0.817791,
		0.753031, 0.524988, -0.396650,
		40.834686, 42.519367, 19.409420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.668514, 42.757744, 19.928844>,  <40.307564, 42.151875, 19.687077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.668514, 42.757744, 19.928844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.281116, 42.669407, 19.974884>,  <40.048679, 42.616405, 20.002508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.281116, 42.669407, 19.974884>,  <40.668514, 42.757744, 19.928844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.281116, 42.669407, 19.974884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120628, -0.820352, -0.558992,
		0.217871, -0.527496, 0.821146,
		-0.968494, -0.220841, 0.115100,
		39.990570, 42.603153, 20.009415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.086243, 42.981689, 20.357258>,  <40.668514, 42.757744, 19.928844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.086243, 42.981689, 20.357258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.987724, 43.261898, 20.625170>,  <39.928612, 43.430023, 20.785917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.987724, 43.261898, 20.625170>,  <40.086243, 42.981689, 20.357258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.987724, 43.261898, 20.625170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.724888, -0.591863, 0.352469,
		0.643331, -0.398704, 0.653575,
		-0.246296, 0.700523, 0.669780,
		39.913834, 43.472054, 20.826103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.003132, 42.746941, 21.043520>,  <40.086243, 42.981689, 20.357258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.003132, 42.746941, 21.043520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.769188, 43.070580, 21.066517>,  <39.628822, 43.264763, 21.080315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.769188, 43.070580, 21.066517>,  <40.003132, 42.746941, 21.043520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.769188, 43.070580, 21.066517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.624445, -0.494351, 0.604719,
		0.517698, 0.317773, 0.794361,
		-0.584856, 0.809097, 0.057493,
		39.593731, 43.313309, 21.083765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.022942, 43.146870, 21.802710>,  <40.003132, 42.746941, 21.043520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.022942, 43.146870, 21.802710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.700130, 43.118683, 21.568193>,  <39.506443, 43.101768, 21.427485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.700130, 43.118683, 21.568193>,  <40.022942, 43.146870, 21.802710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.700130, 43.118683, 21.568193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454147, -0.560521, 0.692507,
		-0.377430, 0.825136, 0.420353,
		-0.807030, -0.070471, -0.586291,
		39.458023, 43.097542, 21.392305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.526840, 43.425400, 22.189222>,  <40.022942, 43.146870, 21.802710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.526840, 43.425400, 22.189222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.441162, 43.142471, 21.919760>,  <39.389755, 42.972713, 21.758081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.441162, 43.142471, 21.919760>,  <39.526840, 43.425400, 22.189222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.441162, 43.142471, 21.919760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353998, -0.586569, 0.728438,
		-0.910387, 0.394503, -0.124748,
		-0.214198, -0.707322, -0.673658,
		39.376904, 42.930275, 21.717663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.884724, 43.266598, 22.388502>,  <39.526840, 43.425400, 22.189222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.884724, 43.266598, 22.388502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.043533, 42.963879, 22.180798>,  <39.138821, 42.782246, 22.056175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.043533, 42.963879, 22.180798>,  <38.884724, 43.266598, 22.388502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.043533, 42.963879, 22.180798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467482, -0.653619, 0.595183,
		-0.789829, 0.006441, -0.613293,
		0.397026, -0.756797, -0.519259,
		39.162640, 42.736839, 22.025021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.374340, 42.735527, 22.105486>,  <38.884724, 43.266598, 22.388502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.374340, 42.735527, 22.105486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.729916, 42.567070, 22.177509>,  <38.943260, 42.465996, 22.220724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.729916, 42.567070, 22.177509>,  <38.374340, 42.735527, 22.105486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.729916, 42.567070, 22.177509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444038, -0.696031, 0.564244,
		-0.112300, -0.581534, -0.805734,
		0.888943, -0.421140, 0.180059,
		38.996597, 42.440727, 22.231527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.108322, 42.141006, 22.285324>,  <38.374340, 42.735527, 22.105486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.108322, 42.141006, 22.285324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.497185, 42.127419, 22.378069>,  <38.730503, 42.119267, 22.433716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.497185, 42.127419, 22.378069>,  <38.108322, 42.141006, 22.285324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.497185, 42.127419, 22.378069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187719, -0.705159, 0.683749,
		0.140269, -0.708235, -0.691902,
		0.972155, -0.033974, 0.231861,
		38.788830, 42.117226, 22.447628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.340790, 41.362740, 22.253229>,  <38.108322, 42.141006, 22.285324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.340790, 41.362740, 22.253229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.621590, 41.551670, 22.466436>,  <38.790070, 41.665028, 22.594360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.621590, 41.551670, 22.466436>,  <38.340790, 41.362740, 22.253229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.621590, 41.551670, 22.466436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066872, -0.701411, 0.709613,
		0.709032, -0.533791, -0.460805,
		0.701999, 0.472323, 0.533019,
		38.832188, 41.693367, 22.626343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.645287, 40.799789, 22.478279>,  <38.340790, 41.362740, 22.253229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.645287, 40.799789, 22.478279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.779999, 41.113377, 22.686884>,  <38.860828, 41.301529, 22.812046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.779999, 41.113377, 22.686884>,  <38.645287, 40.799789, 22.478279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.779999, 41.113377, 22.686884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291851, -0.439674, 0.849417,
		0.895209, -0.438274, 0.080726,
		0.336785, 0.783966, 0.521511,
		38.881035, 41.348568, 22.843338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.181374, 40.597046, 23.038157>,  <38.645287, 40.799789, 22.478279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.181374, 40.597046, 23.038157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.988613, 40.923550, 23.165586>,  <38.872955, 41.119453, 23.242044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.988613, 40.923550, 23.165586>,  <39.181374, 40.597046, 23.038157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.988613, 40.923550, 23.165586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317291, -0.501463, 0.804899,
		0.816760, 0.286801, 0.500648,
		-0.481902, 0.816260, 0.318575,
		38.844044, 41.168427, 23.261160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.290123, 40.689831, 23.770384>,  <39.181374, 40.597046, 23.038157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.290123, 40.689831, 23.770384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.971169, 40.926079, 23.720823>,  <38.779797, 41.067829, 23.691086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.971169, 40.926079, 23.720823>,  <39.290123, 40.689831, 23.770384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.971169, 40.926079, 23.720823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365768, -0.309694, 0.877669,
		0.479996, 0.745157, 0.462974,
		-0.797381, 0.590619, -0.123903,
		38.731953, 41.103264, 23.683653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.110584, 41.017071, 24.435179>,  <39.290123, 40.689831, 23.770384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.110584, 41.017071, 24.435179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.768776, 41.042233, 24.228945>,  <38.563690, 41.057331, 24.105204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.768776, 41.042233, 24.228945>,  <39.110584, 41.017071, 24.435179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.768776, 41.042233, 24.228945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.515206, -0.228696, 0.825991,
		-0.065954, 0.971464, 0.227835,
		-0.854525, 0.062904, -0.515587,
		38.512417, 41.061104, 24.074268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.781921, 41.490005, 24.765602>,  <39.110584, 41.017071, 24.435179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.781921, 41.490005, 24.765602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.511124, 41.274086, 24.565483>,  <38.348644, 41.144535, 24.445412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.511124, 41.274086, 24.565483>,  <38.781921, 41.490005, 24.765602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.511124, 41.274086, 24.565483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472459, -0.202471, 0.857781,
		-0.564322, 0.817084, -0.117958,
		-0.676996, -0.539795, -0.500298,
		38.308025, 41.112148, 24.415394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.120495, 41.805157, 24.987265>,  <38.781921, 41.490005, 24.765602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.120495, 41.805157, 24.987265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.044052, 41.436131, 24.853188>,  <37.998188, 41.214714, 24.772741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.044052, 41.436131, 24.853188>,  <38.120495, 41.805157, 24.987265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.044052, 41.436131, 24.853188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.653064, -0.135435, 0.745094,
		-0.732795, 0.361291, -0.576612,
		-0.191102, -0.922565, -0.335192,
		37.986721, 41.159363, 24.752630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.405716, 41.675491, 25.174603>,  <38.120495, 41.805157, 24.987265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.405716, 41.675491, 25.174603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.548553, 41.311874, 25.088692>,  <37.634254, 41.093704, 25.037146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.548553, 41.311874, 25.088692>,  <37.405716, 41.675491, 25.174603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.548553, 41.311874, 25.088692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479909, -0.375821, 0.792746,
		-0.801357, -0.180009, -0.570460,
		0.357092, -0.909041, -0.214779,
		37.655682, 41.039162, 25.024258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.897984, 41.186363, 25.365978>,  <37.405716, 41.675491, 25.174603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.897984, 41.186363, 25.365978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.200581, 40.927017, 25.331709>,  <37.382137, 40.771408, 25.311148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.200581, 40.927017, 25.331709>,  <36.897984, 41.186363, 25.365978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.200581, 40.927017, 25.331709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459944, -0.620565, 0.635099,
		-0.464945, -0.441041, -0.767665,
		0.756490, -0.648369, -0.085674,
		37.427528, 40.732506, 25.306007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.644066, 40.443203, 25.177071>,  <36.897984, 41.186363, 25.365978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.644066, 40.443203, 25.177071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.993511, 40.442467, 25.371721>,  <37.203178, 40.442024, 25.488512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.993511, 40.442467, 25.371721>,  <36.644066, 40.443203, 25.177071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.993511, 40.442467, 25.371721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387932, -0.606364, 0.694141,
		0.293795, -0.795185, -0.530438,
		0.873609, -0.001839, 0.486624,
		37.255592, 40.441914, 25.517708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.754387, 39.750233, 25.330135>,  <36.644066, 40.443203, 25.177071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.754387, 39.750233, 25.330135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.995117, 39.936172, 25.589893>,  <37.139557, 40.047737, 25.745749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.995117, 39.936172, 25.589893>,  <36.754387, 39.750233, 25.330135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.995117, 39.936172, 25.589893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281141, -0.637772, 0.717082,
		0.747503, -0.614133, -0.253141,
		0.601830, 0.464852, 0.649394,
		37.175667, 40.075626, 25.784712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.095654, 39.289909, 25.634609>,  <36.754387, 39.750233, 25.330135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.095654, 39.289909, 25.634609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.119820, 39.598335, 25.888161>,  <37.134319, 39.783390, 26.040293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.119820, 39.598335, 25.888161>,  <37.095654, 39.289909, 25.634609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.119820, 39.598335, 25.888161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166383, -0.618377, 0.768067,
		0.984208, -0.151872, 0.090932,
		0.060418, 0.771067, 0.633881,
		37.137943, 39.829655, 26.078325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.459881, 39.028782, 26.235283>,  <37.095654, 39.289909, 25.634609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.459881, 39.028782, 26.235283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.265949, 39.361568, 26.343195>,  <37.149590, 39.561241, 26.407942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.265949, 39.361568, 26.343195>,  <37.459881, 39.028782, 26.235283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.265949, 39.361568, 26.343195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296972, -0.446726, 0.843945,
		0.822650, 0.329048, 0.463654,
		-0.484824, 0.831964, 0.269781,
		37.120502, 39.611156, 26.424129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.597946, 39.120396, 26.920353>,  <37.459881, 39.028782, 26.235283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.597946, 39.120396, 26.920353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.274403, 39.348644, 26.863586>,  <37.080276, 39.485592, 26.829527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.274403, 39.348644, 26.863586>,  <37.597946, 39.120396, 26.920353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.274403, 39.348644, 26.863586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455731, -0.455868, 0.764522,
		0.371555, 0.683067, 0.628782,
		-0.808861, 0.570617, -0.141915,
		37.031746, 39.519829, 26.821012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.419018, 39.350891, 27.617422>,  <37.597946, 39.120396, 26.920353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.419018, 39.350891, 27.617422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.104057, 39.412666, 27.378712>,  <36.915081, 39.449730, 27.235485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.104057, 39.412666, 27.378712>,  <37.419018, 39.350891, 27.617422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.104057, 39.412666, 27.378712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.610125, -0.333450, 0.718721,
		-0.087996, 0.930032, 0.356787,
		-0.787404, 0.154439, -0.596778,
		36.867836, 39.459000, 27.199678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.969616, 39.572315, 28.109123>,  <37.419018, 39.350891, 27.617422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.969616, 39.572315, 28.109123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.723621, 39.506207, 27.800714>,  <36.576023, 39.466541, 27.615669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.723621, 39.506207, 27.800714>,  <36.969616, 39.572315, 28.109123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.723621, 39.506207, 27.800714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.737745, -0.224656, 0.636602,
		-0.278427, 0.960320, 0.016233,
		-0.614988, -0.165272, -0.771022,
		36.539124, 39.456627, 27.569408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.389297, 39.820950, 28.229738>,  <36.969616, 39.572315, 28.109123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.389297, 39.820950, 28.229738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.273407, 39.551655, 27.957617>,  <36.203873, 39.390079, 27.794344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.273407, 39.551655, 27.957617>,  <36.389297, 39.820950, 28.229738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.273407, 39.551655, 27.957617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.678876, -0.356489, 0.641906,
		-0.674673, 0.647821, -0.353757,
		-0.289729, -0.673234, -0.680304,
		36.186489, 39.349686, 27.753525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.622219, 39.928314, 28.087440>,  <36.389297, 39.820950, 28.229738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.622219, 39.928314, 28.087440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.724434, 39.558659, 27.973827>,  <35.785763, 39.336864, 27.905661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.724434, 39.558659, 27.973827>,  <35.622219, 39.928314, 28.087440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.724434, 39.558659, 27.973827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.743169, -0.375671, 0.553689,
		-0.618386, 0.069596, -0.782787,
		0.255535, -0.924136, -0.284032,
		35.801094, 39.281418, 27.888618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.951641, 39.627750, 27.959103>,  <35.622219, 39.928314, 28.087440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.951641, 39.627750, 27.959103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.198795, 39.319126, 28.019651>,  <35.347088, 39.133953, 28.055981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.198795, 39.319126, 28.019651>,  <34.951641, 39.627750, 27.959103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.198795, 39.319126, 28.019651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.710231, -0.465096, 0.528449,
		-0.337329, -0.434029, -0.835361,
		0.617885, -0.771560, 0.151370,
		35.384163, 39.087658, 28.065063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.468098, 38.990177, 28.072725>,  <34.951641, 39.627750, 27.959103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.468098, 38.990177, 28.072725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.834106, 38.892048, 28.200823>,  <35.053711, 38.833172, 28.277681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.834106, 38.892048, 28.200823>,  <34.468098, 38.990177, 28.072725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.834106, 38.892048, 28.200823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403285, -0.576043, 0.711011,
		0.010048, -0.779738, -0.626025,
		0.915019, -0.245322, 0.320245,
		35.108612, 38.818451, 28.296896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.399662, 38.368729, 28.382479>,  <34.468098, 38.990177, 28.072725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.399662, 38.368729, 28.382479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.751278, 38.495007, 28.525379>,  <34.962246, 38.570774, 28.611118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.751278, 38.495007, 28.525379>,  <34.399662, 38.368729, 28.382479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.751278, 38.495007, 28.525379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185522, -0.463770, 0.866314,
		0.439171, -0.827802, -0.349104,
		0.879039, 0.315693, 0.357249,
		35.014988, 38.589714, 28.632553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.752766, 37.777420, 28.615753>,  <34.399662, 38.368729, 28.382479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.752766, 37.777420, 28.615753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.949100, 38.065311, 28.812145>,  <35.066902, 38.238049, 28.929981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.949100, 38.065311, 28.812145>,  <34.752766, 37.777420, 28.615753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.949100, 38.065311, 28.812145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142565, -0.489590, 0.860219,
		0.859506, -0.492227, -0.137702,
		0.490841, 0.719732, 0.490980,
		35.096352, 38.281231, 28.959438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.306362, 37.508682, 29.014524>,  <34.752766, 37.777420, 28.615753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.306362, 37.508682, 29.014524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.145290, 37.838264, 29.173994>,  <35.048645, 38.036015, 29.269676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.145290, 37.838264, 29.173994>,  <35.306362, 37.508682, 29.014524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.145290, 37.838264, 29.173994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261349, -0.520913, 0.812617,
		0.877235, 0.223035, 0.425104,
		-0.402684, 0.823957, 0.398673,
		35.024487, 38.085453, 29.293596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.146782, 37.320103, 29.660341>,  <35.306362, 37.508682, 29.014524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.146782, 37.320103, 29.660341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.996254, 37.690319, 29.677088>,  <34.905937, 37.912449, 29.687136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.996254, 37.690319, 29.677088>,  <35.146782, 37.320103, 29.660341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.996254, 37.690319, 29.677088> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416883, -0.209509, 0.884485,
		0.827401, 0.315396, 0.464686,
		-0.376320, 0.925544, 0.041865,
		34.883358, 37.967983, 29.689648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.219612, 37.594555, 30.346798>,  <35.146782, 37.320103, 29.660341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.219612, 37.594555, 30.346798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.927071, 37.830986, 30.210709>,  <34.751545, 37.972843, 30.129055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.927071, 37.830986, 30.210709>,  <35.219612, 37.594555, 30.346798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.927071, 37.830986, 30.210709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401463, 0.030148, 0.915379,
		0.551316, 0.806052, 0.215247,
		-0.731354, 0.591077, -0.340221,
		34.707664, 38.008308, 30.108643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.122799, 38.090271, 30.872488>,  <35.219612, 37.594555, 30.346798>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.122799, 38.090271, 30.872488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.782310, 38.105328, 30.663107>,  <34.578018, 38.114361, 30.537479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.782310, 38.105328, 30.663107>,  <35.122799, 38.090271, 30.872488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.782310, 38.105328, 30.663107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518101, 0.098616, 0.849615,
		0.083600, 0.994413, -0.064443,
		-0.851224, 0.037640, -0.523451,
		34.526943, 38.116619, 30.506071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.661922, 38.701927, 31.099989>,  <35.122799, 38.090271, 30.872488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.661922, 38.701927, 31.099989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.419693, 38.418098, 30.955881>,  <34.274357, 38.247803, 30.869417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.419693, 38.418098, 30.955881>,  <34.661922, 38.701927, 31.099989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.419693, 38.418098, 30.955881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499762, -0.013209, 0.866062,
		-0.619292, 0.704510, -0.346618,
		-0.605570, -0.709572, -0.360267,
		34.238022, 38.205227, 30.847801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.046158, 38.807686, 31.437943>,  <34.661922, 38.701927, 31.099989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.046158, 38.807686, 31.437943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.950260, 38.440590, 31.311283>,  <33.892723, 38.220333, 31.235287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.950260, 38.440590, 31.311283>,  <34.046158, 38.807686, 31.437943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.950260, 38.440590, 31.311283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.710940, -0.056148, 0.701007,
		-0.661125, 0.393183, -0.639000,
		-0.239745, -0.917744, -0.316650,
		33.878338, 38.165268, 31.216288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.268379, 38.622784, 31.622087>,  <34.046158, 38.807686, 31.437943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.268379, 38.622784, 31.622087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.434002, 38.268097, 31.539835>,  <33.533379, 38.055283, 31.490484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.434002, 38.268097, 31.539835>,  <33.268379, 38.622784, 31.622087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.434002, 38.268097, 31.539835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.507532, -0.412432, 0.756513,
		-0.755622, -0.208879, -0.620810,
		0.414061, -0.886718, -0.205630,
		33.558220, 38.002083, 31.478146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.719044, 38.139313, 31.748199>,  <33.268379, 38.622784, 31.622087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.719044, 38.139313, 31.748199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.050385, 37.916271, 31.769815>,  <33.249187, 37.782448, 31.782785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.050385, 37.916271, 31.769815>,  <32.719044, 38.139313, 31.748199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.050385, 37.916271, 31.769815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334673, -0.415194, 0.845936,
		-0.449263, -0.718812, -0.530540,
		0.828346, -0.557605, 0.054036,
		33.298889, 37.748993, 31.786028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.550079, 37.347866, 31.812311>,  <32.719044, 38.139313, 31.748199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.550079, 37.347866, 31.812311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.915394, 37.379902, 31.972054>,  <33.134583, 37.399124, 32.067898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.915394, 37.379902, 31.972054>,  <32.550079, 37.347866, 31.812311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.915394, 37.379902, 31.972054> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320627, -0.463309, 0.826161,
		0.251195, -0.882570, -0.397456,
		0.913291, 0.080092, 0.399357,
		33.189381, 37.403931, 32.091862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.520828, 36.747696, 32.160744>,  <32.550079, 37.347866, 31.812311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.520828, 36.747696, 32.160744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.830437, 36.942345, 32.322781>,  <33.016201, 37.059135, 32.420002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.830437, 36.942345, 32.322781>,  <32.520828, 36.747696, 32.160744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.830437, 36.942345, 32.322781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031994, -0.608908, 0.792596,
		0.632357, -0.626442, -0.455736,
		0.774016, 0.486622, 0.405089,
		33.062641, 37.088333, 32.444309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.058147, 36.220627, 32.237549>,  <32.520828, 36.747696, 32.160744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.058147, 36.220627, 32.237549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.090576, 36.525024, 32.495018>,  <33.110031, 36.707664, 32.649498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.090576, 36.525024, 32.495018>,  <33.058147, 36.220627, 32.237549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.090576, 36.525024, 32.495018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064368, -0.648447, 0.758533,
		0.994628, -0.020062, -0.101553,
		0.081069, 0.760995, 0.643672,
		33.114899, 36.753323, 32.688118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.467609, 35.971100, 32.757301>,  <33.058147, 36.220627, 32.237549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.467609, 35.971100, 32.757301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.262951, 36.267136, 32.931881>,  <33.140156, 36.444756, 33.036629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.262951, 36.267136, 32.931881>,  <33.467609, 35.971100, 32.757301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.262951, 36.267136, 32.931881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227472, -0.606531, 0.761824,
		0.828535, 0.290507, 0.478681,
		-0.511650, 0.740085, 0.436450,
		33.109455, 36.489162, 33.062817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.602444, 35.899048, 33.441162>,  <33.467609, 35.971100, 32.757301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.602444, 35.899048, 33.441162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.270237, 36.121342, 33.456089>,  <33.070911, 36.254719, 33.465046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.270237, 36.121342, 33.456089>,  <33.602444, 35.899048, 33.441162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.270237, 36.121342, 33.456089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374612, -0.606909, 0.700948,
		0.412193, 0.568171, 0.712235,
		-0.830520, 0.555737, 0.037320,
		33.021080, 36.288063, 33.467285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.515572, 35.877384, 34.116734>,  <33.602444, 35.899048, 33.441162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.515572, 35.877384, 34.116734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.162197, 36.011780, 33.986099>,  <32.950172, 36.092415, 33.907719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.162197, 36.011780, 33.986099>,  <33.515572, 35.877384, 34.116734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.162197, 36.011780, 33.986099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459154, -0.481833, 0.746334,
		0.093395, 0.809291, 0.579936,
		-0.883433, 0.335984, -0.326588,
		32.897167, 36.112576, 33.888123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.069206, 36.034340, 34.745216>,  <33.515572, 35.877384, 34.116734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.069206, 36.034340, 34.745216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.793636, 36.014561, 34.455959>,  <32.628292, 36.002693, 34.282406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.793636, 36.014561, 34.455959>,  <33.069206, 36.034340, 34.745216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.793636, 36.014561, 34.455959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.640995, -0.424198, 0.639673,
		-0.338384, 0.904219, 0.260547,
		-0.688928, -0.049446, -0.723142,
		32.586960, 35.999725, 34.239017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.842678, 36.004543, 34.757484>,  <33.069206, 36.034340, 34.745216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.842678, 36.004543, 34.757484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.132500, 35.873379, 34.999973>,  <34.306393, 35.794682, 35.145466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.132500, 35.873379, 34.999973>,  <33.842678, 36.004543, 34.757484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.132500, 35.873379, 34.999973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.688694, 0.310110, -0.655387,
		0.026913, 0.892361, 0.450519,
		0.724552, -0.327908, 0.606218,
		34.349865, 35.775005, 35.181839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.269096, 36.540115, 34.870552>,  <33.842678, 36.004543, 34.757484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.269096, 36.540115, 34.870552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.510639, 36.237446, 34.970802>,  <34.655563, 36.055843, 35.030952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.510639, 36.237446, 34.970802>,  <34.269096, 36.540115, 34.870552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.510639, 36.237446, 34.970802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.663419, 0.302805, -0.684239,
		0.441853, 0.579448, 0.684839,
		0.603854, -0.756669, 0.250622,
		34.691795, 36.010445, 35.045990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.826839, 36.932838, 35.113907>,  <34.269096, 36.540115, 34.870552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.826839, 36.932838, 35.113907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.950363, 36.561756, 35.030014>,  <35.024479, 36.339108, 34.979679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.950363, 36.561756, 35.030014>,  <34.826839, 36.932838, 35.113907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.950363, 36.561756, 35.030014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.811919, 0.371982, -0.449908,
		0.495402, -0.031350, 0.868098,
		0.308812, -0.927710, -0.209734,
		35.043007, 36.283443, 34.967094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.551395, 36.911762, 35.227425>,  <34.826839, 36.932838, 35.113907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.551395, 36.911762, 35.227425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.475155, 36.612984, 34.972630>,  <35.429409, 36.433716, 34.819752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.475155, 36.612984, 34.972630>,  <35.551395, 36.911762, 35.227425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.475155, 36.612984, 34.972630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.774982, 0.283795, -0.564679,
		0.602556, -0.601279, 0.524776,
		-0.190601, -0.746943, -0.636983,
		35.417976, 36.388901, 34.781536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.177109, 36.753284, 35.138775>,  <35.551395, 36.911762, 35.227425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.177109, 36.753284, 35.138775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.990913, 36.543705, 34.853451>,  <35.879196, 36.417957, 34.682259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.990913, 36.543705, 34.853451>,  <36.177109, 36.753284, 35.138775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.990913, 36.543705, 34.853451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.742002, 0.208303, -0.637215,
		0.482450, -0.825887, 0.291808,
		-0.465484, -0.523946, -0.713306,
		35.851269, 36.386520, 34.639458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.731590, 36.438786, 34.747948>,  <36.177109, 36.753284, 35.138775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.731590, 36.438786, 34.747948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.414333, 36.444115, 34.504391>,  <36.223980, 36.447311, 34.358257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.414333, 36.444115, 34.504391>,  <36.731590, 36.438786, 34.747948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.414333, 36.444115, 34.504391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.605918, 0.118294, -0.786683,
		0.061546, -0.992889, -0.101897,
		-0.793142, 0.013324, -0.608890,
		36.176392, 36.448112, 34.321724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.969933, 36.222061, 34.086132>,  <36.731590, 36.438786, 34.747948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.969933, 36.222061, 34.086132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.637306, 36.404224, 33.958950>,  <36.437729, 36.513523, 33.882641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.637306, 36.404224, 33.958950>,  <36.969933, 36.222061, 34.086132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.637306, 36.404224, 33.958950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535472, 0.505292, -0.676720,
		-0.147524, -0.732996, -0.664044,
		-0.831568, 0.455410, -0.317956,
		36.387836, 36.540848, 33.863564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.081528, 36.265331, 33.431927>,  <36.969933, 36.222061, 34.086132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.081528, 36.265331, 33.431927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.780666, 36.528927, 33.432789>,  <36.600151, 36.687084, 33.433308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.780666, 36.528927, 33.432789>,  <37.081528, 36.265331, 33.431927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.780666, 36.528927, 33.432789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378838, 0.435070, -0.816821,
		-0.539211, -0.613557, -0.576888,
		-0.752153, 0.658985, 0.002156,
		36.555019, 36.726624, 33.433437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.763927, 36.284046, 32.781757>,  <37.081528, 36.265331, 33.431927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.763927, 36.284046, 32.781757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.680489, 36.636734, 32.951023>,  <36.630424, 36.848347, 33.052582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.680489, 36.636734, 32.951023>,  <36.763927, 36.284046, 32.781757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.680489, 36.636734, 32.951023> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422105, 0.471472, -0.774300,
		-0.882222, 0.017105, -0.470523,
		-0.208594, 0.881715, 0.423164,
		36.617912, 36.901249, 33.077972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.442722, 36.708714, 32.215115>,  <36.763927, 36.284046, 32.781757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.442722, 36.708714, 32.215115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.618889, 36.934509, 32.494366>,  <36.724590, 37.069988, 32.661915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.618889, 36.934509, 32.494366>,  <36.442722, 36.708714, 32.215115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.618889, 36.934509, 32.494366> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446738, 0.536711, -0.715798,
		-0.778754, 0.627131, -0.015801,
		0.440418, 0.564489, 0.698128,
		36.751015, 37.103855, 32.703804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.563721, 37.380829, 31.900181>,  <36.442722, 36.708714, 32.215115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.563721, 37.380829, 31.900181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.777138, 37.451172, 32.231098>,  <36.905186, 37.493378, 32.429649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.777138, 37.451172, 32.231098>,  <36.563721, 37.380829, 31.900181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.777138, 37.451172, 32.231098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398857, 0.810232, -0.429461,
		-0.745821, 0.559105, 0.362149,
		0.533539, 0.175855, 0.827291,
		36.937199, 37.503929, 32.479286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.519909, 38.051132, 31.980671>,  <36.563721, 37.380829, 31.900181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.519909, 38.051132, 31.980671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.842873, 37.976311, 32.204491>,  <37.036652, 37.931416, 32.338783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.842873, 37.976311, 32.204491>,  <36.519909, 38.051132, 31.980671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.842873, 37.976311, 32.204491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437901, 0.825582, -0.355888,
		-0.395381, 0.532376, 0.748499,
		0.807413, -0.187057, 0.559548,
		37.085098, 37.920193, 32.372356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.640076, 38.690376, 32.157520>,  <36.519909, 38.051132, 31.980671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.640076, 38.690376, 32.157520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.986961, 38.496319, 32.202385>,  <37.195091, 38.379883, 32.229305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.986961, 38.496319, 32.202385>,  <36.640076, 38.690376, 32.157520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.986961, 38.496319, 32.202385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462435, 0.701138, -0.542733,
		0.184666, 0.522531, 0.832382,
		0.867210, -0.485147, 0.112160,
		37.247124, 38.350773, 32.236034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.087482, 39.164162, 32.375679>,  <36.640076, 38.690376, 32.157520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.087482, 39.164162, 32.375679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.273823, 38.874825, 32.171810>,  <37.385628, 38.701221, 32.049488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.273823, 38.874825, 32.171810>,  <37.087482, 39.164162, 32.375679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.273823, 38.874825, 32.171810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368102, 0.682197, -0.631750,
		0.804665, 0.106690, 0.584064,
		0.465848, -0.723342, -0.509668,
		37.413578, 38.657822, 32.018909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.722252, 39.490234, 32.175865>,  <37.087482, 39.164162, 32.375679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.722252, 39.490234, 32.175865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.696209, 39.183689, 31.920225>,  <37.680584, 38.999763, 31.766840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.696209, 39.183689, 31.920225>,  <37.722252, 39.490234, 32.175865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.696209, 39.183689, 31.920225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380608, 0.572975, -0.725836,
		0.922442, -0.290505, 0.254378,
		-0.065106, -0.766359, -0.639104,
		37.676678, 38.953781, 31.728495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.350674, 39.464767, 31.831755>,  <37.722252, 39.490234, 32.175865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.350674, 39.464767, 31.831755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.084293, 39.275414, 31.601133>,  <37.924465, 39.161800, 31.462761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.084293, 39.275414, 31.601133>,  <38.350674, 39.464767, 31.831755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.084293, 39.275414, 31.601133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374501, 0.456274, -0.807195,
		0.645181, -0.753473, -0.126573,
		-0.665951, -0.473384, -0.576555,
		37.884506, 39.133400, 31.428167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.761635, 39.190269, 31.262840>,  <38.350674, 39.464767, 31.831755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.761635, 39.190269, 31.262840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.379452, 39.217995, 31.148088>,  <38.150143, 39.234631, 31.079237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.379452, 39.217995, 31.148088>,  <38.761635, 39.190269, 31.262840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.379452, 39.217995, 31.148088> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283522, 0.485529, -0.826969,
		0.081971, -0.871469, -0.483552,
		-0.955456, 0.069310, -0.286880,
		38.092815, 39.238789, 31.062025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.731422, 39.117004, 30.553814>,  <38.761635, 39.190269, 31.262840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.731422, 39.117004, 30.553814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.387943, 39.303623, 30.638647>,  <38.181858, 39.415592, 30.689547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.387943, 39.303623, 30.638647>,  <38.731422, 39.117004, 30.553814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.387943, 39.303623, 30.638647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069292, 0.515727, -0.853946,
		-0.507779, -0.718585, -0.475180,
		-0.858696, 0.466542, 0.212084,
		38.130333, 39.443584, 30.702272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.478825, 39.292191, 29.902523>,  <38.731422, 39.117004, 30.553814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.478825, 39.292191, 29.902523> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.221855, 39.498024, 30.129679>,  <38.067673, 39.621525, 30.265972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.221855, 39.498024, 30.129679>,  <38.478825, 39.292191, 29.902523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.221855, 39.498024, 30.129679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191142, 0.610017, -0.768989,
		-0.742133, -0.602561, -0.293528,
		-0.642420, 0.514586, 0.567889,
		38.029129, 39.652401, 30.300045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.915836, 39.356720, 29.578058>,  <38.478825, 39.292191, 29.902523>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.915836, 39.356720, 29.578058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.920280, 39.681995, 29.810814>,  <37.922947, 39.877163, 29.950468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.920280, 39.681995, 29.810814>,  <37.915836, 39.356720, 29.578058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.920280, 39.681995, 29.810814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141892, 0.577320, -0.804094,
		-0.989820, -0.073629, 0.121801,
		0.011114, 0.813191, 0.581890,
		37.923615, 39.925953, 29.985380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.319630, 39.775642, 29.325611>,  <37.915836, 39.356720, 29.578058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.319630, 39.775642, 29.325611> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.590759, 40.009705, 29.503668>,  <37.753437, 40.150143, 29.610502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.590759, 40.009705, 29.503668>,  <37.319630, 39.775642, 29.325611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.590759, 40.009705, 29.503668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151815, 0.481006, -0.863473,
		-0.719381, 0.652860, 0.237201,
		0.677822, 0.585155, 0.445141,
		37.794106, 40.185249, 29.637211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.191853, 40.497524, 29.133282>,  <37.319630, 39.775642, 29.325611>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.191853, 40.497524, 29.133282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.576157, 40.454372, 29.235500>,  <37.806740, 40.428482, 29.296831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.576157, 40.454372, 29.235500>,  <37.191853, 40.497524, 29.133282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.576157, 40.454372, 29.235500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273535, 0.521371, -0.808301,
		-0.046038, 0.846484, 0.530420,
		0.960760, -0.107876, 0.255545,
		37.864384, 40.422009, 29.312164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.499096, 41.096893, 28.956457>,  <37.191853, 40.497524, 29.133282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.499096, 41.096893, 28.956457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.825275, 40.866955, 28.983572>,  <38.020985, 40.728992, 28.999842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.825275, 40.866955, 28.983572>,  <37.499096, 41.096893, 28.956457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.825275, 40.866955, 28.983572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420887, 0.508467, -0.751209,
		0.397361, 0.641104, 0.656574,
		0.815450, -0.574845, 0.067787,
		38.069912, 40.694500, 29.003908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.182644, 41.529102, 29.098574>,  <37.499096, 41.096893, 28.956457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.182644, 41.529102, 29.098574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.271309, 41.178375, 28.927906>,  <38.324509, 40.967937, 28.825506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.271309, 41.178375, 28.927906>,  <38.182644, 41.529102, 29.098574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.271309, 41.178375, 28.927906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545021, 0.474234, -0.691415,
		0.808589, -0.079280, 0.583008,
		0.221667, -0.876822, -0.426670,
		38.337811, 40.915329, 28.799906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.822491, 41.641479, 28.833227>,  <38.182644, 41.529102, 29.098574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.822491, 41.641479, 28.833227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.729435, 41.303158, 28.641190>,  <38.673603, 41.100163, 28.525967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.729435, 41.303158, 28.641190>,  <38.822491, 41.641479, 28.833227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.729435, 41.303158, 28.641190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.604401, 0.261012, -0.752710,
		0.761958, -0.465279, 0.450485,
		-0.232638, -0.845806, -0.480095,
		38.659645, 41.049416, 28.497162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.391472, 41.247955, 28.576195>,  <38.822491, 41.641479, 28.833227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.391472, 41.247955, 28.576195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.114815, 41.078819, 28.341988>,  <38.948818, 40.977337, 28.201464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.114815, 41.078819, 28.341988>,  <39.391472, 41.247955, 28.576195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.114815, 41.078819, 28.341988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.642295, 0.010622, -0.766384,
		0.330276, -0.906143, 0.264239,
		-0.691647, -0.422838, -0.585519,
		38.907322, 40.951969, 28.166332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.696732, 40.608746, 28.210732>,  <39.391472, 41.247955, 28.576195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.696732, 40.608746, 28.210732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.412643, 40.766926, 27.977764>,  <39.242191, 40.861835, 27.837984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.412643, 40.766926, 27.977764>,  <39.696732, 40.608746, 28.210732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.412643, 40.766926, 27.977764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598078, -0.097468, -0.795489,
		-0.371343, -0.913301, -0.167287,
		-0.710216, 0.395450, -0.582420,
		39.199577, 40.885559, 27.803038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.863705, 40.260643, 27.572081>,  <39.696732, 40.608746, 28.210732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.863705, 40.260643, 27.572081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.620621, 40.567657, 27.490517>,  <39.474770, 40.751865, 27.441578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.620621, 40.567657, 27.490517>,  <39.863705, 40.260643, 27.572081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.620621, 40.567657, 27.490517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461372, 0.132232, -0.877297,
		-0.646391, -0.627223, -0.434477,
		-0.607712, 0.767533, -0.203910,
		39.438309, 40.797916, 27.429344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.550259, 40.142300, 26.909126>,  <39.863705, 40.260643, 27.572081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.550259, 40.142300, 26.909126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.487247, 40.534634, 26.954983>,  <39.449440, 40.770035, 26.982496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.487247, 40.534634, 26.954983>,  <39.550259, 40.142300, 26.909126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.487247, 40.534634, 26.954983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336586, 0.162467, -0.927532,
		-0.928384, -0.107522, -0.355728,
		-0.157524, 0.980838, 0.114641,
		39.439991, 40.828884, 26.989376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.120483, 40.440247, 26.315542>,  <39.550259, 40.142300, 26.909126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.120483, 40.440247, 26.315542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.332001, 40.729534, 26.493229>,  <39.458912, 40.903107, 26.599840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.332001, 40.729534, 26.493229>,  <39.120483, 40.440247, 26.315542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.332001, 40.729534, 26.493229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358136, 0.284373, -0.889309,
		-0.769491, 0.629350, -0.108638,
		0.528792, 0.723222, 0.444216,
		39.490639, 40.946503, 26.626493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.919239, 40.962643, 26.021614>,  <39.120483, 40.440247, 26.315542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.919239, 40.962643, 26.021614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.256027, 41.127705, 26.160641>,  <39.458099, 41.226742, 26.244057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.256027, 41.127705, 26.160641>,  <38.919239, 40.962643, 26.021614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.256027, 41.127705, 26.160641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192687, 0.371736, -0.908121,
		-0.503942, 0.831583, 0.233478,
		0.841971, 0.412652, 0.347568,
		39.508617, 41.251499, 26.264912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.988884, 41.695320, 25.815386>,  <38.919239, 40.962643, 26.021614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.988884, 41.695320, 25.815386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.366627, 41.593327, 25.898500>,  <39.593273, 41.532131, 25.948370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.366627, 41.593327, 25.898500>,  <38.988884, 41.695320, 25.815386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.366627, 41.593327, 25.898500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291909, 0.358541, -0.886700,
		0.151590, 0.898017, 0.413022,
		0.944357, -0.254980, 0.207788,
		39.649933, 41.516834, 25.960836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.369980, 42.232449, 25.529108>,  <38.988884, 41.695320, 25.815386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.369980, 42.232449, 25.529108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.603565, 41.912289, 25.583290>,  <39.743717, 41.720192, 25.615799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.603565, 41.912289, 25.583290>,  <39.369980, 42.232449, 25.529108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.603565, 41.912289, 25.583290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.575992, 0.290959, -0.763922,
		0.572028, 0.524127, 0.630932,
		0.583967, -0.800396, 0.135456,
		39.778755, 41.672169, 25.623926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.076641, 42.477554, 25.597689>,  <39.369980, 42.232449, 25.529108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.076641, 42.477554, 25.597689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.137611, 42.094662, 25.499321>,  <40.174194, 41.864925, 25.440300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.137611, 42.094662, 25.499321>,  <40.076641, 42.477554, 25.597689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.137611, 42.094662, 25.499321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582661, 0.288024, -0.759966,
		0.798293, -0.027449, 0.601643,
		0.152427, -0.957230, -0.245921,
		40.183338, 41.807491, 25.425545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.769936, 42.380741, 25.556726>,  <40.076641, 42.477554, 25.597689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.769936, 42.380741, 25.556726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.616665, 42.082619, 25.338478>,  <40.524704, 41.903748, 25.207529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.616665, 42.082619, 25.338478>,  <40.769936, 42.380741, 25.556726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.616665, 42.082619, 25.338478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.615977, 0.233996, -0.752209,
		0.688296, -0.624317, 0.369427,
		-0.383173, -0.745301, -0.545623,
		40.501713, 41.859028, 25.174791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.319958, 41.900951, 25.434399>,  <40.769936, 42.380741, 25.556726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.319958, 41.900951, 25.434399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.038647, 41.828300, 25.159470>,  <40.869862, 41.784710, 24.994513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.038647, 41.828300, 25.159470>,  <41.319958, 41.900951, 25.434399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.038647, 41.828300, 25.159470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.666876, 0.166451, -0.726341,
		0.246330, -0.969178, 0.004062,
		-0.703277, -0.181628, -0.687323,
		40.827663, 41.773811, 24.953274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.678890, 41.408401, 24.962471>,  <41.319958, 41.900951, 25.434399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.678890, 41.408401, 24.962471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.380802, 41.576443, 24.755335>,  <41.201950, 41.677269, 24.631052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.380802, 41.576443, 24.755335>,  <41.678890, 41.408401, 24.962471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.380802, 41.576443, 24.755335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.642770, 0.245886, -0.725525,
		-0.177466, -0.873529, -0.453269,
		-0.745220, 0.420103, -0.517842,
		41.157238, 41.702473, 24.599981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.755772, 41.205246, 24.285492>,  <41.678890, 41.408401, 24.962471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.755772, 41.205246, 24.285492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.541561, 41.542702, 24.300919>,  <41.413033, 41.745174, 24.310175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.541561, 41.542702, 24.300919>,  <41.755772, 41.205246, 24.285492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.541561, 41.542702, 24.300919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524856, 0.368253, -0.767409,
		-0.661616, -0.390728, -0.639997,
		-0.535528, 0.843636, 0.038566,
		41.380901, 41.795792, 24.312489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.265270, 40.639908, 23.893232>,  <41.755772, 41.205246, 24.285492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.265270, 40.639908, 23.893232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.649292, 40.621014, 23.782907>,  <42.879704, 40.609676, 23.716713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.649292, 40.621014, 23.782907>,  <42.265270, 40.639908, 23.893232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.649292, 40.621014, 23.782907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169361, -0.686549, 0.707084,
		-0.222757, -0.725548, -0.651122,
		0.960050, -0.047233, -0.275813,
		42.937305, 40.606842, 23.700163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.428070, 39.899517, 23.878178>,  <42.265270, 40.639908, 23.893232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.428070, 39.899517, 23.878178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.785728, 40.073795, 23.919495>,  <43.000324, 40.178364, 23.944284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.785728, 40.073795, 23.919495>,  <42.428070, 39.899517, 23.878178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.785728, 40.073795, 23.919495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219750, -0.627966, 0.746571,
		0.390147, -0.644844, -0.657238,
		0.894145, 0.435700, 0.103295,
		43.053970, 40.204506, 23.950483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.831032, 39.376766, 23.979645>,  <42.428070, 39.899517, 23.878178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.831032, 39.376766, 23.979645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.051239, 39.674355, 24.131136>,  <43.183365, 39.852909, 24.222031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.051239, 39.674355, 24.131136>,  <42.831032, 39.376766, 23.979645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.051239, 39.674355, 24.131136> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167372, -0.542811, 0.823008,
		0.817873, -0.389693, -0.423347,
		0.550518, 0.743973, 0.378727,
		43.216396, 39.897545, 24.244755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.259590, 39.073299, 24.408739>,  <42.831032, 39.376766, 23.979645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.259590, 39.073299, 24.408739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.273300, 39.449257, 24.544634>,  <43.281525, 39.674831, 24.626171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.273300, 39.449257, 24.544634>,  <43.259590, 39.073299, 24.408739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.273300, 39.449257, 24.544634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118484, -0.341361, 0.932435,
		0.992364, 0.008293, -0.123063,
		0.034276, 0.939896, 0.339737,
		43.283585, 39.731224, 24.646555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.690399, 39.046638, 25.081264>,  <43.259590, 39.073299, 24.408739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.690399, 39.046638, 25.081264> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.498840, 39.396637, 25.109634>,  <43.383904, 39.606636, 25.126656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.498840, 39.396637, 25.109634>,  <43.690399, 39.046638, 25.081264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.498840, 39.396637, 25.109634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198880, -0.186829, 0.962051,
		0.855044, 0.446622, 0.263493,
		-0.478902, 0.874999, 0.070923,
		43.355171, 39.659138, 25.130911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.932281, 39.281349, 25.679565>,  <43.690399, 39.046638, 25.081264>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.932281, 39.281349, 25.679565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.606186, 39.505859, 25.622492>,  <43.410530, 39.640564, 25.588247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.606186, 39.505859, 25.622492>,  <43.932281, 39.281349, 25.679565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.606186, 39.505859, 25.622492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266697, -0.145162, 0.952786,
		0.514060, 0.814801, 0.268032,
		-0.815239, 0.561273, -0.142683,
		43.361614, 39.674240, 25.579687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.874969, 39.820179, 26.281214>,  <43.932281, 39.281349, 25.679565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.874969, 39.820179, 26.281214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.504681, 39.783245, 26.134506>,  <43.282509, 39.761086, 26.046482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.504681, 39.783245, 26.134506>,  <43.874969, 39.820179, 26.281214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.504681, 39.783245, 26.134506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352540, -0.140536, 0.925184,
		-0.136970, 0.985761, 0.097545,
		-0.925718, -0.092334, -0.366769,
		43.226967, 39.755547, 26.024475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.390690, 40.086552, 26.706007>,  <43.874969, 39.820179, 26.281214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.390690, 40.086552, 26.706007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.167664, 39.836018, 26.488079>,  <43.033848, 39.685699, 26.357323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.167664, 39.836018, 26.488079>,  <43.390690, 40.086552, 26.706007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.167664, 39.836018, 26.488079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373377, -0.396956, 0.838460,
		-0.741424, 0.670920, -0.012528,
		-0.557567, -0.626332, -0.544819,
		43.000393, 39.648117, 26.324633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.733761, 40.193142, 27.012545>,  <43.390690, 40.086552, 26.706007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.733761, 40.193142, 27.012545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.699368, 39.845627, 26.817480>,  <42.678730, 39.637119, 26.700441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.699368, 39.845627, 26.817480>,  <42.733761, 40.193142, 27.012545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.699368, 39.845627, 26.817480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.659694, -0.317154, 0.681335,
		-0.746600, 0.380292, -0.545864,
		-0.085983, -0.868787, -0.487663,
		42.673573, 39.584991, 26.671181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.084774, 40.040672, 27.056463>,  <42.733761, 40.193142, 27.012545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.084774, 40.040672, 27.056463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.239311, 39.677917, 26.989172>,  <42.332035, 39.460266, 26.948797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.239311, 39.677917, 26.989172>,  <42.084774, 40.040672, 27.056463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.239311, 39.677917, 26.989172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.669259, -0.401136, 0.625446,
		-0.634689, -0.129050, -0.761916,
		0.386346, -0.906883, -0.168228,
		42.355213, 39.405853, 26.938704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.549267, 39.593739, 27.030846>,  <42.084774, 40.040672, 27.056463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.549267, 39.593739, 27.030846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.845425, 39.332657, 27.095085>,  <42.023121, 39.176006, 27.133629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.845425, 39.332657, 27.095085>,  <41.549267, 39.593739, 27.030846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.845425, 39.332657, 27.095085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.589698, -0.516066, 0.621234,
		-0.322603, -0.554663, -0.766992,
		0.740394, -0.652706, 0.160599,
		42.067543, 39.136845, 27.143265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.172882, 38.914745, 26.996082>,  <41.549267, 39.593739, 27.030846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.172882, 38.914745, 26.996082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.516682, 38.862892, 27.193853>,  <41.722961, 38.831779, 27.312517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.516682, 38.862892, 27.193853>,  <41.172882, 38.914745, 26.996082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.516682, 38.862892, 27.193853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502611, -0.390334, 0.771376,
		0.092996, -0.911501, -0.400647,
		0.859496, -0.129635, 0.494430,
		41.774532, 38.824001, 27.342182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.101936, 38.193367, 27.224062>,  <41.172882, 38.914745, 26.996082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.101936, 38.193367, 27.224062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.373508, 38.389610, 27.442551>,  <41.536449, 38.507359, 27.573645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.373508, 38.389610, 27.442551>,  <41.101936, 38.193367, 27.224062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.373508, 38.389610, 27.442551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397442, -0.379951, 0.835271,
		0.617332, -0.784179, -0.062969,
		0.678927, 0.490613, 0.546221,
		41.577187, 38.536793, 27.606417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.261063, 37.669266, 27.800426>,  <41.101936, 38.193367, 27.224062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.261063, 37.669266, 27.800426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.394264, 38.029346, 27.912668>,  <41.474186, 38.245396, 27.980013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.394264, 38.029346, 27.912668>,  <41.261063, 37.669266, 27.800426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.394264, 38.029346, 27.912668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336962, -0.164327, 0.927067,
		0.880661, -0.403270, 0.248613,
		0.333005, 0.900205, 0.280603,
		41.494167, 38.299408, 27.996849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.606945, 37.629883, 28.398079>,  <41.261063, 37.669266, 27.800426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.606945, 37.629883, 28.398079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.497139, 38.014496, 28.394226>,  <41.431255, 38.245266, 28.391914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.497139, 38.014496, 28.394226>,  <41.606945, 37.629883, 28.398079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.497139, 38.014496, 28.394226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426889, -0.112887, 0.897231,
		0.861632, 0.250411, 0.441458,
		-0.274511, 0.961536, -0.009630,
		41.414787, 38.302956, 28.391336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.727180, 37.814144, 29.092031>,  <41.606945, 37.629883, 28.398079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.727180, 37.814144, 29.092031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.469296, 38.069843, 28.924366>,  <41.314564, 38.223263, 28.823767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.469296, 38.069843, 28.924366>,  <41.727180, 37.814144, 29.092031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.469296, 38.069843, 28.924366> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.585252, -0.060031, 0.808626,
		0.491753, 0.766651, 0.412826,
		-0.644717, 0.639251, -0.419163,
		41.275879, 38.261620, 28.798616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.639095, 38.235439, 29.628645>,  <41.727180, 37.814144, 29.092031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.639095, 38.235439, 29.628645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.319801, 38.314548, 29.401066>,  <41.128223, 38.362015, 29.264519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.319801, 38.314548, 29.401066>,  <41.639095, 38.235439, 29.628645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.319801, 38.314548, 29.401066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.602300, -0.251080, 0.757756,
		0.007014, 0.947546, 0.319542,
		-0.798239, 0.197775, -0.568946,
		41.080330, 38.373882, 29.230383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.289486, 38.761917, 29.960646>,  <41.639095, 38.235439, 29.628645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.289486, 38.761917, 29.960646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.013351, 38.592106, 29.726311>,  <40.847672, 38.490219, 29.585709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.013351, 38.592106, 29.726311>,  <41.289486, 38.761917, 29.960646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.013351, 38.592106, 29.726311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.621875, -0.065631, 0.780361,
		-0.369737, 0.903032, -0.218698,
		-0.690338, -0.424531, -0.585839,
		40.806252, 38.464748, 29.550558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.714371, 39.075134, 30.175926>,  <41.289486, 38.761917, 29.960646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.714371, 39.075134, 30.175926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.581173, 38.759026, 29.970175>,  <40.501255, 38.569359, 29.846724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.581173, 38.759026, 29.970175>,  <40.714371, 39.075134, 30.175926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.581173, 38.759026, 29.970175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.742947, -0.116030, 0.659218,
		-0.580644, 0.601670, -0.548493,
		-0.332990, -0.790272, -0.514381,
		40.481277, 38.521942, 29.815861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.902973, 39.221256, 30.082891>,  <40.714371, 39.075134, 30.175926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.902973, 39.221256, 30.082891> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.997314, 38.835995, 30.031199>,  <40.053921, 38.604836, 30.000183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.997314, 38.835995, 30.031199>,  <39.902973, 39.221256, 30.082891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.997314, 38.835995, 30.031199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.765567, -0.266067, 0.585760,
		-0.598564, -0.039218, -0.800115,
		0.235857, -0.963157, -0.129234,
		40.068073, 38.547047, 29.992428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.320087, 38.838337, 30.187645>,  <39.902973, 39.221256, 30.082891>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.320087, 38.838337, 30.187645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.598270, 38.552113, 30.213930>,  <39.765179, 38.380379, 30.229700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.598270, 38.552113, 30.213930>,  <39.320087, 38.838337, 30.187645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.598270, 38.552113, 30.213930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433718, -0.345095, 0.832345,
		-0.572915, -0.607358, -0.550349,
		0.695454, -0.715559, 0.065712,
		39.806908, 38.337444, 30.233644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.929615, 38.171833, 30.394056>,  <39.320087, 38.838337, 30.187645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.929615, 38.171833, 30.394056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.309242, 38.130276, 30.513035>,  <39.537018, 38.105343, 30.584421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.309242, 38.130276, 30.513035>,  <38.929615, 38.171833, 30.394056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.309242, 38.130276, 30.513035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312348, -0.186487, 0.931483,
		-0.041301, -0.976949, -0.209439,
		0.949069, -0.103889, 0.297446,
		39.593964, 38.099110, 30.602268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.789944, 37.609261, 30.866014>,  <38.929615, 38.171833, 30.394056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.789944, 37.609261, 30.866014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.147797, 37.774643, 30.933775>,  <39.362507, 37.873871, 30.974432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.147797, 37.774643, 30.933775>,  <38.789944, 37.609261, 30.866014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.147797, 37.774643, 30.933775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026615, -0.329153, 0.943901,
		0.446018, -0.848950, -0.283465,
		0.894628, 0.413452, 0.169403,
		39.416183, 37.898678, 30.984596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.226959, 37.064892, 31.145184>,  <38.789944, 37.609261, 30.866014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.226959, 37.064892, 31.145184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.382652, 37.403027, 31.291553>,  <39.476067, 37.605907, 31.379375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.382652, 37.403027, 31.291553>,  <39.226959, 37.064892, 31.145184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.382652, 37.403027, 31.291553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015882, -0.403350, 0.914908,
		0.921003, -0.350299, -0.170421,
		0.389231, 0.845340, 0.365923,
		39.499420, 37.656628, 31.401331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.939766, 36.950840, 31.496809>,  <39.226959, 37.064892, 31.145184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.939766, 36.950840, 31.496809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.764545, 37.284824, 31.630049>,  <39.659412, 37.485214, 31.709991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.764545, 37.284824, 31.630049>,  <39.939766, 36.950840, 31.496809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.764545, 37.284824, 31.630049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089235, -0.328323, 0.940341,
		0.894508, 0.441646, 0.069316,
		-0.438056, 0.834957, 0.333098,
		39.633129, 37.535313, 31.729979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.335693, 37.126320, 32.086849>,  <39.939766, 36.950840, 31.496809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.335693, 37.126320, 32.086849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.988350, 37.322506, 32.116245>,  <39.779945, 37.440220, 32.133884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.988350, 37.322506, 32.116245>,  <40.335693, 37.126320, 32.086849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.988350, 37.322506, 32.116245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025744, -0.192559, 0.980947,
		0.495274, 0.849919, 0.179836,
		-0.868355, 0.490467, 0.073490,
		39.727844, 37.469646, 32.138290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.321110, 37.771847, 32.493645>,  <40.335693, 37.126320, 32.086849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.321110, 37.771847, 32.493645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.973061, 37.575539, 32.511677>,  <39.764233, 37.457752, 32.522495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.973061, 37.575539, 32.511677>,  <40.321110, 37.771847, 32.493645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.973061, 37.575539, 32.511677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126442, -0.133900, 0.982895,
		-0.476344, 0.860936, 0.178564,
		-0.870120, -0.490774, 0.045076,
		39.712025, 37.428307, 32.525200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.966854, 37.962421, 33.133865>,  <40.321110, 37.771847, 32.493645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.966854, 37.962421, 33.133865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.752281, 37.634853, 33.052265>,  <39.623539, 37.438313, 33.003304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.752281, 37.634853, 33.052265>,  <39.966854, 37.962421, 33.133865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.752281, 37.634853, 33.052265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040670, -0.266530, 0.962968,
		-0.842966, 0.508266, 0.176280,
		-0.536428, -0.818919, -0.204004,
		39.591354, 37.389179, 32.991062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.506237, 37.885723, 33.705490>,  <39.966854, 37.962421, 33.133865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.506237, 37.885723, 33.705490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.550293, 37.528481, 33.531025>,  <39.576729, 37.314137, 33.426346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.550293, 37.528481, 33.531025>,  <39.506237, 37.885723, 33.705490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.550293, 37.528481, 33.531025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047227, -0.443038, 0.895258,
		-0.992793, -0.078008, -0.090976,
		0.110143, -0.893103, -0.436161,
		39.583336, 37.260551, 33.400177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.937927, 37.419441, 33.930458>,  <39.506237, 37.885723, 33.705490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.937927, 37.419441, 33.930458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.244926, 37.183949, 33.828999>,  <39.429127, 37.042652, 33.768124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.244926, 37.183949, 33.828999>,  <38.937927, 37.419441, 33.930458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.244926, 37.183949, 33.828999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154804, -0.554180, 0.817875,
		-0.622078, -0.588453, -0.516471,
		0.767498, -0.588734, -0.253649,
		39.475178, 37.007328, 33.752903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.756165, 36.849693, 34.214260>,  <38.937927, 37.419441, 33.930458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.756165, 36.849693, 34.214260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.128647, 36.726120, 34.136898>,  <39.352139, 36.651978, 34.090481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.128647, 36.726120, 34.136898>,  <38.756165, 36.849693, 34.214260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.128647, 36.726120, 34.136898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016113, -0.565010, 0.824926,
		-0.364125, -0.765064, -0.531122,
		0.931211, -0.308934, -0.193407,
		39.408009, 36.633438, 34.078876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.772934, 36.030209, 34.363232>,  <38.756165, 36.849693, 34.214260>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.772934, 36.030209, 34.363232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.142342, 36.179443, 34.398827>,  <39.363987, 36.268986, 34.420181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.142342, 36.179443, 34.398827>,  <38.772934, 36.030209, 34.363232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.142342, 36.179443, 34.398827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201042, -0.668443, 0.716077,
		0.326640, -0.643421, -0.692326,
		0.923520, 0.373086, 0.088986,
		39.419399, 36.291370, 34.425522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.161373, 35.409618, 34.357952>,  <38.772934, 36.030209, 34.363232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.161373, 35.409618, 34.357952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.428772, 35.680428, 34.481079>,  <39.589211, 35.842911, 34.554955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.428772, 35.680428, 34.481079>,  <39.161373, 35.409618, 34.357952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.428772, 35.680428, 34.481079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412622, -0.681982, 0.603858,
		0.618752, -0.276665, -0.735257,
		0.668498, 0.677021, 0.307820,
		39.629322, 35.883533, 34.573425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.840137, 35.006241, 34.339481>,  <39.161373, 35.409618, 34.357952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.840137, 35.006241, 34.339481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.883724, 35.316750, 34.587841>,  <39.909878, 35.503056, 34.736858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.883724, 35.316750, 34.587841>,  <39.840137, 35.006241, 34.339481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.883724, 35.316750, 34.587841> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406619, -0.604783, 0.684762,
		0.907077, 0.177855, -0.381549,
		0.108965, 0.776277, 0.620904,
		39.916412, 35.549633, 34.774113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.566631, 35.016731, 34.588902>,  <39.840137, 35.006241, 34.339481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.566631, 35.016731, 34.588902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.326271, 35.213554, 34.840870>,  <40.182056, 35.331646, 34.992050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.326271, 35.213554, 34.840870>,  <40.566631, 35.016731, 34.588902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.326271, 35.213554, 34.840870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422907, -0.473025, 0.772915,
		0.678286, 0.730842, 0.076147,
		-0.600898, 0.492054, 0.629925,
		40.146000, 35.361172, 35.029846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.768635, 34.661827, 35.169945>,  <40.566631, 35.016731, 34.588902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.768635, 34.661827, 35.169945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.492317, 34.876461, 35.363804>,  <40.326527, 35.005241, 35.480118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.492317, 34.876461, 35.363804>,  <40.768635, 34.661827, 35.169945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.492317, 34.876461, 35.363804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119276, -0.576533, 0.808321,
		0.713147, 0.616189, 0.334264,
		-0.690793, 0.536582, 0.484649,
		40.285080, 35.037437, 35.509197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.013611, 34.787674, 35.935730>,  <40.768635, 34.661827, 35.169945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.013611, 34.787674, 35.935730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.616154, 34.832695, 35.934155>,  <40.377682, 34.859707, 35.933208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.616154, 34.832695, 35.934155>,  <41.013611, 34.787674, 35.935730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.616154, 34.832695, 35.934155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048189, -0.393316, 0.918140,
		0.101786, 0.912489, 0.396237,
		-0.993638, 0.112549, -0.003938,
		40.318062, 34.866459, 35.932972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.889832, 35.229824, 36.486267>,  <41.013611, 34.787674, 35.935730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.889832, 35.229824, 36.486267> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.568462, 35.002441, 36.415424>,  <40.375641, 34.866013, 36.372917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.568462, 35.002441, 36.415424>,  <40.889832, 35.229824, 36.486267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.568462, 35.002441, 36.415424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045319, -0.354978, 0.933775,
		-0.593681, 0.742190, 0.310959,
		-0.803423, -0.568458, -0.177109,
		40.327435, 34.831905, 36.362293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.466976, 35.212399, 37.128777>,  <40.889832, 35.229824, 36.486267>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.466976, 35.212399, 37.128777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.286549, 34.904232, 36.948551>,  <40.178291, 34.719334, 36.840416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.286549, 34.904232, 36.948551>,  <40.466976, 35.212399, 37.128777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.286549, 34.904232, 36.948551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013484, -0.510661, 0.859676,
		-0.892390, 0.381694, 0.240729,
		-0.451064, -0.770412, -0.450562,
		40.151230, 34.673107, 36.813381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.851933, 34.979980, 37.555260>,  <40.466976, 35.212399, 37.128777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.851933, 34.979980, 37.555260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.015060, 34.679329, 37.347897>,  <40.112938, 34.498940, 37.223480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.015060, 34.679329, 37.347897>,  <39.851933, 34.979980, 37.555260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.015060, 34.679329, 37.347897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101017, -0.601422, 0.792520,
		-0.907457, -0.270837, -0.321199,
		0.407820, -0.751624, -0.518405,
		40.137405, 34.453842, 37.192375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.414577, 34.342037, 37.485382>,  <39.851933, 34.979980, 37.555260>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.414577, 34.342037, 37.485382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.795940, 34.228687, 37.443974>,  <40.024757, 34.160679, 37.419128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.795940, 34.228687, 37.443974>,  <39.414577, 34.342037, 37.485382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.795940, 34.228687, 37.443974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132306, -0.701115, 0.700666,
		-0.271131, -0.654323, -0.705939,
		0.953406, -0.283372, -0.103523,
		40.081963, 34.143677, 37.412918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.441044, 33.561081, 37.662266>,  <39.414577, 34.342037, 37.485382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.441044, 33.561081, 37.662266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.791477, 33.741829, 37.729542>,  <40.001740, 33.850277, 37.769905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.791477, 33.741829, 37.729542>,  <39.441044, 33.561081, 37.662266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.791477, 33.741829, 37.729542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134048, -0.563339, 0.815279,
		0.463147, -0.691709, -0.554106,
		0.876085, 0.451871, 0.168187,
		40.054302, 33.877392, 37.779999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.891541, 32.973995, 37.823738>,  <39.441044, 33.561081, 37.662266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.891541, 32.973995, 37.823738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.056641, 33.309582, 37.965595>,  <40.155701, 33.510933, 38.050709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.056641, 33.309582, 37.965595>,  <39.891541, 32.973995, 37.823738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.056641, 33.309582, 37.965595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120813, -0.436340, 0.891634,
		0.902797, -0.325176, -0.281457,
		0.412749, 0.838968, 0.354641,
		40.180466, 33.561272, 38.071987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.514267, 32.747139, 38.264565>,  <39.891541, 32.973995, 37.823738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.514267, 32.747139, 38.264565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.426311, 33.110977, 38.405579>,  <40.373539, 33.329281, 38.490189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.426311, 33.110977, 38.405579>,  <40.514267, 32.747139, 38.264565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.426311, 33.110977, 38.405579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047308, -0.351015, 0.935174,
		0.974378, 0.222310, 0.034153,
		-0.219887, 0.909597, 0.352538,
		40.360344, 33.383858, 38.511341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.070618, 32.980186, 38.924522>,  <40.514267, 32.747139, 38.264565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.070618, 32.980186, 38.924522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.723732, 33.179272, 38.918587>,  <40.515602, 33.298725, 38.915024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.723732, 33.179272, 38.918587>,  <41.070618, 32.980186, 38.924522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.723732, 33.179272, 38.918587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120194, -0.180318, 0.976237,
		0.483213, 0.848389, 0.216197,
		-0.867213, 0.497716, -0.014839,
		40.463570, 33.328587, 38.914135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.127728, 33.232513, 39.552406>,  <41.070618, 32.980186, 38.924522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.127728, 33.232513, 39.552406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.738976, 33.270542, 39.466244>,  <40.505722, 33.293362, 39.414547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.738976, 33.270542, 39.466244>,  <41.127728, 33.232513, 39.552406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.738976, 33.270542, 39.466244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233513, -0.271801, 0.933593,
		0.030213, 0.957645, 0.286361,
		-0.971884, 0.095076, -0.215411,
		40.447411, 33.299065, 39.401619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.791477, 33.492363, 40.167809>,  <41.127728, 33.232513, 39.552406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.791477, 33.492363, 40.167809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.490944, 33.333939, 39.956665>,  <40.310623, 33.238884, 39.829979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.490944, 33.333939, 39.956665>,  <40.791477, 33.492363, 40.167809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.490944, 33.333939, 39.956665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385010, -0.386560, 0.838056,
		-0.535969, 0.832891, 0.137949,
		-0.751335, -0.396060, -0.527856,
		40.265545, 33.215122, 39.798309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.273800, 33.560486, 40.522839>,  <40.791477, 33.492363, 40.167809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.273800, 33.560486, 40.522839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.131126, 33.286419, 40.268806>,  <40.045521, 33.121979, 40.116386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.131126, 33.286419, 40.268806>,  <40.273800, 33.560486, 40.522839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.131126, 33.286419, 40.268806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496215, -0.437028, 0.750185,
		-0.791548, 0.582714, -0.184109,
		-0.356682, -0.685165, -0.635079,
		40.024120, 33.080868, 40.078281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.504486, 33.430157, 40.690254>,  <40.273800, 33.560486, 40.522839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.504486, 33.430157, 40.690254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.681374, 33.111984, 40.524494>,  <39.787506, 32.921082, 40.425037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.681374, 33.111984, 40.524494>,  <39.504486, 33.430157, 40.690254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.681374, 33.111984, 40.524494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393207, -0.587202, 0.707518,
		-0.806124, -0.149928, -0.572439,
		0.442214, -0.795434, -0.414405,
		39.814037, 32.873356, 40.400173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.228745, 32.871399, 41.136429>,  <39.504486, 33.430157, 40.690254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.228745, 32.871399, 41.136429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.462475, 32.650501, 40.898575>,  <39.602711, 32.517963, 40.755863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.462475, 32.650501, 40.898575>,  <39.228745, 32.871399, 41.136429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.462475, 32.650501, 40.898575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157714, -0.796047, 0.584324,
		-0.796047, -0.247652, -0.552247,
		-0.584324, 0.552247, 0.594633,
		39.637772, 32.484829, 40.720184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.973961, 32.197128, 41.111122>,  <39.228745, 32.871399, 41.136429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.973961, 32.197128, 41.111122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.349739, 32.149002, 40.982765>,  <39.575207, 32.120129, 40.905750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.349739, 32.149002, 40.982765>,  <38.973961, 32.197128, 41.111122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.349739, 32.149002, 40.982765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117465, -0.766583, 0.631310,
		-0.321944, -0.630774, -0.706029,
		0.939444, -0.120313, -0.320890,
		39.631573, 32.112907, 40.886497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.033577, 31.507236, 40.863846>,  <38.973961, 32.197128, 41.111122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.033577, 31.507236, 40.863846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.391418, 31.628563, 40.995110>,  <39.606121, 31.701359, 41.073868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.391418, 31.628563, 40.995110>,  <39.033577, 31.507236, 40.863846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.391418, 31.628563, 40.995110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043981, -0.671028, 0.740126,
		0.444695, -0.676551, -0.586963,
		0.894602, 0.303315, 0.328158,
		39.659798, 31.719557, 41.093555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.412144, 30.877542, 41.175694>,  <39.033577, 31.507236, 40.863846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.412144, 30.877542, 41.175694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.646343, 31.171087, 41.313469>,  <39.786861, 31.347214, 41.396133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.646343, 31.171087, 41.313469>,  <39.412144, 30.877542, 41.175694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.646343, 31.171087, 41.313469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054700, -0.459679, 0.886399,
		0.808827, -0.500143, -0.309283,
		0.585498, 0.733861, 0.344442,
		39.821991, 31.391245, 41.416801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.968807, 30.595184, 41.533581>,  <39.412144, 30.877542, 41.175694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.968807, 30.595184, 41.533581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.896984, 30.958349, 41.685081>,  <39.853889, 31.176249, 41.775982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.896984, 30.958349, 41.685081>,  <39.968807, 30.595184, 41.533581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.896984, 30.958349, 41.685081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002144, -0.385368, 0.922760,
		0.983746, 0.164872, 0.071141,
		-0.179553, 0.907914, 0.378751,
		39.843117, 31.230724, 41.798706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.434376, 30.672718, 42.000088>,  <39.968807, 30.595184, 41.533581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.434376, 30.672718, 42.000088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.204433, 30.988111, 42.087574>,  <40.066467, 31.177347, 42.140068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.204433, 30.988111, 42.087574>,  <40.434376, 30.672718, 42.000088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.204433, 30.988111, 42.087574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257124, -0.079694, 0.963087,
		0.776808, 0.609871, -0.156925,
		-0.574853, 0.788483, 0.218720,
		40.031979, 31.224657, 42.153191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.769024, 31.027388, 42.522141>,  <40.434376, 30.672718, 42.000088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.769024, 31.027388, 42.522141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.421398, 31.223669, 42.547249>,  <40.212822, 31.341438, 42.562313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.421398, 31.223669, 42.547249>,  <40.769024, 31.027388, 42.522141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.421398, 31.223669, 42.547249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126713, 0.098146, 0.987072,
		0.478197, 0.865782, -0.147473,
		-0.869063, 0.490702, 0.062772,
		40.160679, 31.370880, 42.566082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.992580, 31.648085, 42.810951>,  <40.769024, 31.027388, 42.522141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.992580, 31.648085, 42.810951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.620350, 31.541039, 42.910881>,  <40.397011, 31.476810, 42.970837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.620350, 31.541039, 42.910881>,  <40.992580, 31.648085, 42.810951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.620350, 31.541039, 42.910881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204729, 0.185307, 0.961118,
		-0.303505, 0.945538, -0.117653,
		-0.930575, -0.267617, 0.249821,
		40.341179, 31.460754, 42.985828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.842060, 32.017979, 43.428421>,  <40.992580, 31.648085, 42.810951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.842060, 32.017979, 43.428421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.549465, 31.745611, 43.442684>,  <40.373909, 31.582191, 43.451244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.549465, 31.745611, 43.442684>,  <40.842060, 32.017979, 43.428421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.549465, 31.745611, 43.442684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094295, -0.049223, 0.994327,
		-0.675301, 0.730702, 0.100213,
		-0.731490, -0.680919, 0.035661,
		40.330017, 31.541336, 43.453381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.188168, 32.299129, 43.733772>,  <40.842060, 32.017979, 43.428421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.188168, 32.299129, 43.733772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.256878, 31.910360, 43.798092>,  <40.298103, 31.677099, 43.836681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.256878, 31.910360, 43.798092>,  <40.188168, 32.299129, 43.733772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.256878, 31.910360, 43.798092> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178311, 0.191201, 0.965219,
		-0.968864, -0.137133, 0.206150,
		0.171780, -0.971924, 0.160796,
		40.308411, 31.618784, 43.846329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.865837, 32.194256, 44.405338>,  <40.188168, 32.299129, 43.733772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.865837, 32.194256, 44.405338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.112995, 31.885151, 44.347313>,  <40.261292, 31.699688, 44.312496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.112995, 31.885151, 44.347313>,  <39.865837, 32.194256, 44.405338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.112995, 31.885151, 44.347313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231747, 0.002694, 0.972772,
		-0.751331, -0.634690, 0.180750,
		0.617896, -0.772762, -0.145063,
		40.298363, 31.653322, 44.303795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.703949, 31.816280, 44.919273>,  <39.865837, 32.194256, 44.405338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.703949, 31.816280, 44.919273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.072479, 31.711794, 44.804089>,  <40.293598, 31.649101, 44.734978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.072479, 31.711794, 44.804089>,  <39.703949, 31.816280, 44.919273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.072479, 31.711794, 44.804089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275323, -0.084597, 0.957622,
		-0.274510, -0.961565, -0.006022,
		0.921326, -0.261219, -0.287964,
		40.348877, 31.633429, 44.717701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.977699, 31.345306, 45.484753>,  <39.703949, 31.816280, 44.919273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.977699, 31.345306, 45.484753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.259342, 31.530939, 45.269772>,  <40.428329, 31.642319, 45.140781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.259342, 31.530939, 45.269772>,  <39.977699, 31.345306, 45.484753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.259342, 31.530939, 45.269772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569388, 0.083263, 0.817841,
		0.424295, -0.881871, -0.205616,
		0.704110, 0.464081, -0.537455,
		40.470573, 31.670164, 45.108536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.720005, 31.212746, 45.678444>,  <39.977699, 31.345306, 45.484753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.720005, 31.212746, 45.678444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.809296, 31.389032, 46.026222>,  <40.862869, 31.494804, 46.234890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.809296, 31.389032, 46.026222>,  <40.720005, 31.212746, 45.678444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.809296, 31.389032, 46.026222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229557, -0.890636, 0.392520,
		0.947351, 0.111967, -0.299984,
		0.223227, 0.440717, 0.869447,
		40.876263, 31.521248, 46.287056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.088081, 31.565578, 45.132435>,  <40.720005, 31.212746, 45.678444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.088081, 31.565578, 45.132435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.848881, 31.246557, 45.100681>,  <40.705360, 31.055145, 45.081627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.848881, 31.246557, 45.100681>,  <41.088081, 31.565578, 45.132435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.848881, 31.246557, 45.100681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176981, 0.228001, -0.957441,
		0.781709, -0.558504, -0.277498,
		-0.598005, -0.797552, -0.079386,
		40.669479, 31.007292, 45.076866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.115559, 31.150776, 44.595417>,  <41.088081, 31.565578, 45.132435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.115559, 31.150776, 44.595417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.728058, 31.108814, 44.685322>,  <40.495556, 31.083637, 44.739265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.728058, 31.108814, 44.685322>,  <41.115559, 31.150776, 44.595417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.728058, 31.108814, 44.685322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241695, 0.195701, -0.950413,
		0.055716, -0.975037, -0.214940,
		-0.968751, -0.104903, 0.224758,
		40.437431, 31.077343, 44.752750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.814598, 30.553005, 44.226635>,  <41.115559, 31.150776, 44.595417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.814598, 30.553005, 44.226635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.548676, 30.849205, 44.266010>,  <40.389122, 31.026924, 44.289635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.548676, 30.849205, 44.266010>,  <40.814598, 30.553005, 44.226635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.548676, 30.849205, 44.266010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065513, 0.073467, -0.995143,
		-0.744134, -0.668030, -0.000329,
		-0.664810, 0.740498, 0.098434,
		40.349232, 31.071354, 44.295540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.227852, 30.326691, 43.898708>,  <40.814598, 30.553005, 44.226635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.227852, 30.326691, 43.898708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.205627, 30.725840, 43.912342>,  <40.192291, 30.965330, 43.920525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.205627, 30.725840, 43.912342>,  <40.227852, 30.326691, 43.898708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.205627, 30.725840, 43.912342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224716, 0.020766, -0.974203,
		-0.972839, -0.061786, 0.223085,
		-0.055560, 0.997874, 0.034086,
		40.188961, 31.025202, 43.922569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.542034, 30.557096, 43.592419>,  <40.227852, 30.326691, 43.898708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.542034, 30.557096, 43.592419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.784184, 30.873196, 43.554401>,  <39.929474, 31.062855, 43.531590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.784184, 30.873196, 43.554401>,  <39.542034, 30.557096, 43.592419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.784184, 30.873196, 43.554401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209444, 0.042953, -0.976877,
		-0.767893, 0.611279, 0.191516,
		0.605370, 0.790249, -0.095046,
		39.965794, 31.110270, 43.525887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.131237, 31.090487, 43.316540>,  <39.542034, 30.557096, 43.592419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.131237, 31.090487, 43.316540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.506504, 31.191000, 43.221287>,  <39.731663, 31.251308, 43.164135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.506504, 31.191000, 43.221287>,  <39.131237, 31.090487, 43.316540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.506504, 31.191000, 43.221287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308260, 0.293297, -0.904960,
		-0.157557, 0.922407, 0.352621,
		0.938164, 0.251281, -0.238130,
		39.787952, 31.266384, 43.149849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.953468, 31.522947, 42.768925>,  <39.131237, 31.090487, 43.316540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.953468, 31.522947, 42.768925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.346272, 31.465162, 42.720268>,  <39.581951, 31.430492, 42.691074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.346272, 31.465162, 42.720268>,  <38.953468, 31.522947, 42.768925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.346272, 31.465162, 42.720268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078487, 0.273667, -0.958617,
		0.171772, 0.950914, 0.257404,
		0.982005, -0.144461, -0.121642,
		39.640873, 31.421824, 42.683777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.225311, 32.140694, 42.667473>,  <38.953468, 31.522947, 42.768925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.225311, 32.140694, 42.667473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.450085, 31.871653, 42.474873>,  <39.584949, 31.710228, 42.359314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.450085, 31.871653, 42.474873>,  <39.225311, 32.140694, 42.667473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.450085, 31.871653, 42.474873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135485, 0.499393, -0.855716,
		0.816013, 0.546090, 0.189497,
		0.561932, -0.672601, -0.481498,
		39.618664, 31.669872, 42.330421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.432186, 32.440063, 42.130951>,  <39.225311, 32.140694, 42.667473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.432186, 32.440063, 42.130951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.552216, 32.069538, 42.039829>,  <39.624233, 31.847221, 41.985157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.552216, 32.069538, 42.039829>,  <39.432186, 32.440063, 42.130951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.552216, 32.069538, 42.039829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001467, 0.238358, -0.971176,
		0.953915, 0.291758, 0.070166,
		0.300073, -0.926317, -0.227802,
		39.642239, 31.791643, 41.971489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.058723, 32.282166, 42.429699>,  <39.432186, 32.440063, 42.130951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.058723, 32.282166, 42.429699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.174503, 31.934786, 42.268696>,  <40.243969, 31.726358, 42.172092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.174503, 31.934786, 42.268696>,  <40.058723, 32.282166, 42.429699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.174503, 31.934786, 42.268696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121273, 0.383852, -0.915396,
		0.949481, 0.313772, 0.005786,
		0.289447, -0.868449, -0.402512,
		40.261337, 31.674252, 42.147942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.629261, 32.236538, 41.941074>,  <40.058723, 32.282166, 42.429699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.629261, 32.236538, 41.941074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.386639, 31.967535, 41.771454>,  <40.241066, 31.806131, 41.669682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.386639, 31.967535, 41.771454>,  <40.629261, 32.236538, 41.941074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.386639, 31.967535, 41.771454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084682, 0.475689, -0.875528,
		0.790520, -0.566963, -0.231581,
		-0.606553, -0.672512, -0.424053,
		40.204674, 31.765781, 41.644238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.747238, 32.254768, 41.247215>,  <40.629261, 32.236538, 41.941074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.747238, 32.254768, 41.247215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.435440, 32.008003, 41.203751>,  <40.248360, 31.859945, 41.177670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.435440, 32.008003, 41.203751>,  <40.747238, 32.254768, 41.247215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.435440, 32.008003, 41.203751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203528, 0.413488, -0.887471,
		0.592422, -0.669663, -0.447870,
		-0.779495, -0.616911, -0.108665,
		40.201591, 31.822929, 41.171150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.837814, 31.844889, 40.587788>,  <40.747238, 32.254768, 41.247215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.837814, 31.844889, 40.587788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.462677, 31.931065, 40.696629>,  <40.237595, 31.982771, 40.761932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.462677, 31.931065, 40.696629>,  <40.837814, 31.844889, 40.587788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.462677, 31.931065, 40.696629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137300, 0.489733, -0.860994,
		-0.318749, -0.844835, -0.429712,
		-0.937842, 0.215442, 0.272098,
		40.181324, 31.995697, 40.778259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.439217, 31.696001, 40.010933>,  <40.837814, 31.844889, 40.587788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.439217, 31.696001, 40.010933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.214012, 31.953445, 40.218311>,  <40.078888, 32.107910, 40.342739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.214012, 31.953445, 40.218311>,  <40.439217, 31.696001, 40.010933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.214012, 31.953445, 40.218311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299416, 0.425849, -0.853817,
		-0.770303, -0.635940, -0.047051,
		-0.563013, 0.643609, 0.518443,
		40.045109, 32.146530, 40.373844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.788502, 31.689871, 39.838413>,  <40.439217, 31.696001, 40.010933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.788502, 31.689871, 39.838413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.852947, 32.061459, 39.971714>,  <39.891617, 32.284412, 40.051693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.852947, 32.061459, 39.971714>,  <39.788502, 31.689871, 39.838413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.852947, 32.061459, 39.971714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227957, 0.363557, -0.903251,
		-0.960249, 0.069561, 0.270340,
		0.161115, 0.928971, 0.333248,
		39.901283, 32.340149, 40.071690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.520058, 32.102581, 39.361183>,  <39.788502, 31.689871, 39.838413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.520058, 32.102581, 39.361183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.681175, 32.398876, 39.576241>,  <39.777847, 32.576653, 39.705276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.681175, 32.398876, 39.576241>,  <39.520058, 32.102581, 39.361183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.681175, 32.398876, 39.576241> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011140, 0.591325, -0.806356,
		-0.915223, 0.318805, 0.246434,
		0.402793, 0.740741, 0.537643,
		39.802013, 32.621098, 39.737534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.271862, 32.626408, 39.050564>,  <39.520058, 32.102581, 39.361183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.271862, 32.626408, 39.050564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.563900, 32.779263, 39.277168>,  <39.739120, 32.870975, 39.413132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.563900, 32.779263, 39.277168>,  <39.271862, 32.626408, 39.050564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.563900, 32.779263, 39.277168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190000, 0.682820, -0.705449,
		-0.656406, 0.622679, 0.425914,
		0.730090, 0.382137, 0.566515,
		39.782928, 32.893902, 39.447124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.179466, 33.391144, 39.086388>,  <39.271862, 32.626408, 39.050564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.179466, 33.391144, 39.086388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.566547, 33.326416, 39.163715>,  <39.798794, 33.287579, 39.210110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.566547, 33.326416, 39.163715>,  <39.179466, 33.391144, 39.086388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.566547, 33.326416, 39.163715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248999, 0.733425, -0.632524,
		-0.039430, 0.660230, 0.750028,
		0.967701, -0.161816, 0.193316,
		39.856857, 33.277870, 39.221710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.386097, 34.013603, 38.913242>,  <39.179466, 33.391144, 39.086388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.386097, 34.013603, 38.913242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.720150, 33.793777, 38.922440>,  <39.920582, 33.661880, 38.927956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.720150, 33.793777, 38.922440>,  <39.386097, 34.013603, 38.913242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.720150, 33.793777, 38.922440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406388, 0.588315, -0.699095,
		0.370673, 0.593182, 0.714659,
		0.835135, -0.549565, 0.022990,
		39.970692, 33.628906, 38.929337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.955402, 34.469669, 38.925014>,  <39.386097, 34.013603, 38.913242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.955402, 34.469669, 38.925014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.108105, 34.139385, 38.758900>,  <40.199726, 33.941216, 38.659233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.108105, 34.139385, 38.758900>,  <39.955402, 34.469669, 38.925014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.108105, 34.139385, 38.758900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268601, 0.529034, -0.804970,
		0.884373, 0.195758, 0.423749,
		0.381757, -0.825713, -0.415283,
		40.222633, 33.891670, 38.634315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.688034, 34.633392, 38.565178>,  <39.955402, 34.469669, 38.925014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.688034, 34.633392, 38.565178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.509697, 34.309822, 38.411884>,  <40.402695, 34.115681, 38.319908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.509697, 34.309822, 38.411884>,  <40.688034, 34.633392, 38.565178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.509697, 34.309822, 38.411884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139297, 0.360220, -0.922409,
		0.884206, -0.464632, -0.047920,
		-0.445842, -0.808924, -0.383231,
		40.375946, 34.067146, 38.296917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.175659, 34.326649, 38.134178>,  <40.688034, 34.633392, 38.565178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.175659, 34.326649, 38.134178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.804264, 34.223003, 38.027771>,  <40.581425, 34.160816, 37.963924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.804264, 34.223003, 38.027771>,  <41.175659, 34.326649, 38.134178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.804264, 34.223003, 38.027771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157081, 0.375070, -0.913591,
		0.336495, -0.890047, -0.307548,
		-0.928492, -0.259109, -0.266019,
		40.525719, 34.145271, 37.947964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.798794, 34.749538, 37.970554>,  <41.175659, 34.326649, 38.134178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.798794, 34.749538, 37.970554> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.972717, 35.095726, 37.871029>,  <42.077072, 35.303436, 37.811314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.972717, 35.095726, 37.871029>,  <41.798794, 34.749538, 37.970554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.972717, 35.095726, 37.871029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.827474, -0.274980, 0.489564,
		0.355282, -0.418755, -0.835714,
		0.434812, 0.865465, -0.248814,
		42.103161, 35.355366, 37.796383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.501007, 34.626465, 37.667221>,  <41.798794, 34.749538, 37.970554>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.501007, 34.626465, 37.667221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.508633, 34.996628, 37.818623>,  <42.513206, 35.218723, 37.909462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.508633, 34.996628, 37.818623>,  <42.501007, 34.626465, 37.667221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.508633, 34.996628, 37.818623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.828579, -0.226490, 0.512015,
		0.559548, 0.303860, -0.771087,
		0.019063, 0.925403, 0.378504,
		42.514351, 35.274250, 37.932175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.923817, 35.023129, 37.103905>,  <42.501007, 34.626465, 37.667221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.923817, 35.023129, 37.103905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.569225, 35.202099, 37.151188>,  <42.356472, 35.309483, 37.179558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.569225, 35.202099, 37.151188>,  <42.923817, 35.023129, 37.103905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.569225, 35.202099, 37.151188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460488, 0.827435, 0.321408,
		0.045995, 0.339354, -0.939533,
		-0.886474, 0.447427, 0.118211,
		42.303284, 35.336327, 37.186649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.575932, 34.545780, 36.630692>,  <42.923817, 35.023129, 37.103905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.575932, 34.545780, 36.630692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.409145, 34.184982, 36.585892>,  <42.309074, 33.968502, 36.559010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.409145, 34.184982, 36.585892>,  <42.575932, 34.545780, 36.630692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.409145, 34.184982, 36.585892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.899887, 0.392344, 0.190444,
		-0.127836, 0.180199, -0.975288,
		-0.416967, -0.901995, -0.112004,
		42.284054, 33.914383, 36.552292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.034641, 34.547722, 36.006462>,  <42.575932, 34.545780, 36.630692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.034641, 34.547722, 36.006462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.023800, 34.906204, 36.183590>,  <43.017296, 35.121292, 36.289867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.023800, 34.906204, 36.183590>,  <43.034641, 34.547722, 36.006462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.023800, 34.906204, 36.183590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.685067, -0.305943, 0.661121,
		0.727975, 0.321281, -0.605665,
		-0.027107, 0.896202, 0.442818,
		43.015667, 35.175064, 36.316437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.740559, 34.995136, 36.020145>,  <43.034641, 34.547722, 36.006462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.740559, 34.995136, 36.020145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.488060, 35.069908, 36.321232>,  <43.336559, 35.114773, 36.501884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.488060, 35.069908, 36.321232>,  <43.740559, 34.995136, 36.020145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.488060, 35.069908, 36.321232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.721426, -0.214770, 0.658345,
		0.284726, 0.958609, 0.000716,
		-0.631249, 0.186931, 0.752716,
		43.298687, 35.125988, 36.547047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.911606, 35.548244, 36.480438>,  <43.740559, 34.995136, 36.020145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.911606, 35.548244, 36.480438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.674915, 35.321198, 36.709412>,  <43.532902, 35.184971, 36.846794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.674915, 35.321198, 36.709412>,  <43.911606, 35.548244, 36.480438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.674915, 35.321198, 36.709412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.800989, -0.333820, 0.496971,
		-0.090998, 0.752581, 0.652182,
		-0.591722, -0.567615, 0.572432,
		43.497398, 35.150913, 36.881142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.991222, 35.696609, 37.230167>,  <43.911606, 35.548244, 36.480438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.991222, 35.696609, 37.230167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.862068, 35.325237, 37.156677>,  <43.784576, 35.102413, 37.112583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.862068, 35.325237, 37.156677>,  <43.991222, 35.696609, 37.230167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.862068, 35.325237, 37.156677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.783422, -0.371110, 0.498526,
		-0.531030, 0.017034, 0.847182,
		-0.322890, -0.928433, -0.183725,
		43.765202, 35.046707, 37.101559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.467625, 35.419739, 37.596809>,  <43.991222, 35.696609, 37.230167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.467625, 35.419739, 37.596809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.271759, 35.106075, 37.444324>,  <44.154240, 34.917877, 37.352833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.271759, 35.106075, 37.444324>,  <44.467625, 35.419739, 37.596809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.271759, 35.106075, 37.444324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.720650, -0.610098, 0.329309,
		-0.490808, -0.113470, 0.863847,
		-0.489665, -0.784159, -0.381213,
		44.124859, 34.870827, 37.329960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.140568, 34.841805, 38.079727>,  <44.467625, 35.419739, 37.596809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.140568, 34.841805, 38.079727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.268543, 34.702896, 37.727127>,  <44.345329, 34.619549, 37.515568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.268543, 34.702896, 37.727127>,  <44.140568, 34.841805, 38.079727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.268543, 34.702896, 37.727127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.704970, -0.534334, 0.466373,
		-0.632975, -0.770641, 0.073864,
		0.319938, -0.347274, -0.881499,
		44.364525, 34.598713, 37.462677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.099693, 34.200203, 38.151756>,  <44.140568, 34.841805, 38.079727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.099693, 34.200203, 38.151756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.382206, 34.228683, 37.870022>,  <44.551716, 34.245770, 37.700981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.382206, 34.228683, 37.870022>,  <44.099693, 34.200203, 38.151756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.382206, 34.228683, 37.870022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555879, -0.671855, 0.489499,
		-0.438362, -0.737252, -0.514099,
		0.706284, 0.071199, -0.704339,
		44.594090, 34.250042, 37.658722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.297012, 33.602921, 37.759209>,  <44.099693, 34.200203, 38.151756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.297012, 33.602921, 37.759209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.622826, 33.834118, 37.779041>,  <44.818314, 33.972836, 37.790943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.622826, 33.834118, 37.779041>,  <44.297012, 33.602921, 37.759209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.622826, 33.834118, 37.779041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538333, -0.784949, 0.306681,
		0.216180, -0.223109, -0.950520,
		0.814533, 0.577995, 0.049583,
		44.867184, 34.007515, 37.793915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.849968, 33.403023, 37.220886>,  <44.297012, 33.602921, 37.759209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.849968, 33.403023, 37.220886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.030674, 33.586308, 37.527077>,  <45.139095, 33.696278, 37.710789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.030674, 33.586308, 37.527077>,  <44.849968, 33.403023, 37.220886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.030674, 33.586308, 37.527077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.704054, -0.710082, 0.009542,
		0.547921, 0.534624, -0.643397,
		0.451763, 0.458215, 0.765473,
		45.166203, 33.723774, 37.756718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.199009, 34.075027, 36.896576>,  <44.849968, 33.403023, 37.220886>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.199009, 34.075027, 36.896576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.017372, 34.045570, 36.541416>,  <44.908390, 34.027897, 36.328320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.017372, 34.045570, 36.541416>,  <45.199009, 34.075027, 36.896576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.017372, 34.045570, 36.541416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229209, 0.953380, -0.196292,
		0.860964, -0.292651, -0.416048,
		-0.454097, -0.073638, -0.887904,
		44.881142, 34.023479, 36.275043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.654156, 34.421665, 36.405315>,  <45.199009, 34.075027, 36.896576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.654156, 34.421665, 36.405315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.265469, 34.422878, 36.310860>,  <45.032257, 34.423607, 36.254189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.265469, 34.422878, 36.310860>,  <45.654156, 34.421665, 36.405315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.265469, 34.422878, 36.310860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071690, 0.956518, -0.282725,
		0.225010, -0.291657, -0.929681,
		-0.971716, 0.003033, -0.236135,
		44.973953, 34.423790, 36.240021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.153805, 34.948982, 36.007439>,  <45.654156, 34.421665, 36.405315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.153805, 34.948982, 36.007439> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.463486, 35.111187, 36.201824>,  <45.649296, 35.208511, 36.318455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.463486, 35.111187, 36.201824>,  <45.153805, 34.948982, 36.007439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.463486, 35.111187, 36.201824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406471, 0.270000, -0.872858,
		-0.485165, 0.873304, 0.044207,
		0.774207, 0.405512, 0.485967,
		45.695747, 35.232841, 36.347614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.215179, 35.646404, 35.806858>,  <45.153805, 34.948982, 36.007439>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.215179, 35.646404, 35.806858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.563755, 35.480865, 35.912182>,  <45.772900, 35.381542, 35.975376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.563755, 35.480865, 35.912182>,  <45.215179, 35.646404, 35.806858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.563755, 35.480865, 35.912182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375145, 0.216462, -0.901338,
		0.316015, 0.884239, 0.343883,
		0.871436, -0.413842, 0.263313,
		45.825188, 35.356712, 35.991177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.729950, 36.131992, 35.685688>,  <45.215179, 35.646404, 35.806858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.729950, 36.131992, 35.685688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.884674, 35.764484, 35.654106>,  <45.977509, 35.543980, 35.635159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.884674, 35.764484, 35.654106>,  <45.729950, 36.131992, 35.685688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.884674, 35.764484, 35.654106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261094, 0.191232, -0.946182,
		0.884426, 0.345375, 0.313857,
		0.386807, -0.918774, -0.078955,
		46.000717, 35.488853, 35.630421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.291279, 36.196995, 35.336456>,  <45.729950, 36.131992, 35.685688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.291279, 36.196995, 35.336456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.217461, 35.806355, 35.292297>,  <46.173172, 35.571968, 35.265800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.217461, 35.806355, 35.292297>,  <46.291279, 36.196995, 35.336456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.217461, 35.806355, 35.292297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093732, 0.094325, -0.991119,
		0.978345, -0.193252, 0.074132,
		-0.184543, -0.976605, -0.110396,
		46.162098, 35.513374, 35.259178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.866882, 35.894073, 34.886215>,  <46.291279, 36.196995, 35.336456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.866882, 35.894073, 34.886215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.526222, 35.691467, 34.832367>,  <46.321827, 35.569904, 34.800056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.526222, 35.691467, 34.832367>,  <46.866882, 35.894073, 34.886215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.526222, 35.691467, 34.832367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184941, -0.050100, -0.981472,
		0.490390, -0.860772, 0.136344,
		-0.851654, -0.506519, -0.134623,
		46.270725, 35.539513, 34.791981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.358109, 35.501286, 35.234650>,  <46.866882, 35.894073, 34.886215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.358109, 35.501286, 35.234650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.417397, 35.175262, 35.458691>,  <47.452969, 34.979649, 35.593117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.417397, 35.175262, 35.458691>,  <47.358109, 35.501286, 35.234650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.417397, 35.175262, 35.458691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466018, -0.441976, -0.766476,
		0.872272, 0.374626, 0.314320,
		0.148220, -0.815054, 0.560105,
		47.461861, 34.930748, 35.626720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.030125, 35.306149, 35.306290>,  <47.358109, 35.501286, 35.234650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.030125, 35.306149, 35.306290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.799000, 34.979748, 35.312992>,  <47.660324, 34.783909, 35.317013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.799000, 34.979748, 35.312992>,  <48.030125, 35.306149, 35.306290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.799000, 34.979748, 35.312992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295478, -0.228273, -0.927677,
		0.760806, -0.531073, 0.373008,
		-0.577812, -0.815998, 0.016751,
		47.625656, 34.734947, 35.318016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<40.061237, 34.716343, 26.375597> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.712456, 34.580742, 26.234306>,  <39.503185, 34.499382, 26.149532>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.712456, 34.580742, 26.234306>,  <40.061237, 34.716343, 26.375597>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.712456, 34.580742, 26.234306> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273138, -0.261928, 0.925629,
		-0.406308, 0.903589, 0.135796,
		-0.871957, -0.339000, -0.353228,
		39.450871, 34.479042, 26.128338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.442593, 35.032127, 26.801529>,  <40.061237, 34.716343, 26.375597>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.442593, 35.032127, 26.801529> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.300900, 34.707340, 26.615957>,  <39.215885, 34.512470, 26.504614>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.300900, 34.707340, 26.615957>,  <39.442593, 35.032127, 26.801529>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.300900, 34.707340, 26.615957> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517203, -0.243213, 0.820578,
		-0.779115, 0.530622, -0.333796,
		-0.354233, -0.811966, -0.463930,
		39.194630, 34.463749, 26.476778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.916367, 35.037006, 27.152113>,  <39.442593, 35.032127, 26.801529>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.916367, 35.037006, 27.152113> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.937210, 34.664902, 27.006840>,  <38.949715, 34.441639, 26.919676>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.937210, 34.664902, 27.006840>,  <38.916367, 35.037006, 27.152113>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.937210, 34.664902, 27.006840> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.548852, -0.330503, 0.767808,
		-0.834294, 0.159324, -0.527797,
		0.052108, -0.930260, -0.363182,
		38.952843, 34.385822, 26.897884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.293354, 34.852615, 27.308081>,  <38.916367, 35.037006, 27.152113>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.293354, 34.852615, 27.308081> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.505508, 34.518398, 27.250729>,  <38.632801, 34.317867, 27.216316>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.505508, 34.518398, 27.250729>,  <38.293354, 34.852615, 27.308081>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.505508, 34.518398, 27.250729> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509242, -0.449227, 0.734076,
		-0.677763, -0.316329, -0.663757,
		0.530387, -0.835542, -0.143381,
		38.664623, 34.267735, 27.207714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.805290, 34.401752, 27.403807>,  <38.293354, 34.852615, 27.308081>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.805290, 34.401752, 27.403807> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.117039, 34.153748, 27.439945>,  <38.304089, 34.004944, 27.461628>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.117039, 34.153748, 27.439945>,  <37.805290, 34.401752, 27.403807>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.117039, 34.153748, 27.439945> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512686, -0.548173, 0.660802,
		-0.360178, -0.561332, -0.745103,
		0.779375, -0.620009, 0.090347,
		38.350853, 33.967743, 27.467049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.661785, 33.786568, 27.187246>,  <37.805290, 34.401752, 27.403807>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.661785, 33.786568, 27.187246> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.956467, 33.737194, 27.453186>,  <38.133278, 33.707569, 27.612751>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.956467, 33.737194, 27.453186>,  <37.661785, 33.786568, 27.187246>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.956467, 33.737194, 27.453186> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.631999, -0.475370, 0.612046,
		0.240502, -0.871084, -0.428219,
		0.736706, -0.123436, 0.664852,
		38.177479, 33.700165, 27.652641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.407887, 33.232510, 27.594242>,  <37.661785, 33.786568, 27.187246>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.407887, 33.232510, 27.594242> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.730152, 33.332752, 27.808939>,  <37.923512, 33.392899, 27.937757>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.730152, 33.332752, 27.808939>,  <37.407887, 33.232510, 27.594242>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.730152, 33.332752, 27.808939> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443382, -0.345752, 0.826963,
		0.392825, -0.904240, -0.167446,
		0.805668, 0.250609, 0.536744,
		37.971851, 33.407936, 27.969963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.641567, 32.589752, 27.903063>,  <37.407887, 33.232510, 27.594242>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.641567, 32.589752, 27.903063> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.784962, 32.897346, 28.114780>,  <37.870998, 33.081902, 28.241812>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.784962, 32.897346, 28.114780>,  <37.641567, 32.589752, 27.903063>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.784962, 32.897346, 28.114780> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277358, -0.453644, 0.846924,
		0.891380, -0.450416, 0.050657,
		0.358488, 0.768981, 0.529296,
		37.892509, 33.128040, 28.273569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.894123, 32.276920, 28.519493>,  <37.641567, 32.589752, 27.903063>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.894123, 32.276920, 28.519493> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.864891, 32.662029, 28.623589>,  <37.847351, 32.893097, 28.686047>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.864891, 32.662029, 28.623589>,  <37.894123, 32.276920, 28.519493>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.864891, 32.662029, 28.623589> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116707, -0.267399, 0.956492,
		0.990474, 0.039528, 0.131904,
		-0.073079, 0.962775, 0.260239,
		37.842968, 32.950863, 28.701660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.294456, 32.446735, 29.170357>,  <37.894123, 32.276920, 28.519493>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.294456, 32.446735, 29.170357> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.034821, 32.751022, 29.169897>,  <37.879040, 32.933594, 29.169621>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.034821, 32.751022, 29.169897>,  <38.294456, 32.446735, 29.170357>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.034821, 32.751022, 29.169897> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107940, -0.090604, 0.990020,
		0.753018, 0.642733, 0.140922,
		-0.649086, 0.760714, -0.001150,
		37.840096, 32.979237, 29.169552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.406029, 32.727493, 29.924580>,  <38.294456, 32.446735, 29.170357>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.406029, 32.727493, 29.924580> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.062778, 32.865498, 29.772476>,  <37.856831, 32.948299, 29.681215>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.062778, 32.865498, 29.772476>,  <38.406029, 32.727493, 29.924580>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.062778, 32.865498, 29.772476> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388932, 0.046713, 0.920081,
		0.335202, 0.937435, 0.094101,
		-0.858121, 0.345012, -0.380257,
		37.805344, 32.969002, 29.658400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.287930, 33.371105, 30.287045>,  <38.406029, 32.727493, 29.924580>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.287930, 33.371105, 30.287045> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.957535, 33.209293, 30.130020>,  <37.759300, 33.112206, 30.035805>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.957535, 33.209293, 30.130020>,  <38.287930, 33.371105, 30.287045>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.957535, 33.209293, 30.130020> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434815, 0.014052, 0.900410,
		-0.358730, 0.914415, -0.187504,
		-0.825984, -0.404533, -0.392561,
		37.709740, 33.087933, 30.012253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.685574, 33.706001, 30.719450>,  <38.287930, 33.371105, 30.287045>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.685574, 33.706001, 30.719450> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.575039, 33.374531, 30.524748>,  <37.508717, 33.175648, 30.407927>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.575039, 33.374531, 30.524748>,  <37.685574, 33.706001, 30.719450>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.575039, 33.374531, 30.524748> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.519788, -0.297138, 0.800955,
		-0.808367, 0.474345, -0.348626,
		-0.276339, -0.828677, -0.486755,
		37.492138, 33.125927, 30.378721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.938732, 33.526741, 30.992702>,  <37.685574, 33.706001, 30.719450>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.938732, 33.526741, 30.992702> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.079098, 33.198017, 30.813154>,  <37.163319, 33.000782, 30.705425>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.079098, 33.198017, 30.813154>,  <36.938732, 33.526741, 30.992702>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.079098, 33.198017, 30.813154> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280818, -0.549646, 0.786784,
		-0.893309, -0.150042, -0.423658,
		0.350913, -0.821813, -0.448870,
		37.184372, 32.951473, 30.678493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.629208, 33.069786, 31.295744>,  <36.938732, 33.526741, 30.992702>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.629208, 33.069786, 31.295744> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.919628, 32.842770, 31.140436>,  <37.093880, 32.706562, 31.047253>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.919628, 32.842770, 31.140436>,  <36.629208, 33.069786, 31.295744>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.919628, 32.842770, 31.140436> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099858, -0.645673, 0.757057,
		-0.680351, -0.510890, -0.525464,
		0.726051, -0.567537, -0.388268,
		37.137444, 32.672508, 31.023956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.318245, 32.516674, 31.339865>,  <36.629208, 33.069786, 31.295744>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.318245, 32.516674, 31.339865> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.708683, 32.438915, 31.300978>,  <36.942944, 32.392258, 31.277645>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.708683, 32.438915, 31.300978>,  <36.318245, 32.516674, 31.339865>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.708683, 32.438915, 31.300978> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059500, -0.669172, 0.740722,
		-0.209051, -0.717229, -0.664741,
		0.976093, -0.194401, -0.097216,
		37.001511, 32.380596, 31.271812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.397118, 31.851135, 31.663504>,  <36.318245, 32.516674, 31.339865>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.397118, 31.851135, 31.663504> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.776028, 31.978935, 31.653788>,  <37.003372, 32.055614, 31.647959>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.776028, 31.978935, 31.653788>,  <36.397118, 31.851135, 31.663504>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.776028, 31.978935, 31.653788> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182484, -0.475625, 0.860512,
		0.263382, -0.819573, -0.508851,
		0.947275, 0.319501, -0.024288,
		37.060211, 32.074787, 31.646502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.716129, 31.278484, 31.860825>,  <36.397118, 31.851135, 31.663504>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.716129, 31.278484, 31.860825> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.956982, 31.593370, 31.914089>,  <37.101494, 31.782301, 31.946047>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.956982, 31.593370, 31.914089>,  <36.716129, 31.278484, 31.860825>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.956982, 31.593370, 31.914089> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289503, -0.370712, 0.882474,
		0.744060, -0.492816, -0.451119,
		0.602132, 0.787214, 0.133160,
		37.137623, 31.829535, 31.954037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.360725, 30.953848, 32.094181>,  <36.716129, 31.278484, 31.860825>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.360725, 30.953848, 32.094181> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.367302, 31.339844, 32.198891>,  <37.371246, 31.571442, 32.261719>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.367302, 31.339844, 32.198891>,  <37.360725, 30.953848, 32.094181>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.367302, 31.339844, 32.198891> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332930, -0.252157, 0.908611,
		0.942808, 0.072214, -0.325419,
		0.016442, 0.964988, 0.261778,
		37.372234, 31.629341, 32.277424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.995480, 31.032232, 32.467556>,  <37.360725, 30.953848, 32.094181>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.995480, 31.032232, 32.467556> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.777554, 31.347603, 32.581795>,  <37.646797, 31.536825, 32.650337>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.777554, 31.347603, 32.581795>,  <37.995480, 31.032232, 32.467556>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.777554, 31.347603, 32.581795> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249600, -0.172668, 0.952830,
		0.800549, 0.590399, -0.102720,
		-0.544813, 0.788426, 0.285593,
		37.614109, 31.584131, 32.667473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.487385, 31.465862, 32.911278>,  <37.995480, 31.032232, 32.467556>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.487385, 31.465862, 32.911278> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.105335, 31.548204, 32.996464>,  <37.876106, 31.597610, 33.047577>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.105335, 31.548204, 32.996464>,  <38.487385, 31.465862, 32.911278>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.105335, 31.548204, 32.996464> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164881, -0.227775, 0.959652,
		0.246058, 0.951705, 0.183612,
		-0.955128, 0.205855, 0.212964,
		37.818798, 31.609961, 33.060352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.537926, 31.892996, 33.492805>,  <38.487385, 31.465862, 32.911278>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.537926, 31.892996, 33.492805> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.174595, 31.725708, 33.490406>,  <37.956596, 31.625336, 33.488968>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.174595, 31.725708, 33.490406>,  <38.537926, 31.892996, 33.492805>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.174595, 31.725708, 33.490406> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086217, -0.201252, 0.975738,
		-0.409279, 0.885771, 0.218860,
		-0.908327, -0.418219, -0.005999,
		37.902096, 31.600243, 33.488605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.001068, 31.672237, 33.992443>,  <38.537926, 31.892996, 33.492805>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.001068, 31.672237, 33.992443> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.288044, 31.791920, 34.244080>,  <39.460228, 31.863729, 34.395061>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.288044, 31.791920, 34.244080>,  <39.001068, 31.672237, 33.992443>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.288044, 31.791920, 34.244080> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458757, 0.476667, -0.749887,
		-0.524241, 0.826597, 0.204715,
		0.717436, 0.299207, 0.629096,
		39.503273, 31.881681, 34.432808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.116825, 32.384796, 33.847580>,  <39.001068, 31.672237, 33.992443>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.116825, 32.384796, 33.847580> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.456001, 32.269897, 34.025787>,  <39.659508, 32.200958, 34.132710>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.456001, 32.269897, 34.025787>,  <39.116825, 32.384796, 33.847580>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.456001, 32.269897, 34.025787> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528125, 0.385529, -0.756605,
		0.045574, 0.876845, 0.478608,
		0.847943, -0.287246, 0.445514,
		39.710384, 32.183723, 34.159443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.412346, 33.008446, 34.077545>,  <39.116825, 32.384796, 33.847580>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.412346, 33.008446, 34.077545> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.696037, 32.729259, 34.037876>,  <39.866253, 32.561749, 34.014076>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.696037, 32.729259, 34.037876>,  <39.412346, 33.008446, 34.077545>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.696037, 32.729259, 34.037876> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415912, 0.527843, -0.740540,
		0.569216, 0.483969, 0.664655,
		0.709232, -0.697965, -0.099168,
		39.908806, 32.519871, 34.008125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.050701, 33.461998, 34.039906>,  <39.412346, 33.008446, 34.077545>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.050701, 33.461998, 34.039906> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.168884, 33.106983, 33.898495>,  <40.239796, 32.893974, 33.813648>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.168884, 33.106983, 33.898495>,  <40.050701, 33.461998, 34.039906>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.168884, 33.106983, 33.898495> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558768, 0.460696, -0.689592,
		0.774908, 0.006206, 0.632044,
		0.295460, -0.887536, -0.353529,
		40.257523, 32.840721, 33.792435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.638069, 33.620499, 33.692402>,  <40.050701, 33.461998, 34.039906>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.638069, 33.620499, 33.692402> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.588539, 33.246742, 33.558788>,  <40.558823, 33.022488, 33.478619>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.588539, 33.246742, 33.558788>,  <40.638069, 33.620499, 33.692402>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.588539, 33.246742, 33.558788> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.682744, 0.164059, -0.712001,
		0.720089, -0.316226, 0.617635,
		-0.123824, -0.934391, -0.334038,
		40.551392, 32.966427, 33.458576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.287724, 33.394474, 33.468533>,  <40.638069, 33.620499, 33.692402>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.287724, 33.394474, 33.468533> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.997410, 33.204819, 33.269161>,  <40.823223, 33.091026, 33.149540>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.997410, 33.204819, 33.269161>,  <41.287724, 33.394474, 33.468533>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.997410, 33.204819, 33.269161> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319627, 0.409166, -0.854647,
		0.609164, -0.779598, -0.145417,
		-0.725781, -0.474141, -0.498430,
		40.779675, 33.062576, 33.119633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.613464, 33.067154, 32.867687>,  <41.287724, 33.394474, 33.468533>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.613464, 33.067154, 32.867687> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.223293, 33.071419, 32.779667>,  <40.989189, 33.073978, 32.726856>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.223293, 33.071419, 32.779667>,  <41.613464, 33.067154, 32.867687>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.223293, 33.071419, 32.779667> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204887, 0.411037, -0.888296,
		0.080975, -0.911556, -0.403123,
		-0.975431, 0.010665, -0.220050,
		40.930664, 33.074619, 32.713654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.490704, 32.795582, 32.121185>,  <41.613464, 33.067154, 32.867687>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.490704, 32.795582, 32.121185> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.143337, 32.973629, 32.208565>,  <40.934917, 33.080460, 32.260994>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.143337, 32.973629, 32.208565>,  <41.490704, 32.795582, 32.121185>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.143337, 32.973629, 32.208565> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084676, 0.300966, -0.949868,
		-0.488553, -0.843378, -0.223672,
		-0.868416, 0.445121, 0.218452,
		40.882812, 33.107166, 32.274101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.015923, 32.544029, 31.712263>,  <41.490704, 32.795582, 32.121185>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.015923, 32.544029, 31.712263> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.892159, 32.905697, 31.830069>,  <40.817898, 33.122700, 31.900753>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.892159, 32.905697, 31.830069>,  <41.015923, 32.544029, 31.712263>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.892159, 32.905697, 31.830069> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023718, 0.302279, -0.952924,
		-0.950632, -0.301832, -0.072084,
		-0.309413, 0.904171, 0.294514,
		40.799335, 33.176949, 31.918423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.466007, 32.688892, 31.314739>,  <41.015923, 32.544029, 31.712263>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.466007, 32.688892, 31.314739> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.580753, 33.042671, 31.461964>,  <40.649601, 33.254936, 31.550299>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.580753, 33.042671, 31.461964>,  <40.466007, 32.688892, 31.314739>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.580753, 33.042671, 31.461964> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026607, 0.391416, -0.919829,
		-0.957601, 0.254074, 0.135816,
		0.286866, 0.884443, 0.368060,
		40.666813, 33.308002, 31.572382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.081005, 33.171375, 30.931444>,  <40.466007, 32.688892, 31.314739>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.081005, 33.171375, 30.931444> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.377148, 33.379894, 31.101208>,  <40.554832, 33.505005, 31.203066>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.377148, 33.379894, 31.101208>,  <40.081005, 33.171375, 30.931444>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.377148, 33.379894, 31.101208> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031323, 0.603920, -0.796429,
		-0.671485, 0.602935, 0.430787,
		0.740355, 0.521297, 0.424409,
		40.599255, 33.536282, 31.228531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.940876, 33.927494, 30.796749>,  <40.081005, 33.171375, 30.931444>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.940876, 33.927494, 30.796749> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.329067, 33.898640, 30.888817>,  <40.561981, 33.881325, 30.944057>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.329067, 33.898640, 30.888817>,  <39.940876, 33.927494, 30.796749>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.329067, 33.898640, 30.888817> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219139, 0.662431, -0.716354,
		-0.100793, 0.745641, 0.658681,
		0.970473, -0.072140, 0.230167,
		40.620209, 33.876999, 30.957867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.112694, 34.603024, 30.916487>,  <39.940876, 33.927494, 30.796749>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.112694, 34.603024, 30.916487> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.447056, 34.406822, 30.817955>,  <40.647671, 34.289101, 30.758837>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.447056, 34.406822, 30.817955>,  <40.112694, 34.603024, 30.916487>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.447056, 34.406822, 30.817955> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202058, 0.692261, -0.692783,
		0.510333, 0.529326, 0.677772,
		0.835903, -0.490499, -0.246329,
		40.697826, 34.259674, 30.744057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.601299, 35.071831, 30.907501>,  <40.112694, 34.603024, 30.916487>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.601299, 35.071831, 30.907501> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.751030, 34.770454, 30.691277>,  <40.840870, 34.589630, 30.561543>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.751030, 34.770454, 30.691277>,  <40.601299, 35.071831, 30.907501>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.751030, 34.770454, 30.691277> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333982, 0.653365, -0.679389,
		0.865063, 0.073778, 0.496209,
		0.374330, -0.753439, -0.540562,
		40.863327, 34.544422, 30.529108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.379192, 35.163948, 30.749254>,  <40.601299, 35.071831, 30.907501>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.379192, 35.163948, 30.749254> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.191456, 34.938339, 30.477491>,  <41.078812, 34.802975, 30.314434>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.191456, 34.938339, 30.477491>,  <41.379192, 35.163948, 30.749254>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.191456, 34.938339, 30.477491> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351279, 0.586649, -0.729689,
		0.810135, -0.581137, -0.077212,
		-0.469346, -0.564024, -0.679406,
		41.050652, 34.769131, 30.273670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.868221, 35.256233, 30.257275>,  <41.379192, 35.163948, 30.749254>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.868221, 35.256233, 30.257275> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.569218, 35.076660, 30.061443>,  <41.389816, 34.968918, 29.943945>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.569218, 35.076660, 30.061443>,  <41.868221, 35.256233, 30.257275>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.569218, 35.076660, 30.061443> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079709, 0.671093, -0.737076,
		0.659437, -0.590004, -0.465873,
		-0.747522, -0.448921, -0.489572,
		41.344963, 34.941982, 29.914570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.173904, 35.221882, 29.589375>,  <41.868221, 35.256233, 30.257275>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.173904, 35.221882, 29.589375> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.775131, 35.199986, 29.566973>,  <41.535870, 35.186848, 29.553532>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.775131, 35.199986, 29.566973>,  <42.173904, 35.221882, 29.589375>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.775131, 35.199986, 29.566973> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019197, 0.522485, -0.852432,
		0.075921, -0.850889, -0.519830,
		-0.996929, -0.054738, -0.056002,
		41.476051, 35.183563, 29.550173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.829041, 34.750809, 29.056747>,  <42.173904, 35.221882, 29.589375>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.829041, 34.750809, 29.056747> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.593887, 35.063629, 29.139494>,  <41.452793, 35.251320, 29.189142>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.593887, 35.063629, 29.139494>,  <41.829041, 34.750809, 29.056747>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.593887, 35.063629, 29.139494> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096659, 0.321800, -0.941861,
		-0.803149, -0.533710, -0.264773,
		-0.587884, 0.782048, 0.206865,
		41.417522, 35.298244, 29.201553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<41.245625, 34.481804, 28.225063> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.145481, 34.822834, 28.408554>,  <41.085396, 35.027454, 28.518648>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.145481, 34.822834, 28.408554>,  <41.245625, 34.481804, 28.225063>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.145481, 34.822834, 28.408554> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128251, 0.440433, -0.888578,
		-0.959621, -0.281294, -0.000922,
		-0.250358, 0.852580, 0.458725,
		41.070374, 35.078609, 28.546171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.582623, 34.744621, 27.947517>,  <41.245625, 34.481804, 28.225063>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.582623, 34.744621, 27.947517> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.807755, 35.043613, 28.088655>,  <40.942833, 35.223007, 28.173338>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.807755, 35.043613, 28.088655>,  <40.582623, 34.744621, 27.947517>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.807755, 35.043613, 28.088655> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278151, 0.573255, -0.770721,
		-0.778370, 0.335636, 0.530555,
		0.562825, 0.747480, 0.352847,
		40.976601, 35.267857, 28.194510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.253902, 35.331516, 27.628431>,  <40.582623, 34.744621, 27.947517>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.253902, 35.331516, 27.628431> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.584377, 35.500214, 27.777861>,  <40.782661, 35.601433, 27.867517>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.584377, 35.500214, 27.777861>,  <40.253902, 35.331516, 27.628431>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.584377, 35.500214, 27.777861> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009245, 0.673123, -0.739473,
		-0.563326, 0.607486, 0.560022,
		0.826183, 0.421741, 0.373571,
		40.832233, 35.626736, 27.889933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.194992, 35.986412, 27.552362>,  <40.253902, 35.331516, 27.628431>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.194992, 35.986412, 27.552362> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.593586, 35.958775, 27.533413>,  <40.832741, 35.942192, 27.522043>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.593586, 35.958775, 27.533413>,  <40.194992, 35.986412, 27.552362>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.593586, 35.958775, 27.533413> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002113, 0.544549, -0.838726,
		0.083749, 0.835878, 0.542489,
		0.996485, -0.069096, -0.047372,
		40.892532, 35.938046, 27.519201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.525379, 36.661697, 27.285303>,  <40.194992, 35.986412, 27.552362>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.525379, 36.661697, 27.285303> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.800472, 36.378342, 27.221788>,  <40.965527, 36.208328, 27.183680>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.800472, 36.378342, 27.221788>,  <40.525379, 36.661697, 27.285303>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.800472, 36.378342, 27.221788> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222130, 0.413573, -0.882959,
		0.691145, 0.571968, 0.441781,
		0.687733, -0.708385, -0.158787,
		41.006794, 36.165825, 27.174152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.975906, 37.116665, 26.864023>,  <40.525379, 36.661697, 27.285303>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.975906, 37.116665, 26.864023> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.099350, 36.742035, 26.797575>,  <41.173416, 36.517258, 26.757706>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.099350, 36.742035, 26.797575>,  <40.975906, 37.116665, 26.864023>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.099350, 36.742035, 26.797575> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408648, 0.288252, -0.865978,
		0.858934, 0.199364, 0.471684,
		0.308608, -0.936571, -0.166120,
		41.191933, 36.461063, 26.747740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.686634, 37.108440, 26.719973>,  <40.975906, 37.116665, 26.864023>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.686634, 37.108440, 26.719973> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.520439, 36.787601, 26.548389>,  <41.420723, 36.595097, 26.445440>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.520439, 36.787601, 26.548389>,  <41.686634, 37.108440, 26.719973>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.520439, 36.787601, 26.548389> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494052, 0.196957, -0.846830,
		0.763729, -0.563774, 0.314447,
		-0.415488, -0.802101, -0.428956,
		41.395794, 36.546970, 26.419703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.222950, 36.719120, 26.429499>,  <41.686634, 37.108440, 26.719973>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.222950, 36.719120, 26.429499> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.890846, 36.601147, 26.240318>,  <41.691582, 36.530365, 26.126810>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.890846, 36.601147, 26.240318>,  <42.222950, 36.719120, 26.429499>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.890846, 36.601147, 26.240318> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434150, 0.189933, -0.880590,
		0.349541, -0.936452, -0.029651,
		-0.830262, -0.294929, -0.472950,
		41.641769, 36.512669, 26.098433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.490456, 36.478657, 25.856516>,  <42.222950, 36.719120, 26.429499>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.490456, 36.478657, 25.856516> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.101681, 36.518967, 25.771482>,  <41.868416, 36.543152, 25.720463>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.101681, 36.518967, 25.771482>,  <42.490456, 36.478657, 25.856516>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.101681, 36.518967, 25.771482> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229857, 0.214253, -0.949348,
		-0.050127, -0.971565, -0.231404,
		-0.971933, 0.100778, -0.212581,
		41.810101, 36.549198, 25.707708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.325924, 36.125988, 25.178230>,  <42.490456, 36.478657, 25.856516>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.325924, 36.125988, 25.178230> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.033241, 36.386784, 25.257742>,  <41.857632, 36.543262, 25.305449>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.033241, 36.386784, 25.257742>,  <42.325924, 36.125988, 25.178230>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.033241, 36.386784, 25.257742> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053130, 0.345296, -0.936989,
		-0.679549, -0.675037, -0.287295,
		-0.731704, 0.651993, 0.198780,
		41.813728, 36.582382, 25.317375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.001465, 36.032150, 24.671497>,  <42.325924, 36.125988, 25.178230>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.001465, 36.032150, 24.671497> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.900761, 36.399437, 24.793806>,  <41.840336, 36.619808, 24.867191>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.900761, 36.399437, 24.793806>,  <42.001465, 36.032150, 24.671497>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.900761, 36.399437, 24.793806> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239310, 0.365204, -0.899642,
		-0.937734, -0.153323, -0.311683,
		-0.251764, 0.918215, 0.305773,
		41.825233, 36.674900, 24.885538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.682114, 36.229969, 24.064253>,  <42.001465, 36.032150, 24.671497>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.682114, 36.229969, 24.064253> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.773247, 36.557747, 24.274624>,  <41.827927, 36.754414, 24.400846>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.773247, 36.557747, 24.274624>,  <41.682114, 36.229969, 24.064253>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.773247, 36.557747, 24.274624> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193804, 0.491162, -0.849235,
		-0.954219, 0.295408, -0.046910,
		0.227831, 0.819448, 0.525927,
		41.841595, 36.803581, 24.432402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.345795, 36.750130, 23.708591>,  <41.682114, 36.229969, 24.064253>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.345795, 36.750130, 23.708591> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.611095, 36.946617, 23.934441>,  <41.770275, 37.064510, 24.069950>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.611095, 36.946617, 23.934441>,  <41.345795, 36.750130, 23.708591>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.611095, 36.946617, 23.934441> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233687, 0.580787, -0.779792,
		-0.710975, 0.649145, 0.270417,
		0.663253, 0.491220, 0.564622,
		41.810070, 37.093983, 24.103827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.202946, 37.482281, 23.651346>,  <41.345795, 36.750130, 23.708591>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.202946, 37.482281, 23.651346> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.586781, 37.432858, 23.752483>,  <41.817081, 37.403202, 23.813166>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.586781, 37.432858, 23.752483>,  <41.202946, 37.482281, 23.651346>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.586781, 37.432858, 23.752483> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276488, 0.581348, -0.765238,
		-0.052437, 0.804219, 0.592016,
		0.959586, -0.123559, 0.252841,
		41.874657, 37.395790, 23.828335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.472073, 38.062786, 23.367100>,  <41.202946, 37.482281, 23.651346>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.472073, 38.062786, 23.367100> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.814541, 37.889824, 23.480238>,  <42.020023, 37.786049, 23.548120>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.814541, 37.889824, 23.480238>,  <41.472073, 38.062786, 23.367100>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.814541, 37.889824, 23.480238> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486062, 0.488342, -0.724752,
		0.175259, 0.757992, 0.628278,
		0.856170, -0.432401, 0.282845,
		42.071392, 37.760105, 23.565092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.937870, 38.614811, 23.533989>,  <41.472073, 38.062786, 23.367100>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.937870, 38.614811, 23.533989> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.175999, 38.303871, 23.452679>,  <42.318878, 38.117310, 23.403893>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.175999, 38.303871, 23.452679>,  <41.937870, 38.614811, 23.533989>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.175999, 38.303871, 23.452679> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315763, 0.458982, -0.830439,
		0.738839, 0.430193, 0.518701,
		0.595324, -0.777348, -0.203275,
		42.354595, 38.070667, 23.391697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.389259, 38.934544, 23.146566>,  <41.937870, 38.614811, 23.533989>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.389259, 38.934544, 23.146566> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.498577, 38.553085, 23.096188>,  <42.564167, 38.324211, 23.065960>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.498577, 38.553085, 23.096188>,  <42.389259, 38.934544, 23.146566>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.498577, 38.553085, 23.096188> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468157, 0.246243, -0.848642,
		0.840320, 0.172969, 0.513755,
		0.273297, -0.953649, -0.125947,
		42.580566, 38.266991, 23.058403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.110802, 38.938953, 23.112688>,  <42.389259, 38.934544, 23.146566>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.110802, 38.938953, 23.112688> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.989422, 38.616180, 22.909992>,  <42.916595, 38.422516, 22.788374>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.989422, 38.616180, 22.909992>,  <43.110802, 38.938953, 23.112688>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.989422, 38.616180, 22.909992> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468166, 0.336935, -0.816881,
		0.829903, -0.485120, 0.275533,
		-0.303449, -0.806928, -0.506741,
		42.898388, 38.374104, 22.757971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.652985, 38.643082, 22.776672>,  <43.110802, 38.938953, 23.112688>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.652985, 38.643082, 22.776672> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.337387, 38.526714, 22.560207>,  <43.148029, 38.456894, 22.430328>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.337387, 38.526714, 22.560207>,  <43.652985, 38.643082, 22.776672>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.337387, 38.526714, 22.560207> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353605, 0.505292, -0.787175,
		0.502428, -0.812440, -0.295816,
		-0.789006, -0.290897, -0.541156,
		43.100689, 38.439438, 22.397860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.905830, 38.502613, 22.064974>,  <43.652985, 38.643082, 22.776672>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.905830, 38.502613, 22.064974> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.510979, 38.526127, 22.005476>,  <43.274067, 38.540234, 21.969778>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.510979, 38.526127, 22.005476>,  <43.905830, 38.502613, 22.064974>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.510979, 38.526127, 22.005476> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158193, 0.495764, -0.853928,
		0.023546, -0.866466, -0.498681,
		-0.987128, 0.058781, -0.148743,
		43.214840, 38.543762, 21.960854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.911690, 38.322895, 21.436365>,  <43.905830, 38.502613, 22.064974>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.911690, 38.322895, 21.436365> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.569187, 38.506641, 21.530867>,  <43.363686, 38.616890, 21.587566>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.569187, 38.506641, 21.530867>,  <43.911690, 38.322895, 21.436365>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.569187, 38.506641, 21.530867> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015252, 0.479645, -0.877330,
		-0.516329, -0.747614, -0.417704,
		-0.856254, 0.459362, 0.236252,
		43.312309, 38.644451, 21.601742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.415192, 38.251308, 20.817455>,  <43.911690, 38.322895, 21.436365>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.415192, 38.251308, 20.817455> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.314220, 38.558441, 21.052982>,  <43.253635, 38.742722, 21.194298>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.314220, 38.558441, 21.052982>,  <43.415192, 38.251308, 20.817455>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.314220, 38.558441, 21.052982> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032813, 0.601382, -0.798288,
		-0.967058, -0.220834, -0.126612,
		-0.252431, 0.767836, 0.588818,
		43.238491, 38.788792, 21.229628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.766338, 38.666256, 20.572882>,  <43.415192, 38.251308, 20.817455>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.766338, 38.666256, 20.572882> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.963913, 38.926979, 20.803074>,  <43.082458, 39.083412, 20.941189>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.963913, 38.926979, 20.803074>,  <42.766338, 38.666256, 20.572882>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.963913, 38.926979, 20.803074> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120083, 0.706645, -0.697304,
		-0.861167, 0.275318, 0.427308,
		0.493936, 0.651807, 0.575478,
		43.112095, 39.122520, 20.975718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.131054, 38.966877, 20.062662>,  <42.766338, 38.666256, 20.572882>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.131054, 38.966877, 20.062662> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.000732, 38.641323, 19.870226>,  <41.922539, 38.445992, 19.754765>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.000732, 38.641323, 19.870226>,  <42.131054, 38.966877, 20.062662>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.000732, 38.641323, 19.870226> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.924029, 0.166447, 0.344188,
		-0.200052, 0.556679, -0.806280,
		-0.325805, -0.813882, -0.481090,
		41.902992, 38.397160, 19.725899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.601105, 39.181385, 19.524406>,  <42.131054, 38.966877, 20.062662>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.601105, 39.181385, 19.524406> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.524147, 38.824100, 19.686970>,  <41.477974, 38.609730, 19.784508>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.524147, 38.824100, 19.686970>,  <41.601105, 39.181385, 19.524406>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.524147, 38.824100, 19.686970> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.857411, 0.354446, 0.373113,
		-0.477317, -0.276674, -0.834038,
		-0.192391, -0.893207, 0.406406,
		41.466431, 38.556137, 19.808891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.918770, 39.394184, 19.877300>,  <41.601105, 39.181385, 19.524406>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.918770, 39.394184, 19.877300> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.792328, 39.026878, 19.781919>,  <40.716461, 38.806496, 19.724691>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.792328, 39.026878, 19.781919>,  <40.918770, 39.394184, 19.877300>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.792328, 39.026878, 19.781919> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255392, -0.159700, 0.953557,
		-0.913702, 0.362325, -0.184036,
		-0.316107, -0.918268, -0.238453,
		40.697495, 38.751396, 19.710384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.393581, 39.290188, 20.364529>,  <40.918770, 39.394184, 19.877300>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.393581, 39.290188, 20.364529> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.482811, 38.922047, 20.236034>,  <40.536350, 38.701164, 20.158937>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.482811, 38.922047, 20.236034>,  <40.393581, 39.290188, 20.364529>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.482811, 38.922047, 20.236034> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303982, -0.378783, 0.874139,
		-0.926193, -0.097349, -0.364267,
		0.223075, -0.920351, -0.321234,
		40.549732, 38.645943, 20.139664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.796310, 38.902309, 20.338131>,  <40.393581, 39.290188, 20.364529>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.796310, 38.902309, 20.338131> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.087173, 38.628071, 20.351992>,  <40.261692, 38.463528, 20.360308>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.087173, 38.628071, 20.351992>,  <39.796310, 38.902309, 20.338131>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.087173, 38.628071, 20.351992> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421739, -0.406334, 0.810573,
		-0.541647, -0.604026, -0.584611,
		0.727155, -0.685599, 0.034652,
		40.305321, 38.422390, 20.362387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.361732, 38.353325, 20.463329>,  <39.796310, 38.902309, 20.338131>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.361732, 38.353325, 20.463329> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.728142, 38.230225, 20.566242>,  <39.947987, 38.156364, 20.627991>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.728142, 38.230225, 20.566242>,  <39.361732, 38.353325, 20.463329>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.728142, 38.230225, 20.566242> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377980, -0.447489, 0.810485,
		-0.134293, -0.839670, -0.526232,
		0.916022, -0.307747, 0.257284,
		40.002949, 38.137901, 20.643427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.237629, 37.779709, 20.826426>,  <39.361732, 38.353325, 20.463329>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.237629, 37.779709, 20.826426> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.609722, 37.889038, 20.924376>,  <39.832977, 37.954636, 20.983147>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.609722, 37.889038, 20.924376>,  <39.237629, 37.779709, 20.826426>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.609722, 37.889038, 20.924376> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133028, -0.370747, 0.919158,
		0.342015, -0.887604, -0.308520,
		0.930231, 0.273324, 0.244877,
		39.888790, 37.971035, 20.997839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.421066, 37.280655, 21.242077>,  <39.237629, 37.779709, 20.826426>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.421066, 37.280655, 21.242077> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.709660, 37.547081, 21.317778>,  <39.882816, 37.706936, 21.363197>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.709660, 37.547081, 21.317778>,  <39.421066, 37.280655, 21.242077>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.709660, 37.547081, 21.317778> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090281, -0.361466, 0.928004,
		0.686523, -0.652452, -0.320925,
		0.721482, 0.666069, 0.189250,
		39.926105, 37.746902, 21.374554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.942432, 36.825340, 21.555964>,  <39.421066, 37.280655, 21.242077>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.942432, 36.825340, 21.555964> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.998814, 37.202110, 21.677891>,  <40.032642, 37.428173, 21.751047>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.998814, 37.202110, 21.677891>,  <39.942432, 36.825340, 21.555964>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.998814, 37.202110, 21.677891> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099265, -0.292892, 0.950979,
		0.985027, -0.164303, 0.052215,
		0.140956, 0.941923, 0.304816,
		40.041100, 37.484688, 21.769335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.442474, 36.846058, 22.085411>,  <39.942432, 36.825340, 21.555964>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.442474, 36.846058, 22.085411> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.199646, 37.160374, 22.132751>,  <40.053951, 37.348965, 22.161156>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.199646, 37.160374, 22.132751>,  <40.442474, 36.846058, 22.085411>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.199646, 37.160374, 22.132751> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210745, -0.302802, 0.929461,
		0.766196, 0.539303, 0.349422,
		-0.607067, 0.785788, 0.118351,
		40.017525, 37.396111, 22.168257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.663887, 37.194778, 22.773355>,  <40.442474, 36.846058, 22.085411>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.663887, 37.194778, 22.773355> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.283669, 37.214939, 22.650766>,  <40.055538, 37.227036, 22.577213>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.283669, 37.214939, 22.650766>,  <40.663887, 37.194778, 22.773355>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.283669, 37.214939, 22.650766> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292619, -0.476115, 0.829270,
		-0.104122, 0.877937, 0.467316,
		-0.950543, 0.050401, -0.306475,
		39.998505, 37.230061, 22.558825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.372261, 37.500431, 23.336048>,  <40.663887, 37.194778, 22.773355>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.372261, 37.500431, 23.336048> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.095081, 37.321133, 23.110167>,  <39.928772, 37.213554, 22.974638>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.095081, 37.321133, 23.110167>,  <40.372261, 37.500431, 23.336048>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.095081, 37.321133, 23.110167> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343576, -0.483284, 0.805228,
		-0.633855, 0.752003, 0.180885,
		-0.692953, -0.448250, -0.564702,
		39.887196, 37.186657, 22.940756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.814529, 37.602676, 23.755816>,  <40.372261, 37.500431, 23.336048>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.814529, 37.602676, 23.755816> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.711498, 37.308041, 23.505665>,  <39.649681, 37.131260, 23.355574>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.711498, 37.308041, 23.505665>,  <39.814529, 37.602676, 23.755816>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.711498, 37.308041, 23.505665> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347779, -0.533168, 0.771221,
		-0.901500, 0.416143, -0.118836,
		-0.257579, -0.736585, -0.625377,
		39.634224, 37.087067, 23.318052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.332577, 37.414680, 24.053864>,  <39.814529, 37.602676, 23.755816>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.332577, 37.414680, 24.053864> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.392620, 37.078220, 23.846045>,  <39.428646, 36.876343, 23.721354>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.392620, 37.078220, 23.846045>,  <39.332577, 37.414680, 24.053864>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.392620, 37.078220, 23.846045> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247183, -0.540743, 0.804051,
		-0.957271, 0.007725, -0.289091,
		0.150113, -0.841152, -0.519547,
		39.437653, 36.825874, 23.690180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.820560, 36.805786, 24.337778>,  <39.332577, 37.414680, 24.053864>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.820560, 36.805786, 24.337778> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.067604, 36.575680, 24.123255>,  <39.215832, 36.437614, 23.994541>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.067604, 36.575680, 24.123255>,  <38.820560, 36.805786, 24.337778>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.067604, 36.575680, 24.123255> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012708, -0.674516, 0.738151,
		-0.786385, -0.462702, -0.409275,
		0.617606, -0.575270, -0.536308,
		39.252888, 36.403099, 23.962362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.493065, 36.124969, 24.260292>,  <38.820560, 36.805786, 24.337778>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.493065, 36.124969, 24.260292> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.890049, 36.092197, 24.223845>,  <39.128239, 36.072533, 24.201977>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.890049, 36.092197, 24.223845>,  <38.493065, 36.124969, 24.260292>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.890049, 36.092197, 24.223845> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002283, -0.755828, 0.654766,
		-0.122515, -0.649624, -0.750319,
		0.992464, -0.081931, -0.091117,
		39.187790, 36.067619, 24.196508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.675308, 35.429062, 24.019924>,  <38.493065, 36.124969, 24.260292>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.675308, 35.429062, 24.019924> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.978912, 35.592682, 24.222542>,  <39.161076, 35.690853, 24.344112>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.978912, 35.592682, 24.222542>,  <38.675308, 35.429062, 24.019924>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.978912, 35.592682, 24.222542> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018234, -0.791052, 0.611477,
		0.650826, -0.454879, -0.607874,
		0.759008, 0.409049, 0.506543,
		39.206615, 35.715397, 24.374504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.181042, 34.868198, 24.130823>,  <38.675308, 35.429062, 24.019924>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.181042, 34.868198, 24.130823> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.301754, 35.116497, 24.420265>,  <39.374180, 35.265476, 24.593929>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.301754, 35.116497, 24.420265>,  <39.181042, 34.868198, 24.130823>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.301754, 35.116497, 24.420265> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105156, -0.776030, 0.621868,
		0.947561, -0.111574, -0.299464,
		0.301778, 0.620748, 0.723604,
		39.392288, 35.302723, 24.637346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.582962, 34.465893, 24.431021>,  <39.181042, 34.868198, 24.130823>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.582962, 34.465893, 24.431021> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.507328, 34.732201, 24.719740>,  <39.461948, 34.891987, 24.892971>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.507328, 34.732201, 24.719740>,  <39.582962, 34.465893, 24.431021>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.507328, 34.732201, 24.719740> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076852, -0.742838, 0.665046,
		0.978948, 0.070282, 0.191629,
		-0.189089, 0.665772, 0.721798,
		39.450600, 34.931931, 24.936279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.041332, 34.292412, 25.002127>,  <39.582962, 34.465893, 24.431021>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.041332, 34.292412, 25.002127> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.742332, 34.510391, 25.154064>,  <39.562931, 34.641178, 25.245226>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.742332, 34.510391, 25.154064>,  <40.041332, 34.292412, 25.002127>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.742332, 34.510391, 25.154064> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163819, -0.705395, 0.689624,
		0.643746, 0.453267, 0.616555,
		-0.747499, 0.544946, 0.379841,
		39.518082, 34.673874, 25.268017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.169754, 34.238014, 25.719400>,  <40.041332, 34.292412, 25.002127>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.169754, 34.238014, 25.719400> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.792686, 34.366550, 25.683352>,  <39.566448, 34.443672, 25.661722>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.792686, 34.366550, 25.683352>,  <40.169754, 34.238014, 25.719400>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.792686, 34.366550, 25.683352> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268626, -0.570309, 0.776266,
		0.198051, 0.755967, 0.623931,
		-0.942664, 0.321344, -0.090122,
		39.509888, 34.462955, 25.656315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<41.871773, 33.799511, 31.243237> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.485477, 33.847988, 31.151443>,  <41.253700, 33.877075, 31.096367>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.485477, 33.847988, 31.151443>,  <41.871773, 33.799511, 31.243237>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.485477, 33.847988, 31.151443> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255312, -0.285068, 0.923879,
		0.046550, 0.950815, 0.306243,
		-0.965738, 0.121194, -0.229484,
		41.195755, 33.884346, 31.082598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.630238, 34.136528, 31.731419>,  <41.871773, 33.799511, 31.243237>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.630238, 34.136528, 31.731419> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.302021, 33.973019, 31.571609>,  <41.105091, 33.874912, 31.475725>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.302021, 33.973019, 31.571609>,  <41.630238, 34.136528, 31.731419>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.302021, 33.973019, 31.571609> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390366, -0.109806, 0.914088,
		-0.417522, 0.906007, -0.069470,
		-0.820542, -0.408771, -0.399521,
		41.055859, 33.850388, 31.451754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.046104, 34.422729, 32.046211>,  <41.630238, 34.136528, 31.731419>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.046104, 34.422729, 32.046211> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.944771, 34.070774, 31.885401>,  <40.883972, 33.859600, 31.788916>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.944771, 34.070774, 31.885401>,  <41.046104, 34.422729, 32.046211>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.944771, 34.070774, 31.885401> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385063, -0.289520, 0.876302,
		-0.887439, 0.376803, -0.265466,
		-0.253335, -0.879885, -0.402025,
		40.868771, 33.806808, 31.764793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.366295, 34.311375, 32.355061>,  <41.046104, 34.422729, 32.046211>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.366295, 34.311375, 32.355061> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.492165, 33.960571, 32.209827>,  <40.567688, 33.750088, 32.122688>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.492165, 33.960571, 32.209827>,  <40.366295, 34.311375, 32.355061>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.492165, 33.960571, 32.209827> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368406, -0.465371, 0.804803,
		-0.874789, -0.119493, -0.469539,
		0.314678, -0.877013, -0.363079,
		40.586567, 33.697468, 32.100903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.811726, 33.816669, 32.526825>,  <40.366295, 34.311375, 32.355061>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.811726, 33.816669, 32.526825> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.134590, 33.598976, 32.435341>,  <40.328308, 33.468361, 32.380451>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.134590, 33.598976, 32.435341>,  <39.811726, 33.816669, 32.526825>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.134590, 33.598976, 32.435341> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198222, -0.614791, 0.763374,
		-0.556065, -0.570825, -0.604111,
		0.807155, -0.544234, -0.228714,
		40.376736, 33.435707, 32.366726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.609158, 33.122841, 32.423092>,  <39.811726, 33.816669, 32.526825>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.609158, 33.122841, 32.423092> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.996502, 33.105068, 32.521320>,  <40.228909, 33.094406, 32.580257>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.996502, 33.105068, 32.521320>,  <39.609158, 33.122841, 32.423092>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.996502, 33.105068, 32.521320> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221601, -0.605625, 0.764271,
		0.114769, -0.794509, -0.596309,
		0.968360, -0.044428, 0.245571,
		40.287010, 33.091740, 32.594990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.914192, 32.406509, 32.455086>,  <39.609158, 33.122841, 32.423092>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.914192, 32.406509, 32.455086> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.177090, 32.616096, 32.671783>,  <40.334827, 32.741848, 32.801804>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.177090, 32.616096, 32.671783>,  <39.914192, 32.406509, 32.455086>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.177090, 32.616096, 32.671783> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083637, -0.663654, 0.743349,
		0.749023, -0.533871, -0.392359,
		0.657244, 0.523970, 0.541743,
		40.374264, 32.773289, 32.834305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.211205, 31.905123, 32.839844>,  <39.914192, 32.406509, 32.455086>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.211205, 31.905123, 32.839844> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.276894, 32.243408, 33.042938>,  <40.316307, 32.446381, 33.164795>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.276894, 32.243408, 33.042938>,  <40.211205, 31.905123, 32.839844>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.276894, 32.243408, 33.042938> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013775, -0.512712, 0.858450,
		0.986327, -0.147971, -0.072550,
		0.164223, 0.845713, 0.507740,
		40.326160, 32.497124, 33.195259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.449867, 31.625368, 33.412682>,  <40.211205, 31.905123, 32.839844>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.449867, 31.625368, 33.412682> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.420010, 32.002514, 33.542564>,  <40.402096, 32.228802, 33.620495>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.420010, 32.002514, 33.542564>,  <40.449867, 31.625368, 33.412682>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.420010, 32.002514, 33.542564> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059359, -0.329243, 0.942378,
		0.995442, 0.051064, 0.080542,
		-0.074640, 0.942863, 0.324712,
		40.397617, 32.285374, 33.639977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.933186, 31.681808, 33.980957>,  <40.449867, 31.625368, 33.412682>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.933186, 31.681808, 33.980957> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.619202, 31.929108, 33.996983>,  <40.430809, 32.077488, 34.006599>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.619202, 31.929108, 33.996983>,  <40.933186, 31.681808, 33.980957>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.619202, 31.929108, 33.996983> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161745, -0.266927, 0.950046,
		0.598057, 0.739271, 0.309526,
		-0.784963, 0.618246, 0.040065,
		40.383713, 32.114582, 34.009003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.862209, 31.872149, 34.730415>,  <40.933186, 31.681808, 33.980957>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.862209, 31.872149, 34.730415> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.513706, 31.966660, 34.558334>,  <40.304604, 32.023365, 34.455086>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.513706, 31.966660, 34.558334>,  <40.862209, 31.872149, 34.730415>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.513706, 31.966660, 34.558334> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487746, -0.318855, 0.812672,
		0.054844, 0.917880, 0.393050,
		-0.871261, 0.236279, -0.430204,
		40.252327, 32.037544, 34.429272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.499538, 32.356663, 35.191013>,  <40.862209, 31.872149, 34.730415>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.499538, 32.356663, 35.191013> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.222424, 32.188786, 34.956440>,  <40.056156, 32.088058, 34.815697>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.222424, 32.188786, 34.956440>,  <40.499538, 32.356663, 35.191013>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.222424, 32.188786, 34.956440> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437514, -0.401830, 0.804434,
		-0.573266, 0.813872, 0.094758,
		-0.692783, -0.419697, -0.586436,
		40.014587, 32.062878, 34.780510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.755577, 32.450031, 35.450516>,  <40.499538, 32.356663, 35.191013>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.755577, 32.450031, 35.450516> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.769024, 32.112072, 35.236965>,  <39.777092, 31.909296, 35.108837>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.769024, 32.112072, 35.236965>,  <39.755577, 32.450031, 35.450516>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.769024, 32.112072, 35.236965> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437874, -0.492628, 0.752053,
		-0.898407, 0.208487, -0.386519,
		0.033617, -0.844897, -0.533872,
		39.779110, 31.858603, 35.076805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.985321, 32.844238, 36.105106>,  <39.755577, 32.450031, 35.450516>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.985321, 32.844238, 36.105106> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.882301, 32.666119, 36.448124>,  <39.820488, 32.559246, 36.653934>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.882301, 32.666119, 36.448124>,  <39.985321, 32.844238, 36.105106>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.882301, 32.666119, 36.448124> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.913332, -0.401894, 0.065614,
		0.315422, 0.800118, 0.510216,
		-0.257552, -0.445300, 0.857540,
		39.805035, 32.532528, 36.705387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.297947, 33.501133, 36.348934>,  <39.985321, 32.844238, 36.105106>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.297947, 33.501133, 36.348934> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.220169, 33.777687, 36.627266>,  <40.173504, 33.943619, 36.794266>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.220169, 33.777687, 36.627266>,  <40.297947, 33.501133, 36.348934>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.220169, 33.777687, 36.627266> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181170, 0.671856, -0.718183,
		-0.964038, -0.265710, -0.005380,
		-0.194443, 0.691381, 0.695834,
		40.161835, 33.985100, 36.836018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.580284, 33.713779, 36.203911>,  <40.297947, 33.501133, 36.348934>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.580284, 33.713779, 36.203911> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.767345, 34.020687, 36.379456>,  <39.879581, 34.204830, 36.484783>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.767345, 34.020687, 36.379456>,  <39.580284, 33.713779, 36.203911>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.767345, 34.020687, 36.379456> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313622, 0.608232, -0.729174,
		-0.826404, 0.203361, 0.525072,
		0.467651, 0.767267, 0.438866,
		39.907642, 34.250866, 36.511116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.149494, 34.338032, 36.185844>,  <39.580284, 33.713779, 36.203911>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.149494, 34.338032, 36.185844> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.526196, 34.469769, 36.213100>,  <39.752216, 34.548809, 36.229454>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.526196, 34.469769, 36.213100>,  <39.149494, 34.338032, 36.185844>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.526196, 34.469769, 36.213100> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148341, 0.588608, -0.794692,
		-0.301831, 0.738293, 0.603176,
		0.941750, 0.329338, 0.068140,
		39.808720, 34.568569, 36.233543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.069519, 35.030365, 36.135029>,  <39.149494, 34.338032, 36.185844>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.069519, 35.030365, 36.135029> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.456059, 34.965076, 36.055504>,  <39.687981, 34.925903, 36.007790>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.456059, 34.965076, 36.055504>,  <39.069519, 35.030365, 36.135029>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.456059, 34.965076, 36.055504> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001344, 0.776081, -0.630632,
		0.257228, 0.609144, 0.750185,
		0.966350, -0.163225, -0.198811,
		39.745964, 34.916107, 35.995861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.291679, 35.682800, 36.045643>,  <39.069519, 35.030365, 36.135029>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.291679, 35.682800, 36.045643> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.601192, 35.489258, 35.882107>,  <39.786900, 35.373131, 35.783985>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.601192, 35.489258, 35.882107>,  <39.291679, 35.682800, 36.045643>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.601192, 35.489258, 35.882107> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167929, 0.778999, -0.604120,
		0.610791, 0.398800, 0.684027,
		0.773779, -0.483859, -0.408836,
		39.833324, 35.344101, 35.759457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.636780, 36.219856, 35.857452>,  <39.291679, 35.682800, 36.045643>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.636780, 36.219856, 35.857452> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.805691, 35.952682, 35.612328>,  <39.907036, 35.792377, 35.465252>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.805691, 35.952682, 35.612328>,  <39.636780, 36.219856, 35.857452>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.805691, 35.952682, 35.612328> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005512, 0.677928, -0.735107,
		0.906449, 0.307042, 0.289956,
		0.422278, -0.667936, -0.612816,
		39.932373, 35.752300, 35.428482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.067039, 36.624874, 35.514286>,  <39.636780, 36.219856, 35.857452>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.067039, 36.624874, 35.514286> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.003983, 36.294670, 35.297516>,  <39.966148, 36.096546, 35.167454>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.003983, 36.294670, 35.297516>,  <40.067039, 36.624874, 35.514286>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.003983, 36.294670, 35.297516> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014151, 0.550616, -0.834639,
		0.987395, -0.123907, -0.098483,
		-0.157644, -0.825511, -0.541922,
		39.956688, 36.047016, 35.134941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.509029, 36.685150, 35.084003>,  <40.067039, 36.624874, 35.514286>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.509029, 36.685150, 35.084003> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.246208, 36.436882, 34.912868>,  <40.088516, 36.287922, 34.810188>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.246208, 36.436882, 34.912868>,  <40.509029, 36.685150, 35.084003>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.246208, 36.436882, 34.912868> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042167, 0.536397, -0.842912,
		0.752660, -0.571882, -0.326272,
		-0.657058, -0.620668, -0.427839,
		40.049091, 36.250683, 34.784515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.627247, 36.735981, 34.349205>,  <40.509029, 36.685150, 35.084003>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.627247, 36.735981, 34.349205> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.260864, 36.576851, 34.370186>,  <40.041035, 36.481373, 34.382774>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.260864, 36.576851, 34.370186>,  <40.627247, 36.735981, 34.349205>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.260864, 36.576851, 34.370186> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239462, 0.437039, -0.866980,
		0.321981, -0.806681, -0.495574,
		-0.915962, -0.397823, 0.052451,
		39.986076, 36.457504, 34.385921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.590984, 36.266457, 33.738888>,  <40.627247, 36.735981, 34.349205>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.590984, 36.266457, 33.738888> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.222527, 36.369419, 33.855671>,  <40.001453, 36.431198, 33.925739>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.222527, 36.369419, 33.855671>,  <40.590984, 36.266457, 33.738888>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.222527, 36.369419, 33.855671> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183943, 0.373161, -0.909349,
		-0.343022, -0.891342, -0.296386,
		-0.921141, 0.257409, 0.291959,
		39.946186, 36.446640, 33.943260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.038845, 35.929581, 33.306637>,  <40.590984, 36.266457, 33.738888>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.038845, 35.929581, 33.306637> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.881874, 36.267303, 33.452595>,  <39.787693, 36.469936, 33.540169>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.881874, 36.267303, 33.452595>,  <40.038845, 35.929581, 33.306637>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.881874, 36.267303, 33.452595> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301882, 0.256518, -0.918186,
		-0.868833, -0.470474, 0.154217,
		-0.392423, 0.844306, 0.364899,
		39.764149, 36.520596, 33.562065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.446754, 36.052528, 32.945381>,  <40.038845, 35.929581, 33.306637>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.446754, 36.052528, 32.945381> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.502285, 36.428024, 33.071556>,  <39.535603, 36.653320, 33.147263>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.502285, 36.428024, 33.071556>,  <39.446754, 36.052528, 32.945381>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.502285, 36.428024, 33.071556> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471814, 0.342743, -0.812354,
		-0.870701, -0.036053, 0.490490,
		0.138824, 0.938737, 0.315437,
		39.543934, 36.709644, 33.166187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.847198, 36.363327, 32.806686>,  <39.446754, 36.052528, 32.945381>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.847198, 36.363327, 32.806686> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.107079, 36.663918, 32.852596>,  <39.263004, 36.844273, 32.880142>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.107079, 36.663918, 32.852596>,  <38.847198, 36.363327, 32.806686>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.107079, 36.663918, 32.852596> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344077, 0.425324, -0.837084,
		-0.677868, 0.504360, 0.534898,
		0.649697, 0.751479, 0.114774,
		39.301987, 36.889362, 32.887028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.463921, 37.010986, 32.584557>,  <38.847198, 36.363327, 32.806686>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.463921, 37.010986, 32.584557> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.853226, 37.101124, 32.566795>,  <39.086811, 37.155205, 32.556137>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.853226, 37.101124, 32.566795>,  <38.463921, 37.010986, 32.584557>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.853226, 37.101124, 32.566795> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128840, 0.375600, -0.917783,
		-0.190137, 0.898969, 0.394592,
		0.973267, 0.225344, -0.044407,
		39.145206, 37.168728, 32.553474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.208855, 37.619183, 32.925552>,  <38.463921, 37.010986, 32.584557>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.208855, 37.619183, 32.925552> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.854080, 37.731411, 32.778793>,  <37.641216, 37.798748, 32.690739>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.854080, 37.731411, 32.778793>,  <38.208855, 37.619183, 32.925552>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.854080, 37.731411, 32.778793> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459356, -0.618819, 0.637224,
		-0.048258, 0.733718, 0.677738,
		-0.886940, 0.280572, -0.366901,
		37.587997, 37.815582, 32.668724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.674580, 37.735939, 33.462555>,  <38.208855, 37.619183, 32.925552>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.674580, 37.735939, 33.462555> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.430363, 37.671055, 33.152477>,  <37.283833, 37.632122, 32.966431>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.430363, 37.671055, 33.152477>,  <37.674580, 37.735939, 33.462555>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.430363, 37.671055, 33.152477> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.696904, -0.354957, 0.623161,
		-0.376245, 0.920702, 0.103670,
		-0.610544, -0.162214, -0.775192,
		37.247200, 37.622391, 32.919918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.038841, 38.047993, 33.560131>,  <37.674580, 37.735939, 33.462555>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.038841, 38.047993, 33.560131> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.948181, 37.755505, 33.302776>,  <36.893787, 37.580013, 33.148365>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.948181, 37.755505, 33.302776>,  <37.038841, 38.047993, 33.560131>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.948181, 37.755505, 33.302776> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.683976, -0.350790, 0.639627,
		-0.693403, 0.585031, -0.420632,
		-0.226648, -0.731221, -0.643386,
		36.880188, 37.536137, 33.109760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.346107, 37.994087, 33.664162>,  <37.038841, 38.047993, 33.560131>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.346107, 37.994087, 33.664162> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.435658, 37.657639, 33.467224>,  <36.489388, 37.455769, 33.349064>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.435658, 37.657639, 33.467224>,  <36.346107, 37.994087, 33.664162>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.435658, 37.657639, 33.467224> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.629133, -0.510539, 0.586124,
		-0.744358, 0.178526, -0.643474,
		0.223880, -0.841118, -0.492341,
		36.502823, 37.405304, 33.319523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.708538, 37.650970, 33.513432>,  <36.346107, 37.994087, 33.664162>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.708538, 37.650970, 33.513432> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.991993, 37.368771, 33.509628>,  <36.162067, 37.199451, 33.507347>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.991993, 37.368771, 33.509628>,  <35.708538, 37.650970, 33.513432>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.991993, 37.368771, 33.509628> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.606640, -0.616106, 0.502395,
		-0.360298, -0.350253, -0.864586,
		0.708642, -0.705504, -0.009505,
		36.204586, 37.157120, 33.506775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.381962, 37.149185, 33.299103>,  <35.708538, 37.650970, 33.513432>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.381962, 37.149185, 33.299103> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.683151, 36.974560, 33.496056>,  <35.863865, 36.869785, 33.614227>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.683151, 36.974560, 33.496056>,  <35.381962, 37.149185, 33.299103>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.683151, 36.974560, 33.496056> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.655603, -0.562120, 0.504188,
		0.056667, -0.702448, -0.709476,
		0.752977, -0.436563, 0.492380,
		35.909046, 36.843590, 33.643768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.189941, 36.501659, 33.479046>,  <35.381962, 37.149185, 33.299103>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.189941, 36.501659, 33.479046> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.501270, 36.491711, 33.729996>,  <35.688068, 36.485741, 33.880566>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.501270, 36.491711, 33.729996>,  <35.189941, 36.501659, 33.479046>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.501270, 36.491711, 33.729996> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.549327, -0.510882, 0.661241,
		0.304070, -0.859291, -0.411291,
		0.778319, -0.024869, 0.627376,
		35.734768, 36.484249, 33.918209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.258030, 35.867699, 33.580486>,  <35.189941, 36.501659, 33.479046>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.258030, 35.867699, 33.580486> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.419304, 36.032887, 33.907143>,  <35.516068, 36.132000, 34.103138>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.419304, 36.032887, 33.907143>,  <35.258030, 35.867699, 33.580486>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.419304, 36.032887, 33.907143> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.617833, -0.535465, 0.575812,
		0.675073, -0.736705, 0.039254,
		0.403185, 0.412967, 0.816639,
		35.540260, 36.156776, 34.152134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.251987, 35.349216, 34.059258>,  <35.258030, 35.867699, 33.580486>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.251987, 35.349216, 34.059258> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.303135, 35.676464, 34.283516>,  <35.333824, 35.872814, 34.418072>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.303135, 35.676464, 34.283516>,  <35.251987, 35.349216, 34.059258>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.303135, 35.676464, 34.283516> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.522686, -0.424825, 0.739136,
		0.842880, -0.387559, 0.373297,
		0.127873, 0.818121, 0.560649,
		35.341496, 35.921902, 34.451710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.439507, 35.060047, 34.657505>,  <35.251987, 35.349216, 34.059258>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.439507, 35.060047, 34.657505> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.287888, 35.422546, 34.732376>,  <35.196915, 35.640045, 34.777298>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.287888, 35.422546, 34.732376>,  <35.439507, 35.060047, 34.657505>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.287888, 35.422546, 34.732376> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.557638, -0.385115, 0.735341,
		0.738486, 0.174353, 0.651336,
		-0.379048, 0.906249, 0.187177,
		35.174171, 35.694420, 34.788528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.355835, 34.978844, 35.318626>,  <35.439507, 35.060047, 34.657505>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.355835, 34.978844, 35.318626> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.164715, 35.320244, 35.235439>,  <35.050045, 35.525085, 35.185528>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.164715, 35.320244, 35.235439>,  <35.355835, 34.978844, 35.318626>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.164715, 35.320244, 35.235439> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.694060, -0.221642, 0.684949,
		0.538509, 0.471608, 0.698279,
		-0.477796, 0.853499, -0.207968,
		35.021378, 35.576294, 35.173050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.373001, 35.502926, 35.926022>,  <35.355835, 34.978844, 35.318626>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.373001, 35.502926, 35.926022> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.052956, 35.545757, 35.689934>,  <34.860928, 35.571457, 35.548283>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.052956, 35.545757, 35.689934>,  <35.373001, 35.502926, 35.926022>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.052956, 35.545757, 35.689934> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.599836, -0.135522, 0.788562,
		0.004452, 0.984971, 0.172663,
		-0.800110, 0.107080, -0.590218,
		34.812923, 35.577881, 35.512867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<38.156101, 41.135181, 30.096897> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.921078, 40.815403, 30.046839>,  <37.780064, 40.623535, 30.016804>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.921078, 40.815403, 30.046839>,  <38.156101, 41.135181, 30.096897>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.921078, 40.815403, 30.046839> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340913, -0.384825, 0.857723,
		-0.733863, 0.461298, 0.498648,
		-0.587558, -0.799446, -0.125146,
		37.744812, 40.575569, 30.009295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.873146, 40.965714, 30.695059>,  <38.156101, 41.135181, 30.096897>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.873146, 40.965714, 30.695059> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.879173, 40.627396, 30.481743>,  <37.882790, 40.424404, 30.353754>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.879173, 40.627396, 30.481743>,  <37.873146, 40.965714, 30.695059>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.879173, 40.627396, 30.481743> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091463, -0.529948, 0.843083,
		-0.995694, -0.061480, 0.069374,
		0.015068, -0.845799, -0.533289,
		37.883694, 40.373657, 30.321756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.518986, 40.568668, 31.123108>,  <37.873146, 40.965714, 30.695059>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.518986, 40.568668, 31.123108> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.697769, 40.306034, 30.880085>,  <37.805038, 40.148453, 30.734272>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.697769, 40.306034, 30.880085>,  <37.518986, 40.568668, 31.123108>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.697769, 40.306034, 30.880085> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062908, -0.654418, 0.753511,
		-0.892342, -0.375005, -0.251191,
		0.446954, -0.656588, -0.607556,
		37.831856, 40.109058, 30.697819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.019657, 40.007988, 30.987762>,  <37.518986, 40.568668, 31.123108>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.019657, 40.007988, 30.987762> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.367882, 39.833927, 30.895874>,  <37.576817, 39.729492, 30.840740>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.367882, 39.833927, 30.895874>,  <37.019657, 40.007988, 30.987762>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.367882, 39.833927, 30.895874> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168657, -0.702448, 0.691464,
		-0.462256, -0.563216, -0.684913,
		0.870560, -0.435149, -0.229721,
		37.629051, 39.703384, 30.826958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.853214, 39.307556, 30.722214>,  <37.019657, 40.007988, 30.987762>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.853214, 39.307556, 30.722214> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.236378, 39.302017, 30.836914>,  <37.466274, 39.298695, 30.905735>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.236378, 39.302017, 30.836914>,  <36.853214, 39.307556, 30.722214>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.236378, 39.302017, 30.836914> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176745, -0.815552, 0.551032,
		0.226229, -0.578518, -0.783669,
		0.957905, -0.013851, 0.286752,
		37.523750, 39.297863, 30.922939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.027855, 38.615898, 30.697720>,  <36.853214, 39.307556, 30.722214>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.027855, 38.615898, 30.697720> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.302582, 38.784073, 30.934875>,  <37.467419, 38.884979, 31.077169>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.302582, 38.784073, 30.934875>,  <37.027855, 38.615898, 30.697720>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.302582, 38.784073, 30.934875> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000224, -0.815838, 0.578281,
		0.726831, -0.397040, -0.560424,
		0.686816, 0.420438, 0.592888,
		37.508625, 38.910206, 31.112741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.541103, 38.027142, 30.884254>,  <37.027855, 38.615898, 30.697720>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.541103, 38.027142, 30.884254> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.555359, 38.324360, 31.151569>,  <37.563911, 38.502693, 31.311958>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.555359, 38.324360, 31.151569>,  <37.541103, 38.027142, 30.884254>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.555359, 38.324360, 31.151569> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024249, -0.669158, 0.742724,
		0.999071, -0.010262, -0.041864,
		0.035635, 0.743049, 0.668287,
		37.566048, 38.547276, 31.352057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.137371, 37.867943, 31.329472>,  <37.541103, 38.027142, 30.884254>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.137371, 37.867943, 31.329472> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.889126, 38.091579, 31.549383>,  <37.740181, 38.225761, 31.681330>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.889126, 38.091579, 31.549383>,  <38.137371, 37.867943, 31.329472>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.889126, 38.091579, 31.549383> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076179, -0.654836, 0.751922,
		0.780409, 0.508533, 0.363807,
		-0.620611, 0.559092, 0.549780,
		37.702942, 38.259308, 31.714317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.440403, 37.802273, 32.072895>,  <38.137371, 37.867943, 31.329472>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.440403, 37.802273, 32.072895> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.071274, 37.933605, 32.153492>,  <37.849796, 38.012405, 32.201851>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.071274, 37.933605, 32.153492>,  <38.440403, 37.802273, 32.072895>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.071274, 37.933605, 32.153492> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009963, -0.543208, 0.839539,
		0.385103, 0.772736, 0.504554,
		-0.922820, 0.328336, 0.201492,
		37.794426, 38.032104, 32.213940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.805542, 38.347046, 32.498806>,  <38.440403, 37.802273, 32.072895>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.805542, 38.347046, 32.498806> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.096508, 38.100925, 32.377304>,  <39.271088, 37.953255, 32.304401>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.096508, 38.100925, 32.377304>,  <38.805542, 38.347046, 32.498806>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.096508, 38.100925, 32.377304> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141588, 0.567731, -0.810947,
		0.671427, 0.546890, 0.500097,
		0.727419, -0.615299, -0.303757,
		39.314735, 37.916336, 32.286179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.266827, 38.748379, 32.132538>,  <38.805542, 38.347046, 32.498806>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.266827, 38.748379, 32.132538> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.381096, 38.381927, 32.020042>,  <39.449657, 38.162056, 31.952545>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.381096, 38.381927, 32.020042>,  <39.266827, 38.748379, 32.132538>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.381096, 38.381927, 32.020042> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285944, 0.361583, -0.887408,
		0.914673, 0.173093, 0.365257,
		0.285675, -0.916131, -0.281236,
		39.466797, 38.107086, 31.935671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.979370, 38.785465, 31.910948>,  <39.266827, 38.748379, 32.132538>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.979370, 38.785465, 31.910948> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.861080, 38.439831, 31.748026>,  <39.790108, 38.232449, 31.650272>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.861080, 38.439831, 31.748026>,  <39.979370, 38.785465, 31.910948>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.861080, 38.439831, 31.748026> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502588, 0.221861, -0.835574,
		0.812375, -0.451806, 0.368671,
		-0.295723, -0.864089, -0.407306,
		39.772362, 38.180603, 31.625834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.531044, 38.471703, 31.486397>,  <39.979370, 38.785465, 31.910948>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.531044, 38.471703, 31.486397> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.214981, 38.286716, 31.325512>,  <40.025341, 38.175724, 31.228981>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.214981, 38.286716, 31.325512>,  <40.531044, 38.471703, 31.486397>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.214981, 38.286716, 31.325512> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425643, 0.058127, -0.903022,
		0.440995, -0.884731, 0.150915,
		-0.790159, -0.462464, -0.402213,
		39.977932, 38.147976, 31.204847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.826687, 37.946396, 31.006147>,  <40.531044, 38.471703, 31.486397>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.826687, 37.946396, 31.006147> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.450764, 37.985394, 30.875153>,  <40.225208, 38.008793, 30.796556>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.450764, 37.985394, 30.875153>,  <40.826687, 37.946396, 31.006147>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.450764, 37.985394, 30.875153> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320594, -0.079963, -0.943836,
		-0.118211, -0.992018, 0.043892,
		-0.939811, 0.097500, -0.327487,
		40.168819, 38.014645, 30.776907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.779110, 37.479256, 30.425167>,  <40.826687, 37.946396, 31.006147>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.779110, 37.479256, 30.425167> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.487839, 37.751884, 30.396305>,  <40.313076, 37.915462, 30.378988>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.487839, 37.751884, 30.396305>,  <40.779110, 37.479256, 30.425167>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.487839, 37.751884, 30.396305> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200321, 0.110968, -0.973426,
		-0.655455, -0.723286, -0.217338,
		-0.728183, 0.681575, -0.072155,
		40.269382, 37.956356, 30.374659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.379990, 37.244781, 29.802542>,  <40.779110, 37.479256, 30.425167>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.379990, 37.244781, 29.802542> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.316120, 37.632538, 29.877155>,  <40.277798, 37.865192, 29.921923>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.316120, 37.632538, 29.877155>,  <40.379990, 37.244781, 29.802542>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.316120, 37.632538, 29.877155> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153984, 0.211102, -0.965259,
		-0.975087, -0.125400, -0.182977,
		-0.159670, 0.969387, 0.186533,
		40.268219, 37.923355, 29.933115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.832138, 37.489441, 29.324100>,  <40.379990, 37.244781, 29.802542>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.832138, 37.489441, 29.324100> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.064728, 37.786102, 29.457874>,  <40.204281, 37.964100, 29.538137>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.064728, 37.786102, 29.457874>,  <39.832138, 37.489441, 29.324100>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.064728, 37.786102, 29.457874> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233709, 0.241473, -0.941845,
		-0.779276, 0.625816, -0.032921,
		0.581472, 0.741650, 0.334432,
		40.239170, 38.008598, 29.558205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.954983, 37.836510, 28.773840>,  <39.832138, 37.489441, 29.324100>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.954983, 37.836510, 28.773840> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.214203, 38.029621, 29.009451>,  <40.369736, 38.145489, 29.150818>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.214203, 38.029621, 29.009451>,  <39.954983, 37.836510, 28.773840>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.214203, 38.029621, 29.009451> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501505, 0.311546, -0.807113,
		-0.573166, 0.818451, -0.040218,
		0.648053, 0.482780, 0.589025,
		40.408619, 38.174454, 29.186159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.102184, 38.514553, 28.402674>,  <39.954983, 37.836510, 28.773840>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.102184, 38.514553, 28.402674> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.392570, 38.471901, 28.674438>,  <40.566803, 38.446308, 28.837498>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.392570, 38.471901, 28.674438>,  <40.102184, 38.514553, 28.402674>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.392570, 38.471901, 28.674438> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.650738, 0.426141, -0.628445,
		-0.222511, 0.898350, 0.378756,
		0.725967, -0.106635, 0.679412,
		40.610359, 38.439911, 28.878262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.427040, 39.191341, 28.462402>,  <40.102184, 38.514553, 28.402674>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.427040, 39.191341, 28.462402> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.685829, 38.903534, 28.563364>,  <40.841103, 38.730850, 28.623941>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.685829, 38.903534, 28.563364>,  <40.427040, 39.191341, 28.462402>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.685829, 38.903534, 28.563364> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.643256, 0.337277, -0.687362,
		0.409442, 0.607068, 0.681048,
		0.646977, -0.719523, 0.252405,
		40.879921, 38.687675, 28.639086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.092430, 39.518955, 28.455622>,  <40.427040, 39.191341, 28.462402>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.092430, 39.518955, 28.455622> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.214989, 39.139088, 28.429537>,  <41.288525, 38.911167, 28.413887>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.214989, 39.139088, 28.429537>,  <41.092430, 39.518955, 28.455622>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.214989, 39.139088, 28.429537> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.645922, 0.257737, -0.718580,
		0.699220, 0.178046, 0.692381,
		0.306393, -0.949669, -0.065211,
		41.306908, 38.854187, 28.409973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.882023, 39.496357, 28.393110>,  <41.092430, 39.518955, 28.455622>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.882023, 39.496357, 28.393110> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.771255, 39.127621, 28.284641>,  <41.704796, 38.906380, 28.219561>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.771255, 39.127621, 28.284641>,  <41.882023, 39.496357, 28.393110>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.771255, 39.127621, 28.284641> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.704041, -0.002586, -0.710154,
		0.653945, -0.387569, 0.649728,
		-0.276914, -0.921837, -0.271173,
		41.688183, 38.851070, 28.203289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.459808, 39.117279, 28.348774>,  <41.882023, 39.496357, 28.393110>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.459808, 39.117279, 28.348774> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.184357, 38.956440, 28.107409>,  <42.019085, 38.859936, 27.962589>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.184357, 38.956440, 28.107409>,  <42.459808, 39.117279, 28.348774>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.184357, 38.956440, 28.107409> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522824, 0.301285, -0.797423,
		0.502445, -0.864605, 0.002756,
		-0.688625, -0.402102, -0.603415,
		41.977768, 38.835808, 27.926384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<36.499104, 37.477016, 24.991402> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.882378, 37.455227, 25.103764>,  <37.112343, 37.442154, 25.171181>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.882378, 37.455227, 25.103764>,  <36.499104, 37.477016, 24.991402>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.882378, 37.455227, 25.103764> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220483, -0.766281, 0.603490,
		0.182377, -0.640192, -0.746253,
		0.958189, -0.054473, 0.280904,
		37.169834, 37.438885, 25.188034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.621029, 36.739441, 25.117590>,  <36.499104, 37.477016, 24.991402>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.621029, 36.739441, 25.117590> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.930889, 36.915691, 25.299034>,  <37.116806, 37.021442, 25.407900>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.930889, 36.915691, 25.299034>,  <36.621029, 36.739441, 25.117590>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.930889, 36.915691, 25.299034> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005499, -0.721964, 0.691909,
		0.632361, -0.533496, -0.561695,
		0.774654, 0.440625, 0.453608,
		37.163284, 37.047878, 25.435116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.098953, 36.142345, 25.263000>,  <36.621029, 36.739441, 25.117590>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.098953, 36.142345, 25.263000> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.167339, 36.447475, 25.512440>,  <37.208370, 36.630554, 25.662104>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.167339, 36.447475, 25.512440>,  <37.098953, 36.142345, 25.263000>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.167339, 36.447475, 25.512440> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016646, -0.635060, 0.772283,
		0.985137, -0.121652, -0.121270,
		0.170964, 0.762823, 0.623596,
		37.218628, 36.676323, 25.699518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.698627, 35.945766, 25.625631>,  <37.098953, 36.142345, 25.263000>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.698627, 35.945766, 25.625631> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.516369, 36.234974, 25.833332>,  <37.407013, 36.408501, 25.957952>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.516369, 36.234974, 25.833332>,  <37.698627, 35.945766, 25.625631>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.516369, 36.234974, 25.833332> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092110, -0.618490, 0.780376,
		0.885381, 0.307749, 0.348412,
		-0.455649, 0.723022, 0.519253,
		37.379673, 36.451881, 25.989107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.013962, 35.980225, 26.232155>,  <37.698627, 35.945766, 25.625631>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.013962, 35.980225, 26.232155> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.668808, 36.164116, 26.316132>,  <37.461716, 36.274448, 26.366518>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.668808, 36.164116, 26.316132>,  <38.013962, 35.980225, 26.232155>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.668808, 36.164116, 26.316132> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026756, -0.456376, 0.889385,
		0.504685, 0.761823, 0.406102,
		-0.862889, 0.459724, 0.209943,
		37.409943, 36.302032, 26.379114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.089386, 36.334732, 26.930521>,  <38.013962, 35.980225, 26.232155>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.089386, 36.334732, 26.930521> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.694542, 36.292542, 26.882383>,  <37.457634, 36.267227, 26.853500>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.694542, 36.292542, 26.882383>,  <38.089386, 36.334732, 26.930521>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.694542, 36.292542, 26.882383> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064043, -0.428785, 0.901134,
		-0.146650, 0.897228, 0.416504,
		-0.987113, -0.105477, -0.120343,
		37.398407, 36.260899, 26.846281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.704456, 36.633690, 27.540070>,  <38.089386, 36.334732, 26.930521>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.704456, 36.633690, 27.540070> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.446301, 36.389153, 27.356884>,  <37.291405, 36.242432, 27.246973>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.446301, 36.389153, 27.356884>,  <37.704456, 36.633690, 27.540070>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.446301, 36.389153, 27.356884> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156364, -0.481114, 0.862601,
		-0.747677, 0.628324, 0.214915,
		-0.645391, -0.611342, -0.457965,
		37.252682, 36.205750, 27.219494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.144009, 36.773270, 27.932178>,  <37.704456, 36.633690, 27.540070>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.144009, 36.773270, 27.932178> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.033791, 36.441860, 27.737188>,  <36.967659, 36.243015, 27.620195>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.033791, 36.441860, 27.737188>,  <37.144009, 36.773270, 27.932178>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.033791, 36.441860, 27.737188> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240051, -0.431733, 0.869472,
		-0.930834, 0.356596, -0.079925,
		-0.275544, -0.828520, -0.487473,
		36.951126, 36.193306, 27.590946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.367165, 36.603104, 28.169884>,  <37.144009, 36.773270, 27.932178>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.367165, 36.603104, 28.169884> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.458611, 36.257439, 27.990572>,  <36.513477, 36.050037, 27.882984>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.458611, 36.257439, 27.990572>,  <36.367165, 36.603104, 28.169884>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.458611, 36.257439, 27.990572> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.519316, -0.497740, 0.694669,
		-0.823436, 0.073988, -0.562565,
		0.228614, -0.864165, -0.448280,
		36.527195, 35.998188, 27.856089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.792828, 36.246094, 28.012135>,  <36.367165, 36.603104, 28.169884>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.792828, 36.246094, 28.012135> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.091240, 35.982166, 28.048109>,  <36.270287, 35.823811, 28.069695>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.091240, 35.982166, 28.048109>,  <35.792828, 36.246094, 28.012135>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.091240, 35.982166, 28.048109> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.540889, -0.521627, 0.659806,
		-0.388436, -0.540879, -0.746034,
		0.746027, -0.659815, 0.089937,
		36.315048, 35.784222, 28.075090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.464100, 35.604126, 27.904436>,  <35.792828, 36.246094, 28.012135>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.464100, 35.604126, 27.904436> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.806965, 35.553898, 28.104240>,  <36.012684, 35.523762, 28.224123>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.806965, 35.553898, 28.104240>,  <35.464100, 35.604126, 27.904436>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.806965, 35.553898, 28.104240> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479335, -0.549346, 0.684439,
		0.188457, -0.826106, -0.531068,
		0.857160, -0.125572, 0.499509,
		36.064114, 35.516228, 28.254093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.537548, 34.810104, 27.966885>,  <35.464100, 35.604126, 27.904436>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.537548, 34.810104, 27.966885> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.749527, 34.983425, 28.258474>,  <35.876717, 35.087418, 28.433428>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.749527, 34.983425, 28.258474>,  <35.537548, 34.810104, 27.966885>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.749527, 34.983425, 28.258474> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211407, -0.764971, 0.608381,
		0.821255, -0.476522, -0.313794,
		0.529950, 0.433298, 0.728976,
		35.908512, 35.113415, 28.477167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.090027, 34.283566, 28.280672>,  <35.537548, 34.810104, 27.966885>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.090027, 34.283566, 28.280672> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.045788, 34.570637, 28.555685>,  <36.019245, 34.742882, 28.720692>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.045788, 34.570637, 28.555685>,  <36.090027, 34.283566, 28.280672>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.045788, 34.570637, 28.555685> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195803, -0.693952, 0.692887,
		0.974386, -0.057988, 0.217275,
		-0.110599, 0.717683, 0.687532,
		36.012608, 34.785942, 28.761944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.434597, 33.978752, 28.830275>,  <36.090027, 34.283566, 28.280672>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.434597, 33.978752, 28.830275> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.187229, 34.261158, 28.968323>,  <36.038811, 34.430599, 29.051151>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.187229, 34.261158, 28.968323>,  <36.434597, 33.978752, 28.830275>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.187229, 34.261158, 28.968323> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106985, -0.510717, 0.853066,
		0.778533, 0.490628, 0.391369,
		-0.618417, 0.706011, 0.345120,
		36.001705, 34.472961, 29.071859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.100327, 34.000462, 29.178696>,  <36.434597, 33.978752, 28.830275>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.100327, 34.000462, 29.178696> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.333202, 33.675255, 29.175711>,  <37.472927, 33.480129, 29.173920>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.333202, 33.675255, 29.175711>,  <37.100327, 34.000462, 29.178696>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.333202, 33.675255, 29.175711> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459667, 0.336699, -0.821791,
		0.670646, 0.475005, 0.569740,
		0.582186, -0.813021, -0.007462,
		37.507858, 33.431347, 29.173471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.802990, 34.189793, 29.155903>,  <37.100327, 34.000462, 29.178696>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.802990, 34.189793, 29.155903> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.814617, 33.817257, 29.010704>,  <37.821594, 33.593735, 28.923586>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.814617, 33.817257, 29.010704>,  <37.802990, 34.189793, 29.155903>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.814617, 33.817257, 29.010704> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.565866, 0.314687, -0.762081,
		0.823985, -0.183255, 0.536159,
		0.029067, -0.931338, -0.362995,
		37.823338, 33.537857, 28.901806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.443623, 34.131561, 28.874989>,  <37.802990, 34.189793, 29.155903>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.443623, 34.131561, 28.874989> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.274948, 33.823128, 28.684158>,  <38.173744, 33.638065, 28.569660>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.274948, 33.823128, 28.684158>,  <38.443623, 34.131561, 28.874989>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.274948, 33.823128, 28.684158> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.587998, 0.167973, -0.791229,
		0.690243, -0.614172, 0.382566,
		-0.421690, -0.771088, -0.477075,
		38.148441, 33.591801, 28.541037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.975445, 33.841549, 28.663141>,  <38.443623, 34.131561, 28.874989>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.975445, 33.841549, 28.663141> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.676952, 33.687870, 28.445690>,  <38.497856, 33.595665, 28.315220>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.676952, 33.687870, 28.445690>,  <38.975445, 33.841549, 28.663141>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.676952, 33.687870, 28.445690> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528060, 0.155603, -0.834829,
		0.405327, -0.910045, 0.086762,
		-0.746232, -0.384194, -0.543629,
		38.453083, 33.572613, 28.282602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.272064, 33.455006, 28.278860>,  <38.975445, 33.841549, 28.663141>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.272064, 33.455006, 28.278860> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.920818, 33.520432, 28.099010>,  <38.710072, 33.559685, 27.991100>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.920818, 33.520432, 28.099010>,  <39.272064, 33.455006, 28.278860>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.920818, 33.520432, 28.099010> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478328, 0.278777, -0.832758,
		-0.010862, -0.946325, -0.323034,
		-0.878114, 0.163561, -0.449626,
		38.657383, 33.569500, 27.964123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.272758, 33.082596, 27.695286>,  <39.272064, 33.455006, 28.278860>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.272758, 33.082596, 27.695286> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.003365, 33.367264, 27.615334>,  <38.841728, 33.538063, 27.567362>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.003365, 33.367264, 27.615334>,  <39.272758, 33.082596, 27.695286>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.003365, 33.367264, 27.615334> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429775, 0.156976, -0.889186,
		-0.601426, -0.684756, -0.411577,
		-0.673483, 0.711665, -0.199882,
		38.801319, 33.580765, 27.555368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.381622, 33.112671, 27.023422>,  <39.272758, 33.082596, 27.695286>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.381622, 33.112671, 27.023422> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.144173, 33.430389, 27.075125>,  <39.001701, 33.621021, 27.106146>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.144173, 33.430389, 27.075125>,  <39.381622, 33.112671, 27.023422>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.144173, 33.430389, 27.075125> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352214, 0.400858, -0.845730,
		-0.723571, -0.456521, -0.517720,
		-0.593625, 0.794293, 0.129256,
		38.966084, 33.668678, 27.113901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.049702, 33.193665, 26.413818>,  <39.381622, 33.112671, 27.023422>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.049702, 33.193665, 26.413818> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.026318, 33.562881, 26.565908>,  <39.012287, 33.784412, 26.657164>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.026318, 33.562881, 26.565908>,  <39.049702, 33.193665, 26.413818>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.026318, 33.562881, 26.565908> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263751, 0.381626, -0.885888,
		-0.962818, 0.048497, -0.265763,
		-0.058459, 0.923044, 0.380227,
		39.008781, 33.839794, 26.679977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.647530, 33.447441, 25.886930>,  <39.049702, 33.193665, 26.413818>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.647530, 33.447441, 25.886930> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.789864, 33.773441, 26.069864>,  <38.875263, 33.969044, 26.179625>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.789864, 33.773441, 26.069864>,  <38.647530, 33.447441, 25.886930>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.789864, 33.773441, 26.069864> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197805, 0.412595, -0.889178,
		-0.913376, 0.406862, -0.014397,
		0.355832, 0.815002, 0.457334,
		38.896614, 34.017941, 26.207064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.287586, 34.095676, 25.629255>,  <38.647530, 33.447441, 25.886930>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.287586, 34.095676, 25.629255> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.641972, 34.217899, 25.768803>,  <38.854603, 34.291233, 25.852531>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.641972, 34.217899, 25.768803>,  <38.287586, 34.095676, 25.629255>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.641972, 34.217899, 25.768803> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089497, 0.625464, -0.775103,
		-0.455044, 0.717933, 0.526789,
		0.885960, 0.305560, 0.348867,
		38.907761, 34.309566, 25.873463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.258732, 34.722858, 25.528990>,  <38.287586, 34.095676, 25.629255>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.258732, 34.722858, 25.528990> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.650829, 34.667397, 25.585405>,  <38.886089, 34.634121, 25.619255>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.650829, 34.667397, 25.585405>,  <38.258732, 34.722858, 25.528990>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.650829, 34.667397, 25.585405> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197681, 0.709508, -0.676402,
		-0.006285, 0.690922, 0.722902,
		0.980246, -0.138653, 0.141041,
		38.944904, 34.625801, 25.627718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.545135, 35.285690, 25.867535>,  <38.258732, 34.722858, 25.528990>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.545135, 35.285690, 25.867535> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.823612, 35.093571, 25.654129>,  <38.990696, 34.978298, 25.526087>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.823612, 35.093571, 25.654129>,  <38.545135, 35.285690, 25.867535>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.823612, 35.093571, 25.654129> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262802, 0.862132, -0.433201,
		0.668023, 0.161382, 0.726431,
		0.696190, -0.480296, -0.533513,
		39.032471, 34.949482, 25.494076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.056686, 35.778801, 25.845442>,  <38.545135, 35.285690, 25.867535>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.056686, 35.778801, 25.845442> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.160591, 35.524220, 25.554939>,  <39.222935, 35.371471, 25.380638>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.160591, 35.524220, 25.554939>,  <39.056686, 35.778801, 25.845442>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.160591, 35.524220, 25.554939> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420819, 0.751512, -0.508077,
		0.869159, -0.173646, 0.463044,
		0.259757, -0.636457, -0.726256,
		39.238518, 35.333282, 25.337063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.703667, 35.937168, 25.727722>,  <39.056686, 35.778801, 25.845442>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.703667, 35.937168, 25.727722> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.597870, 35.753681, 25.388399>,  <39.534389, 35.643589, 25.184805>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.597870, 35.753681, 25.388399>,  <39.703667, 35.937168, 25.727722>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.597870, 35.753681, 25.388399> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.561480, 0.641926, -0.522180,
		0.784081, -0.614421, 0.087772,
		-0.264495, -0.458713, -0.848307,
		39.518520, 35.616066, 25.133907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.514107, 36.017609, 25.690744>,  <39.703667, 35.937168, 25.727722>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.514107, 36.017609, 25.690744> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.872925, 36.157528, 25.798784>,  <41.088215, 36.241482, 25.863607>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.872925, 36.157528, 25.798784>,  <40.514107, 36.017609, 25.690744>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.872925, 36.157528, 25.798784> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129508, -0.376268, 0.917415,
		0.422542, -0.857941, -0.292227,
		0.897043, 0.349800, 0.270099,
		41.142036, 36.262466, 25.879814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.995697, 35.463318, 25.899084>,  <40.514107, 36.017609, 25.690744>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.995697, 35.463318, 25.899084> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.113499, 35.805893, 26.068687>,  <41.184181, 36.011436, 26.170448>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.113499, 35.805893, 26.068687>,  <40.995697, 35.463318, 25.899084>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.113499, 35.805893, 26.068687> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134088, -0.402262, 0.905652,
		0.946196, -0.323575, -0.003631,
		0.294507, 0.856437, 0.424006,
		41.201851, 36.062824, 26.195889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.417381, 35.215912, 26.466635>,  <40.995697, 35.463318, 25.899084>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.417381, 35.215912, 26.466635> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.372211, 35.596153, 26.582289>,  <41.345112, 35.824299, 26.651680>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.372211, 35.596153, 26.582289>,  <41.417381, 35.215912, 26.466635>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.372211, 35.596153, 26.582289> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026759, -0.293799, 0.955493,
		0.993244, 0.100159, 0.058614,
		-0.112921, 0.950605, 0.289134,
		41.338337, 35.881336, 26.669029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.933857, 35.347763, 27.039070>,  <41.417381, 35.215912, 26.466635>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.933857, 35.347763, 27.039070> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.653748, 35.630001, 27.082424>,  <41.485680, 35.799343, 27.108437>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.653748, 35.630001, 27.082424>,  <41.933857, 35.347763, 27.039070>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.653748, 35.630001, 27.082424> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009597, -0.142507, 0.989747,
		0.713806, 0.694138, 0.093023,
		-0.700277, 0.705595, 0.108384,
		41.443665, 35.841679, 27.114939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.154198, 35.767544, 27.637117>,  <41.933857, 35.347763, 27.039070>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.154198, 35.767544, 27.637117> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.762844, 35.841190, 27.599451>,  <41.528030, 35.885376, 27.576851>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.762844, 35.841190, 27.599451>,  <42.154198, 35.767544, 27.637117>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.762844, 35.841190, 27.599451> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119534, -0.131921, 0.984027,
		0.168750, 0.974012, 0.151077,
		-0.978384, 0.184113, -0.094166,
		41.469330, 35.896423, 27.571201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.964233, 36.036274, 28.299850>,  <42.154198, 35.767544, 27.637117>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.964233, 36.036274, 28.299850> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.615181, 35.911663, 28.149403>,  <41.405750, 35.836899, 28.059134>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.615181, 35.911663, 28.149403>,  <41.964233, 36.036274, 28.299850>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.615181, 35.911663, 28.149403> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228670, -0.419881, 0.878300,
		-0.431536, 0.852440, 0.295166,
		-0.872632, -0.311522, -0.376121,
		41.353390, 35.818207, 28.036566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.427597, 36.412041, 28.751343>,  <41.964233, 36.036274, 28.299850>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.427597, 36.412041, 28.751343> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.294144, 36.071743, 28.588902>,  <41.214073, 35.867565, 28.491438>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.294144, 36.071743, 28.588902>,  <41.427597, 36.412041, 28.751343>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.294144, 36.071743, 28.588902> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202601, -0.356010, 0.912255,
		-0.920676, 0.386631, -0.053587,
		-0.333629, -0.850749, -0.406102,
		41.194054, 35.816517, 28.467072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.858238, 36.172607, 29.135527>,  <41.427597, 36.412041, 28.751343>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.858238, 36.172607, 29.135527> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.945404, 35.834991, 28.939520>,  <40.997704, 35.632423, 28.821917>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.945404, 35.834991, 28.939520>,  <40.858238, 36.172607, 29.135527>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.945404, 35.834991, 28.939520> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249341, -0.533567, 0.808168,
		-0.943579, -0.053932, -0.326726,
		0.217917, -0.844037, -0.490015,
		41.010780, 35.581779, 28.792515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.318462, 35.745972, 29.135899>,  <40.858238, 36.172607, 29.135527>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.318462, 35.745972, 29.135899> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.644272, 35.515839, 29.106112>,  <40.839756, 35.377758, 29.088240>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.644272, 35.515839, 29.106112>,  <40.318462, 35.745972, 29.135899>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.644272, 35.515839, 29.106112> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208877, -0.410595, 0.887571,
		-0.541227, -0.707390, -0.454612,
		0.814520, -0.575336, -0.074468,
		40.888630, 35.343239, 29.083771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.125278, 35.061050, 29.333284>,  <40.318462, 35.745972, 29.135899>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.125278, 35.061050, 29.333284> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.521095, 35.072578, 29.389828>,  <40.758583, 35.079494, 29.423754>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.521095, 35.072578, 29.389828>,  <40.125278, 35.061050, 29.333284>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.521095, 35.072578, 29.389828> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081663, -0.695839, 0.713540,
		0.118931, -0.717619, -0.686205,
		0.989539, 0.028824, 0.141360,
		40.817955, 35.081226, 29.432236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.361092, 34.382801, 29.358889>,  <40.125278, 35.061050, 29.333284>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.361092, 34.382801, 29.358889> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.652016, 34.578960, 29.550941>,  <40.826569, 34.696655, 29.666172>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.652016, 34.578960, 29.550941>,  <40.361092, 34.382801, 29.358889>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.652016, 34.578960, 29.550941> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005702, -0.703878, 0.710298,
		0.686286, -0.513869, -0.514734,
		0.727309, 0.490402, 0.480131,
		40.870209, 34.726082, 29.694981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.808098, 33.804955, 29.553705>,  <40.361092, 34.382801, 29.358889>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.808098, 33.804955, 29.553705> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.854496, 34.134796, 29.775183>,  <40.882336, 34.332699, 29.908070>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.854496, 34.134796, 29.775183>,  <40.808098, 33.804955, 29.553705>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.854496, 34.134796, 29.775183> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106842, -0.543864, 0.832344,
		0.987487, -0.155703, 0.025019,
		0.115992, 0.824602, 0.553694,
		40.889294, 34.382175, 29.941292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.346214, 33.532825, 29.895222>,  <40.808098, 33.804955, 29.553705>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.346214, 33.532825, 29.895222> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.202129, 33.847565, 30.095667>,  <41.115681, 34.036407, 30.215935>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.202129, 33.847565, 30.095667>,  <41.346214, 33.532825, 29.895222>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.202129, 33.847565, 30.095667> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027728, -0.527905, 0.848850,
		0.932459, 0.319660, 0.168339,
		-0.360211, 0.786850, 0.501114,
		41.094067, 34.083618, 30.246000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.793983, 33.620533, 30.503082>,  <41.346214, 33.532825, 29.895222>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.793983, 33.620533, 30.503082> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.442181, 33.796940, 30.574604>,  <41.231098, 33.902786, 30.617517>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.442181, 33.796940, 30.574604>,  <41.793983, 33.620533, 30.503082>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.442181, 33.796940, 30.574604> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035848, -0.436060, 0.899203,
		0.474538, 0.784444, 0.399327,
		-0.879505, 0.441021, 0.178806,
		41.178329, 33.929245, 30.628246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<42.909798, 38.658897, 27.972891> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.563854, 38.717426, 27.780804>,  <42.356289, 38.752544, 27.665552>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.563854, 38.717426, 27.780804>,  <42.909798, 38.658897, 27.972891>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.563854, 38.717426, 27.780804> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501840, 0.277354, -0.819287,
		0.013310, -0.949560, -0.313303,
		-0.864858, 0.146323, -0.480218,
		42.304398, 38.761322, 27.636738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.992863, 38.286968, 27.356306>,  <42.909798, 38.658897, 27.972891>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.992863, 38.286968, 27.356306> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.709599, 38.559307, 27.281525>,  <42.539639, 38.722710, 27.236656>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.709599, 38.559307, 27.281525>,  <42.992863, 38.286968, 27.356306>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.709599, 38.559307, 27.281525> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.534180, 0.343507, -0.772434,
		-0.461693, -0.646873, -0.606955,
		-0.708160, 0.680851, -0.186952,
		42.497150, 38.763561, 27.225439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.940441, 38.289085, 26.699167>,  <42.992863, 38.286968, 27.356306>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.940441, 38.289085, 26.699167> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.748600, 38.631691, 26.775454>,  <42.633495, 38.837254, 26.821224>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.748600, 38.631691, 26.775454>,  <42.940441, 38.289085, 26.699167>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.748600, 38.631691, 26.775454> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374584, 0.396381, -0.838194,
		-0.793519, -0.330558, -0.510940,
		-0.479599, 0.856512, 0.190714,
		42.604721, 38.888645, 26.832668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.582943, 38.495842, 26.064251>,  <42.940441, 38.289085, 26.699167>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.582943, 38.495842, 26.064251> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.655617, 38.824615, 26.280180>,  <42.699223, 39.021881, 26.409739>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.655617, 38.824615, 26.280180>,  <42.582943, 38.495842, 26.064251>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.655617, 38.824615, 26.280180> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440661, 0.422705, -0.791921,
		-0.879096, 0.381759, -0.285397,
		0.181684, 0.821937, 0.539824,
		42.710121, 39.071198, 26.442127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.176632, 38.947060, 25.667984>,  <42.582943, 38.495842, 26.064251>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.176632, 38.947060, 25.667984> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.445732, 39.157867, 25.875700>,  <42.607193, 39.284351, 26.000330>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.445732, 39.157867, 25.875700>,  <42.176632, 38.947060, 25.667984>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.445732, 39.157867, 25.875700> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242324, 0.506205, -0.827669,
		-0.699064, 0.682648, 0.212839,
		0.672747, 0.527018, 0.519292,
		42.647556, 39.315971, 26.031488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.000954, 39.607754, 25.533848>,  <42.176632, 38.947060, 25.667984>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.000954, 39.607754, 25.533848> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.372181, 39.643433, 25.678474>,  <42.594917, 39.664841, 25.765249>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.372181, 39.643433, 25.678474>,  <42.000954, 39.607754, 25.533848>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.372181, 39.643433, 25.678474> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282207, 0.465056, -0.839096,
		-0.242990, 0.880777, 0.406434,
		0.928071, 0.089194, 0.361565,
		42.650600, 39.670189, 25.786943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.113125, 40.223183, 25.390301>,  <42.000954, 39.607754, 25.533848>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.113125, 40.223183, 25.390301> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.478916, 40.065937, 25.428667>,  <42.698391, 39.971592, 25.451687>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.478916, 40.065937, 25.428667>,  <42.113125, 40.223183, 25.390301>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.478916, 40.065937, 25.428667> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304666, 0.512914, -0.802557,
		0.266299, 0.763140, 0.588815,
		0.914475, -0.393112, 0.095914,
		42.753258, 39.948002, 25.457441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.602127, 40.747646, 25.226629>,  <42.113125, 40.223183, 25.390301>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.602127, 40.747646, 25.226629> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.827793, 40.420013, 25.185030>,  <42.963192, 40.223434, 25.160070>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.827793, 40.420013, 25.185030>,  <42.602127, 40.747646, 25.226629>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.827793, 40.420013, 25.185030> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437390, 0.403314, -0.803758,
		0.700290, 0.407966, 0.585797,
		0.564166, -0.819085, -0.103997,
		42.997044, 40.174286, 25.153831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.312180, 40.922203, 25.209963>,  <42.602127, 40.747646, 25.226629>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.312180, 40.922203, 25.209963> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.300735, 40.566231, 25.027884>,  <43.293869, 40.352646, 24.918636>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.300735, 40.566231, 25.027884>,  <43.312180, 40.922203, 25.209963>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.300735, 40.566231, 25.027884> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329435, 0.421549, -0.844849,
		0.943745, -0.174128, 0.281114,
		-0.028609, -0.889930, -0.455198,
		43.292152, 40.299252, 24.891325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.849052, 40.917973, 24.736238>,  <43.312180, 40.922203, 25.209963>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.849052, 40.917973, 24.736238> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.646984, 40.609146, 24.581980>,  <43.525745, 40.423851, 24.489424>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.646984, 40.609146, 24.581980>,  <43.849052, 40.917973, 24.736238>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.646984, 40.609146, 24.581980> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279976, 0.276078, -0.919453,
		0.816345, -0.572450, 0.076694,
		-0.505168, -0.772063, -0.385648,
		43.495434, 40.377525, 24.466286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.202984, 40.757725, 24.132801>,  <43.849052, 40.917973, 24.736238>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.202984, 40.757725, 24.132801> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.847599, 40.586609, 24.066309>,  <43.634369, 40.483940, 24.026413>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.847599, 40.586609, 24.066309>,  <44.202984, 40.757725, 24.132801>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.847599, 40.586609, 24.066309> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012990, 0.338614, -0.940836,
		0.458771, -0.838054, -0.295288,
		-0.888459, -0.427793, -0.166233,
		43.581062, 40.458271, 24.016439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.261887, 40.507088, 23.480669>,  <44.202984, 40.757725, 24.132801>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.261887, 40.507088, 23.480669> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.872383, 40.541950, 23.564770>,  <43.638683, 40.562870, 23.615231>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.872383, 40.541950, 23.564770>,  <44.261887, 40.507088, 23.480669>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.872383, 40.541950, 23.564770> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161637, 0.385537, -0.908424,
		-0.160237, -0.918567, -0.361330,
		-0.973755, 0.087159, 0.210251,
		43.580257, 40.568096, 23.627846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.816628, 40.079529, 22.933273>,  <44.261887, 40.507088, 23.480669>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.816628, 40.079529, 22.933273> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.620850, 40.398785, 23.073793>,  <43.503384, 40.590340, 23.158106>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.620850, 40.398785, 23.073793>,  <43.816628, 40.079529, 22.933273>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.620850, 40.398785, 23.073793> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380886, 0.166728, -0.909466,
		-0.784455, -0.578938, 0.222397,
		-0.489445, 0.798143, 0.351300,
		43.474014, 40.638229, 23.179184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.086578, 40.126022, 22.590683>,  <43.816628, 40.079529, 22.933273>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.086578, 40.126022, 22.590683> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.120899, 40.504044, 22.716864>,  <43.141491, 40.730858, 22.792572>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.120899, 40.504044, 22.716864>,  <43.086578, 40.126022, 22.590683>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.120899, 40.504044, 22.716864> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384772, 0.323486, -0.864469,
		-0.919015, -0.047208, 0.391385,
		0.085797, 0.945055, 0.315453,
		43.146637, 40.787560, 22.811499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.839344, 39.646061, 22.115961>,  <43.086578, 40.126022, 22.590683>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.839344, 39.646061, 22.115961> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.965939, 39.409992, 21.818899>,  <43.041897, 39.268353, 21.640661>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.965939, 39.409992, 21.818899>,  <42.839344, 39.646061, 22.115961>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.965939, 39.409992, 21.818899> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281831, -0.806047, 0.520441,
		-0.905763, 0.044591, -0.421431,
		0.316486, -0.590169, -0.742655,
		43.060883, 39.232941, 21.596102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.181549, 39.305965, 21.922731>,  <42.839344, 39.646061, 22.115961>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.181549, 39.305965, 21.922731> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.515594, 39.104176, 21.835012>,  <42.716022, 38.983101, 21.782381>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.515594, 39.104176, 21.835012>,  <42.181549, 39.305965, 21.922731>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.515594, 39.104176, 21.835012> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264841, -0.718158, 0.643513,
		-0.482125, -0.479327, -0.733349,
		0.835114, -0.504474, -0.219296,
		42.766129, 38.952835, 21.769224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.979530, 38.661079, 21.671478>,  <42.181549, 39.305965, 21.922731>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.979530, 38.661079, 21.671478> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.365849, 38.627174, 21.769506>,  <42.597637, 38.606831, 21.828323>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.365849, 38.627174, 21.769506>,  <41.979530, 38.661079, 21.671478>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.365849, 38.627174, 21.769506> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247074, -0.587709, 0.770423,
		0.078730, -0.804620, -0.588548,
		0.965793, -0.084759, 0.245071,
		42.655586, 38.601746, 21.843027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.974255, 37.911217, 21.935005>,  <41.979530, 38.661079, 21.671478>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.974255, 37.911217, 21.935005> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.312687, 38.093613, 22.045435>,  <42.515747, 38.203049, 22.111692>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.312687, 38.093613, 22.045435>,  <41.974255, 37.911217, 21.935005>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.312687, 38.093613, 22.045435> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047380, -0.580194, 0.813099,
		0.530943, -0.674867, -0.512497,
		0.846081, 0.455991, 0.276075,
		42.566513, 38.230412, 22.128258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.400745, 37.332962, 22.117275>,  <41.974255, 37.911217, 21.935005>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.400745, 37.332962, 22.117275> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.546970, 37.654350, 22.305235>,  <42.634705, 37.847183, 22.418011>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.546970, 37.654350, 22.305235>,  <42.400745, 37.332962, 22.117275>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.546970, 37.654350, 22.305235> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165224, -0.440806, 0.882264,
		0.916004, -0.400164, -0.028392,
		0.365566, 0.803466, 0.469897,
		42.656639, 37.895390, 22.446203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.767994, 37.057266, 22.607967>,  <42.400745, 37.332962, 22.117275>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.767994, 37.057266, 22.607967> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.699287, 37.427761, 22.742174>,  <42.658062, 37.650059, 22.822699>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.699287, 37.427761, 22.742174>,  <42.767994, 37.057266, 22.607967>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.699287, 37.427761, 22.742174> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299853, -0.373577, 0.877798,
		0.938394, 0.050170, 0.341905,
		-0.171767, 0.926242, 0.335518,
		42.647758, 37.705635, 22.842831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.131519, 37.017273, 23.258556>,  <42.767994, 37.057266, 22.607967>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.131519, 37.017273, 23.258556> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.896885, 37.339104, 23.295586>,  <42.756104, 37.532204, 23.317802>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.896885, 37.339104, 23.295586>,  <43.131519, 37.017273, 23.258556>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.896885, 37.339104, 23.295586> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345630, -0.352066, 0.869822,
		0.732430, 0.478232, 0.484603,
		-0.586589, 0.804577, 0.092572,
		42.720909, 37.580479, 23.323357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.291962, 37.267284, 23.841867>,  <43.131519, 37.017273, 23.258556>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.291962, 37.267284, 23.841867> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.919464, 37.393917, 23.769682>,  <42.695965, 37.469894, 23.726370>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.919464, 37.393917, 23.769682>,  <43.291962, 37.267284, 23.841867>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.919464, 37.393917, 23.769682> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310181, -0.428735, 0.848513,
		0.191250, 0.846147, 0.497453,
		-0.931242, 0.316579, -0.180463,
		42.640091, 37.488892, 23.715544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.025787, 37.299747, 24.490499>,  <43.291962, 37.267284, 23.841867>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.025787, 37.299747, 24.490499> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.698769, 37.348667, 24.265409>,  <42.502556, 37.378017, 24.130356>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.698769, 37.348667, 24.265409>,  <43.025787, 37.299747, 24.490499>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.698769, 37.348667, 24.265409> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.560987, -0.389809, 0.730303,
		-0.130042, 0.912739, 0.387294,
		-0.817547, 0.122297, -0.562726,
		42.453503, 37.385357, 24.096592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.605110, 37.663643, 24.932573>,  <43.025787, 37.299747, 24.490499>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.605110, 37.663643, 24.932573> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.357231, 37.522129, 24.652340>,  <42.208504, 37.437222, 24.484200>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.357231, 37.522129, 24.652340>,  <42.605110, 37.663643, 24.932573>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.357231, 37.522129, 24.652340> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.610808, -0.343133, 0.713563,
		-0.492839, 0.870114, -0.003455,
		-0.619696, -0.353782, -0.700582,
		42.171322, 37.415993, 24.442165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.945511, 38.004524, 24.956064>,  <42.605110, 37.663643, 24.932573>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.945511, 38.004524, 24.956064> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.927513, 37.631226, 24.813503>,  <41.916714, 37.407246, 24.727966>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.927513, 37.631226, 24.813503>,  <41.945511, 38.004524, 24.956064>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.927513, 37.631226, 24.813503> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394583, -0.311155, 0.864573,
		-0.917758, 0.179531, -0.354243,
		-0.044993, -0.933248, -0.356405,
		41.914017, 37.351250, 24.706581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.354652, 37.849018, 25.157944>,  <41.945511, 38.004524, 24.956064>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.354652, 37.849018, 25.157944> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.539116, 37.499947, 25.093729>,  <41.649796, 37.290504, 25.055201>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.539116, 37.499947, 25.093729>,  <41.354652, 37.849018, 25.157944>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.539116, 37.499947, 25.093729> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446947, -0.384750, 0.807593,
		-0.766532, -0.300677, -0.567470,
		0.461159, -0.872675, -0.160537,
		41.677464, 37.238144, 25.045568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.830811, 37.404243, 25.307236>,  <41.354652, 37.849018, 25.157944>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.830811, 37.404243, 25.307236> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.135925, 37.147343, 25.337374>,  <41.318993, 36.993202, 25.355455>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.135925, 37.147343, 25.337374>,  <40.830811, 37.404243, 25.307236>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.135925, 37.147343, 25.337374> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497039, -0.507775, 0.703645,
		-0.413655, -0.574180, -0.706546,
		0.762785, -0.642247, 0.075346,
		41.364761, 36.954666, 25.359978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.516148, 36.702072, 25.314966>,  <40.830811, 37.404243, 25.307236>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.516148, 36.702072, 25.314966> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.891510, 36.675335, 25.450571>,  <41.116726, 36.659290, 25.531935>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.891510, 36.675335, 25.450571>,  <40.516148, 36.702072, 25.314966>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.891510, 36.675335, 25.450571> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308356, -0.604744, 0.734303,
		0.155931, -0.793609, -0.588107,
		0.938404, -0.066845, 0.339013,
		41.173031, 36.655281, 25.552275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.392838, 36.200012, 24.727797>,  <40.516148, 36.702072, 25.314966>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.392838, 36.200012, 24.727797> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.059200, 36.021957, 24.597477>,  <39.859020, 35.915123, 24.519285>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.059200, 36.021957, 24.597477>,  <40.392838, 36.200012, 24.727797>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.059200, 36.021957, 24.597477> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037235, 0.634702, -0.771859,
		0.550370, -0.631669, -0.545974,
		-0.834090, -0.445137, -0.325801,
		39.808971, 35.888416, 24.499737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.470833, 35.948452, 24.134232>,  <40.392838, 36.200012, 24.727797>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.470833, 35.948452, 24.134232> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.071243, 35.966122, 24.138393>,  <39.831490, 35.976723, 24.140890>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.071243, 35.966122, 24.138393>,  <40.470833, 35.948452, 24.134232>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.071243, 35.966122, 24.138393> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013455, 0.507246, -0.861696,
		-0.043343, -0.860669, -0.507317,
		-0.998969, 0.044174, 0.010405,
		39.771553, 35.979374, 24.141516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.170830, 35.598225, 23.579437>,  <40.470833, 35.948452, 24.134232>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.170830, 35.598225, 23.579437> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.899395, 35.875584, 23.676371>,  <39.736534, 36.042000, 23.734531>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.899395, 35.875584, 23.676371>,  <40.170830, 35.598225, 23.579437>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.899395, 35.875584, 23.676371> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183049, 0.479154, -0.858432,
		-0.711346, -0.538161, -0.452072,
		-0.678587, 0.693393, 0.242334,
		39.695820, 36.083603, 23.749071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.665165, 35.654751, 23.060429>,  <40.170830, 35.598225, 23.579437>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.665165, 35.654751, 23.060429> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.629482, 36.008259, 23.244167>,  <39.608074, 36.220364, 23.354410>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.629482, 36.008259, 23.244167>,  <39.665165, 35.654751, 23.060429>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.629482, 36.008259, 23.244167> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003547, 0.461463, -0.887152,
		-0.996007, -0.077507, -0.044298,
		-0.089203, 0.883767, 0.459345,
		39.602722, 36.273388, 23.381971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.249744, 36.096680, 22.545485>,  <39.665165, 35.654751, 23.060429>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.249744, 36.096680, 22.545485> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.390919, 36.384045, 22.785257>,  <39.475624, 36.556461, 22.929121>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.390919, 36.384045, 22.785257>,  <39.249744, 36.096680, 22.545485>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.390919, 36.384045, 22.785257> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163725, 0.678198, -0.716409,
		-0.921211, 0.154706, 0.356983,
		0.352938, 0.718410, 0.599434,
		39.496799, 36.599567, 22.965088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.875038, 36.601025, 22.337997>,  <39.249744, 36.096680, 22.545485>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.875038, 36.601025, 22.337997> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.177460, 36.783741, 22.525497>,  <39.358913, 36.893372, 22.637997>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.177460, 36.783741, 22.525497>,  <38.875038, 36.601025, 22.337997>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.177460, 36.783741, 22.525497> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050410, 0.673415, -0.737544,
		-0.652565, 0.581253, 0.486111,
		0.756054, 0.456791, 0.468748,
		39.404274, 36.920780, 22.666122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.762394, 37.387245, 22.352577>,  <38.875038, 36.601025, 22.337997>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.762394, 37.387245, 22.352577> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.156288, 37.331150, 22.393805>,  <39.392624, 37.297493, 22.418541>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.156288, 37.331150, 22.393805>,  <38.762394, 37.387245, 22.352577>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.156288, 37.331150, 22.393805> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171048, 0.670505, -0.721918,
		0.032130, 0.728531, 0.684259,
		0.984739, -0.140236, 0.103070,
		39.451710, 37.289078, 22.424725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.726891, 38.014591, 22.701969>,  <38.762394, 37.387245, 22.352577>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.726891, 38.014591, 22.701969> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.521805, 38.347343, 22.786917>,  <38.398754, 38.546993, 22.837885>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.521805, 38.347343, 22.786917>,  <38.726891, 38.014591, 22.701969>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.521805, 38.347343, 22.786917> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282502, -0.397042, 0.873241,
		0.810753, 0.387726, 0.438576,
		-0.512712, 0.831881, 0.212370,
		38.367992, 38.596909, 22.850628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.932121, 38.047329, 23.373777>,  <38.726891, 38.014591, 22.701969>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.932121, 38.047329, 23.373777> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.610798, 38.281261, 23.328747>,  <38.418003, 38.421619, 23.301727>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.610798, 38.281261, 23.328747>,  <38.932121, 38.047329, 23.373777>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.610798, 38.281261, 23.328747> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325302, -0.272524, 0.905488,
		0.498875, 0.764007, 0.409167,
		-0.803307, 0.584828, -0.112578,
		38.369804, 38.456711, 23.294973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.960400, 38.465408, 23.900665>,  <38.932121, 38.047329, 23.373777>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.960400, 38.465408, 23.900665> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.575424, 38.430916, 23.797689>,  <38.344440, 38.410221, 23.735905>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.575424, 38.430916, 23.797689>,  <38.960400, 38.465408, 23.900665>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.575424, 38.430916, 23.797689> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243894, -0.141976, 0.959353,
		-0.119273, 0.986107, 0.115613,
		-0.962439, -0.086228, -0.257439,
		38.286694, 38.405048, 23.720457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.647049, 38.671844, 24.518162>,  <38.960400, 38.465408, 23.900665>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.647049, 38.671844, 24.518162> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.336452, 38.526260, 24.312407>,  <38.150097, 38.438908, 24.188953>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.336452, 38.526260, 24.312407>,  <38.647049, 38.671844, 24.518162>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.336452, 38.526260, 24.312407> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481199, -0.184546, 0.856966,
		-0.406833, 0.912947, -0.031841,
		-0.776489, -0.363964, -0.514389,
		38.103504, 38.417072, 24.158091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.044308, 38.892372, 24.911907>,  <38.647049, 38.671844, 24.518162>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.044308, 38.892372, 24.911907> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.951244, 38.583485, 24.675419>,  <37.895405, 38.398151, 24.533525>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.951244, 38.583485, 24.675419>,  <38.044308, 38.892372, 24.911907>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.951244, 38.583485, 24.675419> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369273, -0.492238, 0.788251,
		-0.899725, 0.401719, -0.170635,
		-0.232662, -0.772220, -0.591223,
		37.881447, 38.351818, 24.498053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.395206, 38.699528, 25.113733>,  <38.044308, 38.892372, 24.911907>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.395206, 38.699528, 25.113733> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.512436, 38.377556, 24.907356>,  <37.582775, 38.184372, 24.783531>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.512436, 38.377556, 24.907356>,  <37.395206, 38.699528, 25.113733>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.512436, 38.377556, 24.907356> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304283, -0.590106, 0.747788,
		-0.906377, -0.062167, -0.417871,
		0.293076, -0.804929, -0.515942,
		37.600357, 38.136078, 24.752573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.849613, 38.362556, 25.110458>,  <37.395206, 38.699528, 25.113733>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.849613, 38.362556, 25.110458> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.136265, 38.088238, 25.059658>,  <37.308254, 37.923649, 25.029177>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.136265, 38.088238, 25.059658>,  <36.849613, 38.362556, 25.110458>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.136265, 38.088238, 25.059658> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440765, -0.586436, 0.679573,
		-0.540524, -0.431025, -0.722531,
		0.716631, -0.685792, -0.127001,
		37.351254, 37.882500, 25.021557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<40.569099, 42.817406, 24.245991> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.821598, 42.508892, 24.278593>,  <40.973099, 42.323784, 24.298155>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.821598, 42.508892, 24.278593>,  <40.569099, 42.817406, 24.245991>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.821598, 42.508892, 24.278593> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.703851, -0.525557, 0.477894,
		-0.325756, -0.359040, -0.874628,
		0.631250, -0.771285, 0.081507,
		41.010971, 42.277508, 24.303045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.189972, 42.257145, 23.970829>,  <40.569099, 42.817406, 24.245991>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.189972, 42.257145, 23.970829> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.491428, 42.051483, 24.134621>,  <40.672302, 41.928085, 24.232897>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.491428, 42.051483, 24.134621>,  <40.189972, 42.257145, 23.970829>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.491428, 42.051483, 24.134621> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.655710, -0.544925, 0.522592,
		-0.045557, -0.662345, -0.747813,
		0.753637, -0.514156, 0.409481,
		40.717518, 41.897236, 24.257465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.943771, 41.544361, 24.051172>,  <40.189972, 42.257145, 23.970829>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.943771, 41.544361, 24.051172> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.227821, 41.610107, 24.325020>,  <40.398251, 41.649555, 24.489328>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.227821, 41.610107, 24.325020>,  <39.943771, 41.544361, 24.051172>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.227821, 41.610107, 24.325020> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.607171, -0.349334, 0.713659,
		0.356463, -0.922469, -0.148273,
		0.710126, 0.164366, 0.684621,
		40.440861, 41.659416, 24.530407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.978119, 40.881588, 24.527258>,  <39.943771, 41.544361, 24.051172>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.978119, 40.881588, 24.527258> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.151161, 41.175793, 24.735826>,  <40.254986, 41.352314, 24.860968>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.151161, 41.175793, 24.735826>,  <39.978119, 40.881588, 24.527258>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.151161, 41.175793, 24.735826> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490131, -0.293557, 0.820729,
		0.756722, -0.610613, 0.233503,
		0.432601, 0.735511, 0.521421,
		40.280941, 41.396446, 24.892252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.303673, 40.544258, 25.032490>,  <39.978119, 40.881588, 24.527258>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.303673, 40.544258, 25.032490> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.271656, 40.918587, 25.169802>,  <40.252445, 41.143185, 25.252188>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.271656, 40.918587, 25.169802>,  <40.303673, 40.544258, 25.032490>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.271656, 40.918587, 25.169802> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506955, -0.334734, 0.794323,
		0.858249, -0.110452, 0.501209,
		-0.080037, 0.935817, 0.343279,
		40.247646, 41.199333, 25.272785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.457417, 40.586735, 25.718332>,  <40.303673, 40.544258, 25.032490>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.457417, 40.586735, 25.718332> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.263912, 40.936111, 25.696125>,  <40.147808, 41.145737, 25.682800>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.263912, 40.936111, 25.696125>,  <40.457417, 40.586735, 25.718332>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.263912, 40.936111, 25.696125> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215075, -0.057152, 0.974924,
		0.848363, 0.483569, 0.215502,
		-0.483759, 0.873438, -0.055518,
		40.118786, 41.198143, 25.679470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.840824, 41.038494, 26.260719>,  <40.457417, 40.586735, 25.718332>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.840824, 41.038494, 26.260719> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.474461, 41.177738, 26.180794>,  <40.254642, 41.261284, 26.132839>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.474461, 41.177738, 26.180794>,  <40.840824, 41.038494, 26.260719>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.474461, 41.177738, 26.180794> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249672, -0.104327, 0.962694,
		0.314282, 0.931629, 0.182469,
		-0.915910, 0.348114, -0.199813,
		40.199688, 41.282173, 26.120850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.613098, 41.578903, 26.795267>,  <40.840824, 41.038494, 26.260719>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.613098, 41.578903, 26.795267> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.275410, 41.472939, 26.608887>,  <40.072796, 41.409359, 26.497059>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.275410, 41.472939, 26.608887>,  <40.613098, 41.578903, 26.795267>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.275410, 41.472939, 26.608887> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434791, -0.169903, 0.884358,
		-0.313443, 0.949187, 0.028255,
		-0.844221, -0.264911, -0.465953,
		40.022144, 41.393467, 26.469101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.058552, 41.986202, 27.099646>,  <40.613098, 41.578903, 26.795267>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.058552, 41.986202, 27.099646> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.872528, 41.663609, 26.953606>,  <39.760914, 41.470051, 26.865982>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.872528, 41.663609, 26.953606>,  <40.058552, 41.986202, 27.099646>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.872528, 41.663609, 26.953606> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362621, -0.202688, 0.909628,
		-0.807603, 0.555428, -0.198186,
		-0.465063, -0.806484, -0.365101,
		39.733009, 41.421661, 26.844076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.382492, 42.081661, 27.349220>,  <40.058552, 41.986202, 27.099646>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.382492, 42.081661, 27.349220> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.390091, 41.703140, 27.220131>,  <39.394650, 41.476028, 27.142677>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.390091, 41.703140, 27.220131>,  <39.382492, 42.081661, 27.349220>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.390091, 41.703140, 27.220131> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501385, -0.288278, 0.815787,
		-0.865016, 0.146312, -0.479939,
		0.018997, -0.946303, -0.322724,
		39.395790, 41.419250, 27.123314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.697754, 41.773251, 27.061367>,  <39.382492, 42.081661, 27.349220>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.697754, 41.773251, 27.061367> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.925323, 41.474400, 27.198839>,  <39.061867, 41.295090, 27.281322>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.925323, 41.474400, 27.198839>,  <38.697754, 41.773251, 27.061367>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.925323, 41.474400, 27.198839> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.769177, -0.335542, 0.543855,
		-0.291007, -0.573772, -0.765572,
		0.568930, -0.747126, 0.343687,
		39.096001, 41.250259, 27.301943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.298359, 41.267170, 26.958292>,  <38.697754, 41.773251, 27.061367>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.298359, 41.267170, 26.958292> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.569126, 41.156883, 27.231279>,  <38.731586, 41.090714, 27.395071>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.569126, 41.156883, 27.231279>,  <38.298359, 41.267170, 26.958292>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.569126, 41.156883, 27.231279> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.733623, -0.328067, 0.595122,
		0.059812, -0.903524, -0.424344,
		0.676920, -0.275713, 0.682468,
		38.772202, 41.074169, 27.436020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.040154, 40.762878, 26.468294>,  <38.298359, 41.267170, 26.958292>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.040154, 40.762878, 26.468294> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.767506, 40.553368, 26.263920>,  <37.603916, 40.427662, 26.141294>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.767506, 40.553368, 26.263920>,  <38.040154, 40.762878, 26.468294>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.767506, 40.553368, 26.263920> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490184, 0.191565, -0.850308,
		0.543249, -0.830037, 0.126173,
		-0.681616, -0.523776, -0.510938,
		37.563019, 40.396236, 26.110638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.400932, 40.255001, 26.059324>,  <38.040154, 40.762878, 26.468294>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.400932, 40.255001, 26.059324> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.047600, 40.345333, 25.895018>,  <37.835602, 40.399532, 25.796434>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.047600, 40.345333, 25.895018>,  <38.400932, 40.255001, 26.059324>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.047600, 40.345333, 25.895018> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464928, 0.310358, -0.829168,
		-0.059769, -0.923405, -0.379145,
		-0.883329, 0.225834, -0.410767,
		37.782600, 40.413082, 25.771788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.500641, 40.036285, 25.441217>,  <38.400932, 40.255001, 26.059324>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.500641, 40.036285, 25.441217> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.170792, 40.257549, 25.393869>,  <37.972881, 40.390308, 25.365461>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.170792, 40.257549, 25.393869>,  <38.500641, 40.036285, 25.441217>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.170792, 40.257549, 25.393869> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342123, 0.321044, -0.883110,
		-0.450501, -0.768728, -0.453989,
		-0.824621, 0.553162, -0.118369,
		37.923405, 40.423496, 25.358358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.153988, 39.873409, 24.749149>,  <38.500641, 40.036285, 25.441217>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.153988, 39.873409, 24.749149> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.018963, 40.238094, 24.842813>,  <37.937946, 40.456905, 24.899012>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.018963, 40.238094, 24.842813>,  <38.153988, 39.873409, 24.749149>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.018963, 40.238094, 24.842813> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303820, 0.340978, -0.889622,
		-0.890924, -0.229159, -0.392097,
		-0.337562, 0.911713, 0.234163,
		37.917694, 40.511608, 24.913063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.660130, 39.993656, 24.186390>,  <38.153988, 39.873409, 24.749149>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.660130, 39.993656, 24.186390> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.743443, 40.347839, 24.352562>,  <37.793430, 40.560349, 24.452265>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.743443, 40.347839, 24.352562>,  <37.660130, 39.993656, 24.186390>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.743443, 40.347839, 24.352562> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238411, 0.365969, -0.899570,
		-0.948566, 0.286411, -0.134877,
		0.208286, 0.885458, 0.415429,
		37.805927, 40.613476, 24.477190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.331211, 40.544590, 23.751890>,  <37.660130, 39.993656, 24.186390>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.331211, 40.544590, 23.751890> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.632214, 40.708488, 23.958130>,  <37.812817, 40.806828, 24.081875>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.632214, 40.708488, 23.958130>,  <37.331211, 40.544590, 23.751890>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.632214, 40.708488, 23.958130> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378349, 0.371843, -0.847694,
		-0.539063, 0.832971, 0.124786,
		0.752505, 0.409747, 0.515600,
		37.857964, 40.831413, 24.112810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.468773, 41.204849, 23.392475>,  <37.331211, 40.544590, 23.751890>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.468773, 41.204849, 23.392475> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.795849, 41.121090, 23.606966>,  <37.992096, 41.070835, 23.735661>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.795849, 41.121090, 23.606966>,  <37.468773, 41.204849, 23.392475>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.795849, 41.121090, 23.606966> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.544450, 0.583854, -0.602237,
		-0.186972, 0.784390, 0.591416,
		0.817689, -0.209395, 0.536226,
		38.041157, 41.058270, 23.767834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.682156, 41.868824, 23.570675>,  <37.468773, 41.204849, 23.392475>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.682156, 41.868824, 23.570675> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.987999, 41.611095, 23.576597>,  <38.171505, 41.456459, 23.580151>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.987999, 41.611095, 23.576597>,  <37.682156, 41.868824, 23.570675>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.987999, 41.611095, 23.576597> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518645, 0.601509, -0.607614,
		0.382592, 0.472268, 0.794095,
		0.764612, -0.644321, 0.014807,
		38.217384, 41.417801, 23.581039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.320873, 42.323818, 23.543154>,  <37.682156, 41.868824, 23.570675>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.320873, 42.323818, 23.543154> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.466232, 41.962112, 23.453489>,  <38.553448, 41.745090, 23.399691>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.466232, 41.962112, 23.453489>,  <38.320873, 42.323818, 23.543154>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.466232, 41.962112, 23.453489> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589732, 0.409543, -0.696054,
		0.721221, 0.120747, 0.682100,
		0.363396, -0.904265, -0.224162,
		38.575253, 41.690834, 23.386240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.147507, 42.457634, 23.479435>,  <38.320873, 42.323818, 23.543154>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.147507, 42.457634, 23.479435> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.046619, 42.118904, 23.292128>,  <38.986088, 41.915665, 23.179743>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.046619, 42.118904, 23.292128>,  <39.147507, 42.457634, 23.479435>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.046619, 42.118904, 23.292128> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.654175, 0.207371, -0.727360,
		0.713051, -0.489781, 0.501669,
		-0.252216, -0.846824, -0.468269,
		38.970955, 41.864857, 23.151648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.764923, 42.185829, 23.313471>,  <39.147507, 42.457634, 23.479435>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.764923, 42.185829, 23.313471> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.478386, 42.032356, 23.080355>,  <39.306465, 41.940273, 22.940485>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.478386, 42.032356, 23.080355>,  <39.764923, 42.185829, 23.313471>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.478386, 42.032356, 23.080355> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447994, 0.387433, -0.805727,
		0.534937, -0.838261, -0.105645,
		-0.716340, -0.383685, -0.582789,
		39.263485, 41.917252, 22.905518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.053856, 42.060261, 22.783792>,  <39.764923, 42.185829, 23.313471>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.053856, 42.060261, 22.783792> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.673840, 42.067921, 22.659174>,  <39.445831, 42.072517, 22.584402>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.673840, 42.067921, 22.659174>,  <40.053856, 42.060261, 22.783792>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.673840, 42.067921, 22.659174> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308688, 0.205563, -0.928685,
		0.046253, -0.978457, -0.201206,
		-0.950038, 0.019155, -0.311546,
		39.388828, 42.073666, 22.565710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.013145, 41.671490, 22.217228>,  <40.053856, 42.060261, 22.783792>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.013145, 41.671490, 22.217228> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.700962, 41.921524, 22.222137>,  <39.513653, 42.071545, 22.225082>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.700962, 41.921524, 22.222137>,  <40.013145, 41.671490, 22.217228>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.700962, 41.921524, 22.222137> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318808, 0.414783, -0.852242,
		-0.537816, -0.661227, -0.523004,
		-0.780459, 0.625087, 0.012272,
		39.466824, 42.109051, 22.225819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.683624, 41.671627, 21.436104>,  <40.013145, 41.671490, 22.217228>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.683624, 41.671627, 21.436104> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.586815, 42.002880, 21.638338>,  <39.528728, 42.201633, 21.759678>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.586815, 42.002880, 21.638338>,  <39.683624, 41.671627, 21.436104>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.586815, 42.002880, 21.638338> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366537, 0.560499, -0.742625,
		-0.898375, 0.005585, -0.439195,
		-0.242020, 0.828137, 0.505585,
		39.514210, 42.251320, 21.790014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.726521, 40.911209, 21.437178>,  <39.683624, 41.671627, 21.436104>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.726521, 40.911209, 21.437178> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.540817, 40.667137, 21.180382>,  <39.429398, 40.520695, 21.026304>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.540817, 40.667137, 21.180382>,  <39.726521, 40.911209, 21.437178>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.540817, 40.667137, 21.180382> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474861, -0.440378, 0.761954,
		-0.747647, 0.658596, -0.085303,
		-0.464255, -0.610180, -0.641988,
		39.401543, 40.484085, 20.987785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.031490, 40.905586, 21.610359>,  <39.726521, 40.911209, 21.437178>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.031490, 40.905586, 21.610359> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.071011, 40.568523, 21.398636>,  <39.094723, 40.366283, 21.271603>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.071011, 40.568523, 21.398636>,  <39.031490, 40.905586, 21.610359>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.071011, 40.568523, 21.398636> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.507079, -0.500301, 0.701833,
		-0.856218, 0.199061, -0.476723,
		0.098797, -0.842659, -0.529306,
		39.100651, 40.315727, 21.239843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.334919, 40.618023, 21.692791>,  <39.031490, 40.905586, 21.610359>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.334919, 40.618023, 21.692791> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.593178, 40.332581, 21.584055>,  <38.748135, 40.161316, 21.518814>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.593178, 40.332581, 21.584055>,  <38.334919, 40.618023, 21.692791>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.593178, 40.332581, 21.584055> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397844, -0.618195, 0.677905,
		-0.651813, -0.329536, -0.683042,
		0.645647, -0.713611, -0.271843,
		38.786873, 40.118496, 21.502502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.896313, 39.961823, 21.562225>,  <38.334919, 40.618023, 21.692791>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.896313, 39.961823, 21.562225> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.275154, 39.867790, 21.649626>,  <38.502457, 39.811371, 21.702066>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.275154, 39.867790, 21.649626>,  <37.896313, 39.961823, 21.562225>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.275154, 39.867790, 21.649626> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320935, -0.689184, 0.649636,
		-0.002127, -0.685393, -0.728170,
		0.947099, -0.235077, 0.218500,
		38.559284, 39.797268, 21.715176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.808151, 39.200256, 21.620375>,  <37.896313, 39.961823, 21.562225>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.808151, 39.200256, 21.620375> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.164982, 39.302006, 21.769766>,  <38.379082, 39.363056, 21.859400>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.164982, 39.302006, 21.769766>,  <37.808151, 39.200256, 21.620375>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.164982, 39.302006, 21.769766> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126784, -0.652408, 0.747188,
		0.433727, -0.713903, -0.549749,
		0.892080, 0.254376, 0.373478,
		38.432606, 39.378319, 21.881809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.040218, 38.651512, 21.734201>,  <37.808151, 39.200256, 21.620375>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.040218, 38.651512, 21.734201> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.251431, 38.892567, 21.973539>,  <38.378159, 39.037197, 22.117142>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.251431, 38.892567, 21.973539>,  <38.040218, 38.651512, 21.734201>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.251431, 38.892567, 21.973539> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110754, -0.649693, 0.752085,
		0.841974, -0.463391, -0.276312,
		0.528027, 0.602634, 0.598347,
		38.409840, 39.073357, 22.153044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.540806, 38.239712, 21.990360>,  <38.040218, 38.651512, 21.734201>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.540806, 38.239712, 21.990360> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.483688, 38.548409, 22.238237>,  <38.449417, 38.733627, 22.386965>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.483688, 38.548409, 22.238237>,  <38.540806, 38.239712, 21.990360>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.483688, 38.548409, 22.238237> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117181, -0.634888, 0.763666,
		0.982791, 0.036431, 0.181092,
		-0.142794, 0.771744, 0.619694,
		38.440849, 38.779930, 22.424145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.272427, 38.422661, 22.121029>,  <38.540806, 38.239712, 21.990360>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.272427, 38.422661, 22.121029> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.527977, 38.121632, 22.184860>,  <39.681309, 37.941013, 22.223158>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.527977, 38.121632, 22.184860>,  <39.272427, 38.422661, 22.121029>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.527977, 38.121632, 22.184860> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487053, 0.235114, -0.841131,
		0.595496, 0.615102, 0.516753,
		0.638878, -0.752576, 0.159578,
		39.719639, 37.895859, 22.232733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.024643, 38.692219, 22.216440>,  <39.272427, 38.422661, 22.121029>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.024643, 38.692219, 22.216440> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.006733, 38.319221, 22.073076>,  <39.995987, 38.095425, 21.987059>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.006733, 38.319221, 22.073076>,  <40.024643, 38.692219, 22.216440>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.006733, 38.319221, 22.073076> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447555, 0.302025, -0.841710,
		0.893135, -0.198098, 0.403817,
		-0.044778, -0.932490, -0.358408,
		39.993298, 38.039474, 21.965553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.668911, 38.675220, 21.821692>,  <40.024643, 38.692219, 22.216440>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.668911, 38.675220, 21.821692> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.438992, 38.389778, 21.661507>,  <40.301041, 38.218513, 21.565395>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.438992, 38.389778, 21.661507>,  <40.668911, 38.675220, 21.821692>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.438992, 38.389778, 21.661507> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449380, 0.133707, -0.883278,
		0.683858, -0.687668, 0.243826,
		-0.574801, -0.713607, -0.400461,
		40.266552, 38.175697, 21.541368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.079868, 38.424957, 21.279640>,  <40.668911, 38.675220, 21.821692>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.079868, 38.424957, 21.279640> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.717537, 38.271736, 21.207270>,  <40.500137, 38.179802, 21.163847>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.717537, 38.271736, 21.207270>,  <41.079868, 38.424957, 21.279640>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.717537, 38.271736, 21.207270> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218661, -0.056966, -0.974137,
		0.362842, -0.921967, 0.135361,
		-0.905833, -0.383056, -0.180928,
		40.445786, 38.156818, 21.152990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.230846, 37.906479, 20.913401>,  <41.079868, 38.424957, 21.279640>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.230846, 37.906479, 20.913401> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.840614, 37.953629, 20.839268>,  <40.606476, 37.981918, 20.794788>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.840614, 37.953629, 20.839268>,  <41.230846, 37.906479, 20.913401>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.840614, 37.953629, 20.839268> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196103, 0.087423, -0.976679,
		-0.098926, -0.989173, -0.108404,
		-0.975581, 0.117877, -0.185331,
		40.547939, 37.988991, 20.783669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.139030, 37.458893, 20.360405>,  <41.230846, 37.906479, 20.913401>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.139030, 37.458893, 20.360405> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.868126, 37.753090, 20.368046>,  <40.705582, 37.929607, 20.372631>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.868126, 37.753090, 20.368046>,  <41.139030, 37.458893, 20.360405>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.868126, 37.753090, 20.368046> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158339, 0.171058, -0.972454,
		-0.718502, -0.655582, -0.232309,
		-0.677262, 0.735494, 0.019102,
		40.664948, 37.973740, 20.373775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.748840, 37.448788, 19.797905>,  <41.139030, 37.458893, 20.360405>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.748840, 37.448788, 19.797905> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.681210, 37.827770, 19.906521>,  <40.640633, 38.055161, 19.971689>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.681210, 37.827770, 19.906521>,  <40.748840, 37.448788, 19.797905>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.681210, 37.827770, 19.906521> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108232, 0.291686, -0.950371,
		-0.979643, -0.131294, -0.151862,
		-0.169074, 0.947461, 0.271538,
		40.630486, 38.112007, 19.987982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.185429, 37.662651, 19.328709>,  <40.748840, 37.448788, 19.797905>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.185429, 37.662651, 19.328709> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.357105, 38.005714, 19.441999>,  <40.460114, 38.211552, 19.509974>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.357105, 38.005714, 19.441999>,  <40.185429, 37.662651, 19.328709>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.357105, 38.005714, 19.441999> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048293, 0.334917, -0.941009,
		-0.901921, 0.390197, 0.185163,
		0.429193, 0.857658, 0.283225,
		40.485863, 38.263012, 19.526966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.795429, 38.042664, 18.908354>,  <40.185429, 37.662651, 19.328709>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.795429, 38.042664, 18.908354> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.159527, 38.186268, 18.990891>,  <40.377983, 38.272430, 19.040413>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.159527, 38.186268, 18.990891>,  <39.795429, 38.042664, 18.908354>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.159527, 38.186268, 18.990891> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217987, 0.008219, -0.975917,
		-0.352056, 0.933299, -0.070777,
		0.910241, 0.359006, 0.206341,
		40.432598, 38.293968, 19.052794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<36.658970, 31.044935, 33.278866> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.981239, 31.257139, 33.384281>,  <37.174599, 31.384462, 33.447533>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.981239, 31.257139, 33.384281>,  <36.658970, 31.044935, 33.278866>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.981239, 31.257139, 33.384281> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087841, 0.546974, -0.832528,
		-0.585815, 0.647594, 0.487281,
		0.805670, 0.530511, 0.263541,
		37.222939, 31.416292, 33.463345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.557987, 31.835274, 33.188438>,  <36.658970, 31.044935, 33.278866>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.557987, 31.835274, 33.188438> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.954182, 31.784203, 33.167927>,  <37.191898, 31.753559, 33.155621>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.954182, 31.784203, 33.167927>,  <36.557987, 31.835274, 33.188438>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.954182, 31.784203, 33.167927> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032986, 0.582184, -0.812388,
		0.133580, 0.802970, 0.580858,
		0.990489, -0.127679, -0.051281,
		37.251328, 31.745899, 33.152542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.895580, 32.582298, 33.012241>,  <36.557987, 31.835274, 33.188438>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.895580, 32.582298, 33.012241> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.116943, 32.267494, 32.903172>,  <37.249763, 32.078613, 32.837730>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.116943, 32.267494, 32.903172>,  <36.895580, 32.582298, 33.012241>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.116943, 32.267494, 32.903172> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127558, 0.403597, -0.906001,
		0.823083, 0.466609, 0.323744,
		0.553410, -0.787010, -0.272675,
		37.282967, 32.031391, 32.821369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.395805, 32.869263, 32.720596>,  <36.895580, 32.582298, 33.012241>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.395805, 32.869263, 32.720596> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.393356, 32.494003, 32.582127>,  <37.391888, 32.268848, 32.499046>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.393356, 32.494003, 32.582127>,  <37.395805, 32.869263, 32.720596>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.393356, 32.494003, 32.582127> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022584, 0.346222, -0.937881,
		0.999726, 0.002078, -0.023306,
		-0.006120, -0.938150, -0.346174,
		37.391521, 32.212559, 32.478275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.909325, 32.907856, 32.234737>,  <37.395805, 32.869263, 32.720596>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.909325, 32.907856, 32.234737> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.698761, 32.578888, 32.148464>,  <37.572422, 32.381508, 32.096699>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.698761, 32.578888, 32.148464>,  <37.909325, 32.907856, 32.234737>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.698761, 32.578888, 32.148464> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067712, 0.212316, -0.974852,
		0.847533, -0.527771, -0.056077,
		-0.526405, -0.822423, -0.215682,
		37.540840, 32.332161, 32.083759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.260601, 32.559467, 31.747406>,  <37.909325, 32.907856, 32.234737>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.260601, 32.559467, 31.747406> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.885128, 32.425121, 31.716219>,  <37.659843, 32.344513, 31.697508>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.885128, 32.425121, 31.716219>,  <38.260601, 32.559467, 31.747406>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.885128, 32.425121, 31.716219> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046844, 0.099801, -0.993904,
		0.341596, -0.936609, -0.077948,
		-0.938679, -0.335862, -0.077966,
		37.603523, 32.324364, 31.692829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.237656, 32.232861, 31.127851>,  <38.260601, 32.559467, 31.747406>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.237656, 32.232861, 31.127851> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.842957, 32.269669, 31.181295>,  <37.606136, 32.291756, 31.213362>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.842957, 32.269669, 31.181295>,  <38.237656, 32.232861, 31.127851>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.842957, 32.269669, 31.181295> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124167, 0.101652, -0.987041,
		-0.104415, -0.990554, -0.088879,
		-0.986752, 0.092026, 0.133608,
		37.546932, 32.297276, 31.221378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.991188, 31.817738, 30.579065>,  <38.237656, 32.232861, 31.127851>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.991188, 31.817738, 30.579065> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.712368, 32.071972, 30.711821>,  <37.545074, 32.224510, 30.791473>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.712368, 32.071972, 30.711821>,  <37.991188, 31.817738, 30.579065>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.712368, 32.071972, 30.711821> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209348, 0.262302, -0.942004,
		-0.685778, -0.726106, -0.049780,
		-0.697052, 0.635584, 0.331889,
		37.503254, 32.262646, 30.811388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.560841, 31.810011, 30.083944>,  <37.991188, 31.817738, 30.579065>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.560841, 31.810011, 30.083944> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.473694, 32.152046, 30.272141>,  <37.421406, 32.357265, 30.385057>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.473694, 32.152046, 30.272141>,  <37.560841, 31.810011, 30.083944>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.473694, 32.152046, 30.272141> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130813, 0.452134, -0.882305,
		-0.967171, -0.253774, 0.013350,
		-0.217870, 0.855087, 0.470488,
		37.408333, 32.408573, 30.413286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.965630, 32.150368, 29.703686>,  <37.560841, 31.810011, 30.083944>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.965630, 32.150368, 29.703686> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.137665, 32.444561, 29.913101>,  <37.240887, 32.621075, 30.038750>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.137665, 32.444561, 29.913101>,  <36.965630, 32.150368, 29.703686>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.137665, 32.444561, 29.913101> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160755, 0.508254, -0.846071,
		-0.888360, 0.448046, 0.100361,
		0.430087, 0.735482, 0.523538,
		37.266689, 32.665207, 30.070162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.608051, 32.737679, 29.441589>,  <36.965630, 32.150368, 29.703686>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.608051, 32.737679, 29.441589> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.961395, 32.819378, 29.610329>,  <37.173401, 32.868397, 29.711573>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.961395, 32.819378, 29.610329>,  <36.608051, 32.737679, 29.441589>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.961395, 32.819378, 29.610329> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254008, 0.547790, -0.797123,
		-0.393897, 0.811300, 0.432015,
		0.883360, 0.204249, 0.421850,
		37.226402, 32.880653, 29.736883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.683590, 33.407490, 29.225325>,  <36.608051, 32.737679, 29.441589>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.683590, 33.407490, 29.225325> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.035233, 33.258583, 29.344378>,  <37.246220, 33.169239, 29.415810>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.035233, 33.258583, 29.344378>,  <36.683590, 33.407490, 29.225325>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.035233, 33.258583, 29.344378> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458443, 0.489633, -0.741680,
		0.130368, 0.788467, 0.601103,
		0.879110, -0.372263, 0.297634,
		37.298965, 33.146904, 29.433668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.505840, 33.922134, 29.654911>,  <36.683590, 33.407490, 29.225325>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.505840, 33.922134, 29.654911> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.197178, 34.167339, 29.587065>,  <36.011982, 34.314461, 29.546356>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.197178, 34.167339, 29.587065>,  <36.505840, 33.922134, 29.654911>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.197178, 34.167339, 29.587065> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464328, -0.360676, 0.808896,
		0.434686, 0.702944, 0.562955,
		-0.771652, 0.613011, -0.169616,
		35.965683, 34.351242, 29.536180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.313698, 34.205700, 30.310543>,  <36.505840, 33.922134, 29.654911>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.313698, 34.205700, 30.310543> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.986897, 34.232334, 30.081432>,  <35.790817, 34.248314, 29.943966>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.986897, 34.232334, 30.081432>,  <36.313698, 34.205700, 30.310543>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.986897, 34.232334, 30.081432> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.565551, -0.286325, 0.773414,
		-0.112504, 0.955816, 0.271585,
		-0.817003, 0.066583, -0.572776,
		35.741795, 34.252308, 29.909599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.888325, 34.619118, 30.701269>,  <36.313698, 34.205700, 30.310543>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.888325, 34.619118, 30.701269> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.668835, 34.424210, 30.429544>,  <35.537140, 34.307262, 30.266510>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.668835, 34.424210, 30.429544>,  <35.888325, 34.619118, 30.701269>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.668835, 34.424210, 30.429544> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.672054, -0.226191, 0.705110,
		-0.497236, 0.843446, -0.203357,
		-0.548725, -0.487274, -0.679312,
		35.504215, 34.278027, 30.225750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.267891, 34.932575, 30.736320>,  <35.888325, 34.619118, 30.701269>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.267891, 34.932575, 30.736320> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.162411, 34.593803, 30.551640>,  <35.099121, 34.390541, 30.440830>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.162411, 34.593803, 30.551640>,  <35.267891, 34.932575, 30.736320>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.162411, 34.593803, 30.551640> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.785131, -0.089615, 0.612812,
		-0.560384, 0.524098, -0.641319,
		-0.263702, -0.846930, -0.461705,
		35.083302, 34.339725, 30.413128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.517811, 34.972321, 30.686371>,  <35.267891, 34.932575, 30.736320>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.517811, 34.972321, 30.686371> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.577267, 34.583801, 30.612095>,  <34.612942, 34.350689, 30.567530>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.577267, 34.583801, 30.612095>,  <34.517811, 34.972321, 30.686371>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.577267, 34.583801, 30.612095> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.898143, -0.211176, 0.385674,
		-0.413819, 0.109452, -0.903756,
		0.148639, -0.971301, -0.185692,
		34.621857, 34.292412, 30.556387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.885132, 34.654491, 30.260557>,  <34.517811, 34.972321, 30.686371>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.885132, 34.654491, 30.260557> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.073666, 34.361767, 30.457449>,  <34.186787, 34.186131, 30.575584>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.073666, 34.361767, 30.457449>,  <33.885132, 34.654491, 30.260557>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.073666, 34.361767, 30.457449> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.874478, -0.315274, 0.368633,
		-0.114582, -0.604197, -0.788554,
		0.471338, -0.731812, 0.492232,
		34.215065, 34.142223, 30.605118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.530914, 34.044979, 30.082621>,  <33.885132, 34.654491, 30.260557>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.530914, 34.044979, 30.082621> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.734585, 33.929935, 30.407093>,  <33.856789, 33.860909, 30.601776>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.734585, 33.929935, 30.407093>,  <33.530914, 34.044979, 30.082621>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.734585, 33.929935, 30.407093> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.832558, -0.403483, 0.379537,
		0.218139, -0.868608, -0.444899,
		0.509178, -0.287612, 0.811182,
		33.887337, 33.843651, 30.650448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.390240, 33.316826, 30.215721>,  <33.530914, 34.044979, 30.082621>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.390240, 33.316826, 30.215721> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.481079, 33.461887, 30.577253>,  <33.535583, 33.548923, 30.794172>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.481079, 33.461887, 30.577253>,  <33.390240, 33.316826, 30.215721>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.481079, 33.461887, 30.577253> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.808052, -0.447849, 0.382731,
		0.543577, -0.817261, 0.191332,
		0.227103, 0.362650, 0.903830,
		33.549210, 33.570683, 30.848402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.306805, 32.793583, 30.686642>,  <33.390240, 33.316826, 30.215721>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.306805, 32.793583, 30.686642> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.300034, 33.132946, 30.898272>,  <33.295971, 33.336563, 31.025249>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.300034, 33.132946, 30.898272>,  <33.306805, 32.793583, 30.686642>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.300034, 33.132946, 30.898272> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.822796, -0.312463, 0.474734,
		0.568084, -0.427287, 0.703354,
		-0.016925, 0.848406, 0.529075,
		33.294956, 33.387466, 31.056993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.308029, 32.583813, 31.449362>,  <33.306805, 32.793583, 30.686642>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.308029, 32.583813, 31.449362> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.157448, 32.953434, 31.422812>,  <33.067097, 33.175205, 31.406881>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.157448, 32.953434, 31.422812>,  <33.308029, 32.583813, 31.449362>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.157448, 32.953434, 31.422812> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.790344, -0.282951, 0.543411,
		0.483359, 0.257030, 0.836839,
		-0.376457, 0.924053, -0.066375,
		33.044510, 33.230652, 31.402899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.026009, 32.860149, 32.133644>,  <33.308029, 32.583813, 31.449362>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.026009, 32.860149, 32.133644> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.849312, 33.133862, 31.901567>,  <32.743294, 33.298088, 31.762321>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.849312, 33.133862, 31.901567>,  <33.026009, 32.860149, 32.133644>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.849312, 33.133862, 31.901567> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.821777, -0.049174, 0.567683,
		0.359925, 0.727558, 0.584049,
		-0.441742, 0.684282, -0.580191,
		32.716789, 33.339146, 31.727510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.582565, 33.334148, 32.597862>,  <33.026009, 32.860149, 32.133644>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.582565, 33.334148, 32.597862> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.452374, 33.333969, 32.219643>,  <32.374260, 33.333862, 31.992710>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.452374, 33.333969, 32.219643>,  <32.582565, 33.334148, 32.597862>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.452374, 33.333969, 32.219643> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.944537, -0.046112, 0.325150,
		-0.043746, 0.998936, 0.014589,
		-0.325477, -0.000444, -0.945550,
		32.354729, 33.333836, 31.935978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.057774, 33.826656, 32.551220>,  <32.582565, 33.334148, 32.597862>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.057774, 33.826656, 32.551220> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.978365, 33.575562, 32.250145>,  <31.930719, 33.424904, 32.069500>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.978365, 33.575562, 32.250145>,  <32.057774, 33.826656, 32.551220>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.978365, 33.575562, 32.250145> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.957596, -0.039383, 0.285409,
		-0.208805, 0.777428, -0.593301,
		-0.198520, -0.627737, -0.752686,
		31.918810, 33.387241, 32.024338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.441074, 34.096390, 32.327381>,  <32.057774, 33.826656, 32.551220>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.441074, 34.096390, 32.327381> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.455051, 33.722919, 32.184818>,  <31.463438, 33.498837, 32.099281>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.455051, 33.722919, 32.184818>,  <31.441074, 34.096390, 32.327381>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.455051, 33.722919, 32.184818> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.980472, -0.101088, 0.168687,
		-0.193528, 0.343555, -0.918976,
		0.034944, -0.933676, -0.356409,
		31.465534, 33.442818, 32.077896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.051176, 34.792625, 32.364029>,  <31.441074, 34.096390, 32.327381>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.051176, 34.792625, 32.364029> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.998753, 35.189110, 32.371311>,  <30.967299, 35.426998, 32.375679>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.998753, 35.189110, 32.371311>,  <31.051176, 34.792625, 32.364029>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.998753, 35.189110, 32.371311> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019655, -0.015763, 0.999683,
		0.991180, 0.131373, -0.017416,
		-0.131057, 0.991208, 0.018206,
		30.959436, 35.486473, 32.376774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.601767, 35.194595, 32.835922>,  <31.051176, 34.792625, 32.364029>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.601767, 35.194595, 32.835922> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.247480, 35.380131, 32.828289>,  <31.034908, 35.491451, 32.823708>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.247480, 35.380131, 32.828289>,  <31.601767, 35.194595, 32.835922>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.247480, 35.380131, 32.828289> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046338, 0.129235, 0.990531,
		0.461909, 0.876444, -0.135958,
		-0.885716, 0.463835, -0.019082,
		30.981766, 35.519283, 32.822563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.811792, 35.711544, 33.289867>,  <31.601767, 35.194595, 32.835922>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.811792, 35.711544, 33.289867> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.045391, 35.832909, 33.591034>,  <32.185551, 35.905727, 33.771732>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.045391, 35.832909, 33.591034>,  <31.811792, 35.711544, 33.289867>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.045391, 35.832909, 33.591034> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375234, 0.721575, -0.581833,
		-0.719823, 0.622310, 0.307547,
		0.583999, 0.303415, 0.752918,
		32.220592, 35.923935, 33.816910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.848452, 36.461910, 33.169659>,  <31.811792, 35.711544, 33.289867>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.848452, 36.461910, 33.169659> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.158421, 36.387604, 33.411316>,  <32.344402, 36.343018, 33.556309>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.158421, 36.387604, 33.411316>,  <31.848452, 36.461910, 33.169659>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.158421, 36.387604, 33.411316> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504462, 0.757661, -0.414087,
		-0.380809, 0.625651, 0.680842,
		0.774921, -0.185771, 0.604141,
		32.390896, 36.331871, 33.592560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.011177, 37.072895, 33.553974>,  <31.848452, 36.461910, 33.169659>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.011177, 37.072895, 33.553974> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.333580, 36.836998, 33.533737>,  <32.527020, 36.695457, 33.521595>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.333580, 36.836998, 33.533737>,  <32.011177, 37.072895, 33.553974>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.333580, 36.836998, 33.533737> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506190, 0.731061, -0.457516,
		0.306806, 0.343148, 0.887761,
		0.806003, -0.589744, -0.050596,
		32.575382, 36.660076, 33.518559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.602936, 37.566799, 33.577480>,  <32.011177, 37.072895, 33.553974>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.602936, 37.566799, 33.577480> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.776459, 37.236137, 33.434120>,  <32.880573, 37.037739, 33.348103>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.776459, 37.236137, 33.434120>,  <32.602936, 37.566799, 33.577480>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.776459, 37.236137, 33.434120> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567319, 0.559633, -0.604119,
		0.699973, 0.058741, 0.711750,
		0.433805, -0.826656, -0.358403,
		32.906601, 36.988140, 33.326599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.321854, 37.714386, 33.531708>,  <32.602936, 37.566799, 33.577480>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.321854, 37.714386, 33.531708> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.255878, 37.412025, 33.278282>,  <33.216293, 37.230610, 33.126225>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.255878, 37.412025, 33.278282>,  <33.321854, 37.714386, 33.531708>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.255878, 37.412025, 33.278282> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482009, 0.498656, -0.720424,
		0.860501, -0.424212, 0.282103,
		-0.164940, -0.755902, -0.633567,
		33.206398, 37.185253, 33.088211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.990540, 37.638969, 33.144188>,  <33.321854, 37.714386, 33.531708>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.990540, 37.638969, 33.144188> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.698265, 37.490162, 32.915211>,  <33.522900, 37.400879, 32.777824>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.698265, 37.490162, 32.915211>,  <33.990540, 37.638969, 33.144188>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.698265, 37.490162, 32.915211> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448599, 0.370440, -0.813347,
		0.514639, -0.851102, -0.103789,
		-0.730689, -0.372020, -0.572446,
		33.479057, 37.378555, 32.743477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.391235, 37.451206, 32.563457>,  <33.990540, 37.638969, 33.144188>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.391235, 37.451206, 32.563457> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.012344, 37.451855, 32.435230>,  <33.785011, 37.452244, 32.358295>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.012344, 37.451855, 32.435230>,  <34.391235, 37.451206, 32.563457>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.012344, 37.451855, 32.435230> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314673, 0.195595, -0.928829,
		0.061197, -0.980683, -0.185783,
		-0.947225, 0.001620, -0.320564,
		33.728176, 37.452339, 32.339062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.398159, 37.063419, 31.996304>,  <34.391235, 37.451206, 32.563457>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.398159, 37.063419, 31.996304> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.062206, 37.271080, 31.932966>,  <33.860634, 37.395676, 31.894964>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.062206, 37.271080, 31.932966>,  <34.398159, 37.063419, 31.996304>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.062206, 37.271080, 31.932966> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300047, 0.200997, -0.932508,
		-0.452286, -0.830712, -0.324584,
		-0.839886, 0.519151, -0.158345,
		33.810242, 37.426826, 31.885462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.082558, 36.826912, 31.366497>,  <34.398159, 37.063419, 31.996304>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.082558, 36.826912, 31.366497> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.972115, 37.205456, 31.433640>,  <33.905849, 37.432583, 31.473925>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.972115, 37.205456, 31.433640>,  <34.082558, 36.826912, 31.366497>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.972115, 37.205456, 31.433640> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234087, 0.235598, -0.943237,
		-0.932185, -0.221139, -0.286580,
		-0.276104, 0.946357, 0.167855,
		33.889282, 37.489365, 31.483995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.649857, 36.947723, 30.713198>,  <34.082558, 36.826912, 31.366497>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.649857, 36.947723, 30.713198> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.714088, 37.310741, 30.868414>,  <33.752628, 37.528553, 30.961544>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.714088, 37.310741, 30.868414>,  <33.649857, 36.947723, 30.713198>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.714088, 37.310741, 30.868414> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211925, 0.352271, -0.911588,
		-0.964004, 0.228614, -0.135766,
		0.160575, 0.907547, 0.388040,
		33.762260, 37.583004, 30.984825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.510105, 37.392799, 30.117811>,  <33.649857, 36.947723, 30.713198>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.510105, 37.392799, 30.117811> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.721638, 37.631210, 30.359501>,  <33.848557, 37.774258, 30.504515>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.721638, 37.631210, 30.359501>,  <33.510105, 37.392799, 30.117811>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.721638, 37.631210, 30.359501> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272883, 0.554710, -0.786023,
		-0.803660, 0.580557, 0.130702,
		0.528833, 0.596029, 0.604223,
		33.880287, 37.810020, 30.540768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.413200, 38.086071, 29.878372>,  <33.510105, 37.392799, 30.117811>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.413200, 38.086071, 29.878372> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.764374, 38.064869, 30.068705>,  <33.975079, 38.052147, 30.182905>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.764374, 38.064869, 30.068705>,  <33.413200, 38.086071, 29.878372>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.764374, 38.064869, 30.068705> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467726, 0.307240, -0.828756,
		-0.102267, 0.950155, 0.294529,
		0.877937, -0.053005, 0.475833,
		34.027756, 38.048969, 30.211454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.752037, 38.656845, 29.553820>,  <33.413200, 38.086071, 29.878372>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.752037, 38.656845, 29.553820> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.043728, 38.451900, 29.735243>,  <34.218742, 38.328934, 29.844097>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.043728, 38.451900, 29.735243>,  <33.752037, 38.656845, 29.553820>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.043728, 38.451900, 29.735243> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.666099, 0.379776, -0.641936,
		0.156655, 0.770230, 0.618227,
		0.729227, -0.512363, 0.453556,
		34.262497, 38.298191, 29.871309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.332802, 39.119766, 29.693670>,  <33.752037, 38.656845, 29.553820>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.332802, 39.119766, 29.693670> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.514038, 38.763275, 29.685562>,  <34.622780, 38.549381, 29.680698>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.514038, 38.763275, 29.685562>,  <34.332802, 39.119766, 29.693670>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.514038, 38.763275, 29.685562> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.816861, 0.424176, -0.390913,
		0.356992, 0.160564, 0.920204,
		0.453095, -0.891232, -0.020269,
		34.649967, 38.495907, 29.679482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.994049, 39.199314, 29.907835>,  <34.332802, 39.119766, 29.693670>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.994049, 39.199314, 29.907835> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.989494, 38.867847, 29.683985>,  <34.986763, 38.668968, 29.549675>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.989494, 38.867847, 29.683985>,  <34.994049, 39.199314, 29.907835>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.989494, 38.867847, 29.683985> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.652939, 0.417711, -0.631814,
		0.757325, -0.372595, 0.536313,
		-0.011387, -0.828668, -0.559625,
		34.986076, 38.619247, 29.516098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.661804, 39.317360, 29.515173>,  <34.994049, 39.199314, 29.907835>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.661804, 39.317360, 29.515173> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.460335, 39.014908, 29.348045>,  <35.339451, 38.833435, 29.247768>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.460335, 39.014908, 29.348045>,  <35.661804, 39.317360, 29.515173>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.460335, 39.014908, 29.348045> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468538, 0.167240, -0.867470,
		0.725798, -0.632689, 0.270042,
		-0.503677, -0.756132, -0.417821,
		35.309231, 38.788067, 29.222698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.054836, 38.990765, 29.145847>,  <35.661804, 39.317360, 29.515173>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.054836, 38.990765, 29.145847> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.737125, 38.805531, 28.988531>,  <35.546501, 38.694389, 28.894142>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.737125, 38.805531, 28.988531>,  <36.054836, 38.990765, 29.145847>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.737125, 38.805531, 28.988531> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402228, 0.084353, -0.911645,
		0.455348, -0.882288, 0.119268,
		-0.794274, -0.463089, -0.393291,
		35.498844, 38.666603, 28.870544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.271721, 38.456337, 28.741436>,  <36.054836, 38.990765, 29.145847>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.271721, 38.456337, 28.741436> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.914692, 38.569942, 28.601355>,  <35.700474, 38.638107, 28.517305>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.914692, 38.569942, 28.601355>,  <36.271721, 38.456337, 28.741436>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.914692, 38.569942, 28.601355> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397539, 0.129188, -0.908446,
		-0.212769, -0.950077, -0.228217,
		-0.892577, 0.284014, -0.350205,
		35.646919, 38.655148, 28.496292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.214279, 38.032246, 28.141520>,  <36.271721, 38.456337, 28.741436>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.214279, 38.032246, 28.141520> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.972763, 38.351082, 28.137920>,  <35.827854, 38.542385, 28.135761>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.972763, 38.351082, 28.137920>,  <36.214279, 38.032246, 28.141520>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.972763, 38.351082, 28.137920> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445702, 0.328214, -0.832842,
		-0.660897, -0.506875, -0.553438,
		-0.603793, 0.797091, -0.009000,
		35.791626, 38.590210, 28.135220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.899147, 38.082611, 27.475521>,  <36.214279, 38.032246, 28.141520>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.899147, 38.082611, 27.475521> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.902763, 38.454205, 27.623524>,  <35.904934, 38.677162, 27.712324>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.902763, 38.454205, 27.623524>,  <35.899147, 38.082611, 27.475521>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.902763, 38.454205, 27.623524> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494940, 0.317360, -0.808898,
		-0.868880, 0.190442, -0.456924,
		0.009039, 0.928986, 0.370005,
		35.905476, 38.732899, 27.734526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.792389, 38.534985, 26.878494>,  <35.899147, 38.082611, 27.475521>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.792389, 38.534985, 26.878494> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.932690, 38.798370, 27.144844>,  <36.016872, 38.956402, 27.304655>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.932690, 38.798370, 27.144844>,  <35.792389, 38.534985, 26.878494>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.932690, 38.798370, 27.144844> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271922, 0.608802, -0.745264,
		-0.896119, 0.442471, 0.034488,
		0.350754, 0.658468, 0.665877,
		36.037914, 38.995911, 27.344606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.857533, 39.117531, 26.571365>,  <35.792389, 38.534985, 26.878494>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.857533, 39.117531, 26.571365> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.048168, 39.272079, 26.887234>,  <36.162552, 39.364807, 27.076754>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.048168, 39.272079, 26.887234>,  <35.857533, 39.117531, 26.571365>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.048168, 39.272079, 26.887234> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.565250, 0.553283, -0.611858,
		-0.673314, 0.737968, 0.045294,
		0.476592, 0.386370, 0.789670,
		36.191147, 39.387989, 27.124134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.797482, 39.820702, 26.596996>,  <35.857533, 39.117531, 26.571365>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.797482, 39.820702, 26.596996> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.139271, 39.692719, 26.760700>,  <36.344345, 39.615929, 26.858923>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.139271, 39.692719, 26.760700>,  <35.797482, 39.820702, 26.596996>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.139271, 39.692719, 26.760700> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519206, 0.552000, -0.652473,
		-0.017144, 0.770013, 0.637798,
		0.854477, -0.319962, 0.409259,
		36.395615, 39.596729, 26.883478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.120838, 40.387924, 26.562548>,  <35.797482, 39.820702, 26.596996>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.120838, 40.387924, 26.562548> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.403389, 40.120518, 26.655607>,  <36.572918, 39.960075, 26.711443>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.403389, 40.120518, 26.655607>,  <36.120838, 40.387924, 26.562548>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.403389, 40.120518, 26.655607> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.665345, 0.514916, -0.540535,
		0.241558, 0.536613, 0.808515,
		0.706375, -0.668512, 0.232651,
		36.615303, 39.919964, 26.725403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.688175, 40.721512, 26.795702>,  <36.120838, 40.387924, 26.562548>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.688175, 40.721512, 26.795702> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.838848, 40.363392, 26.700583>,  <36.929253, 40.148521, 26.643511>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.838848, 40.363392, 26.700583>,  <36.688175, 40.721512, 26.795702>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.838848, 40.363392, 26.700583> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.659760, 0.439488, -0.609563,
		0.650252, 0.072720, 0.756230,
		0.376682, -0.895300, -0.237800,
		36.951851, 40.094803, 26.629242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.391960, 40.735645, 26.915251>,  <36.688175, 40.721512, 26.795702>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.391960, 40.735645, 26.915251> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.288303, 40.464466, 26.640085>,  <37.226109, 40.301758, 26.474985>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.288303, 40.464466, 26.640085>,  <37.391960, 40.735645, 26.915251>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.288303, 40.464466, 26.640085> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378542, 0.583969, -0.718113,
		0.888566, -0.446499, 0.105301,
		-0.259144, -0.677952, -0.687913,
		37.210560, 40.261082, 26.433712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.862011, 40.616089, 27.512592>,  <37.391960, 40.735645, 26.915251>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.862011, 40.616089, 27.512592> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.210644, 40.703281, 27.688240>,  <38.419823, 40.755596, 27.793629>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.210644, 40.703281, 27.688240>,  <37.862011, 40.616089, 27.512592>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.210644, 40.703281, 27.688240> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294751, -0.482738, 0.824673,
		0.391741, -0.848203, -0.356497,
		0.871585, 0.217981, 0.439117,
		38.472118, 40.768677, 27.819975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.206718, 40.038586, 27.763086>,  <37.862011, 40.616089, 27.512592>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.206718, 40.038586, 27.763086> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.344002, 40.333679, 27.995623>,  <38.426373, 40.510735, 28.135143>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.344002, 40.333679, 27.995623>,  <38.206718, 40.038586, 27.763086>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.344002, 40.333679, 27.995623> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247846, -0.525864, 0.813658,
		0.905968, -0.423339, 0.002362,
		0.343211, 0.737734, 0.581339,
		38.446964, 40.555000, 28.170025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.604969, 39.736782, 28.358118>,  <38.206718, 40.038586, 27.763086>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.604969, 39.736782, 28.358118> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.518898, 40.111858, 28.467253>,  <38.467255, 40.336903, 28.532734>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.518898, 40.111858, 28.467253>,  <38.604969, 39.736782, 28.358118>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.518898, 40.111858, 28.467253> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138137, -0.305799, 0.942022,
		0.966756, 0.165012, 0.195330,
		-0.215177, 0.937687, 0.272839,
		38.454346, 40.393166, 28.549105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.980469, 39.799793, 28.956093>,  <38.604969, 39.736782, 28.358118>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.980469, 39.799793, 28.956093> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.696999, 40.080135, 28.988539>,  <38.526917, 40.248341, 29.008007>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.696999, 40.080135, 28.988539>,  <38.980469, 39.799793, 28.956093>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.696999, 40.080135, 28.988539> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086509, -0.200422, 0.975883,
		0.700209, 0.684569, 0.202665,
		-0.708678, 0.700854, 0.081115,
		38.484394, 40.290390, 29.012873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.137962, 40.172752, 29.533998>,  <38.980469, 39.799793, 28.956093>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.137962, 40.172752, 29.533998> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.752712, 40.236908, 29.447584>,  <38.521564, 40.275402, 29.395735>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.752712, 40.236908, 29.447584>,  <39.137962, 40.172752, 29.533998>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.752712, 40.236908, 29.447584> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250284, -0.239337, 0.938123,
		0.098756, 0.957598, 0.270653,
		-0.963122, 0.160386, -0.216036,
		38.463776, 40.285023, 29.382774>
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
