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
	right 1.6 * <1, 0, 0>
	location <2.5, 2.5, 11.1562>
	look_at <2.5, 2.5, 2.5>
	direction <0, 0, -8.6562>
	angle 67.0682
}


# declare cpy_camera_pos = <2.5, 2.5, 11.1562>;
# if (DRAW_FOG = 1)
fog {
	fog_type 2
	up vnormalize(cpy_camera_pos)
	color rgbt<1,1,1,0.3>
	distance 1e-5
	fog_alt 3e-3
	fog_offset 4
}
# end


// LIGHTS

# declare lum = 6;
global_settings {
	ambient_light rgb lum * <0.05, 0.05, 0.05>
	max_trace_level 15
}# declare cpy_direct_light_amount = 0.25;
light_source
{	1000 * <-1, -1, 1>,
	rgb lum * cpy_direct_light_amount
	parallel
}

light_source
{	1000 * <1, 1, -1>,
	rgb lum * cpy_direct_light_amount
	parallel
}

// strand 0

// nucleotide -1

// particle -1
sphere {
	<3.141734, 2.351343, 3.183750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.020827, 2.265903, 3.555344>,  <2.948283, 2.214640, 3.778300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.020827, 2.265903, 3.555344>,  <3.141734, 2.351343, 3.183750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.020827, 2.265903, 3.555344> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.916105, 0.204219, 0.345032,
		-0.263414, 0.955338, 0.133951,
		-0.302267, -0.213599, 0.928983,
		2.930147, 2.201824, 3.834039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.298001, 2.978574, 3.611335>,  <3.141734, 2.351343, 3.183750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.298001, 2.978574, 3.611335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.276948, 2.637100, 3.818584>,  <3.264316, 2.432216, 3.942934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.276948, 2.637100, 3.818584>,  <3.298001, 2.978574, 3.611335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.276948, 2.637100, 3.818584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.876663, 0.208966, 0.433354,
		-0.478218, 0.477027, 0.737396,
		-0.052631, -0.853685, 0.518123,
		3.261158, 2.380995, 3.974021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.209188, 3.014517, 4.309992>,  <3.298001, 2.978574, 3.611335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.209188, 3.014517, 4.309992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.433318, 2.697647, 4.213249>,  <3.567796, 2.507525, 4.155203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.433318, 2.697647, 4.213249>,  <3.209188, 3.014517, 4.309992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.433318, 2.697647, 4.213249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.750855, 0.362551, 0.552063,
		-0.349645, -0.490935, 0.797955,
		0.560326, -0.792174, -0.241857,
		3.601416, 2.459995, 4.140692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.506943, 2.756018, 4.891075>,  <3.209188, 3.014517, 4.309992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.506943, 2.756018, 4.891075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.743148, 2.630634, 4.593609>,  <3.884871, 2.555404, 4.415129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.743148, 2.630634, 4.593609>,  <3.506943, 2.756018, 4.891075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.743148, 2.630634, 4.593609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.787047, 0.427467, 0.444780,
		0.178472, -0.847947, 0.499132,
		0.590513, -0.313459, -0.743665,
		3.920302, 2.536597, 4.370509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.134285, 2.447600, 5.105905>,  <3.506943, 2.756018, 4.891075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.134285, 2.447600, 5.105905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.220428, 2.603664, 4.747822>,  <4.272113, 2.697303, 4.532972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.220428, 2.603664, 4.747822>,  <4.134285, 2.447600, 5.105905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.220428, 2.603664, 4.747822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.801414, 0.453201, 0.390313,
		0.557994, -0.801488, -0.215082,
		0.215356, 0.390162, -0.895207,
		4.285034, 2.720713, 4.479259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.716605, 2.131663, 4.892815>,  <4.134285, 2.447600, 5.105905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.716605, 2.131663, 4.892815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.695928, 2.487156, 4.710613>,  <4.683521, 2.700451, 4.601292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.695928, 2.487156, 4.710613>,  <4.716605, 2.131663, 4.892815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.695928, 2.487156, 4.710613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.885330, 0.251827, 0.390864,
		0.462081, -0.383066, -0.799838,
		-0.051694, 0.888731, -0.455504,
		4.680419, 2.753775, 4.573962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.323327, 2.174125, 4.574218>,  <4.716605, 2.131663, 4.892815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.323327, 2.174125, 4.574218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.199088, 2.554058, 4.559540>,  <5.124545, 2.782018, 4.550733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.199088, 2.554058, 4.559540>,  <5.323327, 2.174125, 4.574218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.199088, 2.554058, 4.559540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.899854, 0.306254, 0.310598,
		0.306254, 0.063450, -0.949833,
		-0.310598, 0.949833, -0.036696,
		5.105909, 2.839008, 4.548531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.757897, 2.518897, 4.081048>,  <5.323327, 2.174125, 4.574218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.757897, 2.518897, 4.081048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.620448, 2.787388, 4.343765>,  <5.537979, 2.948482, 4.501396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.620448, 2.787388, 4.343765>,  <5.757897, 2.518897, 4.081048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.620448, 2.787388, 4.343765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.938288, 0.274598, 0.210263,
		-0.039220, 0.688513, -0.724163,
		-0.343623, 0.671227, 0.656794,
		5.517361, 2.988756, 4.540803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<1.664654, 3.163872, 5.673641> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.359385, 2.982597, 5.857899>,  <1.176225, 2.873833, 5.968453>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.359385, 2.982597, 5.857899>,  <1.664654, 3.163872, 5.673641>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.359385, 2.982597, 5.857899> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.642072, 0.451389, -0.619671,
		0.072896, -0.768681, -0.635465,
		-0.763171, -0.453186, 0.460644,
		1.130434, 2.846642, 5.996092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.252396, 2.703315, 5.222738>,  <1.664654, 3.163872, 5.673641>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.252396, 2.703315, 5.222738> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.074888, 2.894363, 5.526039>,  <0.968384, 3.008992, 5.708020>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.074888, 2.894363, 5.526039>,  <1.252396, 2.703315, 5.222738>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.074888, 2.894363, 5.526039> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.582529, 0.489228, -0.649089,
		-0.680977, -0.729749, 0.061124,
		-0.443768, 0.477621, 0.758253,
		0.941758, 3.037650, 5.753515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.553215, 2.520086, 5.222137>,  <1.252396, 2.703315, 5.222738>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.553215, 2.520086, 5.222137> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.608192, 2.894424, 5.351936>,  <0.641179, 3.119028, 5.429816>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.608192, 2.894424, 5.351936>,  <0.553215, 2.520086, 5.222137>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.608192, 2.894424, 5.351936> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.755808, 0.310834, -0.576313,
		-0.640206, -0.166049, 0.750043,
		0.137443, 0.935847, 0.324499,
		0.649425, 3.175179, 5.449286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.105140, 2.968270, 5.395538>,  <0.553215, 2.520086, 5.222137>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.105140, 2.968270, 5.395538> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.192295, 3.205956, 5.272907>,  <0.370756, 3.348567, 5.199329>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.192295, 3.205956, 5.272907>,  <-0.105140, 2.968270, 5.395538>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.192295, 3.205956, 5.272907> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.547124, 0.277155, -0.789835,
		-0.384361, 0.755047, 0.531198,
		0.743587, 0.594213, -0.306577,
		0.415371, 3.384219, 5.180934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.206198, 3.723401, 5.298220>,  <-0.105140, 2.968270, 5.395538>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.206198, 3.723401, 5.298220> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.046572, 3.559975, 5.034782>,  <0.198234, 3.461919, 4.876720>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.046572, 3.559975, 5.034782>,  <-0.206198, 3.723401, 5.298220>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.046572, 3.559975, 5.034782> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.700500, 0.062507, -0.710910,
		0.331620, 0.910586, -0.246700,
		0.631924, -0.408565, -0.658594,
		0.236149, 3.437405, 4.837204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.329306, 4.045988, 4.628278>,  <-0.206198, 3.723401, 5.298220>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.329306, 4.045988, 4.628278> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.174278, 3.683136, 4.562664>,  <-0.081262, 3.465425, 4.523296>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.174278, 3.683136, 4.562664>,  <-0.329306, 4.045988, 4.628278>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.174278, 3.683136, 4.562664> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.717440, -0.185084, -0.671583,
		0.578852, 0.377969, -0.722544,
		0.387569, -0.907129, -0.164034,
		-0.058008, 3.410997, 4.513453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.349414, 3.853125, 3.897474>,  <-0.329306, 4.045988, 4.628278>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.349414, 3.853125, 3.897474> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.332022, 3.504616, 4.093021>,  <-0.321586, 3.295510, 4.210350>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.332022, 3.504616, 4.093021>,  <-0.349414, 3.853125, 3.897474>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.332022, 3.504616, 4.093021> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.725070, -0.364157, -0.584520,
		0.687301, -0.329050, -0.647568,
		0.043480, -0.871273, 0.488869,
		-0.318978, 3.243234, 4.239682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.329674, 3.333181, 3.443942>,  <-0.349414, 3.853125, 3.897474>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.329674, 3.333181, 3.443942> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.488411, 3.158974, 3.767136>,  <-0.583653, 3.054449, 3.961052>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.488411, 3.158974, 3.767136>,  <-0.329674, 3.333181, 3.443942>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.488411, 3.158974, 3.767136> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.636839, -0.503290, -0.584068,
		0.661023, -0.746339, -0.077628,
		-0.396843, -0.435519, 0.807984,
		-0.607464, 3.028318, 4.009531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// box output
cylinder {
	<0.000000, 0.000000, 0.000000>,  <5.000000, 0.000000, 0.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 5.000000, 0.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 0.000000, 5.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<5.000000, 5.000000, 5.000000>,  <0.000000, 5.000000, 5.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<5.000000, 5.000000, 5.000000>,  <5.000000, 0.000000, 5.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<5.000000, 5.000000, 5.000000>,  <5.000000, 5.000000, 0.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 5.000000>,  <0.000000, 5.000000, 5.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 5.000000>,  <5.000000, 0.000000, 5.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<5.000000, 5.000000, 0.000000>,  <0.000000, 5.000000, 0.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<5.000000, 5.000000, 0.000000>,  <5.000000, 0.000000, 0.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<5.000000, 0.000000, 5.000000>,  <5.000000, 0.000000, 0.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 5.000000, 0.000000>,  <0.000000, 5.000000, 5.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
// end of box output
