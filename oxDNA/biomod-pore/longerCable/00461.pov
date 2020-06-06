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
	<24.303829, 35.087387, 34.951256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.507185, 34.748722, 34.888378>,  <24.629198, 34.545525, 34.850651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.507185, 34.748722, 34.888378>,  <24.303829, 35.087387, 34.951256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.507185, 34.748722, 34.888378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.592638, 0.211566, 0.777187,
		-0.624757, -0.488270, 0.609320,
		0.508389, -0.846659, -0.157190,
		24.659702, 34.494724, 34.841221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.360323, 34.540344, 35.517166>,  <24.303829, 35.087387, 34.951256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.360323, 34.540344, 35.517166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.689253, 34.543491, 35.289577>,  <24.886610, 34.545380, 35.153027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.689253, 34.543491, 35.289577>,  <24.360323, 34.540344, 35.517166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.689253, 34.543491, 35.289577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560426, 0.161944, 0.812217,
		0.098530, -0.986769, 0.128762,
		0.822323, 0.007866, -0.568967,
		24.935949, 34.545853, 35.118889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.946562, 34.007507, 35.801315>,  <24.360323, 34.540344, 35.517166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.946562, 34.007507, 35.801315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.064293, 34.324680, 35.587914>,  <25.134932, 34.514984, 35.459873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.064293, 34.324680, 35.587914>,  <24.946562, 34.007507, 35.801315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.064293, 34.324680, 35.587914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.628165, 0.260202, 0.733283,
		0.720263, -0.550955, -0.421508,
		0.294329, 0.792933, -0.533505,
		25.152592, 34.562561, 35.427860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.719208, 33.985821, 35.795158>,  <24.946562, 34.007507, 35.801315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.719208, 33.985821, 35.795158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.613159, 34.362919, 35.714222>,  <25.549530, 34.589176, 35.665661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.613159, 34.362919, 35.714222>,  <25.719208, 33.985821, 35.795158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.613159, 34.362919, 35.714222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.697052, 0.332389, 0.635324,
		0.666204, 0.027395, -0.745266,
		-0.265123, 0.942745, -0.202343,
		25.533623, 34.645741, 35.653519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.275349, 34.414822, 35.669964>,  <25.719208, 33.985821, 35.795158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.275349, 34.414822, 35.669964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.992088, 34.668720, 35.793652>,  <25.822132, 34.821060, 35.867863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.992088, 34.668720, 35.793652>,  <26.275349, 34.414822, 35.669964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.992088, 34.668720, 35.793652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.675065, 0.480350, 0.559957,
		0.206901, 0.605275, -0.768657,
		-0.708152, 0.634749, 0.309215,
		25.779642, 34.859146, 35.886417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.513460, 35.167389, 35.625786>,  <26.275349, 34.414822, 35.669964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.513460, 35.167389, 35.625786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.219204, 35.143471, 35.895676>,  <26.042650, 35.129120, 36.057610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.219204, 35.143471, 35.895676>,  <26.513460, 35.167389, 35.625786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.219204, 35.143471, 35.895676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471678, 0.669697, 0.573608,
		-0.486162, 0.740224, -0.464452,
		-0.735640, -0.059795, 0.674728,
		25.998512, 35.125534, 36.098095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.221352, 35.755978, 35.560741>,  <26.513460, 35.167389, 35.625786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.221352, 35.755978, 35.560741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.154280, 35.581161, 35.914211>,  <26.114037, 35.476273, 36.126293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.154280, 35.581161, 35.914211>,  <26.221352, 35.755978, 35.560741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.154280, 35.581161, 35.914211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568404, 0.689516, 0.448869,
		-0.805481, 0.577550, 0.132797,
		-0.167679, -0.437038, 0.883675,
		26.103975, 35.450050, 36.179314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.943781, 36.239182, 36.027355>,  <26.221352, 35.755978, 35.560741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.943781, 36.239182, 36.027355> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.171646, 35.967453, 36.212402>,  <26.308365, 35.804417, 36.323429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.171646, 35.967453, 36.212402>,  <25.943781, 36.239182, 36.027355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.171646, 35.967453, 36.212402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.588075, 0.730122, 0.347980,
		-0.574155, 0.073822, 0.815412,
		0.569661, -0.679317, 0.462617,
		26.342545, 35.763657, 36.351189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.104498, 36.594948, 36.694813>,  <25.943781, 36.239182, 36.027355>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.104498, 36.594948, 36.694813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.362858, 36.295696, 36.633987>,  <26.517874, 36.116146, 36.597492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.362858, 36.295696, 36.633987>,  <26.104498, 36.594948, 36.694813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.362858, 36.295696, 36.633987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.747117, 0.578487, 0.327366,
		-0.156945, -0.325054, 0.932581,
		0.645898, -0.748126, -0.152063,
		26.556627, 36.071259, 36.588367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.400331, 36.391052, 37.370064>,  <26.104498, 36.594948, 36.694813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.400331, 36.391052, 37.370064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.660858, 36.303970, 37.079304>,  <26.817175, 36.251720, 36.904846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.660858, 36.303970, 37.079304>,  <26.400331, 36.391052, 37.370064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.660858, 36.303970, 37.079304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582371, 0.757533, 0.294936,
		0.486443, -0.615425, 0.620182,
		0.651319, -0.217706, -0.726903,
		26.856255, 36.238659, 36.861233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.120346, 36.368061, 37.725182>,  <26.400331, 36.391052, 37.370064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.120346, 36.368061, 37.725182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.180565, 36.413013, 37.332302>,  <27.216696, 36.439983, 37.096577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.180565, 36.413013, 37.332302>,  <27.120346, 36.368061, 37.725182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.180565, 36.413013, 37.332302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.655932, 0.731977, 0.184289,
		0.739655, -0.671997, 0.036480,
		0.150544, 0.112382, -0.982195,
		27.225729, 36.446728, 37.037643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.883156, 36.305412, 37.660606>,  <27.120346, 36.368061, 37.725182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.883156, 36.305412, 37.660606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.679802, 36.519520, 37.390781>,  <27.557789, 36.647984, 37.228886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.679802, 36.519520, 37.390781>,  <27.883156, 36.305412, 37.660606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.679802, 36.519520, 37.390781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.585821, 0.789122, 0.184664,
		0.631156, -0.301292, -0.714748,
		-0.508385, 0.535266, -0.674563,
		27.527287, 36.680099, 37.188412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.309761, 36.657463, 37.061344>,  <27.883156, 36.305412, 37.660606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.309761, 36.657463, 37.061344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.986403, 36.875908, 37.149220>,  <27.792387, 37.006973, 37.201946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.986403, 36.875908, 37.149220>,  <28.309761, 36.657463, 37.061344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.986403, 36.875908, 37.149220> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.580497, 0.801472, 0.143753,
		-0.097570, 0.243737, -0.964921,
		-0.808396, 0.546108, 0.219688,
		27.743883, 37.039742, 37.215126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.330797, 37.267864, 36.795639>,  <28.309761, 36.657463, 37.061344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.330797, 37.267864, 36.795639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.103746, 37.409058, 37.093151>,  <27.967516, 37.493774, 37.271660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.103746, 37.409058, 37.093151>,  <28.330797, 37.267864, 36.795639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.103746, 37.409058, 37.093151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.583499, 0.809820, 0.060986,
		-0.580801, 0.468612, -0.665638,
		-0.567626, 0.352979, 0.743779,
		27.933458, 37.514950, 37.316284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.651854, 37.547977, 36.782898>,  <28.330797, 37.267864, 36.795639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.651854, 37.547977, 36.782898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.842991, 37.203060, 36.715836>,  <27.957674, 36.996109, 36.675598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.842991, 37.203060, 36.715836>,  <27.651854, 37.547977, 36.782898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.842991, 37.203060, 36.715836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.876267, -0.481327, -0.021908,
		-0.061808, 0.157382, -0.985602,
		0.477845, -0.862296, -0.167658,
		27.986343, 36.944370, 36.665539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.369177, 37.307041, 36.173901>,  <27.651854, 37.547977, 36.782898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.369177, 37.307041, 36.173901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.516232, 37.018044, 36.408112>,  <27.604465, 36.844646, 36.548637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.516232, 37.018044, 36.408112>,  <27.369177, 37.307041, 36.173901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.516232, 37.018044, 36.408112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.835576, -0.533016, -0.133063,
		0.408233, -0.440335, -0.799656,
		0.367638, -0.722494, 0.585529,
		27.626522, 36.801296, 36.583771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.561665, 36.614971, 35.755329>,  <27.369177, 37.307041, 36.173901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.561665, 36.614971, 35.755329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.458281, 36.558983, 36.137661>,  <27.396250, 36.525391, 36.367058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.458281, 36.558983, 36.137661>,  <27.561665, 36.614971, 35.755329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.458281, 36.558983, 36.137661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.643259, -0.713244, -0.278388,
		0.720704, -0.686797, 0.094310,
		-0.258462, -0.139970, 0.955827,
		27.380741, 36.516991, 36.424408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.611244, 35.944271, 35.860664>,  <27.561665, 36.614971, 35.755329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.611244, 35.944271, 35.860664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.368345, 36.077126, 36.149368>,  <27.222607, 36.156837, 36.322590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.368345, 36.077126, 36.149368>,  <27.611244, 35.944271, 35.860664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.368345, 36.077126, 36.149368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.613955, -0.772759, -0.160944,
		0.504293, -0.540862, 0.673169,
		-0.607246, 0.332133, 0.721762,
		27.186172, 36.176765, 36.365898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.491802, 35.224846, 36.057125>,  <27.611244, 35.944271, 35.860664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.491802, 35.224846, 36.057125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.226906, 35.444500, 36.261044>,  <27.067968, 35.576294, 36.383392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.226906, 35.444500, 36.261044>,  <27.491802, 35.224846, 36.057125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.226906, 35.444500, 36.261044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.579413, -0.806697, 0.116276,
		0.475099, -0.218377, 0.852404,
		-0.662240, 0.549136, 0.509792,
		27.028234, 35.609241, 36.413982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.289316, 35.022476, 36.763618>,  <27.491802, 35.224846, 36.057125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.289316, 35.022476, 36.763618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.973604, 35.227951, 36.629059>,  <26.784178, 35.351234, 36.548321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.973604, 35.227951, 36.629059>,  <27.289316, 35.022476, 36.763618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.973604, 35.227951, 36.629059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.570399, -0.816203, 0.091959,
		-0.227336, 0.264466, 0.937217,
		-0.789280, 0.513683, -0.336403,
		26.736820, 35.382057, 36.528137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.745584, 34.857101, 37.203106>,  <27.289316, 35.022476, 36.763618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.745584, 34.857101, 37.203106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.581732, 34.962852, 36.853867>,  <26.483419, 35.026302, 36.644321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.581732, 34.962852, 36.853867>,  <26.745584, 34.857101, 37.203106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.581732, 34.962852, 36.853867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.699841, -0.705003, 0.114865,
		-0.585171, 0.658084, 0.473816,
		-0.409632, 0.264380, -0.873101,
		26.458841, 35.042168, 36.591938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.231743, 35.237469, 37.352650>,  <26.745584, 34.857101, 37.203106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.231743, 35.237469, 37.352650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.126648, 35.567451, 37.152481>,  <26.063591, 35.765442, 37.032379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.126648, 35.567451, 37.152481>,  <26.231743, 35.237469, 37.352650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.126648, 35.567451, 37.152481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232526, -0.557491, -0.796954,
		-0.936430, -0.093028, 0.338296,
		-0.262736, 0.824954, -0.500419,
		26.047827, 35.814938, 37.002354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.563585, 35.064102, 36.974880>,  <26.231743, 35.237469, 37.352650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.563585, 35.064102, 36.974880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.722168, 35.360729, 36.758400>,  <25.817318, 35.538708, 36.628513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.722168, 35.360729, 36.758400>,  <25.563585, 35.064102, 36.974880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.722168, 35.360729, 36.758400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497267, -0.322076, -0.805601,
		-0.771716, 0.588507, 0.241069,
		0.396459, 0.741570, -0.541196,
		25.841106, 35.583199, 36.596043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.993097, 35.388046, 36.630741>,  <25.563585, 35.064102, 36.974880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.993097, 35.388046, 36.630741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.345980, 35.439060, 36.449436>,  <25.557709, 35.469669, 36.340652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.345980, 35.439060, 36.449436>,  <24.993097, 35.388046, 36.630741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.345980, 35.439060, 36.449436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429691, -0.175618, -0.885734,
		-0.192561, 0.976163, -0.100132,
		0.882205, 0.127532, -0.453265,
		25.610641, 35.477322, 36.313457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.920322, 35.814804, 36.075550>,  <24.993097, 35.388046, 36.630741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.920322, 35.814804, 36.075550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.183502, 35.523243, 35.999859>,  <25.341410, 35.348309, 35.954445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.183502, 35.523243, 35.999859>,  <24.920322, 35.814804, 36.075550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.183502, 35.523243, 35.999859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.543347, -0.285500, -0.789471,
		0.521421, 0.622248, -0.583889,
		0.657947, -0.728901, -0.189231,
		25.380886, 35.304573, 35.943089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.990616, 35.803894, 35.428043>,  <24.920322, 35.814804, 36.075550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.990616, 35.803894, 35.428043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.166399, 35.455212, 35.514759>,  <25.271870, 35.246002, 35.566788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.166399, 35.455212, 35.514759>,  <24.990616, 35.803894, 35.428043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.166399, 35.455212, 35.514759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398292, -0.405420, -0.822799,
		0.805133, 0.275240, -0.525360,
		0.439458, -0.871710, 0.216791,
		25.298237, 35.193699, 35.579796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.439909, 35.690411, 34.867039>,  <24.990616, 35.803894, 35.428043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.439909, 35.690411, 34.867039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.336426, 35.347580, 35.045246>,  <25.274336, 35.141880, 35.152168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.336426, 35.347580, 35.045246>,  <25.439909, 35.690411, 34.867039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.336426, 35.347580, 35.045246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.548603, -0.249247, -0.798067,
		0.795051, -0.450878, -0.405714,
		-0.258708, -0.857080, 0.445517,
		25.258814, 35.090458, 35.178902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.719250, 35.094410, 34.571339>,  <25.439909, 35.690411, 34.867039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.719250, 35.094410, 34.571339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.370888, 34.987724, 34.736454>,  <25.161871, 34.923714, 34.835522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.370888, 34.987724, 34.736454>,  <25.719250, 35.094410, 34.571339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.370888, 34.987724, 34.736454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316546, -0.338068, -0.886289,
		0.375935, -0.902537, 0.209998,
		-0.870902, -0.266713, 0.412786,
		25.109617, 34.907711, 34.860291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.751474, 34.311279, 34.784176>,  <25.719250, 35.094410, 34.571339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.751474, 34.311279, 34.784176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.014759, 34.609119, 34.739773>,  <26.172729, 34.787823, 34.713131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.014759, 34.609119, 34.739773>,  <25.751474, 34.311279, 34.784176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.014759, 34.609119, 34.739773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.684483, -0.530521, 0.500030,
		0.313429, -0.405112, -0.858863,
		0.658214, 0.744601, -0.111012,
		26.212223, 34.832500, 34.706470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.280634, 34.157986, 34.439968>,  <25.751474, 34.311279, 34.784176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.280634, 34.157986, 34.439968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.415051, 34.435192, 34.695091>,  <26.495701, 34.601517, 34.848164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.415051, 34.435192, 34.695091>,  <26.280634, 34.157986, 34.439968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.415051, 34.435192, 34.695091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560467, -0.691378, 0.455931,
		0.756936, 0.204258, -0.620747,
		0.336044, 0.693019, 0.637809,
		26.515863, 34.643097, 34.886433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.038603, 34.124195, 34.731750>,  <26.280634, 34.157986, 34.439968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.038603, 34.124195, 34.731750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.108633, 33.925148, 34.391933>,  <27.150652, 33.805721, 34.188042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.108633, 33.925148, 34.391933>,  <27.038603, 34.124195, 34.731750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.108633, 33.925148, 34.391933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494257, -0.701841, 0.512961,
		-0.851504, -0.509700, 0.123076,
		0.175076, -0.497619, -0.849543,
		27.161156, 33.775864, 34.137070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.955723, 33.474667, 34.945469>,  <27.038603, 34.124195, 34.731750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.955723, 33.474667, 34.945469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.180763, 33.482948, 34.614883>,  <27.315788, 33.487915, 34.416531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.180763, 33.482948, 34.614883>,  <26.955723, 33.474667, 34.945469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.180763, 33.482948, 34.614883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.665269, -0.604829, 0.437720,
		-0.490812, -0.796086, -0.354049,
		0.562603, 0.020700, -0.826468,
		27.349545, 33.489159, 34.366943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.281397, 32.767101, 34.882408>,  <26.955723, 33.474667, 34.945469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.281397, 32.767101, 34.882408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.524265, 32.971451, 34.638985>,  <27.669987, 33.094063, 34.492931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.524265, 32.971451, 34.638985>,  <27.281397, 32.767101, 34.882408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.524265, 32.971451, 34.638985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.735196, -0.651720, 0.186410,
		-0.301379, -0.560595, -0.771300,
		0.607172, 0.510877, -0.608562,
		27.706417, 33.124714, 34.456417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.729290, 32.330391, 34.601460>,  <27.281397, 32.767101, 34.882408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.729290, 32.330391, 34.601460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.927588, 32.665348, 34.509357>,  <28.046566, 32.866322, 34.454098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.927588, 32.665348, 34.509357>,  <27.729290, 32.330391, 34.601460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.927588, 32.665348, 34.509357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.853158, -0.420015, 0.309367,
		0.162351, -0.349808, -0.922646,
		0.495745, 0.837390, -0.230252,
		28.076311, 32.916565, 34.440281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.229170, 32.247116, 33.982838>,  <27.729290, 32.330391, 34.601460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.229170, 32.247116, 33.982838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.377327, 32.528751, 34.225182>,  <28.466221, 32.697731, 34.370590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.377327, 32.528751, 34.225182>,  <28.229170, 32.247116, 33.982838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.377327, 32.528751, 34.225182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.808003, -0.565965, 0.163752,
		0.458192, 0.428886, -0.778535,
		0.370393, 0.704088, 0.605862,
		28.488445, 32.739979, 34.406940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.790382, 32.358444, 33.539650>,  <28.229170, 32.247116, 33.982838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.790382, 32.358444, 33.539650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.911448, 32.654350, 33.780029>,  <28.984087, 32.831894, 33.924255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.911448, 32.654350, 33.780029>,  <28.790382, 32.358444, 33.539650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.911448, 32.654350, 33.780029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305011, -0.672540, 0.674284,
		0.902975, -0.020784, -0.429190,
		0.302662, 0.739769, 0.600947,
		29.002247, 32.876282, 33.960312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.428366, 32.446205, 33.650822>,  <28.790382, 32.358444, 33.539650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.428366, 32.446205, 33.650822> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.288891, 32.586555, 33.998455>,  <29.205206, 32.670765, 34.207035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.288891, 32.586555, 33.998455>,  <29.428366, 32.446205, 33.650822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.288891, 32.586555, 33.998455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519957, -0.699078, 0.490852,
		0.779784, 0.623038, 0.061318,
		-0.348685, 0.350876, 0.869083,
		29.184286, 32.691818, 34.259178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.020121, 32.632095, 34.084251>,  <29.428366, 32.446205, 33.650822>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.020121, 32.632095, 34.084251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.697279, 32.582687, 34.315189>,  <29.503574, 32.553043, 34.453751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.697279, 32.582687, 34.315189>,  <30.020121, 32.632095, 34.084251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.697279, 32.582687, 34.315189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515518, -0.624090, 0.587156,
		0.287790, 0.771528, 0.567382,
		-0.807105, -0.123518, 0.577343,
		29.455147, 32.545631, 34.488392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.163841, 32.780418, 34.890301>,  <30.020121, 32.632095, 34.084251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.163841, 32.780418, 34.890301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.855488, 32.531811, 34.834515>,  <29.670475, 32.382645, 34.801044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.855488, 32.531811, 34.834515>,  <30.163841, 32.780418, 34.890301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.855488, 32.531811, 34.834515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370327, -0.615451, 0.695757,
		-0.518261, 0.484701, 0.704607,
		-0.770885, -0.621519, -0.139467,
		29.624222, 32.345356, 34.792675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.804903, 32.573460, 35.554897>,  <30.163841, 32.780418, 34.890301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.804903, 32.573460, 35.554897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.753267, 32.275833, 35.292690>,  <29.722286, 32.097260, 35.135365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.753267, 32.275833, 35.292690>,  <29.804903, 32.573460, 35.554897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.753267, 32.275833, 35.292690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433796, -0.636817, 0.637405,
		-0.891716, -0.202080, 0.404977,
		-0.129089, -0.744062, -0.655521,
		29.714540, 32.052616, 35.096035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.412674, 31.955154, 35.785572>,  <29.804903, 32.573460, 35.554897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.412674, 31.955154, 35.785572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.687950, 31.871866, 35.507568>,  <29.853115, 31.821894, 35.340767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.687950, 31.871866, 35.507568>,  <29.412674, 31.955154, 35.785572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.687950, 31.871866, 35.507568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448687, -0.630642, 0.633222,
		-0.570153, -0.747619, -0.340575,
		0.688190, -0.208221, -0.695010,
		29.894407, 31.809399, 35.299065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.388132, 31.333038, 35.743610>,  <29.412674, 31.955154, 35.785572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.388132, 31.333038, 35.743610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.741510, 31.480822, 35.628353>,  <29.953537, 31.569492, 35.559200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.741510, 31.480822, 35.628353>,  <29.388132, 31.333038, 35.743610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.741510, 31.480822, 35.628353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465771, -0.625861, 0.625584,
		0.050792, -0.686876, -0.724997,
		0.883446, 0.369457, -0.288139,
		30.006544, 31.591660, 35.541912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.839426, 31.786543, 35.374657>,  <29.388132, 31.333038, 35.743610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.839426, 31.786543, 35.374657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.099705, 32.052036, 35.227116>,  <29.255871, 32.211334, 35.138592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.099705, 32.052036, 35.227116>,  <28.839426, 31.786543, 35.374657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.099705, 32.052036, 35.227116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.756303, 0.609886, -0.236737,
		0.067826, 0.433006, 0.898835,
		0.650696, 0.663735, -0.368850,
		29.294914, 32.251156, 35.116459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.465616, 32.457291, 35.368320>,  <28.839426, 31.786543, 35.374657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.465616, 32.457291, 35.368320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.771757, 32.475128, 35.111492>,  <28.955441, 32.485832, 34.957397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.771757, 32.475128, 35.111492>,  <28.465616, 32.457291, 35.368320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.771757, 32.475128, 35.111492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400441, 0.813991, -0.420793,
		0.503870, 0.579163, 0.640847,
		0.765351, 0.044596, -0.642066,
		29.001362, 32.488506, 34.918873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.707165, 33.117855, 35.374794>,  <28.465616, 32.457291, 35.368320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.707165, 33.117855, 35.374794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.846560, 32.989700, 35.022449>,  <28.930197, 32.912807, 34.811043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.846560, 32.989700, 35.022449>,  <28.707165, 33.117855, 35.374794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.846560, 32.989700, 35.022449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477698, 0.747854, -0.460997,
		0.806450, 0.581436, 0.107570,
		0.348487, -0.320385, -0.880858,
		28.951105, 32.893585, 34.758194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.847515, 33.692974, 34.985554>,  <28.707165, 33.117855, 35.374794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.847515, 33.692974, 34.985554> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.785925, 33.388111, 34.734028>,  <28.748970, 33.205193, 34.583111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.785925, 33.388111, 34.734028>,  <28.847515, 33.692974, 34.985554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.785925, 33.388111, 34.734028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.712296, 0.526680, -0.463942,
		0.684781, 0.376467, -0.623977,
		-0.153977, -0.762155, -0.628817,
		28.739733, 33.159466, 34.545383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.660627, 34.057022, 34.367683>,  <28.847515, 33.692974, 34.985554>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.660627, 34.057022, 34.367683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.488836, 33.695866, 34.360313>,  <28.385761, 33.479172, 34.355892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.488836, 33.695866, 34.360313>,  <28.660627, 34.057022, 34.367683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.488836, 33.695866, 34.360313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.857353, 0.414057, -0.305783,
		0.283715, -0.115534, -0.951923,
		-0.429479, -0.902889, -0.018421,
		28.359993, 33.424999, 34.354786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.410831, 33.870399, 33.705807>,  <28.660627, 34.057022, 34.367683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.410831, 33.870399, 33.705807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.188446, 33.637024, 33.942619>,  <28.055016, 33.496998, 34.084705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.188446, 33.637024, 33.942619>,  <28.410831, 33.870399, 33.705807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.188446, 33.637024, 33.942619> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.830601, 0.362767, -0.422495,
		0.031732, -0.726632, -0.686293,
		-0.555963, -0.583443, 0.592030,
		28.021658, 33.461990, 34.120228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.055996, 33.477577, 33.213177>,  <28.410831, 33.870399, 33.705807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.055996, 33.477577, 33.213177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.856777, 33.502857, 33.559113>,  <27.737246, 33.518024, 33.766674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.856777, 33.502857, 33.559113>,  <28.055996, 33.477577, 33.213177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.856777, 33.502857, 33.559113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.799465, 0.352819, -0.486183,
		-0.335860, -0.933555, -0.125193,
		-0.498049, 0.063202, 0.864842,
		27.707363, 33.521816, 33.818565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.419641, 33.946304, 32.881943>,  <28.055996, 33.477577, 33.213177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.419641, 33.946304, 32.881943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.398636, 34.317406, 33.029732>,  <28.386032, 34.540066, 33.118404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.398636, 34.317406, 33.029732>,  <28.419641, 33.946304, 32.881943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.398636, 34.317406, 33.029732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.887488, 0.212983, -0.408659,
		-0.457828, 0.306442, -0.834558,
		-0.052516, 0.927756, 0.369474,
		28.382881, 34.595734, 33.140575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.411381, 34.457340, 32.383518>,  <28.419641, 33.946304, 32.881943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.411381, 34.457340, 32.383518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.584484, 34.606892, 32.711647>,  <28.688347, 34.696621, 32.908524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.584484, 34.606892, 32.711647>,  <28.411381, 34.457340, 32.383518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.584484, 34.606892, 32.711647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.750919, 0.354013, -0.557491,
		-0.498841, 0.857257, -0.127551,
		0.432758, 0.373879, 0.820326,
		28.714312, 34.719055, 32.957745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.581131, 35.184563, 32.229137>,  <28.411381, 34.457340, 32.383518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.581131, 35.184563, 32.229137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.802471, 35.033974, 32.526344>,  <28.935276, 34.943623, 32.704670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.802471, 35.033974, 32.526344>,  <28.581131, 35.184563, 32.229137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.802471, 35.033974, 32.526344> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.832628, 0.274766, -0.480869,
		-0.023124, 0.884746, 0.465500,
		0.553350, -0.376469, 0.743018,
		28.968475, 34.921032, 32.749249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.045244, 35.715893, 32.635860>,  <28.581131, 35.184563, 32.229137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.045244, 35.715893, 32.635860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.200050, 35.347084, 32.639812>,  <29.292934, 35.125797, 32.642185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.200050, 35.347084, 32.639812>,  <29.045244, 35.715893, 32.635860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.200050, 35.347084, 32.639812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.837089, 0.346829, -0.423075,
		0.386656, 0.172009, 0.906041,
		0.387014, -0.922021, 0.009884,
		29.316154, 35.070477, 32.642776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.745195, 35.828156, 32.296638>,  <29.045244, 35.715893, 32.635860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.745195, 35.828156, 32.296638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.746689, 35.443211, 32.405338>,  <29.747585, 35.212246, 32.470558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.746689, 35.443211, 32.405338>,  <29.745195, 35.828156, 32.296638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.746689, 35.443211, 32.405338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.779395, -0.167462, -0.603738,
		0.626522, 0.214055, 0.749434,
		0.003731, -0.962360, 0.271752,
		29.747808, 35.154503, 32.486862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.463097, 35.574593, 32.397350>,  <29.745195, 35.828156, 32.296638>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.463097, 35.574593, 32.397350> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.227873, 35.264633, 32.304646>,  <30.086739, 35.078655, 32.249023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.227873, 35.264633, 32.304646>,  <30.463097, 35.574593, 32.397350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.227873, 35.264633, 32.304646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.608712, -0.235331, -0.757687,
		0.532594, -0.586639, 0.610081,
		-0.588059, -0.774903, -0.231758,
		30.051455, 35.032162, 32.235119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.797403, 34.810074, 32.395039>,  <30.463097, 35.574593, 32.397350>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.797403, 34.810074, 32.395039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.505190, 34.891556, 32.134327>,  <30.329861, 34.940445, 31.977900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.505190, 34.891556, 32.134327>,  <30.797403, 34.810074, 32.395039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.505190, 34.891556, 32.134327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576549, -0.327484, -0.748562,
		-0.365937, -0.922636, 0.121790,
		-0.730535, 0.203709, -0.651784,
		30.286030, 34.952667, 31.938791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.681562, 34.273506, 31.854399>,  <30.797403, 34.810074, 32.395039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.681562, 34.273506, 31.854399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.560925, 34.632153, 31.724707>,  <30.488543, 34.847340, 31.646891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.560925, 34.632153, 31.724707>,  <30.681562, 34.273506, 31.854399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.560925, 34.632153, 31.724707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.604671, -0.083056, -0.792133,
		-0.737166, -0.434957, -0.517106,
		-0.301595, 0.896613, -0.324232,
		30.470446, 34.901134, 31.627438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.830860, 34.252945, 31.219131>,  <30.681562, 34.273506, 31.854399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.830860, 34.252945, 31.219131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.828478, 34.648079, 31.281292>,  <30.827047, 34.885159, 31.318588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.828478, 34.648079, 31.281292>,  <30.830860, 34.252945, 31.219131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.828478, 34.648079, 31.281292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.841214, 0.088975, -0.533332,
		-0.540670, 0.127548, -0.831509,
		-0.005958, 0.987834, 0.155401,
		30.826691, 34.944427, 31.327911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.718815, 34.669228, 30.609529>,  <30.830860, 34.252945, 31.219131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.718815, 34.669228, 30.609529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.945082, 34.828014, 30.898649>,  <31.080841, 34.923286, 31.072121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.945082, 34.828014, 30.898649>,  <30.718815, 34.669228, 30.609529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.945082, 34.828014, 30.898649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.774609, 0.044853, -0.630848,
		-0.282848, 0.916734, -0.282125,
		0.565666, 0.396971, 0.722798,
		31.114782, 34.947105, 31.115488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.027979, 35.281807, 30.370951>,  <30.718815, 34.669228, 30.609529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.027979, 35.281807, 30.370951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.256067, 35.151123, 30.672443>,  <31.392920, 35.072712, 30.853338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.256067, 35.151123, 30.672443>,  <31.027979, 35.281807, 30.370951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.256067, 35.151123, 30.672443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.805172, 0.040294, -0.591671,
		0.162935, 0.944265, 0.286035,
		0.570219, -0.326711, 0.753730,
		31.427134, 35.053108, 30.898563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.550585, 35.762325, 30.581675>,  <31.027979, 35.281807, 30.370951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.550585, 35.762325, 30.581675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.672447, 35.389683, 30.660959>,  <31.745564, 35.166096, 30.708530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.672447, 35.389683, 30.660959>,  <31.550585, 35.762325, 30.581675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.672447, 35.389683, 30.660959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.839684, 0.164475, -0.517569,
		0.449573, 0.324113, 0.832367,
		0.304655, -0.931611, 0.198210,
		31.763844, 35.110199, 30.720423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.171997, 35.705635, 30.841005>,  <31.550585, 35.762325, 30.581675>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.171997, 35.705635, 30.841005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.155598, 35.332157, 30.698719>,  <32.145760, 35.108070, 30.613348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.155598, 35.332157, 30.698719>,  <32.171997, 35.705635, 30.841005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.155598, 35.332157, 30.698719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.931003, 0.093540, -0.352822,
		0.362702, -0.345635, 0.865439,
		-0.040995, -0.933695, -0.355714,
		32.143299, 35.052048, 30.592005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.634315, 35.338562, 31.069790>,  <32.171997, 35.705635, 30.841005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.634315, 35.338562, 31.069790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.574215, 35.228767, 30.689877>,  <32.538155, 35.162891, 30.461929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.574215, 35.228767, 30.689877>,  <32.634315, 35.338562, 31.069790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.574215, 35.228767, 30.689877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.936896, 0.267217, -0.225434,
		0.315675, -0.923718, 0.217012,
		-0.150249, -0.274482, -0.949781,
		32.529140, 35.146423, 30.404942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.275730, 34.953148, 30.928221>,  <32.634315, 35.338562, 31.069790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.275730, 34.953148, 30.928221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.133091, 35.074100, 30.574633>,  <33.047508, 35.146671, 30.362480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.133091, 35.074100, 30.574633>,  <33.275730, 34.953148, 30.928221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.133091, 35.074100, 30.574633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.901452, 0.359894, -0.240544,
		0.245399, -0.882633, -0.400921,
		-0.356601, 0.302382, -0.883969,
		33.026112, 35.164814, 30.309443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.549572, 34.583874, 30.333366>,  <33.275730, 34.953148, 30.928221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.549572, 34.583874, 30.333366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.444927, 34.967083, 30.286476>,  <33.382141, 35.197010, 30.258341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.444927, 34.967083, 30.286476>,  <33.549572, 34.583874, 30.333366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.444927, 34.967083, 30.286476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.951088, 0.235213, -0.200268,
		-0.164289, -0.163886, -0.972703,
		-0.261613, 0.958027, -0.117227,
		33.366444, 35.254490, 30.251308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.855671, 34.858505, 29.684929>,  <33.549572, 34.583874, 30.333366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.855671, 34.858505, 29.684929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.828205, 35.176037, 29.926632>,  <33.811726, 35.366554, 30.071653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.828205, 35.176037, 29.926632>,  <33.855671, 34.858505, 29.684929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.828205, 35.176037, 29.926632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.979866, 0.167484, -0.108685,
		-0.187480, 0.584628, -0.789342,
		-0.068662, 0.793826, 0.604257,
		33.807606, 35.414185, 30.107908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.170311, 35.494152, 29.371370>,  <33.855671, 34.858505, 29.684929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.170311, 35.494152, 29.371370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.202507, 35.445713, 29.767118>,  <34.221825, 35.416649, 30.004568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.202507, 35.445713, 29.767118>,  <34.170311, 35.494152, 29.371370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.202507, 35.445713, 29.767118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.996717, 0.018534, -0.078815,
		-0.008793, 0.992467, 0.122193,
		0.080486, -0.121099, 0.989372,
		34.226654, 35.409382, 30.063931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.380939, 35.154053, 28.802614>,  <34.170311, 35.494152, 29.371370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.380939, 35.154053, 28.802614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.460526, 35.542183, 28.857590>,  <34.508278, 35.775059, 28.890575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.460526, 35.542183, 28.857590>,  <34.380939, 35.154053, 28.802614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.460526, 35.542183, 28.857590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017803, 0.143797, -0.989447,
		-0.979844, 0.194422, 0.045886,
		0.198969, 0.970321, 0.137437,
		34.520218, 35.833279, 28.898821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.900433, 35.404671, 28.362133>,  <34.380939, 35.154053, 28.802614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.900433, 35.404671, 28.362133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.171623, 35.687527, 28.442432>,  <34.334335, 35.857243, 28.490612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.171623, 35.687527, 28.442432>,  <33.900433, 35.404671, 28.362133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.171623, 35.687527, 28.442432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038603, 0.306968, -0.950936,
		-0.734071, 0.636961, 0.235414,
		0.677974, 0.707143, 0.200748,
		34.375015, 35.899670, 28.502657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.611485, 36.095356, 28.152296>,  <33.900433, 35.404671, 28.362133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.611485, 36.095356, 28.152296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.009960, 36.130070, 28.155704>,  <34.249046, 36.150898, 28.157749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.009960, 36.130070, 28.155704>,  <33.611485, 36.095356, 28.152296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.009960, 36.130070, 28.155704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021658, 0.340907, -0.939848,
		-0.084472, 0.936083, 0.341488,
		0.996191, 0.086787, 0.008523,
		34.308819, 36.156105, 28.158262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.773884, 36.720234, 27.941862>,  <33.611485, 36.095356, 28.152296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.773884, 36.720234, 27.941862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.116474, 36.520821, 27.888329>,  <34.322029, 36.401173, 27.856209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.116474, 36.520821, 27.888329>,  <33.773884, 36.720234, 27.941862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.116474, 36.520821, 27.888329> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138040, 0.471047, -0.871240,
		0.497381, 0.727725, 0.472259,
		0.856479, -0.498529, -0.133835,
		34.373417, 36.371262, 27.848179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.277363, 37.267212, 27.705534>,  <33.773884, 36.720234, 27.941862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.277363, 37.267212, 27.705534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.422512, 36.911587, 27.593893>,  <34.509602, 36.698212, 27.526909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.422512, 36.911587, 27.593893>,  <34.277363, 37.267212, 27.705534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.422512, 36.911587, 27.593893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095673, 0.333481, -0.937889,
		0.926914, 0.313631, 0.206070,
		0.362872, -0.889059, -0.279103,
		34.531372, 36.644871, 27.510162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.787949, 37.443607, 27.169579>,  <34.277363, 37.267212, 27.705534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.787949, 37.443607, 27.169579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.690945, 37.057251, 27.133238>,  <34.632744, 36.825439, 27.111433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.690945, 37.057251, 27.133238>,  <34.787949, 37.443607, 27.169579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.690945, 37.057251, 27.133238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104023, 0.067220, -0.992301,
		0.964557, -0.250089, 0.084173,
		-0.242506, -0.965887, -0.090853,
		34.618195, 36.767487, 27.105982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.224327, 37.202148, 26.637896>,  <34.787949, 37.443607, 27.169579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.224327, 37.202148, 26.637896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.963734, 36.898869, 26.648430>,  <34.807377, 36.716900, 26.654751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.963734, 36.898869, 26.648430>,  <35.224327, 37.202148, 26.637896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.963734, 36.898869, 26.648430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068953, -0.093747, -0.993205,
		0.755520, -0.645244, 0.113355,
		-0.651486, -0.758203, 0.026337,
		34.768288, 36.671406, 26.656330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.477249, 36.705112, 26.210573>,  <35.224327, 37.202148, 26.637896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.477249, 36.705112, 26.210573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.085796, 36.629124, 26.242065>,  <34.850925, 36.583530, 26.260962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.085796, 36.629124, 26.242065>,  <35.477249, 36.705112, 26.210573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.085796, 36.629124, 26.242065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025187, -0.269257, -0.962739,
		0.204090, -0.944146, 0.258718,
		-0.978628, -0.189969, 0.078733,
		34.792210, 36.572132, 26.265686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.368427, 36.040359, 25.981237>,  <35.477249, 36.705112, 26.210573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.368427, 36.040359, 25.981237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.035709, 36.257034, 25.932751>,  <34.836079, 36.387039, 25.903658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.035709, 36.257034, 25.932751>,  <35.368427, 36.040359, 25.981237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.035709, 36.257034, 25.932751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021486, -0.186791, -0.982165,
		-0.554668, -0.819563, 0.143734,
		-0.831794, 0.541687, -0.121216,
		34.786171, 36.419540, 25.896385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.957043, 35.676826, 25.524614>,  <35.368427, 36.040359, 25.981237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.957043, 35.676826, 25.524614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.793926, 36.040657, 25.492655>,  <34.696056, 36.258953, 25.473480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.793926, 36.040657, 25.492655>,  <34.957043, 35.676826, 25.524614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.793926, 36.040657, 25.492655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013530, -0.093514, -0.995526,
		-0.912975, -0.404885, 0.050441,
		-0.407790, 0.909573, -0.079898,
		34.671589, 36.313530, 25.468685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.454865, 35.573063, 24.967758>,  <34.957043, 35.676826, 25.524614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.454865, 35.573063, 24.967758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.519650, 35.966198, 25.003096>,  <34.558521, 36.202080, 25.024298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.519650, 35.966198, 25.003096>,  <34.454865, 35.573063, 24.967758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.519650, 35.966198, 25.003096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035237, 0.095229, -0.994832,
		-0.986168, 0.158012, 0.050056,
		0.161962, 0.982834, 0.088344,
		34.568237, 36.261047, 25.029598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.159580, 35.767712, 24.426640>,  <34.454865, 35.573063, 24.967758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.159580, 35.767712, 24.426640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.376545, 36.093594, 24.508654>,  <34.506725, 36.289124, 24.557861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.376545, 36.093594, 24.508654>,  <34.159580, 35.767712, 24.426640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.376545, 36.093594, 24.508654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014888, 0.253339, -0.967263,
		-0.839978, 0.521606, 0.149545,
		0.542416, 0.814706, 0.205034,
		34.539268, 36.338005, 24.570164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.730610, 36.270134, 24.115061>,  <34.159580, 35.767712, 24.426640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.730610, 36.270134, 24.115061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.113991, 36.381805, 24.138475>,  <34.344021, 36.448811, 24.152523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.113991, 36.381805, 24.138475>,  <33.730610, 36.270134, 24.115061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.113991, 36.381805, 24.138475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024890, 0.122574, -0.992147,
		-0.284163, 0.952383, 0.110532,
		0.958453, 0.279180, 0.058535,
		34.401527, 36.465561, 24.156036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.752918, 36.895100, 23.815516>,  <33.730610, 36.270134, 24.115061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.752918, 36.895100, 23.815516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.135151, 36.777649, 23.805382>,  <34.364491, 36.707176, 23.799301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.135151, 36.777649, 23.805382>,  <33.752918, 36.895100, 23.815516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.135151, 36.777649, 23.805382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049079, 0.243305, -0.968707,
		0.290607, 0.924437, 0.246909,
		0.955583, -0.293631, -0.025335,
		34.421825, 36.689560, 23.797781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.202347, 37.437267, 23.687708>,  <33.752918, 36.895100, 23.815516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.202347, 37.437267, 23.687708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.391048, 37.107300, 23.563154>,  <34.504269, 36.909321, 23.488422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.391048, 37.107300, 23.563154>,  <34.202347, 37.437267, 23.687708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.391048, 37.107300, 23.563154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158563, 0.268025, -0.950274,
		0.867357, 0.497668, -0.004360,
		0.471753, -0.824917, -0.311385,
		34.532574, 36.859825, 23.469738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.826031, 37.638329, 23.353327>,  <34.202347, 37.437267, 23.687708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.826031, 37.638329, 23.353327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.725807, 37.278061, 23.211334>,  <34.665672, 37.061901, 23.126139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.725807, 37.278061, 23.211334>,  <34.826031, 37.638329, 23.353327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.725807, 37.278061, 23.211334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027110, 0.373064, -0.927410,
		0.967722, -0.222748, -0.117891,
		-0.250559, -0.900670, -0.354984,
		34.650639, 37.007858, 23.104839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.088821, 37.622952, 22.614065>,  <34.826031, 37.638329, 23.353327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.088821, 37.622952, 22.614065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.866428, 37.293404, 22.658096>,  <34.732994, 37.095673, 22.684515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.866428, 37.293404, 22.658096>,  <35.088821, 37.622952, 22.614065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.866428, 37.293404, 22.658096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300836, 0.075998, -0.950643,
		0.774843, -0.561656, -0.290104,
		-0.555981, -0.823873, 0.110080,
		34.699635, 37.046242, 22.691120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.208950, 37.196293, 22.048061>,  <35.088821, 37.622952, 22.614065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.208950, 37.196293, 22.048061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.860405, 37.040306, 22.167164>,  <34.651279, 36.946712, 22.238625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.860405, 37.040306, 22.167164>,  <35.208950, 37.196293, 22.048061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.860405, 37.040306, 22.167164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311408, -0.029401, -0.949821,
		0.379155, -0.920359, -0.095820,
		-0.871359, -0.389969, 0.297755,
		34.598999, 36.923317, 22.256491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.965652, 36.842033, 21.410128>,  <35.208950, 37.196293, 22.048061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.965652, 36.842033, 21.410128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.666416, 36.905502, 21.667866>,  <34.486874, 36.943584, 21.822508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.666416, 36.905502, 21.667866>,  <34.965652, 36.842033, 21.410128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.666416, 36.905502, 21.667866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.642296, 0.070895, -0.763171,
		-0.166777, -0.984782, 0.048881,
		-0.748091, 0.158676, 0.644346,
		34.441990, 36.953106, 21.861170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.494633, 36.313076, 21.303463>,  <34.965652, 36.842033, 21.410128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.494633, 36.313076, 21.303463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.307602, 36.630608, 21.459009>,  <34.195385, 36.821125, 21.552336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.307602, 36.630608, 21.459009>,  <34.494633, 36.313076, 21.303463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.307602, 36.630608, 21.459009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.654440, -0.015157, -0.755962,
		-0.594209, -0.607956, 0.526598,
		-0.467573, 0.793826, 0.388864,
		34.167332, 36.868755, 21.575668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.928635, 36.186115, 21.053137>,  <34.494633, 36.313076, 21.303463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.928635, 36.186115, 21.053137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.844883, 36.541260, 21.217022>,  <33.794632, 36.754345, 21.315353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.844883, 36.541260, 21.217022>,  <33.928635, 36.186115, 21.053137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.844883, 36.541260, 21.217022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492654, 0.266151, -0.828526,
		-0.844660, -0.375325, 0.381681,
		-0.209381, 0.887860, 0.409713,
		33.782070, 36.807617, 21.339935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.204025, 36.313675, 21.060175>,  <33.928635, 36.186115, 21.053137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.204025, 36.313675, 21.060175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.372646, 36.676044, 21.044191>,  <33.473820, 36.893467, 21.034601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.372646, 36.676044, 21.044191>,  <33.204025, 36.313675, 21.060175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.372646, 36.676044, 21.044191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.566017, 0.228448, -0.792109,
		-0.708460, 0.356536, 0.609070,
		0.421556, 0.905922, -0.039959,
		33.499115, 36.947823, 21.032204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.670063, 36.704128, 20.696703>,  <33.204025, 36.313675, 21.060175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.670063, 36.704128, 20.696703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.991596, 36.940960, 20.673727>,  <33.184517, 37.083057, 20.659943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.991596, 36.940960, 20.673727>,  <32.670063, 36.704128, 20.696703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.991596, 36.940960, 20.673727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411698, 0.484030, -0.772153,
		-0.429374, 0.644327, 0.632836,
		0.803830, 0.592079, -0.057438,
		33.232746, 37.118584, 20.656496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.468323, 37.488270, 20.681061>,  <32.670063, 36.704128, 20.696703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.468323, 37.488270, 20.681061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.825253, 37.458130, 20.503038>,  <33.039410, 37.440044, 20.396225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.825253, 37.458130, 20.503038>,  <32.468323, 37.488270, 20.681061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.825253, 37.458130, 20.503038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391091, 0.363257, -0.845631,
		0.225392, 0.928637, 0.294674,
		0.892326, -0.075354, -0.445057,
		33.092949, 37.435524, 20.369522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.545353, 38.111946, 20.290977>,  <32.468323, 37.488270, 20.681061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.545353, 38.111946, 20.290977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.823956, 37.859276, 20.154825>,  <32.991116, 37.707672, 20.073133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.823956, 37.859276, 20.154825>,  <32.545353, 38.111946, 20.290977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.823956, 37.859276, 20.154825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209131, 0.275065, -0.938405,
		0.686399, 0.724789, 0.059481,
		0.696507, -0.631680, -0.340380,
		33.032909, 37.669773, 20.052711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.966202, 38.504585, 19.903284>,  <32.545353, 38.111946, 20.290977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.966202, 38.504585, 19.903284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.023380, 38.130936, 19.772453>,  <33.057686, 37.906746, 19.693954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.023380, 38.130936, 19.772453>,  <32.966202, 38.504585, 19.903284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.023380, 38.130936, 19.772453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141787, 0.307734, -0.940848,
		0.979522, 0.180863, -0.088458,
		0.142943, -0.934124, -0.327077,
		33.066265, 37.850697, 19.674330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.300201, 38.520836, 19.209633>,  <32.966202, 38.504585, 19.903284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.300201, 38.520836, 19.209633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.176193, 38.141151, 19.188120>,  <33.101788, 37.913342, 19.175211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.176193, 38.141151, 19.188120>,  <33.300201, 38.520836, 19.209633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.176193, 38.141151, 19.188120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175899, 0.112861, -0.977917,
		0.934316, -0.293714, -0.201954,
		-0.310021, -0.949207, -0.053784,
		33.083187, 37.856388, 19.171986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.771011, 38.264778, 18.778177>,  <33.300201, 38.520836, 19.209633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.771011, 38.264778, 18.778177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.437920, 38.044044, 18.796227>,  <33.238064, 37.911606, 18.807056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.437920, 38.044044, 18.796227>,  <33.771011, 38.264778, 18.778177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.437920, 38.044044, 18.796227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130505, 0.116424, -0.984588,
		0.538076, -0.825787, -0.168967,
		-0.832732, -0.551834, 0.045125,
		33.188099, 37.878494, 18.809765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.894466, 37.879494, 18.208860>,  <33.771011, 38.264778, 18.778177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.894466, 37.879494, 18.208860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.502392, 37.865967, 18.286930>,  <33.267147, 37.857853, 18.333773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.502392, 37.865967, 18.286930>,  <33.894466, 37.879494, 18.208860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.502392, 37.865967, 18.286930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198083, 0.169048, -0.965498,
		-0.000347, -0.985027, -0.172397,
		-0.980185, -0.033814, 0.195176,
		33.208336, 37.855824, 18.345482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.521027, 37.288418, 17.783978>,  <33.894466, 37.879494, 18.208860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.521027, 37.288418, 17.783978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.265396, 37.584301, 17.868280>,  <33.112019, 37.761829, 17.918861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.265396, 37.584301, 17.868280>,  <33.521027, 37.288418, 17.783978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.265396, 37.584301, 17.868280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109414, 0.183795, -0.976856,
		-0.761320, -0.647346, -0.036526,
		-0.639078, 0.739704, 0.210756,
		33.073673, 37.806213, 17.931507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.110306, 37.219826, 17.231541>,  <33.521027, 37.288418, 17.783978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.110306, 37.219826, 17.231541> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.995037, 37.569439, 17.388010>,  <32.925877, 37.779209, 17.481892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.995037, 37.569439, 17.388010>,  <33.110306, 37.219826, 17.231541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.995037, 37.569439, 17.388010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203005, 0.343456, -0.916966,
		-0.935813, -0.343655, 0.078459,
		-0.288173, 0.874036, 0.391174,
		32.908585, 37.831650, 17.505362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.475422, 37.325504, 16.978350>,  <33.110306, 37.219826, 17.231541>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.475422, 37.325504, 16.978350> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.641598, 37.674416, 17.081530>,  <32.741302, 37.883762, 17.143438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.641598, 37.674416, 17.081530>,  <32.475422, 37.325504, 16.978350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.641598, 37.674416, 17.081530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096529, 0.324255, -0.941032,
		-0.904486, 0.366040, 0.218908,
		0.415437, 0.872281, 0.257950,
		32.766228, 37.936100, 17.158915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.133030, 37.841705, 16.636860>,  <32.475422, 37.325504, 16.978350>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.133030, 37.841705, 16.636860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.457401, 38.057297, 16.727983>,  <32.652023, 38.186653, 16.782658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.457401, 38.057297, 16.727983>,  <32.133030, 37.841705, 16.636860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.457401, 38.057297, 16.727983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073997, 0.480653, -0.873783,
		-0.580452, 0.691715, 0.429657,
		0.810925, 0.538983, 0.227811,
		32.700680, 38.218990, 16.796328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.000973, 38.524822, 16.416674>,  <32.133030, 37.841705, 16.636860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.000973, 38.524822, 16.416674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.399197, 38.518021, 16.453722>,  <32.638130, 38.513939, 16.475952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.399197, 38.518021, 16.453722>,  <32.000973, 38.524822, 16.416674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.399197, 38.518021, 16.453722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089677, 0.471432, -0.877331,
		-0.028744, 0.881738, 0.470862,
		0.995556, -0.017007, 0.092622,
		32.697865, 38.512917, 16.481508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.277618, 39.228954, 16.127905>,  <32.000973, 38.524822, 16.416674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.277618, 39.228954, 16.127905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.617085, 39.017441, 16.132885>,  <32.820763, 38.890533, 16.135874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.617085, 39.017441, 16.132885>,  <32.277618, 39.228954, 16.127905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.617085, 39.017441, 16.132885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360216, 0.560568, -0.745660,
		0.387314, 0.637300, 0.666211,
		0.848665, -0.528784, 0.012450,
		32.871685, 38.858807, 16.136620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.841419, 39.650944, 16.410635>,  <32.277618, 39.228954, 16.127905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.841419, 39.650944, 16.410635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.014191, 39.366852, 16.188278>,  <33.117855, 39.196396, 16.054865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.014191, 39.366852, 16.188278>,  <32.841419, 39.650944, 16.410635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.014191, 39.366852, 16.188278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415414, 0.703744, -0.576346,
		0.800541, 0.018016, 0.599007,
		0.431931, -0.710225, -0.555892,
		33.143768, 39.153786, 16.021511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.585487, 39.801174, 16.217491>,  <32.841419, 39.650944, 16.410635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.585487, 39.801174, 16.217491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.460106, 39.559246, 15.924660>,  <33.384876, 39.414089, 15.748960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.460106, 39.559246, 15.924660>,  <33.585487, 39.801174, 16.217491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.460106, 39.559246, 15.924660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378340, 0.627558, -0.680462,
		0.870979, -0.490270, 0.032116,
		-0.313456, -0.604819, -0.732079,
		33.366070, 39.377800, 15.705036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.917469, 40.119122, 15.707983>,  <33.585487, 39.801174, 16.217491>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.917469, 40.119122, 15.707983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.704857, 39.859798, 15.489929>,  <33.577290, 39.704205, 15.359097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.704857, 39.859798, 15.489929>,  <33.917469, 40.119122, 15.707983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.704857, 39.859798, 15.489929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163982, 0.552644, -0.817126,
		0.831014, -0.523720, -0.187438,
		-0.531532, -0.648306, -0.545136,
		33.545399, 39.665306, 15.326388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.312832, 39.891655, 15.164307>,  <33.917469, 40.119122, 15.707983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.312832, 39.891655, 15.164307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.930458, 39.863888, 15.050200>,  <33.701035, 39.847229, 14.981737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.930458, 39.863888, 15.050200>,  <34.312832, 39.891655, 15.164307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.930458, 39.863888, 15.050200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198778, 0.562034, -0.802873,
		0.216059, -0.824196, -0.523468,
		-0.955932, -0.069414, -0.285265,
		33.643677, 39.843063, 14.964621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.320740, 39.542545, 14.521840>,  <34.312832, 39.891655, 15.164307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.320740, 39.542545, 14.521840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.970901, 39.735600, 14.540358>,  <33.760998, 39.851433, 14.551468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.970901, 39.735600, 14.540358>,  <34.320740, 39.542545, 14.521840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.970901, 39.735600, 14.540358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184397, 0.419406, -0.888874,
		-0.448421, -0.768868, -0.455808,
		-0.874595, 0.482639, 0.046293,
		33.708523, 39.880390, 14.554246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.141586, 39.560242, 13.857708>,  <34.320740, 39.542545, 14.521840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.141586, 39.560242, 13.857708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.921646, 39.860119, 14.005020>,  <33.789684, 40.040047, 14.093408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.921646, 39.860119, 14.005020>,  <34.141586, 39.560242, 13.857708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.921646, 39.860119, 14.005020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040284, 0.416599, -0.908197,
		-0.834293, -0.514206, -0.198865,
		-0.549847, 0.749692, 0.368280,
		33.756691, 40.085026, 14.115504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.898685, 39.834415, 13.272739>,  <34.141586, 39.560242, 13.857708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.898685, 39.834415, 13.272739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.789124, 40.119709, 13.530816>,  <33.723385, 40.290886, 13.685662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.789124, 40.119709, 13.530816>,  <33.898685, 39.834415, 13.272739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.789124, 40.119709, 13.530816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107391, 0.689334, -0.716440,
		-0.955742, -0.126949, -0.265407,
		-0.273905, 0.713234, 0.645192,
		33.706951, 40.333679, 13.724374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.402512, 40.311611, 12.936130>,  <33.898685, 39.834415, 13.272739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.402512, 40.311611, 12.936130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.577953, 40.527470, 13.223577>,  <33.683216, 40.656982, 13.396046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.577953, 40.527470, 13.223577>,  <33.402512, 40.311611, 12.936130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.577953, 40.527470, 13.223577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305191, 0.662673, -0.683902,
		-0.845274, 0.519276, 0.125955,
		0.438601, 0.539644, 0.718619,
		33.709534, 40.689362, 13.439163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.146652, 40.914112, 12.965945>,  <33.402512, 40.311611, 12.936130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.146652, 40.914112, 12.965945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.519379, 40.975410, 13.097535>,  <33.743015, 41.012192, 13.176489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.519379, 40.975410, 13.097535>,  <33.146652, 40.914112, 12.965945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.519379, 40.975410, 13.097535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197539, 0.546254, -0.813993,
		-0.304448, 0.823481, 0.478738,
		0.931821, 0.153250, 0.328975,
		33.798923, 41.021385, 13.196228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.255634, 41.684849, 12.929214>,  <33.146652, 40.914112, 12.965945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.255634, 41.684849, 12.929214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.598835, 41.480255, 12.910365>,  <33.804756, 41.357498, 12.899055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.598835, 41.480255, 12.910365>,  <33.255634, 41.684849, 12.929214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.598835, 41.480255, 12.910365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320614, 0.604970, -0.728847,
		0.401301, 0.610243, 0.683053,
		0.858000, -0.511483, -0.047122,
		33.856236, 41.326809, 12.896229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.823383, 42.055584, 13.071898>,  <33.255634, 41.684849, 12.929214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.823383, 42.055584, 13.071898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.028904, 41.766647, 12.886760>,  <34.152214, 41.593285, 12.775677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.028904, 41.766647, 12.886760>,  <33.823383, 42.055584, 13.071898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.028904, 41.766647, 12.886760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468480, 0.688199, -0.553993,
		0.718705, 0.067806, 0.692001,
		0.513798, -0.722346, -0.462847,
		34.183044, 41.549942, 12.747906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.266434, 42.290051, 12.649191>,  <33.823383, 42.055584, 13.071898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.266434, 42.290051, 12.649191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.074730, 42.440964, 12.966169>,  <33.959709, 42.531513, 13.156356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.074730, 42.440964, 12.966169>,  <34.266434, 42.290051, 12.649191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.074730, 42.440964, 12.966169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246948, 0.924383, -0.290746,
		-0.842216, 0.056350, -0.536187,
		-0.479259, 0.377282, 0.792445,
		33.930954, 42.554150, 13.203903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.809132, 42.852448, 12.415011>,  <34.266434, 42.290051, 12.649191>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.809132, 42.852448, 12.415011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.925869, 42.882923, 12.796382>,  <33.995911, 42.901207, 13.025205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.925869, 42.882923, 12.796382>,  <33.809132, 42.852448, 12.415011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.925869, 42.882923, 12.796382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329599, 0.927755, -0.175028,
		-0.897883, 0.365329, 0.245645,
		0.291841, 0.076190, 0.953427,
		34.013420, 42.905781, 13.082410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.464756, 43.515358, 12.631706>,  <33.809132, 42.852448, 12.415011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.464756, 43.515358, 12.631706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.827362, 43.431969, 12.778547>,  <34.044926, 43.381935, 12.866652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.827362, 43.431969, 12.778547>,  <33.464756, 43.515358, 12.631706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.827362, 43.431969, 12.778547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320286, 0.906119, -0.276344,
		-0.275029, 0.368089, 0.888183,
		0.906519, -0.208469, 0.367103,
		34.099319, 43.369427, 12.888679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.308434, 42.883186, 13.055549>,  <33.464756, 43.515358, 12.631706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.308434, 42.883186, 13.055549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.094608, 43.171707, 13.231713>,  <32.966312, 43.344822, 13.337412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.094608, 43.171707, 13.231713>,  <33.308434, 42.883186, 13.055549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.094608, 43.171707, 13.231713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089865, -0.566677, 0.819025,
		0.840336, 0.398244, 0.367745,
		-0.534564, 0.721304, 0.440411,
		32.934238, 43.388100, 13.363836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.659573, 43.329296, 13.673774>,  <33.308434, 42.883186, 13.055549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.659573, 43.329296, 13.673774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.264931, 43.266510, 13.691498>,  <33.028145, 43.228836, 13.702132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.264931, 43.266510, 13.691498>,  <33.659573, 43.329296, 13.673774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.264931, 43.266510, 13.691498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104301, -0.398321, 0.911297,
		-0.125395, 0.903715, 0.409359,
		-0.986609, -0.156968, 0.044311,
		32.968948, 43.219421, 13.704791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.445049, 43.572052, 14.260323>,  <33.659573, 43.329296, 13.673774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.445049, 43.572052, 14.260323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.156090, 43.307327, 14.180188>,  <32.982712, 43.148491, 14.132108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.156090, 43.307327, 14.180188>,  <33.445049, 43.572052, 14.260323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.156090, 43.307327, 14.180188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123669, -0.408711, 0.904246,
		-0.680325, 0.628454, 0.377099,
		-0.722402, -0.661816, -0.200336,
		32.939369, 43.108784, 14.120088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.907505, 43.555027, 14.817430>,  <33.445049, 43.572052, 14.260323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.907505, 43.555027, 14.817430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.923836, 43.196606, 14.640602>,  <32.933632, 42.981552, 14.534505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.923836, 43.196606, 14.640602>,  <32.907505, 43.555027, 14.817430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.923836, 43.196606, 14.640602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012103, -0.441963, 0.896952,
		-0.999093, -0.041967, -0.007198,
		0.040824, -0.896051, -0.442070,
		32.936085, 42.927792, 14.507981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.417328, 43.085941, 15.136374>,  <32.907505, 43.555027, 14.817430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.417328, 43.085941, 15.136374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.698608, 42.850399, 14.976994>,  <32.867374, 42.709072, 14.881366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.698608, 42.850399, 14.976994>,  <32.417328, 43.085941, 15.136374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.698608, 42.850399, 14.976994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109489, -0.464041, 0.879021,
		-0.702515, -0.661750, -0.261839,
		0.703196, -0.588857, -0.398450,
		32.909569, 42.673740, 14.857458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.302849, 42.389797, 15.364835>,  <32.417328, 43.085941, 15.136374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.302849, 42.389797, 15.364835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.673626, 42.327755, 15.228177>,  <32.896091, 42.290531, 15.146183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.673626, 42.327755, 15.228177>,  <32.302849, 42.389797, 15.364835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.673626, 42.327755, 15.228177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231038, -0.481497, 0.845448,
		-0.295633, -0.862614, -0.410485,
		0.926942, -0.155105, -0.341643,
		32.951710, 42.281223, 15.125684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.388512, 41.676552, 15.461117>,  <32.302849, 42.389797, 15.364835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.388512, 41.676552, 15.461117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.747334, 41.852139, 15.440707>,  <32.962627, 41.957489, 15.428461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.747334, 41.852139, 15.440707>,  <32.388512, 41.676552, 15.461117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.747334, 41.852139, 15.440707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266449, -0.445131, 0.854905,
		0.352562, -0.780491, -0.516268,
		0.897053, 0.438967, -0.051025,
		33.016449, 41.983829, 15.425400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.802799, 41.143452, 15.504625>,  <32.388512, 41.676552, 15.461117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.802799, 41.143452, 15.504625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.014053, 41.465637, 15.612178>,  <33.140804, 41.658951, 15.676709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.014053, 41.465637, 15.612178>,  <32.802799, 41.143452, 15.504625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.014053, 41.465637, 15.612178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253635, -0.451820, 0.855294,
		0.810396, -0.383513, -0.442917,
		0.528135, 0.805467, 0.268880,
		33.172493, 41.707275, 15.692842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.371269, 40.794056, 15.813235>,  <32.802799, 41.143452, 15.504625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.371269, 40.794056, 15.813235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.375481, 41.176216, 15.931285>,  <33.378006, 41.405514, 16.002115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.375481, 41.176216, 15.931285>,  <33.371269, 40.794056, 15.813235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.375481, 41.176216, 15.931285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262239, -0.287447, 0.921197,
		0.964945, 0.067695, -0.253570,
		0.010528, 0.955401, 0.295123,
		33.378639, 41.462837, 16.019821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.959122, 40.845005, 16.261898>,  <33.371269, 40.794056, 15.813235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.959122, 40.845005, 16.261898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.729504, 41.155907, 16.364929>,  <33.591732, 41.342449, 16.426748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.729504, 41.155907, 16.364929>,  <33.959122, 40.845005, 16.261898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.729504, 41.155907, 16.364929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240171, -0.140912, 0.960449,
		0.782811, 0.613202, -0.105785,
		-0.574043, 0.777256, 0.257580,
		33.557289, 41.389084, 16.442204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.431866, 41.412758, 16.667353>,  <33.959122, 40.845005, 16.261898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.431866, 41.412758, 16.667353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.046635, 41.477528, 16.753386>,  <33.815495, 41.516388, 16.805006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.046635, 41.477528, 16.753386>,  <34.431866, 41.412758, 16.667353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.046635, 41.477528, 16.753386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195491, -0.128670, 0.972228,
		0.185101, 0.978379, 0.092265,
		-0.963079, 0.161923, 0.215082,
		33.757710, 41.526104, 16.817909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.494404, 41.797447, 17.213457>,  <34.431866, 41.412758, 16.667353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.494404, 41.797447, 17.213457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.114162, 41.675358, 17.236057>,  <33.886017, 41.602104, 17.249617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.114162, 41.675358, 17.236057>,  <34.494404, 41.797447, 17.213457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.114162, 41.675358, 17.236057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067808, -0.026571, 0.997344,
		-0.302914, 0.951909, 0.045956,
		-0.950603, -0.305226, 0.056498,
		33.828983, 41.583790, 17.253006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.204082, 42.153084, 17.779423>,  <34.494404, 41.797447, 17.213457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.204082, 42.153084, 17.779423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.945084, 41.851902, 17.732414>,  <33.789684, 41.671192, 17.704210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.945084, 41.851902, 17.732414>,  <34.204082, 42.153084, 17.779423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.945084, 41.851902, 17.732414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209900, 0.027964, 0.977323,
		-0.732591, 0.657481, -0.176152,
		-0.647497, -0.752952, -0.117519,
		33.750835, 41.626015, 17.697159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.663509, 42.280010, 18.319054>,  <34.204082, 42.153084, 17.779423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.663509, 42.280010, 18.319054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.630802, 41.898521, 18.203316>,  <33.611176, 41.669628, 18.133873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.630802, 41.898521, 18.203316>,  <33.663509, 42.280010, 18.319054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.630802, 41.898521, 18.203316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219901, -0.265895, 0.938586,
		-0.972089, 0.140376, -0.187983,
		-0.081771, -0.953726, -0.289342,
		33.606270, 41.612404, 18.116512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.126041, 42.015350, 18.710833>,  <33.663509, 42.280010, 18.319054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.126041, 42.015350, 18.710833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.327339, 41.698040, 18.573746>,  <33.448120, 41.507652, 18.491493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.327339, 41.698040, 18.573746>,  <33.126041, 42.015350, 18.710833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.327339, 41.698040, 18.573746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147530, -0.469644, 0.870442,
		-0.851456, -0.387487, -0.353379,
		0.503247, -0.793277, -0.342716,
		33.478313, 41.460056, 18.470932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.751015, 41.476341, 18.881235>,  <33.126041, 42.015350, 18.710833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.751015, 41.476341, 18.881235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.121857, 41.336746, 18.826574>,  <33.344364, 41.252987, 18.793777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.121857, 41.336746, 18.826574>,  <32.751015, 41.476341, 18.881235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.121857, 41.336746, 18.826574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067183, -0.513452, 0.855485,
		-0.368718, -0.783948, -0.499472,
		0.927110, -0.348989, -0.136651,
		33.399990, 41.232048, 18.785580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.739872, 40.887180, 19.325285>,  <32.751015, 41.476341, 18.881235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.739872, 40.887180, 19.325285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.130344, 40.912739, 19.242353>,  <33.364628, 40.928074, 19.192595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.130344, 40.912739, 19.242353>,  <32.739872, 40.887180, 19.325285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.130344, 40.912739, 19.242353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205309, -0.580917, 0.787645,
		-0.070115, -0.811451, -0.580199,
		0.976183, 0.063895, -0.207329,
		33.423199, 40.931908, 19.180155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.955154, 40.209698, 19.226233>,  <32.739872, 40.887180, 19.325285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.955154, 40.209698, 19.226233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.259892, 40.436028, 19.352373>,  <33.442734, 40.571827, 19.428057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.259892, 40.436028, 19.352373>,  <32.955154, 40.209698, 19.226233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.259892, 40.436028, 19.352373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057916, -0.544377, 0.836839,
		0.645173, -0.619272, -0.447497,
		0.761838, 0.565824, 0.315352,
		33.488441, 40.605774, 19.446980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.521965, 39.772484, 19.308516>,  <32.955154, 40.209698, 19.226233>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.521965, 39.772484, 19.308516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.588310, 40.094978, 19.535664>,  <33.628117, 40.288475, 19.671953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.588310, 40.094978, 19.535664>,  <33.521965, 39.772484, 19.308516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.588310, 40.094978, 19.535664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184329, -0.591044, 0.785296,
		0.968768, -0.025578, -0.246646,
		0.165865, 0.806233, 0.567870,
		33.638069, 40.336849, 19.706024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.013966, 39.503597, 19.866056>,  <33.521965, 39.772484, 19.308516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.013966, 39.503597, 19.866056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.896473, 39.853504, 20.020199>,  <33.825977, 40.063450, 20.112684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.896473, 39.853504, 20.020199>,  <34.013966, 39.503597, 19.866056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.896473, 39.853504, 20.020199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221109, -0.330026, 0.917711,
		0.929963, 0.354768, -0.096479,
		-0.293734, 0.874770, 0.385354,
		33.808353, 40.115936, 20.135805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.396908, 39.557388, 20.502411>,  <34.013966, 39.503597, 19.866056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.396908, 39.557388, 20.502411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.108967, 39.829636, 20.556921>,  <33.936203, 39.992985, 20.589628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.108967, 39.829636, 20.556921>,  <34.396908, 39.557388, 20.502411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.108967, 39.829636, 20.556921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022821, -0.219429, 0.975362,
		0.693753, 0.699005, 0.173489,
		-0.719851, 0.680619, 0.136277,
		33.893013, 40.033821, 20.597805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.557831, 39.845604, 21.089666>,  <34.396908, 39.557388, 20.502411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.557831, 39.845604, 21.089666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.182514, 39.978382, 21.050833>,  <33.957325, 40.058048, 21.027533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.182514, 39.978382, 21.050833>,  <34.557831, 39.845604, 21.089666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.182514, 39.978382, 21.050833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106222, -0.009443, 0.994298,
		0.329137, 0.943251, 0.044120,
		-0.938289, 0.331946, -0.097086,
		33.901028, 40.077965, 21.021708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.471855, 40.391678, 21.567612>,  <34.557831, 39.845604, 21.089666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.471855, 40.391678, 21.567612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.120396, 40.215752, 21.493277>,  <33.909519, 40.110195, 21.448675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.120396, 40.215752, 21.493277>,  <34.471855, 40.391678, 21.567612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.120396, 40.215752, 21.493277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144136, -0.126732, 0.981409,
		-0.455189, 0.889102, 0.047960,
		-0.878651, -0.439814, -0.185839,
		33.856800, 40.083809, 21.437525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.933105, 40.761646, 22.030867>,  <34.471855, 40.391678, 21.567612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.933105, 40.761646, 22.030867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.798271, 40.396881, 21.937237>,  <33.717373, 40.178020, 21.881060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.798271, 40.396881, 21.937237>,  <33.933105, 40.761646, 22.030867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.798271, 40.396881, 21.937237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301867, -0.130812, 0.944333,
		-0.891768, 0.388979, -0.231181,
		-0.337084, -0.911912, -0.234074,
		33.697147, 40.123306, 21.867014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.453655, 40.720207, 22.441126>,  <33.933105, 40.761646, 22.030867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.453655, 40.720207, 22.441126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.477661, 40.327488, 22.369049>,  <33.492065, 40.091858, 22.325802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.477661, 40.327488, 22.369049>,  <33.453655, 40.720207, 22.441126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.477661, 40.327488, 22.369049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450971, -0.187713, 0.872576,
		-0.890519, 0.028896, -0.454028,
		0.060013, -0.981799, -0.180193,
		33.495667, 40.032948, 22.314991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.762554, 40.559372, 22.550228>,  <33.453655, 40.720207, 22.441126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.762554, 40.559372, 22.550228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.974110, 40.226307, 22.615892>,  <33.101044, 40.026466, 22.655291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.974110, 40.226307, 22.615892>,  <32.762554, 40.559372, 22.550228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.974110, 40.226307, 22.615892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.507989, -0.155638, 0.847186,
		-0.679870, -0.531461, -0.505299,
		0.528890, -0.832662, 0.164162,
		33.132778, 39.976509, 22.665142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.180683, 40.036564, 22.739731>,  <32.762554, 40.559372, 22.550228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.180683, 40.036564, 22.739731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.533749, 39.900574, 22.869541>,  <32.745590, 39.818977, 22.947428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.533749, 39.900574, 22.869541>,  <32.180683, 40.036564, 22.739731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.533749, 39.900574, 22.869541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378345, -0.104313, 0.919768,
		-0.278849, -0.934630, -0.220702,
		0.882665, -0.339978, 0.324525,
		32.798550, 39.798580, 22.966898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.001064, 39.475960, 23.117376>,  <32.180683, 40.036564, 22.739731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.001064, 39.475960, 23.117376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.376083, 39.551815, 23.234020>,  <32.601093, 39.597328, 23.304007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.376083, 39.551815, 23.234020>,  <32.001064, 39.475960, 23.117376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.376083, 39.551815, 23.234020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232300, -0.282646, 0.930670,
		0.258917, -0.940291, -0.220941,
		0.937549, 0.189642, 0.291612,
		32.657349, 39.608707, 23.321505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.212215, 38.913177, 23.592760>,  <32.001064, 39.475960, 23.117376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.212215, 38.913177, 23.592760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.453190, 39.214428, 23.698486>,  <32.597775, 39.395180, 23.761923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.453190, 39.214428, 23.698486>,  <32.212215, 38.913177, 23.592760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.453190, 39.214428, 23.698486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310701, -0.083756, 0.946810,
		0.735208, -0.652520, 0.183539,
		0.602441, 0.753128, 0.264317,
		32.633923, 39.440365, 23.777781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.750084, 38.615002, 24.022064>,  <32.212215, 38.913177, 23.592760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.750084, 38.615002, 24.022064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.804798, 38.991920, 24.144289>,  <32.837627, 39.218071, 24.217625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.804798, 38.991920, 24.144289>,  <32.750084, 38.615002, 24.022064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.804798, 38.991920, 24.144289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066072, -0.299096, 0.951933,
		0.988394, -0.150401, 0.021346,
		0.136787, 0.942295, 0.305562,
		32.845833, 39.274609, 24.235958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.222279, 38.544071, 24.531662>,  <32.750084, 38.615002, 24.022064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.222279, 38.544071, 24.531662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.069637, 38.911304, 24.574568>,  <32.978054, 39.131645, 24.600311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.069637, 38.911304, 24.574568>,  <33.222279, 38.544071, 24.531662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.069637, 38.911304, 24.574568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019262, -0.108121, 0.993951,
		0.924127, 0.381357, 0.023575,
		-0.381599, 0.918083, 0.107263,
		32.955158, 39.186729, 24.606747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.543686, 38.866066, 25.079107>,  <33.222279, 38.544071, 24.531662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.543686, 38.866066, 25.079107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.183540, 39.038605, 25.056189>,  <32.967453, 39.142128, 25.042437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.183540, 39.038605, 25.056189>,  <33.543686, 38.866066, 25.079107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.183540, 39.038605, 25.056189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081974, -0.038818, 0.995878,
		0.427344, 0.901351, 0.070310,
		-0.900365, 0.431346, -0.057298,
		32.913429, 39.168007, 25.039000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.630493, 39.498253, 25.405966>,  <33.543686, 38.866066, 25.079107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.630493, 39.498253, 25.405966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.239719, 39.413143, 25.413147>,  <33.005253, 39.362080, 25.417456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.239719, 39.413143, 25.413147>,  <33.630493, 39.498253, 25.405966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.239719, 39.413143, 25.413147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010137, 0.130207, 0.991435,
		-0.213286, 0.968388, -0.129361,
		-0.976937, -0.212770, 0.017955,
		32.946640, 39.349312, 25.418533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.288330, 39.929699, 25.953138>,  <33.630493, 39.498253, 25.405966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.288330, 39.929699, 25.953138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.036736, 39.624496, 25.893538>,  <32.885780, 39.441376, 25.857777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.036736, 39.624496, 25.893538>,  <33.288330, 39.929699, 25.953138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.036736, 39.624496, 25.893538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035286, -0.163446, 0.985921,
		-0.776614, 0.625390, 0.075882,
		-0.628987, -0.763003, -0.149002,
		32.848038, 39.395596, 25.848837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.794006, 40.069607, 26.389549>,  <33.288330, 39.929699, 25.953138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.794006, 40.069607, 26.389549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.735996, 39.684513, 26.298233>,  <32.701191, 39.453457, 26.243443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.735996, 39.684513, 26.298233>,  <32.794006, 40.069607, 26.389549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.735996, 39.684513, 26.298233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050975, -0.237695, 0.970001,
		-0.988114, 0.129038, 0.083547,
		-0.145025, -0.962731, -0.228292,
		32.692490, 39.395695, 26.229746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.177277, 39.874268, 26.854694>,  <32.794006, 40.069607, 26.389549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.177277, 39.874268, 26.854694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.380253, 39.548012, 26.743526>,  <32.502037, 39.352257, 26.676825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.380253, 39.548012, 26.743526>,  <32.177277, 39.874268, 26.854694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.380253, 39.548012, 26.743526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053798, -0.291913, 0.954931,
		-0.860008, -0.499518, -0.104248,
		0.507436, -0.815640, -0.277921,
		32.532482, 39.303318, 26.660151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.871202, 39.266399, 27.148500>,  <32.177277, 39.874268, 26.854694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.871202, 39.266399, 27.148500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.252056, 39.173542, 27.068954>,  <32.480568, 39.117828, 27.021227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.252056, 39.173542, 27.068954>,  <31.871202, 39.266399, 27.148500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.252056, 39.173542, 27.068954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103919, -0.365997, 0.924796,
		-0.287469, -0.901197, -0.324355,
		0.952136, -0.232143, -0.198864,
		32.537697, 39.103897, 27.009295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.997747, 38.665493, 27.633001>,  <31.871202, 39.266399, 27.148500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.997747, 38.665493, 27.633001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.353222, 38.808006, 27.517557>,  <32.566505, 38.893517, 27.448290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.353222, 38.808006, 27.517557>,  <31.997747, 38.665493, 27.633001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.353222, 38.808006, 27.517557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436180, -0.462842, 0.771702,
		0.141366, -0.811687, -0.566727,
		0.888686, 0.356287, -0.288612,
		32.619827, 38.914894, 27.430973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.578152, 38.107681, 27.722288>,  <31.997747, 38.665493, 27.633001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.578152, 38.107681, 27.722288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.792694, 38.442810, 27.681532>,  <32.921417, 38.643887, 27.657078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.792694, 38.442810, 27.681532>,  <32.578152, 38.107681, 27.722288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.792694, 38.442810, 27.681532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.584115, -0.281347, 0.761350,
		0.609208, -0.467868, -0.640285,
		0.536353, 0.837821, -0.101890,
		32.953602, 38.694157, 27.650965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.253109, 37.964493, 27.560406>,  <32.578152, 38.107681, 27.722288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.253109, 37.964493, 27.560406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.264481, 38.321854, 27.739750>,  <33.271301, 38.536270, 27.847357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.264481, 38.321854, 27.739750>,  <33.253109, 37.964493, 27.560406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.264481, 38.321854, 27.739750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554252, -0.387363, 0.736718,
		0.831863, 0.227565, -0.506180,
		0.028425, 0.893400, 0.448362,
		33.273006, 38.589874, 27.874258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.951412, 38.103420, 27.659166>,  <33.253109, 37.964493, 27.560406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.951412, 38.103420, 27.659166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.766102, 38.341820, 27.921513>,  <33.654915, 38.484859, 28.078920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.766102, 38.341820, 27.921513>,  <33.951412, 38.103420, 27.659166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.766102, 38.341820, 27.921513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526679, -0.410035, 0.744634,
		0.712729, 0.690404, -0.123939,
		-0.463279, 0.595998, 0.655865,
		33.627117, 38.520618, 28.118273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.555080, 38.471127, 27.996899>,  <33.951412, 38.103420, 27.659166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.555080, 38.471127, 27.996899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.245056, 38.490959, 28.248875>,  <34.059040, 38.502861, 28.400061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.245056, 38.490959, 28.248875>,  <34.555080, 38.471127, 27.996899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.245056, 38.490959, 28.248875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.603316, -0.238321, 0.761061,
		0.187865, 0.969920, 0.154798,
		-0.775060, 0.049584, 0.629940,
		34.012539, 38.505833, 28.437857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.772770, 38.855057, 28.546642>,  <34.555080, 38.471127, 27.996899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.772770, 38.855057, 28.546642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.469028, 38.633007, 28.682417>,  <34.286785, 38.499779, 28.763882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.469028, 38.633007, 28.682417>,  <34.772770, 38.855057, 28.546642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.469028, 38.633007, 28.682417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502137, -0.168186, 0.848276,
		-0.413811, 0.814585, 0.406462,
		-0.759354, -0.555126, 0.339436,
		34.241222, 38.466469, 28.784248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.794376, 39.431011, 29.038820>,  <34.772770, 38.855057, 28.546642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.794376, 39.431011, 29.038820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.110157, 39.661572, 29.123226>,  <35.299625, 39.799908, 29.173870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.110157, 39.661572, 29.123226>,  <34.794376, 39.431011, 29.038820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.110157, 39.661572, 29.123226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083765, 0.239393, -0.967303,
		-0.608069, 0.781315, 0.140707,
		0.789453, 0.576400, 0.211015,
		35.346992, 39.834492, 29.186531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.774822, 40.151886, 28.666443>,  <34.794376, 39.431011, 29.038820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.774822, 40.151886, 28.666443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.159630, 40.064869, 28.732405>,  <35.390514, 40.012661, 28.771982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.159630, 40.064869, 28.732405>,  <34.774822, 40.151886, 28.666443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.159630, 40.064869, 28.732405> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233062, 0.340022, -0.911080,
		0.142125, 0.914910, 0.377808,
		0.962020, -0.217540, 0.164905,
		35.448235, 39.999607, 28.781876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.178711, 40.747215, 28.435207>,  <34.774822, 40.151886, 28.666443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.178711, 40.747215, 28.435207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.420639, 40.430237, 28.466738>,  <35.565796, 40.240047, 28.485657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.420639, 40.430237, 28.466738>,  <35.178711, 40.747215, 28.435207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.420639, 40.430237, 28.466738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427541, 0.239607, -0.871663,
		0.671862, 0.560902, 0.483725,
		0.604821, -0.792450, 0.078826,
		35.602085, 40.192501, 28.490385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.953724, 40.947029, 28.205462>,  <35.178711, 40.747215, 28.435207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.953724, 40.947029, 28.205462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.918190, 40.549221, 28.183439>,  <35.896870, 40.310535, 28.170225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.918190, 40.549221, 28.183439>,  <35.953724, 40.947029, 28.205462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.918190, 40.549221, 28.183439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.663652, -0.017879, -0.747828,
		0.742748, -0.102968, 0.661606,
		-0.088831, -0.994524, -0.055055,
		35.891541, 40.250862, 28.166924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.588913, 40.723454, 28.118546>,  <35.953724, 40.947029, 28.205462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.588913, 40.723454, 28.118546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.340450, 40.448677, 27.967669>,  <36.191372, 40.283810, 27.877142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.340450, 40.448677, 27.967669>,  <36.588913, 40.723454, 28.118546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.340450, 40.448677, 27.967669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523281, -0.005266, -0.852144,
		0.583387, -0.726694, 0.362734,
		-0.621158, -0.686942, -0.377193,
		36.154102, 40.242596, 27.854511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.981014, 40.447556, 27.650839>,  <36.588913, 40.723454, 28.118546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.981014, 40.447556, 27.650839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.633358, 40.294571, 27.525415>,  <36.424767, 40.202778, 27.450161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.633358, 40.294571, 27.525415>,  <36.981014, 40.447556, 27.650839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.633358, 40.294571, 27.525415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378379, -0.105959, -0.919566,
		0.318477, -0.917875, 0.236810,
		-0.869139, -0.382464, -0.313558,
		36.372616, 40.179832, 27.431347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.218094, 39.988274, 27.210518>,  <36.981014, 40.447556, 27.650839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.218094, 39.988274, 27.210518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.833042, 40.035282, 27.112923>,  <36.602009, 40.063488, 27.054365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.833042, 40.035282, 27.112923>,  <37.218094, 39.988274, 27.210518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.833042, 40.035282, 27.112923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229949, -0.121214, -0.965624,
		-0.143067, -0.985644, 0.089658,
		-0.962629, 0.117532, -0.243990,
		36.544254, 40.070538, 27.039726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.109062, 39.494240, 26.610302>,  <37.218094, 39.988274, 27.210518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.109062, 39.494240, 26.610302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.789532, 39.730412, 26.564209>,  <36.597813, 39.872116, 26.536554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.789532, 39.730412, 26.564209>,  <37.109062, 39.494240, 26.610302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.789532, 39.730412, 26.564209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099832, -0.058783, -0.993266,
		-0.593226, -0.804947, -0.011987,
		-0.798822, 0.590428, -0.115231,
		36.549885, 39.907539, 26.529640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.622066, 39.196423, 26.116987>,  <37.109062, 39.494240, 26.610302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.622066, 39.196423, 26.116987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.534233, 39.586639, 26.121086>,  <36.481533, 39.820770, 26.123545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.534233, 39.586639, 26.121086>,  <36.622066, 39.196423, 26.116987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.534233, 39.586639, 26.121086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037093, 0.002148, -0.999310,
		-0.974890, -0.219807, 0.035714,
		-0.219579, 0.975541, 0.010248,
		36.468361, 39.879303, 26.124161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.007187, 39.291344, 25.692352>,  <36.622066, 39.196423, 26.116987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.007187, 39.291344, 25.692352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.210857, 39.635262, 25.707838>,  <36.333061, 39.841610, 25.717131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.210857, 39.635262, 25.707838>,  <36.007187, 39.291344, 25.692352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.210857, 39.635262, 25.707838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040540, 0.020974, -0.998958,
		-0.859708, 0.510214, -0.024177,
		0.509175, 0.859792, 0.038715,
		36.363609, 39.893200, 25.719452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.693932, 39.753025, 25.182365>,  <36.007187, 39.291344, 25.692352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.693932, 39.753025, 25.182365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.066544, 39.887604, 25.237579>,  <36.290112, 39.968349, 25.270708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.066544, 39.887604, 25.237579>,  <35.693932, 39.753025, 25.182365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.066544, 39.887604, 25.237579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079794, 0.181222, -0.980200,
		-0.354800, 0.924101, 0.141967,
		0.931531, 0.336447, 0.138035,
		36.346004, 39.988537, 25.278990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.753368, 40.233036, 24.699249>,  <35.693932, 39.753025, 25.182365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.753368, 40.233036, 24.699249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.139263, 40.181641, 24.791142>,  <36.370800, 40.150803, 24.846277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.139263, 40.181641, 24.791142>,  <35.753368, 40.233036, 24.699249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.139263, 40.181641, 24.791142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262808, 0.421416, -0.867952,
		0.014708, 0.897720, 0.440322,
		0.964736, -0.128486, 0.229730,
		36.428684, 40.143093, 24.860060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.093037, 40.919868, 24.589886>,  <35.753368, 40.233036, 24.699249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.093037, 40.919868, 24.589886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.354675, 40.619907, 24.550276>,  <36.511658, 40.439930, 24.526510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.354675, 40.619907, 24.550276>,  <36.093037, 40.919868, 24.589886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.354675, 40.619907, 24.550276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357070, 0.421526, -0.833557,
		0.666827, 0.509868, 0.543486,
		0.654097, -0.749900, -0.099026,
		36.550903, 40.394936, 24.520569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.730350, 41.230648, 24.306309>,  <36.093037, 40.919868, 24.589886>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.730350, 41.230648, 24.306309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.757908, 40.839237, 24.228605>,  <36.774441, 40.604389, 24.181984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.757908, 40.839237, 24.228605>,  <36.730350, 41.230648, 24.306309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.757908, 40.839237, 24.228605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381969, 0.205755, -0.900979,
		0.921604, -0.012130, 0.387943,
		0.068892, -0.978528, -0.194258,
		36.778576, 40.545677, 24.170328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.420250, 41.130623, 24.073929>,  <36.730350, 41.230648, 24.306309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.420250, 41.130623, 24.073929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.181709, 40.851852, 23.914606>,  <37.038586, 40.684589, 23.819014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.181709, 40.851852, 23.914606>,  <37.420250, 41.130623, 24.073929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.181709, 40.851852, 23.914606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286910, 0.278357, -0.916624,
		0.749695, -0.660912, 0.033956,
		-0.596356, -0.696931, -0.398305,
		37.002804, 40.642773, 23.795115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.730045, 41.048496, 23.400274>,  <37.420250, 41.130623, 24.073929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.730045, 41.048496, 23.400274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.399963, 40.828865, 23.347292>,  <37.201912, 40.697086, 23.315502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.399963, 40.828865, 23.347292>,  <37.730045, 41.048496, 23.400274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.399963, 40.828865, 23.347292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087576, 0.107292, -0.990363,
		0.557998, -0.828856, -0.040452,
		-0.825208, -0.549078, -0.132456,
		37.152401, 40.664143, 23.307554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.856396, 40.615891, 22.804188>,  <37.730045, 41.048496, 23.400274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.856396, 40.615891, 22.804188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.457676, 40.603188, 22.833517>,  <37.218445, 40.595566, 22.851114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.457676, 40.603188, 22.833517>,  <37.856396, 40.615891, 22.804188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.457676, 40.603188, 22.833517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075993, 0.093117, -0.992751,
		0.024693, -0.995149, -0.095232,
		-0.996802, -0.031751, 0.073325,
		37.158634, 40.593662, 22.855515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.499359, 40.372040, 22.092775>,  <37.856396, 40.615891, 22.804188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.499359, 40.372040, 22.092775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.169331, 40.516266, 22.266783>,  <36.971313, 40.602802, 22.371187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.169331, 40.516266, 22.266783>,  <37.499359, 40.372040, 22.092775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.169331, 40.516266, 22.266783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461600, 0.013862, -0.886980,
		-0.325845, -0.932631, 0.155000,
		-0.825076, 0.360566, 0.435019,
		36.921806, 40.624435, 22.397289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.050705, 39.871395, 21.926334>,  <37.499359, 40.372040, 22.092775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.050705, 39.871395, 21.926334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.881985, 40.225754, 22.003563>,  <36.780750, 40.438370, 22.049900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.881985, 40.225754, 22.003563>,  <37.050705, 39.871395, 21.926334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.881985, 40.225754, 22.003563> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214690, 0.109301, -0.970547,
		-0.880904, -0.450830, 0.144089,
		-0.421802, 0.885893, 0.193072,
		36.755444, 40.491520, 22.061485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.448563, 39.945068, 21.554821>,  <37.050705, 39.871395, 21.926334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.448563, 39.945068, 21.554821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.483051, 40.333733, 21.642864>,  <36.503746, 40.566929, 21.695690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.483051, 40.333733, 21.642864>,  <36.448563, 39.945068, 21.554821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.483051, 40.333733, 21.642864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341882, 0.236371, -0.909530,
		-0.935779, 0.003171, 0.352573,
		0.086223, 0.971658, 0.220107,
		36.508919, 40.625229, 21.708897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.835011, 40.345200, 21.392237>,  <36.448563, 39.945068, 21.554821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.835011, 40.345200, 21.392237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.152367, 40.585388, 21.352303>,  <36.342781, 40.729500, 21.328342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.152367, 40.585388, 21.352303>,  <35.835011, 40.345200, 21.392237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.152367, 40.585388, 21.352303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282960, 0.218595, -0.933890,
		-0.538951, 0.769187, 0.343340,
		0.793389, 0.600472, -0.099837,
		36.390385, 40.765530, 21.322351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.590855, 40.946762, 21.175484>,  <35.835011, 40.345200, 21.392237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.590855, 40.946762, 21.175484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.979500, 40.965187, 21.082672>,  <36.212688, 40.976242, 21.026985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.979500, 40.965187, 21.082672>,  <35.590855, 40.946762, 21.175484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.979500, 40.965187, 21.082672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218906, 0.546847, -0.808108,
		0.089665, 0.835965, 0.541408,
		0.971617, 0.046058, -0.232031,
		36.270985, 40.979004, 21.013063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.816730, 41.671322, 21.189762>,  <35.590855, 40.946762, 21.175484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.816730, 41.671322, 21.189762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.049191, 41.454815, 20.946684>,  <36.188667, 41.324913, 20.800837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.049191, 41.454815, 20.946684>,  <35.816730, 41.671322, 21.189762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.049191, 41.454815, 20.946684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261617, 0.582842, -0.769319,
		0.770595, 0.606076, 0.197118,
		0.581154, -0.541264, -0.607695,
		36.223537, 41.292435, 20.764376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.267334, 42.105446, 20.805752>,  <35.816730, 41.671322, 21.189762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.267334, 42.105446, 20.805752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.266296, 41.770630, 20.586901>,  <36.265675, 41.569740, 20.455589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.266296, 41.770630, 20.586901>,  <36.267334, 42.105446, 20.805752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.266296, 41.770630, 20.586901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136664, 0.542293, -0.829000,
		0.990614, 0.072624, -0.115799,
		-0.002591, -0.837045, -0.547129,
		36.265518, 41.519516, 20.422762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.461739, 42.393009, 20.251011>,  <36.267334, 42.105446, 20.805752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.461739, 42.393009, 20.251011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.370834, 42.023865, 20.126637>,  <36.316292, 41.802380, 20.052011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.370834, 42.023865, 20.126637>,  <36.461739, 42.393009, 20.251011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.370834, 42.023865, 20.126637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108973, 0.341387, -0.933585,
		0.967717, -0.178286, -0.178152,
		-0.227263, -0.922859, -0.310937,
		36.302654, 41.747005, 20.033356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.902317, 42.166679, 19.729467>,  <36.461739, 42.393009, 20.251011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.902317, 42.166679, 19.729467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.569340, 41.952431, 19.672693>,  <36.369553, 41.823879, 19.638630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.569340, 41.952431, 19.672693>,  <36.902317, 42.166679, 19.729467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.569340, 41.952431, 19.672693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025328, 0.219096, -0.975375,
		0.553534, -0.815537, -0.168819,
		-0.832442, -0.535627, -0.141933,
		36.319607, 41.791744, 19.630114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.915771, 41.476303, 19.486162>,  <36.902317, 42.166679, 19.729467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.915771, 41.476303, 19.486162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.545044, 41.584339, 19.381815>,  <36.322605, 41.649162, 19.319206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.545044, 41.584339, 19.381815>,  <36.915771, 41.476303, 19.486162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.545044, 41.584339, 19.381815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204751, -0.218849, -0.954035,
		-0.314768, -0.937633, 0.147532,
		-0.926821, 0.270093, -0.260868,
		36.266998, 41.665367, 19.303555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.815056, 41.153347, 18.890074>,  <36.915771, 41.476303, 19.486162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.815056, 41.153347, 18.890074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.530373, 41.434334, 18.891512>,  <36.359562, 41.602924, 18.892376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.530373, 41.434334, 18.891512>,  <36.815056, 41.153347, 18.890074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.530373, 41.434334, 18.891512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064877, 0.070827, -0.995377,
		-0.699473, -0.708185, -0.095982,
		-0.711708, 0.702466, 0.003596,
		36.316860, 41.645073, 18.892591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.400272, 40.900364, 18.332298>,  <36.815056, 41.153347, 18.890074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.400272, 40.900364, 18.332298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.316891, 41.288918, 18.377836>,  <36.266861, 41.522049, 18.405159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.316891, 41.288918, 18.377836>,  <36.400272, 40.900364, 18.332298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.316891, 41.288918, 18.377836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098015, 0.136564, -0.985771,
		-0.973109, -0.194328, -0.123677,
		-0.208453, 0.971384, 0.113844,
		36.254356, 41.580334, 18.411989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.976723, 41.109318, 17.713158>,  <36.400272, 40.900364, 18.332298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.976723, 41.109318, 17.713158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.094017, 41.469482, 17.841698>,  <36.164394, 41.685581, 17.918821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.094017, 41.469482, 17.841698>,  <35.976723, 41.109318, 17.713158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.094017, 41.469482, 17.841698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357022, 0.208674, -0.910489,
		-0.886876, 0.381715, -0.260278,
		0.293235, 0.900416, 0.321348,
		36.181988, 41.739609, 17.938103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.831947, 41.583347, 17.125393>,  <35.976723, 41.109318, 17.713158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.831947, 41.583347, 17.125393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.124542, 41.749435, 17.341734>,  <36.300098, 41.849087, 17.471539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.124542, 41.749435, 17.341734>,  <35.831947, 41.583347, 17.125393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.124542, 41.749435, 17.341734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480785, 0.248373, -0.840926,
		-0.483500, 0.875160, -0.017948,
		0.731487, 0.415217, 0.540852,
		36.343987, 41.874001, 17.503990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.935966, 42.189060, 16.790781>,  <35.831947, 41.583347, 17.125393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.935966, 42.189060, 16.790781> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.272491, 42.156963, 17.004604>,  <36.474407, 42.137707, 17.132898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.272491, 42.156963, 17.004604>,  <35.935966, 42.189060, 16.790781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.272491, 42.156963, 17.004604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540465, 0.107382, -0.834486,
		0.009560, 0.990974, 0.133710,
		0.841312, -0.080243, 0.534560,
		36.524887, 42.132889, 17.164972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.257683, 42.752014, 16.630016>,  <35.935966, 42.189060, 16.790781>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.257683, 42.752014, 16.630016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.530918, 42.487839, 16.754730>,  <36.694859, 42.329334, 16.829559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.530918, 42.487839, 16.754730>,  <36.257683, 42.752014, 16.630016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.530918, 42.487839, 16.754730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.580276, 0.231563, -0.780806,
		0.443479, 0.714280, 0.541416,
		0.683086, -0.660442, 0.311786,
		36.735844, 42.289707, 16.848267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.819649, 43.088703, 16.453773>,  <36.257683, 42.752014, 16.630016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.819649, 43.088703, 16.453773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.939281, 42.709747, 16.499388>,  <37.011063, 42.482372, 16.526756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.939281, 42.709747, 16.499388>,  <36.819649, 43.088703, 16.453773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.939281, 42.709747, 16.499388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.658775, 0.118543, -0.742942,
		0.690337, 0.297326, 0.659570,
		0.299084, -0.947388, 0.114036,
		37.029007, 42.425529, 16.533598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.532101, 43.204895, 16.335190>,  <36.819649, 43.088703, 16.453773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.532101, 43.204895, 16.335190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.463509, 42.811043, 16.322001>,  <37.422352, 42.574730, 16.314087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.463509, 42.811043, 16.322001>,  <37.532101, 43.204895, 16.335190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.463509, 42.811043, 16.322001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.784214, -0.116167, -0.609518,
		0.596323, -0.130379, 0.792086,
		-0.171483, -0.984635, -0.032972,
		37.412064, 42.515652, 16.312109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.162582, 42.867146, 16.317581>,  <37.532101, 43.204895, 16.335190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.162582, 42.867146, 16.317581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.895302, 42.614582, 16.160192>,  <37.734932, 42.463043, 16.065760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.895302, 42.614582, 16.160192>,  <38.162582, 42.867146, 16.317581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.895302, 42.614582, 16.160192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.662087, -0.263460, -0.701591,
		0.339329, -0.729319, 0.594095,
		-0.668204, -0.631413, -0.393473,
		37.694839, 42.425159, 16.042150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.536068, 42.242565, 16.237289>,  <38.162582, 42.867146, 16.317581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.536068, 42.242565, 16.237289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.239998, 42.234798, 15.968434>,  <38.062355, 42.230141, 15.807121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.239998, 42.234798, 15.968434>,  <38.536068, 42.242565, 16.237289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.239998, 42.234798, 15.968434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.659432, -0.216451, -0.719929,
		-0.131510, -0.976100, 0.173012,
		-0.740171, -0.019412, -0.672138,
		38.017948, 42.228973, 15.766793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.761398, 41.828499, 15.737281>,  <38.536068, 42.242565, 16.237289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.761398, 41.828499, 15.737281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.454678, 41.988911, 15.536809>,  <38.270645, 42.085159, 15.416526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.454678, 41.988911, 15.536809>,  <38.761398, 41.828499, 15.737281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.454678, 41.988911, 15.536809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539699, -0.019847, -0.841624,
		-0.347466, -0.915848, -0.201219,
		-0.766806, 0.401033, -0.501179,
		38.224636, 42.109219, 15.386456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.330849, 41.496830, 15.316227>,  <38.761398, 41.828499, 15.737281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.330849, 41.496830, 15.316227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.479630, 41.153137, 15.175731>,  <39.568897, 40.946922, 15.091434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.479630, 41.153137, 15.175731>,  <39.330849, 41.496830, 15.316227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.479630, 41.153137, 15.175731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376724, -0.485553, 0.788870,
		-0.848371, -0.161098, -0.504295,
		0.371948, -0.859235, -0.351240,
		39.591213, 40.895367, 15.070358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.798492, 40.977192, 15.392756>,  <39.330849, 41.496830, 15.316227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.798492, 40.977192, 15.392756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.154907, 40.796318, 15.376847>,  <39.368755, 40.687794, 15.367302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.154907, 40.796318, 15.376847>,  <38.798492, 40.977192, 15.392756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.154907, 40.796318, 15.376847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265069, -0.589441, 0.763084,
		-0.368499, -0.669393, -0.645074,
		0.891037, -0.452185, -0.039773,
		39.422218, 40.660664, 15.364915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.619545, 40.235893, 15.378535>,  <38.798492, 40.977192, 15.392756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.619545, 40.235893, 15.378535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.994015, 40.281906, 15.511406>,  <39.218697, 40.309513, 15.591128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.994015, 40.281906, 15.511406>,  <38.619545, 40.235893, 15.378535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.994015, 40.281906, 15.511406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179488, -0.656062, 0.733053,
		0.302257, -0.745888, -0.593541,
		0.936176, 0.115037, 0.332178,
		39.274868, 40.316418, 15.611059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.983612, 39.491528, 15.466050>,  <38.619545, 40.235893, 15.378535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.983612, 39.491528, 15.466050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.160263, 39.768486, 15.694279>,  <39.266254, 39.934662, 15.831216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.160263, 39.768486, 15.694279>,  <38.983612, 39.491528, 15.466050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.160263, 39.768486, 15.694279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053962, -0.614297, 0.787228,
		0.895575, -0.378449, -0.233926,
		0.441625, 0.692399, 0.570571,
		39.292751, 39.976204, 15.865450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.131863, 39.147923, 16.038195>,  <38.983612, 39.491528, 15.466050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.131863, 39.147923, 16.038195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.216103, 39.514702, 16.173754>,  <39.266647, 39.734768, 16.255089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.216103, 39.514702, 16.173754>,  <39.131863, 39.147923, 16.038195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.216103, 39.514702, 16.173754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001495, -0.346975, 0.937873,
		0.977572, -0.197007, -0.074443,
		0.210597, 0.916950, 0.338899,
		39.279282, 39.789787, 16.275423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.646244, 39.141636, 16.585918>,  <39.131863, 39.147923, 16.038195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.646244, 39.141636, 16.585918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.463440, 39.491314, 16.651543>,  <39.353756, 39.701122, 16.690918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.463440, 39.491314, 16.651543>,  <39.646244, 39.141636, 16.585918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.463440, 39.491314, 16.651543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042587, -0.205743, 0.977679,
		0.888441, 0.439823, 0.131256,
		-0.457011, 0.874200, 0.164060,
		39.326336, 39.753574, 16.700760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.046921, 39.463131, 17.097485>,  <39.646244, 39.141636, 16.585918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.046921, 39.463131, 17.097485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.675026, 39.610382, 17.094358>,  <39.451889, 39.698734, 17.092484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.675026, 39.610382, 17.094358>,  <40.046921, 39.463131, 17.097485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.675026, 39.610382, 17.094358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039598, -0.078866, 0.996098,
		0.366080, 0.926422, 0.087902,
		-0.929741, 0.368133, -0.007814,
		39.396103, 39.720821, 17.092014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.969444, 39.631130, 17.829149>,  <40.046921, 39.463131, 17.097485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.969444, 39.631130, 17.829149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.603088, 39.694263, 17.681505>,  <39.383274, 39.732143, 17.592918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.603088, 39.694263, 17.681505>,  <39.969444, 39.631130, 17.829149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.603088, 39.694263, 17.681505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372741, 0.007038, 0.927909,
		0.149055, 0.987440, 0.052386,
		-0.915886, 0.157836, -0.369109,
		39.328323, 39.741615, 17.570772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.615135, 40.301579, 18.095539>,  <39.969444, 39.631130, 17.829149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.615135, 40.301579, 18.095539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.344376, 40.033134, 17.974596>,  <39.181919, 39.872066, 17.902031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.344376, 40.033134, 17.974596>,  <39.615135, 40.301579, 18.095539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.344376, 40.033134, 17.974596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313196, -0.109134, 0.943397,
		-0.666125, 0.733277, -0.136318,
		-0.676894, -0.671115, -0.302356,
		39.141308, 39.831799, 17.883890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.052521, 40.497929, 18.526436>,  <39.615135, 40.301579, 18.095539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.052521, 40.497929, 18.526436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.976105, 40.126675, 18.398643>,  <38.930256, 39.903923, 18.321968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.976105, 40.126675, 18.398643>,  <39.052521, 40.497929, 18.526436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.976105, 40.126675, 18.398643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345555, -0.241048, 0.906911,
		-0.918746, 0.283657, -0.274671,
		-0.191043, -0.928135, -0.319481,
		38.918793, 39.848232, 18.302799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.340557, 40.342918, 18.798506>,  <39.052521, 40.497929, 18.526436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.340557, 40.342918, 18.798506> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.519814, 39.997135, 18.707397>,  <38.627369, 39.789665, 18.652733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.519814, 39.997135, 18.707397>,  <38.340557, 40.342918, 18.798506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.519814, 39.997135, 18.707397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249910, -0.365777, 0.896522,
		-0.858318, -0.344850, -0.379958,
		0.448146, -0.864457, -0.227772,
		38.654259, 39.737797, 18.639067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.912777, 39.887001, 18.797554>,  <38.340557, 40.342918, 18.798506>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.912777, 39.887001, 18.797554> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.252064, 39.689796, 18.874983>,  <38.455635, 39.571472, 18.921440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.252064, 39.689796, 18.874983>,  <37.912777, 39.887001, 18.797554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.252064, 39.689796, 18.874983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357405, -0.263061, 0.896136,
		-0.390886, -0.829300, -0.399338,
		0.848216, -0.493012, 0.193569,
		38.506527, 39.541893, 18.933054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.618034, 39.312725, 19.088762>,  <37.912777, 39.887001, 18.797554>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.618034, 39.312725, 19.088762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.011089, 39.328602, 19.161266>,  <38.246922, 39.338127, 19.204769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.011089, 39.328602, 19.161266>,  <37.618034, 39.312725, 19.088762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.011089, 39.328602, 19.161266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172537, -0.163995, 0.971255,
		0.068281, -0.985662, -0.154298,
		0.982633, 0.039696, 0.181261,
		38.305878, 39.340511, 19.215645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.781971, 38.638542, 19.437654>,  <37.618034, 39.312725, 19.088762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.781971, 38.638542, 19.437654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.092197, 38.874184, 19.528395>,  <38.278332, 39.015568, 19.582838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.092197, 38.874184, 19.528395>,  <37.781971, 38.638542, 19.437654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.092197, 38.874184, 19.528395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036951, -0.401105, 0.915287,
		0.630187, -0.701481, -0.332850,
		0.775564, 0.589101, 0.226851,
		38.324867, 39.050915, 19.596451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.400173, 38.239189, 19.631369>,  <37.781971, 38.638542, 19.437654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.400173, 38.239189, 19.631369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.408821, 38.605988, 19.790697>,  <38.414009, 38.826065, 19.886293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.408821, 38.605988, 19.790697>,  <38.400173, 38.239189, 19.631369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.408821, 38.605988, 19.790697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053135, -0.398905, 0.915452,
		0.998353, 0.001373, -0.057348,
		0.021619, 0.916991, 0.398321,
		38.415306, 38.881084, 19.910192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.929615, 38.227398, 20.028559>,  <38.400173, 38.239189, 19.631369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.929615, 38.227398, 20.028559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.724644, 38.541477, 20.167625>,  <38.601662, 38.729927, 20.251066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.724644, 38.541477, 20.167625>,  <38.929615, 38.227398, 20.028559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.724644, 38.541477, 20.167625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046200, -0.379066, 0.924215,
		0.857485, 0.489659, 0.157969,
		-0.512431, 0.785202, 0.347666,
		38.570915, 38.777039, 20.271925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.140331, 38.360714, 20.664915>,  <38.929615, 38.227398, 20.028559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.140331, 38.360714, 20.664915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.806709, 38.580761, 20.681562>,  <38.606537, 38.712788, 20.691551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.806709, 38.580761, 20.681562>,  <39.140331, 38.360714, 20.664915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.806709, 38.580761, 20.681562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055020, -0.158007, 0.985904,
		0.548938, 0.820004, 0.162053,
		-0.834050, 0.550116, 0.041619,
		38.556496, 38.745796, 20.694048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.321064, 38.744522, 21.208048>,  <39.140331, 38.360714, 20.664915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.321064, 38.744522, 21.208048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.924335, 38.746399, 21.157017>,  <38.686298, 38.747524, 21.126398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.924335, 38.746399, 21.157017>,  <39.321064, 38.744522, 21.208048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.924335, 38.746399, 21.157017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119529, 0.316884, 0.940902,
		0.044844, 0.948453, -0.313730,
		-0.991818, 0.004694, -0.127578,
		38.626789, 38.747807, 21.118744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.115997, 39.291664, 21.660860>,  <39.321064, 38.744522, 21.208048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.115997, 39.291664, 21.660860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.765816, 39.102303, 21.621931>,  <38.555706, 38.988686, 21.598574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.765816, 39.102303, 21.621931>,  <39.115997, 39.291664, 21.660860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.765816, 39.102303, 21.621931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269698, 0.311414, 0.911199,
		-0.401060, 0.823958, -0.400304,
		-0.875450, -0.473407, -0.097324,
		38.503181, 38.960281, 21.592733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.522243, 39.717438, 21.999491>,  <39.115997, 39.291664, 21.660860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.522243, 39.717438, 21.999491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.406643, 39.334709, 21.987061>,  <38.337284, 39.105072, 21.979603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.406643, 39.334709, 21.987061>,  <38.522243, 39.717438, 21.999491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.406643, 39.334709, 21.987061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287048, 0.055639, 0.956299,
		-0.913282, 0.285288, -0.290734,
		-0.288997, -0.956825, -0.031077,
		38.319942, 39.047661, 21.977737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.035133, 39.711117, 22.486765>,  <38.522243, 39.717438, 21.999491>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.035133, 39.711117, 22.486765> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.118820, 39.321415, 22.453180>,  <38.169033, 39.087593, 22.433029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.118820, 39.321415, 22.453180>,  <38.035133, 39.711117, 22.486765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.118820, 39.321415, 22.453180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278284, -0.141628, 0.950000,
		-0.937437, -0.175388, -0.300751,
		0.209214, -0.974259, -0.083959,
		38.181583, 39.029137, 22.427992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.469833, 39.382080, 22.828508>,  <38.035133, 39.711117, 22.486765>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.469833, 39.382080, 22.828508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.777466, 39.126862, 22.813423>,  <37.962044, 38.973732, 22.804373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.777466, 39.126862, 22.813423>,  <37.469833, 39.382080, 22.828508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.777466, 39.126862, 22.813423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148174, -0.235377, 0.960543,
		-0.621744, -0.733143, -0.275564,
		0.769077, -0.638043, -0.037712,
		38.008190, 38.935448, 22.802109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.257355, 38.760788, 23.250975>,  <37.469833, 39.382080, 22.828508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.257355, 38.760788, 23.250975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.655769, 38.736305, 23.225149>,  <37.894817, 38.721615, 23.209654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.655769, 38.736305, 23.225149>,  <37.257355, 38.760788, 23.250975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.655769, 38.736305, 23.225149> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042900, -0.305340, 0.951277,
		-0.077936, -0.950275, -0.301504,
		0.996035, -0.061205, -0.064563,
		37.954578, 38.717945, 23.205780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.346771, 38.319851, 23.813623>,  <37.257355, 38.760788, 23.250975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.346771, 38.319851, 23.813623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.707043, 38.463867, 23.716341>,  <37.923206, 38.550278, 23.657972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.707043, 38.463867, 23.716341>,  <37.346771, 38.319851, 23.813623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.707043, 38.463867, 23.716341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345149, -0.252896, 0.903834,
		0.263909, -0.898007, -0.352045,
		0.900680, 0.360038, -0.243205,
		37.977245, 38.571877, 23.643379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.820324, 37.867470, 24.130949>,  <37.346771, 38.319851, 23.813623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.820324, 37.867470, 24.130949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.997845, 38.222385, 24.080734>,  <38.104359, 38.435333, 24.050606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.997845, 38.222385, 24.080734>,  <37.820324, 37.867470, 24.130949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.997845, 38.222385, 24.080734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472832, -0.112859, 0.873896,
		0.761228, -0.447197, -0.469624,
		0.443804, 0.887287, -0.125538,
		38.130985, 38.488571, 24.043074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.555275, 37.729073, 24.240799>,  <37.820324, 37.867470, 24.130949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.555275, 37.729073, 24.240799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.520905, 38.125496, 24.281624>,  <38.500282, 38.363350, 24.306118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.520905, 38.125496, 24.281624>,  <38.555275, 37.729073, 24.240799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.520905, 38.125496, 24.281624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.604055, -0.029643, 0.796391,
		0.792297, 0.130080, -0.596108,
		-0.085924, 0.991060, 0.102062,
		38.495129, 38.422813, 24.312243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.303837, 38.009071, 24.390846>,  <38.555275, 37.729073, 24.240799>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.303837, 38.009071, 24.390846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.040287, 38.274822, 24.531979>,  <38.882156, 38.434273, 24.616657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.040287, 38.274822, 24.531979>,  <39.303837, 38.009071, 24.390846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.040287, 38.274822, 24.531979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541409, 0.093172, 0.835581,
		0.522269, 0.741566, -0.421089,
		-0.658872, 0.664379, 0.352830,
		38.842625, 38.474136, 24.637827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.702526, 38.641705, 24.596790>,  <39.303837, 38.009071, 24.390846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.702526, 38.641705, 24.596790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.363590, 38.652962, 24.808914>,  <39.160229, 38.659718, 24.936190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.363590, 38.652962, 24.808914>,  <39.702526, 38.641705, 24.596790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.363590, 38.652962, 24.808914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530664, 0.006440, 0.847558,
		0.020439, 0.999583, -0.020393,
		-0.847336, 0.028145, 0.530311,
		39.109390, 38.661404, 24.968008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.771099, 39.168873, 25.112694>,  <39.702526, 38.641705, 24.596790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.771099, 39.168873, 25.112694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.477623, 38.939003, 25.257717>,  <39.301537, 38.801083, 25.344732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.477623, 38.939003, 25.257717>,  <39.771099, 39.168873, 25.112694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.477623, 38.939003, 25.257717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464939, -0.035478, 0.884632,
		-0.495512, 0.817613, 0.293219,
		-0.733689, -0.574674, 0.362560,
		39.257515, 38.766602, 25.366486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.592510, 39.479549, 25.713621>,  <39.771099, 39.168873, 25.112694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.592510, 39.479549, 25.713621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.471119, 39.100662, 25.754961>,  <39.398285, 38.873329, 25.779764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.471119, 39.100662, 25.754961>,  <39.592510, 39.479549, 25.713621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.471119, 39.100662, 25.754961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459760, -0.050565, 0.886603,
		-0.834581, 0.316577, 0.450838,
		-0.303474, -0.947218, 0.103349,
		39.380077, 38.816498, 25.785965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.434139, 39.449062, 26.458588>,  <39.592510, 39.479549, 25.713621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.434139, 39.449062, 26.458588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.450550, 39.067387, 26.340034>,  <39.460396, 38.838383, 26.268904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.450550, 39.067387, 26.340034>,  <39.434139, 39.449062, 26.458588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.450550, 39.067387, 26.340034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472415, -0.242853, 0.847258,
		-0.880421, -0.174777, 0.440808,
		0.041030, -0.954188, -0.296381,
		39.462860, 38.781132, 26.251120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.134773, 39.057381, 26.946299>,  <39.434139, 39.449062, 26.458588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.134773, 39.057381, 26.946299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.367081, 38.805412, 26.740036>,  <39.506466, 38.654232, 26.616280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.367081, 38.805412, 26.740036>,  <39.134773, 39.057381, 26.946299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.367081, 38.805412, 26.740036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415696, -0.315138, 0.853162,
		-0.699931, -0.709847, 0.078835,
		0.580770, -0.629925, -0.515655,
		39.541313, 38.616436, 26.585339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.199837, 38.418163, 27.384600>,  <39.134773, 39.057381, 26.946299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.199837, 38.418163, 27.384600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.504814, 38.372475, 27.129841>,  <39.687801, 38.345062, 26.976986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.504814, 38.372475, 27.129841>,  <39.199837, 38.418163, 27.384600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.504814, 38.372475, 27.129841> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540230, -0.429395, 0.723721,
		-0.356140, -0.895865, -0.265685,
		0.762440, -0.114215, -0.636898,
		39.733547, 38.338211, 26.938770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.412571, 37.777508, 27.533175>,  <39.199837, 38.418163, 27.384600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.412571, 37.777508, 27.533175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.726692, 37.953377, 27.358826>,  <39.915165, 38.058899, 27.254217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.726692, 37.953377, 27.358826>,  <39.412571, 37.777508, 27.533175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.726692, 37.953377, 27.358826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.608446, -0.417998, 0.674590,
		0.114407, -0.794962, -0.595774,
		0.785305, 0.439674, -0.435870,
		39.962284, 38.085278, 27.228065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.042950, 37.271553, 27.647081>,  <39.412571, 37.777508, 27.533175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.042950, 37.271553, 27.647081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.207077, 37.624477, 27.554852>,  <40.305553, 37.836231, 27.499514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.207077, 37.624477, 27.554852>,  <40.042950, 37.271553, 27.647081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.207077, 37.624477, 27.554852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.699382, -0.142195, 0.700461,
		0.585238, -0.448673, -0.675417,
		0.410319, 0.882311, -0.230576,
		40.330173, 37.889172, 27.485678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.759926, 37.149452, 27.559795>,  <40.042950, 37.271553, 27.647081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.759926, 37.149452, 27.559795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.722790, 37.536324, 27.654408>,  <40.700508, 37.768448, 27.711174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.722790, 37.536324, 27.654408>,  <40.759926, 37.149452, 27.559795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.722790, 37.536324, 27.654408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.660696, -0.117879, 0.741340,
		0.744890, 0.225102, -0.628067,
		-0.092842, 0.967178, 0.236531,
		40.694939, 37.826477, 27.725367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.457088, 37.421982, 27.466217>,  <40.759926, 37.149452, 27.559795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.457088, 37.421982, 27.466217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.242218, 37.659298, 27.706036>,  <41.113297, 37.801685, 27.849926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.242218, 37.659298, 27.706036>,  <41.457088, 37.421982, 27.466217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.242218, 37.659298, 27.706036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.672204, -0.128238, 0.729175,
		0.509495, 0.794711, -0.329924,
		-0.537175, 0.593287, 0.599544,
		41.081066, 37.837284, 27.885899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.939873, 37.914001, 27.756466>,  <41.457088, 37.421982, 27.466217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.939873, 37.914001, 27.756466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.619808, 37.924801, 27.996138>,  <41.427769, 37.931282, 28.139940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.619808, 37.924801, 27.996138>,  <41.939873, 37.914001, 27.756466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.619808, 37.924801, 27.996138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.599637, 0.013508, 0.800158,
		0.013508, 0.999544, -0.026998,
		-0.800158, 0.026998, 0.599182,
		41.379761, 37.932899, 28.175892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.086506, 38.505180, 28.170712>,  <41.939873, 37.914001, 27.756466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.086506, 38.505180, 28.170712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.832764, 38.254745, 28.352083>,  <41.680519, 38.104485, 28.460905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.832764, 38.254745, 28.352083>,  <42.086506, 38.505180, 28.170712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.832764, 38.254745, 28.352083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.572984, 0.012923, 0.819465,
		-0.518919, 0.779642, 0.350543,
		-0.634360, -0.626092, 0.453428,
		41.642456, 38.066917, 28.488111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.064999, 38.794292, 28.849905>,  <42.086506, 38.505180, 28.170712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.064999, 38.794292, 28.849905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.922588, 38.420784, 28.864408>,  <41.837143, 38.196678, 28.873112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.922588, 38.420784, 28.864408>,  <42.064999, 38.794292, 28.849905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.922588, 38.420784, 28.864408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369617, -0.105076, 0.923224,
		-0.858271, 0.342094, 0.382548,
		-0.356026, -0.933772, 0.036260,
		41.815781, 38.140652, 28.875286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.673401, 38.680645, 29.412357>,  <42.064999, 38.794292, 28.849905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.673401, 38.680645, 29.412357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.861553, 38.352097, 29.283306>,  <41.974445, 38.154968, 29.205875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.861553, 38.352097, 29.283306>,  <41.673401, 38.680645, 29.412357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.861553, 38.352097, 29.283306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443734, -0.095867, 0.891016,
		-0.762784, -0.562281, 0.319376,
		0.470384, -0.821371, -0.322629,
		42.002666, 38.105686, 29.186518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.454189, 38.088089, 29.744251>,  <41.673401, 38.680645, 29.412357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.454189, 38.088089, 29.744251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.833393, 38.066559, 29.618792>,  <42.060917, 38.053638, 29.543516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.833393, 38.066559, 29.618792>,  <41.454189, 38.088089, 29.744251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.833393, 38.066559, 29.618792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316178, 0.047373, 0.947516,
		-0.036145, -0.997426, 0.061930,
		0.948011, -0.053829, -0.313651,
		42.117798, 38.050411, 29.524696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.625355, 37.662537, 30.141006>,  <41.454189, 38.088089, 29.744251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.625355, 37.662537, 30.141006> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.943008, 37.878620, 30.029634>,  <42.133602, 38.008270, 29.962811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.943008, 37.878620, 30.029634>,  <41.625355, 37.662537, 30.141006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.943008, 37.878620, 30.029634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307516, 0.037984, 0.950785,
		0.524201, -0.840671, -0.135959,
		0.794133, 0.540212, -0.278431,
		42.181248, 38.040684, 29.946106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.186485, 37.303249, 30.403828>,  <41.625355, 37.662537, 30.141006>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.186485, 37.303249, 30.403828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.310543, 37.673992, 30.319214>,  <42.384975, 37.896439, 30.268446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.310543, 37.673992, 30.319214>,  <42.186485, 37.303249, 30.403828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.310543, 37.673992, 30.319214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.570394, -0.003404, 0.821364,
		0.760568, -0.375398, -0.529729,
		0.310141, 0.926858, -0.211535,
		42.403587, 37.952049, 30.255753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.650093, 37.388405, 30.954956>,  <42.186485, 37.303249, 30.403828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.650093, 37.388405, 30.954956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.712063, 37.699188, 30.710878>,  <42.749245, 37.885658, 30.564432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.712063, 37.699188, 30.710878>,  <42.650093, 37.388405, 30.954956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.712063, 37.699188, 30.710878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.627945, 0.399381, 0.667967,
		0.762681, -0.486654, -0.426012,
		0.154928, 0.776957, -0.610193,
		42.758541, 37.932274, 30.527821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.092548, 37.073677, 31.374495>,  <42.650093, 37.388405, 30.954956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.092548, 37.073677, 31.374495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.712128, 37.059158, 31.497250>,  <41.483875, 37.050446, 31.570904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.712128, 37.059158, 31.497250>,  <42.092548, 37.073677, 31.374495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.712128, 37.059158, 31.497250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127516, 0.858497, 0.496711,
		-0.281493, 0.511532, -0.811848,
		-0.951053, -0.036297, 0.306890,
		41.426811, 37.048267, 31.589317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.837975, 37.764362, 31.322912>,  <42.092548, 37.073677, 31.374495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.837975, 37.764362, 31.322912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.612427, 37.581375, 31.597946>,  <41.477100, 37.471581, 31.762966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.612427, 37.581375, 31.597946>,  <41.837975, 37.764362, 31.322912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.612427, 37.581375, 31.597946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016364, 0.838589, 0.544519,
		-0.825704, 0.295784, -0.480338,
		-0.563866, -0.457472, 0.687586,
		41.443268, 37.444134, 31.804222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.133507, 38.104744, 31.473974>,  <41.837975, 37.764362, 31.322912>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.133507, 38.104744, 31.473974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.240211, 37.922394, 31.813623>,  <41.304234, 37.812984, 32.017414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.240211, 37.922394, 31.813623>,  <41.133507, 38.104744, 31.473974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.240211, 37.922394, 31.813623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015829, 0.883007, 0.469094,
		-0.963632, -0.111697, 0.242772,
		0.266765, -0.455876, 0.849125,
		41.320240, 37.785629, 32.068359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.606556, 38.269768, 31.957478>,  <41.133507, 38.104744, 31.473974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.606556, 38.269768, 31.957478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.935608, 38.185844, 32.168858>,  <41.133038, 38.135490, 32.295685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.935608, 38.185844, 32.168858>,  <40.606556, 38.269768, 31.957478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.935608, 38.185844, 32.168858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079989, 0.877481, 0.472894,
		-0.562921, -0.431287, 0.705061,
		0.822631, -0.209805, 0.528451,
		41.182396, 38.122902, 32.327393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.459015, 38.551914, 32.628021>,  <40.606556, 38.269768, 31.957478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.459015, 38.551914, 32.628021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.853642, 38.506908, 32.580658>,  <41.090420, 38.479904, 32.552238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.853642, 38.506908, 32.580658>,  <40.459015, 38.551914, 32.628021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.853642, 38.506908, 32.580658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150812, 0.905911, 0.395704,
		0.062742, -0.408246, 0.910713,
		0.986569, -0.112519, -0.118407,
		41.149612, 38.473152, 32.545135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.731380, 38.563168, 33.246643>,  <40.459015, 38.551914, 32.628021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.731380, 38.563168, 33.246643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.013988, 38.695316, 32.996304>,  <41.183552, 38.774605, 32.846100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.013988, 38.695316, 32.996304>,  <40.731380, 38.563168, 33.246643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.013988, 38.695316, 32.996304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099035, 0.829493, 0.549667,
		0.700729, -0.450332, 0.553335,
		0.706521, 0.330368, -0.625848,
		41.225945, 38.794426, 32.808548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.303745, 38.685898, 33.671505>,  <40.731380, 38.563168, 33.246643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.303745, 38.685898, 33.671505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.329445, 38.899269, 33.334145>,  <41.344864, 39.027294, 33.131729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.329445, 38.899269, 33.334145>,  <41.303745, 38.685898, 33.671505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.329445, 38.899269, 33.334145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213148, 0.818307, 0.533800,
		0.974905, -0.214065, -0.061124,
		0.064249, 0.533433, -0.843399,
		41.348721, 39.059299, 33.081123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.883629, 39.077549, 33.720764>,  <41.303745, 38.685898, 33.671505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.883629, 39.077549, 33.720764> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.651630, 39.277115, 33.463181>,  <41.512432, 39.396854, 33.308632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.651630, 39.277115, 33.463181>,  <41.883629, 39.077549, 33.720764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.651630, 39.277115, 33.463181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343293, 0.866579, 0.362202,
		0.738752, -0.010991, -0.673888,
		-0.579996, 0.498919, -0.643960,
		41.477631, 39.426792, 33.269993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.224022, 39.775063, 33.806034>,  <41.883629, 39.077549, 33.720764>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.224022, 39.775063, 33.806034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.915981, 39.825832, 33.555969>,  <41.731155, 39.856293, 33.405930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.915981, 39.825832, 33.555969>,  <42.224022, 39.775063, 33.806034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.915981, 39.825832, 33.555969> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126360, 0.990939, 0.045527,
		0.625277, -0.043935, -0.779165,
		-0.770105, 0.126922, -0.625163,
		41.684948, 39.863911, 33.368420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.408096, 40.133556, 33.131248>,  <42.224022, 39.775063, 33.806034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.408096, 40.133556, 33.131248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.026245, 40.198673, 33.230991>,  <41.797134, 40.237743, 33.290836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.026245, 40.198673, 33.230991>,  <42.408096, 40.133556, 33.131248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.026245, 40.198673, 33.230991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216350, 0.954527, 0.205113,
		-0.204629, 0.249756, -0.946440,
		-0.954631, 0.162790, 0.249358,
		41.739857, 40.247509, 33.305798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.287598, 40.813686, 32.855911>,  <42.408096, 40.133556, 33.131248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.287598, 40.813686, 32.855911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.027302, 40.732250, 33.148510>,  <41.871124, 40.683388, 33.324070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.027302, 40.732250, 33.148510>,  <42.287598, 40.813686, 32.855911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.027302, 40.732250, 33.148510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064584, 0.945051, 0.320480,
		-0.756547, 0.255792, -0.601837,
		-0.650743, -0.203589, 0.731495,
		41.832081, 40.671173, 33.367958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.762135, 41.374912, 32.876514>,  <42.287598, 40.813686, 32.855911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.762135, 41.374912, 32.876514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.704514, 41.189911, 33.226448>,  <41.669941, 41.078911, 33.436409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.704514, 41.189911, 33.226448>,  <41.762135, 41.374912, 32.876514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.704514, 41.189911, 33.226448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051155, 0.879393, 0.473340,
		-0.988247, 0.112936, -0.103017,
		-0.144050, -0.462507, 0.874835,
		41.661297, 41.051159, 33.488899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.208130, 41.737675, 33.209690>,  <41.762135, 41.374912, 32.876514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.208130, 41.737675, 33.209690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.403477, 41.548576, 33.503086>,  <41.520687, 41.435120, 33.679123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.403477, 41.548576, 33.503086>,  <41.208130, 41.737675, 33.209690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.403477, 41.548576, 33.503086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129961, 0.870575, 0.474562,
		-0.862905, -0.136437, 0.486601,
		0.488370, -0.472741, 0.733492,
		41.549988, 41.406754, 33.723133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.934544, 41.958218, 33.767895>,  <41.208130, 41.737675, 33.209690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.934544, 41.958218, 33.767895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.276825, 41.813259, 33.915649>,  <41.482193, 41.726284, 34.004303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.276825, 41.813259, 33.915649>,  <40.934544, 41.958218, 33.767895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.276825, 41.813259, 33.915649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158845, 0.863317, 0.479012,
		-0.492487, -0.351217, 0.796306,
		0.855702, -0.362396, 0.369383,
		41.533535, 41.704540, 34.026463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.076321, 42.350254, 34.460800>,  <40.934544, 41.958218, 33.767895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.076321, 42.350254, 34.460800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.406307, 42.212467, 34.281570>,  <41.604298, 42.129795, 34.174034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.406307, 42.212467, 34.281570>,  <41.076321, 42.350254, 34.460800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.406307, 42.212467, 34.281570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504621, 0.805972, 0.309463,
		0.254532, -0.481403, 0.838728,
		0.824968, -0.344471, -0.448072,
		41.653797, 42.109127, 34.147148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.593685, 42.346886, 34.985573>,  <41.076321, 42.350254, 34.460800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.593685, 42.346886, 34.985573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.742058, 42.386894, 34.616268>,  <41.831081, 42.410900, 34.394688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.742058, 42.386894, 34.616268>,  <41.593685, 42.346886, 34.985573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.742058, 42.386894, 34.616268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.668875, 0.660895, 0.340329,
		0.644218, -0.743783, 0.178242,
		0.370930, 0.100024, -0.923258,
		41.853336, 42.416901, 34.339291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.237236, 42.682137, 35.101643>,  <41.593685, 42.346886, 34.985573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.237236, 42.682137, 35.101643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.199615, 42.674946, 34.703480>,  <42.177044, 42.670631, 34.464584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.199615, 42.674946, 34.703480>,  <42.237236, 42.682137, 35.101643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.199615, 42.674946, 34.703480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.715029, 0.694492, -0.080098,
		0.692741, -0.719276, -0.052459,
		-0.094045, -0.017978, -0.995406,
		42.171402, 42.669552, 34.404858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.564808, 43.231346, 35.031723>,  <42.237236, 42.682137, 35.101643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.564808, 43.231346, 35.031723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.817142, 42.950233, 34.900177>,  <42.968544, 42.781567, 34.821251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.817142, 42.950233, 34.900177>,  <42.564808, 43.231346, 35.031723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.817142, 42.950233, 34.900177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.769482, -0.621107, -0.148737,
		-0.099731, 0.346884, -0.932590,
		0.630833, -0.702778, -0.328865,
		43.006393, 42.739399, 34.801517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.608849, 42.952694, 34.195492>,  <42.564808, 43.231346, 35.031723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.608849, 42.952694, 34.195492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.657391, 42.664398, 34.468494>,  <42.686516, 42.491421, 34.632294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.657391, 42.664398, 34.468494>,  <42.608849, 42.952694, 34.195492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.657391, 42.664398, 34.468494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.691095, -0.554906, -0.463106,
		0.712503, -0.415474, -0.565439,
		0.121356, -0.720736, 0.682504,
		42.693798, 42.448177, 34.673244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.684425, 42.352863, 33.788422>,  <42.608849, 42.952694, 34.195492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.684425, 42.352863, 33.788422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.550198, 42.273933, 34.156868>,  <42.469662, 42.226578, 34.377937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.550198, 42.273933, 34.156868>,  <42.684425, 42.352863, 33.788422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.550198, 42.273933, 34.156868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.711352, -0.587942, -0.385101,
		0.617551, -0.784468, 0.056933,
		-0.335573, -0.197320, 0.921117,
		42.449524, 42.214737, 34.433205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.731525, 41.652470, 33.862797>,  <42.684425, 42.352863, 33.788422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.731525, 41.652470, 33.862797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.441074, 41.762913, 34.114670>,  <42.266804, 41.829178, 34.265793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.441074, 41.762913, 34.114670>,  <42.731525, 41.652470, 33.862797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.441074, 41.762913, 34.114670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.548981, -0.784207, -0.289204,
		0.413955, -0.555686, 0.721010,
		-0.726128, 0.276103, 0.629687,
		42.223236, 41.845745, 34.303577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.615620, 41.146355, 34.414322>,  <42.731525, 41.652470, 33.862797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.615620, 41.146355, 34.414322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.289318, 41.350452, 34.305363>,  <42.093536, 41.472912, 34.239986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.289318, 41.350452, 34.305363>,  <42.615620, 41.146355, 34.414322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.289318, 41.350452, 34.305363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485862, -0.860014, -0.155933,
		-0.313830, 0.005146, 0.949465,
		-0.815751, 0.510245, -0.272398,
		42.044594, 41.503525, 34.223644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.153809, 40.731529, 34.737286>,  <42.615620, 41.146355, 34.414322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.153809, 40.731529, 34.737286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.960991, 40.927204, 34.446541>,  <41.845299, 41.044609, 34.272095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.960991, 40.927204, 34.446541>,  <42.153809, 40.731529, 34.737286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.960991, 40.927204, 34.446541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402661, -0.860502, -0.312090,
		-0.778137, 0.142237, 0.611778,
		-0.482045, 0.489188, -0.726862,
		41.816376, 41.073959, 34.228481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.465828, 40.439003, 34.629284>,  <42.153809, 40.731529, 34.737286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.465828, 40.439003, 34.629284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.525093, 40.647839, 34.293316>,  <41.560654, 40.773140, 34.091736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.525093, 40.647839, 34.293316>,  <41.465828, 40.439003, 34.629284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.525093, 40.647839, 34.293316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472920, -0.708494, -0.523815,
		-0.868559, 0.474827, 0.141932,
		0.148164, 0.522087, -0.839924,
		41.569542, 40.804466, 34.041340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.883850, 40.641617, 34.227619>,  <41.465828, 40.439003, 34.629284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.883850, 40.641617, 34.227619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.159344, 40.633308, 33.937733>,  <41.324638, 40.628323, 33.763802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.159344, 40.633308, 33.937733>,  <40.883850, 40.641617, 34.227619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.159344, 40.633308, 33.937733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502854, -0.733776, -0.456848,
		-0.522291, 0.679074, -0.515821,
		0.688731, -0.020775, -0.724720,
		41.365963, 40.627075, 33.720318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.513187, 40.602604, 33.454330>,  <40.883850, 40.641617, 34.227619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.513187, 40.602604, 33.454330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.895866, 40.487679, 33.435680>,  <41.125473, 40.418724, 33.424488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.895866, 40.487679, 33.435680>,  <40.513187, 40.602604, 33.454330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.895866, 40.487679, 33.435680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265917, -0.797595, -0.541415,
		0.118363, 0.530372, -0.839462,
		0.956702, -0.287311, -0.046629,
		41.182877, 40.401485, 33.421692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.481720, 40.075710, 32.825706>,  <40.513187, 40.602604, 33.454330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.481720, 40.075710, 32.825706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.821205, 40.031448, 33.032562>,  <41.024899, 40.004890, 33.156677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.821205, 40.031448, 33.032562>,  <40.481720, 40.075710, 32.825706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.821205, 40.031448, 33.032562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084372, -0.937005, -0.338973,
		0.522073, 0.331324, -0.785916,
		0.848717, -0.110660, 0.517140,
		41.075821, 39.998249, 33.187706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.986340, 39.903988, 32.312729>,  <40.481720, 40.075710, 32.825706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.986340, 39.903988, 32.312729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.056786, 39.755074, 32.677231>,  <41.099052, 39.665726, 32.895931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.056786, 39.755074, 32.677231>,  <40.986340, 39.903988, 32.312729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.056786, 39.755074, 32.677231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012631, -0.926502, -0.376078,
		0.984288, 0.054723, -0.167874,
		0.176116, -0.372289, 0.911254,
		41.109619, 39.643387, 32.950607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.663105, 39.529930, 32.456085>,  <40.986340, 39.903988, 32.312729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.663105, 39.529930, 32.456085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.348049, 39.393467, 32.661308>,  <41.159016, 39.311588, 32.784443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.348049, 39.393467, 32.661308>,  <41.663105, 39.529930, 32.456085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.348049, 39.393467, 32.661308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082320, -0.883512, -0.461119,
		0.610607, -0.320963, 0.723977,
		-0.787644, -0.341160, 0.513056,
		41.111755, 39.291119, 32.815224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.319126, 39.020210, 32.279209>,  <41.663105, 39.529930, 32.456085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.319126, 39.020210, 32.279209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.045555, 38.929863, 32.556690>,  <41.881413, 38.875652, 32.723179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.045555, 38.929863, 32.556690>,  <42.319126, 39.020210, 32.279209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.045555, 38.929863, 32.556690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198308, -0.857505, -0.474720,
		0.702078, -0.462242, 0.541682,
		-0.683930, -0.225870, 0.693701,
		41.840378, 38.862103, 32.764801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.468929, 38.369991, 32.580521>,  <42.319126, 39.020210, 32.279209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.468929, 38.369991, 32.580521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.069729, 38.371162, 32.605793>,  <41.830208, 38.371864, 32.620956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.069729, 38.371162, 32.605793>,  <42.468929, 38.369991, 32.580521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.069729, 38.371162, 32.605793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031184, -0.891852, -0.451252,
		0.055030, -0.452319, 0.890157,
		-0.997998, 0.002926, 0.063183,
		41.770329, 38.372040, 32.624748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.200123, 37.822548, 33.029087>,  <42.468929, 38.369991, 32.580521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.200123, 37.822548, 33.029087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.903023, 37.919537, 32.779434>,  <41.724762, 37.977730, 32.629642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.903023, 37.919537, 32.779434>,  <42.200123, 37.822548, 33.029087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.903023, 37.919537, 32.779434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036071, -0.945266, -0.324300,
		-0.668601, -0.218359, 0.710839,
		-0.742746, 0.242468, -0.624130,
		41.680199, 37.992275, 32.592194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.613197, 37.739769, 33.372837>,  <42.200123, 37.822548, 33.029087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.613197, 37.739769, 33.372837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.460644, 37.831406, 33.014606>,  <41.369110, 37.886387, 32.799667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.460644, 37.831406, 33.014606>,  <41.613197, 37.739769, 33.372837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.460644, 37.831406, 33.014606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280206, -0.894576, -0.348163,
		-0.880924, -0.383731, 0.276987,
		-0.381388, 0.229092, -0.895578,
		41.346226, 37.900135, 32.745934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.486095, 37.152016, 33.154018>,  <41.613197, 37.739769, 33.372837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.486095, 37.152016, 33.154018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.401867, 37.355461, 32.820076>,  <41.351330, 37.477528, 32.619713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.401867, 37.355461, 32.820076>,  <41.486095, 37.152016, 33.154018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.401867, 37.355461, 32.820076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051220, -0.858566, -0.510138,
		-0.976237, -0.064657, 0.206836,
		-0.210567, 0.508609, -0.834852,
		41.338696, 37.508045, 32.569622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.930122, 36.900238, 32.857830>,  <41.486095, 37.152016, 33.154018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.930122, 36.900238, 32.857830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.137409, 37.059559, 32.555096>,  <41.261784, 37.155151, 32.373455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.137409, 37.059559, 32.555096>,  <40.930122, 36.900238, 32.857830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.137409, 37.059559, 32.555096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074740, -0.902640, -0.423858,
		-0.851975, 0.163086, -0.497535,
		0.518220, 0.398302, -0.756838,
		41.292873, 37.179050, 32.328045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.639408, 36.565060, 32.279488>,  <40.930122, 36.900238, 32.857830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.639408, 36.565060, 32.279488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.001114, 36.682472, 32.155457>,  <41.218136, 36.752918, 32.081039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.001114, 36.682472, 32.155457>,  <40.639408, 36.565060, 32.279488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.001114, 36.682472, 32.155457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096868, -0.848319, -0.520549,
		-0.415839, 0.440677, -0.795538,
		0.904265, 0.293527, -0.310076,
		41.272392, 36.770531, 32.062435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.652676, 36.447685, 31.519680>,  <40.639408, 36.565060, 32.279488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.652676, 36.447685, 31.519680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.999943, 36.436817, 31.717890>,  <41.208302, 36.430294, 31.836817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.999943, 36.436817, 31.717890>,  <40.652676, 36.447685, 31.519680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.999943, 36.436817, 31.717890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188994, -0.905156, -0.380754,
		0.458874, 0.424210, -0.780692,
		0.868168, -0.027172, 0.495526,
		41.260395, 36.428665, 31.866547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.338196, 36.392521, 31.076464>,  <40.652676, 36.447685, 31.519680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.338196, 36.392521, 31.076464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.342903, 36.190094, 31.421429>,  <41.345730, 36.068638, 31.628408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.342903, 36.190094, 31.421429>,  <41.338196, 36.392521, 31.076464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.342903, 36.190094, 31.421429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085582, -0.859818, -0.503378,
		0.996262, -0.067882, -0.053431,
		0.011770, -0.506069, 0.862413,
		41.346436, 36.038273, 31.680153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.615963, 35.719433, 30.984850>,  <41.338196, 36.392521, 31.076464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.615963, 35.719433, 30.984850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.396564, 35.693153, 31.318275>,  <41.264923, 35.677383, 31.518332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.396564, 35.693153, 31.318275>,  <41.615963, 35.719433, 30.984850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.396564, 35.693153, 31.318275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281143, -0.924375, -0.257855,
		0.787469, -0.375785, 0.488548,
		-0.548500, -0.065701, 0.833565,
		41.232014, 35.673443, 31.568346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.904301, 35.295578, 31.541300>,  <41.615963, 35.719433, 30.984850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.904301, 35.295578, 31.541300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.505123, 35.304806, 31.517406>,  <41.265617, 35.310345, 31.503071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.505123, 35.304806, 31.517406>,  <41.904301, 35.295578, 31.541300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.505123, 35.304806, 31.517406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009123, -0.974545, -0.224005,
		-0.063381, -0.223000, 0.972756,
		-0.997948, 0.023072, -0.059733,
		41.205738, 35.311726, 31.499487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.480190, 35.176758, 32.008896>,  <41.904301, 35.295578, 31.541300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.480190, 35.176758, 32.008896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.454365, 34.856194, 32.246746>,  <42.438869, 34.663857, 32.389454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.454365, 34.856194, 32.246746>,  <42.480190, 35.176758, 32.008896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.454365, 34.856194, 32.246746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.889517, -0.316301, -0.329718,
		0.452318, 0.507640, 0.733287,
		-0.064561, -0.801409, 0.594623,
		42.434998, 34.615772, 32.425133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.165382, 35.165382, 32.268749>,  <42.480190, 35.176758, 32.008896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.165382, 35.165382, 32.268749> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.988983, 34.808140, 32.304279>,  <42.883144, 34.593796, 32.325596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.988983, 34.808140, 32.304279>,  <43.165382, 35.165382, 32.268749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.988983, 34.808140, 32.304279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.856090, -0.448294, -0.257181,
		0.269508, -0.037375, 0.962273,
		-0.440993, -0.893104, 0.088823,
		42.856686, 34.540207, 32.330925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.597618, 34.687294, 32.646542>,  <43.165382, 35.165382, 32.268749>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.597618, 34.687294, 32.646542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.355618, 34.496735, 32.391350>,  <43.210415, 34.382401, 32.238235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.355618, 34.496735, 32.391350>,  <43.597618, 34.687294, 32.646542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.355618, 34.496735, 32.391350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.795772, -0.334856, -0.504598,
		0.026759, -0.812968, 0.581693,
		-0.605005, -0.476398, -0.637976,
		43.174114, 34.353817, 32.199955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.850487, 33.964832, 32.608311>,  <43.597618, 34.687294, 32.646542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.850487, 33.964832, 32.608311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.654675, 34.082710, 32.280037>,  <43.537189, 34.153435, 32.083073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.654675, 34.082710, 32.280037>,  <43.850487, 33.964832, 32.608311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.654675, 34.082710, 32.280037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.810984, -0.191971, -0.552677,
		-0.320416, -0.936111, -0.145015,
		-0.489528, 0.294691, -0.820682,
		43.507816, 34.171116, 32.033833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.406445, 33.841824, 33.235703>,  <43.850487, 33.964832, 32.608311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.406445, 33.841824, 33.235703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.800869, 33.835781, 33.169434>,  <44.037525, 33.832157, 33.129673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.800869, 33.835781, 33.169434>,  <43.406445, 33.841824, 33.235703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.800869, 33.835781, 33.169434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055116, -0.969290, -0.239665,
		-0.156966, 0.245456, -0.956615,
		0.986065, -0.015105, -0.165674,
		44.096687, 33.831249, 33.119732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.350456, 34.565540, 33.309277>,  <43.406445, 33.841824, 33.235703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.350456, 34.565540, 33.309277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.338936, 34.404427, 33.675213>,  <43.332024, 34.307758, 33.894775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.338936, 34.404427, 33.675213>,  <43.350456, 34.565540, 33.309277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.338936, 34.404427, 33.675213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124371, 0.906665, 0.403102,
		-0.991818, 0.125389, 0.023983,
		-0.028800, -0.402786, 0.914841,
		43.330296, 34.283592, 33.949665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.886852, 34.946381, 33.640511>,  <43.350456, 34.565540, 33.309277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.886852, 34.946381, 33.640511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.139957, 34.782539, 33.903366>,  <43.291821, 34.684235, 34.061081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.139957, 34.782539, 33.903366>,  <42.886852, 34.946381, 33.640511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.139957, 34.782539, 33.903366> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082600, 0.808093, 0.583235,
		-0.769927, -0.423330, 0.477498,
		0.632763, -0.409607, 0.657140,
		43.329788, 34.659657, 34.100510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.644138, 35.106350, 34.413570>,  <42.886852, 34.946381, 33.640511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.644138, 35.106350, 34.413570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.036808, 35.030663, 34.404568>,  <43.272411, 34.985252, 34.399166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.036808, 35.030663, 34.404568>,  <42.644138, 35.106350, 34.413570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.036808, 35.030663, 34.404568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167820, 0.802606, 0.572416,
		-0.090249, -0.565705, 0.819654,
		0.981678, -0.189214, -0.022503,
		43.331310, 34.973900, 34.397816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.784912, 34.419571, 34.118145>,  <42.644138, 35.106350, 34.413570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.784912, 34.419571, 34.118145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.798084, 34.134644, 33.837711>,  <42.805988, 33.963688, 33.669453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.798084, 34.134644, 33.837711>,  <42.784912, 34.419571, 34.118145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.798084, 34.134644, 33.837711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295649, -0.677012, 0.673978,
		-0.954729, 0.185080, -0.232890,
		0.032930, -0.712320, -0.701082,
		42.807964, 33.920948, 33.627388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.302113, 33.730484, 34.233932>,  <42.784912, 34.419571, 34.118145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.302113, 33.730484, 34.233932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.475445, 33.600967, 33.897511>,  <42.579445, 33.523258, 33.695656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.475445, 33.600967, 33.897511>,  <42.302113, 33.730484, 34.233932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.475445, 33.600967, 33.897511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.776615, -0.339341, 0.530770,
		-0.457267, -0.883178, 0.104417,
		0.433332, -0.323795, -0.841059,
		42.605446, 33.503830, 33.645191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.549061, 33.592297, 34.994209>,  <42.302113, 33.730484, 34.233932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.549061, 33.592297, 34.994209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.754940, 33.573845, 35.336662>,  <42.878468, 33.562775, 35.542133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.754940, 33.573845, 35.336662>,  <42.549061, 33.592297, 34.994209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.754940, 33.573845, 35.336662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571830, 0.762487, -0.302694,
		-0.638826, 0.645357, 0.418827,
		0.514696, -0.046129, 0.856131,
		42.909348, 33.560005, 35.593502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.634026, 34.230980, 35.222603>,  <42.549061, 33.592297, 34.994209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.634026, 34.230980, 35.222603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.949558, 34.034657, 35.370579>,  <43.138878, 33.916862, 35.459366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.949558, 34.034657, 35.370579>,  <42.634026, 34.230980, 35.222603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.949558, 34.034657, 35.370579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.595604, 0.758985, -0.263057,
		-0.151668, 0.427844, 0.891037,
		0.788830, -0.490807, 0.369939,
		43.186207, 33.887413, 35.481560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.169201, 34.724342, 35.140896>,  <42.634026, 34.230980, 35.222603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.169201, 34.724342, 35.140896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.374321, 34.418850, 35.297737>,  <43.497391, 34.235554, 35.391842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.374321, 34.418850, 35.297737>,  <43.169201, 34.724342, 35.140896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.374321, 34.418850, 35.297737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.857968, 0.472111, -0.202489,
		-0.030469, 0.440250, 0.897358,
		0.512798, -0.763735, 0.392105,
		43.528160, 34.189728, 35.415367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.627598, 34.925133, 35.876137>,  <43.169201, 34.724342, 35.140896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.627598, 34.925133, 35.876137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.770306, 34.617825, 35.663540>,  <43.855930, 34.433441, 35.535984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.770306, 34.617825, 35.663540>,  <43.627598, 34.925133, 35.876137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.770306, 34.617825, 35.663540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.841914, 0.510972, -0.173461,
		0.404841, -0.385583, 0.829114,
		0.356770, -0.768267, -0.531490,
		43.877338, 34.387344, 35.504093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.195286, 34.641953, 36.111160>,  <43.627598, 34.925133, 35.876137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.195286, 34.641953, 36.111160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.153339, 34.666061, 35.714096>,  <44.128174, 34.680527, 35.475857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.153339, 34.666061, 35.714096>,  <44.195286, 34.641953, 36.111160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.153339, 34.666061, 35.714096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.891993, 0.447043, -0.067086,
		0.439718, -0.892480, -0.100637,
		-0.104862, 0.060269, -0.992659,
		44.121880, 34.684143, 35.416298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.811340, 34.444782, 35.749920>,  <44.195286, 34.641953, 36.111160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.811340, 34.444782, 35.749920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.641468, 34.723633, 35.518867>,  <44.539543, 34.890942, 35.380238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.641468, 34.723633, 35.518867>,  <44.811340, 34.444782, 35.749920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.641468, 34.723633, 35.518867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.855375, 0.517995, -0.003734,
		0.296607, -0.495678, -0.816289,
		-0.424685, 0.697126, -0.577632,
		44.514061, 34.932770, 35.345577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.186779, 34.923557, 36.311909>,  <44.811340, 34.444782, 35.749920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.186779, 34.923557, 36.311909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.443230, 35.079926, 36.047745>,  <45.597099, 35.173744, 35.889248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.443230, 35.079926, 36.047745>,  <45.186779, 34.923557, 36.311909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.443230, 35.079926, 36.047745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.606513, 0.269162, 0.748127,
		0.470215, -0.880190, -0.064531,
		0.641124, 0.390919, -0.660411,
		45.635567, 35.197201, 35.849621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.901093, 34.626175, 36.409618>,  <45.186779, 34.923557, 36.311909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.901093, 34.626175, 36.409618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.912346, 35.007381, 36.288975>,  <45.919098, 35.236107, 36.216587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.912346, 35.007381, 36.288975>,  <45.901093, 34.626175, 36.409618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.912346, 35.007381, 36.288975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.614076, 0.221602, 0.757498,
		0.788745, -0.206522, -0.578991,
		0.028135, 0.953017, -0.301607,
		45.920788, 35.293285, 36.198494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.576912, 34.739143, 36.217659>,  <45.901093, 34.626175, 36.409618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.576912, 34.739143, 36.217659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.417213, 35.089642, 36.325584>,  <46.321392, 35.299938, 36.390339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.417213, 35.089642, 36.325584>,  <46.576912, 34.739143, 36.217659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.417213, 35.089642, 36.325584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.717711, 0.115574, 0.686683,
		0.570517, 0.467807, -0.675032,
		-0.399251, 0.876242, 0.269814,
		46.297440, 35.352512, 36.406528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.044918, 34.597923, 35.766426>,  <46.576912, 34.739143, 36.217659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.044918, 34.597923, 35.766426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.362465, 34.799114, 35.903130>,  <47.552994, 34.919827, 35.985153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.362465, 34.799114, 35.903130>,  <47.044918, 34.597923, 35.766426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.362465, 34.799114, 35.903130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239491, -0.775196, 0.584565,
		0.558950, -0.382217, -0.735857,
		0.793864, 0.502973, 0.341758,
		47.600624, 34.950005, 36.005657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.610641, 34.127792, 35.714127>,  <47.044918, 34.597923, 35.766426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.610641, 34.127792, 35.714127> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.608303, 34.391788, 36.014626>,  <47.606899, 34.550186, 36.194927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.608303, 34.391788, 36.014626>,  <47.610641, 34.127792, 35.714127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.608303, 34.391788, 36.014626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227043, -0.730766, 0.643763,
		0.973867, 0.174329, -0.145575,
		-0.005845, 0.659992, 0.751250,
		47.606548, 34.589787, 36.240002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.831573, 34.758701, 35.372467>,  <47.610641, 34.127792, 35.714127>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.831573, 34.758701, 35.372467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.867111, 34.980976, 35.041813>,  <47.888435, 35.114342, 34.843422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.867111, 34.980976, 35.041813>,  <47.831573, 34.758701, 35.372467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.867111, 34.980976, 35.041813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.833288, -0.413178, -0.367309,
		-0.545654, 0.721457, 0.426335,
		0.088845, 0.555683, -0.826633,
		47.893764, 35.147682, 34.793823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<36.469090, 35.616680, 19.538532> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.078514, 35.531010, 19.549118>,  <35.844170, 35.479607, 19.555470>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.078514, 35.531010, 19.549118>,  <36.469090, 35.616680, 19.538532>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.078514, 35.531010, 19.549118> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024479, 0.011913, 0.999629,
		-0.214408, 0.976723, -0.006389,
		-0.976437, -0.214172, 0.026464,
		35.785583, 35.466759, 19.557056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.141426, 36.236195, 19.973442>,  <36.469090, 35.616680, 19.538532>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.141426, 36.236195, 19.973442> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.923866, 35.900585, 19.979280>,  <35.793331, 35.699219, 19.982782>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.923866, 35.900585, 19.979280>,  <36.141426, 36.236195, 19.973442>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.923866, 35.900585, 19.979280> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004331, 0.014586, 0.999884,
		-0.839139, 0.543899, -0.004300,
		-0.543899, -0.839024, 0.014595,
		35.760696, 35.648876, 19.983660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.040504, 36.212303, 20.682362>,  <36.141426, 36.236195, 19.973442>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.040504, 36.212303, 20.682362> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.855999, 35.880939, 20.555256>,  <35.745296, 35.682121, 20.478992>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.855999, 35.880939, 20.555256>,  <36.040504, 36.212303, 20.682362>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.855999, 35.880939, 20.555256> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233879, -0.231949, 0.944193,
		-0.855883, 0.509840, -0.086758,
		-0.461263, -0.828410, -0.317762,
		35.717621, 35.632416, 20.459927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.407581, 36.259167, 21.083542>,  <36.040504, 36.212303, 20.682362>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.407581, 36.259167, 21.083542> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.516571, 35.888824, 20.978809>,  <35.581966, 35.666618, 20.915970>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.516571, 35.888824, 20.978809>,  <35.407581, 36.259167, 21.083542>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.516571, 35.888824, 20.978809> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091442, -0.295813, 0.950859,
		-0.957807, -0.235144, -0.165264,
		0.272476, -0.925852, -0.261830,
		35.598312, 35.611069, 20.900261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.037384, 35.779293, 21.626085>,  <35.407581, 36.259167, 21.083542>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.037384, 35.779293, 21.626085> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.338562, 35.568314, 21.468668>,  <35.519268, 35.441727, 21.374218>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.338562, 35.568314, 21.468668>,  <35.037384, 35.779293, 21.626085>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.338562, 35.568314, 21.468668> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334986, -0.207549, 0.919080,
		-0.566447, -0.823846, 0.020416,
		0.752943, -0.527449, -0.393542,
		35.564445, 35.410080, 21.350605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.147808, 35.217743, 22.088102>,  <35.037384, 35.779293, 21.626085>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.147808, 35.217743, 22.088102> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.493561, 35.247524, 21.889185>,  <35.701012, 35.265392, 21.769835>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.493561, 35.247524, 21.889185>,  <35.147808, 35.217743, 22.088102>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.493561, 35.247524, 21.889185> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502820, -0.120583, 0.855939,
		0.003762, -0.989908, -0.141666,
		0.864383, 0.074452, -0.497292,
		35.752876, 35.269859, 21.739998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.533424, 34.640526, 22.253462>,  <35.147808, 35.217743, 22.088102>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.533424, 34.640526, 22.253462> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.812347, 34.892139, 22.116013>,  <35.979702, 35.043106, 22.033543>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.812347, 34.892139, 22.116013>,  <35.533424, 34.640526, 22.253462>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.812347, 34.892139, 22.116013> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.587532, -0.227010, 0.776706,
		0.410569, -0.743493, -0.527874,
		0.697308, 0.629034, -0.343623,
		36.021542, 35.080849, 22.012926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.074856, 34.346279, 22.631199>,  <35.533424, 34.640526, 22.253462>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.074856, 34.346279, 22.631199> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.202518, 34.699036, 22.492403>,  <36.279118, 34.910690, 22.409126>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.202518, 34.699036, 22.492403>,  <36.074856, 34.346279, 22.631199>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.202518, 34.699036, 22.492403> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.606067, 0.091550, 0.790127,
		0.728576, -0.462473, -0.505269,
		0.319155, 0.881894, -0.346990,
		36.298264, 34.963604, 22.388306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.835510, 34.325687, 22.610249>,  <36.074856, 34.346279, 22.631199>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.835510, 34.325687, 22.610249> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.700085, 34.700859, 22.640322>,  <36.618828, 34.925964, 22.658365>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.700085, 34.700859, 22.640322>,  <36.835510, 34.325687, 22.610249>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.700085, 34.700859, 22.640322> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517109, 0.118717, 0.847646,
		0.786111, 0.325863, -0.525208,
		-0.338567, 0.937934, 0.075182,
		36.598515, 34.982239, 22.662876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.371632, 34.496101, 23.044725>,  <36.835510, 34.325687, 22.610249>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.371632, 34.496101, 23.044725> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.107044, 34.796089, 23.044048>,  <36.948292, 34.976082, 23.043642>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.107044, 34.796089, 23.044048>,  <37.371632, 34.496101, 23.044725>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.107044, 34.796089, 23.044048> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266717, 0.237350, 0.934092,
		0.700944, 0.617420, -0.357029,
		-0.661467, 0.749972, -0.001693,
		36.908604, 35.021080, 23.043541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.777760, 35.115665, 23.205305>,  <37.371632, 34.496101, 23.044725>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.777760, 35.115665, 23.205305> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.396030, 35.156528, 23.317610>,  <37.166992, 35.181046, 23.384993>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.396030, 35.156528, 23.317610>,  <37.777760, 35.115665, 23.205305>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.396030, 35.156528, 23.317610> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298694, 0.347037, 0.889015,
		-0.006616, 0.932271, -0.361699,
		-0.954326, 0.102156, 0.280760,
		37.109734, 35.187176, 23.401838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.809151, 35.717407, 23.610916>,  <37.777760, 35.115665, 23.205305>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.809151, 35.717407, 23.610916> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.430447, 35.617855, 23.692600>,  <37.203224, 35.558125, 23.741610>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.430447, 35.617855, 23.692600>,  <37.809151, 35.717407, 23.610916>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.430447, 35.617855, 23.692600> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059318, 0.488593, 0.870493,
		-0.316426, 0.836262, -0.447818,
		-0.946761, -0.248883, 0.204209,
		37.146420, 35.543190, 23.753862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.453072, 36.339573, 23.681437>,  <37.809151, 35.717407, 23.610916>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.453072, 36.339573, 23.681437> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.280323, 36.045807, 23.890863>,  <37.176674, 35.869549, 24.016520>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.280323, 36.045807, 23.890863>,  <37.453072, 36.339573, 23.681437>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.280323, 36.045807, 23.890863> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068211, 0.552236, 0.830893,
		-0.899352, 0.394552, -0.188399,
		-0.431871, -0.734415, 0.523567,
		37.150761, 35.825481, 24.047934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.028698, 36.625317, 24.222517>,  <37.453072, 36.339573, 23.681437>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.028698, 36.625317, 24.222517> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.070549, 36.262104, 24.384766>,  <37.095661, 36.044174, 24.482115>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.070549, 36.262104, 24.384766>,  <37.028698, 36.625317, 24.222517>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.070549, 36.262104, 24.384766> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048740, 0.412050, 0.909856,
		-0.993316, -0.075425, 0.087369,
		0.104627, -0.908034, 0.405620,
		37.101936, 35.989693, 24.506453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.616817, 36.685410, 24.877478>,  <37.028698, 36.625317, 24.222517>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.616817, 36.685410, 24.877478> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.825855, 36.347725, 24.925158>,  <36.951279, 36.145115, 24.953766>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.825855, 36.347725, 24.925158>,  <36.616817, 36.685410, 24.877478>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.825855, 36.347725, 24.925158> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275745, 0.299657, 0.913329,
		-0.806759, -0.444431, 0.389385,
		0.522594, -0.844208, 0.119201,
		36.982632, 36.094463, 24.960918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.377327, 36.397316, 25.505651>,  <36.616817, 36.685410, 24.877478>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.377327, 36.397316, 25.505651> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.728287, 36.212654, 25.453444>,  <36.938862, 36.101856, 25.422119>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.728287, 36.212654, 25.453444>,  <36.377327, 36.397316, 25.505651>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.728287, 36.212654, 25.453444> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225338, 0.156391, 0.961647,
		-0.423541, -0.873163, 0.241247,
		0.877403, -0.461659, -0.130518,
		36.991508, 36.074158, 25.414288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.386215, 35.917774, 26.072973>,  <36.377327, 36.397316, 25.505651>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.386215, 35.917774, 26.072973> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.767220, 35.948742, 25.955172>,  <36.995823, 35.967323, 25.884491>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.767220, 35.948742, 25.955172>,  <36.386215, 35.917774, 26.072973>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.767220, 35.948742, 25.955172> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267639, 0.248444, 0.930938,
		0.145241, -0.965548, 0.215924,
		0.952510, 0.077421, -0.294502,
		37.052971, 35.971970, 25.866821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.779671, 35.405525, 26.478529>,  <36.386215, 35.917774, 26.072973>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.779671, 35.405525, 26.478529> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.982578, 35.724701, 26.348312>,  <37.104324, 35.916206, 26.270184>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.982578, 35.724701, 26.348312>,  <36.779671, 35.405525, 26.478529>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.982578, 35.724701, 26.348312> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247392, 0.227018, 0.941945,
		0.825514, -0.558357, -0.082243,
		0.507271, 0.797935, -0.325539,
		37.134758, 35.964081, 26.250650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.371075, 35.228001, 26.676062>,  <36.779671, 35.405525, 26.478529>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.371075, 35.228001, 26.676062> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.421791, 35.619381, 26.610867>,  <37.452221, 35.854210, 26.571749>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.421791, 35.619381, 26.610867>,  <37.371075, 35.228001, 26.676062>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.421791, 35.619381, 26.610867> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288762, 0.120790, 0.949751,
		0.948968, -0.167486, -0.267223,
		0.126792, 0.978447, -0.162990,
		37.459827, 35.912914, 26.561970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.039299, 35.422096, 26.893450>,  <37.371075, 35.228001, 26.676062>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.039299, 35.422096, 26.893450> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.822247, 35.757999, 26.885962>,  <37.692013, 35.959541, 26.881468>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.822247, 35.757999, 26.885962>,  <38.039299, 35.422096, 26.893450>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.822247, 35.757999, 26.885962> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166090, 0.129119, 0.977621,
		0.823385, 0.527380, -0.209540,
		-0.542633, 0.839761, -0.018723,
		37.659458, 36.009926, 26.880344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.519203, 35.877331, 27.208567>,  <38.039299, 35.422096, 26.893450>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.519203, 35.877331, 27.208567> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.172226, 36.076267, 27.214140>,  <37.964039, 36.195629, 27.217484>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.172226, 36.076267, 27.214140>,  <38.519203, 35.877331, 27.208567>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.172226, 36.076267, 27.214140> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138352, 0.214223, 0.966937,
		0.477909, 0.840692, -0.254635,
		-0.867445, 0.497338, 0.013933,
		37.911991, 36.225468, 27.218319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.123123, 36.412846, 27.411455>,  <38.519203, 35.877331, 27.208567>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.123123, 36.412846, 27.411455> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.468246, 36.446991, 27.610762>,  <39.675320, 36.467480, 27.730345>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.468246, 36.446991, 27.610762>,  <39.123123, 36.412846, 27.411455>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.468246, 36.446991, 27.610762> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490119, 0.100220, -0.865875,
		-0.123851, 0.991297, 0.044633,
		0.862812, 0.085364, 0.498266,
		39.727089, 36.472599, 27.760241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.365921, 37.146660, 27.215405>,  <39.123123, 36.412846, 27.411455>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.365921, 37.146660, 27.215405> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.646744, 36.880821, 27.317728>,  <39.815235, 36.721317, 27.379122>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.646744, 36.880821, 27.317728>,  <39.365921, 37.146660, 27.215405>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.646744, 36.880821, 27.317728> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430269, 0.109635, -0.896019,
		0.567442, 0.739119, 0.362923,
		0.702053, -0.664593, 0.255809,
		39.857361, 36.681442, 27.394470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.904408, 37.456398, 26.959166>,  <39.365921, 37.146660, 27.215405>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.904408, 37.456398, 26.959166> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.009087, 37.074837, 27.017927>,  <40.071896, 36.845901, 27.053185>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.009087, 37.074837, 27.017927>,  <39.904408, 37.456398, 26.959166>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.009087, 37.074837, 27.017927> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501912, 0.004497, -0.864907,
		0.824378, 0.300078, 0.479953,
		0.261698, -0.953904, 0.146905,
		40.087597, 36.788666, 27.061998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.492599, 37.318180, 26.500246>,  <39.904408, 37.456398, 26.959166>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.492599, 37.318180, 26.500246> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.407864, 36.938175, 26.591991>,  <40.357021, 36.710175, 26.647038>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.407864, 36.938175, 26.591991>,  <40.492599, 37.318180, 26.500246>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.407864, 36.938175, 26.591991> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378657, -0.296142, -0.876880,
		0.900968, -0.098910, 0.422463,
		-0.211841, -0.950009, 0.229362,
		40.344311, 36.653172, 26.660799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.138645, 36.934898, 26.322269>,  <40.492599, 37.318180, 26.500246>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.138645, 36.934898, 26.322269> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.793884, 36.732124, 26.317686>,  <40.587029, 36.610458, 26.314936>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.793884, 36.732124, 26.317686>,  <41.138645, 36.934898, 26.322269>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.793884, 36.732124, 26.317686> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129204, -0.197715, -0.971707,
		0.490330, -0.839001, 0.235910,
		-0.861907, -0.506938, -0.011457,
		40.535313, 36.580044, 26.314249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.337765, 36.392876, 25.792919>,  <41.138645, 36.934898, 26.322269>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.337765, 36.392876, 25.792919> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.942867, 36.358170, 25.846306>,  <40.705929, 36.337345, 25.878338>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.942867, 36.358170, 25.846306>,  <41.337765, 36.392876, 25.792919>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.942867, 36.358170, 25.846306> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104193, -0.281681, -0.953834,
		0.120352, -0.955577, 0.269049,
		-0.987248, -0.086762, 0.133466,
		40.646694, 36.332142, 25.886345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.233204, 35.686771, 25.640703>,  <41.337765, 36.392876, 25.792919>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.233204, 35.686771, 25.640703> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.893913, 35.889977, 25.580795>,  <40.690338, 36.011902, 25.544849>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.893913, 35.889977, 25.580795>,  <41.233204, 35.686771, 25.640703>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.893913, 35.889977, 25.580795> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062932, -0.377452, -0.923888,
		-0.525883, -0.774240, 0.352135,
		-0.848225, 0.508018, -0.149771,
		40.639446, 36.042381, 25.535864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.650349, 35.241886, 25.410780>,  <41.233204, 35.686771, 25.640703>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.650349, 35.241886, 25.410780> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.514362, 35.597755, 25.288857>,  <40.432770, 35.811275, 25.215702>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.514362, 35.597755, 25.288857>,  <40.650349, 35.241886, 25.410780>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.514362, 35.597755, 25.288857> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179454, -0.379530, -0.907609,
		-0.923156, -0.253860, 0.288683,
		-0.339969, 0.889670, -0.304809,
		40.412373, 35.864655, 25.197414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.143158, 35.026867, 25.074747>,  <40.650349, 35.241886, 25.410780>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.143158, 35.026867, 25.074747> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.202446, 35.405960, 24.961725>,  <40.238018, 35.633415, 24.893913>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.202446, 35.405960, 24.961725>,  <40.143158, 35.026867, 25.074747>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.202446, 35.405960, 24.961725> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260205, -0.238270, -0.935693,
		-0.954110, 0.212207, 0.211289,
		0.148217, 0.947732, -0.282553,
		40.246910, 35.690281, 24.876959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.472614, 35.204620, 24.879805>,  <40.143158, 35.026867, 25.074747>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.472614, 35.204620, 24.879805> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.757370, 35.413975, 24.692497>,  <39.928223, 35.539589, 24.580112>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.757370, 35.413975, 24.692497>,  <39.472614, 35.204620, 24.879805>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.757370, 35.413975, 24.692497> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352348, -0.310600, -0.882824,
		-0.607505, 0.793468, -0.036698,
		0.711891, 0.523389, -0.468268,
		39.970936, 35.570992, 24.552017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.046234, 35.625031, 24.366724>,  <39.472614, 35.204620, 24.879805>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.046234, 35.625031, 24.366724> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.426727, 35.607700, 24.244562>,  <39.655025, 35.597301, 24.171265>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.426727, 35.607700, 24.244562>,  <39.046234, 35.625031, 24.366724>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.426727, 35.607700, 24.244562> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307747, -0.065919, -0.949182,
		0.020994, 0.996884, -0.076039,
		0.951237, -0.043328, -0.305404,
		39.712097, 35.594704, 24.152941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.069153, 36.080128, 23.863407>,  <39.046234, 35.625031, 24.366724>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.069153, 36.080128, 23.863407> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.399742, 35.867123, 23.790333>,  <39.598095, 35.739319, 23.746489>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.399742, 35.867123, 23.790333>,  <39.069153, 36.080128, 23.863407>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.399742, 35.867123, 23.790333> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195141, 0.033411, -0.980206,
		0.528073, 0.845764, -0.076301,
		0.826474, -0.532510, -0.182687,
		39.647686, 35.707371, 23.735527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.401714, 36.344055, 23.219778>,  <39.069153, 36.080128, 23.863407>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.401714, 36.344055, 23.219778> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.580536, 35.987270, 23.246763>,  <39.687828, 35.773201, 23.262955>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.580536, 35.987270, 23.246763>,  <39.401714, 36.344055, 23.219778>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.580536, 35.987270, 23.246763> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001107, -0.075971, -0.997109,
		0.894507, 0.445686, -0.034950,
		0.447053, -0.891960, 0.067463,
		39.714653, 35.719681, 23.267002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.950096, 36.369869, 22.813568>,  <39.401714, 36.344055, 23.219778>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.950096, 36.369869, 22.813568> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.841728, 35.988106, 22.863699>,  <39.776707, 35.759048, 22.893778>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.841728, 35.988106, 22.863699>,  <39.950096, 36.369869, 22.813568>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.841728, 35.988106, 22.863699> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204999, -0.070004, -0.976255,
		0.940521, -0.290176, -0.176688,
		-0.270917, -0.954409, 0.125326,
		39.760452, 35.701782, 22.901297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.384056, 36.045883, 22.329248>,  <39.950096, 36.369869, 22.813568>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.384056, 36.045883, 22.329248> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.067451, 35.824009, 22.431879>,  <39.877487, 35.690884, 22.493458>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.067451, 35.824009, 22.431879>,  <40.384056, 36.045883, 22.329248>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.067451, 35.824009, 22.431879> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204915, -0.154657, -0.966484,
		0.575773, -0.817563, 0.008751,
		-0.791514, -0.554682, 0.256578,
		39.829998, 35.657604, 22.508852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.278511, 35.599998, 21.767790>,  <40.384056, 36.045883, 22.329248>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.278511, 35.599998, 21.767790> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.926617, 35.510395, 21.935549>,  <39.715481, 35.456635, 22.036203>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.926617, 35.510395, 21.935549>,  <40.278511, 35.599998, 21.767790>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.926617, 35.510395, 21.935549> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407044, -0.101063, -0.907800,
		0.245738, -0.969334, -0.002272,
		-0.879732, -0.224006, 0.419397,
		39.662697, 35.443192, 22.061367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.017166, 34.946091, 21.391916>,  <40.278511, 35.599998, 21.767790>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.017166, 34.946091, 21.391916> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.724472, 35.170692, 21.546459>,  <39.548855, 35.305454, 21.639185>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.724472, 35.170692, 21.546459>,  <40.017166, 34.946091, 21.391916>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.724472, 35.170692, 21.546459> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486534, -0.033330, -0.873026,
		-0.477335, -0.826799, 0.297582,
		-0.731735, 0.561509, 0.386356,
		39.504951, 35.339146, 21.662367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.480179, 34.636177, 21.180859>,  <40.017166, 34.946091, 21.391916>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.480179, 34.636177, 21.180859> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.339775, 34.998997, 21.273851>,  <39.255531, 35.216690, 21.329647>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.339775, 34.998997, 21.273851>,  <39.480179, 34.636177, 21.180859>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.339775, 34.998997, 21.273851> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.549570, 0.001457, -0.835446,
		-0.758131, -0.421018, 0.497977,
		-0.351013, 0.907051, 0.232484,
		39.234470, 35.271111, 21.343597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.837639, 34.611038, 20.914066>,  <39.480179, 34.636177, 21.180859>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.837639, 34.611038, 20.914066> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.883789, 35.001511, 20.987562>,  <38.911480, 35.235794, 21.031660>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.883789, 35.001511, 20.987562>,  <38.837639, 34.611038, 20.914066>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.883789, 35.001511, 20.987562> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.625674, 0.215090, -0.749846,
		-0.771505, -0.028446, 0.635587,
		0.115378, 0.976180, 0.183741,
		38.918404, 35.294365, 21.042685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<38.166725, 34.830387, 20.784143> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.417358, 35.141174, 20.759766>,  <38.567738, 35.327648, 20.745138>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.417358, 35.141174, 20.759766>,  <38.166725, 34.830387, 20.784143>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.417358, 35.141174, 20.759766> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456440, 0.302455, -0.836770,
		-0.631712, 0.552121, 0.544153,
		0.626580, 0.776971, -0.060946,
		38.605331, 35.374264, 20.741482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.679272, 35.510941, 20.833897>,  <38.166725, 34.830387, 20.784143>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.679272, 35.510941, 20.833897> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.022915, 35.583549, 20.642490>,  <38.229103, 35.627113, 20.527645>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.022915, 35.583549, 20.642490>,  <37.679272, 35.510941, 20.833897>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.022915, 35.583549, 20.642490> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509500, 0.214975, -0.833184,
		-0.048372, 0.959601, 0.277173,
		0.859110, 0.181523, -0.478518,
		38.280647, 35.638008, 20.498936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.472416, 35.990486, 20.331387>,  <37.679272, 35.510941, 20.833897>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.472416, 35.990486, 20.331387> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.838375, 35.879074, 20.214500>,  <38.057949, 35.812225, 20.144369>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.838375, 35.879074, 20.214500>,  <37.472416, 35.990486, 20.331387>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.838375, 35.879074, 20.214500> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258347, 0.152255, -0.953979,
		0.310202, 0.948283, 0.067340,
		0.914894, -0.278529, -0.292216,
		38.112843, 35.795517, 20.126835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.585144, 36.470631, 19.871590>,  <37.472416, 35.990486, 20.331387>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.585144, 36.470631, 19.871590> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.833023, 36.167439, 19.790163>,  <37.981750, 35.985523, 19.741306>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.833023, 36.167439, 19.790163>,  <37.585144, 36.470631, 19.871590>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.833023, 36.167439, 19.790163> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271138, 0.036642, -0.961842,
		0.736516, 0.651249, -0.182810,
		0.619700, -0.757979, -0.203566,
		38.018932, 35.940044, 19.729094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.925102, 36.733822, 19.434879>,  <37.585144, 36.470631, 19.871590>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.925102, 36.733822, 19.434879> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.954128, 36.339417, 19.374868>,  <37.971542, 36.102772, 19.338861>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.954128, 36.339417, 19.374868>,  <37.925102, 36.733822, 19.434879>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.954128, 36.339417, 19.374868> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097579, 0.142684, -0.984946,
		0.992579, 0.086113, -0.085861,
		0.072566, -0.986015, -0.150028,
		37.975899, 36.043613, 19.329861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.467255, 36.599709, 18.986572>,  <37.925102, 36.733822, 19.434879>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.467255, 36.599709, 18.986572> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.242455, 36.269398, 18.967628>,  <38.107574, 36.071213, 18.956263>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.242455, 36.269398, 18.967628>,  <38.467255, 36.599709, 18.986572>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.242455, 36.269398, 18.967628> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049147, 0.090492, -0.994684,
		0.825674, -0.556688, -0.091441,
		-0.562003, -0.825778, -0.047358,
		38.073853, 36.021664, 18.953421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.636261, 36.394089, 18.387457>,  <38.467255, 36.599709, 18.986572>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.636261, 36.394089, 18.387457> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.298969, 36.189262, 18.452885>,  <38.096596, 36.066364, 18.492142>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.298969, 36.189262, 18.452885>,  <38.636261, 36.394089, 18.387457>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.298969, 36.189262, 18.452885> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224142, 0.058351, -0.972808,
		0.488601, -0.856960, -0.163979,
		-0.843226, -0.512069, 0.163570,
		38.046001, 36.035641, 18.501955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.665745, 35.841873, 17.966654>,  <38.636261, 36.394089, 18.387457>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.665745, 35.841873, 17.966654> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.283623, 35.913651, 18.060623>,  <38.054348, 35.956718, 18.117004>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.283623, 35.913651, 18.060623>,  <38.665745, 35.841873, 17.966654>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.283623, 35.913651, 18.060623> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225955, 0.069179, -0.971678,
		-0.190614, -0.981333, -0.025541,
		-0.955307, 0.179444, 0.234924,
		37.997032, 35.967484, 18.131100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.248703, 35.345043, 17.584080>,  <38.665745, 35.841873, 17.966654>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.248703, 35.345043, 17.584080> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.003201, 35.651817, 17.659037>,  <37.855900, 35.835880, 17.704010>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.003201, 35.651817, 17.659037>,  <38.248703, 35.345043, 17.584080>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.003201, 35.651817, 17.659037> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097645, 0.161792, -0.981982,
		-0.783433, -0.620997, -0.024414,
		-0.613758, 0.766933, 0.187390,
		37.819073, 35.881897, 17.715254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.772087, 35.161209, 17.056709>,  <38.248703, 35.345043, 17.584080>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.772087, 35.161209, 17.056709> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.686684, 35.535912, 17.167637>,  <37.635441, 35.760731, 17.234194>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.686684, 35.535912, 17.167637>,  <37.772087, 35.161209, 17.056709>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.686684, 35.535912, 17.167637> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038704, 0.275531, -0.960513,
		-0.976175, -0.215810, -0.022571,
		-0.213507, 0.936755, 0.277319,
		37.622631, 35.816936, 17.250832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.160046, 35.315674, 16.731298>,  <37.772087, 35.161209, 17.056709>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.160046, 35.315674, 16.731298> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.372082, 35.652054, 16.774786>,  <37.499302, 35.853882, 16.800879>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.372082, 35.652054, 16.774786>,  <37.160046, 35.315674, 16.731298>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.372082, 35.652054, 16.774786> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273814, 0.291107, -0.916669,
		-0.802518, 0.456144, 0.384575,
		0.530086, 0.840945, 0.108720,
		37.531109, 35.904339, 16.807402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.741444, 35.803532, 16.358395>,  <37.160046, 35.315674, 16.731298>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.741444, 35.803532, 16.358395> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.084702, 35.991737, 16.440575>,  <37.290657, 36.104660, 16.489883>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.084702, 35.991737, 16.440575>,  <36.741444, 35.803532, 16.358395>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.084702, 35.991737, 16.440575> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091816, 0.534355, -0.840259,
		-0.505138, 0.702197, 0.501752,
		0.858141, 0.470516, 0.205450,
		37.342144, 36.132893, 16.502211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.687347, 36.597252, 16.195618>,  <36.741444, 35.803532, 16.358395>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.687347, 36.597252, 16.195618> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.077148, 36.507687, 16.201439>,  <37.311028, 36.453949, 16.204931>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.077148, 36.507687, 16.201439>,  <36.687347, 36.597252, 16.195618>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.077148, 36.507687, 16.201439> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148004, 0.592679, -0.791723,
		0.168653, 0.773689, 0.610706,
		0.974500, -0.223914, 0.014552,
		37.369499, 36.440514, 16.205805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.993786, 37.189396, 16.022367>,  <36.687347, 36.597252, 16.195618>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.993786, 37.189396, 16.022367> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.277557, 36.926048, 15.921768>,  <37.447823, 36.768040, 15.861408>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.277557, 36.926048, 15.921768>,  <36.993786, 37.189396, 16.022367>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.277557, 36.926048, 15.921768> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184436, 0.517847, -0.835355,
		0.680212, 0.546243, 0.488805,
		0.709433, -0.658372, -0.251499,
		37.490387, 36.728539, 15.846318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.547169, 37.570648, 15.916165>,  <36.993786, 37.189396, 16.022367>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.547169, 37.570648, 15.916165> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.606823, 37.250988, 15.683232>,  <37.642616, 37.059193, 15.543472>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.606823, 37.250988, 15.683232>,  <37.547169, 37.570648, 15.916165>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.606823, 37.250988, 15.683232> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400362, 0.587290, -0.703421,
		0.904139, -0.128236, 0.407539,
		0.149140, -0.799153, -0.582333,
		37.651566, 37.011242, 15.508533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.210739, 37.568962, 15.710211>,  <37.547169, 37.570648, 15.916165>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.210739, 37.568962, 15.710211> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.063526, 37.327606, 15.427233>,  <37.975197, 37.182793, 15.257446>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.063526, 37.327606, 15.427233>,  <38.210739, 37.568962, 15.710211>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.063526, 37.327606, 15.427233> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505131, 0.509033, -0.696942,
		0.780638, -0.613849, 0.117448,
		-0.368032, -0.603385, -0.707445,
		37.953117, 37.146591, 15.214999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.782619, 37.420414, 15.407385>,  <38.210739, 37.568962, 15.710211>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.782619, 37.420414, 15.407385> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.500420, 37.290768, 15.155285>,  <38.331100, 37.212978, 15.004025>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.500420, 37.290768, 15.155285>,  <38.782619, 37.420414, 15.407385>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.500420, 37.290768, 15.155285> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536920, 0.336010, -0.773830,
		0.462583, -0.884333, -0.063031,
		-0.705502, -0.324118, -0.630249,
		38.288769, 37.193531, 14.966210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.173985, 37.284035, 14.853436>,  <38.782619, 37.420414, 15.407385>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.173985, 37.284035, 14.853436> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.802845, 37.281475, 14.704278>,  <38.580162, 37.279938, 14.614783>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.802845, 37.281475, 14.704278>,  <39.173985, 37.284035, 14.853436>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.802845, 37.281475, 14.704278> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324316, 0.479835, -0.815216,
		0.184145, -0.877335, -0.443141,
		-0.927852, -0.006400, -0.372893,
		38.524490, 37.279556, 14.592410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.243183, 37.157360, 14.165887>,  <39.173985, 37.284035, 14.853436>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.243183, 37.157360, 14.165887> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.884796, 37.329571, 14.209512>,  <38.669765, 37.432899, 14.235687>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.884796, 37.329571, 14.209512>,  <39.243183, 37.157360, 14.165887>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.884796, 37.329571, 14.209512> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222939, 0.648362, -0.727960,
		-0.384120, -0.627911, -0.676890,
		-0.895963, 0.430528, 0.109063,
		38.616009, 37.458729, 14.242230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.002937, 37.413795, 13.598320>,  <39.243183, 37.157360, 14.165887>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.002937, 37.413795, 13.598320> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.749435, 37.661480, 13.783764>,  <38.597336, 37.810093, 13.895030>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.749435, 37.661480, 13.783764>,  <39.002937, 37.413795, 13.598320>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.749435, 37.661480, 13.783764> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285307, 0.744197, -0.603962,
		-0.718999, -0.250490, -0.648302,
		-0.633751, 0.619213, 0.463610,
		38.559311, 37.847244, 13.922847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.823940, 37.792267, 13.108930>,  <39.002937, 37.413795, 13.598320>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.823940, 37.792267, 13.108930> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.704037, 38.027588, 13.409340>,  <38.632095, 38.168781, 13.589586>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.704037, 38.027588, 13.409340>,  <38.823940, 37.792267, 13.108930>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.704037, 38.027588, 13.409340> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197363, 0.808437, -0.554506,
		-0.933378, -0.017991, -0.358444,
		-0.299756, 0.588307, 0.751027,
		38.614109, 38.204079, 13.634648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.309402, 38.306393, 12.761096>,  <38.823940, 37.792267, 13.108930>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.309402, 38.306393, 12.761096> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.464214, 38.438049, 13.105624>,  <38.557102, 38.517044, 13.312342>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.464214, 38.438049, 13.105624>,  <38.309402, 38.306393, 12.761096>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.464214, 38.438049, 13.105624> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327902, 0.823927, -0.462195,
		-0.861795, 0.461311, 0.210955,
		0.387027, 0.329145, 0.861321,
		38.580322, 38.536793, 13.364020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.951138, 38.882191, 12.892692>,  <38.309402, 38.306393, 12.761096>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.951138, 38.882191, 12.892692> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.321873, 38.844711, 13.038121>,  <38.544315, 38.822224, 13.125379>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.321873, 38.844711, 13.038121>,  <37.951138, 38.882191, 12.892692>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.321873, 38.844711, 13.038121> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292601, 0.787055, -0.543073,
		-0.235265, 0.609724, 0.756893,
		0.926841, -0.093702, 0.363573,
		38.599926, 38.816601, 13.147193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.284061, 39.126980, 12.752563>,  <37.951138, 38.882191, 12.892692>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.284061, 39.126980, 12.752563> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.989056, 39.311943, 12.555684>,  <36.812054, 39.422920, 12.437556>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.989056, 39.311943, 12.555684>,  <37.284061, 39.126980, 12.752563>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.989056, 39.311943, 12.555684> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.674165, -0.461227, 0.576863,
		0.039730, 0.757266, 0.651897,
		-0.737511, 0.462405, -0.492197,
		36.767803, 39.450665, 12.408025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.827148, 39.469406, 13.190149>,  <37.284061, 39.126980, 12.752563>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.827148, 39.469406, 13.190149> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.581501, 39.402531, 12.881629>,  <36.434113, 39.362404, 12.696517>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.581501, 39.402531, 12.881629>,  <36.827148, 39.469406, 13.190149>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.581501, 39.402531, 12.881629> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.735856, -0.231941, 0.636176,
		-0.285259, 0.958254, 0.019410,
		-0.614120, -0.167192, -0.771300,
		36.397266, 39.352371, 12.650239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.183559, 39.657330, 13.501164>,  <36.827148, 39.469406, 13.190149>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.183559, 39.657330, 13.501164> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.067970, 39.431259, 13.192082>,  <35.998615, 39.295616, 13.006634>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.067970, 39.431259, 13.192082>,  <36.183559, 39.657330, 13.501164>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.067970, 39.431259, 13.192082> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.629254, -0.496151, 0.598225,
		-0.721479, 0.659100, -0.212263,
		-0.288975, -0.565174, -0.772704,
		35.981277, 39.261707, 12.960271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.496819, 39.652752, 13.543699>,  <36.183559, 39.657330, 13.501164>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.496819, 39.652752, 13.543699> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.571712, 39.320934, 13.333254>,  <35.616650, 39.121841, 13.206986>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.571712, 39.320934, 13.333254>,  <35.496819, 39.652752, 13.543699>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.571712, 39.320934, 13.333254> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.536670, -0.534973, 0.652525,
		-0.822757, 0.160175, -0.545358,
		0.187233, -0.829547, -0.526114,
		35.627884, 39.072071, 13.175420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.954391, 39.329372, 13.713850>,  <35.496819, 39.652752, 13.543699>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.954391, 39.329372, 13.713850> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.172085, 39.050957, 13.526518>,  <35.302700, 38.883907, 13.414119>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.172085, 39.050957, 13.526518>,  <34.954391, 39.329372, 13.713850>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.172085, 39.050957, 13.526518> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262280, -0.671429, 0.693104,
		-0.796881, -0.254376, -0.547972,
		0.544233, -0.696043, -0.468331,
		35.335354, 38.842144, 13.386019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.443943, 38.770706, 13.550015>,  <34.954391, 39.329372, 13.713850>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.443943, 38.770706, 13.550015> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.817657, 38.628983, 13.565900>,  <35.041885, 38.543949, 13.575431>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.817657, 38.628983, 13.565900>,  <34.443943, 38.770706, 13.550015>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.817657, 38.628983, 13.565900> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278345, -0.655263, 0.702249,
		-0.222793, -0.667154, -0.710823,
		0.934284, -0.354310, 0.039711,
		35.097942, 38.522690, 13.577813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.389301, 38.028065, 13.466877>,  <34.443943, 38.770706, 13.550015>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.389301, 38.028065, 13.466877> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.747452, 38.080494, 13.637107>,  <34.962341, 38.111950, 13.739244>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.747452, 38.080494, 13.637107>,  <34.389301, 38.028065, 13.466877>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.747452, 38.080494, 13.637107> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244551, -0.653943, 0.715928,
		0.372140, -0.745103, -0.553474,
		0.895381, 0.131073, 0.425574,
		35.016068, 38.119816, 13.764779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.676674, 37.283546, 13.691374>,  <34.389301, 38.028065, 13.466877>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.676674, 37.283546, 13.691374> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.878975, 37.558178, 13.900304>,  <35.000355, 37.722958, 14.025661>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.878975, 37.558178, 13.900304>,  <34.676674, 37.283546, 13.691374>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.878975, 37.558178, 13.900304> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075085, -0.568139, 0.819500,
		0.859403, -0.453686, -0.235788,
		0.505756, 0.686577, 0.522325,
		35.030701, 37.764153, 14.057001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.242329, 36.808376, 14.106601>,  <34.676674, 37.283546, 13.691374>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.242329, 36.808376, 14.106601> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.174553, 37.168194, 14.267651>,  <35.133888, 37.384087, 14.364281>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.174553, 37.168194, 14.267651>,  <35.242329, 36.808376, 14.106601>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.174553, 37.168194, 14.267651> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178392, -0.373790, 0.910196,
		0.969261, 0.226046, -0.097138,
		-0.169437, 0.899547, 0.402625,
		35.123722, 37.438057, 14.388438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.810581, 36.779816, 14.634385>,  <35.242329, 36.808376, 14.106601>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.810581, 36.779816, 14.634385> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.546555, 37.067188, 14.722175>,  <35.388138, 37.239613, 14.774849>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.546555, 37.067188, 14.722175>,  <35.810581, 36.779816, 14.634385>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.546555, 37.067188, 14.722175> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193007, -0.120165, 0.973812,
		0.725993, 0.685137, -0.059346,
		-0.660063, 0.718435, 0.219475,
		35.348537, 37.282719, 14.788017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.123936, 37.199478, 15.224654>,  <35.810581, 36.779816, 14.634385>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.123936, 37.199478, 15.224654> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.735519, 37.287724, 15.261339>,  <35.502468, 37.340672, 15.283350>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.735519, 37.287724, 15.261339>,  <36.123936, 37.199478, 15.224654>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.735519, 37.287724, 15.261339> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086904, -0.031425, 0.995721,
		0.222553, 0.974855, 0.011343,
		-0.971039, 0.220615, 0.091713,
		35.444206, 37.353909, 15.288853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.167389, 37.500378, 15.808303>,  <36.123936, 37.199478, 15.224654>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.167389, 37.500378, 15.808303> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.775108, 37.428719, 15.777005>,  <35.539738, 37.385723, 15.758226>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.775108, 37.428719, 15.777005>,  <36.167389, 37.500378, 15.808303>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.775108, 37.428719, 15.777005> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051142, -0.151197, 0.987180,
		-0.188685, 0.972134, 0.139118,
		-0.980705, -0.179152, -0.078245,
		35.480896, 37.374973, 15.753531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.797714, 37.843201, 16.412172>,  <36.167389, 37.500378, 15.808303>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.797714, 37.843201, 16.412172> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.558273, 37.556744, 16.268606>,  <35.414608, 37.384869, 16.182467>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.558273, 37.556744, 16.268606>,  <35.797714, 37.843201, 16.412172>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.558273, 37.556744, 16.268606> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166534, -0.327012, 0.930231,
		-0.783543, 0.616611, 0.076490,
		-0.598604, -0.716138, -0.358915,
		35.378693, 37.341904, 16.160933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.296047, 37.813332, 16.915205>,  <35.797714, 37.843201, 16.412172>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.296047, 37.813332, 16.915205> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.274525, 37.456478, 16.735785>,  <35.261612, 37.242367, 16.628132>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.274525, 37.456478, 16.735785>,  <35.296047, 37.813332, 16.915205>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.274525, 37.456478, 16.735785> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049099, -0.451024, 0.891161,
		-0.997344, 0.025924, 0.068070,
		-0.053804, -0.892135, -0.448553,
		35.258385, 37.188839, 16.601219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.770443, 37.477531, 17.252621>,  <35.296047, 37.813332, 16.915205>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.770443, 37.477531, 17.252621> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.995323, 37.190937, 17.087418>,  <35.130253, 37.018982, 16.988297>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.995323, 37.190937, 17.087418>,  <34.770443, 37.477531, 17.252621>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.995323, 37.190937, 17.087418> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032690, -0.518268, 0.854593,
		-0.826354, -0.466952, -0.314793,
		0.562201, -0.716488, -0.413008,
		35.163982, 36.975990, 16.963514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.367332, 36.821384, 17.500830>,  <34.770443, 37.477531, 17.252621>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.367332, 36.821384, 17.500830> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.744965, 36.733082, 17.402866>,  <34.971542, 36.680099, 17.344088>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.744965, 36.733082, 17.402866>,  <34.367332, 36.821384, 17.500830>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.744965, 36.733082, 17.402866> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094812, -0.529657, 0.842896,
		-0.315790, -0.818982, -0.479109,
		0.944080, -0.220753, -0.244910,
		35.028187, 36.666855, 17.329393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.396034, 36.086323, 17.343201>,  <34.367332, 36.821384, 17.500830>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.396034, 36.086323, 17.343201> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.761940, 36.206764, 17.450935>,  <34.981483, 36.279030, 17.515575>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.761940, 36.206764, 17.450935>,  <34.396034, 36.086323, 17.343201>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.761940, 36.206764, 17.450935> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024377, -0.706619, 0.707174,
		0.403251, -0.640332, -0.653731,
		0.914765, 0.301105, 0.269335,
		35.036369, 36.297096, 17.531736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.711590, 35.519062, 17.583878>,  <34.396034, 36.086323, 17.343201>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.711590, 35.519062, 17.583878> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.964214, 35.761642, 17.777102>,  <35.115791, 35.907188, 17.893036>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.964214, 35.761642, 17.777102>,  <34.711590, 35.519062, 17.583878>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.964214, 35.761642, 17.777102> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083909, -0.672848, 0.735007,
		0.770771, -0.423670, -0.475832,
		0.631563, 0.606449, 0.483062,
		35.153683, 35.943577, 17.922020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.310364, 35.090145, 17.927162>,  <34.711590, 35.519062, 17.583878>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.310364, 35.090145, 17.927162> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.299343, 35.436203, 18.127464>,  <35.292728, 35.643837, 18.247646>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.299343, 35.436203, 18.127464>,  <35.310364, 35.090145, 17.927162>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.299343, 35.436203, 18.127464> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211815, -0.484518, 0.848750,
		0.976921, 0.129456, -0.169900,
		-0.027556, 0.865149, 0.500757,
		35.291077, 35.695747, 18.277691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.852921, 34.919865, 18.357367>,  <35.310364, 35.090145, 17.927162>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.852921, 34.919865, 18.357367> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.648602, 35.224194, 18.517487>,  <35.526009, 35.406792, 18.613558>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.648602, 35.224194, 18.517487>,  <35.852921, 34.919865, 18.357367>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.648602, 35.224194, 18.517487> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145575, -0.382355, 0.912476,
		0.847285, 0.524366, 0.084550,
		-0.510800, 0.760819, 0.400298,
		35.495361, 35.452438, 18.637575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.316582, 35.150318, 18.875303>,  <35.852921, 34.919865, 18.357367>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.316582, 35.150318, 18.875303> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.952358, 35.280197, 18.977640>,  <35.733826, 35.358124, 19.039042>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.952358, 35.280197, 18.977640>,  <36.316582, 35.150318, 18.875303>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.952358, 35.280197, 18.977640> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214939, -0.156778, 0.963961,
		0.353104, 0.932734, 0.072966,
		-0.910559, 0.324696, 0.255840,
		35.679192, 35.377605, 19.054392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<40.229816, 34.499817, 23.403034> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.072563, 34.866100, 23.369749>,  <39.978210, 35.085869, 23.349777>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.072563, 34.866100, 23.369749>,  <40.229816, 34.499817, 23.403034>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.072563, 34.866100, 23.369749> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347958, 0.231930, 0.908369,
		0.851101, 0.328153, -0.409807,
		-0.393130, 0.915710, -0.083212,
		39.954624, 35.140812, 23.344786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.693089, 35.059185, 23.359562>,  <40.229816, 34.499817, 23.403034>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.693089, 35.059185, 23.359562> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.351673, 35.205730, 23.507753>,  <40.146824, 35.293659, 23.596668>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.351673, 35.205730, 23.507753>,  <40.693089, 35.059185, 23.359562>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.351673, 35.205730, 23.507753> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479926, 0.275989, 0.832767,
		0.202848, 0.888598, -0.411394,
		-0.853536, 0.366364, 0.370477,
		40.095612, 35.315639, 23.618896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.965927, 35.555855, 23.773455>,  <40.693089, 35.059185, 23.359562>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.965927, 35.555855, 23.773455> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.584499, 35.550625, 23.893806>,  <40.355640, 35.547485, 23.966017>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.584499, 35.550625, 23.893806>,  <40.965927, 35.555855, 23.773455>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.584499, 35.550625, 23.893806> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269163, 0.411159, 0.870919,
		-0.135097, 0.911470, -0.388550,
		-0.953572, -0.013075, 0.300880,
		40.298428, 35.546703, 23.984070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.866528, 36.297871, 24.016188>,  <40.965927, 35.555855, 23.773455>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.866528, 36.297871, 24.016188> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.585316, 36.072838, 24.190199>,  <40.416588, 35.937820, 24.294605>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.585316, 36.072838, 24.190199>,  <40.866528, 36.297871, 24.016188>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.585316, 36.072838, 24.190199> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019813, 0.626975, 0.778787,
		-0.710880, 0.538895, -0.451932,
		-0.703034, -0.562578, 0.435027,
		40.374405, 35.904064, 24.320707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.401505, 36.797863, 24.313686>,  <40.866528, 36.297871, 24.016188>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.401505, 36.797863, 24.313686> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.337166, 36.448170, 24.496922>,  <40.298565, 36.238354, 24.606863>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.337166, 36.448170, 24.496922>,  <40.401505, 36.797863, 24.313686>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.337166, 36.448170, 24.496922> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004020, 0.463546, 0.886064,
		-0.986972, 0.144358, -0.071044,
		-0.160843, -0.874234, 0.458087,
		40.288914, 36.185898, 24.634348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.860451, 36.917805, 24.736341>,  <40.401505, 36.797863, 24.313686>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.860451, 36.917805, 24.736341> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.042522, 36.598930, 24.894987>,  <40.151768, 36.407604, 24.990175>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.042522, 36.598930, 24.894987>,  <39.860451, 36.917805, 24.736341>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.042522, 36.598930, 24.894987> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109717, 0.391823, 0.913475,
		-0.883613, -0.459312, 0.090886,
		0.455181, -0.797187, 0.396614,
		40.179077, 36.359776, 25.013971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.563683, 36.854050, 25.439449>,  <39.860451, 36.917805, 24.736341>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.563683, 36.854050, 25.439449> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.874199, 36.603230, 25.465315>,  <40.060509, 36.452740, 25.480835>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.874199, 36.603230, 25.465315>,  <39.563683, 36.854050, 25.439449>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.874199, 36.603230, 25.465315> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062610, 0.025380, 0.997715,
		-0.627256, -0.778567, -0.019557,
		0.776292, -0.627047, 0.064666,
		40.107086, 36.415115, 25.484715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.271534, 36.416012, 25.956923>,  <39.563683, 36.854050, 25.439449>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.271534, 36.416012, 25.956923> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.669296, 36.377754, 25.939014>,  <39.907955, 36.354801, 25.928268>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.669296, 36.377754, 25.939014>,  <39.271534, 36.416012, 25.956923>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.669296, 36.377754, 25.939014> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038423, -0.067218, 0.996998,
		-0.098366, -0.993143, -0.063167,
		0.994408, -0.095643, -0.044771,
		39.967617, 36.349064, 25.925583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.460876, 35.903355, 26.429140>,  <39.271534, 36.416012, 25.956923>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.460876, 35.903355, 26.429140> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.811020, 36.093578, 26.394299>,  <40.021107, 36.207714, 26.373394>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.811020, 36.093578, 26.394299>,  <39.460876, 35.903355, 26.429140>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.811020, 36.093578, 26.394299> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124752, -0.048112, 0.991021,
		0.467103, -0.878365, -0.101443,
		0.875358, 0.475564, -0.087104,
		40.073627, 36.236248, 26.368168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.935860, 35.483318, 26.765104>,  <39.460876, 35.903355, 26.429140>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.935860, 35.483318, 26.765104> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.093269, 35.850643, 26.747902>,  <40.187714, 36.071037, 26.737581>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.093269, 35.850643, 26.747902>,  <39.935860, 35.483318, 26.765104>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.093269, 35.850643, 26.747902> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057245, 0.022212, 0.998113,
		0.917531, -0.395241, -0.043828,
		0.393521, 0.918309, -0.043006,
		40.211327, 36.126137, 26.735001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.469231, 35.590733, 27.271431>,  <39.935860, 35.483318, 26.765104>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.469231, 35.590733, 27.271431> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.350033, 35.964676, 27.194235>,  <40.278515, 36.189041, 27.147917>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.350033, 35.964676, 27.194235>,  <40.469231, 35.590733, 27.271431>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.350033, 35.964676, 27.194235> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033597, 0.191780, 0.980863,
		0.953978, 0.298771, -0.025740,
		-0.297990, 0.934856, -0.192991,
		40.260635, 36.245132, 27.136337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.859543, 35.829128, 27.707701>,  <40.469231, 35.590733, 27.271431>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.859543, 35.829128, 27.707701> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.555710, 36.075100, 27.622950>,  <40.373409, 36.222683, 27.572098>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.555710, 36.075100, 27.622950>,  <40.859543, 35.829128, 27.707701>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.555710, 36.075100, 27.622950> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059467, 0.258738, 0.964115,
		0.647684, 0.744927, -0.159966,
		-0.759585, 0.614930, -0.211879,
		40.327835, 36.259579, 27.559385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.997108, 36.415329, 28.064444>,  <40.859543, 35.829128, 27.707701>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.997108, 36.415329, 28.064444> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.605686, 36.428246, 27.983076>,  <40.370831, 36.435993, 27.934256>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.605686, 36.428246, 27.983076>,  <40.997108, 36.415329, 28.064444>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.605686, 36.428246, 27.983076> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189110, 0.250462, 0.949477,
		0.081606, 0.967588, -0.238986,
		-0.978559, 0.032288, -0.203420,
		40.312119, 36.437931, 27.922050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.686092, 36.979141, 28.442350>,  <40.997108, 36.415329, 28.064444>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.686092, 36.979141, 28.442350> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.386806, 36.723347, 28.371653>,  <40.207237, 36.569870, 28.329233>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.386806, 36.723347, 28.371653>,  <40.686092, 36.979141, 28.442350>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.386806, 36.723347, 28.371653> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432125, 0.267572, 0.861205,
		-0.503435, 0.720739, -0.476538,
		-0.748212, -0.639485, -0.176744,
		40.162342, 36.531502, 28.318630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.243507, 37.000282, 28.924376>,  <40.686092, 36.979141, 28.442350>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.243507, 37.000282, 28.924376> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.417412, 37.360424, 28.917063>,  <41.521755, 37.576511, 28.912676>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.417412, 37.360424, 28.917063>,  <41.243507, 37.000282, 28.924376>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.417412, 37.360424, 28.917063> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485400, 0.217193, -0.846885,
		-0.758529, 0.377070, 0.531462,
		0.434764, 0.900359, -0.018283,
		41.547840, 37.630531, 28.911577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.674500, 37.396107, 29.016359>,  <41.243507, 37.000282, 28.924376>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.674500, 37.396107, 29.016359> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.977154, 37.595753, 28.847416>,  <41.158745, 37.715542, 28.746050>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.977154, 37.595753, 28.847416>,  <40.674500, 37.396107, 29.016359>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.977154, 37.595753, 28.847416> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.626419, 0.368267, -0.687007,
		-0.187356, 0.784387, 0.591300,
		0.756635, 0.499116, -0.422358,
		41.204144, 37.745487, 28.720709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.419991, 38.081940, 29.032621>,  <40.674500, 37.396107, 29.016359>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.419991, 38.081940, 29.032621> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.689194, 38.006863, 28.746452>,  <40.850716, 37.961815, 28.574751>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.689194, 38.006863, 28.746452>,  <40.419991, 38.081940, 29.032621>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.689194, 38.006863, 28.746452> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.570944, 0.483069, -0.663828,
		0.470196, 0.855228, 0.217946,
		0.673007, -0.187694, -0.715424,
		40.891094, 37.950554, 28.531824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.600937, 38.773945, 28.698900>,  <40.419991, 38.081940, 29.032621>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.600937, 38.773945, 28.698900> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.707668, 38.472969, 28.458021>,  <40.771709, 38.292385, 28.313494>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.707668, 38.472969, 28.458021>,  <40.600937, 38.773945, 28.698900>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.707668, 38.472969, 28.458021> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492992, 0.430344, -0.756150,
		0.828106, 0.498643, -0.256116,
		0.266830, -0.752436, -0.602198,
		40.787716, 38.247238, 28.277361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.585255, 39.067444, 28.004416>,  <40.600937, 38.773945, 28.698900>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.585255, 39.067444, 28.004416> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.642014, 38.685902, 27.898573>,  <40.676071, 38.456974, 27.835068>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.642014, 38.685902, 27.898573>,  <40.585255, 39.067444, 28.004416>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.642014, 38.685902, 27.898573> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414743, 0.185427, -0.890845,
		0.898806, 0.236156, -0.369294,
		0.141902, -0.953859, -0.264607,
		40.684586, 38.399742, 27.819191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.807037, 39.078091, 27.307964>,  <40.585255, 39.067444, 28.004416>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.807037, 39.078091, 27.307964> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.674534, 38.702168, 27.341486>,  <40.595032, 38.476612, 27.361599>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.674534, 38.702168, 27.341486>,  <40.807037, 39.078091, 27.307964>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.674534, 38.702168, 27.341486> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.572265, 0.129498, -0.809780,
		0.750187, -0.316205, -0.580718,
		-0.331258, -0.939811, 0.083805,
		40.575157, 38.420223, 27.366627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.878002, 38.749245, 26.650402>,  <40.807037, 39.078091, 27.307964>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.878002, 38.749245, 26.650402> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.601521, 38.527863, 26.836271>,  <40.435631, 38.395035, 26.947792>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.601521, 38.527863, 26.836271>,  <40.878002, 38.749245, 26.650402>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.601521, 38.527863, 26.836271> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.520496, -0.064780, -0.851403,
		0.501313, -0.830357, -0.243294,
		-0.691208, -0.553453, 0.464673,
		40.394157, 38.361828, 26.975674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.709415, 38.140465, 26.198877>,  <40.878002, 38.749245, 26.650402>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.709415, 38.140465, 26.198877> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.400921, 38.227856, 26.438030>,  <40.215824, 38.280293, 26.581522>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.400921, 38.227856, 26.438030>,  <40.709415, 38.140465, 26.198877>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.400921, 38.227856, 26.438030> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.613875, -0.006822, -0.789374,
		-0.168386, -0.975817, 0.139382,
		-0.771235, 0.218483, 0.597881,
		40.169552, 38.293400, 26.617395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.239563, 37.837986, 25.829163>,  <40.709415, 38.140465, 26.198877>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.239563, 37.837986, 25.829163> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.017895, 38.060566, 26.076794>,  <39.884892, 38.194115, 26.225372>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.017895, 38.060566, 26.076794>,  <40.239563, 37.837986, 25.829163>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.017895, 38.060566, 26.076794> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.720969, 0.050861, -0.691098,
		-0.416047, -0.829324, 0.372996,
		-0.554173, 0.556449, 0.619077,
		39.851643, 38.227501, 26.262516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.528954, 37.534271, 25.971975>,  <40.239563, 37.837986, 25.829163>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.528954, 37.534271, 25.971975> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.490337, 37.923641, 26.055046>,  <39.467167, 38.157261, 26.104889>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.490337, 37.923641, 26.055046>,  <39.528954, 37.534271, 25.971975>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.490337, 37.923641, 26.055046> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.754067, 0.064661, -0.653607,
		-0.649664, -0.219701, 0.727783,
		-0.096538, 0.973422, 0.207677,
		39.461376, 38.215668, 26.117350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.823681, 37.663837, 25.989084>,  <39.528954, 37.534271, 25.971975>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.823681, 37.663837, 25.989084> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.993740, 38.021198, 25.931002>,  <39.095776, 38.235615, 25.896152>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.993740, 38.021198, 25.931002>,  <38.823681, 37.663837, 25.989084>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.993740, 38.021198, 25.931002> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.664491, 0.199148, -0.720272,
		-0.614575, 0.402710, 0.678324,
		0.425147, 0.893401, -0.145206,
		39.121284, 38.289219, 25.887440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.210377, 38.144646, 25.880793>,  <38.823681, 37.663837, 25.989084>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.210377, 38.144646, 25.880793> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.524437, 38.346432, 25.737097>,  <38.712872, 38.467503, 25.650879>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.524437, 38.346432, 25.737097>,  <38.210377, 38.144646, 25.880793>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.524437, 38.346432, 25.737097> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469594, 0.106771, -0.876402,
		-0.403757, 0.856806, 0.320724,
		0.785151, 0.504464, -0.359242,
		38.759983, 38.497772, 25.629324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.928677, 38.699219, 25.500793>,  <38.210377, 38.144646, 25.880793>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.928677, 38.699219, 25.500793> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.297920, 38.664959, 25.350843>,  <38.519466, 38.644402, 25.260874>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.297920, 38.664959, 25.350843>,  <37.928677, 38.699219, 25.500793>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.297920, 38.664959, 25.350843> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342433, 0.260438, -0.902724,
		0.174953, 0.961683, 0.211083,
		0.923109, -0.085653, -0.374877,
		38.574852, 38.639263, 25.238380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.938026, 39.309704, 25.089750>,  <37.928677, 38.699219, 25.500793>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.938026, 39.309704, 25.089750> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.216492, 39.057755, 24.951986>,  <38.383572, 38.906586, 24.869328>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.216492, 39.057755, 24.951986>,  <37.938026, 39.309704, 25.089750>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.216492, 39.057755, 24.951986> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260274, 0.225661, -0.938794,
		0.669042, 0.743193, -0.006843,
		0.696162, -0.629873, -0.344410,
		38.425339, 38.868793, 24.848663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.647667, 40.014908, 25.169527>,  <37.938026, 39.309704, 25.089750>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.647667, 40.014908, 25.169527> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.263260, 40.055630, 25.066708>,  <37.032616, 40.080063, 25.005016>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.263260, 40.055630, 25.066708>,  <37.647667, 40.014908, 25.169527>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.263260, 40.055630, 25.066708> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236625, 0.177986, 0.955160,
		0.142988, 0.978753, -0.146959,
		-0.961022, 0.101803, -0.257047,
		36.974953, 40.086170, 24.989594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.451626, 40.611938, 25.596954>,  <37.647667, 40.014908, 25.169527>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.451626, 40.611938, 25.596954> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.122593, 40.410618, 25.491091>,  <36.925175, 40.289825, 25.427572>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.122593, 40.410618, 25.491091>,  <37.451626, 40.611938, 25.596954>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.122593, 40.410618, 25.491091> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246629, -0.103599, 0.963556,
		-0.512379, 0.857877, -0.038910,
		-0.822582, -0.503303, -0.264660,
		36.875816, 40.259628, 25.411694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.903606, 41.073257, 25.790447>,  <37.451626, 40.611938, 25.596954>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.903606, 41.073257, 25.790447> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.753212, 40.704418, 25.753855>,  <36.662975, 40.483116, 25.731899>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.753212, 40.704418, 25.753855>,  <36.903606, 41.073257, 25.790447>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.753212, 40.704418, 25.753855> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172841, -0.027205, 0.984574,
		-0.910363, 0.385998, -0.149148,
		-0.375986, -0.922098, -0.091483,
		36.640415, 40.427788, 25.726410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.308109, 41.142296, 26.150198>,  <36.903606, 41.073257, 25.790447>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.308109, 41.142296, 26.150198> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.381012, 40.749256, 26.135868>,  <36.424755, 40.513432, 26.127270>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.381012, 40.749256, 26.135868>,  <36.308109, 41.142296, 26.150198>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.381012, 40.749256, 26.135868> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502095, -0.124336, 0.855828,
		-0.845389, -0.137994, -0.516018,
		0.182259, -0.982597, -0.035826,
		36.435688, 40.454475, 26.125120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.628555, 40.758560, 26.253759>,  <36.308109, 41.142296, 26.150198>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.628555, 40.758560, 26.253759> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.901470, 40.487534, 26.363588>,  <36.065220, 40.324917, 26.429485>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.901470, 40.487534, 26.363588>,  <35.628555, 40.758560, 26.253759>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.901470, 40.487534, 26.363588> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444938, -0.086833, 0.891342,
		-0.580099, -0.730319, -0.360719,
		0.682287, -0.677564, 0.274575,
		36.106155, 40.284264, 26.445961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.286530, 40.189327, 26.617365>,  <35.628555, 40.758560, 26.253759>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.286530, 40.189327, 26.617365> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.668987, 40.163086, 26.731548>,  <35.898460, 40.147339, 26.800058>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.668987, 40.163086, 26.731548>,  <35.286530, 40.189327, 26.617365>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.668987, 40.163086, 26.731548> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291160, -0.319027, 0.901913,
		0.031899, -0.945472, -0.324137,
		0.956142, -0.065605, 0.285460,
		35.955830, 40.143406, 26.817186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.197735, 39.738762, 27.116846>,  <35.286530, 40.189327, 26.617365>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.197735, 39.738762, 27.116846> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.572647, 39.852402, 27.197634>,  <35.797596, 39.920586, 27.246107>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.572647, 39.852402, 27.197634>,  <35.197735, 39.738762, 27.116846>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.572647, 39.852402, 27.197634> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139012, -0.226695, 0.963994,
		0.319656, -0.931610, -0.172983,
		0.937281, 0.284100, 0.201970,
		35.853832, 39.937630, 27.258224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.467499, 39.172295, 27.480732>,  <35.197735, 39.738762, 27.116846>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.467499, 39.172295, 27.480732> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.646503, 39.515526, 27.581476>,  <35.753906, 39.721466, 27.641922>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.646503, 39.515526, 27.581476>,  <35.467499, 39.172295, 27.480732>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.646503, 39.515526, 27.581476> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159512, -0.200528, 0.966615,
		0.879938, -0.472745, 0.047135,
		0.447510, 0.858080, 0.251860,
		35.780758, 39.772949, 27.657034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.947182, 38.974079, 28.032154>,  <35.467499, 39.172295, 27.480732>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.947182, 38.974079, 28.032154> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.929161, 39.369190, 28.091833>,  <35.918350, 39.606258, 28.127640>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.929161, 39.369190, 28.091833>,  <35.947182, 38.974079, 28.032154>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.929161, 39.369190, 28.091833> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126730, -0.153793, 0.979943,
		0.990914, 0.025237, 0.132110,
		-0.045048, 0.987781, 0.149198,
		35.915646, 39.665524, 28.136593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.444138, 39.098541, 28.554104>,  <35.947182, 38.974079, 28.032154>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.444138, 39.098541, 28.554104> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.200748, 39.415783, 28.543110>,  <36.054714, 39.606129, 28.536512>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.200748, 39.415783, 28.543110>,  <36.444138, 39.098541, 28.554104>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.200748, 39.415783, 28.543110> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322560, -0.215526, 0.921685,
		0.725065, 0.569684, 0.386964,
		-0.608470, 0.793101, -0.027487,
		36.018208, 39.653713, 28.534864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.687176, 39.693008, 29.065382>,  <36.444138, 39.098541, 28.554104>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.687176, 39.693008, 29.065382> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.309246, 39.788471, 28.975622>,  <36.082489, 39.845749, 28.921766>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.309246, 39.788471, 28.975622>,  <36.687176, 39.693008, 29.065382>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.309246, 39.788471, 28.975622> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229930, 0.004785, 0.973195,
		0.233337, 0.971091, 0.050355,
		-0.944821, 0.238661, -0.224399,
		36.025799, 39.860069, 28.908302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.505520, 40.418289, 29.442329>,  <36.687176, 39.693008, 29.065382>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.505520, 40.418289, 29.442329> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.152081, 40.244671, 29.372063>,  <35.940018, 40.140499, 29.329903>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.152081, 40.244671, 29.372063>,  <36.505520, 40.418289, 29.442329>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.152081, 40.244671, 29.372063> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249094, 0.118046, 0.961258,
		-0.396495, 0.893122, -0.212424,
		-0.883597, -0.434048, -0.175667,
		35.887001, 40.114456, 29.319363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<37.422379, 41.458504, 21.536766> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.078602, 41.272392, 21.452036>,  <36.872334, 41.160725, 21.401197>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.078602, 41.272392, 21.452036>,  <37.422379, 41.458504, 21.536766>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.078602, 41.272392, 21.452036> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092263, -0.266378, 0.959443,
		-0.502835, 0.844131, 0.186009,
		-0.859444, -0.465279, -0.211827,
		36.820770, 41.132809, 21.388489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.859684, 41.871582, 21.929485>,  <37.422379, 41.458504, 21.536766>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.859684, 41.871582, 21.929485> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.762707, 41.490810, 21.854595>,  <36.704521, 41.262348, 21.809660>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.762707, 41.490810, 21.854595>,  <36.859684, 41.871582, 21.929485>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.762707, 41.490810, 21.854595> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087415, -0.170766, 0.981427,
		-0.966220, 0.254306, -0.041812,
		-0.242442, -0.951928, -0.187227,
		36.689976, 41.205231, 21.798428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.319923, 41.720028, 22.421688>,  <36.859684, 41.871582, 21.929485>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.319923, 41.720028, 22.421688> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.438335, 41.358131, 22.299179>,  <36.509384, 41.140991, 22.225674>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.438335, 41.358131, 22.299179>,  <36.319923, 41.720028, 22.421688>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.438335, 41.358131, 22.299179> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024530, -0.327737, 0.944450,
		-0.954864, -0.272073, -0.119213,
		0.296030, -0.904746, -0.306270,
		36.527145, 41.086708, 22.207298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.894012, 41.250614, 22.720108>,  <36.319923, 41.720028, 22.421688>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.894012, 41.250614, 22.720108> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.232227, 41.049400, 22.648527>,  <36.435158, 40.928673, 22.605579>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.232227, 41.049400, 22.648527>,  <35.894012, 41.250614, 22.720108>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.232227, 41.049400, 22.648527> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059601, -0.244143, 0.967906,
		-0.530578, -0.829067, -0.176451,
		0.845538, -0.503033, -0.178950,
		36.485889, 40.898491, 22.594843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.850403, 40.623173, 23.049917>,  <35.894012, 41.250614, 22.720108>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.850403, 40.623173, 23.049917> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.244446, 40.618660, 22.981298>,  <36.480873, 40.615952, 22.940128>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.244446, 40.618660, 22.981298>,  <35.850403, 40.623173, 23.049917>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.244446, 40.618660, 22.981298> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153861, -0.387288, 0.909029,
		-0.076693, -0.921890, -0.379786,
		0.985112, -0.011282, -0.171545,
		36.539978, 40.615276, 22.929834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.018963, 39.994102, 23.193615>,  <35.850403, 40.623173, 23.049917>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.018963, 39.994102, 23.193615> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.361061, 40.197720, 23.232462>,  <36.566319, 40.319889, 23.255770>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.361061, 40.197720, 23.232462>,  <36.018963, 39.994102, 23.193615>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.361061, 40.197720, 23.232462> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110339, -0.361982, 0.925632,
		0.506340, -0.780927, -0.365751,
		0.855246, 0.509041, 0.097119,
		36.617634, 40.350433, 23.261597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.430676, 39.546558, 23.581335>,  <36.018963, 39.994102, 23.193615>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.430676, 39.546558, 23.581335> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.600140, 39.903690, 23.642481>,  <36.701817, 40.117970, 23.679169>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.600140, 39.903690, 23.642481>,  <36.430676, 39.546558, 23.581335>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.600140, 39.903690, 23.642481> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212969, -0.262208, 0.941218,
		0.880430, -0.366200, -0.301232,
		0.423660, 0.892830, 0.152867,
		36.727238, 40.171539, 23.688341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.956814, 39.258869, 23.999140>,  <36.430676, 39.546558, 23.581335>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.956814, 39.258869, 23.999140> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.928806, 39.654739, 24.049158>,  <36.912003, 39.892262, 24.079168>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.928806, 39.654739, 24.049158>,  <36.956814, 39.258869, 23.999140>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.928806, 39.654739, 24.049158> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014208, -0.124352, 0.992136,
		0.997444, 0.071247, -0.005354,
		-0.070021, 0.989677, 0.125046,
		36.907799, 39.951641, 24.086672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.514656, 39.574493, 24.487862>,  <36.956814, 39.258869, 23.999140>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.514656, 39.574493, 24.487862> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.174438, 39.784683, 24.479330>,  <36.970306, 39.910797, 24.474211>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.174438, 39.784683, 24.479330>,  <37.514656, 39.574493, 24.487862>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.174438, 39.784683, 24.479330> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110158, -0.138355, 0.984237,
		0.514238, 0.839486, 0.175562,
		-0.850543, 0.525472, -0.021329,
		36.919277, 39.942326, 24.472931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.282742, 39.713131, 24.433762>,  <37.514656, 39.574493, 24.487862>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.282742, 39.713131, 24.433762> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.355526, 39.320908, 24.404398>,  <38.399197, 39.085571, 24.386780>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.355526, 39.320908, 24.404398>,  <38.282742, 39.713131, 24.433762>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.355526, 39.320908, 24.404398> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330071, 0.009418, -0.943909,
		0.926253, 0.195982, -0.321941,
		0.181957, -0.980562, -0.073411,
		38.410114, 39.026737, 24.382374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.766129, 39.617950, 23.886524>,  <38.282742, 39.713131, 24.433762>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.766129, 39.617950, 23.886524> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.553761, 39.280895, 23.922512>,  <38.426342, 39.078663, 23.944105>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.553761, 39.280895, 23.922512>,  <38.766129, 39.617950, 23.886524>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.553761, 39.280895, 23.922512> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174967, 0.005115, -0.984561,
		0.829164, -0.538462, -0.150149,
		-0.530917, -0.842634, 0.089972,
		38.394485, 39.028107, 23.949503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.095360, 39.243786, 23.430174>,  <38.766129, 39.617950, 23.886524>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.095360, 39.243786, 23.430174> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.765568, 39.024860, 23.487696>,  <38.567692, 38.893505, 23.522209>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.765568, 39.024860, 23.487696>,  <39.095360, 39.243786, 23.430174>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.765568, 39.024860, 23.487696> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108681, -0.096245, -0.989407,
		0.555359, -0.831374, 0.019870,
		-0.824479, -0.547316, 0.143805,
		38.518223, 38.860664, 23.530838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.184666, 38.522552, 23.035604>,  <39.095360, 39.243786, 23.430174>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.184666, 38.522552, 23.035604> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.796764, 38.600849, 23.093931>,  <38.564022, 38.647827, 23.128927>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.796764, 38.600849, 23.093931>,  <39.184666, 38.522552, 23.035604>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.796764, 38.600849, 23.093931> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154126, -0.027832, -0.987659,
		-0.189271, -0.980260, 0.057160,
		-0.969754, 0.195745, 0.145816,
		38.505836, 38.659573, 23.137676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.763519, 37.892593, 22.815372>,  <39.184666, 38.522552, 23.035604>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.763519, 37.892593, 22.815372> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.541870, 38.224377, 22.787252>,  <38.408878, 38.423447, 22.770380>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.541870, 38.224377, 22.787252>,  <38.763519, 37.892593, 22.815372>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.541870, 38.224377, 22.787252> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143357, -0.178276, -0.973482,
		-0.819996, -0.529353, 0.217696,
		-0.554126, 0.829459, -0.070299,
		38.375633, 38.473213, 22.766163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.306683, 37.773506, 22.292608>,  <38.763519, 37.892593, 22.815372>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.306683, 37.773506, 22.292608> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.276970, 38.169743, 22.338593>,  <38.259144, 38.407482, 22.366182>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.276970, 38.169743, 22.338593>,  <38.306683, 37.773506, 22.292608>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.276970, 38.169743, 22.338593> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133185, 0.104392, -0.985578,
		-0.988304, -0.088517, 0.124178,
		-0.074277, 0.990589, 0.114960,
		38.254688, 38.466919, 22.373081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.837406, 37.890709, 21.821745>,  <38.306683, 37.773506, 22.292608>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.837406, 37.890709, 21.821745> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.999363, 38.250957, 21.884907>,  <38.096539, 38.467106, 21.922804>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.999363, 38.250957, 21.884907>,  <37.837406, 37.890709, 21.821745>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.999363, 38.250957, 21.884907> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084519, 0.208820, -0.974295,
		-0.910449, 0.381139, 0.160670,
		0.404893, 0.900626, 0.157907,
		38.120831, 38.521145, 21.932280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.375538, 38.279171, 21.443640>,  <37.837406, 37.890709, 21.821745>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.375538, 38.279171, 21.443640> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.708271, 38.494968, 21.495794>,  <37.907913, 38.624447, 21.527086>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.708271, 38.494968, 21.495794>,  <37.375538, 38.279171, 21.443640>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.708271, 38.494968, 21.495794> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047425, 0.164973, -0.985157,
		-0.552993, 0.825672, 0.111645,
		0.831835, 0.539490, 0.130387,
		37.957821, 38.656815, 21.534910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.294495, 38.907990, 21.093801>,  <37.375538, 38.279171, 21.443640>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.294495, 38.907990, 21.093801> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.691895, 38.864010, 21.105583>,  <37.930336, 38.837624, 21.112652>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.691895, 38.864010, 21.105583>,  <37.294495, 38.907990, 21.093801>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.691895, 38.864010, 21.105583> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068891, 0.374855, -0.924520,
		0.090610, 0.920541, 0.379993,
		0.993501, -0.109949, 0.029452,
		37.989944, 38.831024, 21.114418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.542683, 39.500095, 20.828686>,  <37.294495, 38.907990, 21.093801>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.542683, 39.500095, 20.828686> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.849564, 39.248558, 20.778154>,  <38.033691, 39.097637, 20.747835>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.849564, 39.248558, 20.778154>,  <37.542683, 39.500095, 20.828686>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.849564, 39.248558, 20.778154> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234777, 0.458609, -0.857063,
		0.596894, 0.627881, 0.499483,
		0.767201, -0.628843, -0.126329,
		38.079723, 39.059906, 20.740255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.205196, 39.955593, 20.713257>,  <37.542683, 39.500095, 20.828686>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.205196, 39.955593, 20.713257> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.273811, 39.582798, 20.585526>,  <38.314980, 39.359119, 20.508886>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.273811, 39.582798, 20.585526>,  <38.205196, 39.955593, 20.713257>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.273811, 39.582798, 20.585526> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563963, 0.358665, -0.743845,
		0.807788, -0.052494, 0.587132,
		0.171536, -0.931989, -0.319329,
		38.325272, 39.303200, 20.489727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.778469, 40.025642, 20.417007>,  <38.205196, 39.955593, 20.713257>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.778469, 40.025642, 20.417007> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.649612, 39.674088, 20.276274>,  <38.572300, 39.463154, 20.191833>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.649612, 39.674088, 20.276274>,  <38.778469, 40.025642, 20.417007>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.649612, 39.674088, 20.276274> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465392, 0.176619, -0.867304,
		0.824401, -0.443134, 0.352130,
		-0.322140, -0.878884, -0.351836,
		38.552971, 39.410423, 20.170723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.305771, 39.767624, 19.998583>,  <38.778469, 40.025642, 20.417007>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.305771, 39.767624, 19.998583> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.993633, 39.563835, 19.853533>,  <38.806351, 39.441563, 19.766502>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.993633, 39.563835, 19.853533>,  <39.305771, 39.767624, 19.998583>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.993633, 39.563835, 19.853533> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272698, 0.244601, -0.930487,
		0.562757, -0.824989, -0.051941,
		-0.780346, -0.509474, -0.362624,
		38.759529, 39.410992, 19.744745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.554401, 39.264381, 19.513145>,  <39.305771, 39.767624, 19.998583>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.554401, 39.264381, 19.513145> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.171383, 39.281300, 19.399086>,  <38.941570, 39.291451, 19.330650>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.171383, 39.281300, 19.399086>,  <39.554401, 39.264381, 19.513145>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.171383, 39.281300, 19.399086> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279857, -0.100822, -0.954733,
		-0.069131, -0.994005, 0.084705,
		-0.957550, 0.042296, -0.285149,
		38.884117, 39.293991, 19.313541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<32.115303, 37.079979, 18.780600> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.435009, 37.320309, 18.786066>,  <32.626835, 37.464504, 18.789345>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.435009, 37.320309, 18.786066>,  <32.115303, 37.079979, 18.780600>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.435009, 37.320309, 18.786066> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301440, -0.420466, 0.855770,
		0.519911, -0.679869, -0.517176,
		0.799266, 0.600821, 0.013665,
		32.674789, 37.500557, 18.790165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.578434, 36.712517, 19.189169>,  <32.115303, 37.079979, 18.780600>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.578434, 36.712517, 19.189169> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.746273, 37.075562, 19.183794>,  <32.846977, 37.293388, 19.180569>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.746273, 37.075562, 19.183794>,  <32.578434, 36.712517, 19.189169>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.746273, 37.075562, 19.183794> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429457, -0.185458, 0.883839,
		0.799691, -0.376625, -0.467597,
		0.419595, 0.907612, -0.013435,
		32.872150, 37.347843, 19.179764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.318359, 36.545349, 19.355000>,  <32.578434, 36.712517, 19.189169>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.318359, 36.545349, 19.355000> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.268406, 36.936852, 19.420036>,  <33.238434, 37.171753, 19.459059>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.268406, 36.936852, 19.420036>,  <33.318359, 36.545349, 19.355000>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.268406, 36.936852, 19.420036> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426762, -0.094952, 0.899365,
		0.895700, 0.181702, -0.405839,
		-0.124882, 0.978759, 0.162592,
		33.230942, 37.230480, 19.468813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.009289, 36.910156, 19.515228>,  <33.318359, 36.545349, 19.355000>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.009289, 36.910156, 19.515228> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.719322, 37.125404, 19.687241>,  <33.545341, 37.254555, 19.790447>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.719322, 37.125404, 19.687241>,  <34.009289, 36.910156, 19.515228>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.719322, 37.125404, 19.687241> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488245, -0.038986, 0.871835,
		0.485917, 0.841967, -0.234472,
		-0.724915, 0.538119, 0.430030,
		33.501846, 37.286839, 19.816250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.294514, 37.380051, 19.960379>,  <34.009289, 36.910156, 19.515228>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.294514, 37.380051, 19.960379> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.911694, 37.370701, 20.075972>,  <33.682003, 37.365089, 20.145327>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.911694, 37.370701, 20.075972>,  <34.294514, 37.380051, 19.960379>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.911694, 37.370701, 20.075972> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289895, -0.062323, 0.955027,
		-0.004312, 0.997782, 0.066422,
		-0.957049, -0.023373, 0.288983,
		33.624580, 37.363689, 20.162666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.294827, 37.816635, 20.528671>,  <34.294514, 37.380051, 19.960379>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.294827, 37.816635, 20.528671> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.959999, 37.599766, 20.557972>,  <33.759102, 37.469646, 20.575552>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.959999, 37.599766, 20.557972>,  <34.294827, 37.816635, 20.528671>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.959999, 37.599766, 20.557972> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252083, -0.263386, 0.931172,
		-0.485558, 0.797923, 0.357145,
		-0.837070, -0.542169, 0.073254,
		33.708878, 37.437115, 20.579948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.976341, 38.149258, 21.034571>,  <34.294827, 37.816635, 20.528671>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.976341, 38.149258, 21.034571> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.826633, 37.778347, 21.038340>,  <33.736809, 37.555801, 21.040600>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.826633, 37.778347, 21.038340>,  <33.976341, 38.149258, 21.034571>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.826633, 37.778347, 21.038340> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410706, -0.156643, 0.898211,
		-0.831411, 0.340040, 0.439463,
		-0.374267, -0.927273, 0.009421,
		33.714352, 37.500164, 21.041166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.594269, 38.116863, 21.692574>,  <33.976341, 38.149258, 21.034571>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.594269, 38.116863, 21.692574> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.655598, 37.735138, 21.589977>,  <33.692394, 37.506104, 21.528419>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.655598, 37.735138, 21.589977>,  <33.594269, 38.116863, 21.692574>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.655598, 37.735138, 21.589977> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406358, -0.175711, 0.896660,
		-0.900759, -0.241702, 0.360851,
		0.153319, -0.954309, -0.256491,
		33.701595, 37.448845, 21.513029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.402031, 37.718086, 22.192020>,  <33.594269, 38.116863, 21.692574>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.402031, 37.718086, 22.192020> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.661255, 37.477299, 22.005405>,  <33.816788, 37.332829, 21.893436>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.661255, 37.477299, 22.005405>,  <33.402031, 37.718086, 22.192020>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.661255, 37.477299, 22.005405> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327438, -0.332847, 0.884306,
		-0.687606, -0.725845, -0.018599,
		0.648060, -0.601964, -0.466538,
		33.855671, 37.296711, 21.865444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.292690, 37.044357, 22.448732>,  <33.402031, 37.718086, 22.192020>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.292690, 37.044357, 22.448732> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.657459, 37.013027, 22.287609>,  <33.876320, 36.994228, 22.190935>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.657459, 37.013027, 22.287609>,  <33.292690, 37.044357, 22.448732>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.657459, 37.013027, 22.287609> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373356, -0.248951, 0.893660,
		-0.170277, -0.965343, -0.197782,
		0.911927, -0.078326, -0.402807,
		33.931038, 36.989529, 22.166767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.526295, 36.495968, 22.781742>,  <33.292690, 37.044357, 22.448732>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.526295, 36.495968, 22.781742> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.859230, 36.645145, 22.617729>,  <34.058990, 36.734650, 22.519321>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.859230, 36.645145, 22.617729>,  <33.526295, 36.495968, 22.781742>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.859230, 36.645145, 22.617729> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549981, -0.463922, 0.694476,
		0.068777, -0.803549, -0.591252,
		0.832340, 0.372941, -0.410030,
		34.108932, 36.757027, 22.494720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.988338, 35.987717, 22.707331>,  <33.526295, 36.495968, 22.781742>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.988338, 35.987717, 22.707331> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.201885, 36.325005, 22.732550>,  <34.330013, 36.527378, 22.747681>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.201885, 36.325005, 22.732550>,  <33.988338, 35.987717, 22.707331>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.201885, 36.325005, 22.732550> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537278, -0.395849, 0.744739,
		0.652933, -0.363716, -0.664371,
		0.533864, 0.843217, 0.063047,
		34.362045, 36.577969, 22.751463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.641666, 35.702820, 22.774799>,  <33.988338, 35.987717, 22.707331>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.641666, 35.702820, 22.774799> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.629845, 36.087585, 22.883503>,  <34.622749, 36.318443, 22.948725>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.629845, 36.087585, 22.883503>,  <34.641666, 35.702820, 22.774799>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.629845, 36.087585, 22.883503> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538050, -0.213816, 0.815344,
		0.842395, 0.170319, -0.511236,
		-0.029558, 0.961912, 0.271758,
		34.620975, 36.376160, 22.965031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.225494, 35.755020, 23.179787>,  <34.641666, 35.702820, 22.774799>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.225494, 35.755020, 23.179787> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.037128, 36.100174, 23.253172>,  <34.924107, 36.307266, 23.297203>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.037128, 36.100174, 23.253172>,  <35.225494, 35.755020, 23.179787>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.037128, 36.100174, 23.253172> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345419, -0.011003, 0.938384,
		0.811739, 0.505274, -0.292877,
		-0.470919, 0.862889, 0.183463,
		34.895851, 36.359039, 23.308210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.055130, 35.961533, 23.180662>,  <35.225494, 35.755020, 23.179787>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.055130, 35.961533, 23.180662> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.336758, 35.682335, 23.128365>,  <36.505733, 35.514816, 23.096985>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.336758, 35.682335, 23.128365>,  <36.055130, 35.961533, 23.180662>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.336758, 35.682335, 23.128365> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071850, 0.113152, -0.990976,
		0.706486, 0.707112, 0.029517,
		0.704071, -0.697990, -0.130746,
		36.547977, 35.472939, 23.089140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.542480, 36.234505, 22.843512>,  <36.055130, 35.961533, 23.180662>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.542480, 36.234505, 22.843512> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.557655, 35.843456, 22.760748>,  <36.566761, 35.608826, 22.711090>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.557655, 35.843456, 22.760748>,  <36.542480, 36.234505, 22.843512>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.557655, 35.843456, 22.760748> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155497, 0.198760, -0.967634,
		0.987108, 0.068880, -0.144478,
		0.037935, -0.977625, -0.206908,
		36.569035, 35.550167, 22.698675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.757111, 36.145729, 22.153013>,  <36.542480, 36.234505, 22.843512>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.757111, 36.145729, 22.153013> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.609486, 35.778820, 22.212879>,  <36.520908, 35.558674, 22.248798>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.609486, 35.778820, 22.212879>,  <36.757111, 36.145729, 22.153013>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.609486, 35.778820, 22.212879> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274969, -0.046062, -0.960349,
		0.887797, -0.395585, -0.235222,
		-0.369065, -0.917274, 0.149667,
		36.498768, 35.503639, 22.257780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.039524, 35.753429, 21.623951>,  <36.757111, 36.145729, 22.153013>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.039524, 35.753429, 21.623951> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.709316, 35.564392, 21.747355>,  <36.511192, 35.450970, 21.821396>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.709316, 35.564392, 21.747355>,  <37.039524, 35.753429, 21.623951>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.709316, 35.564392, 21.747355> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291838, -0.110427, -0.950072,
		0.483069, -0.874333, -0.046763,
		-0.825515, -0.472597, 0.308508,
		36.461662, 35.422611, 21.839907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.863319, 35.257030, 21.073181>,  <37.039524, 35.753429, 21.623951>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.863319, 35.257030, 21.073181> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.523285, 35.285759, 21.281872>,  <36.319263, 35.302994, 21.407085>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.523285, 35.285759, 21.281872>,  <36.863319, 35.257030, 21.073181>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.523285, 35.285759, 21.281872> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.526589, -0.130322, -0.840072,
		0.007658, -0.988867, 0.148605,
		-0.850086, 0.071821, 0.521724,
		36.268261, 35.307304, 21.438389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.501511, 34.691719, 20.846369>,  <36.863319, 35.257030, 21.073181>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.501511, 34.691719, 20.846369> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.193161, 34.897820, 20.996181>,  <36.008152, 35.021481, 21.086069>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.193161, 34.897820, 20.996181>,  <36.501511, 34.691719, 20.846369>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.193161, 34.897820, 20.996181> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459801, -0.043178, -0.886972,
		-0.440841, -0.855951, 0.270197,
		-0.770872, 0.515250, 0.374532,
		35.961899, 35.052395, 21.108541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.845749, 34.361622, 20.658205>,  <36.501511, 34.691719, 20.846369>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.845749, 34.361622, 20.658205> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.778988, 34.750664, 20.722939>,  <35.738934, 34.984089, 20.761780>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.778988, 34.750664, 20.722939>,  <35.845749, 34.361622, 20.658205>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.778988, 34.750664, 20.722939> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345572, 0.096023, -0.933466,
		-0.923431, -0.211720, 0.320078,
		-0.166899, 0.972602, 0.161836,
		35.728920, 35.042446, 20.771490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.291557, 34.442051, 20.232782>,  <35.845749, 34.361622, 20.658205>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.291557, 34.442051, 20.232782> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.400463, 34.823071, 20.287210>,  <35.465809, 35.051682, 20.319868>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.400463, 34.823071, 20.287210>,  <35.291557, 34.442051, 20.232782>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.400463, 34.823071, 20.287210> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073304, 0.161536, -0.984141,
		-0.959425, 0.257975, 0.113806,
		0.272267, 0.952552, 0.136071,
		35.482143, 35.108837, 20.328032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.834843, 34.718121, 19.842182>,  <35.291557, 34.442051, 20.232782>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.834843, 34.718121, 19.842182> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.105003, 35.006569, 19.903912>,  <35.267097, 35.179638, 19.940948>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.105003, 35.006569, 19.903912>,  <34.834843, 34.718121, 19.842182>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.105003, 35.006569, 19.903912> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021053, 0.228035, -0.973425,
		-0.737151, 0.654202, 0.169196,
		0.675400, 0.721124, 0.154324,
		35.307625, 35.222904, 19.950209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.493954, 35.339996, 19.527149>,  <34.834843, 34.718121, 19.842182>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.493954, 35.339996, 19.527149> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.890289, 35.393993, 19.525364>,  <35.128090, 35.426392, 19.524292>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.890289, 35.393993, 19.525364>,  <34.493954, 35.339996, 19.527149>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.890289, 35.393993, 19.525364> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056809, 0.386542, -0.920521,
		-0.122534, 0.912340, 0.390669,
		0.990837, 0.134988, -0.004465,
		35.187542, 35.434490, 19.524025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.618736, 36.076447, 19.332804>,  <34.493954, 35.339996, 19.527149>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.618736, 36.076447, 19.332804> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.966026, 35.891415, 19.261028>,  <35.174400, 35.780396, 19.217962>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.966026, 35.891415, 19.261028>,  <34.618736, 36.076447, 19.332804>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.966026, 35.891415, 19.261028> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121223, 0.548461, -0.827342,
		0.481128, 0.696570, 0.532265,
		0.868228, -0.462581, -0.179440,
		35.226494, 35.752640, 19.207197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.027706, 36.574001, 19.135889>,  <34.618736, 36.076447, 19.332804>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.027706, 36.574001, 19.135889> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.194107, 36.244007, 18.982874>,  <35.293949, 36.046009, 18.891064>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.194107, 36.244007, 18.982874>,  <35.027706, 36.574001, 19.135889>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.194107, 36.244007, 18.982874> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115326, 0.465135, -0.877696,
		0.902019, 0.321010, 0.288641,
		0.416006, -0.824986, -0.382540,
		35.318909, 35.996510, 18.868113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.562988, 36.868290, 18.831255>,  <35.027706, 36.574001, 19.135889>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.562988, 36.868290, 18.831255> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.495235, 36.515442, 18.655449>,  <35.454582, 36.303734, 18.549965>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.495235, 36.515442, 18.655449>,  <35.562988, 36.868290, 18.831255>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.495235, 36.515442, 18.655449> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121524, 0.423861, -0.897538,
		0.978029, -0.205440, 0.035403,
		-0.169384, -0.882120, -0.439514,
		35.444420, 36.250805, 18.523594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.154343, 36.637962, 18.443111>,  <35.562988, 36.868290, 18.831255>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.154343, 36.637962, 18.443111> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.836327, 36.452595, 18.286568>,  <35.645519, 36.341373, 18.192642>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.836327, 36.452595, 18.286568>,  <36.154343, 36.637962, 18.443111>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.836327, 36.452595, 18.286568> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196143, 0.414123, -0.888836,
		0.573972, -0.783420, -0.238347,
		-0.795037, -0.463417, -0.391357,
		35.597816, 36.313568, 18.169161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.855419, 36.325680, 18.544573>,  <36.154343, 36.637962, 18.443111>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.855419, 36.325680, 18.544573> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.211674, 36.213112, 18.401705>,  <37.425426, 36.145573, 18.315985>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.211674, 36.213112, 18.401705>,  <36.855419, 36.325680, 18.544573>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.211674, 36.213112, 18.401705> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216178, -0.428984, 0.877063,
		-0.400035, -0.858359, -0.321235,
		0.890640, -0.281412, -0.357167,
		37.478867, 36.128685, 18.294554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.878307, 35.570168, 18.722382>,  <36.855419, 36.325680, 18.544573>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.878307, 35.570168, 18.722382> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.242172, 35.731571, 18.683001>,  <37.460491, 35.828415, 18.659372>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.242172, 35.731571, 18.683001>,  <36.878307, 35.570168, 18.722382>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.242172, 35.731571, 18.683001> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321631, -0.534355, 0.781676,
		0.262807, -0.742727, -0.615864,
		0.909663, 0.403511, -0.098452,
		37.515072, 35.852623, 18.653465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.271278, 35.053562, 19.016092>,  <36.878307, 35.570168, 18.722382>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.271278, 35.053562, 19.016092> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.517242, 35.367985, 18.990784>,  <37.664822, 35.556637, 18.975599>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.517242, 35.367985, 18.990784>,  <37.271278, 35.053562, 19.016092>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.517242, 35.367985, 18.990784> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462469, -0.294466, 0.836309,
		0.638752, -0.543518, -0.544596,
		0.614913, 0.786053, -0.063270,
		37.701717, 35.603802, 18.971804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.030502, 34.789654, 19.075296>,  <37.271278, 35.053562, 19.016092>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.030502, 34.789654, 19.075296> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.016747, 35.181911, 19.152407>,  <38.008495, 35.417267, 19.198673>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.016747, 35.181911, 19.152407>,  <38.030502, 34.789654, 19.075296>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.016747, 35.181911, 19.152407> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530270, -0.145599, 0.835234,
		0.847131, 0.130944, -0.514997,
		-0.034386, 0.980640, 0.192777,
		38.006432, 35.476105, 19.210239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.649086, 34.891644, 19.391510>,  <38.030502, 34.789654, 19.075296>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.649086, 34.891644, 19.391510> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.444931, 35.218494, 19.498693>,  <38.322437, 35.414604, 19.563004>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.444931, 35.218494, 19.498693>,  <38.649086, 34.891644, 19.391510>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.444931, 35.218494, 19.498693> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530360, 0.053820, 0.846062,
		0.676922, 0.573934, -0.460843,
		-0.510387, 0.817131, 0.267960,
		38.291817, 35.463634, 19.579081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.195362, 35.396297, 19.516623>,  <38.649086, 34.891644, 19.391510>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.195362, 35.396297, 19.516623> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.864914, 35.501583, 19.715916>,  <38.666645, 35.564754, 19.835491>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.864914, 35.501583, 19.715916>,  <39.195362, 35.396297, 19.516623>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.864914, 35.501583, 19.715916> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.534392, 0.085516, 0.840899,
		0.178730, 0.960940, -0.211307,
		-0.826124, 0.263215, 0.498234,
		38.617077, 35.580547, 19.865385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.484673, 35.894547, 20.096657>,  <39.195362, 35.396297, 19.516623>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.484673, 35.894547, 20.096657> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.107414, 35.815796, 20.203779>,  <38.881062, 35.768543, 20.268053>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.107414, 35.815796, 20.203779>,  <39.484673, 35.894547, 20.096657>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.107414, 35.815796, 20.203779> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255488, 0.086001, 0.962980,
		-0.212622, 0.976649, -0.030811,
		-0.943142, -0.196879, 0.267808,
		38.824471, 35.756733, 20.284122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.298595, 36.455681, 20.600260>,  <39.484673, 35.894547, 20.096657>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.298595, 36.455681, 20.600260> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.070896, 36.132339, 20.660282>,  <38.934277, 35.938335, 20.696295>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.070896, 36.132339, 20.660282>,  <39.298595, 36.455681, 20.600260>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.070896, 36.132339, 20.660282> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368323, -0.087561, 0.925565,
		-0.735049, 0.582143, 0.347581,
		-0.569246, -0.808358, 0.150055,
		38.900124, 35.889832, 20.705299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.071354, 36.565308, 21.262556>,  <39.298595, 36.455681, 20.600260>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.071354, 36.565308, 21.262556> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.019127, 36.173832, 21.199167>,  <38.987789, 35.938946, 21.161133>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.019127, 36.173832, 21.199167>,  <39.071354, 36.565308, 21.262556>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.019127, 36.173832, 21.199167> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348500, -0.194948, 0.916811,
		-0.928170, 0.064479, 0.366528,
		-0.130569, -0.978692, -0.158474,
		38.979958, 35.880226, 21.151625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.949451, 36.428429, 21.922810>,  <39.071354, 36.565308, 21.262556>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.949451, 36.428429, 21.922810> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.969814, 36.071964, 21.742477>,  <38.982033, 35.858086, 21.634277>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.969814, 36.071964, 21.742477>,  <38.949451, 36.428429, 21.922810>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.969814, 36.071964, 21.742477> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191722, -0.434301, 0.880128,
		-0.980128, -0.131236, 0.148747,
		0.050904, -0.891156, -0.450831,
		38.985085, 35.804619, 21.607227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.490944, 35.958641, 22.227291>,  <38.949451, 36.428429, 21.922810>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.490944, 35.958641, 22.227291> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.812759, 35.788857, 22.061136>,  <39.005848, 35.686985, 21.961443>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.812759, 35.788857, 22.061136>,  <38.490944, 35.958641, 22.227291>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.812759, 35.788857, 22.061136> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299184, -0.314522, 0.900869,
		-0.513035, -0.849062, -0.126052,
		0.804539, -0.424464, -0.415386,
		39.054123, 35.661518, 21.936520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.491322, 35.322861, 22.498713>,  <38.490944, 35.958641, 22.227291>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.491322, 35.322861, 22.498713> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.864315, 35.375507, 22.364161>,  <39.088112, 35.407097, 22.283430>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.864315, 35.375507, 22.364161>,  <38.491322, 35.322861, 22.498713>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.864315, 35.375507, 22.364161> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361122, -0.318817, 0.876326,
		0.008099, -0.938633, -0.344823,
		0.932483, 0.131620, -0.336379,
		39.144058, 35.414993, 22.263247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.894104, 34.725906, 22.766932>,  <38.491322, 35.322861, 22.498713>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.894104, 34.725906, 22.766932> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.167362, 35.004242, 22.678270>,  <39.331318, 35.171242, 22.625072>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.167362, 35.004242, 22.678270>,  <38.894104, 34.725906, 22.766932>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.167362, 35.004242, 22.678270> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429254, -0.137050, 0.892725,
		0.590811, -0.705005, -0.392314,
		0.683142, 0.695835, -0.221655,
		39.372303, 35.212994, 22.611774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.521900, 34.427589, 23.005693>,  <38.894104, 34.725906, 22.766932>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.521900, 34.427589, 23.005693> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.600517, 34.818878, 22.978979>,  <39.647690, 35.053650, 22.962950>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.600517, 34.818878, 22.978979>,  <39.521900, 34.427589, 23.005693>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.600517, 34.818878, 22.978979> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.613607, -0.069588, 0.786539,
		0.764759, -0.195571, -0.613919,
		0.196545, 0.978218, -0.066786,
		39.659481, 35.112343, 22.958942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<39.520554, 38.766460, 18.863632> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.207607, 39.012489, 18.902815>,  <39.019840, 39.160107, 18.926325>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.207607, 39.012489, 18.902815>,  <39.520554, 38.766460, 18.863632>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.207607, 39.012489, 18.902815> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014458, 0.175174, -0.984432,
		-0.622653, -0.768768, -0.145942,
		-0.782365, 0.615069, 0.097958,
		38.972897, 39.197010, 18.932201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.160664, 38.555283, 18.352709>,  <39.520554, 38.766460, 18.863632>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.160664, 38.555283, 18.352709> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.019135, 38.918957, 18.440516>,  <38.934216, 39.137161, 18.493200>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.019135, 38.918957, 18.440516>,  <39.160664, 38.555283, 18.352709>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.019135, 38.918957, 18.440516> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002704, 0.235692, -0.971824,
		-0.935308, -0.343262, -0.085852,
		-0.353825, 0.909187, 0.219517,
		38.912987, 39.191711, 18.506371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.693604, 38.670116, 17.874384>,  <39.160664, 38.555283, 18.352709>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.693604, 38.670116, 17.874384> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.785622, 39.034840, 18.010437>,  <38.840832, 39.253674, 18.092068>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.785622, 39.034840, 18.010437>,  <38.693604, 38.670116, 17.874384>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.785622, 39.034840, 18.010437> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067838, 0.333631, -0.940260,
		-0.970813, 0.239374, 0.014895,
		0.230043, 0.911806, 0.340132,
		38.854633, 39.308380, 18.112476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.184952, 39.074478, 17.565489>,  <38.693604, 38.670116, 17.874384>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.184952, 39.074478, 17.565489> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.499611, 39.304321, 17.655838>,  <38.688404, 39.442226, 17.710047>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.499611, 39.304321, 17.655838>,  <38.184952, 39.074478, 17.565489>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.499611, 39.304321, 17.655838> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018402, 0.343855, -0.938842,
		-0.617132, 0.742692, 0.259918,
		0.786644, 0.574607, 0.225871,
		38.735603, 39.476704, 17.723598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.101521, 39.609047, 17.102057>,  <38.184952, 39.074478, 17.565489>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.101521, 39.609047, 17.102057> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.469288, 39.664524, 17.249264>,  <38.689949, 39.697811, 17.337587>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.469288, 39.664524, 17.249264>,  <38.101521, 39.609047, 17.102057>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.469288, 39.664524, 17.249264> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269257, 0.460072, -0.846070,
		-0.286660, 0.876982, 0.385654,
		0.919417, 0.138694, 0.368017,
		38.745113, 39.706131, 17.359669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.191486, 40.232540, 16.970804>,  <38.101521, 39.609047, 17.102057>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.191486, 40.232540, 16.970804> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.545483, 40.053898, 17.023472>,  <38.757881, 39.946712, 17.055073>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.545483, 40.053898, 17.023472>,  <38.191486, 40.232540, 16.970804>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.545483, 40.053898, 17.023472> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346090, 0.441797, -0.827670,
		0.311471, 0.778049, 0.545551,
		0.884991, -0.446604, 0.131668,
		38.810978, 39.919918, 17.062973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.714401, 40.816471, 16.931679>,  <38.191486, 40.232540, 16.970804>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.714401, 40.816471, 16.931679> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.915180, 40.477501, 16.862495>,  <39.035648, 40.274120, 16.820986>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.915180, 40.477501, 16.862495>,  <38.714401, 40.816471, 16.931679>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.915180, 40.477501, 16.862495> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437611, 0.421330, -0.794341,
		0.746018, 0.323031, 0.582330,
		0.501950, -0.847427, -0.172958,
		39.065765, 40.223274, 16.810608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.493183, 40.850246, 17.002924>,  <38.714401, 40.816471, 16.931679>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.493183, 40.850246, 17.002924> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.399223, 40.553955, 16.751165>,  <39.342846, 40.376179, 16.600111>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.399223, 40.553955, 16.751165>,  <39.493183, 40.850246, 17.002924>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.399223, 40.553955, 16.751165> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552812, 0.430792, -0.713314,
		0.799513, -0.515494, 0.308294,
		-0.234898, -0.740732, -0.629395,
		39.328754, 40.331734, 16.562347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.062992, 40.839470, 16.580770>,  <39.493183, 40.850246, 17.002924>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.062992, 40.839470, 16.580770> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.802471, 40.623333, 16.367666>,  <39.646156, 40.493652, 16.239803>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.802471, 40.623333, 16.367666>,  <40.062992, 40.839470, 16.580770>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.802471, 40.623333, 16.367666> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462383, 0.274086, -0.843255,
		0.601668, -0.795555, 0.071331,
		-0.651304, -0.540341, -0.532760,
		39.607079, 40.461231, 16.207838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.446209, 40.514477, 16.065573>,  <40.062992, 40.839470, 16.580770>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.446209, 40.514477, 16.065573> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.076378, 40.468102, 15.920406>,  <39.854477, 40.440277, 15.833306>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.076378, 40.468102, 15.920406>,  <40.446209, 40.514477, 16.065573>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.076378, 40.468102, 15.920406> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324908, 0.257507, -0.910014,
		0.198956, -0.959296, -0.200417,
		-0.924582, -0.115936, -0.362916,
		39.799004, 40.433319, 15.811532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.596123, 40.125656, 15.423951>,  <40.446209, 40.514477, 16.065573>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.596123, 40.125656, 15.423951> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.228359, 40.281868, 15.405277>,  <40.007702, 40.375595, 15.394073>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.228359, 40.281868, 15.405277>,  <40.596123, 40.125656, 15.423951>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.228359, 40.281868, 15.405277> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117652, 0.159820, -0.980110,
		-0.375302, -0.906611, -0.192886,
		-0.919405, 0.390531, -0.046684,
		39.952538, 40.399029, 15.391273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.175968, 39.823784, 14.887378>,  <40.596123, 40.125656, 15.423951>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.175968, 39.823784, 14.887378> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.023529, 40.185139, 14.966022>,  <39.932064, 40.401951, 15.013208>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.023529, 40.185139, 14.966022>,  <40.175968, 39.823784, 14.887378>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.023529, 40.185139, 14.966022> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269988, 0.312134, -0.910867,
		-0.884235, -0.294046, -0.362857,
		-0.381097, 0.903387, 0.196611,
		39.909199, 40.456154, 15.025004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.786747, 40.178246, 14.213339>,  <40.175968, 39.823784, 14.887378>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.786747, 40.178246, 14.213339> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.938965, 40.440769, 14.473936>,  <40.030296, 40.598282, 14.630294>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.938965, 40.440769, 14.473936>,  <39.786747, 40.178246, 14.213339>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.938965, 40.440769, 14.473936> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.551118, 0.404769, -0.729679,
		-0.742599, 0.636726, -0.207670,
		0.380547, 0.656310, 0.651492,
		40.053127, 40.637661, 14.669384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.056061, 39.950439, 14.181926>,  <39.786747, 40.178246, 14.213339>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.056061, 39.950439, 14.181926> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.838852, 40.031010, 14.508007>,  <38.708527, 40.079353, 14.703656>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.838852, 40.031010, 14.508007>,  <39.056061, 39.950439, 14.181926>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.838852, 40.031010, 14.508007> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.803451, -0.406861, -0.434661,
		0.244123, -0.891006, 0.382771,
		-0.543020, 0.201427, 0.815204,
		38.675945, 40.091438, 14.752568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.901672, 39.203991, 14.449924>,  <39.056061, 39.950439, 14.181926>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.901672, 39.203991, 14.449924> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.770988, 39.013985, 14.123093>,  <38.692577, 38.899982, 13.926993>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.770988, 39.013985, 14.123093>,  <38.901672, 39.203991, 14.449924>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.770988, 39.013985, 14.123093> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431088, -0.694458, 0.576099,
		-0.841085, 0.540450, 0.022112,
		-0.326709, -0.475017, -0.817080,
		38.672977, 38.871479, 13.877969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.184467, 39.012264, 14.586719>,  <38.901672, 39.203991, 14.449924>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.184467, 39.012264, 14.586719> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.301147, 38.765038, 14.294718>,  <38.371155, 38.616699, 14.119517>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.301147, 38.765038, 14.294718>,  <38.184467, 39.012264, 14.586719>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.301147, 38.765038, 14.294718> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308869, -0.783171, 0.539669,
		-0.905270, 0.068055, -0.419351,
		0.291696, -0.618071, -0.730001,
		38.388657, 38.579617, 14.075718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.689785, 38.556450, 14.562875>,  <38.184467, 39.012264, 14.586719>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.689785, 38.556450, 14.562875> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.990845, 38.358105, 14.389606>,  <38.171482, 38.239098, 14.285645>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.990845, 38.358105, 14.389606>,  <37.689785, 38.556450, 14.562875>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.990845, 38.358105, 14.389606> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316745, -0.849449, 0.422029,
		-0.577225, -0.180436, -0.796401,
		0.752651, -0.495862, -0.433171,
		38.216640, 38.209347, 14.259655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.379566, 37.962429, 14.483881>,  <37.689785, 38.556450, 14.562875>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.379566, 37.962429, 14.483881> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.751297, 37.843491, 14.396298>,  <37.974335, 37.772129, 14.343749>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.751297, 37.843491, 14.396298>,  <37.379566, 37.962429, 14.483881>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.751297, 37.843491, 14.396298> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188703, -0.892095, 0.410559,
		-0.317408, -0.340224, -0.885155,
		0.929324, -0.297346, -0.218957,
		38.030094, 37.754288, 14.330611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.319633, 37.299549, 14.051176>,  <37.379566, 37.962429, 14.483881>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.319633, 37.299549, 14.051176> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.671303, 37.315945, 14.241074>,  <37.882305, 37.325783, 14.355012>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.671303, 37.315945, 14.241074>,  <37.319633, 37.299549, 14.051176>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.671303, 37.315945, 14.241074> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257396, -0.797592, 0.545521,
		0.401011, -0.601803, -0.690669,
		0.879169, 0.040985, 0.474745,
		37.935055, 37.328239, 14.383497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.518417, 36.654461, 14.079519>,  <37.319633, 37.299549, 14.051176>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.518417, 36.654461, 14.079519> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.754883, 36.832348, 14.348666>,  <37.896763, 36.939079, 14.510155>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.754883, 36.832348, 14.348666>,  <37.518417, 36.654461, 14.079519>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.754883, 36.832348, 14.348666> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208913, -0.721350, 0.660310,
		0.779027, -0.530921, -0.333526,
		0.591161, 0.444721, 0.672867,
		37.932232, 36.965763, 14.550527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.657715, 36.176727, 14.470482>,  <37.518417, 36.654461, 14.079519>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.657715, 36.176727, 14.470482> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.770222, 36.475323, 14.711694>,  <37.837727, 36.654480, 14.856421>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.770222, 36.475323, 14.711694>,  <37.657715, 36.176727, 14.470482>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.770222, 36.475323, 14.711694> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110986, -0.598878, 0.793113,
		0.953189, -0.290007, -0.085598,
		0.281271, 0.746486, 0.603030,
		37.854603, 36.699268, 14.892603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.006966, 35.872471, 15.005015>,  <37.657715, 36.176727, 14.470482>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.006966, 35.872471, 15.005015> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.898689, 36.226357, 15.156804>,  <37.833721, 36.438690, 15.247877>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.898689, 36.226357, 15.156804>,  <38.006966, 35.872471, 15.005015>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.898689, 36.226357, 15.156804> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174003, -0.432664, 0.884605,
		0.946809, 0.173428, 0.271063,
		-0.270695, 0.884717, 0.379473,
		37.817482, 36.491772, 15.270646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.407928, 35.903412, 15.588493>,  <38.006966, 35.872471, 15.005015>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.407928, 35.903412, 15.588493> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.122555, 36.172619, 15.666524>,  <37.951332, 36.334145, 15.713343>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.122555, 36.172619, 15.666524>,  <38.407928, 35.903412, 15.588493>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.122555, 36.172619, 15.666524> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079375, -0.354222, 0.931787,
		0.696211, 0.649285, 0.306135,
		-0.713435, 0.673019, 0.195077,
		37.908524, 36.374523, 15.725047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.613174, 36.226814, 16.133541>,  <38.407928, 35.903412, 15.588493>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.613174, 36.226814, 16.133541> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.219101, 36.285053, 16.169809>,  <37.982658, 36.319996, 16.191570>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.219101, 36.285053, 16.169809>,  <38.613174, 36.226814, 16.133541>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.219101, 36.285053, 16.169809> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075483, -0.106646, 0.991428,
		0.154021, 0.983579, 0.094075,
		-0.985180, 0.145600, 0.090669,
		37.923546, 36.328732, 16.197010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.536839, 36.633854, 16.665028>,  <38.613174, 36.226814, 16.133541>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.536839, 36.633854, 16.665028> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.180882, 36.459675, 16.610666>,  <37.967308, 36.355167, 16.578049>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.180882, 36.459675, 16.610666>,  <38.536839, 36.633854, 16.665028>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.180882, 36.459675, 16.610666> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271187, 0.265451, 0.925199,
		-0.366798, 0.860188, -0.354312,
		-0.889897, -0.435446, -0.135905,
		37.913914, 36.329041, 16.569895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.103252, 37.052994, 17.091953>,  <38.536839, 36.633854, 16.665028>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.103252, 37.052994, 17.091953> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.940762, 36.695614, 17.015291>,  <37.843266, 36.481186, 16.969294>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.940762, 36.695614, 17.015291>,  <38.103252, 37.052994, 17.091953>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.940762, 36.695614, 17.015291> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214220, -0.110779, 0.970483,
		-0.888307, 0.435293, -0.146393,
		-0.406228, -0.893447, -0.191654,
		37.818893, 36.427578, 16.957794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.579739, 37.053135, 17.559486>,  <38.103252, 37.052994, 17.091953>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.579739, 37.053135, 17.559486> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.598675, 36.665051, 17.464453>,  <37.610035, 36.432198, 17.407433>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.598675, 36.665051, 17.464453>,  <37.579739, 37.053135, 17.559486>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.598675, 36.665051, 17.464453> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295317, -0.240811, 0.924553,
		-0.954226, 0.026393, -0.297921,
		0.047341, -0.970213, -0.237582,
		37.612877, 36.373985, 17.393179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.943737, 36.810417, 17.874254>,  <37.579739, 37.053135, 17.559486>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.943737, 36.810417, 17.874254> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.223503, 36.528038, 17.829613>,  <37.391361, 36.358608, 17.802828>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.223503, 36.528038, 17.829613>,  <36.943737, 36.810417, 17.874254>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.223503, 36.528038, 17.829613> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024473, -0.179713, 0.983414,
		-0.714300, -0.685080, -0.142970,
		0.699411, -0.705952, -0.111603,
		37.433327, 36.316254, 17.796131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.308487, 36.561226, 17.743330>,  <36.943737, 36.810417, 17.874254>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.308487, 36.561226, 17.743330> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.920254, 36.473934, 17.702656>,  <35.687313, 36.421558, 17.678251>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.920254, 36.473934, 17.702656>,  <36.308487, 36.561226, 17.743330>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.920254, 36.473934, 17.702656> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032394, 0.300145, -0.953344,
		0.238569, -0.928595, -0.284247,
		-0.970585, -0.218231, -0.101686,
		35.629078, 36.408463, 17.672150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.268150, 36.455791, 17.037151>,  <36.308487, 36.561226, 17.743330>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.268150, 36.455791, 17.037151> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.884762, 36.513828, 17.135366>,  <35.654728, 36.548649, 17.194296>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.884762, 36.513828, 17.135366>,  <36.268150, 36.455791, 17.037151>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.884762, 36.513828, 17.135366> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201315, 0.265644, -0.942818,
		-0.202017, -0.953091, -0.225402,
		-0.958468, 0.145089, 0.245536,
		35.597221, 36.557354, 17.209026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.912415, 36.036102, 16.471821>,  <36.268150, 36.455791, 17.037151>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.912415, 36.036102, 16.471821> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.696819, 36.324814, 16.645502>,  <35.567463, 36.498039, 16.749710>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.696819, 36.324814, 16.645502>,  <35.912415, 36.036102, 16.471821>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.696819, 36.324814, 16.645502> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329714, 0.293564, -0.897278,
		-0.775101, -0.626784, 0.079752,
		-0.538988, 0.721777, 0.434202,
		35.535122, 36.541348, 16.775763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.214462, 36.044479, 16.054798>,  <35.912415, 36.036102, 16.471821>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.214462, 36.044479, 16.054798> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.171623, 36.401451, 16.230118>,  <35.145920, 36.615635, 16.335310>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.171623, 36.401451, 16.230118>,  <35.214462, 36.044479, 16.054798>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.171623, 36.401451, 16.230118> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110346, 0.427440, -0.897284,
		-0.988106, -0.144461, 0.052698,
		-0.107097, 0.892427, 0.438297,
		35.139492, 36.669178, 16.361607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.656498, 36.380081, 15.717341>,  <35.214462, 36.044479, 16.054798>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.656498, 36.380081, 15.717341> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.881180, 36.677414, 15.862639>,  <35.015987, 36.855812, 15.949818>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.881180, 36.677414, 15.862639>,  <34.656498, 36.380081, 15.717341>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.881180, 36.677414, 15.862639> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126945, 0.511286, -0.849983,
		-0.817543, 0.431325, 0.381553,
		0.561702, 0.743333, 0.363244,
		35.049690, 36.900414, 15.971613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.248772, 37.004860, 15.587934>,  <34.656498, 36.380081, 15.717341>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.248772, 37.004860, 15.587934> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.631027, 37.110451, 15.640198>,  <34.860382, 37.173805, 15.671556>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.631027, 37.110451, 15.640198>,  <34.248772, 37.004860, 15.587934>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.631027, 37.110451, 15.640198> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038380, 0.551421, -0.833344,
		-0.292034, 0.791360, 0.537090,
		0.955638, 0.263978, 0.130661,
		34.917717, 37.189644, 15.679396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.197712, 37.678646, 15.472459>,  <34.248772, 37.004860, 15.587934>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.197712, 37.678646, 15.472459> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.582256, 37.587425, 15.410788>,  <34.812984, 37.532692, 15.373785>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.582256, 37.587425, 15.410788>,  <34.197712, 37.678646, 15.472459>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.582256, 37.587425, 15.410788> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024513, 0.486924, -0.873100,
		0.274188, 0.843146, 0.462521,
		0.961364, -0.228056, -0.154177,
		34.870667, 37.519009, 15.364534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.660000, 37.887199, 15.864839>,  <34.197712, 37.678646, 15.472459>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.660000, 37.887199, 15.864839> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.449722, 38.209984, 15.972514>,  <33.323555, 38.403656, 16.037119>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.449722, 38.209984, 15.972514>,  <33.660000, 37.887199, 15.864839>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.449722, 38.209984, 15.972514> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071455, -0.357211, 0.931286,
		0.847670, 0.470333, 0.245444,
		-0.525690, 0.806962, 0.269189,
		33.292015, 38.452072, 16.053270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.985363, 38.448822, 16.403795>,  <33.660000, 37.887199, 15.864839>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.985363, 38.448822, 16.403795> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.587738, 38.460732, 16.445671>,  <33.349163, 38.467876, 16.470797>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.587738, 38.460732, 16.445671>,  <33.985363, 38.448822, 16.403795>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.587738, 38.460732, 16.445671> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090107, -0.314384, 0.945010,
		0.061046, 0.948829, 0.309834,
		-0.994059, 0.029770, 0.104688,
		33.289520, 38.469662, 16.477077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.834801, 38.825260, 17.096302>,  <33.985363, 38.448822, 16.403795>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.834801, 38.825260, 17.096302> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.476406, 38.666882, 17.015867>,  <33.261368, 38.571854, 16.967606>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.476406, 38.666882, 17.015867>,  <33.834801, 38.825260, 17.096302>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.476406, 38.666882, 17.015867> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160543, -0.133389, 0.977974,
		-0.414049, 0.908534, 0.055948,
		-0.895985, -0.395947, -0.201089,
		33.207611, 38.548096, 16.955542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.352634, 39.067394, 17.588219>,  <33.834801, 38.825260, 17.096302>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.352634, 39.067394, 17.588219> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.166237, 38.741810, 17.449469>,  <33.054398, 38.546459, 17.366219>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.166237, 38.741810, 17.449469>,  <33.352634, 39.067394, 17.588219>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.166237, 38.741810, 17.449469> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242899, -0.259294, 0.934755,
		-0.850796, 0.519842, -0.076882,
		-0.465990, -0.813960, -0.346875,
		33.026440, 38.497623, 17.345406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.829769, 39.009201, 18.013958>,  <33.352634, 39.067394, 17.588219>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.829769, 39.009201, 18.013958> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.844776, 38.647850, 17.843081>,  <32.853779, 38.431038, 17.740553>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.844776, 38.647850, 17.843081>,  <32.829769, 39.009201, 18.013958>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.844776, 38.647850, 17.843081> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304085, -0.417543, 0.856266,
		-0.951906, 0.097781, -0.290368,
		0.037514, -0.903381, -0.427195,
		32.856030, 38.376835, 17.714922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.238613, 38.690506, 18.369339>,  <32.829769, 39.009201, 18.013958>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.238613, 38.690506, 18.369339> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.473228, 38.398079, 18.229902>,  <32.613998, 38.222622, 18.146240>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.473228, 38.398079, 18.229902>,  <32.238613, 38.690506, 18.369339>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.473228, 38.398079, 18.229902> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196458, -0.545970, 0.814445,
		-0.785731, -0.409223, -0.463857,
		0.586542, -0.731063, -0.348590,
		32.649193, 38.178761, 18.125324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.976580, 38.106976, 18.610767>,  <32.238613, 38.690506, 18.369339>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.976580, 38.106976, 18.610767> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.355587, 38.009846, 18.527590>,  <32.582993, 37.951569, 18.477684>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.355587, 38.009846, 18.527590>,  <31.976580, 38.106976, 18.610767>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.355587, 38.009846, 18.527590> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040128, -0.554960, 0.830909,
		-0.317166, -0.795648, -0.516092,
		0.947521, -0.242827, -0.207942,
		32.639843, 37.936996, 18.465208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<37.237915, 42.633766, 14.793898> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.540932, 42.443260, 14.972472>,  <37.722740, 42.328957, 15.079618>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.540932, 42.443260, 14.972472>,  <37.237915, 42.633766, 14.793898>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.540932, 42.443260, 14.972472> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.636362, -0.386331, 0.667676,
		-0.145516, -0.789888, -0.595736,
		0.757541, -0.476262, 0.446438,
		37.768192, 42.300381, 15.106403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.029839, 41.991009, 15.009278>,  <37.237915, 42.633766, 14.793898>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.029839, 41.991009, 15.009278> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.340954, 42.056046, 15.252133>,  <37.527622, 42.095066, 15.397846>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.340954, 42.056046, 15.252133>,  <37.029839, 41.991009, 15.009278>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.340954, 42.056046, 15.252133> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.567482, -0.233622, 0.789547,
		0.270211, -0.958638, -0.089442,
		0.777785, 0.162588, 0.607138,
		37.574291, 42.104820, 15.434275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.057491, 41.479576, 15.598353>,  <37.029839, 41.991009, 15.009278>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.057491, 41.479576, 15.598353> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.268158, 41.783073, 15.751683>,  <37.394558, 41.965172, 15.843681>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.268158, 41.783073, 15.751683>,  <37.057491, 41.479576, 15.598353>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.268158, 41.783073, 15.751683> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396999, -0.179200, 0.900155,
		0.751675, -0.626260, 0.206841,
		0.526665, 0.758740, 0.383325,
		37.426159, 42.010696, 15.866681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.231716, 41.195274, 16.155807>,  <37.057491, 41.479576, 15.598353>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.231716, 41.195274, 16.155807> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.282921, 41.588760, 16.206261>,  <37.313644, 41.824852, 16.236532>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.282921, 41.588760, 16.206261>,  <37.231716, 41.195274, 16.155807>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.282921, 41.588760, 16.206261> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446178, -0.056462, 0.893162,
		0.885742, -0.170612, 0.431686,
		0.128010, 0.983719, 0.126134,
		37.321323, 41.883877, 16.244101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.458271, 41.244156, 16.825375>,  <37.231716, 41.195274, 16.155807>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.458271, 41.244156, 16.825375> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.324181, 41.611240, 16.740112>,  <37.243725, 41.831490, 16.688955>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.324181, 41.611240, 16.740112>,  <37.458271, 41.244156, 16.825375>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.324181, 41.611240, 16.740112> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292470, 0.113705, 0.949491,
		0.895592, 0.380635, 0.230285,
		-0.335225, 0.917708, -0.213157,
		37.223614, 41.886551, 16.676165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.781799, 41.678711, 17.333149>,  <37.458271, 41.244156, 16.825375>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.781799, 41.678711, 17.333149> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.443249, 41.819595, 17.173351>,  <37.240120, 41.904125, 17.077473>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.443249, 41.819595, 17.173351>,  <37.781799, 41.678711, 17.333149>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.443249, 41.819595, 17.173351> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323953, 0.254917, 0.911083,
		0.422734, 0.900535, -0.101654,
		-0.846375, 0.352214, -0.399493,
		37.189335, 41.925259, 17.053503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.559414, 41.995628, 17.902403>,  <37.781799, 41.678711, 17.333149>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.559414, 41.995628, 17.902403> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.234558, 42.019867, 17.670282>,  <37.039642, 42.034412, 17.531010>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.234558, 42.019867, 17.670282>,  <37.559414, 41.995628, 17.902403>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.234558, 42.019867, 17.670282> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.566163, 0.158510, 0.808909,
		0.141003, 0.985496, -0.094424,
		-0.812144, 0.060599, -0.580301,
		36.990913, 42.038048, 17.496191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.267586, 42.601631, 18.092196>,  <37.559414, 41.995628, 17.902403>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.267586, 42.601631, 18.092196> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.976494, 42.392120, 17.915075>,  <36.801838, 42.266415, 17.808804>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.976494, 42.392120, 17.915075>,  <37.267586, 42.601631, 18.092196>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.976494, 42.392120, 17.915075> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.602105, 0.178700, 0.778161,
		-0.328453, 0.832902, -0.445413,
		-0.727728, -0.523775, -0.442800,
		36.758175, 42.234989, 17.782236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.626205, 42.914169, 18.296982>,  <37.267586, 42.601631, 18.092196>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.626205, 42.914169, 18.296982> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.495071, 42.551991, 18.189142>,  <36.416389, 42.334682, 18.124439>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.495071, 42.551991, 18.189142>,  <36.626205, 42.914169, 18.296982>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.495071, 42.551991, 18.189142> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512210, -0.069433, 0.856049,
		-0.793829, 0.418735, -0.441018,
		-0.327837, -0.905450, -0.269598,
		36.396721, 42.280357, 18.108263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.882633, 42.811390, 18.574949>,  <36.626205, 42.914169, 18.296982>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.882633, 42.811390, 18.574949> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.997356, 42.433807, 18.509613>,  <36.066193, 42.207256, 18.470411>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.997356, 42.433807, 18.509613>,  <35.882633, 42.811390, 18.574949>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.997356, 42.433807, 18.509613> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348232, -0.261573, 0.900174,
		-0.892454, -0.201300, -0.403739,
		0.286812, -0.943959, -0.163343,
		36.083401, 42.150620, 18.460609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.244865, 42.314106, 18.830843>,  <35.882633, 42.811390, 18.574949>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.244865, 42.314106, 18.830843> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.604801, 42.140491, 18.848295>,  <35.820763, 42.036324, 18.858767>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.604801, 42.140491, 18.848295>,  <35.244865, 42.314106, 18.830843>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.604801, 42.140491, 18.848295> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219948, -0.365058, 0.904630,
		-0.376716, -0.823616, -0.423959,
		0.899838, -0.434038, 0.043630,
		35.874752, 42.010281, 18.861385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.996067, 41.713207, 19.167355>,  <35.244865, 42.314106, 18.830843>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.996067, 41.713207, 19.167355> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.392380, 41.741096, 19.213808>,  <35.630169, 41.757832, 19.241680>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.392380, 41.741096, 19.213808>,  <34.996067, 41.713207, 19.167355>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.392380, 41.741096, 19.213808> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087554, -0.324570, 0.941801,
		0.103358, -0.943289, -0.315474,
		0.990783, 0.069722, 0.116135,
		35.689613, 41.762012, 19.248648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.715519, 41.097870, 19.022373>,  <34.996067, 41.713207, 19.167355>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.715519, 41.097870, 19.022373> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.323318, 41.032230, 19.065605>,  <34.087997, 40.992847, 19.091543>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.323318, 41.032230, 19.065605>,  <34.715519, 41.097870, 19.022373>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.323318, 41.032230, 19.065605> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168276, 0.417287, -0.893059,
		0.101450, -0.893836, -0.436766,
		-0.980505, -0.164099, 0.108078,
		34.029167, 40.983002, 19.098028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.540138, 40.616875, 18.562128>,  <34.715519, 41.097870, 19.022373>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.540138, 40.616875, 18.562128> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.202034, 40.819801, 18.629261>,  <33.999172, 40.941559, 18.669540>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.202034, 40.819801, 18.629261>,  <34.540138, 40.616875, 18.562128>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.202034, 40.819801, 18.629261> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053410, 0.232300, -0.971177,
		-0.531682, -0.829859, -0.169258,
		-0.845259, 0.507317, 0.167832,
		33.948456, 40.971996, 18.679611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.317539, 40.512398, 18.017706>,  <34.540138, 40.616875, 18.562128>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.317539, 40.512398, 18.017706> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.060539, 40.793015, 18.141012>,  <33.906338, 40.961384, 18.214996>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.060539, 40.793015, 18.141012>,  <34.317539, 40.512398, 18.017706>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.060539, 40.793015, 18.141012> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170396, 0.261413, -0.950068,
		-0.747098, -0.662949, -0.048419,
		-0.642503, 0.701543, 0.308265,
		33.867786, 41.003479, 18.233492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.681801, 40.422588, 17.592377>,  <34.317539, 40.512398, 18.017706>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.681801, 40.422588, 17.592377> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.644939, 40.778374, 17.771423>,  <33.622822, 40.991844, 17.878851>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.644939, 40.778374, 17.771423>,  <33.681801, 40.422588, 17.592377>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.644939, 40.778374, 17.771423> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239539, 0.416527, -0.876999,
		-0.966503, -0.188043, 0.174675,
		-0.092156, 0.889464, 0.447618,
		33.617294, 41.045212, 17.905708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.970127, 40.576904, 17.537046>,  <33.681801, 40.422588, 17.592377>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.970127, 40.576904, 17.537046> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.208668, 40.893585, 17.590075>,  <33.351791, 41.083595, 17.621891>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.208668, 40.893585, 17.590075>,  <32.970127, 40.576904, 17.537046>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.208668, 40.893585, 17.590075> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317592, 0.384374, -0.866829,
		-0.737227, 0.474829, 0.480660,
		0.596349, 0.791703, 0.132569,
		33.387573, 41.131096, 17.629845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.623592, 41.119091, 17.335266>,  <32.970127, 40.576904, 17.537046>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.623592, 41.119091, 17.335266> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.999084, 41.255733, 17.316998>,  <33.224380, 41.337719, 17.306036>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.999084, 41.255733, 17.316998>,  <32.623592, 41.119091, 17.335266>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.999084, 41.255733, 17.316998> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203275, 0.441789, -0.873786,
		-0.278312, 0.829536, 0.484161,
		0.938734, 0.341604, -0.045669,
		33.280704, 41.358215, 17.303297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.530552, 41.841179, 17.092573>,  <32.623592, 41.119091, 17.335266>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.530552, 41.841179, 17.092573> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.900108, 41.718582, 17.000925>,  <33.121841, 41.645023, 16.945936>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.900108, 41.718582, 17.000925>,  <32.530552, 41.841179, 17.092573>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.900108, 41.718582, 17.000925> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130894, 0.309510, -0.941844,
		0.359583, 0.900148, 0.245834,
		0.923887, -0.306493, -0.229118,
		33.177273, 41.626633, 16.932190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.716114, 42.339447, 16.719425>,  <32.530552, 41.841179, 17.092573>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.716114, 42.339447, 16.719425> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.990181, 42.066090, 16.618612>,  <33.154621, 41.902077, 16.558125>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.990181, 42.066090, 16.618612>,  <32.716114, 42.339447, 16.719425>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.990181, 42.066090, 16.618612> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003925, 0.349475, -0.936938,
		0.728375, 0.640970, 0.242131,
		0.685167, -0.683392, -0.252033,
		33.195732, 41.861073, 16.543003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.423473, 42.688046, 16.385998>,  <32.716114, 42.339447, 16.719425>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.423473, 42.688046, 16.385998> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.425766, 42.306301, 16.266554>,  <33.427143, 42.077255, 16.194887>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.425766, 42.306301, 16.266554>,  <33.423473, 42.688046, 16.385998>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.425766, 42.306301, 16.266554> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073328, 0.298213, -0.951679,
		0.997291, -0.016442, 0.071691,
		0.005731, -0.954358, -0.298611,
		33.427486, 42.019993, 16.176971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.965145, 42.648449, 16.034531>,  <33.423473, 42.688046, 16.385998>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.965145, 42.648449, 16.034531> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.732243, 42.348175, 15.909656>,  <33.592503, 42.168011, 15.834731>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.732243, 42.348175, 15.909656>,  <33.965145, 42.648449, 16.034531>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.732243, 42.348175, 15.909656> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015671, 0.394280, -0.918856,
		0.812857, -0.530115, -0.241335,
		-0.582253, -0.750681, -0.312186,
		33.557568, 42.122971, 15.816000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.266029, 42.340504, 15.390036>,  <33.965145, 42.648449, 16.034531>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.266029, 42.340504, 15.390036> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.869934, 42.286350, 15.403305>,  <33.632278, 42.253860, 15.411266>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.869934, 42.286350, 15.403305>,  <34.266029, 42.340504, 15.390036>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.869934, 42.286350, 15.403305> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077983, 0.340841, -0.936881,
		0.115527, -0.930323, -0.348071,
		-0.990239, -0.135378, 0.033173,
		33.572861, 42.245735, 15.413257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.173683, 42.203419, 14.769535>,  <34.266029, 42.340504, 15.390036>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.173683, 42.203419, 14.769535> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.787735, 42.229668, 14.871290>,  <33.556164, 42.245419, 14.932343>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.787735, 42.229668, 14.871290>,  <34.173683, 42.203419, 14.769535>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.787735, 42.229668, 14.871290> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233293, 0.231237, -0.944512,
		-0.120806, -0.970682, -0.207805,
		-0.964873, 0.065624, 0.254388,
		33.498272, 42.249355, 14.947607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.716545, 41.873486, 14.236709>,  <34.173683, 42.203419, 14.769535>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.716545, 41.873486, 14.236709> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.490585, 42.139835, 14.431644>,  <33.355011, 42.299644, 14.548606>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.490585, 42.139835, 14.431644>,  <33.716545, 41.873486, 14.236709>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.490585, 42.139835, 14.431644> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242730, 0.430375, -0.869402,
		-0.788652, -0.609416, -0.081491,
		-0.564899, 0.665875, 0.487339,
		33.321117, 42.339600, 14.577847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.309105, 41.381222, 14.391418>,  <33.716545, 41.873486, 14.236709>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.309105, 41.381222, 14.391418> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.092285, 41.195927, 14.110962>,  <33.962193, 41.084747, 13.942689>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.092285, 41.195927, 14.110962>,  <34.309105, 41.381222, 14.391418>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.092285, 41.195927, 14.110962> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430630, -0.563349, 0.705121,
		-0.721626, 0.684139, 0.105877,
		-0.542046, -0.463240, -0.701138,
		33.929672, 41.056953, 13.900620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.591434, 41.254158, 14.638224>,  <34.309105, 41.381222, 14.391418>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.591434, 41.254158, 14.638224> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.604176, 40.977440, 14.349666>,  <33.611820, 40.811409, 14.176531>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.604176, 40.977440, 14.349666>,  <33.591434, 41.254158, 14.638224>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.604176, 40.977440, 14.349666> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184083, -0.713475, 0.676068,
		-0.982394, 0.111260, -0.150075,
		0.031856, -0.691791, -0.721394,
		33.613731, 40.769901, 14.133247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.996498, 40.992054, 14.676175>,  <33.591434, 41.254158, 14.638224>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.996498, 40.992054, 14.676175> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.229626, 40.714413, 14.507156>,  <33.369503, 40.547829, 14.405746>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.229626, 40.714413, 14.507156>,  <32.996498, 40.992054, 14.676175>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.229626, 40.714413, 14.507156> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363641, -0.687798, 0.628251,
		-0.726696, -0.212502, -0.653266,
		0.582819, -0.694101, -0.422546,
		33.404472, 40.506184, 14.380393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.559601, 40.464924, 14.617229>,  <32.996498, 40.992054, 14.676175>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.559601, 40.464924, 14.617229> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.913483, 40.278877, 14.604837>,  <33.125813, 40.167252, 14.597402>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.913483, 40.278877, 14.604837>,  <32.559601, 40.464924, 14.617229>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.913483, 40.278877, 14.604837> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331776, -0.674981, 0.659033,
		-0.327437, -0.572774, -0.751475,
		0.884709, -0.465113, -0.030981,
		33.178894, 40.139343, 14.595543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.387344, 39.712074, 14.695084>,  <32.559601, 40.464924, 14.617229>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.387344, 39.712074, 14.695084> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.779358, 39.736202, 14.770867>,  <33.014565, 39.750679, 14.816338>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.779358, 39.736202, 14.770867>,  <32.387344, 39.712074, 14.695084>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.779358, 39.736202, 14.770867> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098182, -0.681769, 0.724949,
		0.172900, -0.729076, -0.662234,
		0.980034, 0.060324, 0.189460,
		33.073368, 39.754299, 14.827705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.683697, 38.999130, 14.617104>,  <32.387344, 39.712074, 14.695084>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.683697, 38.999130, 14.617104> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.928589, 39.214127, 14.849064>,  <33.075523, 39.343124, 14.988240>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.928589, 39.214127, 14.849064>,  <32.683697, 38.999130, 14.617104>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.928589, 39.214127, 14.849064> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027617, -0.718435, 0.695046,
		0.790198, -0.441543, -0.425003,
		0.612229, 0.537486, 0.579900,
		33.112259, 39.375374, 15.023034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.134624, 38.506813, 14.812223>,  <32.683697, 38.999130, 14.617104>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.134624, 38.506813, 14.812223> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.187172, 38.789593, 15.090208>,  <33.218700, 38.959259, 15.256999>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.187172, 38.789593, 15.090208>,  <33.134624, 38.506813, 14.812223>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.187172, 38.789593, 15.090208> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010471, -0.700008, 0.714058,
		0.991278, -0.101080, -0.084556,
		0.131367, 0.706945, 0.694961,
		33.226582, 39.001675, 15.298697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.700939, 38.358704, 15.204746>,  <33.134624, 38.506813, 14.812223>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.700939, 38.358704, 15.204746> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.481308, 38.582069, 15.453481>,  <33.349529, 38.716091, 15.602721>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.481308, 38.582069, 15.453481>,  <33.700939, 38.358704, 15.204746>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.481308, 38.582069, 15.453481> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015161, -0.750562, 0.660626,
		0.835631, 0.353310, 0.420586,
		-0.549081, 0.558417, 0.621836,
		33.316582, 38.749596, 15.640032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.434662, 38.240406, 15.102061>,  <33.700939, 38.358704, 15.204746>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.434662, 38.240406, 15.102061> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.722298, 37.976738, 15.014061>,  <34.894878, 37.818539, 14.961261>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.722298, 37.976738, 15.014061>,  <34.434662, 38.240406, 15.102061>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.722298, 37.976738, 15.014061> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162496, 0.467311, -0.869031,
		0.675649, 0.589164, 0.443153,
		0.719092, -0.659170, -0.220002,
		34.938026, 37.778988, 14.948061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.953564, 38.628475, 14.974725>,  <34.434662, 38.240406, 15.102061>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.953564, 38.628475, 14.974725> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.015900, 38.278214, 14.791885>,  <35.053303, 38.068054, 14.682182>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.015900, 38.278214, 14.791885>,  <34.953564, 38.628475, 14.974725>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.015900, 38.278214, 14.791885> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248772, 0.482630, -0.839751,
		0.955942, 0.017158, 0.293054,
		0.155845, -0.875656, -0.457098,
		35.062653, 38.015518, 14.654757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.727535, 38.638264, 14.695863>,  <34.953564, 38.628475, 14.974725>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.727535, 38.638264, 14.695863> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.529140, 38.351997, 14.499163>,  <35.410103, 38.180237, 14.381143>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.529140, 38.351997, 14.499163>,  <35.727535, 38.638264, 14.695863>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.529140, 38.351997, 14.499163> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379820, 0.330459, -0.864022,
		0.780856, -0.615318, 0.107923,
		-0.495984, -0.715668, -0.491751,
		35.380344, 38.137299, 14.351638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.222458, 38.341431, 14.250699>,  <35.727535, 38.638264, 14.695863>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.222458, 38.341431, 14.250699> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.852478, 38.282303, 14.110633>,  <35.630489, 38.246826, 14.026593>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.852478, 38.282303, 14.110633>,  <36.222458, 38.341431, 14.250699>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.852478, 38.282303, 14.110633> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276623, 0.370014, -0.886887,
		0.260660, -0.917191, -0.301357,
		-0.924952, -0.147814, -0.350164,
		35.574993, 38.237957, 14.005584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.290810, 37.980301, 13.619145>,  <36.222458, 38.341431, 14.250699>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.290810, 37.980301, 13.619145> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.930737, 38.154064, 13.606723>,  <35.714695, 38.258324, 13.599269>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.930737, 38.154064, 13.606723>,  <36.290810, 37.980301, 13.619145>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.930737, 38.154064, 13.606723> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251225, 0.459690, -0.851805,
		-0.355756, -0.774580, -0.522938,
		-0.900180, 0.434410, -0.031057,
		35.660683, 38.284386, 13.597405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.212261, 38.006401, 12.950229>,  <36.290810, 37.980301, 13.619145>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.212261, 38.006401, 12.950229> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.943886, 38.268330, 13.089395>,  <35.782860, 38.425488, 13.172894>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.943886, 38.268330, 13.089395>,  <36.212261, 38.006401, 12.950229>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.943886, 38.268330, 13.089395> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219064, 0.623299, -0.750673,
		-0.708413, -0.427442, -0.561645,
		-0.670942, 0.654822, 0.347915,
		35.742603, 38.464775, 13.193769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.934532, 38.128124, 12.329030>,  <36.212261, 38.006401, 12.950229>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.934532, 38.128124, 12.329030> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.839287, 38.407097, 12.599404>,  <35.782139, 38.574482, 12.761629>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.839287, 38.407097, 12.599404>,  <35.934532, 38.128124, 12.329030>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.839287, 38.407097, 12.599404> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317128, 0.713639, -0.624619,
		-0.918003, 0.065625, -0.391105,
		-0.238117, 0.697433, 0.675935,
		35.767853, 38.616325, 12.802185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.677631, 38.572041, 11.916576>,  <35.934532, 38.128124, 12.329030>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.677631, 38.572041, 11.916576> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.758347, 38.778393, 12.249599>,  <35.806778, 38.902203, 12.449413>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.758347, 38.778393, 12.249599>,  <35.677631, 38.572041, 11.916576>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.758347, 38.778393, 12.249599> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351825, 0.755128, -0.553173,
		-0.914057, 0.404540, -0.029120,
		0.201791, 0.515877, 0.832557,
		35.818886, 38.933155, 12.499367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.276608, 39.214607, 11.937656>,  <35.677631, 38.572041, 11.916576>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.276608, 39.214607, 11.937656> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.607853, 39.248028, 12.159373>,  <35.806602, 39.268078, 12.292403>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.607853, 39.248028, 12.159373>,  <35.276608, 39.214607, 11.937656>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.607853, 39.248028, 12.159373> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355431, 0.686375, -0.634475,
		-0.433462, 0.722433, 0.538704,
		0.828118, 0.083549, 0.554293,
		35.856289, 39.273094, 12.325661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<37.353325, 37.241138, 27.664362> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.344307, 36.983044, 27.358902>,  <37.338898, 36.828186, 27.175627>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.344307, 36.983044, 27.358902>,  <37.353325, 37.241138, 27.664362>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.344307, 36.983044, 27.358902> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.846616, 0.393940, -0.357845,
		0.531727, -0.654585, 0.537387,
		-0.022542, -0.645236, -0.763650,
		37.337543, 36.789474, 27.129807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.736759, 36.762951, 27.305855>,  <37.353325, 37.241138, 27.664362>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.736759, 36.762951, 27.305855> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.106441, 36.613419, 27.274624>,  <37.328251, 36.523701, 27.255886>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.106441, 36.613419, 27.274624>,  <36.736759, 36.762951, 27.305855>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.106441, 36.613419, 27.274624> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138379, -0.137262, -0.980821,
		0.355945, 0.917284, -0.178588,
		0.924205, -0.373831, -0.078075,
		37.383701, 36.501270, 27.251202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.070488, 37.151707, 26.829834>,  <36.736759, 36.762951, 27.305855>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.070488, 37.151707, 26.829834> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.261642, 36.800343, 26.831430>,  <37.376335, 36.589523, 26.832388>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.261642, 36.800343, 26.831430>,  <37.070488, 37.151707, 26.829834>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.261642, 36.800343, 26.831430> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004783, -0.001942, -0.999987,
		0.878411, 0.477895, 0.003273,
		0.477882, -0.878415, 0.003992,
		37.405006, 36.536819, 26.832628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.641918, 37.190800, 26.262186>,  <37.070488, 37.151707, 26.829834>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.641918, 37.190800, 26.262186> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.591240, 36.802868, 26.345490>,  <37.560833, 36.570107, 26.395472>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.591240, 36.802868, 26.345490>,  <37.641918, 37.190800, 26.262186>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.591240, 36.802868, 26.345490> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091185, -0.197672, -0.976018,
		0.987742, -0.142648, -0.063390,
		-0.126696, -0.969834, 0.208256,
		37.553230, 36.511917, 26.407967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.014034, 36.844578, 25.839266>,  <37.641918, 37.190800, 26.262186>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.014034, 36.844578, 25.839266> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.734482, 36.586117, 25.961943>,  <37.566750, 36.431042, 26.035549>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.734482, 36.586117, 25.961943>,  <38.014034, 36.844578, 25.839266>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.734482, 36.586117, 25.961943> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192814, -0.242714, -0.950743,
		0.688761, -0.723588, 0.045040,
		-0.698878, -0.646150, 0.306690,
		37.524818, 36.392273, 26.053949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.289574, 36.223083, 25.585684>,  <38.014034, 36.844578, 25.839266>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.289574, 36.223083, 25.585684> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.916660, 36.110859, 25.677023>,  <37.692913, 36.043526, 25.731827>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.916660, 36.110859, 25.677023>,  <38.289574, 36.223083, 25.585684>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.916660, 36.110859, 25.677023> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086197, -0.440771, -0.893471,
		0.351319, -0.852648, 0.386738,
		-0.932279, -0.280558, 0.228346,
		37.636978, 36.026691, 25.745527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.226555, 35.555889, 25.210726>,  <38.289574, 36.223083, 25.585684>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.226555, 35.555889, 25.210726> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.856819, 35.682243, 25.296343>,  <37.634979, 35.758057, 25.347713>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.856819, 35.682243, 25.296343>,  <38.226555, 35.555889, 25.210726>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.856819, 35.682243, 25.296343> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314953, -0.314931, -0.895334,
		-0.215414, -0.895005, 0.390592,
		-0.924338, 0.315886, 0.214044,
		37.579517, 35.777008, 25.360556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.876160, 35.088886, 24.934599>,  <38.226555, 35.555889, 25.210726>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.876160, 35.088886, 24.934599> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.598198, 35.375408, 24.959940>,  <37.431419, 35.547321, 24.975145>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.598198, 35.375408, 24.959940>,  <37.876160, 35.088886, 24.934599>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.598198, 35.375408, 24.959940> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416791, -0.329404, -0.847218,
		-0.585999, -0.615140, 0.527454,
		-0.694903, 0.716307, 0.063354,
		37.389729, 35.590302, 24.978947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.195118, 34.799007, 24.942043>,  <37.876160, 35.088886, 24.934599>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.195118, 34.799007, 24.942043> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.141609, 35.166737, 24.794014>,  <37.109505, 35.387375, 24.705196>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.141609, 35.166737, 24.794014>,  <37.195118, 34.799007, 24.942043>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.141609, 35.166737, 24.794014> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.527990, -0.382132, -0.758420,
		-0.838648, 0.093937, 0.536512,
		-0.133774, 0.919321, -0.370072,
		37.101479, 35.442532, 24.682993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.506454, 34.888672, 24.686491>,  <37.195118, 34.799007, 24.942043>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.506454, 34.888672, 24.686491> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.703594, 35.179333, 24.495045>,  <36.821880, 35.353729, 24.380177>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.703594, 35.179333, 24.495045>,  <36.506454, 34.888672, 24.686491>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.703594, 35.179333, 24.495045> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403677, -0.296331, -0.865582,
		-0.770806, 0.619811, 0.147285,
		0.492852, 0.726652, -0.478617,
		36.851448, 35.397327, 24.351460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.121754, 34.833660, 24.113771>,  <36.506454, 34.888672, 24.686491>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.121754, 34.833660, 24.113771> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.417583, 35.084789, 24.016714>,  <36.595081, 35.235466, 23.958481>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.417583, 35.084789, 24.016714>,  <36.121754, 34.833660, 24.113771>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.417583, 35.084789, 24.016714> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207480, -0.130294, -0.969523,
		-0.640302, 0.767375, 0.033899,
		0.739571, 0.627822, -0.242642,
		36.639454, 35.273136, 23.943922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.873184, 35.476463, 23.727703>,  <36.121754, 34.833660, 24.113771>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.873184, 35.476463, 23.727703> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.250881, 35.378391, 23.639805>,  <36.477501, 35.319550, 23.587065>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.250881, 35.378391, 23.639805>,  <35.873184, 35.476463, 23.727703>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.250881, 35.378391, 23.639805> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248601, -0.093329, -0.964099,
		0.215865, 0.964976, -0.149077,
		0.944246, -0.245176, -0.219748,
		36.534157, 35.304840, 23.573881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.628658, 36.183102, 23.746302>,  <35.873184, 35.476463, 23.727703>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.628658, 36.183102, 23.746302> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.257393, 36.331738, 23.754595>,  <35.034634, 36.420921, 23.759571>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.257393, 36.331738, 23.754595>,  <35.628658, 36.183102, 23.746302>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.257393, 36.331738, 23.754595> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109203, 0.218659, 0.969672,
		0.355789, 0.902279, -0.243530,
		-0.928164, 0.371593, 0.020735,
		34.978943, 36.443214, 23.760815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.692947, 36.777035, 24.238195>,  <35.628658, 36.183102, 23.746302>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.692947, 36.777035, 24.238195> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.299175, 36.709068, 24.220160>,  <35.062912, 36.668289, 24.209337>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.299175, 36.709068, 24.220160>,  <35.692947, 36.777035, 24.238195>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.299175, 36.709068, 24.220160> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077639, 0.190092, 0.978692,
		-0.157728, 0.966950, -0.200324,
		-0.984426, -0.169920, -0.045091,
		35.003849, 36.658092, 24.206633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.426125, 37.308662, 24.744114>,  <35.692947, 36.777035, 24.238195>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.426125, 37.308662, 24.744114> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.127010, 37.049191, 24.687496>,  <34.947544, 36.893509, 24.653526>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.127010, 37.049191, 24.687496>,  <35.426125, 37.308662, 24.744114>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.127010, 37.049191, 24.687496> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279852, 0.114623, 0.953176,
		-0.602082, 0.752381, -0.267247,
		-0.747784, -0.648679, -0.141543,
		34.902676, 36.854588, 24.645033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.790844, 37.544430, 25.086069>,  <35.426125, 37.308662, 24.744114>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.790844, 37.544430, 25.086069> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.717064, 37.152252, 25.058605>,  <34.672798, 36.916946, 25.042128>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.717064, 37.152252, 25.058605>,  <34.790844, 37.544430, 25.086069>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.717064, 37.152252, 25.058605> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.549078, 0.044854, 0.834566,
		-0.815164, 0.191632, -0.546612,
		-0.184448, -0.980441, -0.068657,
		34.661728, 36.858120, 25.038008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.091194, 37.478573, 25.385723>,  <34.790844, 37.544430, 25.086069>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.091194, 37.478573, 25.385723> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.296932, 37.136227, 25.407429>,  <34.420376, 36.930820, 25.420452>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.296932, 37.136227, 25.407429>,  <34.091194, 37.478573, 25.385723>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.296932, 37.136227, 25.407429> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277092, -0.105972, 0.954982,
		-0.811586, -0.506224, -0.291659,
		0.514343, -0.855866, 0.054265,
		34.451237, 36.879467, 25.423708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.629169, 37.115479, 25.840570>,  <34.091194, 37.478573, 25.385723>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.629169, 37.115479, 25.840570> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.979546, 36.922653, 25.848009>,  <34.189770, 36.806957, 25.852472>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.979546, 36.922653, 25.848009>,  <33.629169, 37.115479, 25.840570>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.979546, 36.922653, 25.848009> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077184, -0.101987, 0.991787,
		-0.476212, -0.870178, -0.126542,
		0.875937, -0.482068, 0.018596,
		34.242325, 36.778034, 25.853588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.509148, 36.610027, 26.396996>,  <33.629169, 37.115479, 25.840570>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.509148, 36.610027, 26.396996> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.905075, 36.557930, 26.374031>,  <34.142632, 36.526672, 26.360252>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.905075, 36.557930, 26.374031>,  <33.509148, 36.610027, 26.396996>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.905075, 36.557930, 26.374031> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055258, -0.020083, 0.998270,
		-0.131175, -0.991278, -0.012681,
		0.989819, -0.130248, -0.057411,
		34.202019, 36.518856, 26.356808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.720516, 36.017651, 26.700897>,  <33.509148, 36.610027, 26.396996>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.720516, 36.017651, 26.700897> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.089756, 36.170227, 26.681313>,  <34.311298, 36.261772, 26.669561>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.089756, 36.170227, 26.681313>,  <33.720516, 36.017651, 26.700897>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.089756, 36.170227, 26.681313> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194072, -0.352137, 0.915607,
		0.332009, -0.854695, -0.399083,
		0.923096, 0.381440, -0.048959,
		34.366684, 36.284660, 26.666624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.335094, 35.517120, 26.830042>,  <33.720516, 36.017651, 26.700897>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.335094, 35.517120, 26.830042> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.431778, 35.888721, 26.942139>,  <34.489788, 36.111683, 27.009398>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.431778, 35.888721, 26.942139>,  <34.335094, 35.517120, 26.830042>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.431778, 35.888721, 26.942139> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190172, -0.328558, 0.925140,
		0.951531, -0.170321, -0.256085,
		0.241709, 0.929000, 0.280243,
		34.504292, 36.167423, 27.026211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.068913, 35.535667, 27.148479>,  <34.335094, 35.517120, 26.830042>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.068913, 35.535667, 27.148479> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.906174, 35.877148, 27.278511>,  <34.808533, 36.082035, 27.356529>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.906174, 35.877148, 27.278511>,  <35.068913, 35.535667, 27.148479>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.906174, 35.877148, 27.278511> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265015, -0.230252, 0.936350,
		0.874211, 0.467098, -0.132567,
		-0.406844, 0.853700, 0.325077,
		34.784119, 36.133259, 27.376034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.547867, 35.781315, 27.709370>,  <35.068913, 35.535667, 27.148479>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.547867, 35.781315, 27.709370> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.193768, 35.963783, 27.745691>,  <34.981308, 36.073265, 27.767485>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.193768, 35.963783, 27.745691>,  <35.547867, 35.781315, 27.709370>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.193768, 35.963783, 27.745691> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115259, 0.026014, 0.992995,
		0.450614, 0.889511, -0.075607,
		-0.885247, 0.456172, 0.090802,
		34.928192, 36.100636, 27.772932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.624359, 36.215557, 28.234192>,  <35.547867, 35.781315, 27.709370>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.624359, 36.215557, 28.234192> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.224720, 36.221039, 28.218115>,  <34.984936, 36.224327, 28.208469>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.224720, 36.221039, 28.218115>,  <35.624359, 36.215557, 28.234192>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.224720, 36.221039, 28.218115> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039732, 0.032281, 0.998689,
		0.014979, 0.999385, -0.031707,
		-0.999098, 0.013700, -0.040192,
		34.924992, 36.225147, 28.206057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.307297, 36.844662, 28.647633>,  <35.624359, 36.215557, 28.234192>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.307297, 36.844662, 28.647633> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.022545, 36.564415, 28.628155>,  <34.851696, 36.396267, 28.616468>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.022545, 36.564415, 28.628155>,  <35.307297, 36.844662, 28.647633>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.022545, 36.564415, 28.628155> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108949, 0.041672, 0.993173,
		-0.693803, 0.712321, -0.105996,
		-0.711876, -0.700615, -0.048694,
		34.808983, 36.354229, 28.613546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.782928, 37.095551, 29.070625>,  <35.307297, 36.844662, 28.647633>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.782928, 37.095551, 29.070625> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.727863, 36.702293, 29.022476>,  <34.694824, 36.466339, 28.993587>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.727863, 36.702293, 29.022476>,  <34.782928, 37.095551, 29.070625>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.727863, 36.702293, 29.022476> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252710, -0.082644, 0.964006,
		-0.957699, 0.163124, -0.237072,
		-0.137660, -0.983138, -0.120371,
		34.686565, 36.407352, 28.986364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.115688, 36.962681, 29.313311>,  <34.782928, 37.095551, 29.070625>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.115688, 36.962681, 29.313311> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.350559, 36.640232, 29.342676>,  <34.491482, 36.446762, 29.360296>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.350559, 36.640232, 29.342676>,  <34.115688, 36.962681, 29.313311>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.350559, 36.640232, 29.342676> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174688, -0.037635, 0.983904,
		-0.790383, -0.590553, -0.162918,
		0.587179, -0.806121, 0.073416,
		34.526714, 36.398396, 29.364700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.717358, 37.451782, 29.053783>,  <34.115688, 36.962681, 29.313311>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.717358, 37.451782, 29.053783> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.849705, 37.805599, 29.185299>,  <33.929115, 38.017891, 29.264208>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.849705, 37.805599, 29.185299>,  <33.717358, 37.451782, 29.053783>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.849705, 37.805599, 29.185299> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.513885, 0.461109, -0.723395,
		-0.791483, 0.070392, 0.607123,
		0.330871, 0.884547, 0.328787,
		33.948967, 38.070965, 29.283936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.177734, 37.948429, 29.324768>,  <33.717358, 37.451782, 29.053783>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.177734, 37.948429, 29.324768> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.499279, 38.127659, 29.168289>,  <33.692207, 38.235195, 29.074402>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.499279, 38.127659, 29.168289>,  <33.177734, 37.948429, 29.324768>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.499279, 38.127659, 29.168289> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.561122, 0.353055, -0.748661,
		-0.197340, 0.821331, 0.535232,
		0.803865, 0.448072, -0.391195,
		33.740437, 38.262081, 29.050930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.039078, 38.728329, 29.264961>,  <33.177734, 37.948429, 29.324768>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.039078, 38.728329, 29.264961> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.339169, 38.648331, 29.012877>,  <33.519222, 38.600330, 28.861626>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.339169, 38.648331, 29.012877>,  <33.039078, 38.728329, 29.264961>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.339169, 38.648331, 29.012877> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416735, 0.596964, -0.685540,
		0.513316, 0.776941, 0.364513,
		0.750225, -0.199994, -0.630210,
		33.564236, 38.588333, 28.823814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.002472, 39.397125, 28.836727>,  <33.039078, 38.728329, 29.264961>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.002472, 39.397125, 28.836727> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.215069, 39.134716, 28.622385>,  <33.342628, 38.977268, 28.493780>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.215069, 39.134716, 28.622385>,  <33.002472, 39.397125, 28.836727>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.215069, 39.134716, 28.622385> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385538, 0.375931, -0.842637,
		0.754236, 0.654451, -0.053118,
		0.531496, -0.656026, -0.535857,
		33.374519, 38.937908, 28.461628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.381783, 39.819500, 28.279001>,  <33.002472, 39.397125, 28.836727>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.381783, 39.819500, 28.279001> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.340401, 39.442734, 28.151194>,  <33.315571, 39.216675, 28.074509>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.340401, 39.442734, 28.151194>,  <33.381783, 39.819500, 28.279001>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.340401, 39.442734, 28.151194> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260150, 0.335684, -0.905339,
		0.960010, -0.010543, -0.279769,
		-0.103459, -0.941915, -0.319517,
		33.309364, 39.160160, 28.055338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.504292, 39.892147, 27.546761>,  <33.381783, 39.819500, 28.279001>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.504292, 39.892147, 27.546761> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.338669, 39.531551, 27.597160>,  <33.239296, 39.315193, 27.627401>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.338669, 39.531551, 27.597160>,  <33.504292, 39.892147, 27.546761>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.338669, 39.531551, 27.597160> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470257, 0.093333, -0.877581,
		0.779367, -0.422625, -0.462575,
		-0.414061, -0.901486, 0.126001,
		33.214451, 39.261105, 27.634960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.793373, 39.383945, 27.036230>,  <33.504292, 39.892147, 27.546761>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.793373, 39.383945, 27.036230> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.445496, 39.232643, 27.163065>,  <33.236767, 39.141861, 27.239166>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.445496, 39.232643, 27.163065>,  <33.793373, 39.383945, 27.036230>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.445496, 39.232643, 27.163065> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334318, -0.021182, -0.942222,
		0.363122, -0.925457, -0.108038,
		-0.869697, -0.378260, 0.317089,
		33.184586, 39.119164, 27.258192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.739815, 38.810291, 26.653030>,  <33.793373, 39.383945, 27.036230>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.739815, 38.810291, 26.653030> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.360523, 38.864372, 26.767984>,  <33.132950, 38.896820, 26.836958>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.360523, 38.864372, 26.767984>,  <33.739815, 38.810291, 26.653030>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.360523, 38.864372, 26.767984> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300739, -0.091291, -0.949327,
		-0.102146, -0.986599, 0.127234,
		-0.948220, 0.135234, 0.287384,
		33.076057, 38.904934, 26.854200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.277565, 38.306129, 26.292429>,  <33.739815, 38.810291, 26.653030>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.277565, 38.306129, 26.292429> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.055153, 38.623676, 26.390905>,  <32.921707, 38.814205, 26.449991>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.055153, 38.623676, 26.390905>,  <33.277565, 38.306129, 26.292429>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.055153, 38.623676, 26.390905> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441949, -0.031529, -0.896486,
		-0.703928, -0.607275, 0.368379,
		-0.556027, 0.793866, 0.246191,
		32.888344, 38.861835, 26.464762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.581223, 38.174519, 25.948294>,  <33.277565, 38.306129, 26.292429>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.581223, 38.174519, 25.948294> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.574398, 38.560093, 26.054529>,  <32.570305, 38.791439, 26.118271>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.574398, 38.560093, 26.054529>,  <32.581223, 38.174519, 25.948294>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.574398, 38.560093, 26.054529> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370982, 0.240566, -0.896940,
		-0.928483, -0.113831, 0.353498,
		-0.017060, 0.963935, 0.265590,
		32.569279, 38.849274, 26.134207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.046677, 38.472458, 25.556330>,  <32.581223, 38.174519, 25.948294>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.046677, 38.472458, 25.556330> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.264038, 38.788960, 25.668495>,  <32.394455, 38.978863, 25.735794>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.264038, 38.788960, 25.668495>,  <32.046677, 38.472458, 25.556330>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.264038, 38.788960, 25.668495> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037112, 0.356349, -0.933615,
		-0.838654, 0.496919, 0.223005,
		0.543399, 0.791256, 0.280412,
		32.427059, 39.026337, 25.752619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.729515, 39.103127, 25.211834>,  <32.046677, 38.472458, 25.556330>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.729515, 39.103127, 25.211834> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.108723, 39.188210, 25.306501>,  <32.336246, 39.239262, 25.363302>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.108723, 39.188210, 25.306501>,  <31.729515, 39.103127, 25.211834>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.108723, 39.188210, 25.306501> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170391, 0.288803, -0.942104,
		-0.268745, 0.933460, 0.237547,
		0.948021, 0.212710, 0.236668,
		32.393127, 39.252022, 25.377502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.774679, 39.777439, 24.991188>,  <31.729515, 39.103127, 25.211834>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.774679, 39.777439, 24.991188> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.132053, 39.598156, 25.003086>,  <32.346478, 39.490585, 25.010225>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.132053, 39.598156, 25.003086>,  <31.774679, 39.777439, 24.991188>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.132053, 39.598156, 25.003086> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189414, 0.315869, -0.929704,
		0.407302, 0.836265, 0.367105,
		0.893436, -0.448205, 0.029746,
		32.400085, 39.463696, 25.012011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.285675, 40.251141, 24.855362>,  <31.774679, 39.777439, 24.991188>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.285675, 40.251141, 24.855362> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.476818, 39.907013, 24.784367>,  <32.591503, 39.700535, 24.741770>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.476818, 39.907013, 24.784367>,  <32.285675, 40.251141, 24.855362>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.476818, 39.907013, 24.784367> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196931, 0.301825, -0.932802,
		0.856079, 0.410792, 0.313653,
		0.477856, -0.860320, -0.177489,
		32.620174, 39.648918, 24.731119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.809044, 40.525497, 24.520830>,  <32.285675, 40.251141, 24.855362>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.809044, 40.525497, 24.520830> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.833698, 40.138786, 24.421606>,  <32.848492, 39.906757, 24.362072>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.833698, 40.138786, 24.421606>,  <32.809044, 40.525497, 24.520830>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.833698, 40.138786, 24.421606> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233540, 0.255602, -0.938151,
		0.970392, -0.000108, 0.241536,
		0.061636, -0.966782, -0.248059,
		32.852188, 39.848751, 24.347189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.350063, 40.459709, 24.000898>,  <32.809044, 40.525497, 24.520830>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.350063, 40.459709, 24.000898> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.132767, 40.128838, 23.943398>,  <33.002388, 39.930317, 23.908897>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.132767, 40.128838, 23.943398>,  <33.350063, 40.459709, 24.000898>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.132767, 40.128838, 23.943398> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279457, -0.016693, -0.960013,
		0.791701, -0.561694, 0.240229,
		-0.543244, -0.827177, -0.143753,
		32.969795, 39.880684, 23.900272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.809093, 39.928734, 23.800375>,  <33.350063, 40.459709, 24.000898>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.809093, 39.928734, 23.800375> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.460552, 39.814457, 23.640818>,  <33.251427, 39.745892, 23.545082>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.460552, 39.814457, 23.640818>,  <33.809093, 39.928734, 23.800375>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.460552, 39.814457, 23.640818> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447693, -0.130283, -0.884645,
		0.200764, -0.949425, 0.241424,
		-0.871358, -0.285689, -0.398895,
		33.199146, 39.728752, 23.521149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.988132, 39.344559, 23.268568>,  <33.809093, 39.928734, 23.800375>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.988132, 39.344559, 23.268568> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.615791, 39.468601, 23.191263>,  <33.392387, 39.543026, 23.144880>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.615791, 39.468601, 23.191263>,  <33.988132, 39.344559, 23.268568>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.615791, 39.468601, 23.191263> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175232, -0.085266, -0.980828,
		-0.320638, -0.946871, 0.025030,
		-0.930852, 0.310105, -0.193262,
		33.336536, 39.561634, 23.133286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.793133, 38.891922, 22.835772>,  <33.988132, 39.344559, 23.268568>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.793133, 38.891922, 22.835772> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.551567, 39.205162, 22.776403>,  <33.406628, 39.393108, 22.740782>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.551567, 39.205162, 22.776403>,  <33.793133, 38.891922, 22.835772>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.551567, 39.205162, 22.776403> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129786, -0.087111, -0.987708,
		-0.786408, -0.615759, -0.049028,
		-0.603919, 0.783104, -0.148422,
		33.370392, 39.440094, 22.731876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.569382, 38.801964, 22.043756>,  <33.793133, 38.891922, 22.835772>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.569382, 38.801964, 22.043756> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.525246, 39.187428, 22.141066>,  <33.498764, 39.418705, 22.199451>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.525246, 39.187428, 22.141066>,  <33.569382, 38.801964, 22.043756>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.525246, 39.187428, 22.141066> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194104, 0.260946, -0.945638,
		-0.974756, -0.057120, -0.215843,
		-0.110338, 0.963662, 0.243272,
		33.492146, 39.476524, 22.214046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.110092, 39.029526, 21.498314>,  <33.569382, 38.801964, 22.043756>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.110092, 39.029526, 21.498314> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.308964, 39.351940, 21.626760>,  <33.428288, 39.545387, 21.703829>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.308964, 39.351940, 21.626760>,  <33.110092, 39.029526, 21.498314>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.308964, 39.351940, 21.626760> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377440, 0.132322, -0.916532,
		-0.781249, 0.576884, -0.238442,
		0.497181, 0.806037, 0.321116,
		33.458118, 39.593750, 21.723095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.752308, 39.537376, 21.084757>,  <33.110092, 39.029526, 21.498314>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.752308, 39.537376, 21.084757> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.088982, 39.710350, 21.214108>,  <33.290985, 39.814133, 21.291718>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.088982, 39.710350, 21.214108>,  <32.752308, 39.537376, 21.084757>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.088982, 39.710350, 21.214108> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089597, 0.478727, -0.873380,
		-0.532489, 0.764081, 0.364191,
		0.841681, 0.432435, 0.323377,
		33.341488, 39.840080, 21.311121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.618023, 40.233852, 20.761023>,  <32.752308, 39.537376, 21.084757>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.618023, 40.233852, 20.761023> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.003845, 40.193520, 20.858561>,  <33.235340, 40.169319, 20.917084>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.003845, 40.193520, 20.858561>,  <32.618023, 40.233852, 20.761023>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.003845, 40.193520, 20.858561> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258878, 0.540515, -0.800516,
		-0.051083, 0.835270, 0.547462,
		0.964558, -0.100833, 0.243844,
		33.293213, 40.163269, 20.931713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.948750, 40.918243, 20.684099>,  <32.618023, 40.233852, 20.761023>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.948750, 40.918243, 20.684099> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.242352, 40.648930, 20.648495>,  <33.418514, 40.487343, 20.627132>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.242352, 40.648930, 20.648495>,  <32.948750, 40.918243, 20.684099>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.242352, 40.648930, 20.648495> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203576, 0.343164, -0.916949,
		0.647913, 0.654926, 0.388949,
		0.734007, -0.673284, -0.089013,
		33.462555, 40.446945, 20.621790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.530006, 41.291264, 20.525730>,  <32.948750, 40.918243, 20.684099>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.530006, 41.291264, 20.525730> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.579243, 40.918518, 20.389215>,  <33.608788, 40.694870, 20.307306>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.579243, 40.918518, 20.389215>,  <33.530006, 41.291264, 20.525730>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.579243, 40.918518, 20.389215> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222737, 0.361073, -0.905547,
		0.967076, 0.035451, 0.252007,
		0.123096, -0.931864, -0.341289,
		33.616173, 40.638958, 20.286829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.174698, 41.356361, 20.312647>,  <33.530006, 41.291264, 20.525730>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.174698, 41.356361, 20.312647> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.030819, 41.029827, 20.131889>,  <33.944492, 40.833908, 20.023434>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.030819, 41.029827, 20.131889>,  <34.174698, 41.356361, 20.312647>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.030819, 41.029827, 20.131889> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141721, 0.430894, -0.891204,
		0.922242, -0.384610, -0.039301,
		-0.359701, -0.816337, -0.451896,
		33.922909, 40.784927, 19.996321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.595459, 41.226379, 19.788919>,  <34.174698, 41.356361, 20.312647>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.595459, 41.226379, 19.788919> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.246418, 41.056042, 19.693239>,  <34.036991, 40.953838, 19.635832>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.246418, 41.056042, 19.693239>,  <34.595459, 41.226379, 19.788919>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.246418, 41.056042, 19.693239> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010338, 0.505733, -0.862628,
		0.488309, -0.750265, -0.445710,
		-0.872610, -0.425837, -0.239197,
		33.984634, 40.928288, 19.621479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.313427, 41.004543, 19.503641>,  <34.595459, 41.226379, 19.788919>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.313427, 41.004543, 19.503641> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.637623, 41.236664, 19.535530>,  <35.832142, 41.375938, 19.554663>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.637623, 41.236664, 19.535530>,  <35.313427, 41.004543, 19.503641>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.637623, 41.236664, 19.535530> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280799, -0.504359, 0.816562,
		0.514062, -0.639429, -0.571726,
		0.810489, 0.580304, 0.079721,
		35.880768, 41.410755, 19.559446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.876022, 40.659737, 19.488867>,  <35.313427, 41.004543, 19.503641>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.876022, 40.659737, 19.488867> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.008556, 40.993702, 19.664656>,  <36.088078, 41.194080, 19.770128>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.008556, 40.993702, 19.664656>,  <35.876022, 40.659737, 19.488867>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.008556, 40.993702, 19.664656> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306817, -0.535812, 0.786618,
		0.892232, -0.125800, -0.433701,
		0.331339, 0.834913, 0.439472,
		36.107960, 41.244175, 19.796497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.446873, 40.525654, 19.714674>,  <35.876022, 40.659737, 19.488867>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.446873, 40.525654, 19.714674> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.410263, 40.856514, 19.936464>,  <36.388298, 41.055031, 20.069538>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.410263, 40.856514, 19.936464>,  <36.446873, 40.525654, 19.714674>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.410263, 40.856514, 19.936464> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486672, -0.448630, 0.749588,
		0.868777, 0.338451, -0.361493,
		-0.091522, 0.827153, 0.554474,
		36.382805, 41.104660, 20.102806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.084866, 40.605701, 20.070999>,  <36.446873, 40.525654, 19.714674>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.084866, 40.605701, 20.070999> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.802532, 40.799629, 20.277592>,  <36.633133, 40.915985, 20.401546>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.802532, 40.799629, 20.277592>,  <37.084866, 40.605701, 20.070999>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.802532, 40.799629, 20.277592> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375561, -0.362088, 0.853139,
		0.600627, 0.796144, 0.073496,
		-0.705834, 0.484816, 0.516481,
		36.590782, 40.945072, 20.432535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.470650, 40.880772, 20.591667>,  <37.084866, 40.605701, 20.070999>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.470650, 40.880772, 20.591667> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.095711, 40.888802, 20.730793>,  <36.870747, 40.893620, 20.814268>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.095711, 40.888802, 20.730793>,  <37.470650, 40.880772, 20.591667>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.095711, 40.888802, 20.730793> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335893, -0.212936, 0.917515,
		0.092483, 0.976860, 0.192852,
		-0.937349, 0.020077, 0.347814,
		36.814507, 40.894825, 20.835136>
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
