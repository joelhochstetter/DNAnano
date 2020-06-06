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
	right 1.6 * <0.581683, 0, 0.813415>
	location <-54.4937, 30, 90.4225>
	look_at <30, 30, 30>
	direction <84.4937, 0, -60.4225>
	angle 67.0682
}


# declare cpy_camera_pos = <-54.4937, 30, 90.4225>;
# if (DRAW_FOG = 1)
fog {
	fog_type 2
	up vnormalize(cpy_camera_pos)
	color rgbt<1,1,1,0.3>
	distance 1e-5
	fog_alt 3e-3
	fog_offset 48
}
# end


// LIGHTS

# declare lum = 6;
global_settings {
	ambient_light rgb lum * <0.05, 0.05, 0.05>
	max_trace_level 15
}# declare cpy_direct_light_amount = 0.25;
light_source
{	1000 * <0.231732, -1, 1.3951>,
	rgb lum * cpy_direct_light_amount
	parallel
}

light_source
{	1000 * <-0.231732, 1, -1.3951>,
	rgb lum * cpy_direct_light_amount
	parallel
}

// strand 0

// nucleotide -1

// particle -1
sphere {
	<42.974968, 32.533909, 22.078640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.979031, 32.488884, 22.476078>,  <42.981468, 32.461868, 22.714540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.979031, 32.488884, 22.476078>,  <42.974968, 32.533909, 22.078640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.979031, 32.488884, 22.476078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.867690, 0.492876, 0.064702,
		-0.497001, -0.862788, -0.092662,
		0.010153, -0.112559, 0.993593,
		42.982075, 32.455116, 22.774157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.381161, 32.623920, 21.716743>,  <42.974968, 32.533909, 22.078640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.381161, 32.623920, 21.716743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.274994, 32.404457, 22.033863>,  <42.211292, 32.272778, 22.224134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.274994, 32.404457, 22.033863>,  <42.381161, 32.623920, 21.716743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.274994, 32.404457, 22.033863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.962196, 0.098647, -0.253864,
		0.061078, -0.830207, -0.554099,
		-0.265420, -0.548657, 0.792797,
		42.195370, 32.239861, 22.271702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.923973, 32.144455, 21.530390>,  <42.381161, 32.623920, 21.716743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.923973, 32.144455, 21.530390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.849865, 32.185158, 21.921352>,  <41.805401, 32.209579, 22.155930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.849865, 32.185158, 21.921352>,  <41.923973, 32.144455, 21.530390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.849865, 32.185158, 21.921352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.977580, 0.082186, -0.193861,
		-0.100055, -0.991409, 0.084244,
		-0.185271, 0.101752, 0.977405,
		41.794285, 32.215683, 22.214575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.384937, 31.698816, 21.887241>,  <41.923973, 32.144455, 21.530390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.384937, 31.698816, 21.887241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.399940, 32.052677, 22.073139>,  <41.408943, 32.264992, 22.184677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.399940, 32.052677, 22.073139>,  <41.384937, 31.698816, 21.887241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.399940, 32.052677, 22.073139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.969244, 0.145401, -0.198556,
		-0.243227, -0.443004, 0.862895,
		0.037505, 0.884650, 0.464744,
		41.411194, 32.318073, 22.212563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.679356, 31.697573, 21.760220>,  <41.384937, 31.698816, 21.887241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.679356, 31.697573, 21.760220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.781418, 32.003155, 21.523148>,  <40.842655, 32.186504, 21.380905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.781418, 32.003155, 21.523148>,  <40.679356, 31.697573, 21.760220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.781418, 32.003155, 21.523148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490108, -0.426198, -0.760361,
		-0.833480, 0.484488, 0.265672,
		0.255157, 0.763954, -0.592680,
		40.857964, 32.232342, 21.345345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.076347, 32.133533, 21.461498>,  <40.679356, 31.697573, 21.760220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.076347, 32.133533, 21.461498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.404610, 32.155678, 21.234005>,  <40.601566, 32.168964, 21.097509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.404610, 32.155678, 21.234005>,  <40.076347, 32.133533, 21.461498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.404610, 32.155678, 21.234005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517497, -0.350066, -0.780802,
		-0.242318, 0.935088, -0.258636,
		0.820658, 0.055359, -0.568732,
		40.650806, 32.172287, 21.063385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.597580, 32.503689, 20.925768>,  <40.076347, 32.133533, 21.461498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.597580, 32.503689, 20.925768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.199406, 32.468407, 20.940304>,  <38.960499, 32.447239, 20.949026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.199406, 32.468407, 20.940304>,  <39.597580, 32.503689, 20.925768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.199406, 32.468407, 20.940304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095196, 0.943044, -0.318757,
		-0.006157, -0.320763, -0.947140,
		-0.995439, -0.088202, 0.036341,
		38.900772, 32.441948, 20.951206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.422478, 32.701675, 20.308250>,  <39.597580, 32.503689, 20.925768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.422478, 32.701675, 20.308250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.082355, 32.740002, 20.515247>,  <38.878281, 32.762997, 20.639446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.082355, 32.740002, 20.515247>,  <39.422478, 32.701675, 20.308250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.082355, 32.740002, 20.515247> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145581, 0.902098, -0.406232,
		-0.505754, -0.420759, -0.753110,
		-0.850305, 0.095815, 0.517494,
		38.827263, 32.768745, 20.670496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.959576, 32.879520, 19.789858>,  <39.422478, 32.701675, 20.308250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.959576, 32.879520, 19.789858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.802166, 32.981255, 20.143230>,  <38.707722, 33.042297, 20.355255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.802166, 32.981255, 20.143230>,  <38.959576, 32.879520, 19.789858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.802166, 32.981255, 20.143230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.503838, 0.744125, -0.438664,
		-0.768954, -0.617730, -0.164682,
		-0.393520, 0.254339, 0.883433,
		38.684109, 33.057556, 20.408260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.226364, 33.034885, 19.634199>,  <38.959576, 32.879520, 19.789858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.226364, 33.034885, 19.634199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.316608, 33.216522, 19.978966>,  <38.370754, 33.325504, 20.185825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.316608, 33.216522, 19.978966>,  <38.226364, 33.034885, 19.634199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.316608, 33.216522, 19.978966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.572570, 0.777603, -0.259803,
		-0.788203, -0.434893, 0.435437,
		0.225610, 0.454095, 0.861915,
		38.384293, 33.352753, 20.237541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.542217, 33.396763, 19.909758>,  <38.226364, 33.034885, 19.634199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.542217, 33.396763, 19.909758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.837635, 33.583855, 20.103989>,  <38.014885, 33.696110, 20.220528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.837635, 33.583855, 20.103989>,  <37.542217, 33.396763, 19.909758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.837635, 33.583855, 20.103989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311941, 0.875553, -0.368917,
		-0.597704, 0.120988, 0.792536,
		0.738541, 0.467728, 0.485580,
		38.059196, 33.724174, 20.249662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.261593, 33.896843, 20.175388>,  <37.542217, 33.396763, 19.909758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.261593, 33.896843, 20.175388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.640835, 34.020489, 20.145603>,  <37.868382, 34.094677, 20.127731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.640835, 34.020489, 20.145603>,  <37.261593, 33.896843, 20.175388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.640835, 34.020489, 20.145603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302767, 0.806177, -0.508342,
		-0.097107, 0.504506, 0.857930,
		0.948105, 0.309117, -0.074462,
		37.925266, 34.113224, 20.123264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.208076, 34.526833, 20.309237>,  <37.261593, 33.896843, 20.175388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.208076, 34.526833, 20.309237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.554501, 34.497204, 20.111469>,  <37.762356, 34.479427, 19.992809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.554501, 34.497204, 20.111469>,  <37.208076, 34.526833, 20.309237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.554501, 34.497204, 20.111469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266413, 0.768460, -0.581802,
		0.423037, 0.635596, 0.645800,
		0.866062, -0.074074, -0.494418,
		37.814320, 34.474983, 19.963144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.440323, 35.202908, 20.212236>,  <37.208076, 34.526833, 20.309237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.440323, 35.202908, 20.212236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.653561, 35.008831, 19.934994>,  <37.781502, 34.892384, 19.768648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.653561, 35.008831, 19.934994>,  <37.440323, 35.202908, 20.212236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.653561, 35.008831, 19.934994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236532, 0.701086, -0.672704,
		0.812321, 0.522556, 0.258979,
		0.533092, -0.485195, -0.693108,
		37.813488, 34.863274, 19.727060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.809364, 35.649124, 19.877752>,  <37.440323, 35.202908, 20.212236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.809364, 35.649124, 19.877752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.752243, 35.362350, 19.604809>,  <37.717972, 35.190289, 19.441042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.752243, 35.362350, 19.604809>,  <37.809364, 35.649124, 19.877752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.752243, 35.362350, 19.604809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267484, 0.691727, -0.670796,
		0.952922, 0.086732, -0.290546,
		-0.142799, -0.716933, -0.682361,
		37.709404, 35.147270, 19.400101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.020061, 35.966434, 19.259439>,  <37.809364, 35.649124, 19.877752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.020061, 35.966434, 19.259439> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.823986, 35.640793, 19.134892>,  <37.706341, 35.445408, 19.060162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.823986, 35.640793, 19.134892>,  <38.020061, 35.966434, 19.259439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.823986, 35.640793, 19.134892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427634, 0.535911, -0.727962,
		0.759504, -0.223684, -0.610835,
		-0.490186, -0.814104, -0.311371,
		37.676929, 35.396561, 19.041481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.087109, 35.915218, 18.465765>,  <38.020061, 35.966434, 19.259439>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.087109, 35.915218, 18.465765> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.772350, 35.685638, 18.556427>,  <37.583496, 35.547890, 18.610825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.772350, 35.685638, 18.556427>,  <38.087109, 35.915218, 18.465765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.772350, 35.685638, 18.556427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530038, 0.440562, -0.724545,
		0.315998, -0.690278, -0.650893,
		-0.786896, -0.573953, 0.226657,
		37.536282, 35.513451, 18.624424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.903065, 35.582317, 17.886913>,  <38.087109, 35.915218, 18.465765>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.903065, 35.582317, 17.886913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.585266, 35.579224, 18.129803>,  <37.394588, 35.577370, 18.275536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.585266, 35.579224, 18.129803>,  <37.903065, 35.582317, 17.886913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.585266, 35.579224, 18.129803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.548187, 0.439354, -0.711660,
		-0.261283, -0.898281, -0.353303,
		-0.794495, -0.007732, 0.607221,
		37.346916, 35.576904, 18.311970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.419361, 35.487839, 17.417353>,  <37.903065, 35.582317, 17.886913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.419361, 35.487839, 17.417353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.216949, 35.593468, 17.745792>,  <37.095505, 35.656845, 17.942856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.216949, 35.593468, 17.745792>,  <37.419361, 35.487839, 17.417353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.216949, 35.593468, 17.745792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.593927, 0.583640, -0.553728,
		-0.625450, -0.767874, -0.138498,
		-0.506027, 0.264071, 0.821099,
		37.065140, 35.672688, 17.992123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.680237, 35.314785, 17.285854>,  <37.419361, 35.487839, 17.417353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.680237, 35.314785, 17.285854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.694744, 35.584713, 17.580688>,  <36.703449, 35.746670, 17.757589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.694744, 35.584713, 17.580688>,  <36.680237, 35.314785, 17.285854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.694744, 35.584713, 17.580688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.754647, 0.502016, -0.422478,
		-0.655127, -0.540917, 0.527462,
		0.036269, 0.674825, 0.737086,
		36.705624, 35.787159, 17.801815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.053177, 35.455441, 17.311506>,  <36.680237, 35.314785, 17.285854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.053177, 35.455441, 17.311506> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.221878, 35.756058, 17.514408>,  <36.323097, 35.936428, 17.636150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.221878, 35.756058, 17.514408>,  <36.053177, 35.455441, 17.311506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.221878, 35.756058, 17.514408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.626792, 0.645902, -0.435824,
		-0.655178, -0.134136, 0.743471,
		0.421750, 0.751544, 0.507256,
		36.348404, 35.981522, 17.666584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.506378, 35.830032, 17.633425>,  <36.053177, 35.455441, 17.311506>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.506378, 35.830032, 17.633425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.819099, 36.076653, 17.596207>,  <36.006733, 36.224625, 17.573875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.819099, 36.076653, 17.596207>,  <35.506378, 35.830032, 17.633425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.819099, 36.076653, 17.596207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497195, 0.526366, -0.689736,
		-0.376278, 0.585498, 0.718057,
		0.781800, 0.616547, -0.093046,
		36.053638, 36.261616, 17.568293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.221478, 36.562004, 17.615925>,  <35.506378, 35.830032, 17.633425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.221478, 36.562004, 17.615925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.582367, 36.540268, 17.444790>,  <35.798901, 36.527225, 17.342110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.582367, 36.540268, 17.444790>,  <35.221478, 36.562004, 17.615925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.582367, 36.540268, 17.444790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338959, 0.524020, -0.781351,
		0.266654, 0.849971, 0.454363,
		0.902221, -0.054340, -0.427838,
		35.853035, 36.523968, 17.316439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.251949, 37.139740, 17.221786>,  <35.221478, 36.562004, 17.615925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.251949, 37.139740, 17.221786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.564774, 36.961365, 17.047649>,  <35.752468, 36.854340, 16.943167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.564774, 36.961365, 17.047649>,  <35.251949, 37.139740, 17.221786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.564774, 36.961365, 17.047649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184222, 0.501916, -0.845070,
		0.595352, 0.741095, 0.310377,
		0.782060, -0.445936, -0.435343,
		35.799393, 36.827583, 16.917046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.734631, 37.626369, 16.829918>,  <35.251949, 37.139740, 17.221786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.734631, 37.626369, 16.829918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.814823, 37.268494, 16.670250>,  <35.862938, 37.053768, 16.574450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.814823, 37.268494, 16.670250>,  <35.734631, 37.626369, 16.829918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.814823, 37.268494, 16.670250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022861, 0.403060, -0.914888,
		0.979430, 0.192544, 0.060353,
		0.200483, -0.894690, -0.399171,
		35.874969, 37.000088, 16.550499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.253532, 37.738308, 16.224970>,  <35.734631, 37.626369, 16.829918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.253532, 37.738308, 16.224970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.133640, 37.359863, 16.175919>,  <36.061703, 37.132797, 16.146488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.133640, 37.359863, 16.175919>,  <36.253532, 37.738308, 16.224970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.133640, 37.359863, 16.175919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177826, 0.181690, -0.967143,
		0.937304, -0.268077, -0.222701,
		-0.299732, -0.946109, -0.122628,
		36.043720, 37.076031, 16.139130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.545715, 37.550983, 15.505976>,  <36.253532, 37.738308, 16.224970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.545715, 37.550983, 15.505976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.230885, 37.325348, 15.605824>,  <36.041985, 37.189968, 15.665734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.230885, 37.325348, 15.605824>,  <36.545715, 37.550983, 15.505976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.230885, 37.325348, 15.605824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338260, 0.056286, -0.939368,
		0.515833, -0.823796, -0.235109,
		-0.787081, -0.564085, 0.249623,
		35.994759, 37.156124, 15.680712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.470779, 37.228260, 14.931459>,  <36.545715, 37.550983, 15.505976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.470779, 37.228260, 14.931459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.132965, 37.206181, 15.144515>,  <35.930275, 37.192932, 15.272348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.132965, 37.206181, 15.144515>,  <36.470779, 37.228260, 14.931459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.132965, 37.206181, 15.144515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.533507, 0.001156, -0.845795,
		0.046075, -0.998474, -0.030428,
		-0.844540, -0.055203, 0.532639,
		35.879604, 37.189621, 15.304307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.083359, 37.282070, 14.318925>,  <36.470779, 37.228260, 14.931459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.083359, 37.282070, 14.318925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.830437, 37.579651, 14.405389>,  <35.678684, 37.758198, 14.457268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.830437, 37.579651, 14.405389>,  <36.083359, 37.282070, 14.318925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.830437, 37.579651, 14.405389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.771257, -0.578133, -0.266316,
		-0.073157, -0.335108, 0.939335,
		-0.632306, 0.743952, 0.216160,
		35.640743, 37.802837, 14.470237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.507725, 37.015301, 14.730819>,  <36.083359, 37.282070, 14.318925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.507725, 37.015301, 14.730819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.376209, 37.353626, 14.562774>,  <35.297302, 37.556622, 14.461946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.376209, 37.353626, 14.562774>,  <35.507725, 37.015301, 14.730819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.376209, 37.353626, 14.562774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.827209, -0.472551, -0.304008,
		-0.455659, 0.247566, 0.855035,
		-0.328786, 0.845817, -0.420111,
		35.277573, 37.607372, 14.436740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.862240, 36.671177, 14.409823>,  <35.507725, 37.015301, 14.730819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.862240, 36.671177, 14.409823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.113976, 36.380596, 14.299413>,  <35.265018, 36.206245, 14.233167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.113976, 36.380596, 14.299413>,  <34.862240, 36.671177, 14.409823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.113976, 36.380596, 14.299413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.523390, -0.133668, -0.841544,
		0.574447, 0.674089, -0.464342,
		0.629343, -0.726455, -0.276027,
		35.302780, 36.162659, 14.216605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.262589, 36.789707, 13.766322>,  <34.862240, 36.671177, 14.409823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.262589, 36.789707, 13.766322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.229111, 36.391300, 13.778562>,  <35.209023, 36.152256, 13.785906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.229111, 36.391300, 13.778562>,  <35.262589, 36.789707, 13.766322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.229111, 36.391300, 13.778562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345560, 0.000209, -0.938397,
		0.934657, -0.089114, -0.344202,
		-0.083696, -0.996022, 0.030599,
		35.204002, 36.092495, 13.787742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.487949, 36.468971, 13.228284>,  <35.262589, 36.789707, 13.766322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.487949, 36.468971, 13.228284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.217552, 36.197502, 13.343133>,  <35.055313, 36.034622, 13.412043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.217552, 36.197502, 13.343133>,  <35.487949, 36.468971, 13.228284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.217552, 36.197502, 13.343133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284405, -0.119167, -0.951269,
		0.679814, -0.724711, -0.112461,
		-0.675994, -0.678670, 0.287123,
		35.014755, 35.993900, 13.429270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.534058, 35.620438, 13.149813>,  <35.487949, 36.468971, 13.228284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.534058, 35.620438, 13.149813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.143784, 35.707928, 13.155477>,  <34.909618, 35.760422, 13.158875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.143784, 35.707928, 13.155477>,  <35.534058, 35.620438, 13.149813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.143784, 35.707928, 13.155477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116511, -0.462835, -0.878754,
		-0.185654, -0.859035, 0.477065,
		-0.975683, 0.218728, 0.014160,
		34.851078, 35.773544, 13.159724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.345703, 35.030220, 12.954294>,  <35.534058, 35.620438, 13.149813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.345703, 35.030220, 12.954294> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.051273, 35.299110, 12.922524>,  <34.874615, 35.460445, 12.903462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.051273, 35.299110, 12.922524>,  <35.345703, 35.030220, 12.954294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.051273, 35.299110, 12.922524> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367708, -0.495607, -0.786870,
		-0.568317, -0.549990, 0.611986,
		-0.736075, 0.672224, -0.079426,
		34.830452, 35.500778, 12.898697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.987606, 34.518841, 13.243999>,  <35.345703, 35.030220, 12.954294>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.987606, 34.518841, 13.243999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.850475, 34.783039, 12.976802>,  <34.768196, 34.941559, 12.816483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.850475, 34.783039, 12.976802>,  <34.987606, 34.518841, 13.243999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.850475, 34.783039, 12.976802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237842, -0.748947, -0.618473,
		-0.908790, -0.053154, 0.413855,
		-0.342830, 0.660494, -0.667993,
		34.747627, 34.981186, 12.776403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.485554, 34.066605, 12.845208>,  <34.987606, 34.518841, 13.243999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.485554, 34.066605, 12.845208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.853874, 34.214851, 12.796599>,  <36.074867, 34.303799, 12.767434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.853874, 34.214851, 12.796599>,  <35.485554, 34.066605, 12.845208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.853874, 34.214851, 12.796599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332684, -0.583689, 0.740694,
		0.203582, -0.722461, -0.660760,
		0.920802, 0.370616, -0.121523,
		36.130116, 34.326035, 12.760142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.023083, 33.537598, 12.841278>,  <35.485554, 34.066605, 12.845208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.023083, 33.537598, 12.841278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.167492, 33.889015, 12.966380>,  <36.254139, 34.099865, 13.041441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.167492, 33.889015, 12.966380>,  <36.023083, 33.537598, 12.841278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.167492, 33.889015, 12.966380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261739, -0.417354, 0.870235,
		0.895071, -0.232318, -0.380626,
		0.361027, 0.878547, 0.312755,
		36.275799, 34.152580, 13.060206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.581371, 33.407536, 13.238793>,  <36.023083, 33.537598, 12.841278>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.581371, 33.407536, 13.238793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.546989, 33.779438, 13.381997>,  <36.526360, 34.002579, 13.467919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.546989, 33.779438, 13.381997>,  <36.581371, 33.407536, 13.238793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.546989, 33.779438, 13.381997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257845, -0.326338, 0.909406,
		0.962356, 0.170475, -0.211683,
		-0.085951, 0.929754, 0.358009,
		36.521206, 34.058365, 13.489400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.237347, 33.647102, 13.499846>,  <36.581371, 33.407536, 13.238793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.237347, 33.647102, 13.499846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.953465, 33.856209, 13.688754>,  <36.783134, 33.981674, 13.802098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.953465, 33.856209, 13.688754>,  <37.237347, 33.647102, 13.499846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.953465, 33.856209, 13.688754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341887, -0.330564, 0.879682,
		0.615982, 0.785776, 0.055876,
		-0.709703, 0.522765, 0.472269,
		36.740555, 34.013039, 13.830435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.548946, 33.899105, 14.058491>,  <37.237347, 33.647102, 13.499846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.548946, 33.899105, 14.058491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.168625, 33.957558, 14.167762>,  <36.940434, 33.992630, 14.233324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.168625, 33.957558, 14.167762>,  <37.548946, 33.899105, 14.058491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.168625, 33.957558, 14.167762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185990, -0.435948, 0.880543,
		0.247764, 0.888029, 0.387321,
		-0.950800, 0.146129, 0.273177,
		36.883385, 34.001396, 14.249715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.709660, 33.907433, 14.735147>,  <37.548946, 33.899105, 14.058491>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.709660, 33.907433, 14.735147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.310112, 33.889519, 14.728805>,  <37.070381, 33.878773, 14.724999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.310112, 33.889519, 14.728805>,  <37.709660, 33.907433, 14.735147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.310112, 33.889519, 14.728805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002249, -0.288807, 0.957385,
		-0.047452, 0.956339, 0.288380,
		-0.998871, -0.044781, -0.015856,
		37.010452, 33.876083, 14.724048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.560890, 34.073967, 15.433608>,  <37.709660, 33.907433, 14.735147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.560890, 34.073967, 15.433608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.253471, 33.889931, 15.255774>,  <37.069019, 33.779510, 15.149075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.253471, 33.889931, 15.255774>,  <37.560890, 34.073967, 15.433608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.253471, 33.889931, 15.255774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193394, -0.495320, 0.846910,
		-0.609864, 0.736870, 0.291699,
		-0.768547, -0.460087, -0.444584,
		37.022907, 33.751904, 15.122399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.072548, 34.085869, 16.005737>,  <37.560890, 34.073967, 15.433608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.072548, 34.085869, 16.005737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.962040, 33.804947, 15.743302>,  <36.895737, 33.636395, 15.585842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.962040, 33.804947, 15.743302>,  <37.072548, 34.085869, 16.005737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.962040, 33.804947, 15.743302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096701, -0.658877, 0.746009,
		-0.956203, 0.269543, 0.114114,
		-0.276269, -0.702302, -0.656085,
		36.879158, 33.594257, 15.546476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.531429, 33.715469, 16.356001>,  <37.072548, 34.085869, 16.005737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.531429, 33.715469, 16.356001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.656731, 33.470158, 16.065964>,  <36.731911, 33.322971, 15.891941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.656731, 33.470158, 16.065964>,  <36.531429, 33.715469, 16.356001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.656731, 33.470158, 16.065964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132696, -0.727765, 0.672867,
		-0.940352, -0.306997, -0.146598,
		0.313257, -0.613279, -0.725092,
		36.750710, 33.286175, 15.848436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.189720, 33.103031, 16.372936>,  <36.531429, 33.715469, 16.356001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.189720, 33.103031, 16.372936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.530315, 33.015530, 16.182308>,  <36.734673, 32.963028, 16.067932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.530315, 33.015530, 16.182308>,  <36.189720, 33.103031, 16.372936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.530315, 33.015530, 16.182308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126210, -0.796620, 0.591157,
		-0.508960, -0.563511, -0.650704,
		0.851488, -0.218750, -0.476568,
		36.785763, 32.949905, 16.039337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.166183, 32.297668, 16.131266>,  <36.189720, 33.103031, 16.372936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.166183, 32.297668, 16.131266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.521984, 32.465481, 16.203693>,  <36.735462, 32.566170, 16.247150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.521984, 32.465481, 16.203693>,  <36.166183, 32.297668, 16.131266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.521984, 32.465481, 16.203693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119272, -0.595706, 0.794298,
		0.441096, -0.684930, -0.579918,
		0.889499, 0.419530, 0.181070,
		36.788834, 32.591339, 16.258015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.367455, 31.855614, 16.485220>,  <36.166183, 32.297668, 16.131266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.367455, 31.855614, 16.485220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.639549, 32.143963, 16.538315>,  <36.802807, 32.316971, 16.570171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.639549, 32.143963, 16.538315>,  <36.367455, 31.855614, 16.485220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.639549, 32.143963, 16.538315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256334, -0.403610, 0.878289,
		0.686708, -0.563421, -0.459335,
		0.680239, 0.720872, 0.132738,
		36.843620, 32.360226, 16.578136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.945335, 31.527193, 16.660711>,  <36.367455, 31.855614, 16.485220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.945335, 31.527193, 16.660711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.994072, 31.907402, 16.775017>,  <37.023312, 32.135529, 16.843601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.994072, 31.907402, 16.775017>,  <36.945335, 31.527193, 16.660711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.994072, 31.907402, 16.775017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353624, -0.310589, 0.882318,
		0.927419, -0.006447, -0.373970,
		0.121839, 0.950523, 0.285766,
		37.030624, 32.192558, 16.860746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.526539, 31.441950, 17.123035>,  <36.945335, 31.527193, 16.660711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.526539, 31.441950, 17.123035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.375061, 31.788540, 17.253151>,  <37.284172, 31.996494, 17.331221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.375061, 31.788540, 17.253151>,  <37.526539, 31.441950, 17.123035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.375061, 31.788540, 17.253151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096222, -0.312699, 0.944966,
		0.920505, 0.389156, 0.035044,
		-0.378698, 0.866474, 0.325287,
		37.261452, 32.048481, 17.350737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.931366, 31.559870, 17.690289>,  <37.526539, 31.441950, 17.123035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.931366, 31.559870, 17.690289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.596718, 31.776012, 17.726246>,  <37.395927, 31.905697, 17.747820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.596718, 31.776012, 17.726246>,  <37.931366, 31.559870, 17.690289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.596718, 31.776012, 17.726246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056000, -0.247611, 0.967240,
		0.544911, 0.804180, 0.237416,
		-0.836622, 0.540354, 0.089892,
		37.345730, 31.938118, 17.753214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.948181, 31.833729, 18.342651>,  <37.931366, 31.559870, 17.690289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.948181, 31.833729, 18.342651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.556633, 31.877785, 18.273739>,  <37.321705, 31.904219, 18.232391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.556633, 31.877785, 18.273739>,  <37.948181, 31.833729, 18.342651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.556633, 31.877785, 18.273739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179827, -0.062638, 0.981702,
		0.097333, 0.991940, 0.081121,
		-0.978871, 0.110140, -0.172280,
		37.262970, 31.910828, 18.222055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.709026, 32.396103, 18.861961>,  <37.948181, 31.833729, 18.342651>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.709026, 32.396103, 18.861961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.365433, 32.225090, 18.749271>,  <37.159279, 32.122482, 18.681658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.365433, 32.225090, 18.749271>,  <37.709026, 32.396103, 18.861961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.365433, 32.225090, 18.749271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320269, 0.019358, 0.947129,
		-0.399474, 0.903793, -0.153554,
		-0.858981, -0.427532, -0.281724,
		37.107738, 32.096832, 18.664755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.154358, 32.823673, 19.292948>,  <37.709026, 32.396103, 18.861961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.154358, 32.823673, 19.292948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.997879, 32.476822, 19.169624>,  <36.903992, 32.268711, 19.095631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.997879, 32.476822, 19.169624>,  <37.154358, 32.823673, 19.292948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.997879, 32.476822, 19.169624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457515, -0.107435, 0.882688,
		-0.798527, 0.486360, -0.354695,
		-0.391198, -0.867128, -0.308307,
		36.880520, 32.216682, 19.077133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.462132, 32.962242, 19.472048>,  <37.154358, 32.823673, 19.292948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.462132, 32.962242, 19.472048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.523346, 32.573009, 19.403130>,  <36.560074, 32.339470, 19.361778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.523346, 32.573009, 19.403130>,  <36.462132, 32.962242, 19.472048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.523346, 32.573009, 19.403130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461718, -0.224554, 0.858133,
		-0.873726, -0.051769, -0.483655,
		0.153031, -0.973086, -0.172296,
		36.569256, 32.281082, 19.351440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.713001, 32.683193, 19.544636>,  <36.462132, 32.962242, 19.472048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.713001, 32.683193, 19.544636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.992008, 32.406300, 19.618702>,  <36.159412, 32.240166, 19.663141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.992008, 32.406300, 19.618702>,  <35.713001, 32.683193, 19.544636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.992008, 32.406300, 19.618702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433523, -0.201916, 0.878230,
		-0.570551, -0.692853, -0.440938,
		0.697516, -0.692232, 0.185164,
		36.201263, 32.198631, 19.674252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.358860, 32.039768, 19.509062>,  <35.713001, 32.683193, 19.544636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.358860, 32.039768, 19.509062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.687778, 32.016361, 19.735477>,  <35.885132, 32.002316, 19.871326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.687778, 32.016361, 19.735477>,  <35.358860, 32.039768, 19.509062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.687778, 32.016361, 19.735477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.567646, -0.154370, 0.808671,
		0.040057, -0.986279, -0.160157,
		0.822298, -0.058519, 0.566040,
		35.934467, 31.998806, 19.905289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.403175, 31.412550, 20.039785>,  <35.358860, 32.039768, 19.509062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.403175, 31.412550, 20.039785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.579910, 31.754070, 20.149914>,  <35.685951, 31.958982, 20.215992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.579910, 31.754070, 20.149914>,  <35.403175, 31.412550, 20.039785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.579910, 31.754070, 20.149914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480384, -0.034012, 0.876399,
		0.757634, -0.519489, 0.395124,
		0.441840, 0.853800, 0.275323,
		35.712463, 32.010212, 20.232512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.818405, 31.349230, 20.667353>,  <35.403175, 31.412550, 20.039785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.818405, 31.349230, 20.667353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.608986, 31.687801, 20.628468>,  <35.483334, 31.890945, 20.605137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.608986, 31.687801, 20.628468>,  <35.818405, 31.349230, 20.667353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.608986, 31.687801, 20.628468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512762, -0.221913, 0.829355,
		0.680419, 0.484057, 0.550199,
		-0.523551, 0.846430, -0.097212,
		35.451920, 31.941730, 20.599304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.789856, 31.902266, 21.296997>,  <35.818405, 31.349230, 20.667353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.789856, 31.902266, 21.296997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.449295, 31.893307, 21.087383>,  <35.244957, 31.887932, 20.961615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.449295, 31.893307, 21.087383>,  <35.789856, 31.902266, 21.296997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.449295, 31.893307, 21.087383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.503444, -0.245416, 0.828442,
		-0.147160, 0.969159, 0.197673,
		-0.851404, -0.022396, -0.524032,
		35.193874, 31.886587, 20.930174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.157452, 32.403900, 21.550980>,  <35.789856, 31.902266, 21.296997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.157452, 32.403900, 21.550980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.014099, 32.079086, 21.366734>,  <34.928089, 31.884197, 21.256186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.014099, 32.079086, 21.366734>,  <35.157452, 32.403900, 21.550980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.014099, 32.079086, 21.366734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427914, -0.295625, 0.854105,
		-0.829732, 0.503196, -0.241535,
		-0.358379, -0.812034, -0.460614,
		34.906586, 31.835476, 21.228550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.390026, 32.362614, 21.671091>,  <35.157452, 32.403900, 21.550980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.390026, 32.362614, 21.671091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.598862, 32.023956, 21.629890>,  <34.724163, 31.820761, 21.605169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.598862, 32.023956, 21.629890>,  <34.390026, 32.362614, 21.671091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.598862, 32.023956, 21.629890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496789, -0.400049, 0.770170,
		-0.693267, -0.350929, -0.629467,
		0.522093, -0.846647, -0.103003,
		34.755489, 31.769962, 21.598989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.886955, 31.970924, 21.911888>,  <34.390026, 32.362614, 21.671091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.886955, 31.970924, 21.911888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.222919, 31.767818, 21.988541>,  <34.424500, 31.645954, 22.034533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.222919, 31.767818, 21.988541>,  <33.886955, 31.970924, 21.911888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.222919, 31.767818, 21.988541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402690, -0.346331, 0.847287,
		-0.363850, -0.788817, -0.495359,
		0.839913, -0.507761, 0.191636,
		34.474892, 31.615488, 22.046030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.709194, 31.264938, 22.040007>,  <33.886955, 31.970924, 21.911888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.709194, 31.264938, 22.040007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.046734, 31.326462, 22.245632>,  <34.249256, 31.363377, 22.369007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.046734, 31.326462, 22.245632>,  <33.709194, 31.264938, 22.040007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.046734, 31.326462, 22.245632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409842, -0.433615, 0.802501,
		0.346340, -0.887874, -0.302867,
		0.843848, 0.153810, 0.514066,
		34.299889, 31.372604, 22.399853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.690403, 30.590853, 22.391808>,  <33.709194, 31.264938, 22.040007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.690403, 30.590853, 22.391808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.905525, 30.866089, 22.586658>,  <34.034599, 31.031231, 22.703569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.905525, 30.866089, 22.586658>,  <33.690403, 30.590853, 22.391808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.905525, 30.866089, 22.586658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005498, -0.580653, 0.814132,
		0.843050, -0.435168, -0.316063,
		0.537808, 0.688092, 0.487127,
		34.066868, 31.072515, 22.732796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.370903, 30.166910, 22.651089>,  <33.690403, 30.590853, 22.391808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.370903, 30.166910, 22.651089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.293896, 30.481682, 22.885586>,  <34.247692, 30.670546, 23.026283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.293896, 30.481682, 22.885586>,  <34.370903, 30.166910, 22.651089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.293896, 30.481682, 22.885586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062064, -0.605986, 0.793051,
		0.979330, 0.116289, 0.165500,
		-0.192514, 0.786930, 0.586242,
		34.236141, 30.717760, 23.061459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.772053, 30.017883, 23.284552>,  <34.370903, 30.166910, 22.651089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.772053, 30.017883, 23.284552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.498219, 30.289082, 23.391636>,  <34.333920, 30.451799, 23.455887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.498219, 30.289082, 23.391636>,  <34.772053, 30.017883, 23.284552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.498219, 30.289082, 23.391636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234550, -0.552616, 0.799751,
		0.690166, 0.484706, 0.537337,
		-0.684585, 0.677993, 0.267709,
		34.292843, 30.492479, 23.471949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.876156, 30.038425, 23.992529>,  <34.772053, 30.017883, 23.284552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.876156, 30.038425, 23.992529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.524551, 30.226704, 23.962101>,  <34.313591, 30.339670, 23.943844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.524551, 30.226704, 23.962101>,  <34.876156, 30.038425, 23.992529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.524551, 30.226704, 23.962101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356655, -0.543203, 0.760084,
		0.316449, 0.695251, 0.645357,
		-0.879009, 0.470698, -0.076068,
		34.260849, 30.367912, 23.939281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.787762, 30.338690, 24.616671>,  <34.876156, 30.038425, 23.992529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.787762, 30.338690, 24.616671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.421738, 30.312607, 24.457462>,  <34.202126, 30.296957, 24.361937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.421738, 30.312607, 24.457462>,  <34.787762, 30.338690, 24.616671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.421738, 30.312607, 24.457462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328819, -0.450860, 0.829822,
		-0.233560, 0.890210, 0.391121,
		-0.915056, -0.065205, -0.398020,
		34.147221, 30.293045, 24.338057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.385853, 30.686060, 24.983885>,  <34.787762, 30.338690, 24.616671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.385853, 30.686060, 24.983885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.144226, 30.416920, 24.813061>,  <33.999252, 30.255436, 24.710566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.144226, 30.416920, 24.813061>,  <34.385853, 30.686060, 24.983885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.144226, 30.416920, 24.813061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256246, -0.343433, 0.903544,
		-0.754615, 0.655231, 0.035041,
		-0.604064, -0.672849, -0.427060,
		33.963005, 30.215065, 24.684942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.691391, 30.702091, 25.297554>,  <34.385853, 30.686060, 24.983885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.691391, 30.702091, 25.297554> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.726490, 30.333733, 25.145634>,  <33.747551, 30.112717, 25.054482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.726490, 30.333733, 25.145634>,  <33.691391, 30.702091, 25.297554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.726490, 30.333733, 25.145634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388689, -0.382704, 0.838128,
		-0.917181, 0.074081, -0.391524,
		0.087748, -0.920896, -0.379803,
		33.752815, 30.057465, 25.031693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.109447, 30.387827, 25.556118>,  <33.691391, 30.702091, 25.297554>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.109447, 30.387827, 25.556118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.322231, 30.066864, 25.447926>,  <33.449902, 29.874287, 25.383011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.322231, 30.066864, 25.447926>,  <33.109447, 30.387827, 25.556118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.322231, 30.066864, 25.447926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407581, -0.522624, 0.748827,
		-0.742225, -0.288102, -0.605061,
		0.531958, -0.802410, -0.270479,
		33.481819, 29.826141, 25.366781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.683868, 29.854223, 25.570400>,  <33.109447, 30.387827, 25.556118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.683868, 29.854223, 25.570400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.023796, 29.643402, 25.568611>,  <33.227753, 29.516909, 25.567537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.023796, 29.643402, 25.568611>,  <32.683868, 29.854223, 25.570400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.023796, 29.643402, 25.568611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314469, -0.513820, 0.798185,
		-0.422982, -0.676908, -0.602396,
		0.849821, -0.527052, -0.004470,
		33.278744, 29.485287, 25.567270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.488457, 29.223322, 25.723923>,  <32.683868, 29.854223, 25.570400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.488457, 29.223322, 25.723923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.880657, 29.240345, 25.800671>,  <33.115978, 29.250559, 25.846720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.880657, 29.240345, 25.800671>,  <32.488457, 29.223322, 25.723923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.880657, 29.240345, 25.800671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148754, -0.477328, 0.866043,
		0.128444, -0.877694, -0.461688,
		0.980497, 0.042560, 0.191870,
		33.174805, 29.253113, 25.858232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.645710, 28.561878, 25.896132>,  <32.488457, 29.223322, 25.723923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.645710, 28.561878, 25.896132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.926922, 28.789314, 26.066990>,  <33.095650, 28.925776, 26.169504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.926922, 28.789314, 26.066990>,  <32.645710, 28.561878, 25.896132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.926922, 28.789314, 26.066990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170667, -0.448185, 0.877498,
		0.690378, -0.689807, -0.218048,
		0.703030, 0.568591, 0.427145,
		33.137833, 28.959892, 26.195133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.948753, 28.132858, 26.334074>,  <32.645710, 28.561878, 25.896132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.948753, 28.132858, 26.334074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.019600, 28.504101, 26.465069>,  <33.062107, 28.726847, 26.543665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.019600, 28.504101, 26.465069>,  <32.948753, 28.132858, 26.334074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.019600, 28.504101, 26.465069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038933, -0.325879, 0.944610,
		0.983420, -0.180054, -0.021584,
		0.177114, 0.928108, 0.327486,
		33.072735, 28.782534, 26.563314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.319759, 27.935450, 26.887505>,  <32.948753, 28.132858, 26.334074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.319759, 27.935450, 26.887505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.222260, 28.315975, 26.962963>,  <33.163757, 28.544291, 27.008238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.222260, 28.315975, 26.962963>,  <33.319759, 27.935450, 26.887505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.222260, 28.315975, 26.962963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054608, -0.180742, 0.982013,
		0.968299, 0.249670, -0.007893,
		-0.243752, 0.951313, 0.188646,
		33.149136, 28.601370, 27.019556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.721058, 28.107437, 27.410454>,  <33.319759, 27.935450, 26.887505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.721058, 28.107437, 27.410454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.423664, 28.374798, 27.419106>,  <33.245228, 28.535213, 27.424297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.423664, 28.374798, 27.419106>,  <33.721058, 28.107437, 27.410454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.423664, 28.374798, 27.419106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040666, -0.077469, 0.996165,
		0.667514, 0.739755, 0.084778,
		-0.743486, 0.668401, 0.021629,
		33.200619, 28.575317, 27.425594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.976974, 28.468788, 27.929802>,  <33.721058, 28.107437, 27.410454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.976974, 28.468788, 27.929802> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.584568, 28.544189, 27.911583>,  <33.349125, 28.589430, 27.900652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.584568, 28.544189, 27.911583>,  <33.976974, 28.468788, 27.929802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.584568, 28.544189, 27.911583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082176, -0.191339, 0.978078,
		0.175657, 0.963253, 0.203197,
		-0.981016, 0.188504, -0.045546,
		33.290264, 28.600740, 27.897919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.919655, 29.006643, 28.275284>,  <33.976974, 28.468788, 27.929802>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.919655, 29.006643, 28.275284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.559036, 28.833572, 28.276585>,  <33.342667, 28.729729, 28.277365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.559036, 28.833572, 28.276585>,  <33.919655, 29.006643, 28.275284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.559036, 28.833572, 28.276585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018127, 0.045276, 0.998810,
		-0.432311, 0.900411, -0.048662,
		-0.901542, -0.432679, 0.003251,
		33.288574, 28.703770, 28.277559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.539330, 29.377249, 28.902145>,  <33.919655, 29.006643, 28.275284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.539330, 29.377249, 28.902145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.331066, 29.043980, 28.827595>,  <33.206108, 28.844017, 28.782864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.331066, 29.043980, 28.827595>,  <33.539330, 29.377249, 28.902145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.331066, 29.043980, 28.827595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195377, -0.096234, 0.975995,
		-0.831109, 0.544574, -0.112677,
		-0.520658, -0.833174, -0.186378,
		33.174870, 28.794027, 28.771681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.899979, 29.418219, 29.435009>,  <33.539330, 29.377249, 28.902145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.899979, 29.418219, 29.435009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.943127, 29.042976, 29.303360>,  <32.969017, 28.817831, 29.224371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.943127, 29.042976, 29.303360>,  <32.899979, 29.418219, 29.435009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.943127, 29.042976, 29.303360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195466, -0.344606, 0.918172,
		-0.974760, -0.034710, -0.220540,
		0.107869, -0.938105, -0.329124,
		32.975487, 28.761545, 29.204622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.280575, 29.037937, 29.788710>,  <32.899979, 29.418219, 29.435009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.280575, 29.037937, 29.788710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.549236, 28.777264, 29.647751>,  <32.710434, 28.620859, 29.563175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.549236, 28.777264, 29.647751>,  <32.280575, 29.037937, 29.788710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.549236, 28.777264, 29.647751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221285, -0.630410, 0.744054,
		-0.707045, -0.421767, -0.567627,
		0.671655, -0.651687, -0.352398,
		32.750732, 28.581758, 29.542032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.978733, 28.321304, 29.941427>,  <32.280575, 29.037937, 29.788710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.978733, 28.321304, 29.941427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.368492, 28.250858, 29.885521>,  <32.602348, 28.208590, 29.851976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.368492, 28.250858, 29.885521>,  <31.978733, 28.321304, 29.941427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.368492, 28.250858, 29.885521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037355, -0.486190, 0.873055,
		-0.221712, -0.855922, -0.467163,
		0.974396, -0.176116, -0.139767,
		32.660812, 28.198023, 29.843590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.031570, 27.664244, 29.976133>,  <31.978733, 28.321304, 29.941427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.031570, 27.664244, 29.976133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.386005, 27.825809, 30.067093>,  <32.598667, 27.922749, 30.121670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.386005, 27.825809, 30.067093>,  <32.031570, 27.664244, 29.976133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.386005, 27.825809, 30.067093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017569, -0.460971, 0.887241,
		0.463193, -0.790165, -0.401362,
		0.886083, 0.403913, 0.227401,
		32.651829, 27.946983, 30.135313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.443905, 27.113253, 30.299303>,  <32.031570, 27.664244, 29.976133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.443905, 27.113253, 30.299303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.657688, 27.436687, 30.397724>,  <32.785957, 27.630749, 30.456776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.657688, 27.436687, 30.397724>,  <32.443905, 27.113253, 30.299303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.657688, 27.436687, 30.397724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106990, -0.224050, 0.968687,
		0.838397, -0.544046, -0.033234,
		0.534456, 0.808589, 0.246050,
		32.818024, 27.679264, 30.471539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.106022, 26.878990, 30.644339>,  <32.443905, 27.113253, 30.299303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.106022, 26.878990, 30.644339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.027790, 27.244015, 30.787994>,  <32.980850, 27.463030, 30.874187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.027790, 27.244015, 30.787994>,  <33.106022, 26.878990, 30.644339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.027790, 27.244015, 30.787994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066983, -0.377789, 0.923466,
		0.978397, 0.156555, 0.135014,
		-0.195580, 0.912560, 0.359141,
		32.969116, 27.517782, 30.895737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.380833, 26.838482, 31.286577>,  <33.106022, 26.878990, 30.644339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.380833, 26.838482, 31.286577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.172371, 27.179138, 31.308884>,  <33.047295, 27.383532, 31.322268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.172371, 27.179138, 31.308884>,  <33.380833, 26.838482, 31.286577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.172371, 27.179138, 31.308884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273580, -0.228592, 0.934291,
		0.808429, 0.471649, 0.352123,
		-0.521150, 0.851641, 0.055767,
		33.016026, 27.434631, 31.325613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.484562, 27.058352, 31.930742>,  <33.380833, 26.838482, 31.286577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.484562, 27.058352, 31.930742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.181103, 27.302582, 31.839836>,  <32.999027, 27.449120, 31.785294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.181103, 27.302582, 31.839836>,  <33.484562, 27.058352, 31.930742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.181103, 27.302582, 31.839836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265510, 0.028794, 0.963678,
		0.594944, 0.791433, 0.140270,
		-0.758648, 0.610577, -0.227264,
		32.953510, 27.485754, 31.771656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.457520, 27.522884, 32.535530>,  <33.484562, 27.058352, 31.930742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.457520, 27.522884, 32.535530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.104557, 27.527088, 32.347382>,  <32.892780, 27.529610, 32.234493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.104557, 27.527088, 32.347382>,  <33.457520, 27.522884, 32.535530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.104557, 27.527088, 32.347382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467733, 0.088472, 0.879431,
		0.050857, 0.996023, -0.073152,
		-0.882405, 0.010509, -0.470372,
		32.839836, 27.530241, 32.206268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.182781, 28.106905, 32.659653>,  <33.457520, 27.522884, 32.535530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.182781, 28.106905, 32.659653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.877163, 27.861202, 32.580734>,  <32.693790, 27.713781, 32.533382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.877163, 27.861202, 32.580734>,  <33.182781, 28.106905, 32.659653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.877163, 27.861202, 32.580734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371585, 0.168987, 0.912890,
		-0.527408, 0.770801, -0.357362,
		-0.764045, -0.614255, -0.197293,
		32.647949, 27.676926, 32.521545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.622215, 28.534462, 32.965958>,  <33.182781, 28.106905, 32.659653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.622215, 28.534462, 32.965958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.543900, 28.145622, 32.914280>,  <32.496910, 27.912319, 32.883274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.543900, 28.145622, 32.914280>,  <32.622215, 28.534462, 32.965958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.543900, 28.145622, 32.914280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413992, -0.037498, 0.909508,
		-0.888976, 0.231555, -0.395100,
		-0.195786, -0.972099, -0.129197,
		32.485165, 27.853992, 32.875523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.968317, 28.395960, 33.152184>,  <32.622215, 28.534462, 32.965958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.968317, 28.395960, 33.152184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.127754, 28.030441, 33.183418>,  <32.223415, 27.811131, 33.202160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.127754, 28.030441, 33.183418>,  <31.968317, 28.395960, 33.152184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.127754, 28.030441, 33.183418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438295, -0.115001, 0.891444,
		-0.805619, -0.389549, -0.446351,
		0.398592, -0.913797, 0.078090,
		32.247334, 27.756302, 33.206844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.516472, 27.881807, 33.517258>,  <31.968317, 28.395960, 33.152184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.516472, 27.881807, 33.517258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.860292, 27.682659, 33.563385>,  <32.066586, 27.563169, 33.591061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.860292, 27.682659, 33.563385>,  <31.516472, 27.881807, 33.517258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.860292, 27.682659, 33.563385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128438, 0.007958, 0.991686,
		-0.494650, -0.867214, -0.057105,
		0.859549, -0.497871, 0.115320,
		32.118156, 27.533298, 33.597980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.468376, 27.197868, 33.830585>,  <31.516472, 27.881807, 33.517258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.468376, 27.197868, 33.830585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.835886, 27.333847, 33.910877>,  <32.056393, 27.415434, 33.959053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.835886, 27.333847, 33.910877>,  <31.468376, 27.197868, 33.830585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.835886, 27.333847, 33.910877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148661, -0.173109, 0.973619,
		0.365728, -0.924375, -0.108511,
		0.918773, 0.339948, 0.200730,
		32.111519, 27.435831, 33.971096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.629465, 26.907858, 34.479992>,  <31.468376, 27.197868, 33.830585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.629465, 26.907858, 34.479992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.902891, 27.198627, 34.453690>,  <32.066948, 27.373089, 34.437908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.902891, 27.198627, 34.453690>,  <31.629465, 26.907858, 34.479992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.902891, 27.198627, 34.453690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081554, 0.165593, 0.982816,
		0.725321, -0.666454, 0.172477,
		0.683563, 0.726923, -0.065756,
		32.107960, 27.416704, 34.433964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.920473, 26.811871, 34.972557>,  <31.629465, 26.907858, 34.479992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.920473, 26.811871, 34.972557> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.071911, 27.173771, 34.894489>,  <32.162773, 27.390911, 34.847649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.071911, 27.173771, 34.894489>,  <31.920473, 26.811871, 34.972557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.071911, 27.173771, 34.894489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046926, 0.191832, 0.980305,
		0.924372, -0.380298, 0.030171,
		0.378596, 0.904751, -0.195170,
		32.185490, 27.445196, 34.835938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.609886, 27.033360, 35.372101>,  <31.920473, 26.811871, 34.972557>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.609886, 27.033360, 35.372101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.479610, 27.392254, 35.252838>,  <32.401443, 27.607590, 35.181282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.479610, 27.392254, 35.252838>,  <32.609886, 27.033360, 35.372101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.479610, 27.392254, 35.252838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165032, 0.364454, 0.916481,
		0.930962, 0.249285, -0.266772,
		-0.325691, 0.897235, -0.298153,
		32.381905, 27.661425, 35.163391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.119205, 27.627062, 35.522663>,  <32.609886, 27.033360, 35.372101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.119205, 27.627062, 35.522663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.736298, 27.742424, 35.514141>,  <32.506554, 27.811642, 35.509026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.736298, 27.742424, 35.514141>,  <33.119205, 27.627062, 35.522663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.736298, 27.742424, 35.514141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046571, 0.226461, 0.972906,
		0.285415, 0.930344, -0.230216,
		-0.957272, 0.288403, -0.021309,
		32.449116, 27.828945, 35.507748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.099319, 28.029892, 36.042080>,  <33.119205, 27.627062, 35.522663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.099319, 28.029892, 36.042080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.708073, 27.978779, 35.976402>,  <32.473324, 27.948111, 35.936996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.708073, 27.978779, 35.976402>,  <33.099319, 28.029892, 36.042080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.708073, 27.978779, 35.976402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198131, 0.331245, 0.922508,
		-0.063494, 0.934852, -0.349315,
		-0.978117, -0.127784, -0.164191,
		32.414639, 27.940443, 35.927143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.824249, 28.543053, 36.321529>,  <33.099319, 28.029892, 36.042080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.824249, 28.543053, 36.321529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.509762, 28.296097, 36.310944>,  <32.321072, 28.147924, 36.304592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.509762, 28.296097, 36.310944>,  <32.824249, 28.543053, 36.321529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.509762, 28.296097, 36.310944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014604, -0.024243, 0.999599,
		-0.617782, 0.786285, 0.010044,
		-0.786214, -0.617388, -0.026460,
		32.273899, 28.110880, 36.303005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.355545, 28.789423, 36.690250>,  <32.824249, 28.543053, 36.321529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.355545, 28.789423, 36.690250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.231812, 28.409996, 36.663311>,  <32.157574, 28.182341, 36.647148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.231812, 28.409996, 36.663311>,  <32.355545, 28.789423, 36.690250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.231812, 28.409996, 36.663311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027305, -0.079652, 0.996448,
		-0.950562, 0.306394, 0.050540,
		-0.309331, -0.948566, -0.067348,
		32.139011, 28.125425, 36.643108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.846893, 28.751501, 37.134987>,  <32.355545, 28.789423, 36.690250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.846893, 28.751501, 37.134987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.931566, 28.363949, 37.083672>,  <31.982370, 28.131416, 37.052883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.931566, 28.363949, 37.083672>,  <31.846893, 28.751501, 37.134987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.931566, 28.363949, 37.083672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059056, -0.143699, 0.987858,
		-0.975552, -0.201538, -0.087638,
		0.211684, -0.968882, -0.128284,
		31.995071, 28.073284, 37.045185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.370939, 28.464546, 37.445076>,  <31.846893, 28.751501, 37.134987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.370939, 28.464546, 37.445076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.670418, 28.200386, 37.422001>,  <31.850105, 28.041889, 37.408154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.670418, 28.200386, 37.422001>,  <31.370939, 28.464546, 37.445076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.670418, 28.200386, 37.422001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055990, -0.149713, 0.987143,
		-0.660547, -0.735838, -0.149065,
		0.748694, -0.660400, -0.057692,
		31.895025, 28.002266, 37.404694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.245052, 27.922987, 37.885845>,  <31.370939, 28.464546, 37.445076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.245052, 27.922987, 37.885845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.639475, 27.879803, 37.835186>,  <31.876127, 27.853893, 37.804790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.639475, 27.879803, 37.835186>,  <31.245052, 27.922987, 37.885845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.639475, 27.879803, 37.835186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116833, -0.092903, 0.988797,
		-0.118521, -0.989804, -0.078994,
		0.986054, -0.107964, -0.126653,
		31.935291, 27.847416, 37.797192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.440987, 27.365450, 38.282879>,  <31.245052, 27.922987, 37.885845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.440987, 27.365450, 38.282879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.784727, 27.563553, 38.231911>,  <31.990973, 27.682415, 38.201328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.784727, 27.563553, 38.231911>,  <31.440987, 27.365450, 38.282879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.784727, 27.563553, 38.231911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228016, -0.148057, 0.962334,
		0.457737, -0.856038, -0.240160,
		0.859352, 0.495256, -0.127419,
		32.042534, 27.712130, 38.193684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.986443, 26.974190, 38.536636>,  <31.440987, 27.365450, 38.282879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.986443, 26.974190, 38.536636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.076855, 27.363670, 38.548077>,  <32.131104, 27.597359, 38.554943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.076855, 27.363670, 38.548077>,  <31.986443, 26.974190, 38.536636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.076855, 27.363670, 38.548077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289558, -0.095195, 0.952415,
		0.930090, -0.206991, -0.303459,
		0.226029, 0.973700, 0.028604,
		32.144665, 27.655781, 38.556660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.456348, 26.819532, 39.011951>,  <31.986443, 26.974190, 38.536636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.456348, 26.819532, 39.011951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.390667, 27.212128, 38.972527>,  <32.351257, 27.447685, 38.948872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.390667, 27.212128, 38.972527>,  <32.456348, 26.819532, 39.011951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.390667, 27.212128, 38.972527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186540, 0.129011, 0.973940,
		0.968628, 0.141541, -0.204271,
		-0.164206, 0.981490, -0.098561,
		32.341404, 27.506575, 38.942959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.700657, 26.961229, 39.638515>,  <32.456348, 26.819532, 39.011951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.700657, 26.961229, 39.638515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.627758, 27.311058, 39.458778>,  <32.584019, 27.520956, 39.350937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.627758, 27.311058, 39.458778>,  <32.700657, 26.961229, 39.638515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.627758, 27.311058, 39.458778> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223177, 0.481865, 0.847348,
		0.957590, 0.054142, -0.283002,
		-0.182246, 0.874571, -0.449346,
		32.573086, 27.573429, 39.323975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.304558, 27.375214, 39.741444>,  <32.700657, 26.961229, 39.638515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.304558, 27.375214, 39.741444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.975777, 27.594818, 39.680801>,  <32.778507, 27.726582, 39.644417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.975777, 27.594818, 39.680801>,  <33.304558, 27.375214, 39.741444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.975777, 27.594818, 39.680801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153743, 0.470161, 0.869087,
		0.548418, 0.691038, -0.470855,
		-0.821950, 0.549013, -0.151602,
		32.729191, 27.759521, 39.635323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.780880, 27.396584, 40.373077>,  <33.304558, 27.375214, 39.741444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.780880, 27.396584, 40.373077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.660480, 27.154728, 40.668053>,  <33.588242, 27.009615, 40.845036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.660480, 27.154728, 40.668053>,  <33.780880, 27.396584, 40.373077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.660480, 27.154728, 40.668053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.684824, 0.401093, 0.608391,
		-0.663638, 0.688138, 0.293344,
		-0.300999, -0.604640, 0.737434,
		33.570179, 26.973335, 40.889282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.270458, 27.843960, 40.698738>,  <33.780880, 27.396584, 40.373077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.270458, 27.843960, 40.698738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.161953, 27.900826, 41.079517>,  <33.096851, 27.934944, 41.307983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.161953, 27.900826, 41.079517>,  <33.270458, 27.843960, 40.698738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.161953, 27.900826, 41.079517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333706, -0.913795, 0.231558,
		0.902805, 0.380484, 0.200436,
		-0.271262, 0.142165, 0.951949,
		33.080574, 27.943476, 41.365101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.782475, 28.117916, 40.350040>,  <33.270458, 27.843960, 40.698738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.782475, 28.117916, 40.350040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.016617, 28.403458, 40.503799>,  <34.157104, 28.574783, 40.596054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.016617, 28.403458, 40.503799>,  <33.782475, 28.117916, 40.350040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.016617, 28.403458, 40.503799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002356, 0.472615, -0.881266,
		-0.810770, 0.516764, 0.274968,
		0.585361, 0.713856, 0.384400,
		34.192226, 28.617615, 40.619118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.457100, 28.764997, 40.343037>,  <33.782475, 28.117916, 40.350040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.457100, 28.764997, 40.343037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.853073, 28.811619, 40.310921>,  <34.090656, 28.839592, 40.291649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.853073, 28.811619, 40.310921>,  <33.457100, 28.764997, 40.343037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.853073, 28.811619, 40.310921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116080, 0.344044, -0.931751,
		-0.080974, 0.931692, 0.354110,
		0.989934, 0.116553, -0.080292,
		34.150055, 28.846584, 40.286835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.556755, 29.535702, 40.021538>,  <33.457100, 28.764997, 40.343037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.556755, 29.535702, 40.021538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.853386, 29.272045, 39.971592>,  <34.031364, 29.113852, 39.941624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.853386, 29.272045, 39.971592>,  <33.556755, 29.535702, 40.021538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.853386, 29.272045, 39.971592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091557, 0.283817, -0.954497,
		0.664588, 0.696404, 0.270822,
		0.741580, -0.659143, -0.124861,
		34.075859, 29.074303, 39.934135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.093594, 29.798679, 39.705505>,  <33.556755, 29.535702, 40.021538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.093594, 29.798679, 39.705505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.172253, 29.421921, 39.596577>,  <34.219448, 29.195866, 39.531219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.172253, 29.421921, 39.596577>,  <34.093594, 29.798679, 39.705505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.172253, 29.421921, 39.596577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185978, 0.308540, -0.932853,
		0.962674, 0.132800, 0.235846,
		0.196651, -0.941895, -0.272326,
		34.231247, 29.139353, 39.514877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.827244, 29.811342, 39.336624>,  <34.093594, 29.798679, 39.705505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.827244, 29.811342, 39.336624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.583805, 29.519867, 39.211006>,  <34.437744, 29.344982, 39.135635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.583805, 29.519867, 39.211006>,  <34.827244, 29.811342, 39.336624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.583805, 29.519867, 39.211006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152121, 0.281295, -0.947487,
		0.778764, -0.624407, -0.060345,
		-0.608593, -0.728690, -0.314048,
		34.401226, 29.301260, 39.116791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.159332, 29.427294, 38.834068>,  <34.827244, 29.811342, 39.336624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.159332, 29.427294, 38.834068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.764099, 29.391102, 38.784264>,  <34.526958, 29.369387, 38.754379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.764099, 29.391102, 38.784264>,  <35.159332, 29.427294, 38.834068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.764099, 29.391102, 38.784264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098852, 0.247007, -0.963958,
		0.117972, -0.964781, -0.235120,
		-0.988085, -0.090478, -0.124511,
		34.467674, 29.363958, 38.746910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.183311, 29.153131, 38.170959>,  <35.159332, 29.427294, 38.834068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.183311, 29.153131, 38.170959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.801510, 29.254616, 38.233631>,  <34.572430, 29.315506, 38.271236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.801510, 29.254616, 38.233631>,  <35.183311, 29.153131, 38.170959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.801510, 29.254616, 38.233631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105635, 0.203673, -0.973324,
		-0.278855, -0.945594, -0.167606,
		-0.954506, 0.253711, 0.156683,
		34.515160, 29.330729, 38.280636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.710026, 28.745092, 37.754124>,  <35.183311, 29.153131, 38.170959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.710026, 28.745092, 37.754124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.514507, 29.092617, 37.785740>,  <34.397198, 29.301132, 37.804710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.514507, 29.092617, 37.785740>,  <34.710026, 28.745092, 37.754124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.514507, 29.092617, 37.785740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283485, -0.072491, -0.956233,
		-0.825056, -0.489808, 0.281728,
		-0.488793, 0.868811, 0.079044,
		34.367870, 29.353260, 37.809452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.135212, 28.694744, 37.280117>,  <34.710026, 28.745092, 37.754124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.135212, 28.694744, 37.280117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.189289, 29.084549, 37.351727>,  <34.221733, 29.318432, 37.394691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.189289, 29.084549, 37.351727>,  <34.135212, 28.694744, 37.280117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.189289, 29.084549, 37.351727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315448, 0.213617, -0.924587,
		-0.939263, 0.068521, 0.336287,
		0.135191, 0.974511, 0.179028,
		34.229847, 29.376902, 37.405434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.663593, 29.038187, 36.869041>,  <34.135212, 28.694744, 37.280117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.663593, 29.038187, 36.869041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.906376, 29.340034, 36.968765>,  <34.052044, 29.521143, 37.028599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.906376, 29.340034, 36.968765>,  <33.663593, 29.038187, 36.869041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.906376, 29.340034, 36.968765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236698, 0.471106, -0.849725,
		-0.758668, 0.456737, 0.464558,
		0.606957, 0.754620, 0.249305,
		34.088463, 29.566420, 37.043556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.314503, 29.538912, 36.553783>,  <33.663593, 29.038187, 36.869041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.314503, 29.538912, 36.553783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.675472, 29.692841, 36.631287>,  <33.892056, 29.785198, 36.677788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.675472, 29.692841, 36.631287>,  <33.314503, 29.538912, 36.553783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.675472, 29.692841, 36.631287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063761, 0.564043, -0.823280,
		-0.426105, 0.730593, 0.533543,
		0.902424, 0.384823, 0.193758,
		33.946201, 29.808287, 36.689415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.277374, 30.258018, 36.557251>,  <33.314503, 29.538912, 36.553783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.277374, 30.258018, 36.557251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.658401, 30.171471, 36.471653>,  <33.887020, 30.119543, 36.420292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.658401, 30.171471, 36.471653>,  <33.277374, 30.258018, 36.557251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.658401, 30.171471, 36.471653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041406, 0.604511, -0.795520,
		0.301488, 0.766650, 0.566880,
		0.952570, -0.216368, -0.213997,
		33.944172, 30.106560, 36.407455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.458656, 30.817736, 36.143505>,  <33.277374, 30.258018, 36.557251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.458656, 30.817736, 36.143505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.773186, 30.584713, 36.061211>,  <33.961903, 30.444899, 36.011833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.773186, 30.584713, 36.061211>,  <33.458656, 30.817736, 36.143505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.773186, 30.584713, 36.061211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092896, 0.440703, -0.892833,
		0.610795, 0.682941, 0.400651,
		0.786320, -0.582557, -0.205737,
		34.009083, 30.409946, 35.999489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.007893, 31.297832, 36.008095>,  <33.458656, 30.817736, 36.143505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.007893, 31.297832, 36.008095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.105286, 30.959629, 35.818008>,  <34.163723, 30.756708, 35.703957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.105286, 30.959629, 35.818008>,  <34.007893, 31.297832, 36.008095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.105286, 30.959629, 35.818008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311745, 0.532189, -0.787140,
		0.918439, 0.043510, 0.393162,
		0.243485, -0.845507, -0.475219,
		34.178329, 30.705976, 35.675442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.674980, 31.323252, 35.671455>,  <34.007893, 31.297832, 36.008095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.674980, 31.323252, 35.671455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.493916, 31.032536, 35.464817>,  <34.385277, 30.858105, 35.340832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.493916, 31.032536, 35.464817>,  <34.674980, 31.323252, 35.671455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.493916, 31.032536, 35.464817> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174299, 0.496055, -0.850617,
		0.874482, -0.475082, -0.097865,
		-0.452660, -0.726792, -0.516598,
		34.358116, 30.814499, 35.309837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.019329, 31.420570, 35.112175>,  <34.674980, 31.323252, 35.671455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.019329, 31.420570, 35.112175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.732544, 31.166477, 34.997322>,  <34.560474, 31.014021, 34.928410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.732544, 31.166477, 34.997322>,  <35.019329, 31.420570, 35.112175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.732544, 31.166477, 34.997322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179967, 0.229271, -0.956581,
		0.673483, -0.737506, -0.050058,
		-0.716961, -0.635232, -0.287136,
		34.517456, 30.975908, 34.911182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.375496, 30.936321, 34.621372>,  <35.019329, 31.420570, 35.112175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.375496, 30.936321, 34.621372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.982193, 30.946415, 34.549187>,  <34.746212, 30.952471, 34.505875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.982193, 30.946415, 34.549187>,  <35.375496, 30.936321, 34.621372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.982193, 30.946415, 34.549187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180619, 0.004020, -0.983545,
		-0.024097, -0.999673, -0.008511,
		-0.983258, 0.025237, -0.180463,
		34.687214, 30.953985, 34.495049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.367954, 30.641870, 33.978287>,  <35.375496, 30.936321, 34.621372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.367954, 30.641870, 33.978287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.001080, 30.800438, 33.994358>,  <34.780952, 30.895578, 34.004002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.001080, 30.800438, 33.994358>,  <35.367954, 30.641870, 33.978287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.001080, 30.800438, 33.994358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012221, 0.072801, -0.997272,
		-0.398265, -0.915178, -0.061928,
		-0.917189, 0.396421, 0.040179,
		34.725922, 30.919365, 34.006413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.855934, 30.222212, 33.529198>,  <35.367954, 30.641870, 33.978287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.855934, 30.222212, 33.529198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.699181, 30.588741, 33.562138>,  <34.605129, 30.808659, 33.581902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.699181, 30.588741, 33.562138>,  <34.855934, 30.222212, 33.529198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.699181, 30.588741, 33.562138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032531, 0.103254, -0.994123,
		-0.919441, -0.386899, -0.070272,
		-0.391881, 0.916323, 0.082350,
		34.581615, 30.863638, 33.586842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.301426, 30.187654, 32.999866>,  <34.855934, 30.222212, 33.529198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.301426, 30.187654, 32.999866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.400730, 30.561283, 33.102535>,  <34.460312, 30.785460, 33.164135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.400730, 30.561283, 33.102535>,  <34.301426, 30.187654, 32.999866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.400730, 30.561283, 33.102535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041019, 0.274866, -0.960607,
		-0.967825, 0.227950, 0.106552,
		0.248258, 0.934070, 0.256672,
		34.475208, 30.841505, 33.179535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.937515, 30.585947, 32.565468>,  <34.301426, 30.187654, 32.999866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.937515, 30.585947, 32.565468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.196815, 30.863136, 32.691677>,  <34.352398, 31.029449, 32.767403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.196815, 30.863136, 32.691677>,  <33.937515, 30.585947, 32.565468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.196815, 30.863136, 32.691677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069476, 0.358830, -0.930813,
		-0.758249, 0.625324, 0.184468,
		0.648253, 0.692972, 0.315528,
		34.391293, 31.071028, 32.786335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.740013, 31.205364, 32.206696>,  <33.937515, 30.585947, 32.565468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.740013, 31.205364, 32.206696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.127419, 31.208675, 32.306221>,  <34.359863, 31.210663, 32.365936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.127419, 31.208675, 32.306221>,  <33.740013, 31.205364, 32.206696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.127419, 31.208675, 32.306221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236959, 0.275818, -0.931544,
		-0.076340, 0.961174, 0.265172,
		0.968516, 0.008279, 0.248814,
		34.417973, 31.211159, 32.380867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.036205, 31.905199, 32.001366>,  <33.740013, 31.205364, 32.206696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.036205, 31.905199, 32.001366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.336365, 31.641182, 32.015507>,  <34.516460, 31.482771, 32.023991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.336365, 31.641182, 32.015507>,  <34.036205, 31.905199, 32.001366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.336365, 31.641182, 32.015507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264334, 0.250640, -0.931293,
		0.605834, 0.708182, 0.362551,
		0.750395, -0.660044, 0.035350,
		34.561481, 31.443169, 32.026112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.615627, 32.302296, 31.638664>,  <34.036205, 31.905199, 32.001366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.615627, 32.302296, 31.638664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.764919, 31.931515, 31.653996>,  <34.854492, 31.709047, 31.663195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.764919, 31.931515, 31.653996>,  <34.615627, 32.302296, 31.638664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.764919, 31.931515, 31.653996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491113, 0.162352, -0.855833,
		0.787090, 0.338244, 0.515830,
		0.373226, -0.926949, 0.038331,
		34.876888, 31.653431, 31.665495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.350792, 32.344589, 31.525623>,  <34.615627, 32.302296, 31.638664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.350792, 32.344589, 31.525623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.210720, 31.989861, 31.405010>,  <35.126678, 31.777023, 31.332642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.210720, 31.989861, 31.405010>,  <35.350792, 32.344589, 31.525623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.210720, 31.989861, 31.405010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377134, 0.161184, -0.912025,
		0.857406, -0.433091, 0.278007,
		-0.350180, -0.886821, -0.301533,
		35.105667, 31.723814, 31.314550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.957859, 32.047173, 31.106600>,  <35.350792, 32.344589, 31.525623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.957859, 32.047173, 31.106600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.637253, 31.816910, 31.041862>,  <35.444889, 31.678753, 31.003019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.637253, 31.816910, 31.041862>,  <35.957859, 32.047173, 31.106600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.637253, 31.816910, 31.041862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229246, -0.045835, -0.972289,
		0.552285, -0.816407, 0.168704,
		-0.801516, -0.575655, -0.161844,
		35.396797, 31.644213, 30.993309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.190609, 31.340611, 30.760126>,  <35.957859, 32.047173, 31.106600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.190609, 31.340611, 30.760126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.807369, 31.433731, 30.693378>,  <35.577423, 31.489603, 30.653330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.807369, 31.433731, 30.693378>,  <36.190609, 31.340611, 30.760126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.807369, 31.433731, 30.693378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141966, -0.120030, -0.982567,
		-0.248776, -0.965088, 0.081951,
		-0.958101, 0.232805, -0.166870,
		35.519939, 31.503572, 30.643318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.176388, 31.163525, 30.099821>,  <36.190609, 31.340611, 30.760126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.176388, 31.163525, 30.099821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.842506, 31.381290, 30.133007>,  <35.642178, 31.511950, 30.152918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.842506, 31.381290, 30.133007>,  <36.176388, 31.163525, 30.099821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.842506, 31.381290, 30.133007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018884, 0.122268, -0.992318,
		-0.550375, -0.829858, -0.091777,
		-0.834704, 0.544414, 0.082964,
		35.592094, 31.544615, 30.157896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.820335, 30.876347, 29.588917>,  <36.176388, 31.163525, 30.099821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.820335, 30.876347, 29.588917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.668644, 31.241280, 29.650673>,  <35.577629, 31.460239, 29.687727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.668644, 31.241280, 29.650673>,  <35.820335, 30.876347, 29.588917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.668644, 31.241280, 29.650673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081642, 0.199197, -0.976553,
		-0.921694, -0.357732, -0.150026,
		-0.379229, 0.912331, 0.154393,
		35.554874, 31.514978, 29.696991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.304554, 30.907257, 29.146414>,  <35.820335, 30.876347, 29.588917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.304554, 30.907257, 29.146414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.364555, 31.293674, 29.230564>,  <35.400555, 31.525524, 29.281055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.364555, 31.293674, 29.230564>,  <35.304554, 30.907257, 29.146414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.364555, 31.293674, 29.230564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030257, 0.217171, -0.975665,
		-0.988223, 0.139985, 0.061805,
		0.150000, 0.966044, 0.210377,
		35.409557, 31.583488, 29.293678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.819286, 31.228838, 28.764793>,  <35.304554, 30.907257, 29.146414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.819286, 31.228838, 28.764793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.090725, 31.507298, 28.858501>,  <35.253590, 31.674374, 28.914726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.090725, 31.507298, 28.858501>,  <34.819286, 31.228838, 28.764793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.090725, 31.507298, 28.858501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036444, 0.350469, -0.935865,
		-0.733605, 0.626539, 0.263198,
		0.678598, 0.696147, 0.234272,
		35.294304, 31.716141, 28.928783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.489487, 31.844719, 28.623053>,  <34.819286, 31.228838, 28.764793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.489487, 31.844719, 28.623053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.881886, 31.916260, 28.592968>,  <35.117325, 31.959185, 28.574917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.881886, 31.916260, 28.592968>,  <34.489487, 31.844719, 28.623053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.881886, 31.916260, 28.592968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148358, 0.441631, -0.884846,
		-0.125038, 0.879190, 0.459773,
		0.980997, 0.178851, -0.075214,
		35.176186, 31.969915, 28.570404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.520882, 32.456482, 28.172596>,  <34.489487, 31.844719, 28.623053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.520882, 32.456482, 28.172596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.893574, 32.311493, 28.163658>,  <35.117188, 32.224499, 28.158295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.893574, 32.311493, 28.163658>,  <34.520882, 32.456482, 28.172596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.893574, 32.311493, 28.163658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091859, 0.294755, -0.951147,
		0.351354, 0.884156, 0.307927,
		0.931726, -0.362475, -0.022346,
		35.173092, 32.202751, 28.156954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.977493, 33.002548, 27.846418>,  <34.520882, 32.456482, 28.172596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.977493, 33.002548, 27.846418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.161137, 32.652092, 27.787647>,  <35.271324, 32.441818, 27.752384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.161137, 32.652092, 27.787647>,  <34.977493, 33.002548, 27.846418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.161137, 32.652092, 27.787647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160927, 0.244675, -0.956157,
		0.873681, 0.415338, 0.253328,
		0.459111, -0.876144, -0.146929,
		35.298870, 32.389248, 27.743568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.487423, 33.186302, 27.396618>,  <34.977493, 33.002548, 27.846418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.487423, 33.186302, 27.396618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.524551, 32.788803, 27.371826>,  <35.546829, 32.550304, 27.356951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.524551, 32.788803, 27.371826>,  <35.487423, 33.186302, 27.396618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.524551, 32.788803, 27.371826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177694, 0.077782, -0.981007,
		0.979698, 0.080049, 0.183804,
		0.092825, -0.993752, -0.061979,
		35.552399, 32.490677, 27.353233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.060143, 33.117741, 26.908211>,  <35.487423, 33.186302, 27.396618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.060143, 33.117741, 26.908211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.861900, 32.772194, 26.944237>,  <35.742954, 32.564865, 26.965853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.861900, 32.772194, 26.944237>,  <36.060143, 33.117741, 26.908211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.861900, 32.772194, 26.944237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134384, -0.178714, -0.974681,
		0.858087, -0.470957, 0.204662,
		-0.495608, -0.863864, 0.090063,
		35.713219, 32.513035, 26.971256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.374626, 32.658821, 26.418539>,  <36.060143, 33.117741, 26.908211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.374626, 32.658821, 26.418539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.001675, 32.536530, 26.495693>,  <35.777905, 32.463154, 26.541986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.001675, 32.536530, 26.495693>,  <36.374626, 32.658821, 26.418539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.001675, 32.536530, 26.495693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158218, -0.134631, -0.978183,
		0.325026, -0.942553, 0.077155,
		-0.932376, -0.305727, 0.192888,
		35.721962, 32.444813, 26.553560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.266106, 32.112068, 25.897894>,  <36.374626, 32.658821, 26.418539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.266106, 32.112068, 25.897894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.910408, 32.243702, 26.024982>,  <35.696991, 32.322681, 26.101236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.910408, 32.243702, 26.024982>,  <36.266106, 32.112068, 25.897894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.910408, 32.243702, 26.024982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349155, -0.039573, -0.936229,
		-0.295528, -0.943470, 0.150092,
		-0.889243, 0.329087, 0.317722,
		35.643635, 32.342426, 26.120298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.843227, 31.676590, 25.449385>,  <36.266106, 32.112068, 25.897894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.843227, 31.676590, 25.449385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.650948, 31.988400, 25.610020>,  <35.535580, 32.175484, 25.706400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.650948, 31.988400, 25.610020>,  <35.843227, 31.676590, 25.449385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.650948, 31.988400, 25.610020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268324, 0.305240, -0.913691,
		-0.834822, -0.546968, 0.062434,
		-0.480702, 0.779522, 0.401586,
		35.506737, 32.222256, 25.730495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.223129, 31.671049, 25.165886>,  <35.843227, 31.676590, 25.449385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.223129, 31.671049, 25.165886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.254482, 32.048782, 25.293694>,  <35.273293, 32.275421, 25.370378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.254482, 32.048782, 25.293694>,  <35.223129, 31.671049, 25.165886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.254482, 32.048782, 25.293694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343526, 0.326460, -0.880576,
		-0.935867, -0.040743, 0.349990,
		0.078380, 0.944332, 0.319519,
		35.277996, 32.332081, 25.389549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.577801, 31.943775, 25.072765>,  <35.223129, 31.671049, 25.165886>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.577801, 31.943775, 25.072765> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.859352, 32.227840, 25.066738>,  <35.028282, 32.398281, 25.063122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.859352, 32.227840, 25.066738>,  <34.577801, 31.943775, 25.072765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.859352, 32.227840, 25.066738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348288, 0.326559, -0.878667,
		-0.619075, 0.623721, 0.477198,
		0.703876, 0.710163, -0.015070,
		35.070515, 32.440887, 25.062218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.231594, 32.576900, 24.841503>,  <34.577801, 31.943775, 25.072765>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.231594, 32.576900, 24.841503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.615654, 32.665234, 24.772984>,  <34.846092, 32.718231, 24.731873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.615654, 32.665234, 24.772984>,  <34.231594, 32.576900, 24.841503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.615654, 32.665234, 24.772984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235610, 0.309913, -0.921109,
		-0.150322, 0.924764, 0.349594,
		0.960152, 0.220830, -0.171297,
		34.903698, 32.731483, 24.721594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.185085, 33.282734, 24.419790>,  <34.231594, 32.576900, 24.841503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.185085, 33.282734, 24.419790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.556686, 33.137608, 24.390621>,  <34.779648, 33.050529, 24.373119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.556686, 33.137608, 24.390621>,  <34.185085, 33.282734, 24.419790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.556686, 33.137608, 24.390621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004981, 0.209293, -0.977840,
		0.370042, 0.908052, 0.196241,
		0.929002, -0.362820, -0.072924,
		34.835388, 33.028763, 24.368744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.535706, 33.826126, 23.986444>,  <34.185085, 33.282734, 24.419790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.535706, 33.826126, 23.986444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.753902, 33.491119, 23.973839>,  <34.884823, 33.290115, 23.966276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.753902, 33.491119, 23.973839>,  <34.535706, 33.826126, 23.986444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.753902, 33.491119, 23.973839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119789, 0.115125, -0.986102,
		0.829509, 0.534139, 0.163126,
		0.545496, -0.837521, -0.031513,
		34.917553, 33.239864, 23.964384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.238029, 34.336605, 24.401543>,  <34.535706, 33.826126, 23.986444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.238029, 34.336605, 24.401543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.038296, 34.681778, 24.432583>,  <33.918457, 34.888882, 24.451208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.038296, 34.681778, 24.432583>,  <34.238029, 34.336605, 24.401543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.038296, 34.681778, 24.432583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266592, -0.238247, 0.933899,
		0.824377, 0.445636, 0.349015,
		-0.499331, 0.862929, 0.077603,
		33.888496, 34.940659, 24.455864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.395866, 34.835232, 25.072660>,  <34.238029, 34.336605, 24.401543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.395866, 34.835232, 25.072660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.030548, 34.800156, 24.913567>,  <33.811356, 34.779110, 24.818110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.030548, 34.800156, 24.913567>,  <34.395866, 34.835232, 25.072660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.030548, 34.800156, 24.913567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383902, -0.140804, 0.912575,
		-0.136026, 0.986147, 0.094932,
		-0.913300, -0.087689, -0.397737,
		33.756557, 34.773849, 24.794245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.982346, 35.396461, 25.369923>,  <34.395866, 34.835232, 25.072660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.982346, 35.396461, 25.369923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.753094, 35.090111, 25.253338>,  <33.615543, 34.906300, 25.183386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.753094, 35.090111, 25.253338>,  <33.982346, 35.396461, 25.369923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.753094, 35.090111, 25.253338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407851, -0.041898, 0.912087,
		-0.710762, 0.641616, -0.288353,
		-0.573128, -0.765881, -0.291463,
		33.581154, 34.860348, 25.165899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.227100, 35.634613, 25.491259>,  <33.982346, 35.396461, 25.369923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.227100, 35.634613, 25.491259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.232437, 35.234661, 25.494358>,  <33.235638, 34.994690, 25.496218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.232437, 35.234661, 25.494358>,  <33.227100, 35.634613, 25.491259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.232437, 35.234661, 25.494358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490695, 0.000208, 0.871331,
		-0.871229, -0.015425, -0.490634,
		0.013338, -0.999881, 0.007750,
		33.236439, 34.934696, 25.496683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.520920, 35.492970, 25.716486>,  <33.227100, 35.634613, 25.491259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.520920, 35.492970, 25.716486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.739342, 35.161030, 25.762409>,  <32.870396, 34.961868, 25.789963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.739342, 35.161030, 25.762409>,  <32.520920, 35.492970, 25.716486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.739342, 35.161030, 25.762409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387485, -0.128678, 0.912851,
		-0.742752, -0.542953, -0.391818,
		0.546054, -0.829846, 0.114810,
		32.903156, 34.912075, 25.796852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.106899, 35.197266, 26.193235>,  <32.520920, 35.492970, 25.716486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.106899, 35.197266, 26.193235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.458450, 35.006443, 26.193886>,  <32.669380, 34.891949, 26.194275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.458450, 35.006443, 26.193886>,  <32.106899, 35.197266, 26.193235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.458450, 35.006443, 26.193886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123723, -0.224646, 0.966554,
		-0.460732, -0.849679, -0.256458,
		0.878873, -0.477053, 0.001624,
		32.722111, 34.863327, 26.194372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.098904, 34.483459, 26.361300>,  <32.106899, 35.197266, 26.193235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.098904, 34.483459, 26.361300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.454544, 34.620510, 26.482693>,  <32.667931, 34.702740, 26.555529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.454544, 34.620510, 26.482693>,  <32.098904, 34.483459, 26.361300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.454544, 34.620510, 26.482693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262198, -0.162213, 0.951283,
		0.375160, -0.925363, -0.054389,
		0.889105, 0.342623, 0.303484,
		32.721275, 34.723297, 26.573738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.261749, 33.987679, 26.925495>,  <32.098904, 34.483459, 26.361300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.261749, 33.987679, 26.925495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.508987, 34.299339, 26.967232>,  <32.657330, 34.486336, 26.992273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.508987, 34.299339, 26.967232>,  <32.261749, 33.987679, 26.925495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.508987, 34.299339, 26.967232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107927, -0.047367, 0.993030,
		0.778661, -0.625045, 0.054814,
		0.618092, 0.779150, 0.104342,
		32.694416, 34.533085, 26.998535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.799835, 33.813141, 27.439526>,  <32.261749, 33.987679, 26.925495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.799835, 33.813141, 27.439526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.797974, 34.212345, 27.414371>,  <32.796856, 34.451866, 27.399279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.797974, 34.212345, 27.414371>,  <32.799835, 33.813141, 27.439526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.797974, 34.212345, 27.414371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101190, 0.062093, 0.992927,
		0.994856, 0.010985, 0.100700,
		-0.004655, 0.998010, -0.062885,
		32.796577, 34.511749, 27.395506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.385174, 34.075642, 27.853157>,  <32.799835, 33.813141, 27.439526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.385174, 34.075642, 27.853157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.092865, 34.347042, 27.823200>,  <32.917480, 34.509884, 27.805225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.092865, 34.347042, 27.823200>,  <33.385174, 34.075642, 27.853157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.092865, 34.347042, 27.823200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040852, 0.152987, 0.987383,
		0.681399, 0.718492, -0.139517,
		-0.730771, 0.678501, -0.074894,
		32.873634, 34.550594, 27.800732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.484085, 34.451233, 28.433207>,  <33.385174, 34.075642, 27.853157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.484085, 34.451233, 28.433207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.120018, 34.560741, 28.308861>,  <32.901577, 34.626446, 28.234253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.120018, 34.560741, 28.308861>,  <33.484085, 34.451233, 28.433207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.120018, 34.560741, 28.308861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231070, 0.287296, 0.929553,
		0.343800, 0.917882, -0.198227,
		-0.910170, 0.273776, -0.310867,
		32.846966, 34.642876, 28.215601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.396435, 34.957981, 28.914478>,  <33.484085, 34.451233, 28.433207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.396435, 34.957981, 28.914478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.045475, 34.846436, 28.758320>,  <32.834900, 34.779507, 28.664625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.045475, 34.846436, 28.758320>,  <33.396435, 34.957981, 28.914478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.045475, 34.846436, 28.758320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417733, 0.043858, 0.907511,
		-0.235954, 0.959328, -0.154973,
		-0.877397, -0.278868, -0.390394,
		32.782257, 34.762775, 28.641201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.882908, 35.422760, 29.140806>,  <33.396435, 34.957981, 28.914478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.882908, 35.422760, 29.140806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.692665, 35.090416, 29.025242>,  <32.578518, 34.891010, 28.955904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.692665, 35.090416, 29.025242>,  <32.882908, 35.422760, 29.140806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.692665, 35.090416, 29.025242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358067, -0.117135, 0.926319,
		-0.803483, 0.544014, -0.241793,
		-0.475608, -0.830860, -0.288909,
		32.549984, 34.841160, 28.938570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.247520, 35.525719, 29.427450>,  <32.882908, 35.422760, 29.140806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.247520, 35.525719, 29.427450> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.272598, 35.132938, 29.356064>,  <32.287643, 34.897270, 29.313232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.272598, 35.132938, 29.356064>,  <32.247520, 35.525719, 29.427450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.272598, 35.132938, 29.356064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189765, -0.187282, 0.963802,
		-0.979826, -0.026556, -0.198080,
		0.062692, -0.981947, -0.178464,
		32.291405, 34.838356, 29.302525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.724461, 35.175457, 29.798725>,  <32.247520, 35.525719, 29.427450>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.724461, 35.175457, 29.798725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.989405, 34.888397, 29.712696>,  <32.148373, 34.716160, 29.661079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.989405, 34.888397, 29.712696>,  <31.724461, 35.175457, 29.798725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.989405, 34.888397, 29.712696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173712, -0.426366, 0.887714,
		-0.728767, -0.550627, -0.407073,
		0.662361, -0.717650, -0.215071,
		32.188114, 34.673103, 29.648174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.438370, 34.413303, 29.865936>,  <31.724461, 35.175457, 29.798725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.438370, 34.413303, 29.865936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.837362, 34.395702, 29.888180>,  <32.076759, 34.385143, 29.901525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.837362, 34.395702, 29.888180>,  <31.438370, 34.413303, 29.865936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.837362, 34.395702, 29.888180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070823, -0.657360, 0.750241,
		0.003541, -0.752291, -0.658822,
		0.997483, -0.044003, 0.055608,
		32.136608, 34.382500, 29.904861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.599844, 33.789478, 30.098007>,  <31.438370, 34.413303, 29.865936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.599844, 33.789478, 30.098007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.949678, 33.966106, 30.178123>,  <32.159580, 34.072083, 30.226194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.949678, 33.966106, 30.178123>,  <31.599844, 33.789478, 30.098007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.949678, 33.966106, 30.178123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084622, -0.267738, 0.959769,
		0.477429, -0.856349, -0.196793,
		0.874586, 0.441568, 0.200292,
		32.212055, 34.098576, 30.238211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.978569, 33.324581, 30.324923>,  <31.599844, 33.789478, 30.098007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.978569, 33.324581, 30.324923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.172043, 33.644970, 30.466053>,  <32.288128, 33.837204, 30.550732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.172043, 33.644970, 30.466053>,  <31.978569, 33.324581, 30.324923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.172043, 33.644970, 30.466053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105023, -0.453321, 0.885139,
		0.868919, -0.391071, -0.303385,
		0.483683, 0.800976, 0.352828,
		32.317146, 33.885262, 30.571901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.398922, 33.000702, 30.802191>,  <31.978569, 33.324581, 30.324923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.398922, 33.000702, 30.802191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.402245, 33.390007, 30.894001>,  <32.404240, 33.623592, 30.949087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.402245, 33.390007, 30.894001>,  <32.398922, 33.000702, 30.802191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.402245, 33.390007, 30.894001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131177, -0.228612, 0.964640,
		0.991324, 0.022092, -0.129570,
		0.008311, 0.973267, 0.229526,
		32.404739, 33.681988, 30.962858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.948605, 33.132446, 31.225185>,  <32.398922, 33.000702, 30.802191>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.948605, 33.132446, 31.225185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.788666, 33.480156, 31.341450>,  <32.692703, 33.688782, 31.411209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.788666, 33.480156, 31.341450>,  <32.948605, 33.132446, 31.225185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.788666, 33.480156, 31.341450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179386, -0.236768, 0.954862,
		0.898857, 0.433939, -0.061265,
		-0.399846, 0.869274, 0.290663,
		32.668713, 33.740940, 31.428648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.451683, 33.422283, 31.699207>,  <32.948605, 33.132446, 31.225185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.451683, 33.422283, 31.699207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.080559, 33.556164, 31.765102>,  <32.857883, 33.636494, 31.804640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.080559, 33.556164, 31.765102>,  <33.451683, 33.422283, 31.699207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.080559, 33.556164, 31.765102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050351, -0.325200, 0.944304,
		0.369634, 0.884431, 0.284872,
		-0.927812, 0.334703, 0.164737,
		32.802216, 33.656574, 31.814524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.487129, 33.789421, 32.322002>,  <33.451683, 33.422283, 31.699207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.487129, 33.789421, 32.322002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.099327, 33.694073, 32.299267>,  <32.866646, 33.636864, 32.285625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.099327, 33.694073, 32.299267>,  <33.487129, 33.789421, 32.322002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.099327, 33.694073, 32.299267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069684, -0.490549, 0.868623,
		-0.234941, 0.838176, 0.492202,
		-0.969509, -0.238374, -0.056843,
		32.808475, 33.622562, 32.282215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.096436, 34.053707, 32.987076>,  <33.487129, 33.789421, 32.322002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.096436, 34.053707, 32.987076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.886936, 33.760094, 32.814156>,  <32.761238, 33.583927, 32.710403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.886936, 33.760094, 32.814156>,  <33.096436, 34.053707, 32.987076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.886936, 33.760094, 32.814156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008514, -0.511956, 0.858969,
		-0.851831, 0.446203, 0.274385,
		-0.523748, -0.734033, -0.432301,
		32.729813, 33.539883, 32.684464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.721394, 33.880997, 33.542423>,  <33.096436, 34.053707, 32.987076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.721394, 33.880997, 33.542423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.630497, 33.579533, 33.295731>,  <32.575958, 33.398655, 33.147717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.630497, 33.579533, 33.295731>,  <32.721394, 33.880997, 33.542423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.630497, 33.579533, 33.295731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200275, -0.583594, 0.786961,
		-0.953022, 0.302346, -0.018322,
		-0.227242, -0.753661, -0.616731,
		32.562325, 33.353436, 33.110710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.122894, 33.542404, 33.826645>,  <32.721394, 33.880997, 33.542423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.122894, 33.542404, 33.826645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.255512, 33.252045, 33.585594>,  <32.335083, 33.077831, 33.440964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.255512, 33.252045, 33.585594>,  <32.122894, 33.542404, 33.826645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.255512, 33.252045, 33.585594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226650, -0.681329, 0.696003,
		-0.915811, -0.094169, -0.390414,
		0.331542, -0.725895, -0.602625,
		32.354977, 33.034275, 33.404808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.568562, 33.067646, 33.713879>,  <32.122894, 33.542404, 33.826645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.568562, 33.067646, 33.713879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.915220, 32.875927, 33.658455>,  <32.123215, 32.760895, 33.625202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.915220, 32.875927, 33.658455>,  <31.568562, 33.067646, 33.713879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.915220, 32.875927, 33.658455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257281, -0.667267, 0.698972,
		-0.427472, -0.570112, -0.701598,
		0.866645, -0.479299, -0.138559,
		32.175213, 32.732136, 33.616886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.317875, 32.405598, 33.645714>,  <31.568562, 33.067646, 33.713879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.317875, 32.405598, 33.645714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.703611, 32.404629, 33.751575>,  <31.935053, 32.404049, 33.815094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.703611, 32.404629, 33.751575>,  <31.317875, 32.405598, 33.645714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.703611, 32.404629, 33.751575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226480, -0.524967, 0.820436,
		0.136950, -0.851119, -0.506795,
		0.964340, -0.002420, 0.264656,
		31.992914, 32.403904, 33.830971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.365932, 31.839279, 34.075081>,  <31.317875, 32.405598, 33.645714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.365932, 31.839279, 34.075081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.694757, 32.044601, 34.173656>,  <31.892052, 32.167793, 34.232803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.694757, 32.044601, 34.173656>,  <31.365932, 31.839279, 34.075081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.694757, 32.044601, 34.173656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058049, -0.355006, 0.933060,
		0.566432, -0.781339, -0.262040,
		0.822062, 0.513304, 0.246443,
		31.941376, 32.198593, 34.247589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.749197, 31.377777, 34.494812>,  <31.365932, 31.839279, 34.075081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.749197, 31.377777, 34.494812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.902864, 31.736172, 34.583912>,  <31.995066, 31.951208, 34.637371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.902864, 31.736172, 34.583912>,  <31.749197, 31.377777, 34.494812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.902864, 31.736172, 34.583912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085205, -0.205832, 0.974871,
		0.919323, -0.393494, -0.002731,
		0.384168, 0.895989, 0.222754,
		32.018116, 32.004967, 34.650738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.242935, 31.211494, 34.882496>,  <31.749197, 31.377777, 34.494812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.242935, 31.211494, 34.882496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.161209, 31.592285, 34.973705>,  <32.112175, 31.820761, 35.028431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.161209, 31.592285, 34.973705>,  <32.242935, 31.211494, 34.882496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.161209, 31.592285, 34.973705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152406, -0.261027, 0.953225,
		0.966969, 0.160003, 0.198418,
		-0.204311, 0.951979, 0.228020,
		32.099915, 31.877878, 35.042110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.679680, 31.392727, 35.394550>,  <32.242935, 31.211494, 34.882496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.679680, 31.392727, 35.394550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.372753, 31.649067, 35.403839>,  <32.188599, 31.802872, 35.409412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.372753, 31.649067, 35.403839>,  <32.679680, 31.392727, 35.394550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.372753, 31.649067, 35.403839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126952, -0.187299, 0.974065,
		0.628580, 0.744466, 0.225074,
		-0.767314, 0.640851, 0.023221,
		32.142559, 31.841322, 35.410805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.762619, 31.673708, 35.984306>,  <32.679680, 31.392727, 35.394550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.762619, 31.673708, 35.984306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.377708, 31.759953, 35.917927>,  <32.146763, 31.811699, 35.878098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.377708, 31.759953, 35.917927>,  <32.762619, 31.673708, 35.984306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.377708, 31.759953, 35.917927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195085, -0.121608, 0.973218,
		0.189654, 0.968878, 0.159082,
		-0.962275, 0.215609, -0.165950,
		32.089027, 31.824635, 35.868141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.535122, 32.164032, 36.404346>,  <32.762619, 31.673708, 35.984306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.535122, 32.164032, 36.404346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.179882, 32.010109, 36.303787>,  <31.966738, 31.917753, 36.243450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.179882, 32.010109, 36.303787>,  <32.535122, 32.164032, 36.404346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.179882, 32.010109, 36.303787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213722, -0.138521, 0.967024,
		-0.406946, 0.912541, 0.040778,
		-0.888098, -0.384812, -0.251401,
		31.913452, 31.894665, 36.228367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.151802, 32.346691, 36.909565>,  <32.535122, 32.164032, 36.404346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.151802, 32.346691, 36.909565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.926294, 32.057362, 36.750080>,  <31.790989, 31.883764, 36.654388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.926294, 32.057362, 36.750080>,  <32.151802, 32.346691, 36.909565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.926294, 32.057362, 36.750080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200076, -0.348757, 0.915608,
		-0.801330, 0.595968, 0.051901,
		-0.563773, -0.723320, -0.398708,
		31.757162, 31.840366, 36.630466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.491180, 32.280731, 37.397457>,  <32.151802, 32.346691, 36.909565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.491180, 32.280731, 37.397457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.490141, 31.942780, 37.183475>,  <31.489517, 31.740009, 37.055088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.490141, 31.942780, 37.183475>,  <31.491180, 32.280731, 37.397457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.490141, 31.942780, 37.183475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222750, -0.521025, 0.823963,
		-0.974872, 0.121302, -0.186842,
		-0.002599, -0.844878, -0.534953,
		31.489361, 31.689316, 37.022991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.883463, 31.971262, 37.589573>,  <31.491180, 32.280731, 37.397457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.883463, 31.971262, 37.589573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.117655, 31.682274, 37.442467>,  <31.258169, 31.508881, 37.354202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.117655, 31.682274, 37.442467>,  <30.883463, 31.971262, 37.589573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.117655, 31.682274, 37.442467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270118, -0.601573, 0.751762,
		-0.764362, -0.340802, -0.547361,
		0.585480, -0.722470, -0.367763,
		31.293299, 31.465532, 37.332138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.434116, 31.413853, 37.623440>,  <30.883463, 31.971262, 37.589573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.434116, 31.413853, 37.623440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.797064, 31.251087, 37.581299>,  <31.014833, 31.153427, 37.556015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.797064, 31.251087, 37.581299>,  <30.434116, 31.413853, 37.623440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.797064, 31.251087, 37.581299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173694, -0.591223, 0.787582,
		-0.382767, -0.696329, -0.607137,
		0.907369, -0.406916, -0.105353,
		31.069275, 31.129013, 37.549694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.340891, 30.724020, 37.537193>,  <30.434116, 31.413853, 37.623440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.340891, 30.724020, 37.537193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.708775, 30.782581, 37.682903>,  <30.929504, 30.817719, 37.770329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.708775, 30.782581, 37.682903>,  <30.340891, 30.724020, 37.537193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.708775, 30.782581, 37.682903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238663, -0.528242, 0.814862,
		0.311724, -0.836378, -0.450889,
		0.919711, 0.146402, 0.364278,
		30.984688, 30.826502, 37.792187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.969540, 30.006330, 37.319019>,  <30.340891, 30.724020, 37.537193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.969540, 30.006330, 37.319019> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.577497, 30.065338, 37.372139>,  <29.342272, 30.100742, 37.404011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.577497, 30.065338, 37.372139>,  <29.969540, 30.006330, 37.319019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.577497, 30.065338, 37.372139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101348, 0.203352, -0.973846,
		-0.170666, -0.967929, -0.184355,
		-0.980103, 0.147518, 0.132803,
		29.283466, 30.109592, 37.411980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.484436, 29.581848, 36.856247>,  <29.969540, 30.006330, 37.319019>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.484436, 29.581848, 36.856247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.262644, 29.904781, 36.937012>,  <29.129568, 30.098541, 36.985470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.262644, 29.904781, 36.937012>,  <29.484436, 29.581848, 36.856247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.262644, 29.904781, 36.937012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154985, 0.138197, -0.978203,
		-0.817639, -0.573685, 0.048497,
		-0.554479, 0.807333, 0.201907,
		29.096300, 30.146980, 36.997585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.826853, 29.431156, 36.490875>,  <29.484436, 29.581848, 36.856247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.826853, 29.431156, 36.490875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.851822, 29.815727, 36.598030>,  <28.866802, 30.046471, 36.662323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.851822, 29.815727, 36.598030>,  <28.826853, 29.431156, 36.490875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.851822, 29.815727, 36.598030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275551, 0.274575, -0.921238,
		-0.959258, -0.016311, 0.282062,
		0.062421, 0.961427, 0.267883,
		28.870548, 30.104155, 36.678394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.272913, 29.705639, 36.247463>,  <28.826853, 29.431156, 36.490875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.272913, 29.705639, 36.247463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.515287, 30.016506, 36.315403>,  <28.660711, 30.203028, 36.356167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.515287, 30.016506, 36.315403>,  <28.272913, 29.705639, 36.247463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.515287, 30.016506, 36.315403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183022, 0.343977, -0.920968,
		-0.774175, 0.526960, 0.350667,
		0.605935, 0.777170, 0.169853,
		28.697067, 30.249657, 36.366360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.005764, 30.264587, 36.028828>,  <28.272913, 29.705639, 36.247463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.005764, 30.264587, 36.028828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.384253, 30.393124, 36.043808>,  <28.611345, 30.470245, 36.052795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.384253, 30.393124, 36.043808>,  <28.005764, 30.264587, 36.028828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.384253, 30.393124, 36.043808> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098780, 0.397205, -0.912398,
		-0.308065, 0.859633, 0.407587,
		0.946223, 0.321339, 0.037451,
		28.668119, 30.489525, 36.055042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.004402, 30.924665, 35.799587>,  <28.005764, 30.264587, 36.028828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.004402, 30.924665, 35.799587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.379587, 30.800274, 35.738243>,  <28.604698, 30.725639, 35.701435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.379587, 30.800274, 35.738243>,  <28.004402, 30.924665, 35.799587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.379587, 30.800274, 35.738243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024813, 0.380967, -0.924256,
		0.345850, 0.870721, 0.349616,
		0.937961, -0.310979, -0.153362,
		28.660976, 30.706980, 35.692234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.361149, 31.474838, 35.544109>,  <28.004402, 30.924665, 35.799587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.361149, 31.474838, 35.544109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.566784, 31.153908, 35.422794>,  <28.690165, 30.961349, 35.350006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.566784, 31.153908, 35.422794>,  <28.361149, 31.474838, 35.544109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.566784, 31.153908, 35.422794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017196, 0.343883, -0.938855,
		0.857566, 0.487868, 0.162988,
		0.514086, -0.802328, -0.303292,
		28.721010, 30.913210, 35.331806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.735825, 31.753120, 35.016144>,  <28.361149, 31.474838, 35.544109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.735825, 31.753120, 35.016144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.794371, 31.363220, 34.948685>,  <28.829498, 31.129280, 34.908207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.794371, 31.363220, 34.948685>,  <28.735825, 31.753120, 35.016144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.794371, 31.363220, 34.948685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071513, 0.180467, -0.980978,
		0.986642, 0.131519, 0.096121,
		0.146364, -0.974748, -0.168651,
		28.838280, 31.070795, 34.898090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.221611, 31.701839, 34.593143>,  <28.735825, 31.753120, 35.016144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.221611, 31.701839, 34.593143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.092793, 31.327774, 34.534145>,  <29.015501, 31.103334, 34.498749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.092793, 31.327774, 34.534145>,  <29.221611, 31.701839, 34.593143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.092793, 31.327774, 34.534145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069094, 0.132158, -0.988817,
		0.944199, -0.328638, 0.022053,
		-0.322048, -0.935164, -0.147491,
		28.996178, 31.047224, 34.489899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.700344, 31.465727, 34.274158>,  <29.221611, 31.701839, 34.593143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.700344, 31.465727, 34.274158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.404583, 31.211506, 34.185291>,  <29.227127, 31.058973, 34.131973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.404583, 31.211506, 34.185291>,  <29.700344, 31.465727, 34.274158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.404583, 31.211506, 34.185291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298971, -0.014288, -0.954155,
		0.603242, -0.771925, 0.200576,
		-0.739402, -0.635553, -0.222164,
		29.182762, 31.020840, 34.118641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.012468, 30.936563, 33.921253>,  <29.700344, 31.465727, 34.274158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.012468, 30.936563, 33.921253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.629595, 30.946049, 33.805847>,  <29.399872, 30.951740, 33.736603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.629595, 30.946049, 33.805847>,  <30.012468, 30.936563, 33.921253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.629595, 30.946049, 33.805847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289159, 0.125728, -0.948989,
		0.013771, -0.991781, -0.127201,
		-0.957182, 0.023713, -0.288514,
		29.342440, 30.953163, 33.719292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.974890, 30.473808, 33.348724>,  <30.012468, 30.936563, 33.921253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.974890, 30.473808, 33.348724> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.649921, 30.702965, 33.305340>,  <29.454941, 30.840458, 33.279308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.649921, 30.702965, 33.305340>,  <29.974890, 30.473808, 33.348724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.649921, 30.702965, 33.305340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214462, 0.120624, -0.969255,
		-0.542195, -0.810707, -0.220861,
		-0.812423, 0.572891, -0.108464,
		29.406195, 30.874832, 33.272800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.752335, 30.282013, 32.704632>,  <29.974890, 30.473808, 33.348724>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.752335, 30.282013, 32.704632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.589760, 30.638138, 32.786758>,  <29.492216, 30.851812, 32.836033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.589760, 30.638138, 32.786758>,  <29.752335, 30.282013, 32.704632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.589760, 30.638138, 32.786758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316851, 0.348109, -0.882284,
		-0.856980, -0.293538, -0.423580,
		-0.406436, 0.890312, 0.205315,
		29.467829, 30.905231, 32.848354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.457659, 30.496115, 32.096111>,  <29.752335, 30.282013, 32.704632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.457659, 30.496115, 32.096111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.479380, 30.842186, 32.295517>,  <29.492413, 31.049828, 32.415161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.479380, 30.842186, 32.295517>,  <29.457659, 30.496115, 32.096111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.479380, 30.842186, 32.295517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217571, 0.477007, -0.851544,
		-0.974533, 0.154703, -0.162335,
		0.054302, 0.865177, 0.498518,
		29.495670, 31.101740, 32.445072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.204109, 30.895096, 31.598677>,  <29.457659, 30.496115, 32.096111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.204109, 30.895096, 31.598677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.359631, 31.169071, 31.845154>,  <29.452944, 31.333456, 31.993040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.359631, 31.169071, 31.845154>,  <29.204109, 30.895096, 31.598677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.359631, 31.169071, 31.845154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127059, 0.622562, -0.772187,
		-0.912517, 0.378522, 0.155027,
		0.388804, 0.684937, 0.616193,
		29.476273, 31.374552, 32.030010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.992081, 31.462673, 31.335180>,  <29.204109, 30.895096, 31.598677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.992081, 31.462673, 31.335180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.293179, 31.588955, 31.566250>,  <29.473837, 31.664724, 31.704891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.293179, 31.588955, 31.566250>,  <28.992081, 31.462673, 31.335180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.293179, 31.588955, 31.566250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279547, 0.641170, -0.714670,
		-0.596011, 0.699452, 0.394384,
		0.752745, 0.315702, 0.577674,
		29.519003, 31.683666, 31.739552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.946903, 32.182293, 31.409760>,  <28.992081, 31.462673, 31.335180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.946903, 32.182293, 31.409760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.325510, 32.064453, 31.462402>,  <29.552673, 31.993750, 31.493988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.325510, 32.064453, 31.462402>,  <28.946903, 32.182293, 31.409760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.325510, 32.064453, 31.462402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281162, 0.552950, -0.784343,
		0.158292, 0.779396, 0.606205,
		0.946515, -0.294597, 0.131609,
		29.609465, 31.976074, 31.501884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.278931, 32.761967, 31.429623>,  <28.946903, 32.182293, 31.409760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.278931, 32.761967, 31.429623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.545158, 32.481983, 31.326031>,  <29.704895, 32.313992, 31.263876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.545158, 32.481983, 31.326031>,  <29.278931, 32.761967, 31.429623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.545158, 32.481983, 31.326031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226104, 0.519805, -0.823820,
		0.711261, 0.489754, 0.504231,
		0.665571, -0.699960, -0.258982,
		29.744829, 32.271996, 31.248337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.493385, 33.139927, 30.909285>,  <29.278931, 32.761967, 31.429623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.493385, 33.139927, 30.909285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.675097, 32.785812, 30.869473>,  <29.784124, 32.573345, 30.845585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.675097, 32.785812, 30.869473>,  <29.493385, 33.139927, 30.909285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.675097, 32.785812, 30.869473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247169, 0.232586, -0.940644,
		0.855884, 0.402715, 0.324474,
		0.454280, -0.885282, -0.099528,
		29.811380, 32.520229, 30.839615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.158890, 33.312870, 30.622726>,  <29.493385, 33.139927, 30.909285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.158890, 33.312870, 30.622726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.117373, 32.924618, 30.535919>,  <30.092463, 32.691666, 30.483835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.117373, 32.924618, 30.535919>,  <30.158890, 33.312870, 30.622726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.117373, 32.924618, 30.535919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196355, 0.193906, -0.961169,
		0.975024, -0.142373, 0.170464,
		-0.103791, -0.970634, -0.217019,
		30.086235, 32.633427, 30.470814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.761484, 33.200794, 30.369371>,  <30.158890, 33.312870, 30.622726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.761484, 33.200794, 30.369371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.535057, 32.900600, 30.232937>,  <30.399200, 32.720486, 30.151075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.535057, 32.900600, 30.232937>,  <30.761484, 33.200794, 30.369371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.535057, 32.900600, 30.232937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181234, 0.290340, -0.939604,
		0.804189, -0.593697, -0.028339,
		-0.566069, -0.750484, -0.341087,
		30.365236, 32.675457, 30.130611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.184891, 32.714260, 29.796183>,  <30.761484, 33.200794, 30.369371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.184891, 32.714260, 29.796183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.786163, 32.709965, 29.764591>,  <30.546926, 32.707386, 29.745636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.786163, 32.709965, 29.764591>,  <31.184891, 32.714260, 29.796183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.786163, 32.709965, 29.764591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071571, 0.315531, -0.946212,
		0.035085, -0.948855, -0.313758,
		-0.996818, -0.010742, -0.078981,
		30.487118, 32.706741, 29.740896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.070772, 32.398392, 29.217268>,  <31.184891, 32.714260, 29.796183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.070772, 32.398392, 29.217268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.737549, 32.610695, 29.279625>,  <30.537615, 32.738079, 29.317039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.737549, 32.610695, 29.279625>,  <31.070772, 32.398392, 29.217268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.737549, 32.610695, 29.279625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027689, 0.321469, -0.946515,
		-0.552489, -0.784187, -0.282499,
		-0.833060, 0.530761, 0.155894,
		30.487631, 32.769924, 29.326393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.640213, 32.233517, 28.600658>,  <31.070772, 32.398392, 29.217268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.640213, 32.233517, 28.600658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.448732, 32.551476, 28.749779>,  <30.333843, 32.742252, 28.839251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.448732, 32.551476, 28.749779>,  <30.640213, 32.233517, 28.600658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.448732, 32.551476, 28.749779> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022736, 0.413245, -0.910336,
		-0.877683, -0.444256, -0.179749,
		-0.478703, 0.794899, 0.372799,
		30.305122, 32.789944, 28.861618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.024418, 32.359566, 28.164249>,  <30.640213, 32.233517, 28.600658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.024418, 32.359566, 28.164249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.135382, 32.700932, 28.340763>,  <30.201960, 32.905750, 28.446671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.135382, 32.700932, 28.340763>,  <30.024418, 32.359566, 28.164249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.135382, 32.700932, 28.340763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063640, 0.474623, -0.877886,
		-0.958641, 0.215452, 0.185977,
		0.277411, 0.853413, 0.441282,
		30.218605, 32.956955, 28.473148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.601431, 32.979939, 27.916510>,  <30.024418, 32.359566, 28.164249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.601431, 32.979939, 27.916510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.940226, 33.147339, 28.047638>,  <30.143503, 33.247780, 28.126316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.940226, 33.147339, 28.047638>,  <29.601431, 32.979939, 27.916510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.940226, 33.147339, 28.047638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029517, 0.652726, -0.757019,
		-0.530794, 0.631509, 0.565203,
		0.846987, 0.418503, 0.327823,
		30.194323, 33.272888, 28.145985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.375992, 33.562668, 28.171410>,  <29.601431, 32.979939, 27.916510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.375992, 33.562668, 28.171410> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.767403, 33.604591, 28.100414>,  <30.002249, 33.629745, 28.057817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.767403, 33.604591, 28.100414>,  <29.375992, 33.562668, 28.171410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.767403, 33.604591, 28.100414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199305, 0.700717, -0.685035,
		0.052571, 0.705699, 0.706559,
		0.978526, 0.104807, -0.177487,
		30.060961, 33.636032, 28.047169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.301483, 34.125755, 27.830698>,  <29.375992, 33.562668, 28.171410>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.301483, 34.125755, 27.830698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.676889, 34.003757, 27.765995>,  <29.902134, 33.930557, 27.727173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.676889, 34.003757, 27.765995>,  <29.301483, 34.125755, 27.830698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.676889, 34.003757, 27.765995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022540, 0.521677, -0.852845,
		0.344502, 0.796762, 0.496477,
		0.938515, -0.304998, -0.161760,
		29.958445, 33.912258, 27.717466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.738480, 34.707481, 27.654240>,  <29.301483, 34.125755, 27.830698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.738480, 34.707481, 27.654240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.942415, 34.404285, 27.491508>,  <30.064777, 34.222366, 27.393869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.942415, 34.404285, 27.491508>,  <29.738480, 34.707481, 27.654240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.942415, 34.404285, 27.491508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089645, 0.517147, -0.851189,
		0.855586, 0.397500, 0.331612,
		0.509840, -0.757992, -0.406830,
		30.095367, 34.176888, 27.369459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.225828, 35.050686, 27.231453>,  <29.738480, 34.707481, 27.654240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.225828, 35.050686, 27.231453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.200979, 34.686264, 27.068424>,  <30.186069, 34.467609, 26.970608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.200979, 34.686264, 27.068424>,  <30.225828, 35.050686, 27.231453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.200979, 34.686264, 27.068424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171534, 0.392538, -0.903598,
		0.983217, -0.126048, 0.131892,
		-0.062124, -0.911058, -0.407572,
		30.182343, 34.412949, 26.946152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.574327, 35.092640, 26.681179>,  <30.225828, 35.050686, 27.231453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.574327, 35.092640, 26.681179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.359739, 34.765808, 26.596718>,  <30.230988, 34.569710, 26.546041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.359739, 34.765808, 26.596718>,  <30.574327, 35.092640, 26.681179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.359739, 34.765808, 26.596718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149023, 0.337994, -0.929275,
		0.830658, -0.467060, -0.303087,
		-0.536469, -0.817077, -0.211154,
		30.198799, 34.520683, 26.533371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.807619, 34.732533, 26.056030>,  <30.574327, 35.092640, 26.681179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.807619, 34.732533, 26.056030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.437609, 34.581112, 26.068874>,  <30.215603, 34.490261, 26.076582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.437609, 34.581112, 26.068874>,  <30.807619, 34.732533, 26.056030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.437609, 34.581112, 26.068874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145490, 0.274898, -0.950402,
		0.350949, -0.883815, -0.309363,
		-0.925023, -0.378551, 0.032111,
		30.160101, 34.467548, 26.078508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.700472, 34.309803, 25.373133>,  <30.807619, 34.732533, 26.056030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.700472, 34.309803, 25.373133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.343531, 34.398922, 25.530136>,  <30.129366, 34.452393, 25.624338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.343531, 34.398922, 25.530136>,  <30.700472, 34.309803, 25.373133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.343531, 34.398922, 25.530136> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318425, 0.305537, -0.897359,
		-0.319855, -0.925748, -0.201703,
		-0.892355, 0.222797, 0.392509,
		30.075825, 34.465759, 25.647888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.220575, 34.045811, 24.956991>,  <30.700472, 34.309803, 25.373133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.220575, 34.045811, 24.956991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.993650, 34.309158, 25.154861>,  <29.857494, 34.467167, 25.273584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.993650, 34.309158, 25.154861>,  <30.220575, 34.045811, 24.956991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.993650, 34.309158, 25.154861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392049, 0.312332, -0.865301,
		-0.724192, -0.684834, 0.080923,
		-0.567313, 0.658370, 0.494677,
		29.823456, 34.506668, 25.303265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.470922, 33.917950, 24.783237>,  <30.220575, 34.045811, 24.956991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.470922, 33.917950, 24.783237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.500998, 34.301064, 24.894230>,  <29.519043, 34.530933, 24.960825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.500998, 34.301064, 24.894230>,  <29.470922, 33.917950, 24.783237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.500998, 34.301064, 24.894230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451526, 0.280806, -0.846919,
		-0.889084, -0.061611, 0.453578,
		0.075188, 0.957785, 0.277480,
		29.523554, 34.588398, 24.977474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.824080, 34.178635, 24.594164>,  <29.470922, 33.917950, 24.783237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.824080, 34.178635, 24.594164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.023777, 34.522255, 24.639385>,  <29.143597, 34.728428, 24.666519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.023777, 34.522255, 24.639385>,  <28.824080, 34.178635, 24.594164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.023777, 34.522255, 24.639385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516759, 0.399940, -0.756973,
		-0.695496, 0.319492, 0.643592,
		0.499245, 0.859053, 0.113055,
		29.173550, 34.779972, 24.673302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.349606, 34.732155, 24.733856>,  <28.824080, 34.178635, 24.594164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.349606, 34.732155, 24.733856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.678459, 34.923084, 24.609756>,  <28.875772, 35.037643, 24.535295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.678459, 34.923084, 24.609756>,  <28.349606, 34.732155, 24.733856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.678459, 34.923084, 24.609756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.528397, 0.436984, -0.727902,
		-0.211870, 0.762370, 0.611476,
		0.822136, 0.477322, -0.310250,
		28.925100, 35.066280, 24.516682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.110481, 35.291553, 24.537104>,  <28.349606, 34.732155, 24.733856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.110481, 35.291553, 24.537104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.459572, 35.345345, 24.349373>,  <28.669025, 35.377621, 24.236734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.459572, 35.345345, 24.349373>,  <28.110481, 35.291553, 24.537104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.459572, 35.345345, 24.349373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472276, 0.476167, -0.741768,
		0.123723, 0.869010, 0.479075,
		0.872725, 0.134482, -0.469325,
		28.721390, 35.385689, 24.208576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.200090, 35.934860, 24.284107>,  <28.110481, 35.291553, 24.537104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.200090, 35.934860, 24.284107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.449566, 35.755138, 24.028252>,  <28.599251, 35.647305, 23.874739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.449566, 35.755138, 24.028252>,  <28.200090, 35.934860, 24.284107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.449566, 35.755138, 24.028252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.533316, 0.353660, -0.768439,
		0.571478, 0.820396, -0.019048,
		0.623688, -0.449305, -0.639639,
		28.636673, 35.620346, 23.836359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.264181, 36.389034, 23.694426>,  <28.200090, 35.934860, 24.284107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.264181, 36.389034, 23.694426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.347015, 36.017277, 23.572220>,  <28.396717, 35.794220, 23.498896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.347015, 36.017277, 23.572220>,  <28.264181, 36.389034, 23.694426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.347015, 36.017277, 23.572220> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.643268, 0.105931, -0.758277,
		0.737103, 0.353557, -0.575913,
		0.207087, -0.929395, -0.305514,
		28.409142, 35.738457, 23.480566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.667210, 36.364262, 22.996000>,  <28.264181, 36.389034, 23.694426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.667210, 36.364262, 22.996000> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.421295, 36.057629, 23.070183>,  <28.273746, 35.873650, 23.114693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.421295, 36.057629, 23.070183>,  <28.667210, 36.364262, 22.996000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.421295, 36.057629, 23.070183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464638, 0.162022, -0.870552,
		0.637300, -0.621372, -0.455791,
		-0.614785, -0.766580, 0.185456,
		28.236860, 35.827656, 23.125820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.466917, 35.805405, 22.578835>,  <28.667210, 36.364262, 22.996000>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.466917, 35.805405, 22.578835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.165548, 35.876369, 22.832096>,  <27.984728, 35.918949, 22.984053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.165548, 35.876369, 22.832096>,  <28.466917, 35.805405, 22.578835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.165548, 35.876369, 22.832096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.584682, 0.259799, -0.768539,
		-0.300844, -0.949225, -0.092006,
		-0.753419, 0.177415, 0.633153,
		27.939522, 35.929592, 23.022041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.888672, 35.520287, 22.264553>,  <28.466917, 35.805405, 22.578835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.888672, 35.520287, 22.264553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.758871, 35.794094, 22.525669>,  <27.680990, 35.958378, 22.682339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.758871, 35.794094, 22.525669>,  <27.888672, 35.520287, 22.264553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.758871, 35.794094, 22.525669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.667210, 0.323539, -0.670934,
		-0.670469, -0.653268, 0.351727,
		-0.324503, 0.684516, 0.652790,
		27.661520, 35.999451, 22.721506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.239662, 35.569485, 21.850807>,  <27.888672, 35.520287, 22.264553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.239662, 35.569485, 21.850807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.535378, 35.836086, 21.889229>,  <27.712807, 35.996048, 21.912283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.535378, 35.836086, 21.889229>,  <27.239662, 35.569485, 21.850807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.535378, 35.836086, 21.889229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496800, 0.636138, -0.590355,
		-0.454577, 0.388723, 0.801408,
		0.739290, 0.666501, 0.096056,
		27.757164, 36.036037, 21.918045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.938494, 36.116413, 22.055866>,  <27.239662, 35.569485, 21.850807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.938494, 36.116413, 22.055866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.275841, 36.267254, 21.902752>,  <27.478249, 36.357758, 21.810883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.275841, 36.267254, 21.902752>,  <26.938494, 36.116413, 22.055866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.275841, 36.267254, 21.902752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.534177, 0.665583, -0.521205,
		0.058227, 0.644042, 0.762771,
		0.843365, 0.377106, -0.382787,
		27.528851, 36.380386, 21.787916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.814409, 36.694908, 21.750689>,  <26.938494, 36.116413, 22.055866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.814409, 36.694908, 21.750689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.951363, 37.043293, 21.891655>,  <27.033535, 37.252323, 21.976234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.951363, 37.043293, 21.891655>,  <26.814409, 36.694908, 21.750689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.951363, 37.043293, 21.891655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.827009, 0.457377, -0.326898,
		-0.445904, -0.179529, 0.876892,
		0.342382, 0.870962, 0.352418,
		27.054077, 37.304581, 21.997381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.253061, 37.091545, 21.624569>,  <26.814409, 36.694908, 21.750689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.253061, 37.091545, 21.624569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.521372, 37.368046, 21.732075>,  <26.682358, 37.533947, 21.796577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.521372, 37.368046, 21.732075>,  <26.253061, 37.091545, 21.624569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.521372, 37.368046, 21.732075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500871, 0.689471, -0.523219,
		-0.546980, 0.216347, 0.808707,
		0.670777, 0.691248, 0.268765,
		26.722605, 37.575420, 21.812704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.690956, 36.671875, 21.916531>,  <26.253061, 37.091545, 21.624569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.690956, 36.671875, 21.916531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.306992, 36.769321, 21.971992>,  <25.076612, 36.827789, 22.005270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.306992, 36.769321, 21.971992>,  <25.690956, 36.671875, 21.916531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.306992, 36.769321, 21.971992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039323, 0.372719, -0.927110,
		-0.277535, -0.895395, -0.348198,
		-0.959911, 0.243613, 0.138653,
		25.019018, 36.842407, 22.013588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.350344, 36.506790, 21.324856>,  <25.690956, 36.671875, 21.916531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.350344, 36.506790, 21.324856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.103197, 36.771729, 21.494347>,  <24.954910, 36.930691, 21.596041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.103197, 36.771729, 21.494347>,  <25.350344, 36.506790, 21.324856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.103197, 36.771729, 21.494347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231408, 0.361855, -0.903057,
		-0.751461, -0.656021, -0.070306,
		-0.617865, 0.662343, 0.423728,
		24.917837, 36.970432, 21.621466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.835323, 36.517338, 20.852444>,  <25.350344, 36.506790, 21.324856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.835323, 36.517338, 20.852444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.755184, 36.849472, 21.060448>,  <24.707100, 37.048752, 21.185249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.755184, 36.849472, 21.060448>,  <24.835323, 36.517338, 20.852444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.755184, 36.849472, 21.060448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214545, 0.480703, -0.850232,
		-0.955945, -0.281909, 0.081835,
		-0.200350, 0.830333, 0.520008,
		24.695080, 37.098572, 21.216450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.218676, 36.769592, 20.487640>,  <24.835323, 36.517338, 20.852444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.218676, 36.769592, 20.487640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.337929, 37.084255, 20.703896>,  <24.409481, 37.273052, 20.833649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.337929, 37.084255, 20.703896>,  <24.218676, 36.769592, 20.487640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.337929, 37.084255, 20.703896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418419, 0.616782, -0.666712,
		-0.857929, -0.027443, 0.513035,
		0.298134, 0.786655, 0.540638,
		24.427368, 37.320251, 20.866087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.673927, 37.264545, 20.685377>,  <24.218676, 36.769592, 20.487640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.673927, 37.264545, 20.685377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.026770, 37.452869, 20.679337>,  <24.238476, 37.565865, 20.675713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.026770, 37.452869, 20.679337>,  <23.673927, 37.264545, 20.685377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.026770, 37.452869, 20.679337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317924, 0.571392, -0.756595,
		-0.347584, 0.672197, 0.653710,
		0.882105, 0.470810, -0.015100,
		24.291401, 37.594112, 20.674807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.525475, 38.005554, 20.595425>,  <23.673927, 37.264545, 20.685377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.525475, 38.005554, 20.595425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.907913, 37.954018, 20.490143>,  <24.137377, 37.923096, 20.426973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.907913, 37.954018, 20.490143>,  <23.525475, 38.005554, 20.595425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.907913, 37.954018, 20.490143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155662, 0.537692, -0.828647,
		0.248286, 0.833239, 0.494031,
		0.956098, -0.128840, -0.263205,
		24.194742, 37.915367, 20.411180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.817966, 38.667793, 20.353687>,  <23.525475, 38.005554, 20.595425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.817966, 38.667793, 20.353687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.098370, 38.438339, 20.184204>,  <24.266611, 38.300667, 20.082514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.098370, 38.438339, 20.184204>,  <23.817966, 38.667793, 20.353687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.098370, 38.438339, 20.184204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034383, 0.620626, -0.783353,
		0.712322, 0.534570, 0.454788,
		0.701010, -0.573636, -0.423706,
		24.308672, 38.266247, 20.057093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.286062, 39.102566, 20.084423>,  <23.817966, 38.667793, 20.353687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.286062, 39.102566, 20.084423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.350508, 38.764500, 19.880566>,  <24.389175, 38.561661, 19.758251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.350508, 38.764500, 19.880566>,  <24.286062, 39.102566, 20.084423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.350508, 38.764500, 19.880566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025275, 0.512687, -0.858204,
		0.986612, 0.151149, 0.061239,
		0.161113, -0.845166, -0.509643,
		24.398842, 38.510948, 19.727673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.813923, 39.265171, 19.453640>,  <24.286062, 39.102566, 20.084423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.813923, 39.265171, 19.453640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.698427, 38.891354, 19.370438>,  <24.629129, 38.667065, 19.320517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.698427, 38.891354, 19.370438>,  <24.813923, 39.265171, 19.453640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.698427, 38.891354, 19.370438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061744, 0.234984, -0.970036,
		0.955415, -0.267243, -0.125551,
		-0.288738, -0.934539, -0.208007,
		24.611805, 38.610992, 19.308035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.341892, 39.081100, 19.065784>,  <24.813923, 39.265171, 19.453640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.341892, 39.081100, 19.065784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.004572, 38.889408, 18.968475>,  <24.802179, 38.774395, 18.910089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.004572, 38.889408, 18.968475>,  <25.341892, 39.081100, 19.065784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.004572, 38.889408, 18.968475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066356, 0.542033, -0.837733,
		0.533305, -0.690333, -0.488904,
		-0.843317, -0.479209, -0.243261,
		24.751581, 38.745640, 18.895493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.325296, 38.893875, 18.373394>,  <25.341892, 39.081100, 19.065784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.325296, 38.893875, 18.373394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.936075, 38.905437, 18.464897>,  <24.702541, 38.912376, 18.519798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.936075, 38.905437, 18.464897>,  <25.325296, 38.893875, 18.373394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.936075, 38.905437, 18.464897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182181, 0.511734, -0.839606,
		-0.141333, -0.858657, -0.492679,
		-0.973055, 0.028907, 0.228756,
		24.644159, 38.914108, 18.533524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.034081, 38.706276, 17.763971>,  <25.325296, 38.893875, 18.373394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.034081, 38.706276, 17.763971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.750282, 38.886211, 17.980953>,  <24.580004, 38.994175, 18.111143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.750282, 38.886211, 17.980953>,  <25.034081, 38.706276, 17.763971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.750282, 38.886211, 17.980953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207684, 0.602099, -0.770937,
		-0.673414, -0.659635, -0.333760,
		-0.709494, 0.449843, 0.542457,
		24.537434, 39.021164, 18.143690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.819649, 39.026165, 17.279261>,  <25.034081, 38.706276, 17.763971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.819649, 39.026165, 17.279261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.616928, 39.198647, 17.577847>,  <24.495296, 39.302135, 17.756998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.616928, 39.198647, 17.577847>,  <24.819649, 39.026165, 17.279261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.616928, 39.198647, 17.577847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215200, 0.775210, -0.593919,
		-0.834770, -0.461638, -0.300082,
		-0.506802, 0.431208, 0.746466,
		24.464888, 39.328011, 17.801786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.069511, 39.147396, 17.036345>,  <24.819649, 39.026165, 17.279261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.069511, 39.147396, 17.036345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.194162, 39.411415, 17.309761>,  <24.268953, 39.569824, 17.473810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.194162, 39.411415, 17.309761>,  <24.069511, 39.147396, 17.036345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.194162, 39.411415, 17.309761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291957, 0.751076, -0.592153,
		-0.904239, -0.015033, 0.426761,
		0.311629, 0.660044, 0.683542,
		24.287651, 39.609428, 17.514824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.513002, 39.550961, 17.039696>,  <24.069511, 39.147396, 17.036345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.513002, 39.550961, 17.039696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.823544, 39.743198, 17.202820>,  <24.009869, 39.858540, 17.300694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.823544, 39.743198, 17.202820>,  <23.513002, 39.550961, 17.039696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.823544, 39.743198, 17.202820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326847, 0.860180, -0.391485,
		-0.538934, 0.170639, 0.824883,
		0.776351, 0.480595, 0.407808,
		24.056448, 39.887379, 17.325163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.151817, 40.198143, 17.276211>,  <23.513002, 39.550961, 17.039696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.151817, 40.198143, 17.276211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.543608, 40.278053, 17.265465>,  <23.778681, 40.326000, 17.259018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.543608, 40.278053, 17.265465>,  <23.151817, 40.198143, 17.276211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.543608, 40.278053, 17.265465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187348, 0.853067, -0.487008,
		-0.074375, 0.482045, 0.872984,
		0.979474, 0.199773, -0.026863,
		23.837450, 40.337986, 17.257406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.246838, 40.898933, 17.567215>,  <23.151817, 40.198143, 17.276211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.246838, 40.898933, 17.567215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.569525, 40.803303, 17.351051>,  <23.763138, 40.745922, 17.221352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.569525, 40.803303, 17.351051>,  <23.246838, 40.898933, 17.567215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.569525, 40.803303, 17.351051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080614, 0.950479, -0.300153,
		0.585410, 0.198574, 0.786043,
		0.806720, -0.239079, -0.540411,
		23.811541, 40.731579, 17.188929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.698723, 41.490509, 17.668444>,  <23.246838, 40.898933, 17.567215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.698723, 41.490509, 17.668444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.861965, 41.303535, 17.354767>,  <23.959911, 41.191349, 17.166561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.861965, 41.303535, 17.354767>,  <23.698723, 41.490509, 17.668444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.861965, 41.303535, 17.354767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063092, 0.871364, -0.486563,
		0.910752, 0.149093, 0.385100,
		0.408105, -0.467436, -0.784190,
		23.984396, 41.163303, 17.119511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.345598, 41.820080, 17.535250>,  <23.698723, 41.490509, 17.668444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.345598, 41.820080, 17.535250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.233809, 41.661274, 17.185558>,  <24.166735, 41.565990, 16.975744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.233809, 41.661274, 17.185558>,  <24.345598, 41.820080, 17.535250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.233809, 41.661274, 17.185558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033448, 0.905930, -0.422104,
		0.959570, -0.147209, -0.239906,
		-0.279476, -0.397014, -0.874227,
		24.149965, 41.542171, 16.923290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.832420, 42.054317, 17.064342>,  <24.345598, 41.820080, 17.535250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.832420, 42.054317, 17.064342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.557945, 41.924873, 16.803753>,  <24.393259, 41.847206, 16.647400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.557945, 41.924873, 16.803753>,  <24.832420, 42.054317, 17.064342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.557945, 41.924873, 16.803753> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156032, 0.809267, -0.566341,
		0.710491, -0.490268, -0.504816,
		-0.686189, -0.323613, -0.651474,
		24.352089, 41.827789, 16.608311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.016642, 42.022717, 16.282713>,  <24.832420, 42.054317, 17.064342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.016642, 42.022717, 16.282713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.621773, 42.082150, 16.306099>,  <24.384851, 42.117809, 16.320129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.621773, 42.082150, 16.306099>,  <25.016642, 42.022717, 16.282713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.621773, 42.082150, 16.306099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093067, 0.832948, -0.545468,
		-0.129746, -0.533029, -0.836090,
		-0.987170, 0.148585, 0.058464,
		24.325623, 42.126724, 16.323639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.765884, 42.159233, 15.640409>,  <25.016642, 42.022717, 16.282713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.765884, 42.159233, 15.640409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.541691, 42.335274, 15.921027>,  <24.407175, 42.440899, 16.089399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.541691, 42.335274, 15.921027>,  <24.765884, 42.159233, 15.640409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.541691, 42.335274, 15.921027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130382, 0.789653, -0.599541,
		-0.817839, -0.427501, -0.385205,
		-0.560482, 0.440104, 0.701547,
		24.373547, 42.467304, 16.131491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.015196, 42.433922, 15.536777>,  <24.765884, 42.159233, 15.640409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.015196, 42.433922, 15.536777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.186295, 42.662178, 15.817176>,  <24.288954, 42.799133, 15.985415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.186295, 42.662178, 15.817176>,  <24.015196, 42.433922, 15.536777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.186295, 42.662178, 15.817176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248162, 0.819865, -0.515981,
		-0.869165, 0.046749, 0.492308,
		0.427748, 0.570645, 0.700997,
		24.314619, 42.833370, 16.027475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.561113, 42.890385, 15.897040>,  <24.015196, 42.433922, 15.536777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.561113, 42.890385, 15.897040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.936382, 43.022560, 15.855767>,  <24.161543, 43.101864, 15.831003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.936382, 43.022560, 15.855767>,  <23.561113, 42.890385, 15.897040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.936382, 43.022560, 15.855767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341252, 0.832723, -0.436026,
		-0.058156, 0.444278, 0.893999,
		0.938171, 0.330437, -0.103183,
		24.217834, 43.121693, 15.824812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.613234, 43.669380, 16.169533>,  <23.561113, 42.890385, 15.897040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.613234, 43.669380, 16.169533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.885923, 43.557110, 15.899282>,  <24.049538, 43.489746, 15.737131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.885923, 43.557110, 15.899282>,  <23.613234, 43.669380, 16.169533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.885923, 43.557110, 15.899282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093792, 0.882330, -0.461191,
		0.725573, 0.377773, 0.575179,
		0.681724, -0.280680, -0.675627,
		24.090441, 43.472904, 15.696593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.522409, 44.331501, 16.672733>,  <23.613234, 43.669380, 16.169533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.522409, 44.331501, 16.672733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.620909, 44.424534, 17.049088>,  <23.680008, 44.480354, 17.274900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.620909, 44.424534, 17.049088>,  <23.522409, 44.331501, 16.672733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.620909, 44.424534, 17.049088> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060321, 0.965221, -0.254382,
		-0.967328, 0.119396, 0.223652,
		0.246246, 0.232580, 0.940888,
		23.694782, 44.494308, 17.331354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.094748, 44.816597, 17.041359>,  <23.522409, 44.331501, 16.672733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.094748, 44.816597, 17.041359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.459206, 44.861019, 17.200096>,  <23.677879, 44.887672, 17.295338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.459206, 44.861019, 17.200096>,  <23.094748, 44.816597, 17.041359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.459206, 44.861019, 17.200096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004667, 0.965719, -0.259546,
		-0.412064, 0.234632, 0.880427,
		0.911143, 0.111059, 0.396843,
		23.732548, 44.894337, 17.319149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.178019, 45.372108, 17.602459>,  <23.094748, 44.816597, 17.041359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.178019, 45.372108, 17.602459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.478563, 45.321056, 17.343487>,  <23.658890, 45.290424, 17.188103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.478563, 45.321056, 17.343487>,  <23.178019, 45.372108, 17.602459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.478563, 45.321056, 17.343487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005584, 0.979853, -0.199641,
		0.659868, 0.153618, 0.735511,
		0.751361, -0.127629, -0.647431,
		23.703972, 45.282768, 17.149258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.814064, 45.347706, 18.372913>,  <23.178019, 45.372108, 17.602459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.814064, 45.347706, 18.372913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.825970, 44.977856, 18.221024>,  <22.833113, 44.755947, 18.129890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.825970, 44.977856, 18.221024>,  <22.814064, 45.347706, 18.372913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.825970, 44.977856, 18.221024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285164, -0.371958, 0.883362,
		-0.958017, 0.081992, -0.274739,
		0.029763, -0.924621, -0.379723,
		22.834898, 44.700470, 18.107107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.224833, 44.978905, 18.655006>,  <22.814064, 45.347706, 18.372913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.224833, 44.978905, 18.655006> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.504917, 44.704182, 18.577038>,  <22.672968, 44.539345, 18.530256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.504917, 44.704182, 18.577038>,  <22.224833, 44.978905, 18.655006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.504917, 44.704182, 18.577038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374426, -0.585740, 0.718828,
		-0.607882, -0.430338, -0.667299,
		0.700203, -0.686817, -0.194931,
		22.714979, 44.498138, 18.518560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.890474, 44.375713, 18.542101>,  <22.224833, 44.978905, 18.655006>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.890474, 44.375713, 18.542101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.262316, 44.309513, 18.673824>,  <22.485420, 44.269794, 18.752859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.262316, 44.309513, 18.673824>,  <21.890474, 44.375713, 18.542101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.262316, 44.309513, 18.673824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354719, -0.644317, 0.677517,
		0.100049, -0.746635, -0.657667,
		0.929604, -0.165502, 0.329310,
		22.541197, 44.259861, 18.772617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.766453, 43.981571, 19.097847>,  <21.890474, 44.375713, 18.542101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.766453, 43.981571, 19.097847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.158974, 43.910419, 19.068443>,  <22.394487, 43.867729, 19.050802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.158974, 43.910419, 19.068443>,  <21.766453, 43.981571, 19.097847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.158974, 43.910419, 19.068443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071697, -0.692279, 0.718059,
		-0.178613, -0.699364, -0.692089,
		0.981304, -0.177875, -0.073507,
		22.453365, 43.857056, 19.046391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.808163, 43.246868, 18.987844>,  <21.766453, 43.981571, 19.097847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.808163, 43.246868, 18.987844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.152527, 43.380856, 19.141014>,  <22.359146, 43.461246, 19.232916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.152527, 43.380856, 19.141014>,  <21.808163, 43.246868, 18.987844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.152527, 43.380856, 19.141014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099803, -0.849239, 0.518491,
		0.498872, -0.408157, -0.764549,
		0.860910, 0.334964, 0.382926,
		22.410801, 43.481346, 19.255892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.335592, 42.689842, 18.861814>,  <21.808163, 43.246868, 18.987844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.335592, 42.689842, 18.861814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.479120, 42.915356, 19.159378>,  <22.565237, 43.050663, 19.337915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.479120, 42.915356, 19.159378>,  <22.335592, 42.689842, 18.861814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.479120, 42.915356, 19.159378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248665, -0.825918, 0.505989,
		0.899674, 0.003424, -0.436550,
		0.358822, 0.563779, 0.743908,
		22.586767, 43.084488, 19.382551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.827063, 42.257881, 19.096996>,  <22.335592, 42.689842, 18.861814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.827063, 42.257881, 19.096996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.781675, 42.527969, 19.388531>,  <22.754444, 42.690022, 19.563452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.781675, 42.527969, 19.388531>,  <22.827063, 42.257881, 19.096996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.781675, 42.527969, 19.388531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101399, -0.721873, 0.684557,
		0.988354, 0.151577, 0.013441,
		-0.113466, 0.675222, 0.728835,
		22.747635, 42.730537, 19.607182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.438173, 42.178764, 19.526810>,  <22.827063, 42.257881, 19.096996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.438173, 42.178764, 19.526810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.140259, 42.330872, 19.746151>,  <22.961510, 42.422134, 19.877756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.140259, 42.330872, 19.746151>,  <23.438173, 42.178764, 19.526810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.140259, 42.330872, 19.746151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087323, -0.759140, 0.645043,
		0.661565, 0.528303, 0.532191,
		-0.744786, 0.380266, 0.548354,
		22.916822, 42.444950, 19.910658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.663115, 42.034920, 20.247269>,  <23.438173, 42.178764, 19.526810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.663115, 42.034920, 20.247269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.265614, 42.079033, 20.254169>,  <23.027113, 42.105499, 20.258310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.265614, 42.079033, 20.254169>,  <23.663115, 42.034920, 20.247269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.265614, 42.079033, 20.254169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073331, -0.761540, 0.643956,
		0.084152, 0.638667, 0.764868,
		-0.993751, 0.110278, 0.017251,
		22.967487, 42.112118, 20.259344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.474588, 41.892315, 20.993921>,  <23.663115, 42.034920, 20.247269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.474588, 41.892315, 20.993921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.132875, 41.840973, 20.792435>,  <22.927849, 41.810165, 20.671543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.132875, 41.840973, 20.792435>,  <23.474588, 41.892315, 20.993921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.132875, 41.840973, 20.792435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237757, -0.765241, 0.598229,
		-0.462251, 0.630818, 0.623212,
		-0.854281, -0.128359, -0.503714,
		22.876591, 41.802464, 20.641321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.983486, 41.934898, 21.515787>,  <23.474588, 41.892315, 20.993921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.983486, 41.934898, 21.515787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.807241, 41.747211, 21.209663>,  <22.701494, 41.634598, 21.025990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.807241, 41.747211, 21.209663>,  <22.983486, 41.934898, 21.515787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.807241, 41.747211, 21.209663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018417, -0.857068, 0.514874,
		-0.897509, 0.212765, 0.386276,
		-0.440612, -0.469218, -0.765307,
		22.675058, 41.606445, 20.980072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.568289, 41.405254, 21.790415>,  <22.983486, 41.934898, 21.515787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.568289, 41.405254, 21.790415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.550505, 41.274982, 21.412640>,  <22.539835, 41.196819, 21.185974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.550505, 41.274982, 21.412640>,  <22.568289, 41.405254, 21.790415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.550505, 41.274982, 21.412640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172880, -0.928599, 0.328353,
		-0.983939, 0.177872, -0.015019,
		-0.044458, -0.325676, -0.944436,
		22.537167, 41.177280, 21.129309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.896313, 40.952091, 21.605137>,  <22.568289, 41.405254, 21.790415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.896313, 40.952091, 21.605137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.206528, 40.843956, 21.376942>,  <22.392656, 40.779076, 21.240025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.206528, 40.843956, 21.376942>,  <21.896313, 40.952091, 21.605137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.206528, 40.843956, 21.376942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168341, -0.959508, 0.225843,
		-0.608443, -0.079113, -0.789644,
		0.775537, -0.270342, -0.570488,
		22.439188, 40.762852, 21.205795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.695805, 40.280369, 21.476418>,  <21.896313, 40.952091, 21.605137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.695805, 40.280369, 21.476418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.073383, 40.304222, 21.346554>,  <22.299931, 40.318535, 21.268635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.073383, 40.304222, 21.346554>,  <21.695805, 40.280369, 21.476418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.073383, 40.304222, 21.346554> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094030, -0.991376, 0.091284,
		-0.316417, -0.116696, -0.941415,
		0.943949, 0.059638, -0.324661,
		22.356567, 40.322113, 21.249155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.799726, 39.813042, 20.858627>,  <21.695805, 40.280369, 21.476418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.799726, 39.813042, 20.858627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.171041, 39.823223, 21.007023>,  <22.393831, 39.829330, 21.096060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.171041, 39.823223, 21.007023>,  <21.799726, 39.813042, 20.858627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.171041, 39.823223, 21.007023> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039955, -0.985053, 0.167556,
		0.369707, -0.170363, -0.913396,
		0.928289, 0.025451, 0.370988,
		22.449528, 39.830860, 21.118319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.165308, 39.197346, 20.697910>,  <21.799726, 39.813042, 20.858627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.165308, 39.197346, 20.697910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.417528, 39.329456, 20.978859>,  <22.568861, 39.408722, 21.147429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.417528, 39.329456, 20.978859>,  <22.165308, 39.197346, 20.697910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.417528, 39.329456, 20.978859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126318, -0.936549, 0.326986,
		0.765800, -0.117459, -0.632261,
		0.630551, 0.330272, 0.702372,
		22.606693, 39.428539, 21.189569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.663616, 38.646824, 20.718405>,  <22.165308, 39.197346, 20.697910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.663616, 38.646824, 20.718405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.672857, 38.841152, 21.067905>,  <22.678402, 38.957748, 21.277605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.672857, 38.841152, 21.067905>,  <22.663616, 38.646824, 20.718405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.672857, 38.841152, 21.067905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046751, -0.872504, 0.486365,
		0.998639, -0.052084, 0.002558,
		0.023100, 0.485823, 0.873752,
		22.679787, 38.986900, 21.330030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.205898, 38.317654, 21.198578>,  <22.663616, 38.646824, 20.718405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.205898, 38.317654, 21.198578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.956432, 38.512863, 21.442833>,  <22.806753, 38.629990, 21.589386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.956432, 38.512863, 21.442833>,  <23.205898, 38.317654, 21.198578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.956432, 38.512863, 21.442833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083259, -0.735260, 0.672652,
		0.777246, 0.470350, 0.417923,
		-0.623664, 0.488021, 0.610638,
		22.769333, 38.659271, 21.626024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.514610, 38.284016, 21.964958>,  <23.205898, 38.317654, 21.198578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.514610, 38.284016, 21.964958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.128704, 38.378517, 22.011288>,  <22.897161, 38.435219, 22.039085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.128704, 38.378517, 22.011288>,  <23.514610, 38.284016, 21.964958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.128704, 38.378517, 22.011288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043003, -0.575847, 0.816426,
		0.259581, 0.782677, 0.565716,
		-0.964763, 0.236256, 0.115822,
		22.839275, 38.449394, 22.046034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.456814, 38.384029, 22.673048>,  <23.514610, 38.284016, 21.964958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.456814, 38.384029, 22.673048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.090204, 38.327400, 22.523411>,  <22.870239, 38.293423, 22.433628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.090204, 38.327400, 22.523411>,  <23.456814, 38.384029, 22.673048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.090204, 38.327400, 22.523411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089580, -0.838856, 0.536931,
		-0.389825, 0.525620, 0.756148,
		-0.916521, -0.141574, -0.374092,
		22.815248, 38.284927, 22.411182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.919950, 38.379040, 23.361649>,  <23.456814, 38.384029, 22.673048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.919950, 38.379040, 23.361649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.763630, 38.205593, 23.036873>,  <22.669838, 38.101524, 22.842007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.763630, 38.205593, 23.036873>,  <22.919950, 38.379040, 23.361649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.763630, 38.205593, 23.036873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225306, -0.810195, 0.541130,
		-0.892474, 0.394411, 0.218929,
		-0.390803, -0.433619, -0.811941,
		22.646389, 38.075508, 22.793291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.365938, 38.087086, 23.566656>,  <22.919950, 38.379040, 23.361649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.365938, 38.087086, 23.566656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.452568, 37.886173, 23.231800>,  <22.504547, 37.765625, 23.030886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.452568, 37.886173, 23.231800>,  <22.365938, 38.087086, 23.566656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.452568, 37.886173, 23.231800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226772, -0.859921, 0.457286,
		-0.949563, 0.090803, -0.300142,
		0.216576, -0.502285, -0.837141,
		22.517540, 37.735489, 22.980658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.038332, 37.502110, 23.706842>,  <22.365938, 38.087086, 23.566656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.038332, 37.502110, 23.706842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.225430, 37.404232, 23.367115>,  <22.337688, 37.345505, 23.163279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.225430, 37.404232, 23.367115>,  <22.038332, 37.502110, 23.706842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.225430, 37.404232, 23.367115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095839, -0.969291, 0.226471,
		-0.878653, -0.024532, -0.476831,
		0.467744, -0.244689, -0.849319,
		22.365753, 37.330826, 23.112320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.552542, 37.088703, 23.282846>,  <22.038332, 37.502110, 23.706842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.552542, 37.088703, 23.282846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.925491, 37.008389, 23.162605>,  <22.149261, 36.960201, 23.090460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.925491, 37.008389, 23.162605>,  <21.552542, 37.088703, 23.282846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.925491, 37.008389, 23.162605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155844, -0.973576, 0.166921,
		-0.326175, -0.108785, -0.939029,
		0.932374, -0.200788, -0.300602,
		22.205204, 36.948151, 23.072424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.078653, 37.719364, 23.458593>,  <21.552542, 37.088703, 23.282846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.078653, 37.719364, 23.458593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.772648, 37.595657, 23.232635>,  <20.589045, 37.521431, 23.097061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.772648, 37.595657, 23.232635>,  <21.078653, 37.719364, 23.458593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.772648, 37.595657, 23.232635> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510576, -0.243351, 0.824677,
		-0.392516, 0.919311, 0.028261,
		-0.765012, -0.309269, -0.564897,
		20.543144, 37.502876, 23.063166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.586626, 37.692757, 23.926636>,  <21.078653, 37.719364, 23.458593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.586626, 37.692757, 23.926636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.396441, 37.486912, 23.641228>,  <20.282330, 37.363403, 23.469982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.396441, 37.486912, 23.641228>,  <20.586626, 37.692757, 23.926636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.396441, 37.486912, 23.641228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.640802, -0.353110, 0.681679,
		-0.602751, 0.781338, -0.161873,
		-0.475463, -0.514611, -0.713520,
		20.253801, 37.332527, 23.427172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.896616, 37.900707, 23.949951>,  <20.586626, 37.692757, 23.926636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.896616, 37.900707, 23.949951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.950327, 37.529495, 23.810966>,  <19.982553, 37.306767, 23.727575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.950327, 37.529495, 23.810966>,  <19.896616, 37.900707, 23.949951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.950327, 37.529495, 23.810966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466951, -0.368526, 0.803832,
		-0.874029, 0.054313, -0.482829,
		0.134276, -0.928030, -0.347464,
		19.990610, 37.251087, 23.706728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.308790, 37.454300, 23.701429>,  <19.896616, 37.900707, 23.949951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.308790, 37.454300, 23.701429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.609524, 37.231674, 23.842842>,  <19.789963, 37.098099, 23.927691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.609524, 37.231674, 23.842842>,  <19.308790, 37.454300, 23.701429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.609524, 37.231674, 23.842842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.595317, -0.342489, 0.726841,
		-0.283450, -0.756929, -0.588825,
		0.751833, -0.556561, 0.353534,
		19.835073, 37.064705, 23.948902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.889404, 37.893230, 24.085972>,  <19.308790, 37.454300, 23.701429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.889404, 37.893230, 24.085972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.555981, 37.685604, 24.010334>,  <18.355927, 37.561028, 23.964952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.555981, 37.685604, 24.010334>,  <18.889404, 37.893230, 24.085972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.555981, 37.685604, 24.010334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517046, -0.612499, -0.597920,
		0.194538, -0.596171, 0.778932,
		-0.833558, -0.519062, -0.189093,
		18.305914, 37.529884, 23.953606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<28.818363, 28.146328, 30.757452> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.213972, 28.092236, 30.781281>,  <29.451338, 28.059780, 30.795578>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.213972, 28.092236, 30.781281>,  <28.818363, 28.146328, 30.757452>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.213972, 28.092236, 30.781281> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105474, 0.363682, -0.925533,
		0.103498, 0.921655, 0.373953,
		0.989022, -0.135233, 0.059570,
		29.510679, 28.051666, 30.799152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.145475, 28.726654, 30.473322>,  <28.818363, 28.146328, 30.757452>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.145475, 28.726654, 30.473322> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.437525, 28.453365, 30.468754>,  <29.612755, 28.289392, 30.466013>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.437525, 28.453365, 30.468754>,  <29.145475, 28.726654, 30.473322>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.437525, 28.453365, 30.468754> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259296, 0.292482, -0.920446,
		0.632207, 0.669077, 0.390704,
		0.730123, -0.683220, -0.011420,
		29.656561, 28.248400, 30.465328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.777914, 29.059162, 30.422689>,  <29.145475, 28.726654, 30.473322>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.777914, 29.059162, 30.422689> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.846466, 28.691402, 30.281078>,  <29.887598, 28.470747, 30.196112>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.846466, 28.691402, 30.281078>,  <29.777914, 29.059162, 30.422689>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.846466, 28.691402, 30.281078> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322314, 0.391891, -0.861705,
		0.930990, 0.033572, 0.363498,
		0.171381, -0.919399, -0.354026,
		29.897881, 28.415583, 30.174870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.268564, 29.123993, 30.082569>,  <29.777914, 29.059162, 30.422689>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.268564, 29.123993, 30.082569> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.154499, 28.774178, 29.925667>,  <30.086060, 28.564289, 29.831526>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.154499, 28.774178, 29.925667>,  <30.268564, 29.123993, 30.082569>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.154499, 28.774178, 29.925667> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392143, 0.266981, -0.880310,
		0.874590, -0.404851, 0.266811,
		-0.285161, -0.874538, -0.392258,
		30.068951, 28.511816, 29.807989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.802139, 28.796497, 29.805132>,  <30.268564, 29.123993, 30.082569>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.802139, 28.796497, 29.805132> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.483679, 28.650841, 29.611828>,  <30.292603, 28.563448, 29.495846>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.483679, 28.650841, 29.611828>,  <30.802139, 28.796497, 29.805132>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.483679, 28.650841, 29.611828> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456562, 0.162621, -0.874703,
		0.397103, -0.917037, 0.036781,
		-0.796153, -0.364140, -0.483262,
		30.244833, 28.541599, 29.466850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.078876, 28.310095, 29.320068>,  <30.802139, 28.796497, 29.805132>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.078876, 28.310095, 29.320068> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.723114, 28.381100, 29.151569>,  <30.509657, 28.423702, 29.050470>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.723114, 28.381100, 29.151569>,  <31.078876, 28.310095, 29.320068>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.723114, 28.381100, 29.151569> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440300, 0.084985, -0.893820,
		-0.122863, -0.980443, -0.153744,
		-0.889405, 0.177511, -0.421247,
		30.456293, 28.434353, 29.025196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.045042, 27.836668, 28.763159>,  <31.078876, 28.310095, 29.320068>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.045042, 27.836668, 28.763159> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.774521, 28.115768, 28.668705>,  <30.612209, 28.283228, 28.612032>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.774521, 28.115768, 28.668705>,  <31.045042, 27.836668, 28.763159>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.774521, 28.115768, 28.668705> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337205, 0.008250, -0.941395,
		-0.654911, -0.716293, -0.240865,
		-0.676302, 0.697751, -0.236135,
		30.571630, 28.325094, 28.597864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.880852, 27.647863, 28.012457>,  <31.045042, 27.836668, 28.763159>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.880852, 27.647863, 28.012457> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.752508, 28.025288, 28.045300>,  <30.675503, 28.251743, 28.065004>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.752508, 28.025288, 28.045300>,  <30.880852, 27.647863, 28.012457>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.752508, 28.025288, 28.045300> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191058, 0.149389, -0.970144,
		-0.927657, -0.295592, -0.228207,
		-0.320858, 0.943562, 0.082106,
		30.656250, 28.308355, 28.069931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.421656, 27.768103, 27.519487>,  <30.880852, 27.647863, 28.012457>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.421656, 27.768103, 27.519487> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.550541, 28.133484, 27.618912>,  <30.627872, 28.352713, 27.678566>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.550541, 28.133484, 27.618912>,  <30.421656, 27.768103, 27.519487>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.550541, 28.133484, 27.618912> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058726, 0.242770, -0.968305,
		-0.944843, 0.326599, 0.024580,
		0.322214, 0.913453, 0.248560,
		30.647205, 28.407520, 27.693480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.893000, 28.207747, 27.262171>,  <30.421656, 27.768103, 27.519487>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.893000, 28.207747, 27.262171> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.208084, 28.441456, 27.340290>,  <30.397135, 28.581680, 27.387161>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.208084, 28.441456, 27.340290>,  <29.893000, 28.207747, 27.262171>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.208084, 28.441456, 27.340290> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101780, 0.436089, -0.894129,
		-0.607581, 0.684436, 0.402979,
		0.787709, 0.584271, 0.195297,
		30.444397, 28.616737, 27.398880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.744009, 28.974770, 27.170521>,  <29.893000, 28.207747, 27.262171>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.744009, 28.974770, 27.170521> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.138802, 28.915653, 27.145145>,  <30.375677, 28.880182, 27.129921>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.138802, 28.915653, 27.145145>,  <29.744009, 28.974770, 27.170521>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.138802, 28.915653, 27.145145> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032167, 0.567863, -0.822495,
		0.157584, 0.809746, 0.565224,
		0.986982, -0.147793, -0.063439,
		30.434896, 28.871315, 27.126114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.049870, 29.603504, 27.184895>,  <29.744009, 28.974770, 27.170521>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.049870, 29.603504, 27.184895> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.337839, 29.385063, 27.013557>,  <30.510622, 29.253998, 26.910755>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.337839, 29.385063, 27.013557>,  <30.049870, 29.603504, 27.184895>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.337839, 29.385063, 27.013557> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085636, 0.682339, -0.726002,
		0.688747, 0.485986, 0.538000,
		0.719926, -0.546104, -0.428341,
		30.553818, 29.221231, 26.885056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.475315, 30.144012, 26.964972>,  <30.049870, 29.603504, 27.184895>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.475315, 30.144012, 26.964972> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.629341, 29.826477, 26.776695>,  <30.721756, 29.635956, 26.663731>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.629341, 29.826477, 26.776695>,  <30.475315, 30.144012, 26.964972>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.629341, 29.826477, 26.776695> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293128, 0.588809, -0.753246,
		0.875100, 0.152077, 0.459426,
		0.385065, -0.793837, -0.470689,
		30.744862, 29.588326, 26.635489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.956013, 30.446251, 26.631119>,  <30.475315, 30.144012, 26.964972>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.956013, 30.446251, 26.631119> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.936117, 30.093540, 26.443504>,  <30.924179, 29.881914, 26.330936>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.936117, 30.093540, 26.443504>,  <30.956013, 30.446251, 26.631119>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.936117, 30.093540, 26.443504> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247386, 0.444104, -0.861146,
		0.967640, -0.158866, 0.196050,
		-0.049740, -0.881778, -0.469034,
		30.921196, 29.829006, 26.302794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.525480, 30.369263, 26.088224>,  <30.956013, 30.446251, 26.631119>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.525480, 30.369263, 26.088224> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.243544, 30.112709, 25.967010>,  <31.074383, 29.958776, 25.894281>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.243544, 30.112709, 25.967010>,  <31.525480, 30.369263, 26.088224>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.243544, 30.112709, 25.967010> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173257, 0.258600, -0.950320,
		0.687884, -0.722326, -0.071147,
		-0.704839, -0.641383, -0.303035,
		31.032091, 29.920294, 25.876101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.703163, 30.107788, 25.474003>,  <31.525480, 30.369263, 26.088224>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.703163, 30.107788, 25.474003> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.311806, 30.025105, 25.472248>,  <31.076992, 29.975494, 25.471195>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.311806, 30.025105, 25.472248>,  <31.703163, 30.107788, 25.474003>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.311806, 30.025105, 25.472248> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050551, 0.259729, -0.964358,
		0.200478, -0.943299, -0.264566,
		-0.978393, -0.206706, -0.004386,
		31.018288, 29.963093, 25.470932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.589703, 29.948393, 24.769875>,  <31.703163, 30.107788, 25.474003>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.589703, 29.948393, 24.769875> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.218821, 29.998795, 24.910961>,  <30.996290, 30.029036, 24.995613>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.218821, 29.998795, 24.910961>,  <31.589703, 29.948393, 24.769875>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.218821, 29.998795, 24.910961> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299076, 0.317837, -0.899741,
		-0.225480, -0.939735, -0.257015,
		-0.927207, 0.126007, 0.352718,
		30.940659, 30.036596, 25.016777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.052193, 29.747252, 24.194286>,  <31.589703, 29.948393, 24.769875>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.052193, 29.747252, 24.194286> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.886171, 29.983719, 24.470909>,  <30.786558, 30.125599, 24.636883>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.886171, 29.983719, 24.470909>,  <31.052193, 29.747252, 24.194286>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.886171, 29.983719, 24.470909> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321696, 0.615655, -0.719361,
		-0.851025, -0.521044, -0.065352,
		-0.415053, 0.591170, 0.691555,
		30.761656, 30.161070, 24.678375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.515406, 29.800146, 23.927603>,  <31.052193, 29.747252, 24.194286>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.515406, 29.800146, 23.927603> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.535015, 30.108616, 24.181496>,  <30.546780, 30.293697, 24.333832>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.535015, 30.108616, 24.181496>,  <30.515406, 29.800146, 23.927603>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.535015, 30.108616, 24.181496> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385651, 0.600830, -0.700197,
		-0.921342, -0.210461, 0.326857,
		0.049021, 0.771174, 0.634734,
		30.549721, 30.339968, 24.371916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.833048, 30.178764, 24.021833>,  <30.515406, 29.800146, 23.927603>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.833048, 30.178764, 24.021833> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.147814, 30.412006, 24.102581>,  <30.336674, 30.551952, 24.151030>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.147814, 30.412006, 24.102581>,  <29.833048, 30.178764, 24.021833>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.147814, 30.412006, 24.102581> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363709, 0.702579, -0.611636,
		-0.498478, 0.407884, 0.764951,
		0.786915, 0.583107, 0.201869,
		30.383888, 30.586939, 24.163141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.469175, 30.914448, 24.165892>,  <29.833048, 30.178764, 24.021833>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.469175, 30.914448, 24.165892> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.852619, 30.926125, 24.052601>,  <30.082685, 30.933130, 23.984627>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.852619, 30.926125, 24.052601>,  <29.469175, 30.914448, 24.165892>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.852619, 30.926125, 24.052601> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235829, 0.638796, -0.732342,
		0.159544, 0.768822, 0.619240,
		0.958608, 0.029194, -0.283227,
		30.140202, 30.934883, 23.967632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.625847, 31.592506, 23.881989>,  <29.469175, 30.914448, 24.165892>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.625847, 31.592506, 23.881989> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.863386, 31.311874, 23.724442>,  <30.005909, 31.143496, 23.629913>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.863386, 31.311874, 23.724442>,  <29.625847, 31.592506, 23.881989>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.863386, 31.311874, 23.724442> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234549, 0.317312, -0.918858,
		0.769632, 0.638042, 0.023880,
		0.593847, -0.701581, -0.393866,
		30.041540, 31.101400, 23.606281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.183882, 32.258068, 23.648169>,  <29.625847, 31.592506, 23.881989>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.183882, 32.258068, 23.648169> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.974028, 32.597668, 23.622993>,  <28.848116, 32.801426, 23.607889>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.974028, 32.597668, 23.622993>,  <29.183882, 32.258068, 23.648169>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.974028, 32.597668, 23.622993> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319498, -0.127830, 0.938925,
		0.789099, 0.512702, 0.338318,
		-0.524636, 0.848997, -0.062937,
		28.816637, 32.852367, 23.604113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.452003, 32.668564, 24.165525>,  <29.183882, 32.258068, 23.648169>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.452003, 32.668564, 24.165525> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.073307, 32.770977, 24.087418>,  <28.846090, 32.832424, 24.040552>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.073307, 32.770977, 24.087418>,  <29.452003, 32.668564, 24.165525>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.073307, 32.770977, 24.087418> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252942, -0.216065, 0.943046,
		0.199262, 0.942211, 0.269319,
		-0.946739, 0.256036, -0.195271,
		28.789286, 32.847786, 24.028835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.300592, 33.209858, 24.678900>,  <29.452003, 32.668564, 24.165525>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.300592, 33.209858, 24.678900> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.971075, 33.026825, 24.545048>,  <28.773365, 32.917004, 24.464737>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.971075, 33.026825, 24.545048>,  <29.300592, 33.209858, 24.678900>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.971075, 33.026825, 24.545048> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231342, -0.267542, 0.935362,
		-0.517538, 0.847960, 0.114541,
		-0.823794, -0.457587, -0.334632,
		28.723936, 32.889549, 24.444658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.752867, 33.416367, 25.139759>,  <29.300592, 33.209858, 24.678900>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.752867, 33.416367, 25.139759> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.585232, 33.107124, 24.949322>,  <28.484652, 32.921577, 24.835058>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.585232, 33.107124, 24.949322>,  <28.752867, 33.416367, 25.139759>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.585232, 33.107124, 24.949322> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.519095, -0.226192, 0.824243,
		-0.744920, 0.592569, -0.306523,
		-0.419088, -0.773110, -0.476094,
		28.459505, 32.875191, 24.806494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.207270, 33.422905, 25.453545>,  <28.752867, 33.416367, 25.139759>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.207270, 33.422905, 25.453545> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.164494, 33.070213, 25.269753>,  <28.138828, 32.858597, 25.159477>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.164494, 33.070213, 25.269753>,  <28.207270, 33.422905, 25.453545>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.164494, 33.070213, 25.269753> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382430, -0.390099, 0.837598,
		-0.917775, 0.265291, -0.295481,
		-0.106940, -0.881728, -0.459478,
		28.132412, 32.805695, 25.131908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.553459, 33.160645, 25.684265>,  <28.207270, 33.422905, 25.453545>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.553459, 33.160645, 25.684265> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.745319, 32.833752, 25.556473>,  <27.860435, 32.637615, 25.479797>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.745319, 32.833752, 25.556473>,  <27.553459, 33.160645, 25.684265>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.745319, 32.833752, 25.556473> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374455, -0.519922, 0.767766,
		-0.793547, -0.248629, -0.555397,
		0.479652, -0.817230, -0.319482,
		27.889215, 32.588581, 25.460629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.997299, 32.553684, 25.726574>,  <27.553459, 33.160645, 25.684265>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.997299, 32.553684, 25.726574> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.380026, 32.438118, 25.739414>,  <27.609661, 32.368778, 25.747118>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.380026, 32.438118, 25.739414>,  <26.997299, 32.553684, 25.726574>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.380026, 32.438118, 25.739414> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169711, -0.465525, 0.868611,
		-0.236015, -0.836548, -0.494455,
		0.956815, -0.288919, 0.032101,
		27.667070, 32.351440, 25.749044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.915882, 31.919571, 25.997469>,  <26.997299, 32.553684, 25.726574>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.915882, 31.919571, 25.997469> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.303650, 31.996803, 26.058064>,  <27.536310, 32.043144, 26.094419>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.303650, 31.996803, 26.058064>,  <26.915882, 31.919571, 25.997469>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.303650, 31.996803, 26.058064> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045036, -0.466815, 0.883207,
		0.241248, -0.863019, -0.443844,
		0.969418, 0.193083, 0.151485,
		27.594475, 32.054729, 26.103510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.286615, 31.268202, 26.124958>,  <26.915882, 31.919571, 25.997469>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.286615, 31.268202, 26.124958> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.502970, 31.555408, 26.300182>,  <27.632782, 31.727732, 26.405317>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.502970, 31.555408, 26.300182>,  <27.286615, 31.268202, 26.124958>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.502970, 31.555408, 26.300182> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114300, -0.453241, 0.884030,
		0.833294, -0.528228, -0.163081,
		0.540884, 0.718017, 0.438060,
		27.665236, 31.770813, 26.431601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.819132, 30.866764, 26.509464>,  <27.286615, 31.268202, 26.124958>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.819132, 30.866764, 26.509464> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.785822, 31.234619, 26.663002>,  <27.765837, 31.455332, 26.755125>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.785822, 31.234619, 26.663002>,  <27.819132, 30.866764, 26.509464>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.785822, 31.234619, 26.663002> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152926, -0.392412, 0.906987,
		0.984723, 0.016830, 0.173315,
		-0.083275, 0.919636, 0.383843,
		27.760839, 31.510509, 26.778154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.172499, 30.760406, 27.135132>,  <27.819132, 30.866764, 26.509464>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.172499, 30.760406, 27.135132> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.016272, 31.122971, 27.199474>,  <27.922535, 31.340509, 27.238079>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.016272, 31.122971, 27.199474>,  <28.172499, 30.760406, 27.135132>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.016272, 31.122971, 27.199474> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217297, -0.260569, 0.940684,
		0.894561, 0.332447, 0.298731,
		-0.390567, 0.906412, 0.160856,
		27.899101, 31.394894, 27.247730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.574146, 31.133856, 27.703230>,  <28.172499, 30.760406, 27.135132>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.574146, 31.133856, 27.703230> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.198788, 31.271957, 27.709023>,  <27.973572, 31.354818, 27.712498>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.198788, 31.271957, 27.709023>,  <28.574146, 31.133856, 27.703230>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.198788, 31.271957, 27.709023> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053545, -0.186683, 0.980960,
		0.341382, 0.919756, 0.193669,
		-0.938398, 0.345252, 0.014482,
		27.917269, 31.375532, 27.713367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.552568, 31.655802, 28.222828>,  <28.574146, 31.133856, 27.703230>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.552568, 31.655802, 28.222828> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.188604, 31.504925, 28.153793>,  <27.970226, 31.414398, 28.112373>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.188604, 31.504925, 28.153793>,  <28.552568, 31.655802, 28.222828>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.188604, 31.504925, 28.153793> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117113, -0.165535, 0.979226,
		-0.397927, 0.911220, 0.106448,
		-0.909911, -0.377194, -0.172587,
		27.915630, 31.391768, 28.102016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.156395, 31.908428, 28.725513>,  <28.552568, 31.655802, 28.222828>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.156395, 31.908428, 28.725513> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.925722, 31.601135, 28.614334>,  <27.787317, 31.416759, 28.547626>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.925722, 31.601135, 28.614334>,  <28.156395, 31.908428, 28.725513>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.925722, 31.601135, 28.614334> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266014, -0.145104, 0.952986,
		-0.772446, 0.623509, -0.120681,
		-0.576684, -0.768233, -0.277947,
		27.752716, 31.370665, 28.530951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.754206, 31.866690, 29.277563>,  <28.156395, 31.908428, 28.725513>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.754206, 31.866690, 29.277563> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.652481, 31.502914, 29.145958>,  <27.591446, 31.284649, 29.066996>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.652481, 31.502914, 29.145958>,  <27.754206, 31.866690, 29.277563>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.652481, 31.502914, 29.145958> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194131, -0.285269, 0.938581,
		-0.947438, 0.302563, -0.104003,
		-0.254311, -0.909438, -0.329012,
		27.576187, 31.230083, 29.047255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.105471, 31.707287, 29.621449>,  <27.754206, 31.866690, 29.277563>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.105471, 31.707287, 29.621449> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.281483, 31.360222, 29.528900>,  <27.387089, 31.151983, 29.473372>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.281483, 31.360222, 29.528900>,  <27.105471, 31.707287, 29.621449>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.281483, 31.360222, 29.528900> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263290, -0.370995, 0.890528,
		-0.858518, -0.330939, -0.391696,
		0.440028, -0.867665, -0.231373,
		27.413490, 31.099922, 29.459488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.597363, 31.164656, 29.873291>,  <27.105471, 31.707287, 29.621449>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.597363, 31.164656, 29.873291> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.949181, 30.983585, 29.814659>,  <27.160271, 30.874943, 29.779480>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.949181, 30.983585, 29.814659>,  <26.597363, 31.164656, 29.873291>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.949181, 30.983585, 29.814659> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084064, -0.451050, 0.888531,
		-0.468339, -0.769176, -0.434771,
		0.879541, -0.452682, -0.146585,
		27.213043, 30.847782, 29.770685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.408638, 30.458570, 30.060432>,  <26.597363, 31.164656, 29.873291>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.408638, 30.458570, 30.060432> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.808378, 30.459034, 30.074852>,  <27.048222, 30.459312, 30.083504>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.808378, 30.459034, 30.074852>,  <26.408638, 30.458570, 30.060432>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.808378, 30.459034, 30.074852> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026368, -0.658469, 0.752146,
		0.024608, -0.752607, -0.658010,
		0.999349, 0.001159, 0.036048,
		27.108183, 30.459381, 30.085667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<26.869951, 29.622133, 29.922829> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.084784, 29.897823, 30.117359>,  <27.213682, 30.063236, 30.234077>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.084784, 29.897823, 30.117359>,  <26.869951, 29.622133, 29.922829>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.084784, 29.897823, 30.117359> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331716, -0.702657, 0.629474,
		0.775570, -0.176757, -0.606010,
		0.537081, 0.689224, 0.486327,
		27.245909, 30.104591, 30.263258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.336279, 29.239275, 30.328072>,  <26.869951, 29.622133, 29.922829>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.336279, 29.239275, 30.328072> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.403767, 29.594517, 30.499096>,  <27.444260, 29.807661, 30.601711>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.403767, 29.594517, 30.499096>,  <27.336279, 29.239275, 30.328072>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.403767, 29.594517, 30.499096> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275730, -0.458987, 0.844573,
		0.946313, -0.024603, -0.322315,
		0.168717, 0.888102, 0.427561,
		27.454382, 29.860947, 30.627365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.050804, 29.186262, 30.603874>,  <27.336279, 29.239275, 30.328072>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.050804, 29.186262, 30.603874> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.847610, 29.471226, 30.797546>,  <27.725695, 29.642204, 30.913750>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.847610, 29.471226, 30.797546>,  <28.050804, 29.186262, 30.603874>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.847610, 29.471226, 30.797546> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295674, -0.383735, 0.874828,
		0.809031, 0.587556, -0.015710,
		-0.507982, 0.712408, 0.484178,
		27.695215, 29.684948, 30.942801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.498991, 29.393383, 31.205500>,  <28.050804, 29.186262, 30.603874>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.498991, 29.393383, 31.205500> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.137636, 29.539822, 31.294819>,  <27.920822, 29.627686, 31.348412>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.137636, 29.539822, 31.294819>,  <28.498991, 29.393383, 31.205500>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.137636, 29.539822, 31.294819> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117785, -0.288859, 0.950099,
		0.412330, 0.884609, 0.217831,
		-0.903388, 0.366097, 0.223299,
		27.866619, 29.649651, 31.361809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.574863, 29.898540, 31.822296>,  <28.498991, 29.393383, 31.205500>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.574863, 29.898540, 31.822296> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.193266, 29.779739, 31.805893>,  <27.964308, 29.708458, 31.796051>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.193266, 29.779739, 31.805893>,  <28.574863, 29.898540, 31.822296>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.193266, 29.779739, 31.805893> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041017, -0.264780, 0.963436,
		-0.297002, 0.917431, 0.264781,
		-0.953995, -0.297003, -0.041010,
		27.907066, 29.690638, 31.793591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.304714, 30.251110, 32.329159>,  <28.574863, 29.898540, 31.822296>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.304714, 30.251110, 32.329159> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.064722, 29.938366, 32.261372>,  <27.920727, 29.750719, 32.220699>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.064722, 29.938366, 32.261372>,  <28.304714, 30.251110, 32.329159>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.064722, 29.938366, 32.261372> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123434, -0.299759, 0.945996,
		-0.790437, 0.546660, 0.276357,
		-0.599978, -0.781862, -0.169464,
		27.884729, 29.703808, 32.210533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.838017, 30.193432, 32.887150>,  <28.304714, 30.251110, 32.329159>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.838017, 30.193432, 32.887150> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.855425, 29.817722, 32.750992>,  <27.865870, 29.592297, 32.669296>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.855425, 29.817722, 32.750992>,  <27.838017, 30.193432, 32.887150>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.855425, 29.817722, 32.750992> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265898, -0.339322, 0.902308,
		-0.963018, 0.051243, -0.264518,
		0.043520, -0.939273, -0.340399,
		27.868481, 29.535940, 32.648872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.240135, 29.830160, 33.327152>,  <27.838017, 30.193432, 32.887150>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.240135, 29.830160, 33.327152> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.459696, 29.528133, 33.183723>,  <27.591433, 29.346916, 33.097664>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.459696, 29.528133, 33.183723>,  <27.240135, 29.830160, 33.327152>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.459696, 29.528133, 33.183723> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326455, -0.588555, 0.739614,
		-0.769502, -0.288917, -0.569556,
		0.548902, -0.755069, -0.358576,
		27.624367, 29.301613, 33.076149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.823130, 29.141310, 33.337440>,  <27.240135, 29.830160, 33.327152>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.823130, 29.141310, 33.337440> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.213015, 29.052029, 33.341763>,  <27.446945, 28.998461, 33.344357>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.213015, 29.052029, 33.341763>,  <26.823130, 29.141310, 33.337440>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.213015, 29.052029, 33.341763> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174418, -0.729665, 0.661186,
		-0.139691, -0.646352, -0.750144,
		0.974713, -0.223201, 0.010808,
		27.505428, 28.985069, 33.345005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.791836, 28.433403, 33.470947>,  <26.823130, 29.141310, 33.337440>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.791836, 28.433403, 33.470947> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.169014, 28.524097, 33.568474>,  <27.395321, 28.578514, 33.626987>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.169014, 28.524097, 33.568474>,  <26.791836, 28.433403, 33.470947>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.169014, 28.524097, 33.568474> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093854, -0.521578, 0.848026,
		0.319443, -0.822525, -0.470540,
		0.942946, 0.226734, 0.243812,
		27.451899, 28.592117, 33.641617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.109859, 27.878376, 33.856613>,  <26.791836, 28.433403, 33.470947>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.109859, 27.878376, 33.856613> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.387623, 28.155239, 33.935318>,  <27.554281, 28.321358, 33.982540>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.387623, 28.155239, 33.935318>,  <27.109859, 27.878376, 33.856613>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.387623, 28.155239, 33.935318> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081699, -0.347509, 0.934110,
		0.714930, -0.632577, -0.297862,
		0.694406, 0.692159, 0.196764,
		27.595945, 28.362886, 33.994347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.511423, 27.536186, 34.266022>,  <27.109859, 27.878376, 33.856613>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.511423, 27.536186, 34.266022> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.636763, 27.904202, 34.360123>,  <27.711966, 28.125011, 34.416584>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.636763, 27.904202, 34.360123>,  <27.511423, 27.536186, 34.266022>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.636763, 27.904202, 34.360123> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049865, -0.231446, 0.971569,
		0.948329, -0.316169, -0.026645,
		0.313346, 0.920038, 0.235253,
		27.730766, 28.180212, 34.430698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.914183, 27.418385, 34.795727>,  <27.511423, 27.536186, 34.266022>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.914183, 27.418385, 34.795727> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.831999, 27.806866, 34.843983>,  <27.782688, 28.039953, 34.872936>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.831999, 27.806866, 34.843983>,  <27.914183, 27.418385, 34.795727>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.831999, 27.806866, 34.843983> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102036, -0.143856, 0.984324,
		0.973332, 0.189930, 0.128655,
		-0.205460, 0.971201, 0.120640,
		27.770361, 28.098227, 34.880177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.352612, 27.671904, 35.256233>,  <27.914183, 27.418385, 34.795727>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.352612, 27.671904, 35.256233> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.063206, 27.947582, 35.271919>,  <27.889563, 28.112989, 35.281330>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.063206, 27.947582, 35.271919>,  <28.352612, 27.671904, 35.256233>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.063206, 27.947582, 35.271919> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013220, -0.042971, 0.998989,
		0.690183, 0.723301, 0.021979,
		-0.723514, 0.689195, 0.039219,
		27.846151, 28.154341, 35.283684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.478161, 28.062517, 35.824871>,  <28.352612, 27.671904, 35.256233>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.478161, 28.062517, 35.824871> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.098339, 28.150795, 35.735748>,  <27.870447, 28.203762, 35.682274>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.098339, 28.150795, 35.735748>,  <28.478161, 28.062517, 35.824871>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.098339, 28.150795, 35.735748> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240683, -0.057362, 0.968907,
		0.201051, 0.973655, 0.107585,
		-0.949552, 0.220694, -0.222810,
		27.813473, 28.217003, 35.668907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.206057, 28.617268, 36.288620>,  <28.478161, 28.062517, 35.824871>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.206057, 28.617268, 36.288620> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.886990, 28.410175, 36.164890>,  <27.695549, 28.285919, 36.090652>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.886990, 28.410175, 36.164890>,  <28.206057, 28.617268, 36.288620>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.886990, 28.410175, 36.164890> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271629, -0.149516, 0.950717,
		-0.538464, 0.842378, -0.021367,
		-0.797668, -0.517730, -0.309323,
		27.647690, 28.254856, 36.072094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.589060, 28.939117, 36.524487>,  <28.206057, 28.617268, 36.288620>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.589060, 28.939117, 36.524487> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.414696, 28.584759, 36.461021>,  <27.310078, 28.372145, 36.422943>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.414696, 28.584759, 36.461021>,  <27.589060, 28.939117, 36.524487>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.414696, 28.584759, 36.461021> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311266, -0.017014, 0.950171,
		-0.844451, 0.463573, -0.268332,
		-0.435908, -0.885895, -0.158662,
		27.283924, 28.318991, 36.413422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.124529, 28.923685, 37.044296>,  <27.589060, 28.939117, 36.524487>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.124529, 28.923685, 37.044296> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.122831, 28.548832, 36.904720>,  <27.121813, 28.323919, 36.820976>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.122831, 28.548832, 36.904720>,  <27.124529, 28.923685, 37.044296>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.122831, 28.548832, 36.904720> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160642, -0.343774, 0.925210,
		-0.987004, 0.059979, -0.149085,
		-0.004242, -0.937135, -0.348941,
		27.121559, 28.267691, 36.800037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.561241, 28.558413, 37.289852>,  <27.124529, 28.923685, 37.044296>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.561241, 28.558413, 37.289852> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.817978, 28.264576, 37.201839>,  <26.972021, 28.088274, 37.149033>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.817978, 28.264576, 37.201839>,  <26.561241, 28.558413, 37.289852>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.817978, 28.264576, 37.201839> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120563, -0.380033, 0.917082,
		-0.757299, -0.562095, -0.332486,
		0.641843, -0.734591, -0.220031,
		27.010530, 28.044199, 37.135830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.332090, 27.944075, 37.704369>,  <26.561241, 28.558413, 37.289852>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.332090, 27.944075, 37.704369> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.712034, 27.862495, 37.609562>,  <26.940001, 27.813549, 37.552677>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.712034, 27.862495, 37.609562>,  <26.332090, 27.944075, 37.704369>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.712034, 27.862495, 37.609562> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197461, -0.196481, 0.960419,
		-0.242445, -0.959062, -0.146357,
		0.949858, -0.203949, -0.237013,
		26.996992, 27.801311, 37.538460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.418011, 27.388466, 38.032589>,  <26.332090, 27.944075, 37.704369>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.418011, 27.388466, 38.032589> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.791767, 27.511749, 37.961124>,  <27.016022, 27.585720, 37.918247>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.791767, 27.511749, 37.961124>,  <26.418011, 27.388466, 38.032589>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.791767, 27.511749, 37.961124> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254237, -0.225597, 0.940463,
		0.249554, -0.924182, -0.289154,
		0.934391, 0.308210, -0.178662,
		27.072084, 27.604212, 37.907524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.927732, 26.850035, 38.362144>,  <26.418011, 27.388466, 38.032589>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.927732, 26.850035, 38.362144> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.115982, 27.199020, 38.309502>,  <27.228931, 27.408411, 38.277916>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.115982, 27.199020, 38.309502>,  <26.927732, 26.850035, 38.362144>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.115982, 27.199020, 38.309502> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426911, -0.094624, 0.899329,
		0.772180, -0.479429, -0.416997,
		0.470622, 0.872464, -0.131607,
		27.257170, 27.460760, 38.270020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.642775, 26.767014, 38.488857>,  <26.927732, 26.850035, 38.362144>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.642775, 26.767014, 38.488857> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.584826, 27.157711, 38.552082>,  <27.550056, 27.392130, 38.590015>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.584826, 27.157711, 38.552082>,  <27.642775, 26.767014, 38.488857>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.584826, 27.157711, 38.552082> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300925, -0.108685, 0.947435,
		0.942579, 0.184824, -0.278180,
		-0.144874, 0.976744, 0.158062,
		27.541363, 27.450733, 38.599499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.150896, 27.019569, 38.755257>,  <27.642775, 26.767014, 38.488857>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.150896, 27.019569, 38.755257> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.897591, 27.300293, 38.885754>,  <27.745607, 27.468727, 38.964054>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.897591, 27.300293, 38.885754>,  <28.150896, 27.019569, 38.755257>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.897591, 27.300293, 38.885754> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169115, -0.285873, 0.943227,
		0.755231, 0.652486, 0.062347,
		-0.633266, 0.701811, 0.326246,
		27.707611, 27.510836, 38.983627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.546062, 27.498629, 38.490471>,  <28.150896, 27.019569, 38.755257>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.546062, 27.498629, 38.490471> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.937353, 27.503338, 38.573349>,  <29.172129, 27.506165, 38.623077>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.937353, 27.503338, 38.573349>,  <28.546062, 27.498629, 38.490471>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.937353, 27.503338, 38.573349> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207456, -0.029171, -0.977809,
		-0.005469, 0.999505, -0.030978,
		0.978229, 0.011774, 0.207194,
		29.230822, 27.506870, 38.635506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.986511, 28.070669, 38.103397>,  <28.546062, 27.498629, 38.490471>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.986511, 28.070669, 38.103397> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.220346, 27.753059, 38.170067>,  <29.360647, 27.562492, 38.210068>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.220346, 27.753059, 38.170067>,  <28.986511, 28.070669, 38.103397>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.220346, 27.753059, 38.170067> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182427, -0.071530, -0.980614,
		0.790555, 0.603661, 0.103036,
		0.584588, -0.794026, 0.166672,
		29.395723, 27.514851, 38.220070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.636999, 28.154305, 37.818863>,  <28.986511, 28.070669, 38.103397>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.636999, 28.154305, 37.818863> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.593838, 27.757122, 37.838421>,  <29.567942, 27.518812, 37.850155>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.593838, 27.757122, 37.838421>,  <29.636999, 28.154305, 37.818863>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.593838, 27.757122, 37.838421> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263613, -0.076002, -0.961630,
		0.958575, -0.090873, 0.269957,
		-0.107903, -0.992958, 0.048898,
		29.561466, 27.459234, 37.853092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.287537, 27.844683, 37.574291>,  <29.636999, 28.154305, 37.818863>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.287537, 27.844683, 37.574291> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.987825, 27.587242, 37.511860>,  <29.807999, 27.432777, 37.474400>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.987825, 27.587242, 37.511860>,  <30.287537, 27.844683, 37.574291>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.987825, 27.587242, 37.511860> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290797, -0.107998, -0.950670,
		0.594994, -0.757705, 0.268077,
		-0.749279, -0.643599, -0.156080,
		29.763042, 27.394163, 37.465034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.568617, 27.367861, 37.174351>,  <30.287537, 27.844683, 37.574291>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.568617, 27.367861, 37.174351> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.181931, 27.282566, 37.117790>,  <29.949919, 27.231388, 37.083855>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.181931, 27.282566, 37.117790>,  <30.568617, 27.367861, 37.174351>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.181931, 27.282566, 37.117790> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164198, -0.093214, -0.982013,
		0.196224, -0.972543, 0.125124,
		-0.966714, -0.213240, -0.141399,
		29.891916, 27.218594, 37.075371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.607988, 26.790436, 36.710312>,  <30.568617, 27.367861, 37.174351>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.607988, 26.790436, 36.710312> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.238779, 26.941200, 36.679428>,  <30.017254, 27.031658, 36.660896>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.238779, 26.941200, 36.679428>,  <30.607988, 26.790436, 36.710312>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.238779, 26.941200, 36.679428> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060688, -0.055544, -0.996610,
		-0.379923, -0.924582, 0.028394,
		-0.923025, 0.376911, -0.077214,
		29.961872, 27.054274, 36.656265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.267290, 26.298258, 36.174053>,  <30.607988, 26.790436, 36.710312>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.267290, 26.298258, 36.174053> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.052097, 26.634769, 36.195316>,  <29.922981, 26.836678, 36.208073>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.052097, 26.634769, 36.195316>,  <30.267290, 26.298258, 36.174053>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.052097, 26.634769, 36.195316> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115842, 0.136243, -0.983879,
		-0.834960, -0.523149, -0.170752,
		-0.537979, 0.841280, 0.053154,
		29.890703, 26.887154, 36.211262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.919123, 26.250612, 35.636860>,  <30.267290, 26.298258, 36.174053>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.919123, 26.250612, 35.636860> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.867233, 26.640701, 35.708542>,  <29.836100, 26.874754, 35.751553>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.867233, 26.640701, 35.708542>,  <29.919123, 26.250612, 35.636860>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.867233, 26.640701, 35.708542> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163706, 0.157188, -0.973906,
		-0.977943, -0.155677, 0.139258,
		-0.129725, 0.975221, 0.179206,
		29.828316, 26.933268, 35.762302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.317575, 26.500298, 35.256069>,  <29.919123, 26.250612, 35.636860>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.317575, 26.500298, 35.256069> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.543016, 26.821133, 35.335072>,  <29.678280, 27.013634, 35.382473>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.543016, 26.821133, 35.335072>,  <29.317575, 26.500298, 35.256069>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.543016, 26.821133, 35.335072> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117596, 0.314568, -0.941923,
		-0.817634, 0.507642, 0.271613,
		0.563600, 0.802089, 0.197505,
		29.712097, 27.061760, 35.394321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.004585, 27.096100, 34.914467>,  <29.317575, 26.500298, 35.256069>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.004585, 27.096100, 34.914467> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.389410, 27.199604, 34.949059>,  <29.620304, 27.261707, 34.969814>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.389410, 27.199604, 34.949059>,  <29.004585, 27.096100, 34.914467>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.389410, 27.199604, 34.949059> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046793, 0.468770, -0.882080,
		-0.268786, 0.844570, 0.463094,
		0.962063, 0.258760, 0.086479,
		29.678028, 27.277231, 34.975002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.054955, 27.759817, 34.606049>,  <29.004585, 27.096100, 34.914467>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.054955, 27.759817, 34.606049> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.438047, 27.651215, 34.644058>,  <29.667904, 27.586052, 34.666866>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.438047, 27.651215, 34.644058>,  <29.054955, 27.759817, 34.606049>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.438047, 27.651215, 34.644058> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179205, 0.304737, -0.935426,
		0.225016, 0.912918, 0.340512,
		0.957733, -0.271507, 0.095029,
		29.725367, 27.569763, 34.672565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.358082, 28.287333, 34.367775>,  <29.054955, 27.759817, 34.606049>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.358082, 28.287333, 34.367775> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.621815, 27.986740, 34.358337>,  <29.780054, 27.806385, 34.352676>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.621815, 27.986740, 34.358337>,  <29.358082, 28.287333, 34.367775>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.621815, 27.986740, 34.358337> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198560, 0.204309, -0.958557,
		0.725158, 0.627323, 0.283922,
		0.659332, -0.751481, -0.023595,
		29.819614, 27.761295, 34.351257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.967621, 28.541460, 34.089149>,  <29.358082, 28.287333, 34.367775>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.967621, 28.541460, 34.089149> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.961760, 28.145241, 34.034592>,  <29.958242, 27.907509, 34.001858>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.961760, 28.145241, 34.034592>,  <29.967621, 28.541460, 34.089149>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.961760, 28.145241, 34.034592> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118389, 0.133729, -0.983921,
		0.992859, -0.030566, 0.115310,
		-0.014654, -0.990547, -0.136393,
		29.957363, 27.848076, 33.993675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.427946, 28.357925, 33.558537>,  <29.967621, 28.541460, 34.089149>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.427946, 28.357925, 33.558537> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.212725, 28.020767, 33.560349>,  <30.083591, 27.818472, 33.561436>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.212725, 28.020767, 33.560349>,  <30.427946, 28.357925, 33.558537>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.212725, 28.020767, 33.560349> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092424, -0.064341, -0.993639,
		0.837827, -0.534213, 0.112523,
		-0.538055, -0.842898, 0.004533,
		30.051308, 27.767899, 33.561707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.762724, 27.927441, 33.091640>,  <30.427946, 28.357925, 33.558537>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.762724, 27.927441, 33.091640> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.396326, 27.769329, 33.119083>,  <30.176487, 27.674461, 33.135551>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.396326, 27.769329, 33.119083>,  <30.762724, 27.927441, 33.091640>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.396326, 27.769329, 33.119083> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033883, -0.094183, -0.994978,
		0.399757, -0.913719, 0.072878,
		-0.915995, -0.395280, 0.068610,
		30.121527, 27.650745, 33.139668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.791994, 27.417265, 32.653046>,  <30.762724, 27.927441, 33.091640>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.791994, 27.417265, 32.653046> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.401907, 27.496571, 32.692322>,  <30.167854, 27.544153, 32.715885>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.401907, 27.496571, 32.692322>,  <30.791994, 27.417265, 32.653046>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.401907, 27.496571, 32.692322> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120374, -0.103115, -0.987359,
		-0.185633, -0.974710, 0.124425,
		-0.975218, 0.198264, 0.098188,
		30.109341, 27.556049, 32.721779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.409090, 26.904913, 32.247612>,  <30.791994, 27.417265, 32.653046>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.409090, 26.904913, 32.247612> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.142576, 27.200607, 32.286797>,  <29.982668, 27.378025, 32.310307>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.142576, 27.200607, 32.286797>,  <30.409090, 26.904913, 32.247612>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.142576, 27.200607, 32.286797> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318784, -0.163603, -0.933601,
		-0.674125, -0.653271, 0.344663,
		-0.666282, 0.739237, 0.097963,
		29.942692, 27.422379, 32.316185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.853344, 26.761381, 31.816139>,  <30.409090, 26.904913, 32.247612>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.853344, 26.761381, 31.816139> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.810844, 27.153233, 31.884300>,  <29.785345, 27.388344, 31.925196>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.810844, 27.153233, 31.884300>,  <29.853344, 26.761381, 31.816139>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.810844, 27.153233, 31.884300> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184234, 0.149008, -0.971522,
		-0.977123, -0.134617, 0.164649,
		-0.106250, 0.979630, 0.170400,
		29.778969, 27.447121, 31.935421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.255241, 26.923471, 31.388901>,  <29.853344, 26.761381, 31.816139>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.255241, 26.923471, 31.388901> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.457567, 27.259983, 31.465214>,  <29.578962, 27.461891, 31.511002>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.457567, 27.259983, 31.465214>,  <29.255241, 26.923471, 31.388901>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.457567, 27.259983, 31.465214> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188263, 0.323486, -0.927315,
		-0.841847, 0.433134, 0.322006,
		0.505816, 0.841280, 0.190783,
		29.609312, 27.512367, 31.522449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.924257, 27.414232, 30.944185>,  <29.255241, 26.923471, 31.388901>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.924257, 27.414232, 30.944185> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.271002, 27.580982, 31.053558>,  <29.479050, 27.681032, 31.119183>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.271002, 27.580982, 31.053558>,  <28.924257, 27.414232, 30.944185>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.271002, 27.580982, 31.053558> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031119, 0.502145, -0.864223,
		-0.497575, 0.757672, 0.422318,
		0.866863, 0.416874, 0.273433,
		29.531061, 27.706045, 31.135588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<23.066673, 42.153313, 16.128508> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.463665, 42.128384, 16.170650>,  <23.701860, 42.113426, 16.195936>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.463665, 42.128384, 16.170650>,  <23.066673, 42.153313, 16.128508>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.463665, 42.128384, 16.170650> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097120, -0.924812, 0.367819,
		0.074513, -0.375285, -0.923910,
		0.992480, -0.062323, 0.105358,
		23.761410, 42.109688, 16.202257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.300953, 41.486492, 15.924556>,  <23.066673, 42.153313, 16.128508>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.300953, 41.486492, 15.924556> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.640551, 41.583904, 16.112129>,  <23.844309, 41.642353, 16.224674>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.640551, 41.583904, 16.112129>,  <23.300953, 41.486492, 15.924556>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.640551, 41.583904, 16.112129> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088597, -0.940504, 0.328030,
		0.520921, -0.236950, -0.820059,
		0.848995, 0.243532, 0.468935,
		23.895248, 41.656963, 16.252810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.850094, 40.960037, 15.789870>,  <23.300953, 41.486492, 15.924556>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.850094, 40.960037, 15.789870> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.930347, 41.148643, 16.133362>,  <23.978500, 41.261806, 16.339457>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.930347, 41.148643, 16.133362>,  <23.850094, 40.960037, 15.789870>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.930347, 41.148643, 16.133362> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027482, -0.873498, 0.486051,
		0.979280, -0.121119, -0.162297,
		0.200636, 0.471520, 0.858728,
		23.990538, 41.290100, 16.390980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.520813, 40.686863, 16.063221>,  <23.850094, 40.960037, 15.789870>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.520813, 40.686863, 16.063221> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.322323, 40.821342, 16.383404>,  <24.203228, 40.902031, 16.575514>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.322323, 40.821342, 16.383404>,  <24.520813, 40.686863, 16.063221>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.322323, 40.821342, 16.383404> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181326, -0.861514, 0.474252,
		0.849047, 0.380480, 0.366544,
		-0.496226, 0.336198, 0.800456,
		24.173454, 40.922203, 16.623541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.887600, 40.467472, 16.537731>,  <24.520813, 40.686863, 16.063221>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.887600, 40.467472, 16.537731> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.560163, 40.545818, 16.753712>,  <24.363701, 40.592827, 16.883301>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.560163, 40.545818, 16.753712>,  <24.887600, 40.467472, 16.537731>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.560163, 40.545818, 16.753712> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138468, -0.845042, 0.516459,
		0.557437, 0.497535, 0.664622,
		-0.818590, 0.195865, 0.539951,
		24.314587, 40.604576, 16.915697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.126358, 40.517010, 17.257814>,  <24.887600, 40.467472, 16.537731>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.126358, 40.517010, 17.257814> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.732677, 40.447197, 17.245911>,  <24.496469, 40.405308, 17.238770>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.732677, 40.447197, 17.245911>,  <25.126358, 40.517010, 17.257814>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.732677, 40.447197, 17.245911> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113681, -0.751795, 0.649523,
		-0.135736, 0.635879, 0.759759,
		-0.984201, -0.174534, -0.029758,
		24.437418, 40.394836, 17.236982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.075222, 40.479935, 17.966431>,  <25.126358, 40.517010, 17.257814>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.075222, 40.479935, 17.966431> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.740829, 40.351627, 17.788330>,  <24.540194, 40.274643, 17.681469>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.740829, 40.351627, 17.788330>,  <25.075222, 40.479935, 17.966431>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.740829, 40.351627, 17.788330> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142505, -0.656645, 0.740614,
		-0.529935, 0.682588, 0.503231,
		-0.835979, -0.320765, -0.445251,
		24.490036, 40.255398, 17.654755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.613018, 40.424461, 18.536287>,  <25.075222, 40.479935, 17.966431>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.613018, 40.424461, 18.536287> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.500582, 40.178234, 18.241787>,  <24.433119, 40.030499, 18.065086>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.500582, 40.178234, 18.241787>,  <24.613018, 40.424461, 18.536287>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.500582, 40.178234, 18.241787> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096735, -0.745100, 0.659900,
		-0.954793, 0.256714, 0.149895,
		-0.281092, -0.615568, -0.736250,
		24.416254, 39.993565, 18.020912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.972424, 40.108112, 18.708506>,  <24.613018, 40.424461, 18.536287>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.972424, 40.108112, 18.708506> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.133276, 39.850185, 18.448505>,  <24.229788, 39.695431, 18.292505>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.133276, 39.850185, 18.448505>,  <23.972424, 40.108112, 18.708506>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.133276, 39.850185, 18.448505> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157286, -0.748032, 0.644755,
		-0.901971, -0.157041, -0.402228,
		0.402132, -0.644815, -0.650002,
		24.253916, 39.656742, 18.253506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.553385, 39.531082, 18.775169>,  <23.972424, 40.108112, 18.708506>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.553385, 39.531082, 18.775169> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.878302, 39.380905, 18.596630>,  <24.073252, 39.290798, 18.489508>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.878302, 39.380905, 18.596630>,  <23.553385, 39.531082, 18.775169>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.878302, 39.380905, 18.596630> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020150, -0.782878, 0.621849,
		-0.582904, -0.496128, -0.643490,
		0.812291, -0.375445, -0.446346,
		24.121988, 39.268272, 18.462727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.347691, 38.897144, 18.814581>,  <23.553385, 39.531082, 18.775169>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.347691, 38.897144, 18.814581> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.738144, 38.894150, 18.727760>,  <23.972416, 38.892353, 18.675669>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.738144, 38.894150, 18.727760>,  <23.347691, 38.897144, 18.814581>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.738144, 38.894150, 18.727760> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138048, -0.750131, 0.646720,
		-0.167659, -0.661247, -0.731193,
		0.976132, -0.007489, -0.217050,
		24.030983, 38.891903, 18.662645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.565973, 38.213898, 18.864601>,  <23.347691, 38.897144, 18.814581>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.565973, 38.213898, 18.864601> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.929882, 38.379852, 18.859138>,  <24.148228, 38.479424, 18.855860>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.929882, 38.379852, 18.859138>,  <23.565973, 38.213898, 18.864601>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.929882, 38.379852, 18.859138> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286896, -0.604656, 0.743022,
		0.300010, -0.679899, -0.669127,
		0.909772, 0.414884, -0.013658,
		24.202814, 38.504318, 18.855042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.038776, 37.592590, 18.854471>,  <23.565973, 38.213898, 18.864601>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.038776, 37.592590, 18.854471> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.197992, 37.928284, 19.002663>,  <24.293522, 38.129700, 19.091578>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.197992, 37.928284, 19.002663>,  <24.038776, 37.592590, 18.854471>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.197992, 37.928284, 19.002663> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301143, -0.501004, 0.811362,
		0.866533, -0.211385, -0.452148,
		0.398038, 0.839233, 0.370479,
		24.317404, 38.180054, 19.113806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.670359, 37.430809, 18.964001>,  <24.038776, 37.592590, 18.854471>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.670359, 37.430809, 18.964001> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.583637, 37.745567, 19.195099>,  <24.531605, 37.934422, 19.333757>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.583637, 37.745567, 19.195099>,  <24.670359, 37.430809, 18.964001>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.583637, 37.745567, 19.195099> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403661, -0.466594, 0.786987,
		0.888850, 0.403833, -0.216482,
		-0.216802, 0.786899, 0.577743,
		24.518597, 37.981636, 19.368422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.143087, 37.449471, 19.491747>,  <24.670359, 37.430809, 18.964001>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.143087, 37.449471, 19.491747> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.898340, 37.702309, 19.681938>,  <24.751492, 37.854012, 19.796053>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.898340, 37.702309, 19.681938>,  <25.143087, 37.449471, 19.491747>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.898340, 37.702309, 19.681938> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380988, -0.291280, 0.877498,
		0.693156, 0.718064, -0.062595,
		-0.611868, 0.632092, 0.475477,
		24.714781, 37.891937, 19.824581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.453156, 37.749619, 20.097301>,  <25.143087, 37.449471, 19.491747>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.453156, 37.749619, 20.097301> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.071671, 37.810360, 20.201126>,  <24.842779, 37.846806, 20.263422>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.071671, 37.810360, 20.201126>,  <25.453156, 37.749619, 20.097301>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.071671, 37.810360, 20.201126> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220557, -0.233514, 0.947009,
		0.204419, 0.960423, 0.189212,
		-0.953712, 0.151855, 0.259562,
		24.785557, 37.855915, 20.278996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.470905, 38.100460, 20.754934>,  <25.453156, 37.749619, 20.097301>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.470905, 38.100460, 20.754934> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.097946, 37.957455, 20.733711>,  <24.874170, 37.871651, 20.720978>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.097946, 37.957455, 20.733711>,  <25.470905, 38.100460, 20.754934>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.097946, 37.957455, 20.733711> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066663, -0.314387, 0.946951,
		-0.355229, 0.879400, 0.316967,
		-0.932400, -0.357514, -0.053056,
		24.818226, 37.850201, 20.717794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.141907, 38.291786, 21.357342>,  <25.470905, 38.100460, 20.754934>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.141907, 38.291786, 21.357342> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.909189, 37.992718, 21.229275>,  <24.769558, 37.813278, 21.152433>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.909189, 37.992718, 21.229275>,  <25.141907, 38.291786, 21.357342>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.909189, 37.992718, 21.229275> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034168, -0.370835, 0.928070,
		-0.812619, 0.550884, 0.190203,
		-0.581793, -0.747668, -0.320170,
		24.734652, 37.768417, 21.133224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.754215, 38.158218, 21.857834>,  <25.141907, 38.291786, 21.357342>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.754215, 38.158218, 21.857834> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.688602, 37.818336, 21.657398>,  <24.649235, 37.614407, 21.537136>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.688602, 37.818336, 21.657398>,  <24.754215, 38.158218, 21.857834>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.688602, 37.818336, 21.657398> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020398, -0.510783, 0.859468,
		-0.986244, 0.130760, 0.101118,
		-0.164033, -0.849708, -0.501089,
		24.639393, 37.563423, 21.507071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.065310, 37.832527, 22.066988>,  <24.754215, 38.158218, 21.857834>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.065310, 37.832527, 22.066988> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.343000, 37.576302, 21.935703>,  <24.509615, 37.422565, 21.856934>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.343000, 37.576302, 21.935703>,  <24.065310, 37.832527, 22.066988>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.343000, 37.576302, 21.935703> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153632, -0.577372, 0.801897,
		-0.703169, -0.506275, -0.499239,
		0.694227, -0.640568, -0.328210,
		24.551268, 37.384132, 21.837240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.810766, 37.176956, 22.251261>,  <24.065310, 37.832527, 22.066988>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.810766, 37.176956, 22.251261> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.202551, 37.111870, 22.203629>,  <24.437622, 37.072819, 22.175049>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.202551, 37.111870, 22.203629>,  <23.810766, 37.176956, 22.251261>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.202551, 37.111870, 22.203629> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003167, -0.578075, 0.815978,
		-0.201613, -0.799595, -0.565686,
		0.979460, -0.162720, -0.119080,
		24.496389, 37.063053, 22.167904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.398287, 36.716351, 22.698776>,  <23.810766, 37.176956, 22.251261>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.398287, 36.716351, 22.698776> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.016890, 36.770313, 22.806591>,  <22.788052, 36.802692, 22.871279>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.016890, 36.770313, 22.806591>,  <23.398287, 36.716351, 22.698776>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.016890, 36.770313, 22.806591> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030207, 0.846968, -0.530785,
		-0.299896, -0.514242, -0.803503,
		-0.953493, 0.134909, 0.269536,
		22.730841, 36.810787, 22.887451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.998598, 36.802837, 22.046995>,  <23.398287, 36.716351, 22.698776>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.998598, 36.802837, 22.046995> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.812649, 36.981804, 22.352600>,  <22.701078, 37.089184, 22.535963>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.812649, 36.981804, 22.352600>,  <22.998598, 36.802837, 22.046995>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.812649, 36.981804, 22.352600> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065829, 0.843066, -0.533766,
		-0.882927, -0.298427, -0.362466,
		-0.464873, 0.447415, 0.764011,
		22.673187, 37.116028, 22.581804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.428726, 37.209442, 21.801647>,  <22.998598, 36.802837, 22.046995>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.428726, 37.209442, 21.801647> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.492861, 37.366013, 22.164101>,  <22.531342, 37.459953, 22.381573>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.492861, 37.366013, 22.164101>,  <22.428726, 37.209442, 21.801647>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.492861, 37.366013, 22.164101> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160337, 0.916147, -0.367378,
		-0.973953, -0.086382, 0.209653,
		0.160338, 0.391424, 0.906135,
		22.540962, 37.483440, 22.435942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.904697, 37.536633, 21.834377>,  <22.428726, 37.209442, 21.801647>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.904697, 37.536633, 21.834377> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.156982, 37.682579, 22.108334>,  <22.308353, 37.770145, 22.272707>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.156982, 37.682579, 22.108334>,  <21.904697, 37.536633, 21.834377>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.156982, 37.682579, 22.108334> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098013, 0.912960, -0.396103,
		-0.769803, 0.182698, 0.611575,
		0.630711, 0.364864, 0.684893,
		22.346195, 37.792038, 22.313801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.584549, 38.119846, 22.057077>,  <21.904697, 37.536633, 21.834377>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.584549, 38.119846, 22.057077> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.969271, 38.151581, 22.161873>,  <22.200104, 38.170624, 22.224751>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.969271, 38.151581, 22.161873>,  <21.584549, 38.119846, 22.057077>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.969271, 38.151581, 22.161873> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012267, 0.968607, -0.248293,
		-0.273465, 0.235595, 0.932583,
		0.961804, 0.079340, 0.261990,
		22.257812, 38.175385, 22.240469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.584372, 38.756065, 22.229362>,  <21.584549, 38.119846, 22.057077>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.584372, 38.756065, 22.229362> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.963257, 38.654282, 22.151348>,  <22.190588, 38.593212, 22.104540>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.963257, 38.654282, 22.151348>,  <21.584372, 38.756065, 22.229362>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.963257, 38.654282, 22.151348> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156355, 0.897717, -0.411895,
		0.279900, 0.359656, 0.890114,
		0.947211, -0.254463, -0.195037,
		22.247419, 38.577942, 22.092836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.061024, 39.276024, 22.497402>,  <21.584372, 38.756065, 22.229362>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.061024, 39.276024, 22.497402> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.263607, 39.093159, 22.204964>,  <22.385157, 38.983440, 22.029501>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.263607, 39.093159, 22.204964>,  <22.061024, 39.276024, 22.497402>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.263607, 39.093159, 22.204964> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247185, 0.889268, -0.384842,
		0.826076, 0.014190, 0.563380,
		0.506457, -0.457167, -0.731095,
		22.415545, 38.956009, 21.985636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.699923, 39.593147, 22.525082>,  <22.061024, 39.276024, 22.497402>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.699923, 39.593147, 22.525082> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.673597, 39.417999, 22.166431>,  <22.657803, 39.312912, 21.951241>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.673597, 39.417999, 22.166431>,  <22.699923, 39.593147, 22.525082>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.673597, 39.417999, 22.166431> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172620, 0.880030, -0.442436,
		0.982787, -0.183893, 0.017670,
		-0.065811, -0.437871, -0.896626,
		22.653854, 39.286636, 21.897444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.224298, 39.839043, 22.256634>,  <22.699923, 39.593147, 22.525082>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.224298, 39.839043, 22.256634> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.037411, 39.696396, 21.933022>,  <22.925278, 39.610809, 21.738853>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.037411, 39.696396, 21.933022>,  <23.224298, 39.839043, 22.256634>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.037411, 39.696396, 21.933022> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320348, 0.784591, -0.530842,
		0.824065, -0.507191, -0.252335,
		-0.467219, -0.356614, -0.809032,
		22.897245, 39.589413, 21.690311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.595537, 40.021198, 21.593832>,  <23.224298, 39.839043, 22.256634>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.595537, 40.021198, 21.593832> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.239342, 39.935806, 21.433105>,  <23.025623, 39.884571, 21.336670>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.239342, 39.935806, 21.433105>,  <23.595537, 40.021198, 21.593832>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.239342, 39.935806, 21.433105> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025703, 0.858091, -0.512854,
		0.454276, -0.467019, -0.758635,
		-0.890490, -0.213478, -0.401814,
		22.972195, 39.871761, 21.312561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.663183, 40.311581, 20.885027>,  <23.595537, 40.021198, 21.593832>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.663183, 40.311581, 20.885027> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.274513, 40.305305, 20.979351>,  <23.041311, 40.301540, 21.035946>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.274513, 40.305305, 20.979351>,  <23.663183, 40.311581, 20.885027>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.274513, 40.305305, 20.979351> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154086, 0.798604, -0.581799,
		-0.179193, -0.601653, -0.778398,
		-0.971673, -0.015686, 0.235810,
		22.983011, 40.300598, 21.050095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.211918, 40.292145, 20.269791>,  <23.663183, 40.311581, 20.885027>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.211918, 40.292145, 20.269791> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.003273, 40.459442, 20.567245>,  <22.878086, 40.559822, 20.745718>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.003273, 40.459442, 20.567245>,  <23.211918, 40.292145, 20.269791>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.003273, 40.459442, 20.567245> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133272, 0.820960, -0.555214,
		-0.842709, -0.388712, -0.372484,
		-0.521613, 0.418242, 0.743635,
		22.846788, 40.584915, 20.790337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.620850, 40.623524, 19.994778>,  <23.211918, 40.292145, 20.269791>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.620850, 40.623524, 19.994778> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.608681, 40.819782, 20.343109>,  <22.601379, 40.937538, 20.552109>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.608681, 40.819782, 20.343109>,  <22.620850, 40.623524, 19.994778>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.608681, 40.819782, 20.343109> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131191, 0.861734, -0.490105,
		-0.990890, -0.129156, 0.038150,
		-0.030424, 0.490645, 0.870828,
		22.599554, 40.966976, 20.604357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.132618, 41.138943, 19.900055>,  <22.620850, 40.623524, 19.994778>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.132618, 41.138943, 19.900055> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.323771, 41.262863, 20.228848>,  <22.438461, 41.337215, 20.426123>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.323771, 41.262863, 20.228848>,  <22.132618, 41.138943, 19.900055>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.323771, 41.262863, 20.228848> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153360, 0.950799, -0.269187,
		-0.864934, 0.002580, 0.501878,
		0.477880, 0.309797, 0.821983,
		22.467134, 41.355801, 20.475443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.744135, 41.704784, 20.080463>,  <22.132618, 41.138943, 19.900055>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.744135, 41.704784, 20.080463> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.096067, 41.743877, 20.266514>,  <22.307226, 41.767334, 20.378145>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.096067, 41.743877, 20.266514>,  <21.744135, 41.704784, 20.080463>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.096067, 41.743877, 20.266514> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065206, 0.944553, -0.321820,
		-0.470792, 0.313477, 0.824674,
		0.879831, 0.097737, 0.465128,
		22.360018, 41.773197, 20.406052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.670809, 42.363621, 20.280994>,  <21.744135, 41.704784, 20.080463>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.670809, 42.363621, 20.280994> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.060818, 42.281433, 20.314724>,  <22.294823, 42.232121, 20.334961>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.060818, 42.281433, 20.314724>,  <21.670809, 42.363621, 20.280994>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.060818, 42.281433, 20.314724> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222098, 0.901440, -0.371588,
		0.000339, 0.381035, 0.924561,
		0.975024, -0.205469, 0.084322,
		22.353325, 42.219791, 20.340021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.966248, 42.910015, 20.678144>,  <21.670809, 42.363621, 20.280994>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.966248, 42.910015, 20.678144> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.240229, 42.755039, 20.431332>,  <22.404617, 42.662052, 20.283243>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.240229, 42.755039, 20.431332>,  <21.966248, 42.910015, 20.678144>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.240229, 42.755039, 20.431332> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164474, 0.907252, -0.387094,
		0.709780, 0.163655, 0.685149,
		0.684953, -0.387441, -0.617032,
		22.445715, 42.638805, 20.246222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.578869, 43.354755, 20.698614>,  <21.966248, 42.910015, 20.678144>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.578869, 43.354755, 20.698614> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.623325, 43.165367, 20.349106>,  <22.650000, 43.051735, 20.139400>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.623325, 43.165367, 20.349106>,  <22.578869, 43.354755, 20.698614>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.623325, 43.165367, 20.349106> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116944, 0.879338, -0.461615,
		0.986900, -0.050878, 0.153101,
		0.111141, -0.473472, -0.873769,
		22.656668, 43.023327, 20.086975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.246555, 43.663837, 20.307032>,  <22.578869, 43.354755, 20.698614>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.246555, 43.663837, 20.307032> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.016600, 43.495800, 20.026169>,  <22.878626, 43.394978, 19.857651>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.016600, 43.495800, 20.026169>,  <23.246555, 43.663837, 20.307032>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.016600, 43.495800, 20.026169> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134253, 0.798082, -0.587403,
		0.807137, -0.431961, -0.402416,
		-0.574896, -0.420089, -0.702154,
		22.844133, 43.369774, 19.815521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.606564, 43.850578, 19.704172>,  <23.246555, 43.663837, 20.307032>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.606564, 43.850578, 19.704172> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.259245, 43.733513, 19.543964>,  <23.050854, 43.663273, 19.447840>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.259245, 43.733513, 19.543964>,  <23.606564, 43.850578, 19.704172>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.259245, 43.733513, 19.543964> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177210, 0.571130, -0.801503,
		0.463314, -0.766918, -0.444047,
		-0.868296, -0.292658, -0.400518,
		22.998756, 43.645714, 19.423809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.735828, 43.627632, 19.006161>,  <23.606564, 43.850578, 19.704172>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.735828, 43.627632, 19.006161> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.348280, 43.721233, 19.038502>,  <23.115751, 43.777393, 19.057907>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.348280, 43.721233, 19.038502>,  <23.735828, 43.627632, 19.006161>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.348280, 43.721233, 19.038502> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028934, 0.431364, -0.901714,
		-0.245877, -0.871303, -0.424706,
		-0.968869, 0.234000, 0.080852,
		23.057619, 43.791431, 19.062757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<26.756653, 31.890297, 27.750540> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.127836, 31.741772, 27.737789>,  <27.350546, 31.652657, 27.730139>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.127836, 31.741772, 27.737789>,  <26.756653, 31.890297, 27.750540>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.127836, 31.741772, 27.737789> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120347, 0.379510, -0.917327,
		0.352711, 0.847407, 0.396857,
		0.927961, -0.371312, -0.031875,
		27.406225, 31.630379, 27.728228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.162838, 32.433224, 27.432787>,  <26.756653, 31.890297, 27.750540>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.162838, 32.433224, 27.432787> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.410212, 32.122299, 27.386597>,  <27.558636, 31.935745, 27.358883>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.410212, 32.122299, 27.386597>,  <27.162838, 32.433224, 27.432787>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.410212, 32.122299, 27.386597> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319619, 0.383042, -0.866673,
		0.717902, 0.499072, 0.485328,
		0.618433, -0.777307, -0.115474,
		27.595741, 31.889107, 27.351955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.841940, 32.721794, 27.328150>,  <27.162838, 32.433224, 27.432787>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.841940, 32.721794, 27.328150> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.810167, 32.361992, 27.156300>,  <27.791103, 32.146111, 27.053190>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.810167, 32.361992, 27.156300>,  <27.841940, 32.721794, 27.328150>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.810167, 32.361992, 27.156300> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425690, 0.359104, -0.830561,
		0.901376, -0.248861, 0.354386,
		-0.079433, -0.899507, -0.429626,
		27.786337, 32.092140, 27.027412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.512938, 32.566422, 27.012922>,  <27.841940, 32.721794, 27.328150>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.512938, 32.566422, 27.012922> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.243032, 32.333549, 26.831478>,  <28.081089, 32.193829, 26.722610>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.243032, 32.333549, 26.831478>,  <28.512938, 32.566422, 27.012922>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.243032, 32.333549, 26.831478> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313938, 0.329834, -0.890310,
		0.667934, -0.743156, -0.039793,
		-0.674764, -0.582176, -0.453612,
		28.040604, 32.158897, 26.695395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.853905, 32.419994, 26.345728>,  <28.512938, 32.566422, 27.012922>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.853905, 32.419994, 26.345728> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.494328, 32.266663, 26.260918>,  <28.278582, 32.174664, 26.210032>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.494328, 32.266663, 26.260918>,  <28.853905, 32.419994, 26.345728>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.494328, 32.266663, 26.260918> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149780, 0.185881, -0.971089,
		0.411663, -0.904712, -0.109681,
		-0.898944, -0.383334, -0.212028,
		28.224644, 32.151661, 26.197309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.924726, 31.969862, 25.831112>,  <28.853905, 32.419994, 26.345728>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.924726, 31.969862, 25.831112> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.536051, 32.060368, 25.803913>,  <28.302845, 32.114670, 25.787594>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.536051, 32.060368, 25.803913>,  <28.924726, 31.969862, 25.831112>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.536051, 32.060368, 25.803913> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109790, 0.177589, -0.977961,
		-0.209199, -0.957741, -0.197403,
		-0.971690, 0.226262, -0.067999,
		28.244543, 32.128246, 25.783514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.695524, 31.615969, 25.228483>,  <28.924726, 31.969862, 25.831112>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.695524, 31.615969, 25.228483> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.422127, 31.901897, 25.287636>,  <28.258089, 32.073456, 25.323128>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.422127, 31.901897, 25.287636>,  <28.695524, 31.615969, 25.228483>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.422127, 31.901897, 25.287636> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050719, 0.248608, -0.967276,
		-0.728192, -0.653626, -0.206177,
		-0.683494, 0.714820, 0.147883,
		28.217079, 32.116344, 25.332001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.154140, 31.607151, 24.668327>,  <28.695524, 31.615969, 25.228483>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.154140, 31.607151, 24.668327> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.167633, 31.984364, 24.800720>,  <28.175728, 32.210693, 24.880156>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.167633, 31.984364, 24.800720>,  <28.154140, 31.607151, 24.668327>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.167633, 31.984364, 24.800720> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005020, 0.331008, -0.943615,
		-0.999418, 0.033491, 0.006432,
		0.033731, 0.943033, 0.330983,
		28.177752, 32.267273, 24.900015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.926516, 31.917021, 24.174168>,  <28.154140, 31.607151, 24.668327>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.926516, 31.917021, 24.174168> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.085621, 32.224453, 24.374596>,  <28.181084, 32.408913, 24.494852>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.085621, 32.224453, 24.374596>,  <27.926516, 31.917021, 24.174168>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.085621, 32.224453, 24.374596> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126152, 0.495129, -0.859612,
		-0.908774, 0.405132, 0.099985,
		0.397762, 0.768580, 0.501069,
		28.204950, 32.455029, 24.524916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.584833, 32.571148, 23.986923>,  <27.926516, 31.917021, 24.174168>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.584833, 32.571148, 23.986923> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.947006, 32.664082, 24.129028>,  <28.164310, 32.719841, 24.214293>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.947006, 32.664082, 24.129028>,  <27.584833, 32.571148, 23.986923>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.947006, 32.664082, 24.129028> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186783, 0.533487, -0.824926,
		-0.381187, 0.813272, 0.439641,
		0.905433, 0.232334, 0.355264,
		28.218636, 32.733780, 24.235607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.599215, 33.303471, 23.823666>,  <27.584833, 32.571148, 23.986923>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.599215, 33.303471, 23.823666> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.970264, 33.161518, 23.870258>,  <28.192894, 33.076347, 23.898214>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.970264, 33.161518, 23.870258>,  <27.599215, 33.303471, 23.823666>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.970264, 33.161518, 23.870258> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301190, 0.526284, -0.795179,
		0.220894, 0.772712, 0.595082,
		0.927626, -0.354883, 0.116480,
		28.248552, 33.055054, 23.905203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.039017, 33.913189, 23.629107>,  <27.599215, 33.303471, 23.823666>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.039017, 33.913189, 23.629107> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.304207, 33.613815, 23.636162>,  <28.463322, 33.434193, 23.640394>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.304207, 33.613815, 23.636162>,  <28.039017, 33.913189, 23.629107>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.304207, 33.613815, 23.636162> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470833, 0.398528, -0.787078,
		0.582045, 0.530119, 0.616601,
		0.662978, -0.748431, 0.017637,
		28.503099, 33.389286, 23.641453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.649826, 34.262657, 23.740934>,  <28.039017, 33.913189, 23.629107>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.649826, 34.262657, 23.740934> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.660545, 33.916489, 23.540802>,  <28.666977, 33.708790, 23.420723>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.660545, 33.916489, 23.540802>,  <28.649826, 34.262657, 23.740934>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.660545, 33.916489, 23.540802> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385655, 0.470716, -0.793534,
		0.922254, -0.171690, 0.346368,
		0.026799, -0.865418, -0.500333,
		28.668585, 33.656864, 23.390701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.335432, 34.261726, 23.627365>,  <28.649826, 34.262657, 23.740934>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.335432, 34.261726, 23.627365> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.145317, 34.051247, 23.345310>,  <29.031248, 33.924957, 23.176077>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.145317, 34.051247, 23.345310>,  <29.335432, 34.261726, 23.627365>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.145317, 34.051247, 23.345310> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362988, 0.612786, -0.701950,
		0.801463, -0.589583, -0.100244,
		-0.475286, -0.526200, -0.705137,
		29.002731, 33.893387, 23.133770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.860260, 34.595978, 23.032257>,  <29.335432, 34.261726, 23.627365>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.860260, 34.595978, 23.032257> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.748259, 34.952942, 23.173794>,  <28.681057, 35.167118, 23.258717>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.748259, 34.952942, 23.173794>,  <28.860260, 34.595978, 23.032257>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.748259, 34.952942, 23.173794> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.672948, -0.080405, 0.735307,
		0.684645, 0.444007, -0.578031,
		-0.280005, 0.892408, 0.353842,
		28.664257, 35.220665, 23.279947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.444256, 34.927029, 23.170919>,  <28.860260, 34.595978, 23.032257>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.444256, 34.927029, 23.170919> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.185251, 35.150101, 23.378658>,  <29.029848, 35.283943, 23.503302>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.185251, 35.150101, 23.378658>,  <29.444256, 34.927029, 23.170919>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.185251, 35.150101, 23.378658> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.627701, 0.003873, 0.778445,
		0.432110, 0.830048, -0.352563,
		-0.647512, 0.557678, 0.519349,
		28.990997, 35.317406, 23.534464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.835377, 35.431915, 23.529610>,  <29.444256, 34.927029, 23.170919>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.835377, 35.431915, 23.529610> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.496244, 35.388718, 23.737270>,  <29.292765, 35.362797, 23.861866>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.496244, 35.388718, 23.737270>,  <29.835377, 35.431915, 23.529610>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.496244, 35.388718, 23.737270> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529865, -0.134497, 0.837349,
		-0.020607, 0.985011, 0.171255,
		-0.847831, -0.107997, 0.519151,
		29.241896, 35.356319, 23.893015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.047348, 35.633068, 24.208229>,  <29.835377, 35.431915, 23.529610>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.047348, 35.633068, 24.208229> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.694920, 35.460209, 24.285133>,  <29.483463, 35.356495, 24.331276>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.694920, 35.460209, 24.285133>,  <30.047348, 35.633068, 24.208229>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.694920, 35.460209, 24.285133> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350889, -0.324627, 0.878348,
		-0.317160, 0.841349, 0.437654,
		-0.881071, -0.432145, 0.192262,
		29.430599, 35.330566, 24.342812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.906387, 35.849476, 24.940994>,  <30.047348, 35.633068, 24.208229>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.906387, 35.849476, 24.940994> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.693615, 35.520996, 24.858356>,  <29.565952, 35.323910, 24.808773>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.693615, 35.520996, 24.858356>,  <29.906387, 35.849476, 24.940994>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.693615, 35.520996, 24.858356> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069539, -0.285512, 0.955849,
		-0.843929, 0.494078, 0.208977,
		-0.531929, -0.821200, -0.206594,
		29.534037, 35.274635, 24.796379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.443710, 35.809097, 25.417873>,  <29.906387, 35.849476, 24.940994>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.443710, 35.809097, 25.417873> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.476805, 35.434937, 25.280369>,  <29.496662, 35.210438, 25.197866>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.476805, 35.434937, 25.280369>,  <29.443710, 35.809097, 25.417873>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.476805, 35.434937, 25.280369> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155096, -0.328654, 0.931629,
		-0.984429, -0.130396, 0.117886,
		0.082737, -0.935406, -0.343760,
		29.501625, 35.154316, 25.177240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.155546, 35.340633, 26.008188>,  <29.443710, 35.809097, 25.417873>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.155546, 35.340633, 26.008188> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.328728, 35.068542, 25.771599>,  <29.432636, 34.905289, 25.629644>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.328728, 35.068542, 25.771599>,  <29.155546, 35.340633, 26.008188>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.328728, 35.068542, 25.771599> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176851, -0.579309, 0.795691,
		-0.883897, -0.449102, -0.130516,
		0.432955, -0.680227, -0.591473,
		29.458614, 34.864475, 25.594156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.809639, 34.632168, 26.036722>,  <29.155546, 35.340633, 26.008188>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.809639, 34.632168, 26.036722> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.200903, 34.635117, 25.953629>,  <29.435661, 34.636887, 25.903772>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.200903, 34.635117, 25.953629>,  <28.809639, 34.632168, 26.036722>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.200903, 34.635117, 25.953629> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187815, -0.459546, 0.868068,
		-0.089065, -0.888124, -0.450893,
		0.978158, 0.007370, -0.207733,
		29.494350, 34.637329, 25.891308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.998001, 33.992920, 26.231030>,  <28.809639, 34.632168, 26.036722>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.998001, 33.992920, 26.231030> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.363218, 34.150673, 26.189423>,  <29.582348, 34.245323, 26.164457>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.363218, 34.150673, 26.189423>,  <28.998001, 33.992920, 26.231030>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.363218, 34.150673, 26.189423> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296752, -0.467374, 0.832766,
		0.279812, -0.791218, -0.543765,
		0.913041, 0.394381, -0.104019,
		29.637131, 34.268986, 26.158216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.423079, 33.514091, 26.323669>,  <28.998001, 33.992920, 26.231030>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.423079, 33.514091, 26.323669> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.657717, 33.830456, 26.393379>,  <29.798500, 34.020275, 26.435205>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.657717, 33.830456, 26.393379>,  <29.423079, 33.514091, 26.323669>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.657717, 33.830456, 26.393379> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417210, -0.479543, 0.771994,
		0.694147, -0.380139, -0.611272,
		0.586596, 0.790906, 0.174276,
		29.833696, 34.067726, 26.445662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.072569, 33.148834, 26.469654>,  <29.423079, 33.514091, 26.323669>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.072569, 33.148834, 26.469654> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.126545, 33.517448, 26.615288>,  <30.158930, 33.738617, 26.702669>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.126545, 33.517448, 26.615288>,  <30.072569, 33.148834, 26.469654>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.126545, 33.517448, 26.615288> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323863, -0.388285, 0.862756,
		0.936431, 0.001494, -0.350848,
		0.134940, 0.921538, 0.364086,
		30.167027, 33.793911, 26.724514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.528074, 33.083908, 26.879257>,  <30.072569, 33.148834, 26.469654>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.528074, 33.083908, 26.879257> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.436371, 33.444084, 27.027122>,  <30.381350, 33.660191, 27.115841>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.436371, 33.444084, 27.027122>,  <30.528074, 33.083908, 26.879257>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.436371, 33.444084, 27.027122> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322097, -0.288200, 0.901773,
		0.918528, 0.325806, -0.223956,
		-0.229259, 0.900439, 0.369661,
		30.367594, 33.714214, 27.138021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.084084, 33.298725, 27.313486>,  <30.528074, 33.083908, 26.879257>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.084084, 33.298725, 27.313486> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.762995, 33.495960, 27.447655>,  <30.570341, 33.614300, 27.528156>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.762995, 33.495960, 27.447655>,  <31.084084, 33.298725, 27.313486>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.762995, 33.495960, 27.447655> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184321, -0.329775, 0.925891,
		0.567156, 0.805057, 0.173831,
		-0.802720, 0.493084, 0.335423,
		30.522179, 33.643887, 27.548281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.351164, 33.820221, 27.877388>,  <31.084084, 33.298725, 27.313486>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.351164, 33.820221, 27.877388> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.961254, 33.736031, 27.907085>,  <30.727308, 33.685516, 27.924904>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.961254, 33.736031, 27.907085>,  <31.351164, 33.820221, 27.877388>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.961254, 33.736031, 27.907085> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133122, -0.281303, 0.950341,
		-0.179139, 0.936252, 0.302226,
		-0.974776, -0.210476, 0.074243,
		30.668821, 33.672886, 27.929358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.662544, 34.391186, 28.254097>,  <31.351164, 33.820221, 27.877388>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.662544, 34.391186, 28.254097> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.021755, 34.524303, 28.369194>,  <32.237282, 34.604172, 28.438253>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.021755, 34.524303, 28.369194>,  <31.662544, 34.391186, 28.254097>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.021755, 34.524303, 28.369194> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146346, 0.390833, -0.908753,
		-0.414885, 0.858196, 0.302276,
		0.898028, 0.332791, 0.287744,
		32.291164, 34.624142, 28.455517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.692188, 35.133678, 27.958521>,  <31.662544, 34.391186, 28.254097>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.692188, 35.133678, 27.958521> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.057636, 34.988529, 28.031864>,  <32.276905, 34.901440, 28.075871>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.057636, 34.988529, 28.031864>,  <31.692188, 35.133678, 27.958521>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.057636, 34.988529, 28.031864> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267019, 0.195446, -0.943664,
		0.306597, 0.911110, 0.275458,
		0.913619, -0.362877, 0.183360,
		32.331722, 34.879665, 28.086872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.200729, 35.689091, 27.768925>,  <31.692188, 35.133678, 27.958521>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.200729, 35.689091, 27.768925> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.370598, 35.327557, 27.747963>,  <32.472519, 35.110638, 27.735386>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.370598, 35.327557, 27.747963>,  <32.200729, 35.689091, 27.768925>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.370598, 35.327557, 27.747963> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432531, 0.253396, -0.865279,
		0.795346, 0.344788, 0.498544,
		0.424667, -0.903832, -0.052406,
		32.497997, 35.056408, 27.732241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.750198, 35.803097, 27.306896>,  <32.200729, 35.689091, 27.768925>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.750198, 35.803097, 27.306896> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.769855, 35.404427, 27.332886>,  <32.781651, 35.165226, 27.348478>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.769855, 35.404427, 27.332886>,  <32.750198, 35.803097, 27.306896>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.769855, 35.404427, 27.332886> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390780, -0.040679, -0.919585,
		0.919171, 0.070581, 0.387482,
		0.049143, -0.996676, 0.064973,
		32.784599, 35.105423, 27.352377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.505482, 35.550575, 27.053936>,  <32.750198, 35.803097, 27.306896>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.505482, 35.550575, 27.053936> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.240681, 35.250904, 27.045151>,  <33.081799, 35.071102, 27.039879>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.240681, 35.250904, 27.045151>,  <33.505482, 35.550575, 27.053936>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.240681, 35.250904, 27.045151> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261726, -0.203613, -0.943420,
		0.702315, -0.630299, 0.330872,
		-0.662007, -0.749176, -0.021965,
		33.042080, 35.026150, 27.038561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.922901, 35.005672, 26.835588>,  <33.505482, 35.550575, 27.053936>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.922901, 35.005672, 26.835588> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.538071, 34.919811, 26.768250>,  <33.307175, 34.868294, 26.727846>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.538071, 34.919811, 26.768250>,  <33.922901, 35.005672, 26.835588>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.538071, 34.919811, 26.768250> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210842, -0.193512, -0.958175,
		0.173096, -0.957329, 0.231430,
		-0.962072, -0.214651, -0.168349,
		33.249451, 34.855415, 26.717745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.907703, 34.429630, 26.396376>,  <33.922901, 35.005672, 26.835588>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.907703, 34.429630, 26.396376> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.533764, 34.548771, 26.319077>,  <33.309402, 34.620255, 26.272697>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.533764, 34.548771, 26.319077>,  <33.907703, 34.429630, 26.396376>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.533764, 34.548771, 26.319077> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163248, -0.122760, -0.978918,
		-0.315296, -0.946686, 0.066138,
		-0.934847, 0.297852, -0.193250,
		33.253311, 34.638126, 26.261101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.713062, 33.921230, 26.062464>,  <33.907703, 34.429630, 26.396376>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.713062, 33.921230, 26.062464> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.483311, 34.236553, 25.974236>,  <33.345459, 34.425747, 25.921299>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.483311, 34.236553, 25.974236>,  <33.713062, 33.921230, 26.062464>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.483311, 34.236553, 25.974236> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311287, -0.038865, -0.949521,
		-0.757091, -0.614048, -0.223067,
		-0.574382, 0.788311, -0.220569,
		33.310997, 34.473045, 25.908064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.322639, 33.685921, 25.482077>,  <33.713062, 33.921230, 26.062464>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.322639, 33.685921, 25.482077> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.288605, 34.084446, 25.477829>,  <33.268185, 34.323563, 25.475281>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.288605, 34.084446, 25.477829>,  <33.322639, 33.685921, 25.482077>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.288605, 34.084446, 25.477829> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207978, 0.007337, -0.978106,
		-0.974426, -0.085432, -0.207837,
		-0.085086, 0.996317, -0.010618,
		33.263081, 34.383343, 25.474644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.871277, 33.882477, 24.835829>,  <33.322639, 33.685921, 25.482077>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.871277, 33.882477, 24.835829> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.087391, 34.203365, 24.937443>,  <33.217060, 34.395897, 24.998411>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.087391, 34.203365, 24.937443>,  <32.871277, 33.882477, 24.835829>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.087391, 34.203365, 24.937443> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108501, 0.232954, -0.966416,
		-0.834459, 0.549701, 0.038819,
		0.540283, 0.802222, 0.254033,
		33.249477, 34.444031, 25.013653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.595352, 34.369072, 24.408222>,  <32.871277, 33.882477, 24.835829>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.595352, 34.369072, 24.408222> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.950481, 34.522945, 24.509247>,  <33.163559, 34.615269, 24.569862>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.950481, 34.522945, 24.509247>,  <32.595352, 34.369072, 24.408222>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.950481, 34.522945, 24.509247> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210995, 0.147460, -0.966301,
		-0.408962, 0.911194, 0.049753,
		0.887824, 0.384683, 0.252563,
		33.216827, 34.638351, 24.585016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.739140, 35.059082, 23.988670>,  <32.595352, 34.369072, 24.408222>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.739140, 35.059082, 23.988670> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.078403, 34.873840, 24.091553>,  <33.281963, 34.762695, 24.153282>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.078403, 34.873840, 24.091553>,  <32.739140, 35.059082, 23.988670>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.078403, 34.873840, 24.091553> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278514, -0.023173, -0.960152,
		0.450615, 0.885999, 0.109328,
		0.848160, -0.463108, 0.257205,
		33.332851, 34.734909, 24.168715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<31.617994, 34.040852, 32.099361> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.991552, 33.929607, 32.009472>,  <32.215687, 33.862862, 31.955538>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.991552, 33.929607, 32.009472>,  <31.617994, 34.040852, 32.099361>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.991552, 33.929607, 32.009472> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065372, 0.485105, -0.872009,
		0.351525, 0.829054, 0.434856,
		0.933893, -0.278106, -0.224724,
		32.271721, 33.846176, 31.942055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.841539, 34.633953, 31.781794>,  <31.617994, 34.040852, 32.099361>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.841539, 34.633953, 31.781794> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.097095, 34.347637, 31.669037>,  <32.250427, 34.175846, 31.601383>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.097095, 34.347637, 31.669037>,  <31.841539, 34.633953, 31.781794>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.097095, 34.347637, 31.669037> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080049, 0.426291, -0.901037,
		0.765123, 0.553097, 0.329651,
		0.638888, -0.715793, -0.281890,
		32.288761, 34.132900, 31.584471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.361195, 34.918571, 31.323814>,  <31.841539, 34.633953, 31.781794>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.361195, 34.918571, 31.323814> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.405071, 34.535686, 31.216702>,  <32.431396, 34.305954, 31.152433>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.405071, 34.535686, 31.216702>,  <32.361195, 34.918571, 31.323814>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.405071, 34.535686, 31.216702> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138098, 0.281469, -0.949581,
		0.984326, 0.067178, 0.163063,
		0.109688, -0.957216, -0.267780,
		32.437977, 34.248520, 31.136368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.075752, 34.820843, 31.016947>,  <32.361195, 34.918571, 31.323814>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.075752, 34.820843, 31.016947> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.833290, 34.535255, 30.876762>,  <32.687813, 34.363903, 30.792652>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.833290, 34.535255, 30.876762>,  <33.075752, 34.820843, 31.016947>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.833290, 34.535255, 30.876762> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201481, 0.288422, -0.936065,
		0.769401, -0.638014, -0.030978,
		-0.606158, -0.713968, -0.350460,
		32.651443, 34.321064, 30.771626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.315052, 34.688511, 30.424461>,  <33.075752, 34.820843, 31.016947>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.315052, 34.688511, 30.424461> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.973007, 34.487892, 30.371944>,  <32.767780, 34.367519, 30.340435>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.973007, 34.487892, 30.371944>,  <33.315052, 34.688511, 30.424461>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.973007, 34.487892, 30.371944> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007999, 0.240446, -0.970630,
		0.518388, -0.831043, -0.201595,
		-0.855108, -0.501550, -0.131291,
		32.716476, 34.337429, 30.332558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.408928, 34.277420, 29.903589>,  <33.315052, 34.688511, 30.424461>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.408928, 34.277420, 29.903589> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.008965, 34.273041, 29.900513>,  <32.768986, 34.270412, 29.898666>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.008965, 34.273041, 29.900513>,  <33.408928, 34.277420, 29.903589>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.008965, 34.273041, 29.900513> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004399, 0.273812, -0.961773,
		0.012637, -0.961721, -0.273739,
		-0.999910, -0.010949, -0.007690,
		32.708992, 34.269756, 29.898205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.186321, 33.861374, 29.339172>,  <33.408928, 34.277420, 29.903589>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.186321, 33.861374, 29.339172> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.879204, 34.095810, 29.442707>,  <32.694935, 34.236473, 29.504827>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.879204, 34.095810, 29.442707>,  <33.186321, 33.861374, 29.339172>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.879204, 34.095810, 29.442707> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115943, 0.270222, -0.955791,
		-0.630123, -0.763858, -0.139521,
		-0.767791, 0.586089, 0.258837,
		32.648865, 34.271637, 29.520359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.468746, 33.561962, 29.047707>,  <33.186321, 33.861374, 29.339172>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.468746, 33.561962, 29.047707> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.466286, 33.956169, 29.115494>,  <32.464809, 34.192692, 29.156166>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.466286, 33.956169, 29.115494>,  <32.468746, 33.561962, 29.047707>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.466286, 33.956169, 29.115494> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158326, 0.166375, -0.973269,
		-0.987368, -0.032819, 0.155009,
		-0.006152, 0.985516, 0.169470,
		32.464439, 34.251823, 29.166334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.854740, 33.801300, 28.642672>,  <32.468746, 33.561962, 29.047707>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.854740, 33.801300, 28.642672> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.115650, 34.092384, 28.727505>,  <32.272194, 34.267033, 28.778404>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.115650, 34.092384, 28.727505>,  <31.854740, 33.801300, 28.642672>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.115650, 34.092384, 28.727505> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111574, 0.368929, -0.922737,
		-0.749727, 0.578214, 0.321836,
		0.652273, 0.727709, 0.212083,
		32.311333, 34.310696, 28.791130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.185497, 33.904263, 28.618099>,  <31.854740, 33.801300, 28.642672>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.185497, 33.904263, 28.618099> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.879801, 33.683624, 28.484425>,  <30.696383, 33.551243, 28.404221>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.879801, 33.683624, 28.484425>,  <31.185497, 33.904263, 28.618099>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.879801, 33.683624, 28.484425> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213173, -0.272999, 0.938099,
		-0.608679, 0.788174, 0.091053,
		-0.764243, -0.551591, -0.334186,
		30.650528, 33.518147, 28.384169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.611059, 34.043968, 29.049583>,  <31.185497, 33.904263, 28.618099>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.611059, 34.043968, 29.049583> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.500343, 33.702335, 28.873432>,  <30.433914, 33.497356, 28.767742>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.500343, 33.702335, 28.873432>,  <30.611059, 34.043968, 29.049583>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.500343, 33.702335, 28.873432> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174606, -0.405950, 0.897060,
		-0.944934, 0.325189, -0.036765,
		-0.276790, -0.854082, -0.440376,
		30.417307, 33.446110, 28.741320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.921196, 33.904968, 29.373825>,  <30.611059, 34.043968, 29.049583>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.921196, 33.904968, 29.373825> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.038490, 33.550110, 29.231281>,  <30.108868, 33.337196, 29.145756>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.038490, 33.550110, 29.231281>,  <29.921196, 33.904968, 29.373825>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.038490, 33.550110, 29.231281> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271666, -0.434700, 0.858623,
		-0.916630, -0.154969, -0.368476,
		0.293237, -0.887142, -0.356359,
		30.126461, 33.283966, 29.124374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.369570, 33.418228, 29.528263>,  <29.921196, 33.904968, 29.373825>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.369570, 33.418228, 29.528263> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.707619, 33.214207, 29.464245>,  <29.910448, 33.091793, 29.425833>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.707619, 33.214207, 29.464245>,  <29.369570, 33.418228, 29.528263>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.707619, 33.214207, 29.464245> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207881, -0.589401, 0.780636,
		-0.492496, -0.626463, -0.604146,
		0.845123, -0.510050, -0.160048,
		29.961155, 33.061192, 29.416231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.231657, 32.648239, 29.630795>,  <29.369570, 33.418228, 29.528263>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.231657, 32.648239, 29.630795> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.625992, 32.700230, 29.673183>,  <29.862593, 32.731422, 29.698618>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.625992, 32.700230, 29.673183>,  <29.231657, 32.648239, 29.630795>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.625992, 32.700230, 29.673183> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005291, -0.607492, 0.794308,
		0.167619, -0.783620, -0.598201,
		0.985838, 0.129975, 0.105973,
		29.921743, 32.739223, 29.704975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.440348, 31.965620, 29.636927>,  <29.231657, 32.648239, 29.630795>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.440348, 31.965620, 29.636927> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.723696, 32.195621, 29.800674>,  <29.893705, 32.333622, 29.898922>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.723696, 32.195621, 29.800674>,  <29.440348, 31.965620, 29.636927>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.723696, 32.195621, 29.800674> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090564, -0.501137, 0.860616,
		0.700008, -0.646708, -0.302915,
		0.708369, 0.575004, 0.409369,
		29.936207, 32.368122, 29.923485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.878630, 31.466427, 30.037086>,  <29.440348, 31.965620, 29.636927>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.878630, 31.466427, 30.037086> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.947083, 31.826225, 30.197895>,  <29.988153, 32.042103, 30.294380>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.947083, 31.826225, 30.197895>,  <29.878630, 31.466427, 30.037086>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.947083, 31.826225, 30.197895> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006563, -0.406993, 0.913408,
		0.985226, -0.158952, -0.063746,
		0.171133, 0.899495, 0.402024,
		29.998423, 32.096073, 30.318502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.348370, 31.326517, 30.622934>,  <29.878630, 31.466427, 30.037086>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.348370, 31.326517, 30.622934> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.192068, 31.687294, 30.696491>,  <30.098288, 31.903759, 30.740625>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.192068, 31.687294, 30.696491>,  <30.348370, 31.326517, 30.622934>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.192068, 31.687294, 30.696491> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093440, -0.237607, 0.966856,
		0.915741, 0.360619, 0.177123,
		-0.390752, 0.901941, 0.183890,
		30.074842, 31.957876, 30.751657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.701939, 31.452347, 31.131649>,  <30.348370, 31.326517, 30.622934>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.701939, 31.452347, 31.131649> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.386505, 31.697227, 31.154789>,  <30.197245, 31.844156, 31.168673>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.386505, 31.697227, 31.154789>,  <30.701939, 31.452347, 31.131649>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.386505, 31.697227, 31.154789> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131055, -0.259232, 0.956882,
		0.600800, 0.747001, 0.284658,
		-0.788584, 0.612200, 0.057848,
		30.149929, 31.880888, 31.172144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.859589, 31.834826, 31.738138>,  <30.701939, 31.452347, 31.131649>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.859589, 31.834826, 31.738138> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.466278, 31.894596, 31.696499>,  <30.230291, 31.930458, 31.671516>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.466278, 31.894596, 31.696499>,  <30.859589, 31.834826, 31.738138>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.466278, 31.894596, 31.696499> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149274, -0.333897, 0.930715,
		0.104315, 0.930690, 0.350619,
		-0.983278, 0.149426, -0.104097,
		30.171295, 31.939425, 31.665270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.665188, 31.818420, 32.363380>,  <30.859589, 31.834826, 31.738138>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.665188, 31.818420, 32.363380> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.308899, 31.796051, 32.182941>,  <30.095125, 31.782629, 32.074680>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.308899, 31.796051, 32.182941>,  <30.665188, 31.818420, 32.363380>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.308899, 31.796051, 32.182941> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415240, -0.303583, 0.857562,
		-0.184901, 0.951163, 0.247187,
		-0.890723, -0.055922, -0.451093,
		30.041681, 31.779274, 32.047615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.202635, 32.307739, 32.647007>,  <30.665188, 31.818420, 32.363380>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.202635, 32.307739, 32.647007> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.998957, 31.996445, 32.500000>,  <29.876751, 31.809668, 32.411797>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.998957, 31.996445, 32.500000>,  <30.202635, 32.307739, 32.647007>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.998957, 31.996445, 32.500000> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342959, -0.208181, 0.915991,
		-0.789368, 0.592462, -0.160898,
		-0.509194, -0.778235, -0.367521,
		29.846199, 31.762974, 32.389744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.580555, 32.293350, 32.988926>,  <30.202635, 32.307739, 32.647007>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.580555, 32.293350, 32.988926> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.551497, 31.929382, 32.825577>,  <29.534061, 31.711002, 32.727566>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.551497, 31.929382, 32.825577>,  <29.580555, 32.293350, 32.988926>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.551497, 31.929382, 32.825577> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495501, -0.322422, 0.806550,
		-0.865564, 0.260943, -0.427443,
		-0.072646, -0.909919, -0.408375,
		29.529703, 31.656406, 32.703064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.921587, 32.079174, 33.031593>,  <29.580555, 32.293350, 32.988926>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.921587, 32.079174, 33.031593> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.091066, 31.719624, 32.986858>,  <29.192755, 31.503895, 32.960018>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.091066, 31.719624, 32.986858>,  <28.921587, 32.079174, 33.031593>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.091066, 31.719624, 32.986858> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.637179, -0.383523, 0.668515,
		-0.643803, -0.211987, -0.735241,
		0.423699, -0.898872, -0.111839,
		29.218176, 31.449963, 32.953308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<32.253712, 26.629496, 32.671463> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.325695, 27.017799, 32.735008>,  <32.368885, 27.250782, 32.773136>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.325695, 27.017799, 32.735008>,  <32.253712, 26.629496, 32.671463>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.325695, 27.017799, 32.735008> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103859, 0.141844, -0.984425,
		-0.978175, 0.193659, -0.075296,
		0.179963, 0.970761, 0.158862,
		32.379684, 27.309027, 32.782665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.688375, 26.892937, 32.190807>,  <32.253712, 26.629496, 32.671463>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.688375, 26.892937, 32.190807> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.970110, 27.157459, 32.294025>,  <32.139149, 27.316172, 32.355957>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.970110, 27.157459, 32.294025>,  <31.688375, 26.892937, 32.190807>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.970110, 27.157459, 32.294025> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216818, 0.145729, -0.965273,
		-0.675945, 0.735825, -0.040741,
		0.704336, 0.661305, 0.258045,
		32.181412, 27.355850, 32.371437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.614794, 27.306292, 31.621418>,  <31.688375, 26.892937, 32.190807>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.614794, 27.306292, 31.621418> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.966101, 27.406460, 31.784359>,  <32.176884, 27.466560, 31.882124>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.966101, 27.406460, 31.784359>,  <31.614794, 27.306292, 31.621418>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.966101, 27.406460, 31.784359> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317008, 0.332848, -0.888098,
		-0.357987, 0.909121, 0.212943,
		0.878266, 0.250423, 0.407354,
		32.229580, 27.481586, 31.906565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.778309, 27.971430, 31.482893>,  <31.614794, 27.306292, 31.621418>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.778309, 27.971430, 31.482893> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.134037, 27.803371, 31.555096>,  <32.347473, 27.702536, 31.598417>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.134037, 27.803371, 31.555096>,  <31.778309, 27.971430, 31.482893>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.134037, 27.803371, 31.555096> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341235, 0.346966, -0.873598,
		0.304409, 0.838506, 0.451933,
		0.889322, -0.420147, 0.180508,
		32.400833, 27.677328, 31.609247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.204659, 28.433140, 31.280182>,  <31.778309, 27.971430, 31.482893>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.204659, 28.433140, 31.280182> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.477287, 28.144249, 31.327240>,  <32.640865, 27.970915, 31.355474>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.477287, 28.144249, 31.327240>,  <32.204659, 28.433140, 31.280182>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.477287, 28.144249, 31.327240> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489832, 0.330876, -0.806589,
		0.543616, 0.607377, 0.579288,
		0.681576, -0.722229, 0.117643,
		32.681759, 27.927580, 31.362534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.951065, 28.753189, 31.297476>,  <32.204659, 28.433140, 31.280182>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.951065, 28.753189, 31.297476> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.932217, 28.380684, 31.152958>,  <32.920910, 28.157181, 31.066248>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.932217, 28.380684, 31.152958>,  <32.951065, 28.753189, 31.297476>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.932217, 28.380684, 31.152958> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448786, 0.303398, -0.840560,
		0.892396, -0.201748, 0.403641,
		-0.047118, -0.931261, -0.361293,
		32.918079, 28.101305, 31.044571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.361031, 28.848202, 30.661230>,  <32.951065, 28.753189, 31.297476>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.361031, 28.848202, 30.661230> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.188122, 28.490513, 30.614742>,  <33.084377, 28.275900, 30.586849>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.188122, 28.490513, 30.614742>,  <33.361031, 28.848202, 30.661230>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.188122, 28.490513, 30.614742> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291569, -0.016646, -0.956405,
		0.853306, -0.447311, 0.267924,
		-0.432270, -0.894224, -0.116218,
		33.058441, 28.222246, 30.579878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.890968, 28.405865, 30.344650>,  <33.361031, 28.848202, 30.661230>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.890968, 28.405865, 30.344650> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.524372, 28.258186, 30.283012>,  <33.304417, 28.169579, 30.246031>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.524372, 28.258186, 30.283012>,  <33.890968, 28.405865, 30.344650>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.524372, 28.258186, 30.283012> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092397, 0.179422, -0.979423,
		0.389248, -0.911867, -0.130326,
		-0.916488, -0.369197, -0.154094,
		33.249424, 28.147427, 30.236784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.927708, 28.078537, 29.774300>,  <33.890968, 28.405865, 30.344650>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.927708, 28.078537, 29.774300> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.530121, 28.116673, 29.795994>,  <33.291569, 28.139555, 29.809010>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.530121, 28.116673, 29.795994>,  <33.927708, 28.078537, 29.774300>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.530121, 28.116673, 29.795994> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024744, 0.286822, -0.957664,
		-0.106860, -0.953228, -0.282732,
		-0.993966, 0.095340, 0.054236,
		33.231930, 28.145275, 29.812265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.666065, 27.673962, 29.283340>,  <33.927708, 28.078537, 29.774300>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.666065, 27.673962, 29.283340> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.378582, 27.944069, 29.349648>,  <33.206093, 28.106133, 29.389433>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.378582, 27.944069, 29.349648>,  <33.666065, 27.673962, 29.283340>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.378582, 27.944069, 29.349648> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100876, 0.134623, -0.985749,
		-0.687960, -0.725183, -0.028635,
		-0.718704, 0.675267, 0.165769,
		33.162971, 28.146648, 29.399378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.195984, 27.519848, 28.768089>,  <33.666065, 27.673962, 29.283340>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.195984, 27.519848, 28.768089> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.087803, 27.883411, 28.895046>,  <33.022896, 28.101549, 28.971220>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.087803, 27.883411, 28.895046>,  <33.195984, 27.519848, 28.768089>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.087803, 27.883411, 28.895046> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170742, 0.279171, -0.944940,
		-0.947473, -0.309750, 0.079688,
		-0.270448, 0.908911, 0.317394,
		33.006668, 28.156084, 28.990265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.600494, 27.670055, 28.413750>,  <33.195984, 27.519848, 28.768089>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.600494, 27.670055, 28.413750> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.760147, 28.016567, 28.533916>,  <32.855938, 28.224474, 28.606016>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.760147, 28.016567, 28.533916>,  <32.600494, 27.670055, 28.413750>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.760147, 28.016567, 28.533916> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003893, 0.326044, -0.945346,
		-0.916884, 0.378491, 0.126763,
		0.399135, 0.866280, 0.300418,
		32.879887, 28.276451, 28.624043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.101112, 28.159517, 28.205416>,  <32.600494, 27.670055, 28.413750>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.101112, 28.159517, 28.205416> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.460720, 28.331581, 28.238213>,  <32.676487, 28.434818, 28.257891>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.460720, 28.331581, 28.238213>,  <32.101112, 28.159517, 28.205416>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.460720, 28.331581, 28.238213> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096384, 0.377029, -0.921173,
		-0.427163, 0.820252, 0.380417,
		0.899023, 0.430158, 0.081994,
		32.730427, 28.460629, 28.262812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.981716, 28.827795, 27.822685>,  <32.101112, 28.159517, 28.205416>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.981716, 28.827795, 27.822685> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.380028, 28.792450, 27.832623>,  <32.619015, 28.771244, 27.838585>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.380028, 28.792450, 27.832623>,  <31.981716, 28.827795, 27.822685>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.380028, 28.792450, 27.832623> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048823, 0.280720, -0.958547,
		0.077724, 0.955714, 0.283849,
		0.995779, -0.088360, 0.024842,
		32.678761, 28.765942, 27.840075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.468029, 29.366951, 27.740582>,  <31.981716, 28.827795, 27.822685>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.468029, 29.366951, 27.740582> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.159758, 29.139816, 27.624916>,  <30.974794, 29.003534, 27.555517>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.159758, 29.139816, 27.624916>,  <31.468029, 29.366951, 27.740582>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.159758, 29.139816, 27.624916> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241758, -0.159312, 0.957169,
		-0.589585, 0.807576, -0.014502,
		-0.770677, -0.567839, -0.289166,
		30.928555, 28.969465, 27.538166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.873848, 29.612221, 28.034023>,  <31.468029, 29.366951, 27.740582>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.873848, 29.612221, 28.034023> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.790958, 29.229038, 27.954643>,  <30.741224, 28.999128, 27.907015>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.790958, 29.229038, 27.954643>,  <30.873848, 29.612221, 28.034023>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.790958, 29.229038, 27.954643> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314964, -0.126723, 0.940606,
		-0.926205, 0.257421, -0.275461,
		-0.207224, -0.957954, -0.198450,
		30.728790, 28.941652, 27.895109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.366198, 29.525742, 28.459524>,  <30.873848, 29.612221, 28.034023>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.366198, 29.525742, 28.459524> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.407902, 29.155525, 28.313919>,  <30.432924, 28.933395, 28.226557>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.407902, 29.155525, 28.313919>,  <30.366198, 29.525742, 28.459524>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.407902, 29.155525, 28.313919> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493885, -0.365871, 0.788806,
		-0.863254, 0.097539, -0.495256,
		0.104260, -0.925540, -0.364013,
		30.439180, 28.877863, 28.204716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.711271, 29.267153, 28.324650>,  <30.366198, 29.525742, 28.459524>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.711271, 29.267153, 28.324650> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.965473, 28.969643, 28.407532>,  <30.117994, 28.791138, 28.457262>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.965473, 28.969643, 28.407532>,  <29.711271, 29.267153, 28.324650>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.965473, 28.969643, 28.407532> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.610761, -0.320092, 0.724232,
		-0.472341, -0.586805, -0.657688,
		0.635504, -0.743775, 0.207205,
		30.156124, 28.746510, 28.469694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.416000, 28.596245, 28.325979>,  <29.711271, 29.267153, 28.324650>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.416000, 28.596245, 28.325979> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.714262, 28.581608, 28.592110>,  <29.893219, 28.572824, 28.751789>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.714262, 28.581608, 28.592110>,  <29.416000, 28.596245, 28.325979>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.714262, 28.581608, 28.592110> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.547706, -0.602332, 0.580701,
		0.379498, -0.797406, -0.469174,
		0.745654, -0.036595, 0.665329,
		29.937958, 28.570629, 28.791708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.461857, 27.916981, 28.739838>,  <29.416000, 28.596245, 28.325979>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.461857, 27.916981, 28.739838> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.703527, 28.119556, 28.985924>,  <29.848530, 28.241102, 29.133575>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.703527, 28.119556, 28.985924>,  <29.461857, 27.916981, 28.739838>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.703527, 28.119556, 28.985924> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315131, -0.557263, 0.768213,
		0.731890, -0.658009, -0.177090,
		0.604176, 0.506441, 0.615214,
		29.884781, 28.271488, 29.170488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.495541, 27.450096, 29.228928>,  <29.461857, 27.916981, 28.739838>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.495541, 27.450096, 29.228928> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.671303, 27.759422, 29.411751>,  <29.776760, 27.945019, 29.521444>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.671303, 27.759422, 29.411751>,  <29.495541, 27.450096, 29.228928>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.671303, 27.759422, 29.411751> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148338, -0.439360, 0.885979,
		0.885956, -0.457104, -0.078345,
		0.439406, 0.773317, 0.457060,
		29.803125, 27.991417, 29.548868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.093014, 27.223276, 29.691938>,  <29.495541, 27.450096, 29.228928>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.093014, 27.223276, 29.691938> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.998741, 27.582516, 29.840462>,  <29.942179, 27.798059, 29.929575>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.998741, 27.582516, 29.840462>,  <30.093014, 27.223276, 29.691938>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.998741, 27.582516, 29.840462> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021135, -0.386716, 0.921957,
		0.971601, 0.209439, 0.110123,
		-0.235680, 0.898101, 0.371307,
		29.928038, 27.851946, 29.951855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.540794, 27.283655, 30.284494>,  <30.093014, 27.223276, 29.691938>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.540794, 27.283655, 30.284494> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.257282, 27.561539, 30.333500>,  <30.087175, 27.728268, 30.362904>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.257282, 27.561539, 30.333500>,  <30.540794, 27.283655, 30.284494>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.257282, 27.561539, 30.333500> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059385, -0.231819, 0.970945,
		0.702923, 0.680913, 0.205564,
		-0.708783, 0.694707, 0.122515,
		30.044647, 27.769951, 30.370255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.754692, 27.750546, 30.767981>,  <30.540794, 27.283655, 30.284494>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.754692, 27.750546, 30.767981> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.357101, 27.791214, 30.784348>,  <30.118547, 27.815617, 30.794168>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.357101, 27.791214, 30.784348>,  <30.754692, 27.750546, 30.767981>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.357101, 27.791214, 30.784348> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019777, -0.200835, 0.979425,
		0.107800, 0.974334, 0.197614,
		-0.993976, 0.101674, 0.040919,
		30.058908, 27.821716, 30.796623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.645983, 28.235519, 31.364250>,  <30.754692, 27.750546, 30.767981>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.645983, 28.235519, 31.364250> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.308168, 28.034657, 31.289848>,  <30.105480, 27.914139, 31.245207>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.308168, 28.034657, 31.289848>,  <30.645983, 28.235519, 31.364250>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.308168, 28.034657, 31.289848> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166572, -0.083771, 0.982464,
		-0.508936, 0.860708, -0.012898,
		-0.844534, -0.502160, -0.186004,
		30.054808, 27.884008, 31.234047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.208355, 28.641243, 31.754908>,  <30.645983, 28.235519, 31.364250>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.208355, 28.641243, 31.754908> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.034554, 28.285954, 31.695217>,  <29.930273, 28.072781, 31.659403>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.034554, 28.285954, 31.695217>,  <30.208355, 28.641243, 31.754908>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.034554, 28.285954, 31.695217> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208209, -0.062142, 0.976108,
		-0.876274, 0.455192, -0.157935,
		-0.434503, -0.888222, -0.149228,
		29.904203, 28.019487, 31.650448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.531467, 28.674273, 32.005329>,  <30.208355, 28.641243, 31.754908>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.531467, 28.674273, 32.005329> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.621685, 28.284649, 32.012676>,  <29.675816, 28.050875, 32.017082>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.621685, 28.284649, 32.012676>,  <29.531467, 28.674273, 32.005329>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.621685, 28.284649, 32.012676> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223577, -0.033403, 0.974114,
		-0.948231, -0.223814, -0.225311,
		0.225546, -0.974059, 0.018366,
		29.689348, 27.992432, 32.018185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.116312, 28.408491, 32.520615>,  <29.531467, 28.674273, 32.005329>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.116312, 28.408491, 32.520615> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.363325, 28.098835, 32.464962>,  <29.511534, 27.913042, 32.431572>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.363325, 28.098835, 32.464962>,  <29.116312, 28.408491, 32.520615>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.363325, 28.098835, 32.464962> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017976, -0.190737, 0.981477,
		-0.786338, -0.603595, -0.131703,
		0.617535, -0.774140, -0.139133,
		29.548586, 27.866592, 32.423222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.324728, 28.345749, 32.606960>,  <29.116312, 28.408491, 32.520615>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.324728, 28.345749, 32.606960> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.076847, 28.630074, 32.740055>,  <27.928118, 28.800669, 32.819912>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.076847, 28.630074, 32.740055>,  <28.324728, 28.345749, 32.606960>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.076847, 28.630074, 32.740055> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076049, 0.367572, -0.926880,
		-0.781143, -0.599695, -0.173729,
		-0.619703, 0.710814, 0.332733,
		27.890936, 28.843317, 32.839874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.706551, 28.338831, 32.253994>,  <28.324728, 28.345749, 32.606960>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.706551, 28.338831, 32.253994> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.747694, 28.721008, 32.364662>,  <27.772381, 28.950315, 32.431061>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.747694, 28.721008, 32.364662>,  <27.706551, 28.338831, 32.253994>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.747694, 28.721008, 32.364662> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285798, 0.294803, -0.911817,
		-0.952754, 0.014716, 0.303387,
		0.102858, 0.955445, 0.276669,
		27.778551, 29.007641, 32.447662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.125500, 28.649860, 31.907045>,  <27.706551, 28.338831, 32.253994>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.125500, 28.649860, 31.907045> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.349770, 28.965683, 32.006844>,  <27.484331, 29.155176, 32.066723>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.349770, 28.965683, 32.006844>,  <27.125500, 28.649860, 31.907045>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.349770, 28.965683, 32.006844> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260164, 0.454026, -0.852159,
		-0.786104, 0.412873, 0.459974,
		0.560673, 0.789555, 0.249497,
		27.517971, 29.202549, 32.081692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.671524, 29.253796, 31.730608>,  <27.125500, 28.649860, 31.907045>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.671524, 29.253796, 31.730608> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.051926, 29.373989, 31.759727>,  <27.280167, 29.446106, 31.777199>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.051926, 29.373989, 31.759727>,  <26.671524, 29.253796, 31.730608>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.051926, 29.373989, 31.759727> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083735, 0.476982, -0.874915,
		-0.297621, 0.825953, 0.478773,
		0.951005, 0.300484, 0.072799,
		27.337227, 29.464134, 31.781567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.685446, 30.004612, 31.744480>,  <26.671524, 29.253796, 31.730608>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.685446, 30.004612, 31.744480> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.039753, 29.878681, 31.608070>,  <27.252338, 29.803122, 31.526224>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.039753, 29.878681, 31.608070>,  <26.685446, 30.004612, 31.744480>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.039753, 29.878681, 31.608070> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038749, 0.682033, -0.730294,
		0.462506, 0.660086, 0.591925,
		0.885769, -0.314829, -0.341022,
		27.305483, 29.784233, 31.505764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.863857, 30.610075, 31.504217>,  <26.685446, 30.004612, 31.744480>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.863857, 30.610075, 31.504217> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.137552, 30.356331, 31.360325>,  <27.301769, 30.204084, 31.273991>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.137552, 30.356331, 31.360325>,  <26.863857, 30.610075, 31.504217>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.137552, 30.356331, 31.360325> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038448, 0.523976, -0.850865,
		0.728244, 0.568364, 0.382915,
		0.684239, -0.634360, -0.359729,
		27.342823, 30.166023, 31.252405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.520515, 30.999720, 31.234236>,  <26.863857, 30.610075, 31.504217>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.520515, 30.999720, 31.234236> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.480562, 30.645775, 31.052227>,  <27.456591, 30.433409, 30.943022>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.480562, 30.645775, 31.052227>,  <27.520515, 30.999720, 31.234236>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.480562, 30.645775, 31.052227> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083427, 0.448248, -0.890008,
		0.991495, -0.126858, 0.029049,
		-0.099884, -0.884862, -0.455019,
		27.450598, 30.380316, 30.915722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.038506, 30.927589, 30.755320>,  <27.520515, 30.999720, 31.234236>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.038506, 30.927589, 30.755320> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.776701, 30.655594, 30.623119>,  <27.619619, 30.492397, 30.543798>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.776701, 30.655594, 30.623119>,  <28.038506, 30.927589, 30.755320>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.776701, 30.655594, 30.623119> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098540, 0.356690, -0.929011,
		0.749604, -0.640615, -0.166451,
		-0.654510, -0.679989, -0.330502,
		27.580347, 30.451597, 30.523968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.411093, 30.471025, 30.248520>,  <28.038506, 30.927589, 30.755320>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.411093, 30.471025, 30.248520> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.016380, 30.452209, 30.186489>,  <27.779552, 30.440920, 30.149271>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.016380, 30.452209, 30.186489>,  <28.411093, 30.471025, 30.248520>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.016380, 30.452209, 30.186489> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146887, 0.144609, -0.978526,
		0.068451, -0.988371, -0.135788,
		-0.986782, -0.047036, -0.155077,
		27.720346, 30.438099, 30.139965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.281401, 30.152468, 29.510687>,  <28.411093, 30.471025, 30.248520>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.281401, 30.152468, 29.510687> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.955616, 30.370476, 29.590290>,  <27.760145, 30.501282, 29.638052>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.955616, 30.370476, 29.590290>,  <28.281401, 30.152468, 29.510687>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.955616, 30.370476, 29.590290> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103675, 0.200765, -0.974138,
		-0.570880, -0.814030, -0.107011,
		-0.814462, 0.545021, 0.199007,
		27.711277, 30.533981, 29.649992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.853111, 29.918234, 29.019127>,  <28.281401, 30.152468, 29.510687>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.853111, 29.918234, 29.019127> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.722565, 30.272865, 29.150249>,  <27.644236, 30.485645, 29.228924>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.722565, 30.272865, 29.150249>,  <27.853111, 29.918234, 29.019127>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.722565, 30.272865, 29.150249> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262971, 0.247945, -0.932400,
		-0.907926, -0.390509, 0.152224,
		-0.326368, 0.886581, 0.327809,
		27.624655, 30.538839, 29.248592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.323833, 30.076935, 28.582954>,  <27.853111, 29.918234, 29.019127>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.323833, 30.076935, 28.582954> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.364624, 30.446331, 28.730885>,  <27.389097, 30.667969, 28.819643>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.364624, 30.446331, 28.730885>,  <27.323833, 30.076935, 28.582954>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.364624, 30.446331, 28.730885> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220205, 0.383496, -0.896906,
		-0.970109, 0.010024, 0.242464,
		0.101975, 0.923488, 0.369825,
		27.395216, 30.723377, 28.841831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.797840, 30.629995, 28.254356>,  <27.323833, 30.076935, 28.582954>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.797840, 30.629995, 28.254356> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.112898, 30.863846, 28.332153>,  <27.301933, 31.004156, 28.378832>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.112898, 30.863846, 28.332153>,  <26.797840, 30.629995, 28.254356>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.112898, 30.863846, 28.332153> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048192, 0.373163, -0.926513,
		-0.614240, 0.720392, 0.322095,
		0.787646, 0.584624, 0.194494,
		27.349192, 31.039232, 28.390501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.771669, 30.979282, 27.751385>,  <26.797840, 30.629995, 28.254356>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.771669, 30.979282, 27.751385> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.137360, 31.102070, 27.857185>,  <27.356773, 31.175743, 27.920666>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.137360, 31.102070, 27.857185>,  <26.771669, 30.979282, 27.751385>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.137360, 31.102070, 27.857185> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141712, 0.369326, -0.918432,
		-0.379619, 0.877136, 0.294145,
		0.914225, 0.306970, 0.264503,
		27.411627, 31.194160, 27.936537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<35.454380, 35.890526, 16.064596> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.633869, 36.247906, 16.072548>,  <35.741562, 36.462334, 16.077320>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.633869, 36.247906, 16.072548>,  <35.454380, 35.890526, 16.064596>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.633869, 36.247906, 16.072548> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.591914, -0.313801, 0.742406,
		0.669541, -0.321366, -0.669655,
		0.448723, 0.893450, 0.019882,
		35.768486, 36.515942, 16.078512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.149170, 35.718853, 16.198542>,  <35.454380, 35.890526, 16.064596>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.149170, 35.718853, 16.198542> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.089149, 36.105705, 16.280663>,  <36.053139, 36.337814, 16.329935>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.089149, 36.105705, 16.280663>,  <36.149170, 35.718853, 16.198542>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.089149, 36.105705, 16.280663> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.574631, -0.083668, 0.814125,
		0.804540, 0.240133, -0.543187,
		-0.150051, 0.967128, 0.205302,
		36.044136, 36.395844, 16.342253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.736423, 36.038616, 16.422543>,  <36.149170, 35.718853, 16.198542>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.736423, 36.038616, 16.422543> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.457420, 36.286678, 16.566151>,  <36.290020, 36.435516, 16.652315>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.457420, 36.286678, 16.566151>,  <36.736423, 36.038616, 16.422543>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.457420, 36.286678, 16.566151> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298922, -0.203532, 0.932320,
		0.651251, 0.757619, -0.043412,
		-0.697508, 0.620152, 0.359019,
		36.248169, 36.472725, 16.673857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.065388, 36.525120, 16.827797>,  <36.736423, 36.038616, 16.422543>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.065388, 36.525120, 16.827797> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.696350, 36.537323, 16.981621>,  <36.474926, 36.544643, 17.073915>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.696350, 36.537323, 16.981621>,  <37.065388, 36.525120, 16.827797>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.696350, 36.537323, 16.981621> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377289, -0.136483, 0.915983,
		0.080430, 0.990172, 0.114409,
		-0.922596, 0.030507, 0.384559,
		36.419571, 36.546474, 17.096989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.101891, 37.037163, 17.444458>,  <37.065388, 36.525120, 16.827797>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.101891, 37.037163, 17.444458> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.786671, 36.792931, 17.475880>,  <36.597538, 36.646393, 17.494732>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.786671, 36.792931, 17.475880>,  <37.101891, 37.037163, 17.444458>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.786671, 36.792931, 17.475880> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362100, -0.356545, 0.861255,
		-0.497858, 0.707154, 0.502066,
		-0.788049, -0.610581, 0.078552,
		36.550255, 36.609756, 17.499445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.795479, 37.082573, 18.160580>,  <37.101891, 37.037163, 17.444458>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.795479, 37.082573, 18.160580> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.681026, 36.730698, 18.008640>,  <36.612354, 36.519573, 17.917477>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.681026, 36.730698, 18.008640>,  <36.795479, 37.082573, 18.160580>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.681026, 36.730698, 18.008640> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372597, -0.467371, 0.801708,
		-0.882780, 0.087863, 0.461496,
		-0.286130, -0.879684, -0.379849,
		36.595188, 36.466793, 17.894686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.563656, 36.742821, 18.730639>,  <36.795479, 37.082573, 18.160580>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.563656, 36.742821, 18.730639> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.631180, 36.464989, 18.450905>,  <36.671692, 36.298290, 18.283064>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.631180, 36.464989, 18.450905>,  <36.563656, 36.742821, 18.730639>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.631180, 36.464989, 18.450905> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202653, -0.669901, 0.714259,
		-0.964591, -0.262294, 0.027675,
		0.168807, -0.694576, -0.699335,
		36.681820, 36.256615, 18.241104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.434868, 36.036713, 19.069613>,  <36.563656, 36.742821, 18.730639>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.434868, 36.036713, 19.069613> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.618114, 35.929848, 18.730495>,  <36.728062, 35.865730, 18.527025>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.618114, 35.929848, 18.730495>,  <36.434868, 36.036713, 19.069613>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.618114, 35.929848, 18.730495> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336494, -0.830660, 0.443594,
		-0.822735, -0.488498, -0.290649,
		0.458125, -0.267158, -0.847790,
		36.755550, 35.849701, 18.476158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.289467, 35.370094, 19.126167>,  <36.434868, 36.036713, 19.069613>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.289467, 35.370094, 19.126167> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.593094, 35.433548, 18.873611>,  <36.775269, 35.471622, 18.722078>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.593094, 35.433548, 18.873611>,  <36.289467, 35.370094, 19.126167>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.593094, 35.433548, 18.873611> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535758, -0.703193, 0.467422,
		-0.369836, -0.693076, -0.618763,
		0.759068, 0.158638, -0.631387,
		36.820816, 35.481140, 18.684195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.515541, 34.715950, 18.982533>,  <36.289467, 35.370094, 19.126167>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.515541, 34.715950, 18.982533> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.813866, 34.959087, 18.873501>,  <36.992859, 35.104969, 18.808083>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.813866, 34.959087, 18.873501>,  <36.515541, 34.715950, 18.982533>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.813866, 34.959087, 18.873501> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.651191, -0.578960, 0.490669,
		0.140438, -0.543444, -0.827614,
		0.745807, 0.607843, -0.272578,
		37.037609, 35.141441, 18.791727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.012417, 34.285301, 18.812820>,  <36.515541, 34.715950, 18.982533>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.012417, 34.285301, 18.812820> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.210968, 34.625053, 18.884560>,  <37.330101, 34.828903, 18.927603>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.210968, 34.625053, 18.884560>,  <37.012417, 34.285301, 18.812820>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.210968, 34.625053, 18.884560> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.698831, -0.513538, 0.497910,
		0.515016, -0.121818, -0.848480,
		0.496381, 0.849376, 0.179350,
		37.359882, 34.879868, 18.938364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.758827, 34.164936, 18.622585>,  <37.012417, 34.285301, 18.812820>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.758827, 34.164936, 18.622585> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.776371, 34.488758, 18.856747>,  <37.786900, 34.683052, 18.997244>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.776371, 34.488758, 18.856747>,  <37.758827, 34.164936, 18.622585>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.776371, 34.488758, 18.856747> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.710122, -0.437429, 0.551708,
		0.702711, 0.391510, -0.594069,
		0.043864, 0.809553, 0.585406,
		37.789532, 34.731625, 19.032368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.508118, 34.209438, 18.879423>,  <37.758827, 34.164936, 18.622585>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.508118, 34.209438, 18.879423> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.279415, 34.406101, 19.142139>,  <38.142193, 34.524097, 19.299768>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.279415, 34.406101, 19.142139>,  <38.508118, 34.209438, 18.879423>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.279415, 34.406101, 19.142139> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.559243, -0.352186, 0.750475,
		0.600286, 0.796393, -0.073590,
		-0.571756, 0.491654, 0.656789,
		38.107887, 34.553596, 19.339176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.966583, 34.385590, 19.329668>,  <38.508118, 34.209438, 18.879423>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.966583, 34.385590, 19.329668> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.619335, 34.439491, 19.520756>,  <38.410988, 34.471832, 19.635408>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.619335, 34.439491, 19.520756>,  <38.966583, 34.385590, 19.329668>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.619335, 34.439491, 19.520756> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383434, -0.429116, 0.817825,
		0.315204, 0.893141, 0.320852,
		-0.868116, 0.134757, 0.477719,
		38.358902, 34.479919, 19.664072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.158310, 34.529106, 20.114885>,  <38.966583, 34.385590, 19.329668>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.158310, 34.529106, 20.114885> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.782681, 34.391792, 20.121700>,  <38.557301, 34.309402, 20.125790>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.782681, 34.391792, 20.121700>,  <39.158310, 34.529106, 20.114885>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.782681, 34.391792, 20.121700> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204361, -0.517819, 0.830723,
		-0.276352, 0.783594, 0.556425,
		-0.939077, -0.343284, 0.017036,
		38.500957, 34.288807, 20.126810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.057938, 34.366405, 20.830677>,  <39.158310, 34.529106, 20.114885>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.057938, 34.366405, 20.830677> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.761246, 34.166336, 20.651943>,  <38.583229, 34.046295, 20.544703>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.761246, 34.166336, 20.651943>,  <39.057938, 34.366405, 20.830677>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.761246, 34.166336, 20.651943> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232249, -0.816548, 0.528498,
		-0.629204, 0.288225, 0.721823,
		-0.741729, -0.500175, -0.446835,
		38.538727, 34.016285, 20.517893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.710228, 33.914276, 21.343092>,  <39.057938, 34.366405, 20.830677>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.710228, 33.914276, 21.343092> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.603596, 33.751503, 20.993614>,  <38.539616, 33.653839, 20.783928>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.603596, 33.751503, 20.993614>,  <38.710228, 33.914276, 21.343092>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.603596, 33.751503, 20.993614> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138993, -0.913255, 0.382944,
		-0.953738, -0.019353, 0.300015,
		-0.266580, -0.406929, -0.873696,
		38.523621, 33.629425, 20.731506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.145973, 33.516727, 21.500154>,  <38.710228, 33.914276, 21.343092>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.145973, 33.516727, 21.500154> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.316135, 33.380733, 21.164669>,  <38.418232, 33.299137, 20.963379>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.316135, 33.380733, 21.164669>,  <38.145973, 33.516727, 21.500154>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.316135, 33.380733, 21.164669> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049314, -0.916666, 0.396601,
		-0.903656, -0.210079, -0.373193,
		0.425410, -0.339987, -0.838710,
		38.443756, 33.278736, 20.913055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.757313, 32.980759, 21.362591>,  <38.145973, 33.516727, 21.500154>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.757313, 32.980759, 21.362591> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.080795, 32.926899, 21.133553>,  <38.274883, 32.894585, 20.996130>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.080795, 32.926899, 21.133553>,  <37.757313, 32.980759, 21.362591>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.080795, 32.926899, 21.133553> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054759, -0.986454, 0.154627,
		-0.585660, -0.093693, -0.805124,
		0.808705, -0.134647, -0.572596,
		38.323406, 32.886505, 20.961773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.576694, 32.365181, 20.974073>,  <37.757313, 32.980759, 21.362591>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.576694, 32.365181, 20.974073> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.976547, 32.375679, 20.977066>,  <38.216457, 32.381977, 20.978861>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.976547, 32.375679, 20.977066>,  <37.576694, 32.365181, 20.974073>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.976547, 32.375679, 20.977066> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023304, -0.963481, 0.266759,
		0.014209, -0.266486, -0.963734,
		0.999627, 0.026249, 0.007480,
		38.276436, 32.383553, 20.979309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.838120, 31.816750, 20.588358>,  <37.576694, 32.365181, 20.974073>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.838120, 31.816750, 20.588358> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.084553, 31.949772, 20.873974>,  <38.232410, 32.029587, 21.045343>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.084553, 31.949772, 20.873974>,  <37.838120, 31.816750, 20.588358>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.084553, 31.949772, 20.873974> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231766, -0.942909, 0.239182,
		0.752815, 0.018135, -0.657982,
		0.616079, 0.332558, 0.714039,
		38.269375, 32.049538, 21.088186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.089970, 31.834190, 20.477118>,  <37.838120, 31.816750, 20.588358>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.089970, 31.834190, 20.477118> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.722282, 31.847958, 20.320217>,  <36.501671, 31.856218, 20.226076>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.722282, 31.847958, 20.320217>,  <37.089970, 31.834190, 20.477118>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.722282, 31.847958, 20.320217> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374698, -0.229729, -0.898235,
		-0.121026, -0.972646, 0.198274,
		-0.919214, 0.034417, -0.392251,
		36.446518, 31.858284, 20.202541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.074795, 31.275639, 19.881989>,  <37.089970, 31.834190, 20.477118>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.074795, 31.275639, 19.881989> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.800510, 31.557880, 19.810528>,  <36.635941, 31.727226, 19.767653>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.800510, 31.557880, 19.810528>,  <37.074795, 31.275639, 19.881989>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.800510, 31.557880, 19.810528> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225525, -0.027399, -0.973852,
		-0.692050, -0.708075, -0.140344,
		-0.685715, 0.705605, -0.178650,
		36.594795, 31.769562, 19.756933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.729851, 31.040964, 19.248730>,  <37.074795, 31.275639, 19.881989>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.729851, 31.040964, 19.248730> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.695854, 31.437710, 19.286644>,  <36.675457, 31.675756, 19.309393>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.695854, 31.437710, 19.286644>,  <36.729851, 31.040964, 19.248730>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.695854, 31.437710, 19.286644> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189680, 0.109496, -0.975721,
		-0.978160, -0.064953, -0.197443,
		-0.084995, 0.991863, 0.094784,
		36.670357, 31.735270, 19.315079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.205235, 31.129641, 18.868473>,  <36.729851, 31.040964, 19.248730>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.205235, 31.129641, 18.868473> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.426739, 31.461685, 18.894585>,  <36.559643, 31.660912, 18.910252>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.426739, 31.461685, 18.894585>,  <36.205235, 31.129641, 18.868473>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.426739, 31.461685, 18.894585> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001846, 0.077172, -0.997016,
		-0.832673, 0.552231, 0.041202,
		0.553763, 0.830112, 0.065279,
		36.592869, 31.710718, 18.914167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.012970, 31.510149, 18.265331>,  <36.205235, 31.129641, 18.868473>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.012970, 31.510149, 18.265331> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.348167, 31.689293, 18.390034>,  <36.549286, 31.796780, 18.464855>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.348167, 31.689293, 18.390034>,  <36.012970, 31.510149, 18.265331>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.348167, 31.689293, 18.390034> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156419, 0.350191, -0.923526,
		-0.522786, 0.822670, 0.223402,
		0.837991, 0.447862, 0.311756,
		36.599564, 31.823652, 18.483561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.012398, 32.130241, 18.011253>,  <36.012970, 31.510149, 18.265331>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.012398, 32.130241, 18.011253> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.406059, 32.083889, 18.064938>,  <36.642258, 32.056076, 18.097147>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.406059, 32.083889, 18.064938>,  <36.012398, 32.130241, 18.011253>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.406059, 32.083889, 18.064938> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167801, 0.364077, -0.916128,
		0.057301, 0.924132, 0.377753,
		0.984154, -0.115883, 0.134208,
		36.701305, 32.049126, 18.105200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.293537, 32.735359, 17.722111>,  <36.012398, 32.130241, 18.011253>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.293537, 32.735359, 17.722111> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.614689, 32.501160, 17.766964>,  <36.807381, 32.360641, 17.793877>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.614689, 32.501160, 17.766964>,  <36.293537, 32.735359, 17.722111>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.614689, 32.501160, 17.766964> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416289, 0.416010, -0.808479,
		0.426713, 0.695793, 0.577743,
		0.802881, -0.585497, 0.112134,
		36.855553, 32.325512, 17.800604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.795612, 33.198376, 17.640526>,  <36.293537, 32.735359, 17.722111>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.795612, 33.198376, 17.640526> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.910175, 32.827477, 17.544037>,  <36.978912, 32.604939, 17.486143>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.910175, 32.827477, 17.544037>,  <36.795612, 33.198376, 17.640526>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.910175, 32.827477, 17.544037> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225758, 0.309993, -0.923546,
		0.931129, 0.210056, 0.298118,
		0.286411, -0.927244, -0.241222,
		36.996098, 32.549305, 17.471670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.265125, 33.428066, 17.120464>,  <36.795612, 33.198376, 17.640526>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.265125, 33.428066, 17.120464> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.201881, 33.038231, 17.057003>,  <37.163933, 32.804329, 17.018927>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.201881, 33.038231, 17.057003>,  <37.265125, 33.428066, 17.120464>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.201881, 33.038231, 17.057003> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053594, 0.151969, -0.986931,
		0.985965, -0.164551, 0.028204,
		-0.158114, -0.974591, -0.158655,
		37.154446, 32.745853, 17.009407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.858929, 33.212959, 16.693344>,  <37.265125, 33.428066, 17.120464>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.858929, 33.212959, 16.693344> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.539276, 32.976490, 16.649708>,  <37.347485, 32.834610, 16.623526>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.539276, 32.976490, 16.649708>,  <37.858929, 33.212959, 16.693344>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.539276, 32.976490, 16.649708> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076941, 0.079394, -0.993870,
		0.596211, -0.802627, -0.017961,
		-0.799132, -0.591174, -0.109091,
		37.299538, 32.799137, 16.616982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.058960, 32.848866, 16.214561>,  <37.858929, 33.212959, 16.693344>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.058960, 32.848866, 16.214561> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.671227, 32.751503, 16.200974>,  <37.438587, 32.693085, 16.192822>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.671227, 32.751503, 16.200974>,  <38.058960, 32.848866, 16.214561>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.671227, 32.751503, 16.200974> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045642, 0.314098, -0.948293,
		0.241489, -0.917658, -0.315574,
		-0.969329, -0.243405, -0.033967,
		37.380428, 32.678482, 16.190783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.900692, 32.653976, 15.466887>,  <38.058960, 32.848866, 16.214561>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.900692, 32.653976, 15.466887> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.535561, 32.703598, 15.622506>,  <37.316483, 32.733372, 15.715878>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.535561, 32.703598, 15.622506>,  <37.900692, 32.653976, 15.466887>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.535561, 32.703598, 15.622506> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255823, 0.568868, -0.781629,
		-0.318277, -0.813019, -0.487544,
		-0.912827, 0.124050, 0.389047,
		37.261711, 32.740814, 15.739221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.327312, 32.513321, 14.969484>,  <37.900692, 32.653976, 15.466887>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.327312, 32.513321, 14.969484> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.172817, 32.779968, 15.224494>,  <37.080120, 32.939957, 15.377500>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.172817, 32.779968, 15.224494>,  <37.327312, 32.513321, 14.969484>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.172817, 32.779968, 15.224494> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129492, 0.645127, -0.753022,
		-0.913266, -0.373397, -0.162848,
		-0.386234, 0.666622, 0.637525,
		37.056946, 32.979954, 15.415751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.627621, 32.599232, 14.715393>,  <37.327312, 32.513321, 14.969484>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.627621, 32.599232, 14.715393> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.708412, 32.904255, 14.961226>,  <36.756886, 33.087269, 15.108727>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.708412, 32.904255, 14.961226>,  <36.627621, 32.599232, 14.715393>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.708412, 32.904255, 14.961226> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353568, 0.641972, -0.680340,
		-0.913342, -0.079883, 0.399279,
		0.201979, 0.762556, 0.614584,
		36.769005, 33.133022, 15.145601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.043934, 32.996075, 14.686623>,  <36.627621, 32.599232, 14.715393>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.043934, 32.996075, 14.686623> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.341423, 33.230572, 14.815120>,  <36.519917, 33.371269, 14.892218>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.341423, 33.230572, 14.815120>,  <36.043934, 32.996075, 14.686623>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.341423, 33.230572, 14.815120> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222488, 0.670226, -0.708023,
		-0.630380, 0.455098, 0.628893,
		0.743720, 0.586245, 0.321243,
		36.564541, 33.406445, 14.911492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.746639, 33.652603, 14.888971>,  <36.043934, 32.996075, 14.686623>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.746639, 33.652603, 14.888971> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.134956, 33.712173, 14.813735>,  <36.367947, 33.747913, 14.768594>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.134956, 33.712173, 14.813735>,  <35.746639, 33.652603, 14.888971>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.134956, 33.712173, 14.813735> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239633, 0.639496, -0.730493,
		0.011495, 0.754232, 0.656507,
		0.970796, 0.148924, -0.188090,
		36.426193, 33.756851, 14.757308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.663509, 34.226635, 14.528343>,  <35.746639, 33.652603, 14.888971>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.663509, 34.226635, 14.528343> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.044205, 34.140850, 14.440520>,  <36.272621, 34.089378, 14.387827>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.044205, 34.140850, 14.440520>,  <35.663509, 34.226635, 14.528343>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.044205, 34.140850, 14.440520> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074438, 0.532708, -0.843019,
		0.297754, 0.818675, 0.491034,
		0.951736, -0.214460, -0.219556,
		36.329727, 34.076511, 14.374654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.928524, 34.887737, 14.324605>,  <35.663509, 34.226635, 14.528343>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.928524, 34.887737, 14.324605> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.132973, 34.586304, 14.159265>,  <36.255642, 34.405441, 14.060061>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.132973, 34.586304, 14.159265>,  <35.928524, 34.887737, 14.324605>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.132973, 34.586304, 14.159265> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054264, 0.451665, -0.890536,
		0.857793, 0.477604, 0.189964,
		0.511123, -0.753587, -0.413351,
		36.286308, 34.360226, 14.035259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.384487, 35.270905, 13.950329>,  <35.928524, 34.887737, 14.324605>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.384487, 35.270905, 13.950329> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.407623, 34.894695, 13.816421>,  <36.421505, 34.668968, 13.736075>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.407623, 34.894695, 13.816421>,  <36.384487, 35.270905, 13.950329>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.407623, 34.894695, 13.816421> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011119, 0.335917, -0.941826,
		0.998264, 0.050752, 0.029887,
		0.057839, -0.940523, -0.334770,
		36.424976, 34.612537, 13.715990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.823742, 35.306225, 13.324039>,  <36.384487, 35.270905, 13.950329>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.823742, 35.306225, 13.324039> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.613895, 34.968132, 13.283334>,  <36.487988, 34.765274, 13.258910>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.613895, 34.968132, 13.283334>,  <36.823742, 35.306225, 13.324039>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.613895, 34.968132, 13.283334> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067587, 0.160508, -0.984718,
		0.848652, -0.509720, -0.141332,
		-0.524616, -0.845235, -0.101765,
		36.456512, 34.714561, 13.252805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.157581, 34.975346, 12.699125>,  <36.823742, 35.306225, 13.324039>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.157581, 34.975346, 12.699125> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.776421, 34.864655, 12.748755>,  <36.547722, 34.798241, 12.778533>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.776421, 34.864655, 12.748755>,  <37.157581, 34.975346, 12.699125>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.776421, 34.864655, 12.748755> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213682, 0.322327, -0.922196,
		0.215205, -0.905277, -0.366279,
		-0.952904, -0.276729, 0.124075,
		36.490551, 34.781635, 12.785977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<28.282866, 31.565577, 33.175373> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.614237, 31.344936, 33.214249>,  <28.813059, 31.212553, 33.237576>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.614237, 31.344936, 33.214249>,  <28.282866, 31.565577, 33.175373>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.614237, 31.344936, 33.214249> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384823, -0.434464, 0.814341,
		-0.406960, -0.712027, -0.572190,
		0.828429, -0.551597, 0.097195,
		28.862764, 31.179457, 33.243404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.087688, 30.910221, 33.400002>,  <28.282866, 31.565577, 33.175373>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.087688, 30.910221, 33.400002> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.477474, 30.920921, 33.489178>,  <28.711346, 30.927341, 33.542683>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.477474, 30.920921, 33.489178>,  <28.087688, 30.910221, 33.400002>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.477474, 30.920921, 33.489178> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194779, -0.393255, 0.898561,
		0.111712, -0.919040, -0.378002,
		0.974465, 0.026753, 0.222941,
		28.769814, 30.928947, 33.556061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.163467, 30.265352, 33.790646>,  <28.087688, 30.910221, 33.400002>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.163467, 30.265352, 33.790646> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.466003, 30.513222, 33.874504>,  <28.647526, 30.661943, 33.924820>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.466003, 30.513222, 33.874504>,  <28.163467, 30.265352, 33.790646>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.466003, 30.513222, 33.874504> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100373, -0.206748, 0.973232,
		0.646431, -0.757138, -0.094174,
		0.756341, 0.619675, 0.209644,
		28.692905, 30.699123, 33.937397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.441086, 29.961828, 34.343643>,  <28.163467, 30.265352, 33.790646>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.441086, 29.961828, 34.343643> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.587532, 30.332668, 34.375763>,  <28.675400, 30.555172, 34.395035>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.587532, 30.332668, 34.375763>,  <28.441086, 29.961828, 34.343643>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.587532, 30.332668, 34.375763> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123617, -0.133977, 0.983244,
		0.922323, -0.350053, -0.163656,
		0.366114, 0.927099, 0.080297,
		28.697367, 30.610798, 34.399853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.994188, 29.825006, 34.618687>,  <28.441086, 29.961828, 34.343643>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.994188, 29.825006, 34.618687> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.936745, 30.209740, 34.711857>,  <28.902279, 30.440580, 34.767757>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.936745, 30.209740, 34.711857>,  <28.994188, 29.825006, 34.618687>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.936745, 30.209740, 34.711857> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334123, -0.174423, 0.926250,
		0.931525, 0.210842, -0.296322,
		-0.143607, 0.961833, 0.232927,
		28.893663, 30.498289, 34.781734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.529268, 29.983746, 35.087246>,  <28.994188, 29.825006, 34.618687>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.529268, 29.983746, 35.087246> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.245684, 30.259312, 35.147602>,  <29.075533, 30.424652, 35.183815>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.245684, 30.259312, 35.147602>,  <29.529268, 29.983746, 35.087246>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.245684, 30.259312, 35.147602> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077205, -0.136853, 0.987578,
		0.701010, 0.711803, 0.043835,
		-0.708960, 0.688917, 0.150891,
		29.032995, 30.465986, 35.192871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.876471, 30.295677, 35.671124>,  <29.529268, 29.983746, 35.087246>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.876471, 30.295677, 35.671124> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.502216, 30.436859, 35.670044>,  <29.277664, 30.521568, 35.669395>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.502216, 30.436859, 35.670044>,  <29.876471, 30.295677, 35.671124>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.502216, 30.436859, 35.670044> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007186, -0.011406, 0.999909,
		0.352892, 0.935571, 0.013208,
		-0.935636, 0.352955, -0.002698,
		29.221525, 30.542746, 35.669235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.940622, 30.835970, 36.044273>,  <29.876471, 30.295677, 35.671124>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.940622, 30.835970, 36.044273> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.546350, 30.769825, 36.057465>,  <29.309788, 30.730139, 36.065380>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.546350, 30.769825, 36.057465>,  <29.940622, 30.835970, 36.044273>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.546350, 30.769825, 36.057465> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031688, 0.010459, 0.999443,
		-0.165614, 0.986177, -0.005069,
		-0.985681, -0.165362, 0.032982,
		29.250647, 30.720217, 36.067360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.602276, 31.156963, 36.583794>,  <29.940622, 30.835970, 36.044273>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.602276, 31.156963, 36.583794> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.322878, 30.876198, 36.528053>,  <29.155239, 30.707739, 36.494610>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.322878, 30.876198, 36.528053>,  <29.602276, 31.156963, 36.583794>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.322878, 30.876198, 36.528053> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054618, -0.141864, 0.988378,
		-0.713527, 0.697989, 0.060754,
		-0.698496, -0.701916, -0.139346,
		29.113329, 30.665623, 36.486248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.921900, 31.317026, 37.021065>,  <29.602276, 31.156963, 36.583794>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.921900, 31.317026, 37.021065> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.932484, 30.930305, 36.919399>,  <28.938835, 30.698273, 36.858402>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.932484, 30.930305, 36.919399>,  <28.921900, 31.317026, 37.021065>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.932484, 30.930305, 36.919399> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254986, -0.252367, 0.933431,
		-0.966583, 0.040107, -0.253198,
		0.026462, -0.966800, -0.254160,
		28.940422, 30.640265, 36.843151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.481775, 31.129156, 37.506470>,  <28.921900, 31.317026, 37.021065>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.481775, 31.129156, 37.506470> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.671108, 30.818832, 37.339577>,  <28.784708, 30.632639, 37.239441>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.671108, 30.818832, 37.339577>,  <28.481775, 31.129156, 37.506470>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.671108, 30.818832, 37.339577> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088326, -0.513060, 0.853796,
		-0.876445, -0.367276, -0.311371,
		0.473331, -0.775808, -0.417229,
		28.813108, 30.586090, 37.214409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.048809, 30.586983, 37.570797>,  <28.481775, 31.129156, 37.506470>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.048809, 30.586983, 37.570797> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.425711, 30.455597, 37.544647>,  <28.651852, 30.376766, 37.528957>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.425711, 30.455597, 37.544647>,  <28.048809, 30.586983, 37.570797>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.425711, 30.455597, 37.544647> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146482, -0.579734, 0.801531,
		-0.301172, -0.745668, -0.594369,
		0.942252, -0.328462, -0.065373,
		28.708385, 30.357058, 37.525036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.033255, 29.808630, 37.525990>,  <28.048809, 30.586983, 37.570797>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.033255, 29.808630, 37.525990> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.380144, 29.948589, 37.667690>,  <28.588278, 30.032564, 37.752708>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.380144, 29.948589, 37.667690>,  <28.033255, 29.808630, 37.525990>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.380144, 29.948589, 37.667690> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097234, -0.578754, 0.809684,
		0.488329, -0.736624, -0.467889,
		0.867226, 0.349898, 0.354247,
		28.640312, 30.053558, 37.773964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.344246, 29.230078, 37.733643>,  <28.033255, 29.808630, 37.525990>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.344246, 29.230078, 37.733643> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.544472, 29.489624, 37.962872>,  <28.664608, 29.645351, 38.100407>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.544472, 29.489624, 37.962872>,  <28.344246, 29.230078, 37.733643>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.544472, 29.489624, 37.962872> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104725, -0.702499, 0.703938,
		0.859341, -0.292352, -0.419600,
		0.500566, 0.648865, 0.573069,
		28.694641, 29.684284, 38.134792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.832415, 28.589096, 38.026123>,  <28.344246, 29.230078, 37.733643>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.832415, 28.589096, 38.026123> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.667517, 28.232971, 38.103477>,  <27.568579, 28.019297, 38.149891>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.667517, 28.232971, 38.103477>,  <27.832415, 28.589096, 38.026123>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.667517, 28.232971, 38.103477> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124179, -0.155371, -0.980020,
		0.902571, -0.428022, -0.046507,
		-0.412245, -0.890313, 0.193385,
		27.543844, 27.965878, 38.161491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.248800, 28.119102, 37.684170>,  <27.832415, 28.589096, 38.026123>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.248800, 28.119102, 37.684170> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.886396, 27.965168, 37.754650>,  <27.668953, 27.872807, 37.796936>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.886396, 27.965168, 37.754650>,  <28.248800, 28.119102, 37.684170>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.886396, 27.965168, 37.754650> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112165, -0.183106, -0.976673,
		0.408122, -0.904640, 0.122731,
		-0.906011, -0.384836, 0.176199,
		27.614594, 27.849718, 37.807510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.234875, 27.496048, 37.236687>,  <28.248800, 28.119102, 37.684170>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.234875, 27.496048, 37.236687> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.851511, 27.566338, 37.326641>,  <27.621492, 27.608511, 37.380615>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.851511, 27.566338, 37.326641>,  <28.234875, 27.496048, 37.236687>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.851511, 27.566338, 37.326641> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209036, 0.104268, -0.972333,
		-0.194313, -0.978902, -0.063198,
		-0.958409, 0.175726, 0.224886,
		27.563988, 27.619055, 37.394108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.711462, 26.946577, 36.961369>,  <28.234875, 27.496048, 37.236687>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.711462, 26.946577, 36.961369> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.526495, 27.298206, 37.007671>,  <27.415516, 27.509184, 37.035454>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.526495, 27.298206, 37.007671>,  <27.711462, 26.946577, 36.961369>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.526495, 27.298206, 37.007671> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181619, 0.033873, -0.982785,
		-0.867863, -0.475479, 0.143993,
		-0.462416, 0.879075, 0.115753,
		27.387770, 27.561930, 37.042397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.183092, 26.998358, 36.431126>,  <27.711462, 26.946577, 36.961369>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.183092, 26.998358, 36.431126> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.195015, 27.382687, 36.541351>,  <27.202169, 27.613283, 36.607487>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.195015, 27.382687, 36.541351>,  <27.183092, 26.998358, 36.431126>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.195015, 27.382687, 36.541351> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033102, 0.276484, -0.960448,
		-0.999008, 0.019507, 0.040046,
		0.029808, 0.960821, 0.275564,
		27.203957, 27.670933, 36.624020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.725306, 27.154644, 36.050007>,  <27.183092, 26.998358, 36.431126>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.725306, 27.154644, 36.050007> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.904604, 27.500938, 36.139072>,  <27.012182, 27.708715, 36.192513>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.904604, 27.500938, 36.139072>,  <26.725306, 27.154644, 36.050007>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.904604, 27.500938, 36.139072> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013095, 0.255420, -0.966741,
		-0.893815, 0.430420, 0.125827,
		0.448244, 0.865736, 0.222663,
		27.039078, 27.760658, 36.205872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.679050, 27.656500, 35.622253>,  <26.725306, 27.154644, 36.050007>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.679050, 27.656500, 35.622253> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.976400, 27.882786, 35.765007>,  <27.154810, 28.018557, 35.850658>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.976400, 27.882786, 35.765007>,  <26.679050, 27.656500, 35.622253>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.976400, 27.882786, 35.765007> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090792, 0.443271, -0.891778,
		-0.662686, 0.695326, 0.278154,
		0.743374, 0.565714, 0.356879,
		27.199413, 28.052500, 35.872070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.520384, 28.418829, 35.476925>,  <26.679050, 27.656500, 35.622253>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.520384, 28.418829, 35.476925> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.913048, 28.354050, 35.517162>,  <27.148645, 28.315182, 35.541306>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.913048, 28.354050, 35.517162>,  <26.520384, 28.418829, 35.476925>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.913048, 28.354050, 35.517162> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160343, 0.415929, -0.895150,
		0.103131, 0.894861, 0.434268,
		0.981659, -0.161949, 0.100589,
		27.207546, 28.305466, 35.547340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.880276, 29.002523, 35.317959>,  <26.520384, 28.418829, 35.476925>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.880276, 29.002523, 35.317959> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.175049, 28.732239, 35.310558>,  <27.351913, 28.570068, 35.306118>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.175049, 28.732239, 35.310558>,  <26.880276, 29.002523, 35.317959>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.175049, 28.732239, 35.310558> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254540, 0.302755, -0.918449,
		0.626211, 0.672125, 0.395106,
		0.736933, -0.675713, -0.018505,
		27.396128, 28.529526, 35.305008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.495274, 29.339239, 35.059692>,  <26.880276, 29.002523, 35.317959>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.495274, 29.339239, 35.059692> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.560610, 28.953655, 34.975689>,  <27.599812, 28.722305, 34.925285>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.560610, 28.953655, 34.975689>,  <27.495274, 29.339239, 35.059692>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.560610, 28.953655, 34.975689> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201468, 0.240975, -0.949390,
		0.965780, 0.112762, 0.233567,
		0.163339, -0.963959, -0.210011,
		27.609612, 28.664467, 34.912685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.977518, 29.459730, 34.611721>,  <27.495274, 29.339239, 35.059692>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.977518, 29.459730, 34.611721> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.884476, 29.074436, 34.557949>,  <27.828651, 28.843260, 34.525688>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.884476, 29.074436, 34.557949>,  <27.977518, 29.459730, 34.611721>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.884476, 29.074436, 34.557949> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306053, 0.058700, -0.950203,
		0.923161, -0.262163, 0.281148,
		-0.232605, -0.963237, -0.134426,
		27.814693, 28.785465, 34.517620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.504469, 29.252136, 34.196796>,  <27.977518, 29.459730, 34.611721>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.504469, 29.252136, 34.196796> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.210943, 28.984196, 34.151520>,  <28.034828, 28.823431, 34.124352>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.210943, 28.984196, 34.151520>,  <28.504469, 29.252136, 34.196796>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.210943, 28.984196, 34.151520> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018936, 0.146391, -0.989046,
		0.679085, -0.727920, -0.094740,
		-0.733816, -0.669852, -0.113196,
		27.990799, 28.783239, 34.117561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.721684, 28.656715, 33.876732>,  <28.504469, 29.252136, 34.196796>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.721684, 28.656715, 33.876732> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.327251, 28.689449, 33.818840>,  <28.090591, 28.709089, 33.784103>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.327251, 28.689449, 33.818840>,  <28.721684, 28.656715, 33.876732>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.327251, 28.689449, 33.818840> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153235, 0.109523, -0.982102,
		-0.064519, -0.990610, -0.120538,
		-0.986081, 0.081835, -0.144730,
		28.031427, 28.713999, 33.775421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.730536, 28.502775, 33.227623>,  <28.721684, 28.656715, 33.876732>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.730536, 28.502775, 33.227623> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.364946, 28.656761, 33.278927>,  <28.145592, 28.749153, 33.309711>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.364946, 28.656761, 33.278927>,  <28.730536, 28.502775, 33.227623>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.364946, 28.656761, 33.278927> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028282, 0.254890, -0.966556,
		-0.404784, -0.887036, -0.222076,
		-0.913975, 0.384965, 0.128263,
		28.090754, 28.772251, 33.317406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.824228, 27.813978, 32.844692>,  <28.730536, 28.502775, 33.227623>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.824228, 27.813978, 32.844692> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.209835, 27.717712, 32.799522>,  <29.441198, 27.659952, 32.772419>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.209835, 27.717712, 32.799522>,  <28.824228, 27.813978, 32.844692>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.209835, 27.717712, 32.799522> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079228, -0.145393, 0.986197,
		-0.253763, -0.959656, -0.121094,
		0.964016, -0.240667, -0.112927,
		29.499041, 27.645514, 32.765644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.937166, 27.226473, 33.345196>,  <28.824228, 27.813978, 32.844692>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.937166, 27.226473, 33.345196> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.307079, 27.360279, 33.272671>,  <29.529028, 27.440563, 33.229156>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.307079, 27.360279, 33.272671>,  <28.937166, 27.226473, 33.345196>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.307079, 27.360279, 33.272671> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210593, -0.053124, 0.976129,
		0.316901, -0.940891, -0.119575,
		0.924783, 0.334518, -0.181310,
		29.584515, 27.460634, 33.218277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.373680, 26.691345, 33.639282>,  <28.937166, 27.226473, 33.345196>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.373680, 26.691345, 33.639282> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.601971, 27.018475, 33.609791>,  <29.738945, 27.214752, 33.592098>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.601971, 27.018475, 33.609791>,  <29.373680, 26.691345, 33.639282>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.601971, 27.018475, 33.609791> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372979, -0.178201, 0.910566,
		0.731543, -0.547185, -0.406735,
		0.570729, 0.817822, -0.073727,
		29.773190, 27.263821, 33.587673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.010973, 26.528648, 33.974640>,  <29.373680, 26.691345, 33.639282>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.010973, 26.528648, 33.974640> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.011189, 26.928272, 33.957279>,  <30.011318, 27.168047, 33.946861>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.011189, 26.928272, 33.957279>,  <30.010973, 26.528648, 33.974640>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.011189, 26.928272, 33.957279> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294052, 0.041327, 0.954896,
		0.955789, -0.013276, -0.293752,
		0.000537, 0.999057, -0.043403,
		30.011349, 27.227989, 33.944260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.663916, 26.808836, 34.269253>,  <30.010973, 26.528648, 33.974640>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.663916, 26.808836, 34.269253> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.374063, 27.083633, 34.290993>,  <30.200151, 27.248512, 34.304039>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.374063, 27.083633, 34.290993>,  <30.663916, 26.808836, 34.269253>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.374063, 27.083633, 34.290993> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153141, 0.083627, 0.984660,
		0.671908, 0.721837, -0.165805,
		-0.724630, 0.686992, 0.054353,
		30.156675, 27.289730, 34.307301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.967266, 27.226273, 34.713734>,  <30.663916, 26.808836, 34.269253>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.967266, 27.226273, 34.713734> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.570683, 27.278370, 34.716351>,  <30.332731, 27.309628, 34.717918>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.570683, 27.278370, 34.716351>,  <30.967266, 27.226273, 34.713734>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.570683, 27.278370, 34.716351> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026192, 0.149754, 0.988376,
		0.127751, 0.980107, -0.151886,
		-0.991461, 0.130244, 0.006540,
		30.273245, 27.317444, 34.718311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.895924, 27.691801, 35.100937>,  <30.967266, 27.226273, 34.713734>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.895924, 27.691801, 35.100937> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.516422, 27.568523, 35.072975>,  <30.288721, 27.494556, 35.056198>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.516422, 27.568523, 35.072975>,  <30.895924, 27.691801, 35.100937>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.516422, 27.568523, 35.072975> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094287, 0.064938, 0.993425,
		-0.301629, 0.949105, -0.090669,
		-0.948752, -0.308194, -0.069901,
		30.231796, 27.476065, 35.052006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.256350, 28.387129, 35.228622>,  <30.895924, 27.691801, 35.100937>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.256350, 28.387129, 35.228622> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.585611, 28.183144, 35.328503>,  <31.783169, 28.060753, 35.388432>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.585611, 28.183144, 35.328503>,  <31.256350, 28.387129, 35.228622>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.585611, 28.183144, 35.328503> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307489, 0.030647, -0.951058,
		0.477354, 0.859649, 0.182035,
		0.823155, -0.509965, 0.249703,
		31.832558, 28.030153, 35.403412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.826380, 28.723406, 34.710007>,  <31.256350, 28.387129, 35.228622>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.826380, 28.723406, 34.710007> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.989828, 28.393772, 34.866936>,  <32.087898, 28.195992, 34.961094>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.989828, 28.393772, 34.866936>,  <31.826380, 28.723406, 34.710007>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.989828, 28.393772, 34.866936> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298474, -0.285557, -0.910698,
		0.862521, 0.489227, 0.129284,
		0.408620, -0.824084, 0.392320,
		32.112415, 28.146547, 34.984631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.431213, 28.650553, 34.444595>,  <31.826380, 28.723406, 34.710007>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.431213, 28.650553, 34.444595> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.369953, 28.275650, 34.569874>,  <32.333199, 28.050709, 34.645042>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.369953, 28.275650, 34.569874>,  <32.431213, 28.650553, 34.444595>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.369953, 28.275650, 34.569874> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430311, -0.348562, -0.832668,
		0.889594, 0.007253, 0.456694,
		-0.153147, -0.937258, 0.313200,
		32.324009, 27.994473, 34.663834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.982819, 28.317940, 34.214684>,  <32.431213, 28.650553, 34.444595>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.982819, 28.317940, 34.214684> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.706287, 28.035625, 34.276562>,  <32.540367, 27.866238, 34.313690>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.706287, 28.035625, 34.276562>,  <32.982819, 28.317940, 34.214684>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.706287, 28.035625, 34.276562> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158821, -0.357299, -0.920388,
		0.704869, -0.611721, 0.359104,
		-0.691329, -0.705787, 0.154695,
		32.498890, 27.823889, 34.322971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.362709, 27.654612, 34.222687>,  <32.982819, 28.317940, 34.214684>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.362709, 27.654612, 34.222687> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.974598, 27.607334, 34.138214>,  <32.741734, 27.578968, 34.087528>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.974598, 27.607334, 34.138214>,  <33.362709, 27.654612, 34.222687>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.974598, 27.607334, 34.138214> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238168, -0.311502, -0.919914,
		0.042945, -0.942866, 0.330392,
		-0.970274, -0.118195, -0.211183,
		32.683517, 27.571877, 34.074860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.335449, 27.083214, 33.723522>,  <33.362709, 27.654612, 34.222687>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.335449, 27.083214, 33.723522> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.965054, 27.223568, 33.667786>,  <32.742817, 27.307781, 33.634346>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.965054, 27.223568, 33.667786>,  <33.335449, 27.083214, 33.723522>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.965054, 27.223568, 33.667786> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003717, -0.377522, -0.925993,
		-0.377522, -0.856946, 0.350887,
		0.925993, -0.350887, 0.139338,
		32.687256, 27.328835, 33.625984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.870792, 26.595886, 33.351322>,  <33.335449, 27.083214, 33.723522>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.870792, 26.595886, 33.351322> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.714020, 26.959591, 33.295273>,  <32.619957, 27.177813, 33.261642>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.714020, 26.959591, 33.295273>,  <32.870792, 26.595886, 33.351322>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.714020, 26.959591, 33.295273> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032732, -0.165996, -0.985583,
		-0.919412, -0.381695, 0.094821,
		-0.391932, 0.909261, -0.140125,
		32.596439, 27.232368, 33.253235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<32.249371, 30.866432, 38.119473> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.861769, 30.830929, 38.027260>,  <31.629208, 30.809628, 37.971931>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.861769, 30.830929, 38.027260>,  <32.249371, 30.866432, 38.119473>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.861769, 30.830929, 38.027260> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160697, 0.482296, -0.861143,
		0.187619, -0.871500, -0.453086,
		-0.969007, -0.088757, -0.230535,
		31.571066, 30.804302, 37.958099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.355759, 30.755964, 37.470585>,  <32.249371, 30.866432, 38.119473>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.355759, 30.755964, 37.470585> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.966745, 30.846886, 37.490662>,  <31.733337, 30.901438, 37.502708>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.966745, 30.846886, 37.490662>,  <32.355759, 30.755964, 37.470585>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.966745, 30.846886, 37.490662> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084883, 0.547069, -0.832773,
		-0.216750, -0.805636, -0.551335,
		-0.972530, 0.227303, 0.050193,
		31.674986, 30.915077, 37.505718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.116463, 30.510435, 36.865219>,  <32.355759, 30.755964, 37.470585>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.116463, 30.510435, 36.865219> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.854540, 30.789734, 36.980934>,  <31.697388, 30.957314, 37.050362>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.854540, 30.789734, 36.980934>,  <32.116463, 30.510435, 36.865219>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.854540, 30.789734, 36.980934> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129722, 0.480903, -0.867124,
		-0.744584, -0.530269, -0.405475,
		-0.654803, 0.698246, 0.289285,
		31.658098, 30.999208, 37.067719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.592140, 30.613338, 36.303406>,  <32.116463, 30.510435, 36.865219>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.592140, 30.613338, 36.303406> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.562052, 30.937870, 36.535297>,  <31.543999, 31.132589, 36.674431>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.562052, 30.937870, 36.535297>,  <31.592140, 30.613338, 36.303406>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.562052, 30.937870, 36.535297> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070922, 0.575552, -0.814684,
		-0.994641, -0.102399, 0.014246,
		-0.075223, 0.811329, 0.579730,
		31.539484, 31.181269, 36.709217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.946064, 30.946882, 36.111240>,  <31.592140, 30.613338, 36.303406>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.946064, 30.946882, 36.111240> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.188520, 31.217491, 36.278530>,  <31.333994, 31.379856, 36.378902>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.188520, 31.217491, 36.278530>,  <30.946064, 30.946882, 36.111240>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.188520, 31.217491, 36.278530> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157727, 0.413141, -0.896904,
		-0.779561, 0.609615, 0.143716,
		0.606141, 0.676523, 0.418221,
		31.370363, 31.420448, 36.403996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.695402, 31.512136, 35.867188>,  <30.946064, 30.946882, 36.111240>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.695402, 31.512136, 35.867188> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.067019, 31.616024, 35.972588>,  <31.289988, 31.678356, 36.035828>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.067019, 31.616024, 35.972588>,  <30.695402, 31.512136, 35.867188>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.067019, 31.616024, 35.972588> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157784, 0.366050, -0.917121,
		-0.334645, 0.893619, 0.299096,
		0.929041, 0.259717, 0.263496,
		31.345732, 31.693939, 36.051636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.857931, 32.109348, 35.632912>,  <30.695402, 31.512136, 35.867188>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.857931, 32.109348, 35.632912> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.241932, 32.044842, 35.724468>,  <31.472332, 32.006138, 35.779404>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.241932, 32.044842, 35.724468>,  <30.857931, 32.109348, 35.632912>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.241932, 32.044842, 35.724468> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279429, 0.499710, -0.819884,
		0.017841, 0.851048, 0.524785,
		0.960001, -0.161268, 0.228892,
		31.529932, 31.996462, 35.793137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.153503, 32.663162, 35.313950>,  <30.857931, 32.109348, 35.632912>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.153503, 32.663162, 35.313950> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.468693, 32.421753, 35.362701>,  <31.657806, 32.276909, 35.391953>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.468693, 32.421753, 35.362701>,  <31.153503, 32.663162, 35.313950>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.468693, 32.421753, 35.362701> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433514, 0.403260, -0.805883,
		0.437220, 0.687852, 0.579395,
		0.787975, -0.603523, 0.121880,
		31.705086, 32.240696, 35.399265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.697500, 33.094383, 35.321064>,  <31.153503, 32.663162, 35.313950>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.697500, 33.094383, 35.321064> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.824034, 32.727764, 35.223190>,  <31.899954, 32.507793, 35.164467>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.824034, 32.727764, 35.223190>,  <31.697500, 33.094383, 35.321064>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.824034, 32.727764, 35.223190> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489879, 0.378703, -0.785241,
		0.812374, 0.128535, 0.568795,
		0.316335, -0.916550, -0.244682,
		31.918934, 32.452801, 35.149784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.472816, 33.128197, 35.150623>,  <31.697500, 33.094383, 35.321064>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.472816, 33.128197, 35.150623> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.321873, 32.795544, 34.987659>,  <32.231308, 32.595951, 34.889881>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.321873, 32.795544, 34.987659>,  <32.472816, 33.128197, 35.150623>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.321873, 32.795544, 34.987659> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486611, 0.196236, -0.851294,
		0.787915, -0.519494, 0.330631,
		-0.377360, -0.831636, -0.407409,
		32.208664, 32.546055, 34.865437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.927765, 32.914608, 34.629940>,  <32.472816, 33.128197, 35.150623>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.927765, 32.914608, 34.629940> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.637703, 32.665615, 34.512180>,  <32.463665, 32.516220, 34.441525>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.637703, 32.665615, 34.512180>,  <32.927765, 32.914608, 34.629940>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.637703, 32.665615, 34.512180> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326911, 0.065074, -0.942812,
		0.606038, -0.779927, 0.156307,
		-0.725153, -0.622479, -0.294404,
		32.420158, 32.478870, 34.423859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.259117, 32.327152, 34.123634>,  <32.927765, 32.914608, 34.629940>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.259117, 32.327152, 34.123634> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.872231, 32.337914, 34.022629>,  <32.640099, 32.344372, 33.962025>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.872231, 32.337914, 34.022629>,  <33.259117, 32.327152, 34.123634>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.872231, 32.337914, 34.022629> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253640, 0.054173, -0.965780,
		-0.012307, -0.998169, -0.059222,
		-0.967220, 0.026907, -0.252509,
		32.582066, 32.345985, 33.946877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.630089, 31.621639, 34.071266>,  <33.259117, 32.327152, 34.123634>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.630089, 31.621639, 34.071266> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.967297, 31.407307, 34.052452>,  <34.169621, 31.278708, 34.041164>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.967297, 31.407307, 34.052452>,  <33.630089, 31.621639, 34.071266>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.967297, 31.407307, 34.052452> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131397, -0.289932, 0.947984,
		-0.521595, -0.792985, -0.314823,
		0.843014, -0.535831, -0.047032,
		34.220200, 31.246557, 34.038342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.388569, 30.943855, 34.263214>,  <33.630089, 31.621639, 34.071266>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.388569, 30.943855, 34.263214> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.782642, 30.963634, 34.328892>,  <34.019089, 30.975502, 34.368298>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.782642, 30.963634, 34.328892>,  <33.388569, 30.943855, 34.263214>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.782642, 30.963634, 34.328892> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136223, -0.355932, 0.924530,
		0.104162, -0.933202, -0.343924,
		0.985187, 0.049450, 0.164198,
		34.078197, 30.978470, 34.378151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.564049, 30.256840, 34.397118>,  <33.388569, 30.943855, 34.263214>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.564049, 30.256840, 34.397118> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.847332, 30.483192, 34.565983>,  <34.017303, 30.619003, 34.667301>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.847332, 30.483192, 34.565983>,  <33.564049, 30.256840, 34.397118>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.847332, 30.483192, 34.565983> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088471, -0.522111, 0.848277,
		0.700438, -0.638106, -0.319699,
		0.708209, 0.565881, 0.422160,
		34.059795, 30.652956, 34.692631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.045986, 29.775379, 34.667633>,  <33.564049, 30.256840, 34.397118>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.045986, 29.775379, 34.667633> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.143803, 30.098541, 34.882103>,  <34.202492, 30.292439, 35.010784>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.143803, 30.098541, 34.882103>,  <34.045986, 29.775379, 34.667633>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.143803, 30.098541, 34.882103> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019695, -0.548716, 0.835777,
		0.969438, -0.214944, -0.118273,
		0.244543, 0.807905, 0.536180,
		34.217167, 30.340912, 35.042957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.393665, 29.512079, 35.233727>,  <34.045986, 29.775379, 34.667633>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.393665, 29.512079, 35.233727> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.352020, 29.883961, 35.375042>,  <34.327034, 30.107090, 35.459831>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.352020, 29.883961, 35.375042>,  <34.393665, 29.512079, 35.233727>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.352020, 29.883961, 35.375042> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080557, -0.346166, 0.934709,
		0.991298, 0.125777, -0.038853,
		-0.104115, 0.929704, 0.353285,
		34.320786, 30.162872, 35.481026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.962181, 29.578020, 35.733150>,  <34.393665, 29.512079, 35.233727>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.962181, 29.578020, 35.733150> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.682175, 29.845383, 35.833721>,  <34.514172, 30.005800, 35.894062>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.682175, 29.845383, 35.833721>,  <34.962181, 29.578020, 35.733150>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.682175, 29.845383, 35.833721> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039410, -0.315376, 0.948148,
		0.713042, 0.673624, 0.194425,
		-0.700013, 0.668407, 0.251424,
		34.472172, 30.045904, 35.909149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.229870, 30.110735, 36.257168>,  <34.962181, 29.578020, 35.733150>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.229870, 30.110735, 36.257168> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.835304, 30.108574, 36.322838>,  <34.598564, 30.107277, 36.362240>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.835304, 30.108574, 36.322838>,  <35.229870, 30.110735, 36.257168>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.835304, 30.108574, 36.322838> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163967, -0.092064, 0.982161,
		0.009808, 0.995739, 0.091699,
		-0.986417, -0.005403, 0.164171,
		34.539379, 30.106953, 36.372089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.108311, 30.403149, 36.886730>,  <35.229870, 30.110735, 36.257168>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.108311, 30.403149, 36.886730> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.740372, 30.248688, 36.859131>,  <34.519608, 30.156012, 36.842571>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.740372, 30.248688, 36.859131>,  <35.108311, 30.403149, 36.886730>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.740372, 30.248688, 36.859131> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008728, -0.195991, 0.980567,
		-0.392170, 0.901373, 0.183653,
		-0.919851, -0.386152, -0.068994,
		34.464417, 30.132843, 36.838432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.717682, 30.636412, 37.424149>,  <35.108311, 30.403149, 36.886730>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.717682, 30.636412, 37.424149> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.515198, 30.311867, 37.307224>,  <34.393707, 30.117140, 37.237068>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.515198, 30.311867, 37.307224>,  <34.717682, 30.636412, 37.424149>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.515198, 30.311867, 37.307224> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146218, -0.253297, 0.956275,
		-0.849927, 0.526814, 0.009585,
		-0.506206, -0.811362, -0.292313,
		34.363335, 30.068459, 37.219532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.181328, 30.584665, 37.844662>,  <34.717682, 30.636412, 37.424149>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.181328, 30.584665, 37.844662> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.174892, 30.206028, 37.715847>,  <34.171032, 29.978846, 37.638557>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.174892, 30.206028, 37.715847>,  <34.181328, 30.584665, 37.844662>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.174892, 30.206028, 37.715847> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194882, -0.312928, 0.929568,
		-0.980695, 0.077713, -0.179440,
		-0.016087, -0.946592, -0.322032,
		34.170067, 29.922050, 37.619236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.567204, 30.329187, 38.085583>,  <34.181328, 30.584665, 37.844662>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.567204, 30.329187, 38.085583> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.804325, 30.018841, 37.999222>,  <33.946598, 29.832632, 37.947407>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.804325, 30.018841, 37.999222>,  <33.567204, 30.329187, 38.085583>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.804325, 30.018841, 37.999222> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145510, -0.366859, 0.918826,
		-0.792093, -0.513266, -0.330372,
		0.592802, -0.775868, -0.215901,
		33.982166, 29.786079, 37.934452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.278408, 29.804056, 38.359650>,  <33.567204, 30.329187, 38.085583>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.278408, 29.804056, 38.359650> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.650101, 29.657520, 38.340340>,  <33.873116, 29.569599, 38.328754>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.650101, 29.657520, 38.340340>,  <33.278408, 29.804056, 38.359650>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.650101, 29.657520, 38.340340> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108401, -0.395160, 0.912194,
		-0.353245, -0.842405, -0.406905,
		0.929229, -0.366337, -0.048270,
		33.928867, 29.547619, 38.325859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.205715, 29.148178, 38.685921>,  <33.278408, 29.804056, 38.359650>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.205715, 29.148178, 38.685921> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.602634, 29.197147, 38.693375>,  <33.840786, 29.226530, 38.697849>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.602634, 29.197147, 38.693375>,  <33.205715, 29.148178, 38.685921>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.602634, 29.197147, 38.693375> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049512, -0.530186, 0.846435,
		0.113507, -0.838996, -0.532166,
		0.992303, 0.122425, 0.018639,
		33.900326, 29.233875, 38.698967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.482037, 28.421640, 38.788498>,  <33.205715, 29.148178, 38.685921>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.482037, 28.421640, 38.788498> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.729160, 28.717327, 38.895733>,  <33.877434, 28.894739, 38.960075>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.729160, 28.717327, 38.895733>,  <33.482037, 28.421640, 38.788498>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.729160, 28.717327, 38.895733> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128323, -0.431146, 0.893111,
		0.775785, -0.517372, -0.361225,
		0.617812, 0.739215, 0.268086,
		33.914505, 28.939091, 38.976158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.170692, 28.295469, 38.180431>,  <33.482037, 28.421640, 38.788498>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.170692, 28.295469, 38.180431> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.822754, 28.101494, 38.144222>,  <32.613991, 27.985107, 38.122498>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.822754, 28.101494, 38.144222>,  <33.170692, 28.295469, 38.180431>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.822754, 28.101494, 38.144222> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098988, 0.008185, -0.995055,
		0.483284, -0.874509, 0.040883,
		-0.869850, -0.484941, -0.090521,
		32.561798, 27.956011, 38.117065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.202583, 27.907097, 37.594700>,  <33.170692, 28.295469, 38.180431>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.202583, 27.907097, 37.594700> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.810890, 27.867649, 37.665546>,  <32.575874, 27.843981, 37.708054>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.810890, 27.867649, 37.665546>,  <33.202583, 27.907097, 37.594700>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.810890, 27.867649, 37.665546> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164488, -0.124109, -0.978540,
		0.118486, -0.987356, 0.105310,
		-0.979237, -0.098621, 0.177113,
		32.517120, 27.838062, 37.718681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.987041, 27.295521, 37.214527>,  <33.202583, 27.907097, 37.594700>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.987041, 27.295521, 37.214527> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.659569, 27.516594, 37.276894>,  <32.463085, 27.649239, 37.314312>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.659569, 27.516594, 37.276894>,  <32.987041, 27.295521, 37.214527>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.659569, 27.516594, 37.276894> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241421, -0.084906, -0.966699,
		-0.521041, -0.829054, 0.202940,
		-0.818677, 0.552684, 0.155912,
		32.413967, 27.682400, 37.323666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.385368, 26.859085, 36.998852>,  <32.987041, 27.295521, 37.214527>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.385368, 26.859085, 36.998852> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.306862, 27.251232, 36.991261>,  <32.259758, 27.486521, 36.986706>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.306862, 27.251232, 36.991261>,  <32.385368, 26.859085, 36.998852>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.306862, 27.251232, 36.991261> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229109, -0.064668, -0.971250,
		-0.953409, -0.186273, 0.237303,
		-0.196264, 0.980368, -0.018978,
		32.247982, 27.545341, 36.985565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.802801, 26.846802, 36.525444>,  <32.385368, 26.859085, 36.998852>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.802801, 26.846802, 36.525444> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.946600, 27.218414, 36.560459>,  <32.032879, 27.441381, 36.581470>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.946600, 27.218414, 36.560459>,  <31.802801, 26.846802, 36.525444>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.946600, 27.218414, 36.560459> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109840, 0.135289, -0.984699,
		-0.926658, 0.344383, 0.150681,
		0.359499, 0.929030, 0.087540,
		32.054451, 27.497124, 36.586720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.323980, 27.231647, 36.135090>,  <31.802801, 26.846802, 36.525444>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.323980, 27.231647, 36.135090> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.607744, 27.507263, 36.194366>,  <31.778004, 27.672632, 36.229931>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.607744, 27.507263, 36.194366>,  <31.323980, 27.231647, 36.135090>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.607744, 27.507263, 36.194366> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114257, 0.319916, -0.940531,
		-0.695471, 0.650292, 0.305680,
		0.709412, 0.689039, 0.148192,
		31.820568, 27.713974, 36.238823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.128790, 27.867956, 35.763542>,  <31.323980, 27.231647, 36.135090>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.128790, 27.867956, 35.763542> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.525961, 27.866680, 35.811008>,  <31.764263, 27.865915, 35.839489>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.525961, 27.866680, 35.811008>,  <31.128790, 27.867956, 35.763542>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.525961, 27.866680, 35.811008> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117255, 0.182170, -0.976251,
		-0.018504, 0.983262, 0.181255,
		0.992930, -0.003188, 0.118663,
		31.823839, 27.865725, 35.846607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.446463, 28.059189, 35.687733>,  <31.128790, 27.867956, 35.763542>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.446463, 28.059189, 35.687733> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.185600, 27.769417, 35.598381>,  <30.029083, 27.595554, 35.544769>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.185600, 27.769417, 35.598381>,  <30.446463, 28.059189, 35.687733>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.185600, 27.769417, 35.598381> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347903, 0.024205, 0.937218,
		-0.673540, 0.688926, -0.267816,
		-0.652156, -0.724428, -0.223376,
		29.989954, 27.552088, 35.531368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.729515, 28.244795, 35.907436>,  <30.446463, 28.059189, 35.687733>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.729515, 28.244795, 35.907436> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.765877, 27.846767, 35.891579>,  <29.787693, 27.607950, 35.882065>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.765877, 27.846767, 35.891579>,  <29.729515, 28.244795, 35.907436>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.765877, 27.846767, 35.891579> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388371, -0.072084, 0.918679,
		-0.917008, -0.068114, -0.393009,
		0.090904, -0.995070, -0.039648,
		29.793148, 27.548246, 35.879684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.130974, 27.994530, 36.268559>,  <29.729515, 28.244795, 35.907436>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.130974, 27.994530, 36.268559> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.365873, 27.671265, 36.250591>,  <29.506813, 27.477306, 36.239811>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.365873, 27.671265, 36.250591>,  <29.130974, 27.994530, 36.268559>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.365873, 27.671265, 36.250591> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180163, -0.184613, 0.966157,
		-0.789103, -0.559280, -0.254014,
		0.587247, -0.808161, -0.044917,
		29.542048, 27.428816, 36.237118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.747238, 27.387606, 36.552326>,  <29.130974, 27.994530, 36.268559>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.747238, 27.387606, 36.552326> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.134443, 27.291977, 36.582787>,  <29.366766, 27.234600, 36.601063>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.134443, 27.291977, 36.582787>,  <28.747238, 27.387606, 36.552326>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.134443, 27.291977, 36.582787> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162997, -0.368454, 0.915245,
		-0.190749, -0.898381, -0.395635,
		0.968012, -0.239069, 0.076151,
		29.424847, 27.220255, 36.605633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.689123, 26.705828, 36.907505>,  <28.747238, 27.387606, 36.552326>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.689123, 26.705828, 36.907505> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.050703, 26.868412, 36.960667>,  <29.267651, 26.965961, 36.992561>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.050703, 26.868412, 36.960667>,  <28.689123, 26.705828, 36.907505>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.050703, 26.868412, 36.960667> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021127, -0.267954, 0.963200,
		0.427112, -0.873494, -0.233630,
		0.903952, 0.406459, 0.132901,
		29.321888, 26.990349, 37.000538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.722103, 26.604181, 37.491825>,  <28.689123, 26.705828, 36.907505>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.722103, 26.604181, 37.491825> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.080095, 26.767792, 37.420597>,  <29.294891, 26.865957, 37.377861>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.080095, 26.767792, 37.420597>,  <28.722103, 26.604181, 37.491825>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.080095, 26.767792, 37.420597> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219735, -0.056798, 0.973905,
		0.388236, -0.910754, -0.140710,
		0.894980, 0.409024, -0.178073,
		29.348589, 26.890499, 37.367176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.255915, 26.173725, 37.929356>,  <28.722103, 26.604181, 37.491825>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.255915, 26.173725, 37.929356> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.364618, 26.558022, 37.906982>,  <29.429840, 26.788599, 37.893559>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.364618, 26.558022, 37.906982>,  <29.255915, 26.173725, 37.929356>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.364618, 26.558022, 37.906982> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142746, 0.017239, 0.989609,
		0.951720, -0.276917, -0.132457,
		0.271757, 0.960739, -0.055936,
		29.446146, 26.846243, 37.890202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.814592, 26.270374, 38.405140>,  <29.255915, 26.173725, 37.929356>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.814592, 26.270374, 38.405140> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.690752, 26.645847, 38.344448>,  <29.616447, 26.871132, 38.308033>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.690752, 26.645847, 38.344448>,  <29.814592, 26.270374, 38.405140>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.690752, 26.645847, 38.344448> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005524, 0.161341, 0.986883,
		0.950851, 0.304699, -0.055137,
		-0.309599, 0.938684, -0.151728,
		29.597872, 26.927452, 38.298931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.276949, 26.806738, 38.835632>,  <29.814592, 26.270374, 38.405140>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.276949, 26.806738, 38.835632> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.902721, 26.943253, 38.799339>,  <29.678185, 27.025162, 38.777565>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.902721, 26.943253, 38.799339>,  <30.276949, 26.806738, 38.835632>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.902721, 26.943253, 38.799339> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014477, 0.219645, 0.975472,
		0.352846, 0.913936, -0.200552,
		-0.935569, 0.341288, -0.090732,
		29.622051, 27.045639, 38.772121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<31.171553, 30.788622, 23.284557> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.923283, 31.043171, 23.467770>,  <30.774321, 31.195900, 23.577698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.923283, 31.043171, 23.467770>,  <31.171553, 30.788622, 23.284557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.923283, 31.043171, 23.467770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069027, -0.537558, 0.840397,
		0.781023, 0.553230, 0.289723,
		-0.620676, 0.636370, 0.458033,
		30.737080, 31.234081, 23.605179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.461639, 31.095955, 23.923281>,  <31.171553, 30.788622, 23.284557>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.461639, 31.095955, 23.923281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.062073, 31.106396, 23.938713>,  <30.822332, 31.112659, 23.947971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.062073, 31.106396, 23.938713>,  <31.461639, 31.095955, 23.923281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.062073, 31.106396, 23.938713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023595, -0.430556, 0.902256,
		0.040162, 0.902187, 0.429472,
		-0.998914, 0.026103, 0.038579,
		30.762398, 31.114227, 23.950287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.175428, 31.497925, 24.557541>,  <31.461639, 31.095955, 23.923281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.175428, 31.497925, 24.557541> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.915520, 31.218456, 24.437767>,  <30.759575, 31.050776, 24.365904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.915520, 31.218456, 24.437767>,  <31.175428, 31.497925, 24.557541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.915520, 31.218456, 24.437767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067660, -0.445519, 0.892712,
		-0.757113, 0.559798, 0.336757,
		-0.649770, -0.698669, -0.299433,
		30.720589, 31.008856, 24.347937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.696865, 31.396297, 25.113939>,  <31.175428, 31.497925, 24.557541>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.696865, 31.396297, 25.113939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.656105, 31.067108, 24.890392>,  <30.631649, 30.869595, 24.756264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.656105, 31.067108, 24.890392>,  <30.696865, 31.396297, 25.113939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.656105, 31.067108, 24.890392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002128, -0.561611, 0.827398,
		-0.994792, 0.085500, 0.055476,
		-0.101899, -0.822972, -0.558868,
		30.625536, 30.820217, 24.722733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.150305, 31.038189, 25.372541>,  <30.696865, 31.396297, 25.113939>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.150305, 31.038189, 25.372541> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.341408, 30.752995, 25.167252>,  <30.456070, 30.581879, 25.044079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.341408, 30.752995, 25.167252>,  <30.150305, 31.038189, 25.372541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.341408, 30.752995, 25.167252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124869, -0.633392, 0.763690,
		-0.869572, -0.300774, -0.391638,
		0.477758, -0.712986, -0.513223,
		30.484735, 30.539099, 25.013285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.801064, 30.425407, 25.523033>,  <30.150305, 31.038189, 25.372541>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.801064, 30.425407, 25.523033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.157516, 30.301765, 25.390167>,  <30.371389, 30.227581, 25.310448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.157516, 30.301765, 25.390167>,  <29.801064, 30.425407, 25.523033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.157516, 30.301765, 25.390167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025182, -0.697242, 0.716393,
		-0.453039, -0.646767, -0.613553,
		0.891135, -0.309104, -0.332165,
		30.424856, 30.209034, 25.290518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.714474, 29.679338, 25.475182>,  <29.801064, 30.425407, 25.523033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.714474, 29.679338, 25.475182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.103931, 29.770184, 25.466835>,  <30.337606, 29.824690, 25.461828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.103931, 29.770184, 25.466835>,  <29.714474, 29.679338, 25.475182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.103931, 29.770184, 25.466835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179590, -0.707078, 0.683951,
		0.140581, -0.669672, -0.729230,
		0.973645, 0.227113, -0.020865,
		30.396025, 29.838318, 25.460575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.128738, 29.071672, 25.445202>,  <29.714474, 29.679338, 25.475182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.128738, 29.071672, 25.445202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.399498, 29.329105, 25.588089>,  <30.561954, 29.483566, 25.673822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.399498, 29.329105, 25.588089>,  <30.128738, 29.071672, 25.445202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.399498, 29.329105, 25.588089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106867, -0.566089, 0.817387,
		0.728276, -0.515115, -0.451964,
		0.676900, 0.643584, 0.357220,
		30.602568, 29.522181, 25.695255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.721283, 28.713017, 25.584702>,  <30.128738, 29.071672, 25.445202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.721283, 28.713017, 25.584702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.784754, 29.032986, 25.816200>,  <30.822836, 29.224966, 25.955099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.784754, 29.032986, 25.816200>,  <30.721283, 28.713017, 25.584702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.784754, 29.032986, 25.816200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325944, -0.595751, 0.734058,
		0.931978, 0.072163, -0.355260,
		0.158675, 0.799921, 0.578748,
		30.832355, 29.272963, 25.989824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.041082, 28.484325, 26.083920>,  <30.721283, 28.713017, 25.584702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.041082, 28.484325, 26.083920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.972481, 28.843842, 26.245293>,  <30.931320, 29.059551, 26.342117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.972481, 28.843842, 26.245293>,  <31.041082, 28.484325, 26.083920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.972481, 28.843842, 26.245293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083680, -0.394731, 0.914978,
		0.981623, 0.190682, -0.007513,
		-0.171504, 0.898792, 0.403434,
		30.921030, 29.113480, 26.366323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.583879, 28.571390, 26.486153>,  <31.041082, 28.484325, 26.083920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.583879, 28.571390, 26.486153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.252804, 28.764912, 26.599899>,  <31.054159, 28.881025, 26.668148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.252804, 28.764912, 26.599899>,  <31.583879, 28.571390, 26.486153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.252804, 28.764912, 26.599899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081610, -0.397568, 0.913936,
		0.555221, 0.779662, 0.289579,
		-0.827689, 0.483804, 0.284367,
		31.004498, 28.910053, 26.685209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.756176, 28.845318, 27.128590>,  <31.583879, 28.571390, 26.486153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.756176, 28.845318, 27.128590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.356371, 28.837753, 27.118656>,  <31.116488, 28.833214, 27.112696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.356371, 28.837753, 27.118656>,  <31.756176, 28.845318, 27.128590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.356371, 28.837753, 27.118656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021320, -0.167428, 0.985654,
		-0.022799, 0.985703, 0.166943,
		-0.999513, -0.018913, -0.024833,
		31.056517, 28.832079, 27.111206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.220779, 29.419220, 27.430511>,  <31.756176, 28.845318, 27.128590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.220779, 29.419220, 27.430511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.535103, 29.173317, 27.457565>,  <32.723698, 29.025776, 27.473797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.535103, 29.173317, 27.457565>,  <32.220779, 29.419220, 27.430511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.535103, 29.173317, 27.457565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312847, 0.300782, -0.900920,
		0.533503, 0.729113, 0.428683,
		0.785812, -0.614756, 0.067633,
		32.770847, 28.988890, 27.477856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.812412, 29.844427, 27.308977>,  <32.220779, 29.419220, 27.430511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.812412, 29.844427, 27.308977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.931892, 29.469837, 27.235451>,  <33.003582, 29.245083, 27.191336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.931892, 29.469837, 27.235451>,  <32.812412, 29.844427, 27.308977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.931892, 29.469837, 27.235451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405080, 0.298810, -0.864073,
		0.864111, 0.183640, 0.468603,
		0.298702, -0.936477, -0.183816,
		33.021503, 29.188894, 27.180305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.463863, 29.905209, 27.000744>,  <32.812412, 29.844427, 27.308977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.463863, 29.905209, 27.000744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.368637, 29.539467, 26.869728>,  <33.311501, 29.320023, 26.791119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.368637, 29.539467, 26.869728>,  <33.463863, 29.905209, 27.000744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.368637, 29.539467, 26.869728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424181, 0.205489, -0.881955,
		0.873724, -0.348902, 0.338931,
		-0.238069, -0.914353, -0.327539,
		33.297215, 29.265162, 26.771467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.079460, 29.663776, 26.701433>,  <33.463863, 29.905209, 27.000744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.079460, 29.663776, 26.701433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.792870, 29.434200, 26.542812>,  <33.620914, 29.296453, 26.447639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.792870, 29.434200, 26.542812>,  <34.079460, 29.663776, 26.701433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.792870, 29.434200, 26.542812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399893, 0.127876, -0.907597,
		0.571618, -0.808850, 0.137895,
		-0.716476, -0.573942, -0.396550,
		33.577927, 29.262018, 26.423847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.444347, 29.305290, 26.263506>,  <34.079460, 29.663776, 26.701433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.444347, 29.305290, 26.263506> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.066601, 29.287102, 26.133209>,  <33.839954, 29.276190, 26.055031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.066601, 29.287102, 26.133209>,  <34.444347, 29.305290, 26.263506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.066601, 29.287102, 26.133209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301632, 0.275123, -0.912866,
		0.131127, -0.960333, -0.246102,
		-0.944364, -0.045469, -0.325743,
		33.783291, 29.273460, 26.035486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.364487, 28.878778, 25.635036>,  <34.444347, 29.305290, 26.263506>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.364487, 28.878778, 25.635036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.014572, 29.070076, 25.603973>,  <33.804623, 29.184855, 25.585335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.014572, 29.070076, 25.603973>,  <34.364487, 28.878778, 25.635036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.014572, 29.070076, 25.603973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238760, 0.286039, -0.927995,
		-0.421595, -0.830339, -0.364409,
		-0.874786, 0.478245, -0.077659,
		33.752136, 29.213549, 25.580675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.165516, 28.842102, 24.931372>,  <34.364487, 28.878778, 25.635036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.165516, 28.842102, 24.931372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.945213, 29.149204, 25.062347>,  <33.813034, 29.333466, 25.140934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.945213, 29.149204, 25.062347>,  <34.165516, 28.842102, 24.931372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.945213, 29.149204, 25.062347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089389, 0.444301, -0.891407,
		-0.829867, -0.461677, -0.313330,
		-0.550755, 0.767757, 0.327442,
		33.779987, 29.379532, 25.160580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.720192, 28.965670, 24.409565>,  <34.165516, 28.842102, 24.931372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.720192, 28.965670, 24.409565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.705593, 29.311447, 24.610126>,  <33.696835, 29.518913, 24.730463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.705593, 29.311447, 24.610126>,  <33.720192, 28.965670, 24.409565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.705593, 29.311447, 24.610126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019829, 0.502265, -0.864487,
		-0.999137, -0.021605, -0.035470,
		-0.036493, 0.864444, 0.501403,
		33.694645, 29.570780, 24.760548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.233231, 29.414562, 23.990145>,  <33.720192, 28.965670, 24.409565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.233231, 29.414562, 23.990145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.420170, 29.666027, 24.238781>,  <33.532333, 29.816906, 24.387962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.420170, 29.666027, 24.238781>,  <33.233231, 29.414562, 23.990145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.420170, 29.666027, 24.238781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071954, 0.673715, -0.735480,
		-0.881142, 0.388449, 0.269623,
		0.467346, 0.628662, 0.621589,
		33.560375, 29.854626, 24.425257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.941521, 30.072210, 23.801998>,  <33.233231, 29.414562, 23.990145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.941521, 30.072210, 23.801998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.295979, 30.153690, 23.968491>,  <33.508656, 30.202578, 24.068386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.295979, 30.153690, 23.968491>,  <32.941521, 30.072210, 23.801998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.295979, 30.153690, 23.968491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154883, 0.716359, -0.680324,
		-0.436753, 0.667335, 0.603251,
		0.886148, 0.203701, 0.416231,
		33.561825, 30.214800, 24.093359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.007607, 30.788544, 23.865452>,  <32.941521, 30.072210, 23.801998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.007607, 30.788544, 23.865452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.392208, 30.679909, 23.882233>,  <33.622967, 30.614729, 23.892302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.392208, 30.679909, 23.882233>,  <33.007607, 30.788544, 23.865452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.392208, 30.679909, 23.882233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249363, 0.798087, -0.548521,
		0.115488, 0.537865, 0.835083,
		0.961499, -0.271586, 0.041954,
		33.680656, 30.598433, 23.894819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.441906, 31.387159, 23.926662>,  <33.007607, 30.788544, 23.865452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.441906, 31.387159, 23.926662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.703251, 31.116791, 23.790283>,  <33.860058, 30.954569, 23.708456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.703251, 31.116791, 23.790283>,  <33.441906, 31.387159, 23.926662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.703251, 31.116791, 23.790283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313616, 0.651566, -0.690729,
		0.689032, 0.344368, 0.637688,
		0.653361, -0.675924, -0.340950,
		33.899258, 30.914013, 23.687998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.099895, 31.668818, 23.955877>,  <33.441906, 31.387159, 23.926662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.099895, 31.668818, 23.955877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.117088, 31.399441, 23.660683>,  <34.127403, 31.237814, 23.483566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.117088, 31.399441, 23.660683>,  <34.099895, 31.668818, 23.955877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.117088, 31.399441, 23.660683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422750, 0.681542, -0.597314,
		0.905226, -0.286312, 0.313992,
		0.042981, -0.673444, -0.737988,
		34.129982, 31.197407, 23.439287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.562355, 32.004128, 23.496557>,  <34.099895, 31.668818, 23.955877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.562355, 32.004128, 23.496557> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.422016, 31.707302, 23.268085>,  <34.337814, 31.529207, 23.131002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.422016, 31.707302, 23.268085>,  <34.562355, 32.004128, 23.496557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.422016, 31.707302, 23.268085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259348, 0.509094, -0.820708,
		0.899803, -0.436077, 0.013840,
		-0.350846, -0.742065, -0.571180,
		34.316761, 31.484682, 23.096731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.779556, 32.461182, 22.916523>,  <34.562355, 32.004128, 23.496557>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.779556, 32.461182, 22.916523> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.074234, 32.719643, 22.996300>,  <35.251041, 32.874718, 23.044167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.074234, 32.719643, 22.996300>,  <34.779556, 32.461182, 22.916523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.074234, 32.719643, 22.996300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102284, -0.185067, 0.977388,
		0.668451, -0.740431, -0.070246,
		0.736689, 0.646151, 0.199443,
		35.295242, 32.913486, 23.056133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.339249, 32.146481, 23.355995>,  <34.779556, 32.461182, 22.916523>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.339249, 32.146481, 23.355995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.293526, 32.539768, 23.412876>,  <35.266094, 32.775742, 23.447004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.293526, 32.539768, 23.412876>,  <35.339249, 32.146481, 23.355995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.293526, 32.539768, 23.412876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083354, -0.152126, 0.984840,
		0.989943, 0.100718, 0.099343,
		-0.114304, 0.983216, 0.142201,
		35.259235, 32.834732, 23.455536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.562992, 32.144691, 23.933796>,  <35.339249, 32.146481, 23.355995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.562992, 32.144691, 23.933796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.380165, 32.500446, 23.930233>,  <35.270470, 32.713902, 23.928095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.380165, 32.500446, 23.930233>,  <35.562992, 32.144691, 23.933796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.380165, 32.500446, 23.930233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039236, -0.010157, 0.999178,
		0.888568, 0.457038, 0.039539,
		-0.457064, 0.889390, -0.008907,
		35.243046, 32.767262, 23.927561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.055634, 32.610950, 24.309530>,  <35.562992, 32.144691, 23.933796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.055634, 32.610950, 24.309530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.682480, 32.754871, 24.316063>,  <35.458588, 32.841225, 24.319983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.682480, 32.754871, 24.316063>,  <36.055634, 32.610950, 24.309530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.682480, 32.754871, 24.316063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019027, 0.003945, 0.999811,
		0.359669, 0.933021, -0.010526,
		-0.932886, 0.359801, 0.016334,
		35.402615, 32.862812, 24.320963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.126743, 33.209820, 24.712221>,  <36.055634, 32.610950, 24.309530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.126743, 33.209820, 24.712221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.750683, 33.073658, 24.705963>,  <35.525047, 32.991962, 24.702208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.750683, 33.073658, 24.705963>,  <36.126743, 33.209820, 24.712221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.750683, 33.073658, 24.705963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010447, -0.074689, 0.997152,
		-0.340605, 0.937308, 0.073775,
		-0.940149, -0.340405, -0.015647,
		35.468639, 32.971535, 24.701269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.738754, 33.513893, 25.257837>,  <36.126743, 33.209820, 24.712221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.738754, 33.513893, 25.257837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.513729, 33.189861, 25.191753>,  <35.378716, 32.995441, 25.152103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.513729, 33.189861, 25.191753>,  <35.738754, 33.513893, 25.257837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.513729, 33.189861, 25.191753> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037120, -0.224375, 0.973796,
		-0.825921, 0.541688, 0.156295,
		-0.562562, -0.810080, -0.165209,
		35.344959, 32.946838, 25.142191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.446667, 33.563171, 25.963097>,  <35.738754, 33.513893, 25.257837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.446667, 33.563171, 25.963097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.383469, 33.217464, 25.772064>,  <35.345551, 33.010040, 25.657444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.383469, 33.217464, 25.772064>,  <35.446667, 33.563171, 25.963097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.383469, 33.217464, 25.772064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141088, -0.458935, 0.877196,
		-0.977308, 0.205977, -0.049426,
		-0.157999, -0.864264, -0.477581,
		35.336067, 32.958187, 25.628790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.898563, 33.217487, 26.321623>,  <35.446667, 33.563171, 25.963097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.898563, 33.217487, 26.321623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.079910, 32.918633, 26.127201>,  <35.188717, 32.739319, 26.010548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.079910, 32.918633, 26.127201>,  <34.898563, 33.217487, 26.321623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.079910, 32.918633, 26.127201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024135, -0.555406, 0.831229,
		-0.890997, -0.365121, -0.269835,
		0.453367, -0.747135, -0.486053,
		35.215919, 32.694492, 25.981384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.453972, 32.617245, 26.499514>,  <34.898563, 33.217487, 26.321623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.453972, 32.617245, 26.499514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.830257, 32.527210, 26.398006>,  <35.056030, 32.473190, 26.337103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.830257, 32.527210, 26.398006>,  <34.453972, 32.617245, 26.499514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.830257, 32.527210, 26.398006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119858, -0.479292, 0.869433,
		-0.317322, -0.848302, -0.423898,
		0.940713, -0.225082, -0.253766,
		35.112473, 32.459686, 26.321877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.556992, 31.956944, 26.832281>,  <34.453972, 32.617245, 26.499514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.556992, 31.956944, 26.832281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.912022, 32.119148, 26.744854>,  <35.125038, 32.216473, 26.692398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.912022, 32.119148, 26.744854>,  <34.556992, 31.956944, 26.832281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.912022, 32.119148, 26.744854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289310, -0.121462, 0.949498,
		0.358487, -0.905983, -0.225125,
		0.887573, 0.405514, -0.218567,
		35.178295, 32.240803, 26.679283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.931812, 31.410252, 26.994907>,  <34.556992, 31.956944, 26.832281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.931812, 31.410252, 26.994907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.159058, 31.739105, 26.980270>,  <35.295406, 31.936419, 26.971489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.159058, 31.739105, 26.980270>,  <34.931812, 31.410252, 26.994907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.159058, 31.739105, 26.980270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350273, -0.201333, 0.914754,
		0.744684, -0.532503, -0.402352,
		0.568115, 0.822135, -0.036592,
		35.329491, 31.985746, 26.969294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.667271, 31.228081, 27.093513>,  <34.931812, 31.410252, 26.994907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.667271, 31.228081, 27.093513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.608170, 31.613087, 27.184498>,  <35.572708, 31.844090, 27.239088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.608170, 31.613087, 27.184498>,  <35.667271, 31.228081, 27.093513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.608170, 31.613087, 27.184498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360765, -0.161690, 0.918534,
		0.920879, 0.217773, -0.323352,
		-0.147749, 0.962513, 0.227462,
		35.563847, 31.901840, 27.252737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.953484, 31.323435, 27.665190>,  <35.667271, 31.228081, 27.093513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.953484, 31.323435, 27.665190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.762070, 31.674255, 27.682068>,  <35.647221, 31.884748, 27.692194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.762070, 31.674255, 27.682068>,  <35.953484, 31.323435, 27.665190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.762070, 31.674255, 27.682068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012511, -0.041239, 0.999071,
		0.877977, 0.478622, 0.008762,
		-0.478539, 0.877052, 0.042195,
		35.618507, 31.937370, 27.694727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.366940, 31.832272, 28.173824>,  <35.953484, 31.323435, 27.665190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.366940, 31.832272, 28.173824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.986900, 31.956230, 28.159489>,  <35.758877, 32.030605, 28.150887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.986900, 31.956230, 28.159489>,  <36.366940, 31.832272, 28.173824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.986900, 31.956230, 28.159489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020692, 0.052033, 0.998431,
		0.311274, 0.949346, -0.043024,
		-0.950095, 0.309896, -0.035841,
		35.701874, 32.049198, 28.148737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.397858, 32.378128, 28.605232>,  <36.366940, 31.832272, 28.173824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.397858, 32.378128, 28.605232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.024639, 32.234913, 28.591206>,  <35.800709, 32.148983, 28.582790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.024639, 32.234913, 28.591206>,  <36.397858, 32.378128, 28.605232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.024639, 32.234913, 28.591206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046539, -0.216782, 0.975110,
		-0.356733, 0.908191, 0.218931,
		-0.933047, -0.358042, -0.035067,
		35.744724, 32.127499, 28.580685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.164986, 32.652046, 29.230482>,  <36.397858, 32.378128, 28.605232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.164986, 32.652046, 29.230482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.891407, 32.378742, 29.128212>,  <35.727261, 32.214760, 29.066851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.891407, 32.378742, 29.128212>,  <36.164986, 32.652046, 29.230482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.891407, 32.378742, 29.128212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253116, -0.106445, 0.961562,
		-0.684213, 0.722374, -0.100141,
		-0.683948, -0.683261, -0.255676,
		35.686222, 32.173763, 29.051510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.690113, 32.780533, 29.663195>,  <36.164986, 32.652046, 29.230482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.690113, 32.780533, 29.663195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.594391, 32.411686, 29.541584>,  <35.536957, 32.190376, 29.468618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.594391, 32.411686, 29.541584>,  <35.690113, 32.780533, 29.663195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.594391, 32.411686, 29.541584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269455, -0.237751, 0.933203,
		-0.932805, 0.305245, -0.191573,
		-0.239309, -0.922117, -0.304026,
		35.522598, 32.135052, 29.450377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.005562, 32.688374, 30.063517>,  <35.690113, 32.780533, 29.663195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.005562, 32.688374, 30.063517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.175987, 32.345863, 29.946716>,  <35.278240, 32.140358, 29.876637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.175987, 32.345863, 29.946716>,  <35.005562, 32.688374, 30.063517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.175987, 32.345863, 29.946716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227663, -0.413852, 0.881417,
		-0.875580, -0.309060, -0.371268,
		0.426061, -0.856276, -0.291999,
		35.303806, 32.088982, 29.859118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.541039, 32.180584, 30.242601>,  <35.005562, 32.688374, 30.063517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.541039, 32.180584, 30.242601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.896862, 31.998337, 30.229336>,  <35.110355, 31.888988, 30.221376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.896862, 31.998337, 30.229336>,  <34.541039, 32.180584, 30.242601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.896862, 31.998337, 30.229336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175234, -0.407373, 0.896292,
		-0.421881, -0.791490, -0.442222,
		0.889556, -0.455621, -0.033167,
		35.163731, 31.861652, 30.219387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.283115, 31.614580, 30.360989>,  <34.541039, 32.180584, 30.242601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.283115, 31.614580, 30.360989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.674858, 31.594597, 30.439339>,  <34.909904, 31.582607, 30.486349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.674858, 31.594597, 30.439339>,  <34.283115, 31.614580, 30.360989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.674858, 31.594597, 30.439339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201100, -0.339270, 0.918942,
		0.020547, -0.939361, -0.342312,
		0.979355, -0.049958, 0.195877,
		34.968666, 31.579609, 30.498102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.418758, 30.865528, 30.616541>,  <34.283115, 31.614580, 30.360989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.418758, 30.865528, 30.616541> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.704124, 31.117756, 30.738796>,  <34.875343, 31.269093, 30.812149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.704124, 31.117756, 30.738796>,  <34.418758, 30.865528, 30.616541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.704124, 31.117756, 30.738796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082629, -0.357420, 0.930281,
		0.695850, -0.688934, -0.202886,
		0.713418, 0.630572, 0.305637,
		34.918152, 31.306927, 30.830486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.948769, 30.471359, 31.004393>,  <34.418758, 30.865528, 30.616541>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.948769, 30.471359, 31.004393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.971756, 30.856030, 31.111629>,  <34.985546, 31.086832, 31.175972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.971756, 30.856030, 31.111629>,  <34.948769, 30.471359, 31.004393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.971756, 30.856030, 31.111629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109819, -0.260819, 0.959121,
		0.992289, -0.084557, 0.090622,
		0.057465, 0.961677, 0.268094,
		34.988995, 31.144533, 31.192059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.189373, 30.397921, 31.653942>,  <34.948769, 30.471359, 31.004393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.189373, 30.397921, 31.653942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.111988, 30.790359, 31.655720>,  <35.065559, 31.025824, 31.656786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.111988, 30.790359, 31.655720>,  <35.189373, 30.397921, 31.653942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.111988, 30.790359, 31.655720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089478, -0.022155, 0.995742,
		0.977020, 0.192237, 0.092073,
		-0.193458, 0.981099, 0.004445,
		35.053951, 31.084688, 31.657053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.645039, 30.705309, 32.110039>,  <35.189373, 30.397921, 31.653942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.645039, 30.705309, 32.110039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.316654, 30.933617, 32.103844>,  <35.119621, 31.070601, 32.100128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.316654, 30.933617, 32.103844>,  <35.645039, 30.705309, 32.110039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.316654, 30.933617, 32.103844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011745, 0.043998, 0.998962,
		0.570857, 0.819931, -0.042825,
		-0.820965, 0.570768, -0.015487,
		35.070366, 31.104847, 32.099197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.659145, 31.361355, 32.685459>,  <35.645039, 30.705309, 32.110039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.659145, 31.361355, 32.685459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.270523, 31.332203, 32.595337>,  <35.037350, 31.314713, 32.541264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.270523, 31.332203, 32.595337>,  <35.659145, 31.361355, 32.685459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.270523, 31.332203, 32.595337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223835, -0.027856, 0.974229,
		-0.077277, 0.996952, 0.010751,
		-0.971559, -0.072879, -0.225305,
		34.979057, 31.310339, 32.527744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.323879, 31.886789, 33.102684>,  <35.659145, 31.361355, 32.685459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.323879, 31.886789, 33.102684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.020813, 31.644066, 33.006580>,  <34.838974, 31.498432, 32.948917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.020813, 31.644066, 33.006580>,  <35.323879, 31.886789, 33.102684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.020813, 31.644066, 33.006580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231429, -0.094409, 0.968260,
		-0.610232, 0.789220, -0.068903,
		-0.757666, -0.606810, -0.240260,
		34.793514, 31.462023, 32.934502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.683857, 32.163383, 33.428097>,  <35.323879, 31.886789, 33.102684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.683857, 32.163383, 33.428097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.613605, 31.776196, 33.356323>,  <34.571457, 31.543884, 33.313259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.613605, 31.776196, 33.356323>,  <34.683857, 32.163383, 33.428097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.613605, 31.776196, 33.356323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281491, -0.125282, 0.951350,
		-0.943355, 0.217590, -0.250472,
		-0.175624, -0.967967, -0.179436,
		34.560917, 31.485806, 33.302494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.041973, 32.072201, 33.659039>,  <34.683857, 32.163383, 33.428097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.041973, 32.072201, 33.659039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.235313, 31.722042, 33.655907>,  <34.351318, 31.511948, 33.654030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.235313, 31.722042, 33.655907>,  <34.041973, 32.072201, 33.659039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.235313, 31.722042, 33.655907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342726, -0.197448, 0.918452,
		-0.805551, -0.441251, -0.395456,
		0.483350, -0.875392, -0.007826,
		34.380318, 31.459425, 33.653561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.376011, 32.170048, 33.410568>,  <34.041973, 32.072201, 33.659039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.376011, 32.170048, 33.410568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.007759, 32.316322, 33.465279>,  <32.786808, 32.404087, 33.498104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.007759, 32.316322, 33.465279>,  <33.376011, 32.170048, 33.410568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.007759, 32.316322, 33.465279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051291, 0.460557, -0.886147,
		-0.387045, -0.808801, -0.442760,
		-0.920633, 0.365688, 0.136772,
		32.731567, 32.426029, 33.506310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.031799, 32.091187, 32.805233>,  <33.376011, 32.170048, 33.410568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.031799, 32.091187, 32.805233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.807259, 32.371552, 32.981239>,  <32.672535, 32.539772, 33.086842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.807259, 32.371552, 32.981239>,  <33.031799, 32.091187, 32.805233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.807259, 32.371552, 32.981239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062062, 0.494536, -0.866939,
		-0.825250, -0.513962, -0.234107,
		-0.561348, 0.700912, 0.440013,
		32.638855, 32.581825, 33.113243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.524982, 32.285957, 32.362877>,  <33.031799, 32.091187, 32.805233>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.524982, 32.285957, 32.362877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.532524, 32.604309, 32.604939>,  <32.537048, 32.795322, 32.750175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.532524, 32.604309, 32.604939>,  <32.524982, 32.285957, 32.362877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.532524, 32.604309, 32.604939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099008, 0.603776, -0.790982,
		-0.994908, -0.045004, 0.090181,
		0.018852, 0.795883, 0.605157,
		32.538181, 32.843075, 32.786488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.896147, 32.682964, 32.176476>,  <32.524982, 32.285957, 32.362877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.896147, 32.682964, 32.176476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.148052, 32.945881, 32.342060>,  <32.299194, 33.103630, 32.441410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.148052, 32.945881, 32.342060>,  <31.896147, 32.682964, 32.176476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.148052, 32.945881, 32.342060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162780, 0.632752, -0.757052,
		-0.759541, 0.409377, 0.505477,
		0.629762, 0.657294, 0.413963,
		32.336979, 33.143070, 32.466248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.550150, 33.346760, 32.217918>,  <31.896147, 32.682964, 32.176476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.550150, 33.346760, 32.217918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.941553, 33.427776, 32.233395>,  <32.176395, 33.476387, 32.242680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.941553, 33.427776, 32.233395>,  <31.550150, 33.346760, 32.217918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.941553, 33.427776, 32.233395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096134, 0.614097, -0.783354,
		-0.182419, 0.762800, 0.620370,
		0.978510, 0.202537, 0.038692,
		32.235107, 33.488537, 32.245003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// box output
cylinder {
	<0.000000, 0.000000, 0.000000>,  <60.000000, 0.000000, 0.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 60.000000, 0.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 0.000000, 60.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<60.000000, 60.000000, 60.000000>,  <0.000000, 60.000000, 60.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<60.000000, 60.000000, 60.000000>,  <60.000000, 0.000000, 60.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<60.000000, 60.000000, 60.000000>,  <60.000000, 60.000000, 0.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 60.000000>,  <0.000000, 60.000000, 60.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 60.000000>,  <60.000000, 0.000000, 60.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<60.000000, 60.000000, 0.000000>,  <0.000000, 60.000000, 0.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<60.000000, 60.000000, 0.000000>,  <60.000000, 0.000000, 0.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<60.000000, 0.000000, 60.000000>,  <60.000000, 0.000000, 0.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 60.000000, 0.000000>,  <0.000000, 60.000000, 60.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
// end of box output
