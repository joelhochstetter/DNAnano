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
	<2.148296, 3.606267, 1.898956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.128983, 3.904911, 1.633554>,  <2.117395, 4.084098, 1.474312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.128983, 3.904911, 1.633554>,  <2.148296, 3.606267, 1.898956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.128983, 3.904911, 1.633554> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.998488, 0.018604, -0.051725,
		-0.026275, -0.665001, -0.746380,
		-0.048283, 0.746611, -0.663507,
		2.114498, 4.128894, 1.434502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.596806, 3.425430, 1.435044>,  <2.148296, 3.606267, 1.898956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.596806, 3.425430, 1.435044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.560749, 3.823441, 1.451994>,  <2.539115, 4.062247, 1.462165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.560749, 3.823441, 1.451994>,  <2.596806, 3.425430, 1.435044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.560749, 3.823441, 1.451994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.988352, 0.094613, -0.119204,
		-0.122620, 0.031137, -0.991965,
		-0.090141, 0.995027, 0.042376,
		2.533707, 4.121949, 1.464707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.876800, 3.832123, 0.831955>,  <2.596806, 3.425430, 1.435044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.876800, 3.832123, 0.831955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.920868, 4.049709, 1.164692>,  <2.947309, 4.180262, 1.364334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.920868, 4.049709, 1.164692>,  <2.876800, 3.832123, 0.831955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.920868, 4.049709, 1.164692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.972758, 0.112746, -0.202562,
		-0.203974, 0.831498, -0.516727,
		0.110171, 0.543967, 0.831843,
		2.953919, 4.212899, 1.414245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.289963, 4.367226, 0.604957>,  <2.876800, 3.832123, 0.831955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.289963, 4.367226, 0.604957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.338367, 4.324306, 0.999691>,  <3.367410, 4.298555, 1.236531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.338367, 4.324306, 0.999691>,  <3.289963, 4.367226, 0.604957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.338367, 4.324306, 0.999691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.988816, -0.074276, -0.129331,
		0.087175, 0.991448, 0.097111,
		0.121012, -0.107299, 0.986835,
		3.374671, 4.292117, 1.295741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.035638, 4.052459, 0.686958>,  <3.289963, 4.367226, 0.604957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.035638, 4.052459, 0.686958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.199875, 4.416237, 0.713262>,  <4.298417, 4.634504, 0.729045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.199875, 4.416237, 0.713262>,  <4.035638, 4.052459, 0.686958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.199875, 4.416237, 0.713262> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524727, -0.294651, 0.798650,
		0.745706, -0.293411, -0.598191,
		0.410591, 0.909445, 0.065762,
		4.323052, 4.689070, 0.732991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.501534, 3.952608, 1.195144>,  <4.035638, 4.052459, 0.686958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.501534, 3.952608, 1.195144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.523251, 4.349178, 1.147602>,  <4.536281, 4.587121, 1.119078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.523251, 4.349178, 1.147602>,  <4.501534, 3.952608, 1.195144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.523251, 4.349178, 1.147602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296132, 0.097687, 0.950139,
		0.953603, -0.086781, -0.288290,
		0.054292, 0.991426, -0.118854,
		4.539538, 4.646606, 1.111946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.106208, 4.186006, 1.432195>,  <4.501534, 3.952608, 1.195144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.106208, 4.186006, 1.432195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.843498, 4.487000, 1.451840>,  <4.685872, 4.667596, 1.463626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.843498, 4.487000, 1.451840>,  <5.106208, 4.186006, 1.432195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.843498, 4.487000, 1.451840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300753, 0.201663, 0.932137,
		0.691515, 0.626975, -0.358760,
		-0.656776, 0.752485, 0.049111,
		4.646466, 4.712745, 1.466573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.436689, 4.789169, 1.614071>,  <5.106208, 4.186006, 1.432195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.436689, 4.789169, 1.614071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.063004, 4.763298, 1.754392>,  <4.838792, 4.747776, 1.838584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.063004, 4.763298, 1.754392>,  <5.436689, 4.789169, 1.614071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.063004, 4.763298, 1.754392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350689, 0.013462, 0.936395,
		-0.065287, 0.997815, 0.010105,
		-0.934213, -0.064678, 0.350802,
		4.782740, 4.743895, 1.859633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<2.609513, 4.223803, 2.711181> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.877221, 4.308813, 2.995972>,  <3.037846, 4.359819, 3.166846>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.877221, 4.308813, 2.995972>,  <2.609513, 4.223803, 2.711181>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.877221, 4.308813, 2.995972> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.648906, -0.299583, 0.699408,
		0.361938, -0.930098, -0.062593,
		0.669270, 0.212525, 0.711977,
		3.078002, 4.372571, 3.209565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.875757, 3.572087, 3.059729>,  <2.609513, 4.223803, 2.711181>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.875757, 3.572087, 3.059729> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.920453, 3.879730, 3.311440>,  <2.947270, 4.064316, 3.462466>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.920453, 3.879730, 3.311440>,  <2.875757, 3.572087, 3.059729>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.920453, 3.879730, 3.311440> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.537419, -0.485880, 0.689276,
		0.835880, -0.415203, 0.359041,
		0.111738, 0.769108, 0.629276,
		2.953974, 4.110463, 3.500222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.166784, 3.309241, 3.683337>,  <2.875757, 3.572087, 3.059729>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.166784, 3.309241, 3.683337> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.928866, 3.626022, 3.738513>,  <2.786115, 3.816091, 3.771619>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.928866, 3.626022, 3.738513>,  <3.166784, 3.309241, 3.683337>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.928866, 3.626022, 3.738513> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.564913, -0.533865, 0.629175,
		0.571919, 0.296306, 0.764925,
		-0.594795, 0.791954, 0.137941,
		2.750427, 3.863608, 3.779895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.200496, 3.554550, 4.337873>,  <3.166784, 3.309241, 3.683337>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.200496, 3.554550, 4.337873> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.842699, 3.674997, 4.205687>,  <2.628020, 3.747265, 4.126375>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.842699, 3.674997, 4.205687>,  <3.200496, 3.554550, 4.337873>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.842699, 3.674997, 4.205687> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445137, -0.668672, 0.595593,
		-0.041631, 0.679857, 0.732162,
		-0.894494, 0.301117, -0.330467,
		2.574351, 3.765332, 4.106546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.769774, 3.751076, 4.912991>,  <3.200496, 3.554550, 4.337873>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.769774, 3.751076, 4.912991> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.590734, 3.582737, 4.597385>,  <2.483311, 3.481733, 4.408022>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.590734, 3.582737, 4.597385>,  <2.769774, 3.751076, 4.912991>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.590734, 3.582737, 4.597385> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437963, -0.666098, 0.603740,
		-0.779643, 0.615792, 0.113829,
		-0.447599, -0.420849, -0.789013,
		2.456455, 3.456482, 4.360682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.086279, 3.665270, 5.005180>,  <2.769774, 3.751076, 4.912991>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.086279, 3.665270, 5.005180> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.155032, 3.385336, 4.727854>,  <2.196283, 3.217375, 4.561458>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.155032, 3.385336, 4.727854>,  <2.086279, 3.665270, 5.005180>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.155032, 3.385336, 4.727854> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.559797, -0.648503, 0.515821,
		-0.810607, 0.299455, -0.503232,
		0.171882, -0.699836, -0.693315,
		2.206596, 3.175385, 4.519859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.485923, 3.298038, 4.867404>,  <2.086279, 3.665270, 5.005180>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.485923, 3.298038, 4.867404> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.775350, 3.038683, 4.772711>,  <1.949006, 2.883070, 4.715895>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.775350, 3.038683, 4.772711>,  <1.485923, 3.298038, 4.867404>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.775350, 3.038683, 4.772711> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.513204, -0.734696, 0.443670,
		-0.461598, -0.199532, -0.864358,
		0.723567, -0.648389, -0.236734,
		1.992420, 2.844166, 4.701691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.249502, 2.670812, 4.474630>,  <1.485923, 3.298038, 4.867404>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.249502, 2.670812, 4.474630> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.576558, 2.581314, 4.686819>,  <1.772792, 2.527616, 4.814133>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.576558, 2.581314, 4.686819>,  <1.249502, 2.670812, 4.474630>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.576558, 2.581314, 4.686819> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.545175, -0.597064, 0.588471,
		0.185060, -0.770359, -0.610164,
		0.817641, -0.223744, 0.530473,
		1.821850, 2.514191, 4.845961>
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
