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
	<5.274282, 2.925484, -1.030995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.956223, 2.748573, -1.196949>,  <4.765387, 2.642427, -1.296522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.956223, 2.748573, -1.196949>,  <5.274282, 2.925484, -1.030995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.956223, 2.748573, -1.196949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472419, 0.022828, 0.881078,
		-0.380210, 0.896588, -0.227091,
		-0.795148, -0.442277, -0.414885,
		4.717678, 2.615890, -1.321415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.581912, 3.396242, -0.875466>,  <5.274282, 2.925484, -1.030995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.581912, 3.396242, -0.875466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.562725, 2.997288, -0.897091>,  <4.551213, 2.757915, -0.910066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.562725, 2.997288, -0.897091>,  <4.581912, 3.396242, -0.875466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.562725, 2.997288, -0.897091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437577, -0.027673, 0.898755,
		-0.897901, 0.066767, -0.435105,
		-0.047967, -0.997385, -0.054063,
		4.548335, 2.698072, -0.913310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.887436, 3.081884, -0.958975>,  <4.581912, 3.396242, -0.875466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.887436, 3.081884, -0.958975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.147968, 2.894299, -0.720366>,  <4.304287, 2.781747, -0.577200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.147968, 2.894299, -0.720366>,  <3.887436, 3.081884, -0.958975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.147968, 2.894299, -0.720366> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.514293, 0.305191, 0.801474,
		-0.557917, -0.828812, -0.042405,
		0.651330, -0.468965, 0.596524,
		4.343367, 2.753609, -0.541408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.554859, 2.726385, -0.395905>,  <3.887436, 3.081884, -0.958975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.554859, 2.726385, -0.395905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.920925, 2.802814, -0.253941>,  <4.140565, 2.848672, -0.168762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.920925, 2.802814, -0.253941>,  <3.554859, 2.726385, -0.395905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.920925, 2.802814, -0.253941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397426, 0.280817, 0.873610,
		0.067257, -0.940550, 0.332931,
		0.915166, 0.191071, 0.354912,
		4.195475, 2.860137, -0.147467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.569778, 2.465488, 0.308814>,  <3.554859, 2.726385, -0.395905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.569778, 2.465488, 0.308814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.879654, 2.715801, 0.272480>,  <4.065579, 2.865989, 0.250680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.879654, 2.715801, 0.272480>,  <3.569778, 2.465488, 0.308814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.879654, 2.715801, 0.272480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195171, 0.373261, 0.906964,
		0.601469, -0.684887, 0.411297,
		0.774689, 0.625784, -0.090835,
		4.112061, 2.903536, 0.245230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.988743, 2.331746, 0.871499>,  <3.569778, 2.465488, 0.308814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.988743, 2.331746, 0.871499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.069592, 2.704559, 0.751194>,  <4.118101, 2.928248, 0.679011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.069592, 2.704559, 0.751194>,  <3.988743, 2.331746, 0.871499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.069592, 2.704559, 0.751194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391050, 0.358364, 0.847735,
		0.897901, -0.053731, 0.436905,
		0.202121, 0.932034, -0.300764,
		4.130228, 2.984170, 0.660965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.514206, 2.646407, 1.369836>,  <3.988743, 2.331746, 0.871499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.514206, 2.646407, 1.369836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.324272, 2.948795, 1.189596>,  <4.210312, 3.130229, 1.081452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.324272, 2.948795, 1.189596>,  <4.514206, 2.646407, 1.369836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.324272, 2.948795, 1.189596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140881, 0.440105, 0.886826,
		0.868726, 0.484576, -0.102475,
		-0.474834, 0.755972, -0.450599,
		4.181822, 3.175587, 1.054417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.622281, 3.152200, 1.765427>,  <4.514206, 2.646407, 1.369836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.622281, 3.152200, 1.765427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.335716, 3.315193, 1.538902>,  <4.163777, 3.412989, 1.402987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.335716, 3.315193, 1.538902>,  <4.622281, 3.152200, 1.765427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.335716, 3.315193, 1.538902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257689, 0.599769, 0.757545,
		0.648344, 0.688647, -0.324678,
		-0.716412, 0.407484, -0.566313,
		4.120792, 3.437438, 1.369008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<3.080783, 3.254533, 2.402853> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.977005, 3.584415, 2.201836>,  <2.914738, 3.782345, 2.081225>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.977005, 3.584415, 2.201836>,  <3.080783, 3.254533, 2.402853>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.977005, 3.584415, 2.201836> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519972, -0.319216, -0.792295,
		-0.813829, -0.466864, -0.346005,
		-0.259444, 0.824705, -0.502544,
		2.899172, 3.831827, 2.051073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.099568, 3.027107, 1.749312>,  <3.080783, 3.254533, 2.402853>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.099568, 3.027107, 1.749312> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.147720, 3.424126, 1.741699>,  <3.176612, 3.662337, 1.737131>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.147720, 3.424126, 1.741699>,  <3.099568, 3.027107, 1.749312>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.147720, 3.424126, 1.741699> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.692412, -0.097688, -0.714858,
		-0.711389, 0.072877, -0.699010,
		0.120382, 0.992545, -0.019033,
		3.183835, 3.721889, 1.735989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.923479, 3.406601, 1.099959>,  <3.099568, 3.027107, 1.749312>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.923479, 3.406601, 1.099959> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.219688, 3.589691, 1.296780>,  <3.397414, 3.699545, 1.414872>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.219688, 3.589691, 1.296780>,  <2.923479, 3.406601, 1.099959>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.219688, 3.589691, 1.296780> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.590745, -0.094305, -0.801329,
		-0.320385, 0.884079, -0.340233,
		0.740523, 0.457724, 0.492051,
		3.441845, 3.727008, 1.444395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.186779, 4.000987, 0.699473>,  <2.923479, 3.406601, 1.099959>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.186779, 4.000987, 0.699473> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.484459, 3.833851, 0.907925>,  <3.663067, 3.733569, 1.032996>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.484459, 3.833851, 0.907925>,  <3.186779, 4.000987, 0.699473>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.484459, 3.833851, 0.907925> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527461, -0.111062, -0.842289,
		0.409820, 0.901706, 0.137743,
		0.744199, -0.417841, 0.521130,
		3.707719, 3.708499, 1.064264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.794034, 4.183082, 0.345148>,  <3.186779, 4.000987, 0.699473>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.794034, 4.183082, 0.345148> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.909470, 3.869457, 0.564953>,  <3.978731, 3.681283, 0.696836>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.909470, 3.869457, 0.564953>,  <3.794034, 4.183082, 0.345148>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.909470, 3.869457, 0.564953> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472634, -0.382469, -0.793936,
		0.832666, 0.488840, 0.260198,
		0.288590, -0.784062, 0.549512,
		3.996047, 3.634239, 0.729806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.462157, 4.148622, 0.192098>,  <3.794034, 4.183082, 0.345148>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.462157, 4.148622, 0.192098> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.378334, 3.795311, 0.359863>,  <4.328041, 3.583325, 0.460523>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.378334, 3.795311, 0.359863>,  <4.462157, 4.148622, 0.192098>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.378334, 3.795311, 0.359863> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331584, -0.467716, -0.819325,
		0.919858, -0.032624, 0.390893,
		-0.209557, -0.883277, 0.419414,
		4.315467, 3.530328, 0.485688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.109196, 3.765892, 0.212991>,  <4.462157, 4.148622, 0.192098>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.109196, 3.765892, 0.212991> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.793785, 3.519978, 0.206482>,  <4.604539, 3.372429, 0.202577>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.793785, 3.519978, 0.206482>,  <5.109196, 3.765892, 0.212991>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.793785, 3.519978, 0.206482> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431061, -0.533620, -0.727624,
		0.438650, -0.580764, 0.685784,
		-0.788526, -0.614786, -0.016272,
		4.557227, 3.335542, 0.201600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.400669, 3.180745, 0.082129>,  <5.109196, 3.765892, 0.212991>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.400669, 3.180745, 0.082129> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.015724, 3.093662, 0.017059>,  <4.784757, 3.041413, -0.021983>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.015724, 3.093662, 0.017059>,  <5.400669, 3.180745, 0.082129>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.015724, 3.093662, 0.017059> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248546, -0.462919, -0.850841,
		0.109928, -0.859250, 0.499605,
		-0.962362, -0.217706, -0.162675,
		4.727015, 3.028351, -0.031743>
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
