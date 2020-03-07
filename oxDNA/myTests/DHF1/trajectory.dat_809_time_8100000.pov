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
	<0.680751, 3.260284, 0.962752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.811426, 3.010056, 1.246141>,  <0.889831, 2.859919, 1.416175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.811426, 3.010056, 1.246141>,  <0.680751, 3.260284, 0.962752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.811426, 3.010056, 1.246141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.550705, -0.483214, -0.680609,
		0.768114, 0.612507, 0.186645,
		0.326688, -0.625571, 0.708474,
		0.909433, 2.822384, 1.458684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.356251, 3.301351, 1.081110>,  <0.680751, 3.260284, 0.962752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.356251, 3.301351, 1.081110> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.244904, 2.928169, 1.172419>,  <1.178095, 2.704260, 1.227204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.244904, 2.928169, 1.172419>,  <1.356251, 3.301351, 1.081110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.244904, 2.928169, 1.172419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.770673, -0.358799, -0.526618,
		0.573214, 0.029329, 0.818881,
		-0.278368, -0.932954, 0.228271,
		1.161393, 2.648283, 1.240900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.868058, 2.888761, 1.250397>,  <1.356251, 3.301351, 1.081110>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.868058, 2.888761, 1.250397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.601700, 2.597137, 1.187080>,  <1.441885, 2.422163, 1.149091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.601700, 2.597137, 1.187080>,  <1.868058, 2.888761, 1.250397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.601700, 2.597137, 1.187080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.707804, -0.550321, -0.442900,
		0.235790, -0.406964, 0.882487,
		-0.665895, -0.729059, -0.158291,
		1.401931, 2.378420, 1.139593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.222316, 2.302917, 1.310761>,  <1.868058, 2.888761, 1.250397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.222316, 2.302917, 1.310761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.916864, 2.224556, 1.064674>,  <1.733593, 2.177539, 0.917022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.916864, 2.224556, 1.064674>,  <2.222316, 2.302917, 1.310761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.916864, 2.224556, 1.064674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.588142, -0.604186, -0.537632,
		-0.266381, -0.772387, 0.576593,
		-0.763629, -0.195904, -0.615216,
		1.687775, 2.165785, 0.880109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.308616, 1.640950, 1.124667>,  <2.222316, 2.302917, 1.310761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.308616, 1.640950, 1.124667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.067722, 1.777214, 0.835873>,  <1.923186, 1.858973, 0.662596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.067722, 1.777214, 0.835873>,  <2.308616, 1.640950, 1.124667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.067722, 1.777214, 0.835873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484668, -0.562619, -0.669744,
		-0.634359, -0.753266, 0.173721,
		-0.602234, 0.340661, -0.721986,
		1.887052, 1.879412, 0.619277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.059988, 1.045120, 0.717756>,  <2.308616, 1.640950, 1.124667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.059988, 1.045120, 0.717756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.017792, 1.352242, 0.464979>,  <1.992474, 1.536514, 0.313313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.017792, 1.352242, 0.464979>,  <2.059988, 1.045120, 0.717756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.017792, 1.352242, 0.464979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415443, -0.543345, -0.729509,
		-0.903482, -0.339493, -0.261660,
		-0.105492, 0.767803, -0.631942,
		1.986144, 1.582582, 0.275397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.850803, 0.784598, 0.126229>,  <2.059988, 1.045120, 0.717756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.850803, 0.784598, 0.126229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.024618, 1.122147, 0.000336>,  <2.128907, 1.324676, -0.075200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.024618, 1.122147, 0.000336>,  <1.850803, 0.784598, 0.126229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.024618, 1.122147, 0.000336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416016, -0.497998, -0.760873,
		-0.798816, 0.199694, -0.567464,
		0.434538, 0.843872, -0.314733,
		2.154979, 1.375308, -0.094084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.703510, 0.907216, -0.589872>,  <1.850803, 0.784598, 0.126229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.703510, 0.907216, -0.589872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.036371, 1.118004, -0.520794>,  <2.236088, 1.244477, -0.479347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.036371, 1.118004, -0.520794>,  <1.703510, 0.907216, -0.589872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.036371, 1.118004, -0.520794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405255, -0.365311, -0.838043,
		-0.378536, 0.767366, -0.517552,
		0.832153, 0.526970, 0.172696,
		2.286017, 1.276095, -0.468985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<3.189236, 0.315910, 4.191514> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.451099, 0.608223, 4.268846>,  <3.608218, 0.783611, 4.315245>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.451099, 0.608223, 4.268846>,  <3.189236, 0.315910, 4.191514>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.451099, 0.608223, 4.268846> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.754908, 0.618782, 0.217307,
		0.039175, -0.288208, 0.956766,
		0.654660, 0.730784, 0.193330,
		3.647497, 0.827458, 4.326844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.139949, 0.647399, 4.813052>,  <3.189236, 0.315910, 4.191514>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.139949, 0.647399, 4.813052> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.257542, 0.928146, 4.553528>,  <3.328098, 1.096595, 4.397813>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.257542, 0.928146, 4.553528>,  <3.139949, 0.647399, 4.813052>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.257542, 0.928146, 4.553528> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.769983, 0.576089, 0.274314,
		0.566306, 0.418933, 0.709784,
		0.293979, 0.701867, -0.648814,
		3.345737, 1.138707, 4.358885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.438843, 1.378688, 5.030726>,  <3.139949, 0.647399, 4.813052>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.438843, 1.378688, 5.030726> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.249233, 1.377960, 4.678522>,  <3.135467, 1.377523, 4.467200>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.249233, 1.377960, 4.678522>,  <3.438843, 1.378688, 5.030726>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.249233, 1.377960, 4.678522> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.797488, 0.424784, 0.428453,
		0.373246, 0.905293, -0.202810,
		-0.474026, -0.001821, -0.880509,
		3.107026, 1.377414, 4.414370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.204485, 2.132276, 4.807066>,  <3.438843, 1.378688, 5.030726>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.204485, 2.132276, 4.807066> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.932583, 1.857658, 4.703847>,  <2.769442, 1.692888, 4.641915>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.932583, 1.857658, 4.703847>,  <3.204485, 2.132276, 4.807066>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.932583, 1.857658, 4.703847> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.725729, 0.578725, 0.372014,
		-0.106066, 0.440151, -0.891637,
		-0.679755, -0.686545, -0.258048,
		2.728656, 1.651695, 4.626432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.616606, 2.536745, 4.545012>,  <3.204485, 2.132276, 4.807066>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.616606, 2.536745, 4.545012> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.481621, 2.174286, 4.647003>,  <2.400630, 1.956810, 4.708198>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.481621, 2.174286, 4.647003>,  <2.616606, 2.536745, 4.545012>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.481621, 2.174286, 4.647003> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.788766, 0.420034, 0.448798,
		-0.513777, -0.049665, -0.856485,
		-0.337463, -0.906149, 0.254978,
		2.380382, 1.902441, 4.723496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.923228, 2.714517, 4.660209>,  <2.616606, 2.536745, 4.545012>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.923228, 2.714517, 4.660209> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.953552, 2.359886, 4.842739>,  <1.971747, 2.147108, 4.952258>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.953552, 2.359886, 4.842739>,  <1.923228, 2.714517, 4.660209>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.953552, 2.359886, 4.842739> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.798887, 0.219851, 0.559862,
		-0.596685, -0.406997, -0.691608,
		0.075811, -0.886577, 0.456326,
		1.976296, 2.093913, 4.979637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.278966, 2.377454, 4.621177>,  <1.923228, 2.714517, 4.660209>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.278966, 2.377454, 4.621177> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.467712, 2.215431, 4.934423>,  <1.580960, 2.118217, 5.122372>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.467712, 2.215431, 4.934423>,  <1.278966, 2.377454, 4.621177>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.467712, 2.215431, 4.934423> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.709657, 0.352588, 0.609974,
		-0.523192, -0.843570, -0.121078,
		0.471865, -0.405058, 0.783116,
		1.609272, 2.093914, 5.169358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.778944, 1.988148, 4.931039>,  <1.278966, 2.377454, 4.621177>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.778944, 1.988148, 4.931039> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.053986, 2.061729, 5.211998>,  <1.219011, 2.105878, 5.380573>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.053986, 2.061729, 5.211998>,  <0.778944, 1.988148, 4.931039>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.053986, 2.061729, 5.211998> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.685356, 0.483876, 0.544198,
		-0.239766, -0.855585, 0.458789,
		0.687604, 0.183953, 0.702397,
		1.260267, 2.116915, 5.422717>
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
