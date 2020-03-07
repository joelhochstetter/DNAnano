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
	<4.709769, -0.748296, 1.424650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.649653, -0.775026, 1.030098>,  <4.613584, -0.791064, 0.793366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.649653, -0.775026, 1.030098>,  <4.709769, -0.748296, 1.424650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.649653, -0.775026, 1.030098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102530, 0.991280, -0.082779,
		0.983311, -0.113575, -0.142127,
		-0.150289, -0.066825, -0.986381,
		4.604567, -0.795074, 0.734184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.233109, -0.348456, 0.986612>,  <4.709769, -0.748296, 1.424650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.233109, -0.348456, 0.986612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.880806, -0.377392, 0.799408>,  <4.669424, -0.394754, 0.687086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.880806, -0.377392, 0.799408>,  <5.233109, -0.348456, 0.986612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.880806, -0.377392, 0.799408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034792, 0.995478, -0.088396,
		0.472289, -0.061573, -0.879291,
		-0.880757, -0.072341, -0.468010,
		4.616579, -0.399094, 0.659005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.192763, -0.096496, 0.293664>,  <5.233109, -0.348456, 0.986612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.192763, -0.096496, 0.293664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.888795, -0.046280, 0.548775>,  <4.706414, -0.016150, 0.701841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.888795, -0.046280, 0.548775>,  <5.192763, -0.096496, 0.293664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.888795, -0.046280, 0.548775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227893, 0.970350, 0.080533,
		-0.608757, 0.206544, -0.765999,
		-0.759921, 0.125541, 0.637777,
		4.660819, -0.008618, 0.740108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.851193, 0.498359, 0.062036>,  <5.192763, -0.096496, 0.293664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.851193, 0.498359, 0.062036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.827675, 0.441450, 0.457268>,  <4.813564, 0.407305, 0.694407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.827675, 0.441450, 0.457268>,  <4.851193, 0.498359, 0.062036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.827675, 0.441450, 0.457268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382562, 0.911015, 0.153939,
		-0.922057, 0.387053, 0.000863,
		-0.058796, -0.142271, 0.988080,
		4.810036, 0.398769, 0.753692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.787556, 1.128671, 0.232714>,  <4.851193, 0.498359, 0.062036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.787556, 1.128671, 0.232714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.862816, 0.967876, 0.591156>,  <4.907972, 0.871399, 0.806221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.862816, 0.967876, 0.591156>,  <4.787556, 1.128671, 0.232714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.862816, 0.967876, 0.591156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347728, 0.880566, 0.322006,
		-0.918523, 0.251015, 0.305462,
		0.188151, -0.401988, 0.896106,
		4.919261, 0.847280, 0.859988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.532870, 1.603909, 0.643311>,  <4.787556, 1.128671, 0.232714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.532870, 1.603909, 0.643311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.803893, 1.417156, 0.870621>,  <4.966507, 1.305104, 1.007007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.803893, 1.417156, 0.870621>,  <4.532870, 1.603909, 0.643311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.803893, 1.417156, 0.870621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400637, 0.882268, 0.247172,
		-0.616771, 0.060199, 0.784837,
		0.677557, -0.466883, 0.568275,
		5.007160, 1.277091, 1.041103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.556284, 1.928050, 1.310633>,  <4.532870, 1.603909, 0.643311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.556284, 1.928050, 1.310633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.886575, 1.703997, 1.337242>,  <5.084749, 1.569565, 1.353207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.886575, 1.703997, 1.337242>,  <4.556284, 1.928050, 1.310633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.886575, 1.703997, 1.337242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539078, 0.818351, 0.199240,
		-0.166039, -0.128657, 0.977690,
		0.825728, -0.560133, 0.066522,
		5.134293, 1.535957, 1.357199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.783817, 2.027295, 1.973563>,  <4.556284, 1.928050, 1.310633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.783817, 2.027295, 1.973563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.082471, 1.941700, 1.721611>,  <5.261663, 1.890343, 1.570440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.082471, 1.941700, 1.721611>,  <4.783817, 2.027295, 1.973563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.082471, 1.941700, 1.721611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484404, 0.823854, 0.294307,
		0.455950, -0.524856, 0.718774,
		0.746633, -0.213987, -0.629879,
		5.306461, 1.877504, 1.532647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<0.182004, 2.791595, 1.447753> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.580242, 2.826622, 1.461159>,  <0.819185, 2.847638, 1.469202>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.580242, 2.826622, 1.461159>,  <0.182004, 2.791595, 1.447753>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.580242, 2.826622, 1.461159> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081942, -0.986337, 0.142912,
		0.045572, -0.139536, -0.989168,
		0.995595, 0.087567, 0.033515,
		0.878921, 2.852892, 1.471213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.451624, 2.436739, 0.943661>,  <0.182004, 2.791595, 1.447753>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.451624, 2.436739, 0.943661> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.728567, 2.449276, 1.232010>,  <0.894733, 2.456798, 1.405019>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.728567, 2.449276, 1.232010>,  <0.451624, 2.436739, 0.943661>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.728567, 2.449276, 1.232010> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008950, -0.998606, 0.052014,
		0.721498, -0.042464, -0.691113,
		0.692358, 0.031343, 0.720873,
		0.936275, 2.458679, 1.448272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.959151, 2.197343, 0.580612>,  <0.451624, 2.436739, 0.943661>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.959151, 2.197343, 0.580612> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.925722, 2.143192, 0.975517>,  <0.905665, 2.110702, 1.212461>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.925722, 2.143192, 0.975517>,  <0.959151, 2.197343, 0.580612>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.925722, 2.143192, 0.975517> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244927, -0.957547, -0.152036,
		0.965933, -0.254513, 0.046865,
		-0.083570, -0.135378, 0.987263,
		0.900651, 2.102579, 1.271696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.247042, 1.541850, 0.696162>,  <0.959151, 2.197343, 0.580612>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.247042, 1.541850, 0.696162> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.964838, 1.646233, 0.959724>,  <0.795516, 1.708862, 1.117862>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.964838, 1.646233, 0.959724>,  <1.247042, 1.541850, 0.696162>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.964838, 1.646233, 0.959724> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402697, -0.912674, -0.069719,
		0.583173, -0.314527, 0.748987,
		-0.705510, 0.260957, 0.658906,
		0.753185, 1.724520, 1.157396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.285105, 0.997357, 1.221872>,  <1.247042, 1.541850, 0.696162>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.285105, 0.997357, 1.221872> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.929888, 1.174129, 1.272591>,  <0.716757, 1.280193, 1.303022>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.929888, 1.174129, 1.272591>,  <1.285105, 0.997357, 1.221872>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.929888, 1.174129, 1.272591> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450210, -0.891791, -0.044929,
		0.093221, -0.096985, 0.990910,
		-0.888043, 0.441930, 0.126797,
		0.663475, 1.306708, 1.310630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.918009, 0.482315, 1.600409>,  <1.285105, 0.997357, 1.221872>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.918009, 0.482315, 1.600409> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.637209, 0.718224, 1.440727>,  <0.468729, 0.859769, 1.344918>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.637209, 0.718224, 1.440727>,  <0.918009, 0.482315, 1.600409>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.637209, 0.718224, 1.440727> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.634654, -0.772390, -0.025068,
		-0.323126, 0.235760, 0.916519,
		-0.702000, 0.589773, -0.399205,
		0.426609, 0.895155, 1.320966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.359906, 0.163749, 1.876778>,  <0.918009, 0.482315, 1.600409>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.359906, 0.163749, 1.876778> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.223425, 0.399384, 1.583778>,  <0.141536, 0.540765, 1.407978>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.223425, 0.399384, 1.583778>,  <0.359906, 0.163749, 1.876778>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.223425, 0.399384, 1.583778> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.754803, -0.636139, -0.160000,
		-0.560225, 0.498301, 0.661698,
		-0.341203, 0.589088, -0.732500,
		0.121064, 0.576110, 1.364028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.346390, 0.232408, 2.000566>,  <0.359906, 0.163749, 1.876778>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.346390, 0.232408, 2.000566> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.304121, 0.282379, 1.605957>,  <-0.278760, 0.312362, 1.369192>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.304121, 0.282379, 1.605957>,  <-0.346390, 0.232408, 2.000566>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.304121, 0.282379, 1.605957> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.705384, -0.689849, -0.162917,
		-0.700905, 0.713092, 0.015225,
		0.105672, 0.124928, -0.986522,
		-0.272419, 0.319858, 1.310000>
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
