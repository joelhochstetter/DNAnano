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
	right 1.6 * <0.99995, 0, 0.00999983>
	location <54.4867, 55, 106.329>
	look_at <55, 55, 55.0001>
	direction <0.513302, 0, -51.3289>
	angle 67.0682
}


# declare cpy_camera_pos = <54.4867, 55, 106.329>;
# if (DRAW_FOG = 1)
fog {
	fog_type 2
	up vnormalize(cpy_camera_pos)
	color rgbt<1,1,1,0.3>
	distance 1e-5
	fog_alt 3e-3
	fog_offset 88
}
# end


// LIGHTS

# declare lum = 6;
global_settings {
	ambient_light rgb lum * <0.05, 0.05, 0.05>
	max_trace_level 15
}# declare cpy_direct_light_amount = 0.25;
light_source
{	1000 * <-0.98995, -1, 1.00995>,
	rgb lum * cpy_direct_light_amount
	parallel
}

light_source
{	1000 * <0.98995, 1, -1.00995>,
	rgb lum * cpy_direct_light_amount
	parallel
}

// strand 0

// nucleotide -1

// particle -1
sphere {
	<36.320541, 52.248787, 49.807613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.465710, 52.575005, 49.627312>,  <36.552811, 52.770733, 49.519131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.465710, 52.575005, 49.627312>,  <36.320541, 52.248787, 49.807613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.465710, 52.575005, 49.627312> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.886903, 0.450701, 0.101356,
		0.285816, 0.362993, 0.886874,
		0.362923, 0.815540, -0.450757,
		36.574585, 52.819668, 49.492085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.193447, 52.968201, 50.111015>,  <36.320541, 52.248787, 49.807613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.193447, 52.968201, 50.111015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.274570, 53.123161, 49.751286>,  <36.323242, 53.216137, 49.535446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.274570, 53.123161, 49.751286>,  <36.193447, 52.968201, 50.111015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.274570, 53.123161, 49.751286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.724515, 0.677206, 0.128338,
		0.658748, 0.625547, 0.418021,
		0.202805, 0.387405, -0.899326,
		36.335411, 53.239384, 49.481487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.098461, 53.717102, 50.101456>,  <36.193447, 52.968201, 50.111015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.098461, 53.717102, 50.101456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.006630, 53.643959, 49.719070>,  <35.951530, 53.600075, 49.489639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.006630, 53.643959, 49.719070>,  <36.098461, 53.717102, 50.101456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.006630, 53.643959, 49.719070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.634005, 0.773317, 0.004340,
		0.738466, 0.607079, -0.293467,
		-0.229578, -0.182855, -0.955959,
		35.937756, 53.589104, 49.432281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.561550, 54.152802, 50.361111>,  <36.098461, 53.717102, 50.101456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.561550, 54.152802, 50.361111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.604584, 53.834770, 50.122353>,  <36.630405, 53.643951, 49.979099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.604584, 53.834770, 50.122353>,  <36.561550, 54.152802, 50.361111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.604584, 53.834770, 50.122353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.856189, 0.379259, -0.350861,
		0.505338, -0.473305, 0.721537,
		0.107584, -0.795075, -0.596893,
		36.636860, 53.596249, 49.943283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.216957, 53.908638, 50.505459>,  <36.561550, 54.152802, 50.361111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.216957, 53.908638, 50.505459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.113701, 53.828678, 50.127380>,  <37.051746, 53.780701, 49.900532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.113701, 53.828678, 50.127380>,  <37.216957, 53.908638, 50.505459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.113701, 53.828678, 50.127380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.843080, 0.431156, -0.321433,
		0.471785, -0.879854, 0.057237,
		-0.258136, -0.199903, -0.945201,
		37.036259, 53.768707, 49.843819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.393948, 53.637367, 51.143631>,  <37.216957, 53.908638, 50.505459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.393948, 53.637367, 51.143631> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.083050, 53.708447, 51.385067>,  <36.896511, 53.751095, 51.529926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.083050, 53.708447, 51.385067>,  <37.393948, 53.637367, 51.143631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.083050, 53.708447, 51.385067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104208, -0.909691, 0.401999,
		0.620510, 0.375350, 0.688534,
		-0.777244, 0.177694, 0.603587,
		36.849876, 53.761753, 51.566143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.396732, 53.473103, 51.918705>,  <37.393948, 53.637367, 51.143631>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.396732, 53.473103, 51.918705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.007370, 53.472538, 51.827065>,  <36.773754, 53.472198, 51.772079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.007370, 53.472538, 51.827065>,  <37.396732, 53.473103, 51.918705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.007370, 53.472538, 51.827065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052269, -0.972239, 0.228077,
		-0.223060, 0.233985, 0.946306,
		-0.973403, -0.001413, -0.229098,
		36.715351, 53.472115, 51.758335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.947044, 53.092884, 52.384605>,  <37.396732, 53.473103, 51.918705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.947044, 53.092884, 52.384605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.681290, 53.134079, 52.088501>,  <36.521835, 53.158794, 51.910839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.681290, 53.134079, 52.088501>,  <36.947044, 53.092884, 52.384605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.681290, 53.134079, 52.088501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385300, -0.895894, 0.221173,
		-0.640416, 0.432167, 0.634902,
		-0.664388, 0.102985, -0.740258,
		36.481972, 53.164974, 51.866425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.135750, 52.726116, 53.031536>,  <36.947044, 53.092884, 52.384605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.135750, 52.726116, 53.031536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.378311, 52.415108, 53.098145>,  <37.523849, 52.228500, 53.138107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.378311, 52.415108, 53.098145>,  <37.135750, 52.726116, 53.031536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.378311, 52.415108, 53.098145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.790951, 0.568309, -0.226763,
		0.081680, 0.269218, 0.959609,
		0.606404, -0.777526, 0.166518,
		37.560234, 52.181850, 53.148102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.807201, 52.912716, 53.434189>,  <37.135750, 52.726116, 53.031536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.807201, 52.912716, 53.434189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.911991, 52.577709, 53.242378>,  <37.974865, 52.376705, 53.127293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.911991, 52.577709, 53.242378>,  <37.807201, 52.912716, 53.434189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.911991, 52.577709, 53.242378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.860443, 0.427715, -0.276943,
		0.437042, -0.340048, 0.832683,
		0.261977, -0.837512, -0.479522,
		37.990585, 52.326454, 53.098522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.442986, 52.614922, 53.725525>,  <37.807201, 52.912716, 53.434189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.442986, 52.614922, 53.725525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.394768, 52.529945, 53.337639>,  <38.365837, 52.478962, 53.104908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.394768, 52.529945, 53.337639>,  <38.442986, 52.614922, 53.725525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.394768, 52.529945, 53.337639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.936550, 0.299557, -0.182043,
		0.329156, -0.930127, 0.162850,
		-0.120540, -0.212438, -0.969712,
		38.358604, 52.466213, 53.046726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.954407, 52.111820, 53.511078>,  <38.442986, 52.614922, 53.725525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.954407, 52.111820, 53.511078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.847279, 52.352001, 53.209686>,  <38.783001, 52.496109, 53.028851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.847279, 52.352001, 53.209686>,  <38.954407, 52.111820, 53.511078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.847279, 52.352001, 53.209686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.936391, 0.346322, -0.056851,
		0.226809, -0.720774, -0.655013,
		-0.267822, 0.600454, -0.753476,
		38.766933, 52.532139, 52.983643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.466129, 52.029324, 52.877331>,  <38.954407, 52.111820, 53.511078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.466129, 52.029324, 52.877331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.263325, 52.370800, 52.829742>,  <39.141644, 52.575687, 52.801189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.263325, 52.370800, 52.829742>,  <39.466129, 52.029324, 52.877331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.263325, 52.370800, 52.829742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.829262, 0.445474, -0.337458,
		-0.235085, -0.269754, -0.933792,
		-0.507011, 0.853690, -0.118972,
		39.111221, 52.626907, 52.794052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.787262, 52.291187, 52.352325>,  <39.466129, 52.029324, 52.877331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.787262, 52.291187, 52.352325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.586567, 52.607189, 52.493271>,  <39.466148, 52.796791, 52.577839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.586567, 52.607189, 52.493271>,  <39.787262, 52.291187, 52.352325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.586567, 52.607189, 52.493271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.756642, 0.598231, -0.263842,
		-0.419229, 0.134232, -0.897902,
		-0.501737, 0.790001, 0.352362,
		39.436047, 52.844189, 52.598980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.837700, 53.014866, 52.035793>,  <39.787262, 52.291187, 52.352325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.837700, 53.014866, 52.035793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.721066, 53.315044, 52.273048>,  <39.651085, 53.495152, 52.415401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.721066, 53.315044, 52.273048>,  <39.837700, 53.014866, 52.035793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.721066, 53.315044, 52.273048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.703739, 0.588284, -0.398338,
		-0.647863, 0.301264, -0.699652,
		-0.291589, 0.750442, 0.593138,
		39.633587, 53.540176, 52.450989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.701580, 53.625877, 51.649628>,  <39.837700, 53.014866, 52.035793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.701580, 53.625877, 51.649628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.803185, 53.749435, 52.016247>,  <39.864147, 53.823570, 52.236217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.803185, 53.749435, 52.016247>,  <39.701580, 53.625877, 51.649628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.803185, 53.749435, 52.016247> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.724594, 0.566916, -0.391881,
		-0.640656, 0.763668, -0.079819,
		0.254016, 0.308897, 0.916547,
		39.879391, 53.842106, 52.291210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.745575, 54.382858, 51.681740>,  <39.701580, 53.625877, 51.649628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.745575, 54.382858, 51.681740> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.993046, 54.197952, 51.935844>,  <40.141529, 54.087009, 52.088306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.993046, 54.197952, 51.935844>,  <39.745575, 54.382858, 51.681740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.993046, 54.197952, 51.935844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.774956, 0.492016, -0.396691,
		-0.129180, 0.737719, 0.662634,
		0.618673, -0.462268, 0.635258,
		40.178646, 54.059273, 52.126423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.131771, 54.909237, 51.991249>,  <39.745575, 54.382858, 51.681740>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.131771, 54.909237, 51.991249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.343964, 54.570168, 51.993629>,  <40.471279, 54.366726, 51.995056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.343964, 54.570168, 51.993629>,  <40.131771, 54.909237, 51.991249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.343964, 54.570168, 51.993629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.807653, 0.503284, -0.307249,
		0.257453, 0.167797, 0.951611,
		0.530486, -0.847673, 0.005950,
		40.503109, 54.315865, 51.995415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.725090, 54.937439, 52.423580>,  <40.131771, 54.909237, 51.991249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.725090, 54.937439, 52.423580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.810802, 54.691673, 52.119850>,  <40.862228, 54.544212, 51.937611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.810802, 54.691673, 52.119850>,  <40.725090, 54.937439, 52.423580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.810802, 54.691673, 52.119850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.809217, 0.547038, -0.214282,
		0.547038, -0.568542, 0.614417,
		0.214282, -0.614417, -0.759325,
		40.875088, 54.507347, 51.892052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.436069, 54.638489, 52.384972>,  <40.725090, 54.937439, 52.423580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.436069, 54.638489, 52.384972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.356140, 54.600471, 51.994888>,  <41.308182, 54.577660, 51.760838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.356140, 54.600471, 51.994888>,  <41.436069, 54.638489, 52.384972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.356140, 54.600471, 51.994888> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.841422, 0.493347, -0.220494,
		0.502073, -0.864625, -0.018613,
		-0.199827, -0.095042, -0.975210,
		41.296192, 54.571960, 51.702324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.917202, 54.235870, 52.143593>,  <41.436069, 54.638489, 52.384972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.917202, 54.235870, 52.143593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.759094, 54.508446, 51.897209>,  <41.664230, 54.671989, 51.749378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.759094, 54.508446, 51.897209>,  <41.917202, 54.235870, 52.143593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.759094, 54.508446, 51.897209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.899964, 0.421555, -0.111155,
		0.183917, -0.598279, -0.779896,
		-0.395271, 0.681435, -0.615961,
		41.640514, 54.712875, 51.712421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.080692, 54.174961, 51.366066>,  <41.917202, 54.235870, 52.143593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.080692, 54.174961, 51.366066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.024525, 54.527245, 51.547012>,  <41.990826, 54.738617, 51.655579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.024525, 54.527245, 51.547012>,  <42.080692, 54.174961, 51.366066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.024525, 54.527245, 51.547012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.889809, 0.312614, -0.332434,
		-0.434193, 0.355838, -0.827560,
		-0.140415, 0.880711, 0.452363,
		41.982399, 54.791458, 51.682720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.563274, 54.260834, 50.695274>,  <42.080692, 54.174961, 51.366066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.563274, 54.260834, 50.695274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.734856, 53.904430, 50.635796>,  <42.837807, 53.690590, 50.600109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.734856, 53.904430, 50.635796>,  <42.563274, 54.260834, 50.695274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.734856, 53.904430, 50.635796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.824123, 0.453409, -0.339474,
		0.369891, 0.023079, 0.928789,
		0.428956, -0.891004, -0.148692,
		42.863541, 53.637131, 50.591187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.242863, 54.327465, 51.028889>,  <42.563274, 54.260834, 50.695274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.242863, 54.327465, 51.028889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.257713, 54.080284, 50.714752>,  <43.266624, 53.931976, 50.526272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.257713, 54.080284, 50.714752>,  <43.242863, 54.327465, 51.028889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.257713, 54.080284, 50.714752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.867746, 0.409701, -0.281357,
		0.495619, -0.671029, 0.551436,
		0.037124, -0.617952, -0.785339,
		43.268852, 53.894897, 50.479149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.929314, 53.934483, 50.952888>,  <43.242863, 54.327465, 51.028889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.929314, 53.934483, 50.952888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.762436, 53.963787, 50.590546>,  <43.662312, 53.981369, 50.373138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.762436, 53.963787, 50.590546>,  <43.929314, 53.934483, 50.952888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.762436, 53.963787, 50.590546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.884518, 0.261685, -0.386198,
		0.208759, -0.962369, -0.173970,
		-0.417190, 0.073257, -0.905862,
		43.637280, 53.985764, 50.318787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.310959, 53.606899, 50.458733>,  <43.929314, 53.934483, 50.952888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.310959, 53.606899, 50.458733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.120975, 53.891075, 50.251003>,  <44.006985, 54.061581, 50.126366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.120975, 53.891075, 50.251003>,  <44.310959, 53.606899, 50.458733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.120975, 53.891075, 50.251003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.865155, 0.269001, -0.423255,
		-0.160999, -0.650320, -0.742404,
		-0.474959, 0.710438, -0.519319,
		43.978489, 54.104206, 50.095207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.173592, 53.489517, 49.684479>,  <44.310959, 53.606899, 50.458733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.173592, 53.489517, 49.684479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.233261, 53.877453, 49.761589>,  <44.269062, 54.110214, 49.807854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.233261, 53.877453, 49.761589>,  <44.173592, 53.489517, 49.684479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.233261, 53.877453, 49.761589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.725861, 0.024983, -0.687387,
		-0.671470, 0.242469, -0.700241,
		0.149175, 0.969837, 0.192774,
		44.278015, 54.168404, 49.819420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.051823, 53.891720, 49.050873>,  <44.173592, 53.489517, 49.684479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.051823, 53.891720, 49.050873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.317043, 54.060974, 49.297874>,  <44.476177, 54.162529, 49.446075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.317043, 54.060974, 49.297874>,  <44.051823, 53.891720, 49.050873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.317043, 54.060974, 49.297874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.702169, -0.065651, -0.708977,
		-0.259457, 0.903683, -0.340646,
		0.663054, 0.423140, 0.617504,
		44.515961, 54.187916, 49.483128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.478779, 53.876637, 48.485161>,  <44.051823, 53.891720, 49.050873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.478779, 53.876637, 48.485161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.639256, 54.054810, 48.805321>,  <44.735542, 54.161713, 48.997417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.639256, 54.054810, 48.805321>,  <44.478779, 53.876637, 48.485161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.639256, 54.054810, 48.805321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.869772, 0.088814, -0.485395,
		-0.287296, 0.890900, -0.351792,
		0.401195, 0.445431, 0.800396,
		44.759613, 54.188438, 49.045441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.753025, 54.509785, 48.346062>,  <44.478779, 53.876637, 48.485161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.753025, 54.509785, 48.346062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.970802, 54.372124, 48.652039>,  <45.101471, 54.289528, 48.835625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.970802, 54.372124, 48.652039>,  <44.753025, 54.509785, 48.346062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.970802, 54.372124, 48.652039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.825010, 0.055041, -0.562432,
		0.151456, 0.937301, 0.313892,
		0.544445, -0.344148, 0.764946,
		45.134136, 54.268879, 48.881523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.322777, 55.019783, 48.527760>,  <44.753025, 54.509785, 48.346062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.322777, 55.019783, 48.527760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.416077, 54.653214, 48.657837>,  <45.472057, 54.433270, 48.735886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.416077, 54.653214, 48.657837>,  <45.322777, 55.019783, 48.527760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.416077, 54.653214, 48.657837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.945989, 0.136413, -0.294104,
		0.225164, 0.376232, 0.898750,
		0.233252, -0.916428, 0.325196,
		45.486053, 54.378284, 48.755394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.965576, 55.047180, 48.925587>,  <45.322777, 55.019783, 48.527760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.965576, 55.047180, 48.925587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.925083, 54.681770, 48.767990>,  <45.900787, 54.462524, 48.673431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.925083, 54.681770, 48.767990>,  <45.965576, 55.047180, 48.925587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.925083, 54.681770, 48.767990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.933884, 0.049255, -0.354167,
		0.342946, -0.403794, 0.848138,
		-0.101235, -0.913523, -0.393989,
		45.894714, 54.407715, 48.649792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.635071, 55.116062, 49.340580>,  <45.965576, 55.047180, 48.925587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.635071, 55.116062, 49.340580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.668709, 55.209797, 48.953175>,  <46.688892, 55.266037, 48.720730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.668709, 55.209797, 48.953175>,  <46.635071, 55.116062, 49.340580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.668709, 55.209797, 48.953175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.792032, 0.574072, 0.207669,
		0.604660, -0.784556, -0.137323,
		0.084095, 0.234334, -0.968512,
		46.693935, 55.280098, 48.662621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.398071, 55.213867, 49.263580>,  <46.635071, 55.116062, 49.340580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.398071, 55.213867, 49.263580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.399532, 55.346424, 48.886185>,  <47.400410, 55.425957, 48.659748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.399532, 55.346424, 48.886185>,  <47.398071, 55.213867, 49.263580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.399532, 55.346424, 48.886185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.798876, 0.566532, 0.202085,
		0.601485, -0.754468, -0.262668,
		0.003657, 0.331390, -0.943487,
		47.400631, 55.445843, 48.603138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.073967, 55.144901, 49.023010>,  <47.398071, 55.213867, 49.263580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.073967, 55.144901, 49.023010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.881584, 55.437523, 48.829720>,  <47.766155, 55.613094, 48.713745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.881584, 55.437523, 48.829720>,  <48.073967, 55.144901, 49.023010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.881584, 55.437523, 48.829720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.749694, 0.628924, 0.205946,
		0.454572, -0.263219, -0.850929,
		-0.480961, 0.731553, -0.483225,
		47.737297, 55.656990, 48.684753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.323231, 55.383205, 48.281567>,  <48.073967, 55.144901, 49.023010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.323231, 55.383205, 48.281567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.203915, 55.681358, 48.520042>,  <48.132324, 55.860249, 48.663128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.203915, 55.681358, 48.520042>,  <48.323231, 55.383205, 48.281567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.203915, 55.681358, 48.520042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.947692, 0.305623, 0.092053,
		-0.113594, 0.592458, -0.797552,
		-0.298287, 0.745377, 0.596185,
		48.114429, 55.904972, 48.698898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.633244, 56.036636, 48.011436>,  <48.323231, 55.383205, 48.281567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.633244, 56.036636, 48.011436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.529099, 56.064392, 48.396641>,  <48.466614, 56.081043, 48.627766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.529099, 56.064392, 48.396641>,  <48.633244, 56.036636, 48.011436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.529099, 56.064392, 48.396641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.825969, 0.532515, 0.184938,
		-0.499988, 0.843571, -0.195957,
		-0.260359, 0.069388, 0.963015,
		48.450993, 56.085209, 48.685547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.041492, 55.523281, 47.512318>,  <48.633244, 56.036636, 48.011436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.041492, 55.523281, 47.512318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.913689, 55.234657, 47.758003>,  <48.837006, 55.061481, 47.905415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.913689, 55.234657, 47.758003>,  <49.041492, 55.523281, 47.512318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.913689, 55.234657, 47.758003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240486, -0.565225, -0.789105,
		0.916558, -0.399839, 0.007071,
		-0.319512, -0.721560, 0.614217,
		48.817837, 55.018188, 47.942268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.411858, 54.773754, 47.502995>,  <49.041492, 55.523281, 47.512318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.411858, 54.773754, 47.502995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.018223, 54.769012, 47.573902>,  <48.782040, 54.766167, 47.616447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.018223, 54.769012, 47.573902>,  <49.411858, 54.773754, 47.502995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.018223, 54.769012, 47.573902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143669, -0.533898, -0.833254,
		0.104522, -0.845466, 0.523701,
		-0.984091, -0.011854, 0.177271,
		48.722996, 54.765457, 47.627083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.107742, 54.887714, 47.525356>,  <49.411858, 54.773754, 47.502995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.107742, 54.887714, 47.525356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.285915, 54.891224, 47.883465>,  <50.392818, 54.893330, 48.098331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.285915, 54.891224, 47.883465>,  <50.107742, 54.887714, 47.525356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.285915, 54.891224, 47.883465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137174, 0.987477, -0.077925,
		-0.884744, 0.157518, 0.438652,
		0.445434, 0.008772, 0.895272,
		50.419544, 54.893856, 48.152046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.658836, 55.247372, 47.987316>,  <50.107742, 54.887714, 47.525356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.658836, 55.247372, 47.987316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.046028, 55.295509, 48.075436>,  <50.278343, 55.324390, 48.128307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.046028, 55.295509, 48.075436>,  <49.658836, 55.247372, 47.987316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.046028, 55.295509, 48.075436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131559, 0.990620, 0.036928,
		-0.213790, -0.064728, 0.974733,
		0.967981, 0.120340, 0.220300,
		50.336422, 55.331612, 48.141525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.886414, 55.646191, 48.628685>,  <49.658836, 55.247372, 47.987316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.886414, 55.646191, 48.628685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.163292, 55.688156, 48.343071>,  <50.329422, 55.713337, 48.171703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.163292, 55.688156, 48.343071>,  <49.886414, 55.646191, 48.628685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.163292, 55.688156, 48.343071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214526, 0.974568, -0.064770,
		0.689084, 0.198013, 0.697104,
		0.692201, 0.104915, -0.714038,
		50.370953, 55.719631, 48.128860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.504978, 56.079113, 48.740944>,  <49.886414, 55.646191, 48.628685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.504978, 56.079113, 48.740944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.409634, 56.085423, 48.352524>,  <50.352428, 56.089207, 48.119473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.409634, 56.085423, 48.352524>,  <50.504978, 56.079113, 48.740944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.409634, 56.085423, 48.352524> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076959, 0.996417, 0.035076,
		0.968123, 0.083092, -0.236294,
		-0.238362, 0.015773, -0.971048,
		50.338123, 56.090153, 48.061211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.343246, 55.942696, 49.414425>,  <50.504978, 56.079113, 48.740944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.343246, 55.942696, 49.414425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.392254, 56.213535, 49.704674>,  <50.421658, 56.376038, 49.878822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.392254, 56.213535, 49.704674>,  <50.343246, 55.942696, 49.414425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.392254, 56.213535, 49.704674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003451, -0.731414, 0.681925,
		0.992460, -0.081047, -0.091951,
		0.122523, 0.677101, 0.725619,
		50.429012, 56.416664, 49.922359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.011059, 55.737431, 49.825298>,  <50.343246, 55.942696, 49.414425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.011059, 55.737431, 49.825298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.716557, 55.931351, 50.014149>,  <50.539856, 56.047703, 50.127457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.716557, 55.931351, 50.014149>,  <51.011059, 55.737431, 49.825298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.716557, 55.931351, 50.014149> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027194, -0.718310, 0.695191,
		0.676159, 0.498998, 0.542042,
		-0.736253, 0.484800, 0.472122,
		50.495682, 56.076790, 50.155785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.285080, 55.878654, 50.512089>,  <51.011059, 55.737431, 49.825298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.285080, 55.878654, 50.512089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.887794, 55.851692, 50.474174>,  <50.649422, 55.835514, 50.451424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.887794, 55.851692, 50.474174>,  <51.285080, 55.878654, 50.512089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.887794, 55.851692, 50.474174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000069, -0.815308, 0.579027,
		-0.116309, 0.575090, 0.809780,
		-0.993213, -0.067402, -0.094788,
		50.589832, 55.831470, 50.445740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.146946, 55.731667, 51.217438>,  <51.285080, 55.878654, 50.512089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.146946, 55.731667, 51.217438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.872749, 55.613983, 50.951042>,  <50.708229, 55.543373, 50.791206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.872749, 55.613983, 50.951042>,  <51.146946, 55.731667, 51.217438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.872749, 55.613983, 50.951042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194637, -0.807379, 0.557006,
		-0.701578, 0.511451, 0.496192,
		-0.685496, -0.294206, -0.665986,
		50.667099, 55.525723, 50.751247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.834209, 55.433907, 51.453358>,  <51.146946, 55.731667, 51.217438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.834209, 55.433907, 51.453358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.184891, 55.578949, 51.326927>,  <52.395298, 55.665974, 51.251068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.184891, 55.578949, 51.326927>,  <51.834209, 55.433907, 51.453358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.184891, 55.578949, 51.326927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189646, 0.864410, 0.465651,
		0.442068, -0.348296, 0.826599,
		0.876704, 0.362611, -0.316075,
		52.447903, 55.687733, 51.232105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.267582, 55.711063, 51.980412>,  <51.834209, 55.433907, 51.453358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.267582, 55.711063, 51.980412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.383549, 55.896984, 51.645771>,  <52.453129, 56.008537, 51.444988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.383549, 55.896984, 51.645771>,  <52.267582, 55.711063, 51.980412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.383549, 55.896984, 51.645771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177221, 0.885100, 0.430337,
		0.940501, 0.023502, 0.338978,
		0.289916, 0.464807, -0.836603,
		52.470524, 56.036427, 51.394791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.729153, 56.255062, 52.093678>,  <52.267582, 55.711063, 51.980412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.729153, 56.255062, 52.093678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.564754, 56.338326, 51.738655>,  <52.466114, 56.388283, 51.525642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.564754, 56.338326, 51.738655>,  <52.729153, 56.255062, 52.093678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.564754, 56.338326, 51.738655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140354, 0.947527, 0.287218,
		0.900766, 0.242617, -0.360217,
		-0.410999, 0.208158, -0.887553,
		52.441456, 56.400772, 51.472389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.118114, 56.732124, 51.660866>,  <52.729153, 56.255062, 52.093678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.118114, 56.732124, 51.660866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.718887, 56.737480, 51.636574>,  <52.479351, 56.740692, 51.621998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.718887, 56.737480, 51.636574>,  <53.118114, 56.732124, 51.660866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.718887, 56.737480, 51.636574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022130, 0.836138, 0.548072,
		0.058115, 0.548356, -0.834224,
		-0.998065, 0.013390, -0.060727,
		52.419468, 56.741497, 51.618355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.726040, 56.911423, 51.482498>,  <53.118114, 56.732124, 51.660866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.726040, 56.911423, 51.482498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.031898, 56.995884, 51.238949>,  <54.215412, 57.046562, 51.092819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.031898, 56.995884, 51.238949>,  <53.726040, 56.911423, 51.482498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.031898, 56.995884, 51.238949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281234, 0.740754, 0.610074,
		0.579847, -0.637727, 0.507032,
		0.764647, 0.211155, -0.608875,
		54.261292, 57.059231, 51.056286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.310566, 56.914547, 51.917576>,  <53.726040, 56.911423, 51.482498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.310566, 56.914547, 51.917576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.413757, 57.110207, 51.584305>,  <54.475670, 57.227604, 51.384342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.413757, 57.110207, 51.584305>,  <54.310566, 56.914547, 51.917576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.413757, 57.110207, 51.584305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546619, 0.637178, 0.543333,
		0.796653, -0.595595, -0.103004,
		0.257975, 0.489152, -0.833174,
		54.491150, 57.256954, 51.334354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.019470, 56.918949, 51.869843>,  <54.310566, 56.914547, 51.917576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.019470, 56.918949, 51.869843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.877876, 57.254745, 51.704945>,  <54.792919, 57.456223, 51.606007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.877876, 57.254745, 51.704945>,  <55.019470, 56.918949, 51.869843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.877876, 57.254745, 51.704945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563432, 0.543240, 0.622442,
		0.746484, -0.011936, -0.665297,
		-0.353987, 0.839492, -0.412245,
		54.771679, 57.506592, 51.581272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.602516, 57.382118, 51.749481>,  <55.019470, 56.918949, 51.869843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.602516, 57.382118, 51.749481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.283096, 57.621105, 51.720219>,  <55.091446, 57.764496, 51.702660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.283096, 57.621105, 51.720219>,  <55.602516, 57.382118, 51.749481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.283096, 57.621105, 51.720219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518110, 0.744123, 0.421715,
		0.306397, 0.298857, -0.903772,
		-0.798550, 0.597466, -0.073156,
		55.043530, 57.800346, 51.698273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.893932, 58.099224, 51.749561>,  <55.602516, 57.382118, 51.749481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.893932, 58.099224, 51.749561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.515503, 58.153091, 51.867409>,  <55.288445, 58.185413, 51.938118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.515503, 58.153091, 51.867409>,  <55.893932, 58.099224, 51.749561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.515503, 58.153091, 51.867409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290463, 0.755315, 0.587478,
		-0.143418, 0.641376, -0.753703,
		-0.946078, 0.134668, 0.294621,
		55.231678, 58.193493, 51.955795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.689850, 58.892391, 51.733238>,  <55.893932, 58.099224, 51.749561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.689850, 58.892391, 51.733238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.471092, 58.716156, 52.017994>,  <55.339836, 58.610413, 52.188847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.471092, 58.716156, 52.017994>,  <55.689850, 58.892391, 51.733238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.471092, 58.716156, 52.017994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110574, 0.804857, 0.583076,
		-0.829865, 0.397599, -0.391457,
		-0.546897, -0.440590, 0.711887,
		55.307022, 58.583981, 52.231560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.373062, 59.163090, 51.686523>,  <55.689850, 58.892391, 51.733238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.373062, 59.163090, 51.686523> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.415016, 58.814735, 51.494461>,  <56.440189, 58.605721, 51.379223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.415016, 58.814735, 51.494461>,  <56.373062, 59.163090, 51.686523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.415016, 58.814735, 51.494461> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.982264, 0.015264, 0.186881,
		-0.155424, -0.491241, 0.857045,
		0.104886, -0.870890, -0.480156,
		56.446484, 58.553467, 51.350414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.784996, 59.056396, 52.110062>,  <56.373062, 59.163090, 51.686523>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.784996, 59.056396, 52.110062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.787254, 58.791389, 51.810452>,  <56.788609, 58.632385, 51.630684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.787254, 58.791389, 51.810452>,  <56.784996, 59.056396, 52.110062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.787254, 58.791389, 51.810452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.983984, -0.129775, 0.122199,
		-0.178164, -0.737721, 0.651173,
		0.005643, -0.662515, -0.749027,
		56.788948, 58.592636, 51.585743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.099522, 58.422623, 52.351135>,  <56.784996, 59.056396, 52.110062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.099522, 58.422623, 52.351135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.142693, 58.479252, 51.957523>,  <57.168594, 58.513229, 51.721355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.142693, 58.479252, 51.957523>,  <57.099522, 58.422623, 52.351135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.142693, 58.479252, 51.957523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.981472, -0.172800, 0.082783,
		-0.158321, -0.974730, -0.157595,
		0.107924, 0.141569, -0.984028,
		57.175068, 58.521721, 51.662315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.114563, 57.864376, 51.812302>,  <57.099522, 58.422623, 52.351135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.114563, 57.864376, 51.812302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.355652, 58.183556, 51.811638>,  <57.500305, 58.375061, 51.811241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.355652, 58.183556, 51.811638>,  <57.114563, 57.864376, 51.812302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.355652, 58.183556, 51.811638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.725691, -0.547283, 0.416959,
		0.331803, -0.252516, -0.908924,
		0.602727, 0.797946, -0.001658,
		57.536469, 58.422939, 51.811142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.838081, 57.574562, 52.037640>,  <57.114563, 57.864376, 51.812302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.838081, 57.574562, 52.037640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.704872, 57.456982, 52.396011>,  <57.624947, 57.386433, 52.611034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.704872, 57.456982, 52.396011>,  <57.838081, 57.574562, 52.037640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.704872, 57.456982, 52.396011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.744726, -0.664784, 0.058705,
		0.578343, 0.686772, 0.440299,
		-0.333020, -0.293950, 0.895930,
		57.604965, 57.368797, 52.664791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.391212, 57.550594, 52.536896>,  <57.838081, 57.574562, 52.037640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.391212, 57.550594, 52.536896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.119347, 57.278877, 52.647621>,  <57.956226, 57.115849, 52.714054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.119347, 57.278877, 52.647621>,  <58.391212, 57.550594, 52.536896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.119347, 57.278877, 52.647621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.715062, -0.697703, 0.043548,
		0.163548, 0.227534, 0.959938,
		-0.679660, -0.679293, 0.276809,
		57.915447, 57.075089, 52.730663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.443314, 57.287804, 53.174976>,  <58.391212, 57.550594, 52.536896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.443314, 57.287804, 53.174976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.273285, 56.948563, 53.048470>,  <58.171268, 56.745018, 52.972565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.273285, 56.948563, 53.048470>,  <58.443314, 57.287804, 53.174976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.273285, 56.948563, 53.048470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.756342, -0.524748, 0.390622,
		-0.497251, -0.073165, 0.864516,
		-0.425074, -0.848107, -0.316270,
		58.145763, 56.694130, 52.953590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.206287, 57.328133, 53.075253>,  <58.443314, 57.287804, 53.174976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.206287, 57.328133, 53.075253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.433884, 57.150318, 53.351986>,  <59.570442, 57.043629, 53.518024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.433884, 57.150318, 53.351986>,  <59.206287, 57.328133, 53.075253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.433884, 57.150318, 53.351986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007582, 0.838424, 0.544965,
		-0.822309, -0.315326, 0.473685,
		0.568991, -0.444538, 0.691835,
		59.604580, 57.016956, 53.559536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.971619, 57.452896, 53.749069>,  <59.206287, 57.328133, 53.075253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.971619, 57.452896, 53.749069> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.346367, 57.346352, 53.839691>,  <59.571217, 57.282425, 53.894066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.346367, 57.346352, 53.839691>,  <58.971619, 57.452896, 53.749069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.346367, 57.346352, 53.839691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079043, 0.792450, 0.604794,
		-0.340628, -0.548705, 0.763476,
		0.936870, -0.266357, 0.226559,
		59.627426, 57.266445, 53.907658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.112206, 57.479603, 54.469379>,  <58.971619, 57.452896, 53.749069>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.112206, 57.479603, 54.469379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.443573, 57.536224, 54.252609>,  <59.642395, 57.570198, 54.122547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.443573, 57.536224, 54.252609>,  <59.112206, 57.479603, 54.469379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.443573, 57.536224, 54.252609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131272, 0.891526, 0.433531,
		0.544509, -0.430285, 0.719975,
		0.828419, 0.141549, -0.541928,
		59.692097, 57.578690, 54.090031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.777847, 57.626892, 54.905476>,  <59.112206, 57.479603, 54.469379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.777847, 57.626892, 54.905476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.732300, 57.806732, 54.551098>,  <59.704971, 57.914635, 54.338470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.732300, 57.806732, 54.551098>,  <59.777847, 57.626892, 54.905476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.732300, 57.806732, 54.551098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067450, 0.893183, 0.444605,
		0.991203, -0.009128, -0.132035,
		-0.113873, 0.449600, -0.885942,
		59.698139, 57.941612, 54.285316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.031998, 58.215206, 55.031071>,  <59.777847, 57.626892, 54.905476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.031998, 58.215206, 55.031071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.876938, 58.293228, 54.670696>,  <59.783901, 58.340042, 54.454472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.876938, 58.293228, 54.670696>,  <60.031998, 58.215206, 55.031071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.876938, 58.293228, 54.670696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073854, 0.967642, 0.241275,
		0.918845, 0.160067, -0.360698,
		-0.387647, 0.195056, -0.900935,
		59.760643, 58.351746, 54.400417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.596786, 58.745739, 55.040691>,  <60.031998, 58.215206, 55.031071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.596786, 58.745739, 55.040691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.947891, 58.850506, 55.201157>,  <61.158554, 58.913364, 55.297436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.947891, 58.850506, 55.201157>,  <60.596786, 58.745739, 55.040691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.947891, 58.850506, 55.201157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101985, -0.715999, 0.690611,
		0.468118, -0.647105, -0.601764,
		0.877761, 0.261916, 0.401167,
		61.211220, 58.929081, 55.321507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.959991, 58.206993, 55.141853>,  <60.596786, 58.745739, 55.040691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.959991, 58.206993, 55.141853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.111916, 58.450340, 55.420601>,  <61.203072, 58.596348, 55.587849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.111916, 58.450340, 55.420601>,  <60.959991, 58.206993, 55.141853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.111916, 58.450340, 55.420601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047700, -0.739441, 0.671530,
		0.923833, -0.288295, -0.251829,
		0.379811, 0.608369, 0.696872,
		61.225861, 58.632851, 55.629662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.618813, 57.871456, 55.482170>,  <60.959991, 58.206993, 55.141853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.618813, 57.871456, 55.482170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.448563, 58.141930, 55.722710>,  <61.346413, 58.304214, 55.867035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.448563, 58.141930, 55.722710>,  <61.618813, 57.871456, 55.482170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.448563, 58.141930, 55.722710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021513, -0.656800, 0.753758,
		0.904645, 0.333752, 0.265002,
		-0.425622, 0.676182, 0.601351,
		61.320877, 58.344784, 55.903114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.998905, 58.009235, 56.181358>,  <61.618813, 57.871456, 55.482170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.998905, 58.009235, 56.181358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.602280, 58.053101, 56.208977>,  <61.364304, 58.079418, 56.225548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.602280, 58.053101, 56.208977>,  <61.998905, 58.009235, 56.181358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.602280, 58.053101, 56.208977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014300, -0.622152, 0.782766,
		0.128794, 0.775179, 0.618474,
		-0.991568, 0.109659, 0.069044,
		61.304810, 58.085999, 56.229691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.505966, 57.608871, 56.537815>,  <61.998905, 58.009235, 56.181358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.505966, 57.608871, 56.537815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.508568, 57.468224, 56.912262>,  <62.510128, 57.383835, 57.136932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.508568, 57.468224, 56.912262>,  <62.505966, 57.608871, 56.537815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.508568, 57.468224, 56.912262> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.762422, 0.607483, 0.222884,
		-0.647047, 0.712268, 0.272037,
		0.006505, -0.351623, 0.936119,
		62.510521, 57.362736, 57.193096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.399956, 58.191265, 56.918983>,  <62.505966, 57.608871, 56.537815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.399956, 58.191265, 56.918983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.599525, 57.894855, 57.098740>,  <62.719269, 57.717010, 57.206593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.599525, 57.894855, 57.098740>,  <62.399956, 58.191265, 56.918983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.599525, 57.894855, 57.098740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.722464, 0.642036, 0.256585,
		-0.478660, 0.196650, 0.855695,
		0.498929, -0.741026, 0.449389,
		62.749203, 57.672546, 57.233555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.475788, 58.340630, 57.693756>,  <62.399956, 58.191265, 56.918983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.475788, 58.340630, 57.693756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.771584, 58.139473, 57.514755>,  <62.949062, 58.018780, 57.407352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.771584, 58.139473, 57.514755>,  <62.475788, 58.340630, 57.693756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.771584, 58.139473, 57.514755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.609178, 0.782804, 0.126965,
		0.286461, -0.366500, 0.885222,
		0.739488, -0.502887, -0.447506,
		62.993431, 57.988605, 57.380505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.983833, 58.284153, 58.096088>,  <62.475788, 58.340630, 57.693756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.983833, 58.284153, 58.096088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.107765, 58.305874, 57.716393>,  <63.182125, 58.318905, 57.488575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.107765, 58.305874, 57.716393>,  <62.983833, 58.284153, 58.096088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.107765, 58.305874, 57.716393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.574085, 0.785153, 0.232296,
		0.757913, -0.616917, 0.212090,
		0.309830, 0.054303, -0.949240,
		63.200714, 58.322166, 57.431622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.616241, 58.505638, 57.897987>,  <62.983833, 58.284153, 58.096088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.616241, 58.505638, 57.897987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.940414, 58.603199, 57.684929>,  <64.134918, 58.661736, 57.557095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.940414, 58.603199, 57.684929>,  <63.616241, 58.505638, 57.897987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.940414, 58.603199, 57.684929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.537994, -0.049978, -0.841465,
		-0.231853, 0.968512, 0.090713,
		0.810436, 0.243899, -0.532642,
		64.183548, 58.676369, 57.525135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.992977, 57.968052, 58.005852>,  <63.616241, 58.505638, 57.897987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.992977, 57.968052, 58.005852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.200012, 58.019855, 57.667542>,  <64.324234, 58.050938, 57.464558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.200012, 58.019855, 57.667542>,  <63.992977, 57.968052, 58.005852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.200012, 58.019855, 57.667542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.741995, -0.560174, 0.368305,
		-0.426082, -0.818189, -0.386032,
		0.517589, 0.129506, -0.845772,
		64.355286, 58.058708, 57.413811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.317680, 57.401196, 57.561153>,  <63.992977, 57.968052, 58.005852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.317680, 57.401196, 57.561153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.528503, 57.728531, 57.652824>,  <64.654999, 57.924934, 57.707829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.528503, 57.728531, 57.652824>,  <64.317680, 57.401196, 57.561153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.528503, 57.728531, 57.652824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.677494, -0.567418, 0.468015,
		0.513036, -0.091406, -0.853486,
		0.527063, 0.818341, 0.229179,
		64.686623, 57.974033, 57.721577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.107712, 57.458714, 57.264381>,  <64.317680, 57.401196, 57.561153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.107712, 57.458714, 57.264381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.024948, 57.619431, 57.621201>,  <64.975288, 57.715858, 57.835293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.024948, 57.619431, 57.621201>,  <65.107712, 57.458714, 57.264381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.024948, 57.619431, 57.621201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.709571, -0.566101, 0.419570,
		0.673568, 0.719788, -0.167963,
		-0.206918, 0.401791, 0.892048,
		64.962875, 57.739967, 57.888813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.849678, 57.785187, 57.662090>,  <65.107712, 57.458714, 57.264381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.849678, 57.785187, 57.662090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.546539, 57.710442, 57.912132>,  <65.364655, 57.665596, 58.062157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.546539, 57.710442, 57.912132>,  <65.849678, 57.785187, 57.662090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.546539, 57.710442, 57.912132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.646639, -0.342604, 0.681528,
		0.086813, 0.920709, 0.380471,
		-0.757840, -0.186862, 0.625109,
		65.319191, 57.654385, 58.099667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.095207, 57.967308, 58.358795>,  <65.849678, 57.785187, 57.662090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.095207, 57.967308, 58.358795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.801193, 57.704048, 58.423996>,  <65.624786, 57.546093, 58.463116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.801193, 57.704048, 58.423996>,  <66.095207, 57.967308, 58.358795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.801193, 57.704048, 58.423996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.605436, -0.528860, 0.594773,
		-0.305244, 0.535864, 0.787195,
		-0.735033, -0.658147, 0.163000,
		65.580681, 57.506603, 58.472897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.948746, 57.766731, 59.047092>,  <66.095207, 57.967308, 58.358795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.948746, 57.766731, 59.047092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.883392, 57.467285, 58.790070>,  <65.844185, 57.287617, 58.635857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.883392, 57.467285, 58.790070>,  <65.948746, 57.766731, 59.047092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.883392, 57.467285, 58.790070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.903271, -0.375431, 0.207733,
		-0.396748, -0.546463, 0.737543,
		-0.163378, -0.748619, -0.642556,
		65.834381, 57.242699, 58.597301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.851196, 57.256821, 59.602276>,  <65.948746, 57.766731, 59.047092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.851196, 57.256821, 59.602276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.973381, 57.176250, 59.230011>,  <66.046692, 57.127907, 59.006653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.973381, 57.176250, 59.230011>,  <65.851196, 57.256821, 59.602276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.973381, 57.176250, 59.230011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.921789, -0.182505, 0.342048,
		-0.238747, -0.962351, 0.129924,
		0.305458, -0.201426, -0.930658,
		66.065018, 57.115822, 58.950813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.320549, 56.791096, 59.657722>,  <65.851196, 57.256821, 59.602276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.320549, 56.791096, 59.657722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.393219, 56.913071, 59.283768>,  <66.436821, 56.986256, 59.059395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.393219, 56.913071, 59.283768>,  <66.320549, 56.791096, 59.657722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.393219, 56.913071, 59.283768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.950680, -0.297515, 0.087706,
		-0.251397, -0.904709, -0.343951,
		0.181679, 0.304938, -0.934883,
		66.447723, 57.004551, 59.003304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.739571, 56.213680, 59.240936>,  <66.320549, 56.791096, 59.657722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.739571, 56.213680, 59.240936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.787758, 56.574371, 59.074867>,  <66.816673, 56.790787, 58.975224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.787758, 56.574371, 59.074867>,  <66.739571, 56.213680, 59.240936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.787758, 56.574371, 59.074867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.985961, -0.157395, -0.055753,
		-0.115621, -0.402631, -0.908031,
		0.120472, 0.901729, -0.415176,
		66.823898, 56.844891, 58.950314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.427574, 56.031055, 59.249554>,  <66.739571, 56.213680, 59.240936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.427574, 56.031055, 59.249554> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.350960, 56.072018, 59.640007>,  <67.304993, 56.096596, 59.874279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.350960, 56.072018, 59.640007>,  <67.427574, 56.031055, 59.249554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.350960, 56.072018, 59.640007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.929691, -0.299882, 0.213882,
		0.314627, 0.948463, -0.037772,
		-0.191532, 0.102409, 0.976129,
		67.293503, 56.102741, 59.932846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.096466, 56.327759, 59.581295>,  <67.427574, 56.031055, 59.249554>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.096466, 56.327759, 59.581295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.888313, 56.111794, 59.845932>,  <67.763420, 55.982216, 60.004715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.888313, 56.111794, 59.845932>,  <68.096466, 56.327759, 59.581295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.888313, 56.111794, 59.845932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.812634, -0.551137, 0.189405,
		0.262369, 0.636197, 0.725546,
		-0.520374, -0.539909, 0.661596,
		67.732201, 55.949821, 60.044411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.467445, 56.372753, 60.202297>,  <68.096466, 56.327759, 59.581295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.467445, 56.372753, 60.202297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.269218, 56.033337, 60.128120>,  <68.150284, 55.829689, 60.083614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.269218, 56.033337, 60.128120>,  <68.467445, 56.372753, 60.202297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.269218, 56.033337, 60.128120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.868478, -0.481078, -0.119623,
		0.012293, -0.220335, 0.975347,
		-0.495575, -0.848538, -0.185442,
		68.120544, 55.778774, 60.072487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.987579, 57.000202, 60.234283>,  <68.467445, 56.372753, 60.202297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.987579, 57.000202, 60.234283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.250053, 57.083965, 59.944298>,  <69.407539, 57.134224, 59.770306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.250053, 57.083965, 59.944298>,  <68.987579, 57.000202, 60.234283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.250053, 57.083965, 59.944298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.711699, 0.147586, 0.686807,
		0.250814, -0.966628, -0.052188,
		0.656184, 0.209403, -0.724964,
		69.446907, 57.146786, 59.726807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.691597, 56.666378, 60.203922>,  <68.987579, 57.000202, 60.234283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.691597, 56.666378, 60.203922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.755791, 57.024620, 60.037964>,  <69.794312, 57.239563, 59.938389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.755791, 57.024620, 60.037964>,  <69.691597, 56.666378, 60.203922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.755791, 57.024620, 60.037964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.745895, 0.165252, 0.645239,
		0.646439, -0.413026, -0.641503,
		0.160490, 0.895601, -0.414899,
		69.803940, 57.293301, 59.913494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.468597, 56.745869, 60.128365>,  <69.691597, 56.666378, 60.203922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.468597, 56.745869, 60.128365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.323730, 57.113728, 60.067596>,  <70.236809, 57.334442, 60.031136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.323730, 57.113728, 60.067596>,  <70.468597, 56.745869, 60.128365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.323730, 57.113728, 60.067596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.779376, 0.388168, 0.491831,
		0.511286, 0.059715, -0.857334,
		-0.362159, 0.919652, -0.151925,
		70.215080, 57.389622, 60.022018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.955597, 56.977734, 59.721935>,  <70.468597, 56.745869, 60.128365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.955597, 56.977734, 59.721935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.760612, 57.272507, 59.909256>,  <70.643623, 57.449371, 60.021648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.760612, 57.272507, 59.909256>,  <70.955597, 56.977734, 59.721935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.760612, 57.272507, 59.909256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.866439, 0.474598, 0.155048,
		-0.107997, 0.481339, -0.869856,
		-0.487462, 0.736933, 0.468306,
		70.614372, 57.493587, 60.049747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.996460, 57.647820, 59.351925>,  <70.955597, 56.977734, 59.721935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.996460, 57.647820, 59.351925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.002174, 57.657684, 59.751762>,  <71.005608, 57.663605, 59.991665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.002174, 57.657684, 59.751762>,  <70.996460, 57.647820, 59.351925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.002174, 57.657684, 59.751762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.948608, 0.315732, -0.021354,
		-0.316130, 0.948528, -0.018881,
		0.014294, 0.024661, 0.999594,
		71.006462, 57.665081, 60.051640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.279198, 58.322742, 59.488541>,  <70.996460, 57.647820, 59.351925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.279198, 58.322742, 59.488541> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.325096, 58.033112, 59.760582>,  <71.352631, 57.859333, 59.923805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.325096, 58.033112, 59.760582>,  <71.279198, 58.322742, 59.488541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.325096, 58.033112, 59.760582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.971762, 0.223912, 0.074441,
		-0.206184, 0.652358, 0.729327,
		0.114742, -0.724081, 0.680104,
		71.359520, 57.815887, 59.964615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.553780, 58.730003, 60.094898>,  <71.279198, 58.322742, 59.488541>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.553780, 58.730003, 60.094898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.657890, 58.350830, 60.021492>,  <71.720360, 58.123325, 59.977448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.657890, 58.350830, 60.021492>,  <71.553780, 58.730003, 60.094898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.657890, 58.350830, 60.021492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.947493, 0.287329, -0.140354,
		0.185777, -0.137351, 0.972945,
		0.260277, -0.947933, -0.183518,
		71.735977, 58.066452, 59.966438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.016853, 58.470882, 60.635445>,  <71.553780, 58.730003, 60.094898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.016853, 58.470882, 60.635445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.092255, 58.289883, 60.286797>,  <72.137497, 58.181282, 60.077610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.092255, 58.289883, 60.286797>,  <72.016853, 58.470882, 60.635445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.092255, 58.289883, 60.286797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.981512, 0.116810, 0.151625,
		0.033204, -0.884083, 0.466148,
		0.188500, -0.452495, -0.871617,
		72.148804, 58.154133, 60.025311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.373932, 57.806236, 60.594685>,  <72.016853, 58.470882, 60.635445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.373932, 57.806236, 60.594685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.470970, 58.045639, 60.289284>,  <72.529190, 58.189281, 60.106045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.470970, 58.045639, 60.289284>,  <72.373932, 57.806236, 60.594685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.470970, 58.045639, 60.289284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.866745, 0.219812, 0.447700,
		0.435780, -0.770369, -0.465433,
		0.242587, 0.598511, -0.763503,
		72.543747, 58.225193, 60.060234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.992859, 57.515488, 60.309090>,  <72.373932, 57.806236, 60.594685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.992859, 57.515488, 60.309090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.963806, 57.914368, 60.301926>,  <72.946373, 58.153694, 60.297626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.963806, 57.914368, 60.301926>,  <72.992859, 57.515488, 60.309090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.963806, 57.914368, 60.301926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.812568, 0.069580, 0.578699,
		0.578323, 0.027480, -0.815345,
		-0.072634, 0.997198, -0.017911,
		72.942017, 58.213528, 60.296551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// box output
cylinder {
	<0.000000, 0.000000, 0.000000>,  <110.000000, 0.000000, 0.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 110.000000, 0.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 0.000000, 110.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<110.000000, 110.000000, 110.000000>,  <0.000000, 110.000000, 110.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<110.000000, 110.000000, 110.000000>,  <110.000000, 0.000000, 110.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<110.000000, 110.000000, 110.000000>,  <110.000000, 110.000000, 0.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 110.000000>,  <0.000000, 110.000000, 110.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 110.000000>,  <110.000000, 0.000000, 110.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<110.000000, 110.000000, 0.000000>,  <0.000000, 110.000000, 0.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<110.000000, 110.000000, 0.000000>,  <110.000000, 0.000000, 0.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<110.000000, 0.000000, 110.000000>,  <110.000000, 0.000000, 0.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 110.000000, 0.000000>,  <0.000000, 110.000000, 110.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
// end of box output
