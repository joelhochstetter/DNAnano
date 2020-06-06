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
	right 1.6 * <0.724836, 0, 0.688921>
	location <12.1561, 44.2, 77.9145>
	look_at <46.7464, 44.2, 41.5209>
	direction <34.5903, 0, -36.3936>
	angle 67.0682
}


# declare cpy_camera_pos = <12.1561, 44.2, 77.9145>;
# if (DRAW_FOG = 1)
fog {
	fog_type 2
	up vnormalize(cpy_camera_pos)
	color rgbt<1,1,1,0.3>
	distance 1e-5
	fog_alt 3e-3
	fog_offset 70.72
}
# end


// LIGHTS

# declare lum = 6;
global_settings {
	ambient_light rgb lum * <0.05, 0.05, 0.05>
	max_trace_level 15
}# declare cpy_direct_light_amount = 0.25;
light_source
{	1000 * <-0.0359156, -1, 1.41376>,
	rgb lum * cpy_direct_light_amount
	parallel
}

light_source
{	1000 * <0.0359156, 1, -1.41376>,
	rgb lum * cpy_direct_light_amount
	parallel
}

// strand 0

// nucleotide -1

// particle -1
sphere {
	<41.243774, 43.143513, 40.734077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.415855, 42.999298, 41.065121>,  <41.519104, 42.912769, 41.263748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.415855, 42.999298, 41.065121>,  <41.243774, 43.143513, 40.734077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.415855, 42.999298, 41.065121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.885010, -0.349216, 0.307906,
		0.178002, -0.864904, -0.469314,
		0.430201, -0.360540, 0.827610,
		41.544914, 42.891136, 41.313404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.936188, 42.476536, 40.863750>,  <41.243774, 43.143513, 40.734077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.936188, 42.476536, 40.863750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.067974, 42.579880, 41.227005>,  <41.147045, 42.641888, 41.444958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.067974, 42.579880, 41.227005>,  <40.936188, 42.476536, 40.863750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.067974, 42.579880, 41.227005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.871350, -0.287201, 0.397825,
		0.363598, -0.922370, 0.130501,
		0.329462, 0.258360, 0.908133,
		41.166813, 42.657387, 41.499443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.737629, 41.988285, 41.252289>,  <40.936188, 42.476536, 40.863750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.737629, 41.988285, 41.252289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.819141, 42.283485, 41.509605>,  <40.868050, 42.460606, 41.663998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.819141, 42.283485, 41.509605>,  <40.737629, 41.988285, 41.252289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.819141, 42.283485, 41.509605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.809290, -0.242781, 0.534890,
		0.550928, -0.629613, 0.547782,
		0.203783, 0.738000, 0.643294,
		40.880276, 42.504887, 41.702595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.702099, 41.777836, 41.932617>,  <40.737629, 41.988285, 41.252289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.702099, 41.777836, 41.932617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.652599, 42.170448, 41.990974>,  <40.622898, 42.406017, 42.025990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.652599, 42.170448, 41.990974>,  <40.702099, 41.777836, 41.932617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.652599, 42.170448, 41.990974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.686580, -0.190844, 0.701560,
		0.716445, -0.013347, 0.697516,
		-0.123754, 0.981530, 0.145893,
		40.615475, 42.464909, 42.034744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.713932, 41.885559, 42.713192>,  <40.702099, 41.777836, 41.932617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.713932, 41.885559, 42.713192> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.527977, 42.199799, 42.549873>,  <40.416405, 42.388344, 42.451881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.527977, 42.199799, 42.549873>,  <40.713932, 41.885559, 42.713192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.527977, 42.199799, 42.549873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.751132, -0.105835, 0.651614,
		0.468697, 0.609613, 0.639293,
		-0.464891, 0.785603, -0.408295,
		40.388508, 42.435478, 42.427383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.600967, 42.391716, 43.208340>,  <40.713932, 41.885559, 42.713192>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.600967, 42.391716, 43.208340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.336067, 42.493843, 42.926563>,  <40.177128, 42.555119, 42.757496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.336067, 42.493843, 42.926563>,  <40.600967, 42.391716, 43.208340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.336067, 42.493843, 42.926563> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.733891, -0.031426, 0.678540,
		0.151105, 0.966347, 0.208186,
		-0.662247, 0.255317, -0.704444,
		40.137394, 42.570438, 42.715229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.195736, 42.828651, 43.494934>,  <40.600967, 42.391716, 43.208340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.195736, 42.828651, 43.494934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.969128, 42.739578, 43.177578>,  <39.833164, 42.686134, 42.987164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.969128, 42.739578, 43.177578>,  <40.195736, 42.828651, 43.494934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.969128, 42.739578, 43.177578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.799176, -0.086296, 0.594870,
		-0.200933, 0.971065, -0.129074,
		-0.566518, -0.222682, -0.793391,
		39.799171, 42.672775, 42.939560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.518856, 43.195026, 43.633553>,  <40.195736, 42.828651, 43.494934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.518856, 43.195026, 43.633553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.424664, 42.909683, 43.369530>,  <39.368149, 42.738476, 43.211117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.424664, 42.909683, 43.369530>,  <39.518856, 43.195026, 43.633553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.424664, 42.909683, 43.369530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.865211, -0.155466, 0.476697,
		-0.442671, 0.683339, -0.580595,
		-0.235483, -0.713357, -0.660053,
		39.354019, 42.695675, 43.171513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.783112, 43.279701, 43.537361>,  <39.518856, 43.195026, 43.633553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.783112, 43.279701, 43.537361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.874405, 42.906586, 43.425774>,  <38.929180, 42.682716, 43.358822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.874405, 42.906586, 43.425774>,  <38.783112, 43.279701, 43.537361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.874405, 42.906586, 43.425774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.758237, -0.350029, 0.550052,
		-0.610726, 0.085982, -0.787160,
		0.228234, -0.932785, -0.278966,
		38.942875, 42.626751, 43.342083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.176975, 42.899685, 43.337067>,  <38.783112, 43.279701, 43.537361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.176975, 42.899685, 43.337067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.412537, 42.582336, 43.398716>,  <38.553871, 42.391926, 43.435707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.412537, 42.582336, 43.398716>,  <38.176975, 42.899685, 43.337067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.412537, 42.582336, 43.398716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.712371, -0.419467, 0.562650,
		-0.381739, -0.441142, -0.812200,
		0.588900, -0.793373, 0.154129,
		38.589207, 42.344322, 43.444954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.788204, 42.317547, 43.313835>,  <38.176975, 42.899685, 43.337067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.788204, 42.317547, 43.313835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.114594, 42.156616, 43.479881>,  <38.310429, 42.060059, 43.579510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.114594, 42.156616, 43.479881>,  <37.788204, 42.317547, 43.313835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.114594, 42.156616, 43.479881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.572379, -0.461566, 0.677745,
		-0.081070, -0.790626, -0.606908,
		0.815972, -0.402327, 0.415119,
		38.359386, 42.035919, 43.604416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.691490, 41.629108, 43.202847>,  <37.788204, 42.317547, 43.313835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.691490, 41.629108, 43.202847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.908230, 41.723274, 43.525581>,  <38.038273, 41.779774, 43.719223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.908230, 41.723274, 43.525581>,  <37.691490, 41.629108, 43.202847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.908230, 41.723274, 43.525581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.586066, -0.582258, 0.563473,
		0.602436, -0.778174, -0.177526,
		0.541847, 0.235414, 0.806835,
		38.070786, 41.793900, 43.767632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.802376, 40.984100, 43.476891>,  <37.691490, 41.629108, 43.202847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.802376, 40.984100, 43.476891> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.896881, 41.241379, 43.768227>,  <37.953583, 41.395744, 43.943027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.896881, 41.241379, 43.768227>,  <37.802376, 40.984100, 43.476891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.896881, 41.241379, 43.768227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.531026, -0.542261, 0.651126,
		0.813752, -0.540603, 0.213439,
		0.236261, 0.643197, 0.728340,
		37.967758, 41.434338, 43.986729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.996975, 40.573025, 43.994366>,  <37.802376, 40.984100, 43.476891>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.996975, 40.573025, 43.994366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.908424, 40.919174, 44.174194>,  <37.855293, 41.126865, 44.282093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.908424, 40.919174, 44.174194>,  <37.996975, 40.573025, 43.994366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.908424, 40.919174, 44.174194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452204, -0.499546, 0.738895,
		0.864005, -0.039726, 0.501914,
		-0.221376, 0.865376, 0.449574,
		37.842010, 41.178787, 44.309067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.328918, 40.574074, 44.693462>,  <37.996975, 40.573025, 43.994366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.328918, 40.574074, 44.693462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.003490, 40.804565, 44.662308>,  <37.808235, 40.942860, 44.643616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.003490, 40.804565, 44.662308>,  <38.328918, 40.574074, 44.693462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.003490, 40.804565, 44.662308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423489, -0.495394, 0.758447,
		0.398455, 0.650033, 0.647063,
		-0.813567, 0.576231, -0.077890,
		37.759418, 40.977436, 44.638943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.113323, 40.712288, 45.345234>,  <38.328918, 40.574074, 44.693462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.113323, 40.712288, 45.345234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.779610, 40.813110, 45.149097>,  <37.579380, 40.873604, 45.031414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.779610, 40.813110, 45.149097>,  <38.113323, 40.712288, 45.345234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.779610, 40.813110, 45.149097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.549793, -0.446772, 0.705778,
		-0.041178, 0.858407, 0.511313,
		-0.834285, 0.252054, -0.490344,
		37.529324, 40.888725, 45.001995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.547054, 40.736588, 45.868992>,  <38.113323, 40.712288, 45.345234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.547054, 40.736588, 45.868992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.335663, 40.744263, 45.529499>,  <37.208828, 40.748867, 45.325802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.335663, 40.744263, 45.529499>,  <37.547054, 40.736588, 45.868992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.335663, 40.744263, 45.529499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.730160, -0.520312, 0.442880,
		-0.433106, 0.853761, 0.288984,
		-0.528475, 0.019191, -0.848732,
		37.177120, 40.750019, 45.274879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.953693, 41.028667, 46.010593>,  <37.547054, 40.736588, 45.868992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.953693, 41.028667, 46.010593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.890102, 40.800720, 45.688110>,  <36.851948, 40.663952, 45.494621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.890102, 40.800720, 45.688110>,  <36.953693, 41.028667, 46.010593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.890102, 40.800720, 45.688110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.791268, -0.414816, 0.449247,
		-0.590441, 0.709349, -0.384973,
		-0.158980, -0.569870, -0.806209,
		36.842407, 40.629761, 45.446247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.318710, 41.186787, 45.868999>,  <36.953693, 41.028667, 46.010593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.318710, 41.186787, 45.868999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.380920, 40.836540, 45.686089>,  <36.418247, 40.626392, 45.576340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.380920, 40.836540, 45.686089>,  <36.318710, 41.186787, 45.868999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.380920, 40.836540, 45.686089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.865181, -0.344143, 0.364730,
		-0.476734, 0.338906, -0.811090,
		0.155522, -0.875619, -0.457279,
		36.427578, 40.573856, 45.548904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.675064, 41.040253, 45.663708>,  <36.318710, 41.186787, 45.868999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.675064, 41.040253, 45.663708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.862713, 40.689735, 45.619827>,  <35.975304, 40.479424, 45.593498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.862713, 40.689735, 45.619827>,  <35.675064, 41.040253, 45.663708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.862713, 40.689735, 45.619827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.797797, -0.473785, 0.372891,
		-0.378737, -0.087411, -0.921367,
		0.469125, -0.876292, -0.109704,
		36.003448, 40.426849, 45.586914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.171421, 40.572884, 45.359432>,  <35.675064, 41.040253, 45.663708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.171421, 40.572884, 45.359432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.443825, 40.356857, 45.557243>,  <35.607265, 40.227242, 45.675930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.443825, 40.356857, 45.557243>,  <35.171421, 40.572884, 45.359432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.443825, 40.356857, 45.557243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.730897, -0.542774, 0.413746,
		0.044964, -0.643211, -0.764367,
		0.681005, -0.540070, 0.494527,
		35.648125, 40.194836, 45.705601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.884296, 39.942142, 45.232975>,  <35.171421, 40.572884, 45.359432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.884296, 39.942142, 45.232975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.134068, 39.932053, 45.545242>,  <35.283932, 39.925999, 45.732605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.134068, 39.932053, 45.545242>,  <34.884296, 39.942142, 45.232975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.134068, 39.932053, 45.545242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.576767, -0.688876, 0.439078,
		0.526711, -0.724440, -0.444704,
		0.624432, -0.025223, 0.780672,
		35.321396, 39.924484, 45.779446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.916790, 39.290894, 45.342632>,  <34.884296, 39.942142, 45.232975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.916790, 39.290894, 45.342632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.039848, 39.470604, 45.678135>,  <35.113686, 39.578430, 45.879436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.039848, 39.470604, 45.678135>,  <34.916790, 39.290894, 45.342632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.039848, 39.470604, 45.678135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487198, -0.682805, 0.544441,
		0.817307, -0.576135, 0.008820,
		0.307650, 0.449273, 0.838752,
		35.132145, 39.605385, 45.929760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.187969, 38.749916, 45.783119>,  <34.916790, 39.290894, 45.342632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.187969, 38.749916, 45.783119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.099869, 39.057083, 46.023720>,  <35.047009, 39.241383, 46.168079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.099869, 39.057083, 46.023720>,  <35.187969, 38.749916, 45.783119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.099869, 39.057083, 46.023720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447470, -0.627471, 0.637221,
		0.866752, -0.128804, 0.481819,
		-0.220251, 0.767913, 0.601498,
		35.033794, 39.287457, 46.204170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.218140, 38.467167, 46.447269>,  <35.187969, 38.749916, 45.783119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.218140, 38.467167, 46.447269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.013985, 38.804924, 46.512379>,  <34.891491, 39.007580, 46.551445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.013985, 38.804924, 46.512379>,  <35.218140, 38.467167, 46.447269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.013985, 38.804924, 46.512379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469396, -0.432153, 0.770007,
		0.720533, 0.316602, 0.616924,
		-0.510391, 0.844397, 0.162769,
		34.860867, 39.058243, 46.561211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.277229, 38.572338, 47.087906>,  <35.218140, 38.467167, 46.447269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.277229, 38.572338, 47.087906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.941864, 38.749557, 46.960930>,  <34.740643, 38.855888, 46.884743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.941864, 38.749557, 46.960930>,  <35.277229, 38.572338, 47.087906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.941864, 38.749557, 46.960930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499812, -0.392710, 0.771989,
		0.217364, 0.805909, 0.550694,
		-0.838416, 0.443046, -0.317441,
		34.690338, 38.882473, 46.865696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.984062, 38.602917, 47.732456>,  <35.277229, 38.572338, 47.087906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.984062, 38.602917, 47.732456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.677010, 38.737923, 47.514534>,  <34.492779, 38.818928, 47.383781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.677010, 38.737923, 47.514534>,  <34.984062, 38.602917, 47.732456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.677010, 38.737923, 47.514534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.637615, -0.316422, 0.702371,
		0.064672, 0.886544, 0.458103,
		-0.767636, 0.337517, -0.544810,
		34.446720, 38.839176, 47.351089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.591148, 39.145836, 48.189556>,  <34.984062, 38.602917, 47.732456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.591148, 39.145836, 48.189556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.378510, 38.970734, 47.899513>,  <34.250927, 38.865673, 47.725487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.378510, 38.970734, 47.899513>,  <34.591148, 39.145836, 48.189556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.378510, 38.970734, 47.899513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.629185, -0.369028, 0.684065,
		-0.567035, 0.819872, -0.079254,
		-0.531598, -0.437754, -0.725103,
		34.219028, 38.839409, 47.681984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.849049, 39.194695, 48.458344>,  <34.591148, 39.145836, 48.189556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.849049, 39.194695, 48.458344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.881729, 38.923950, 48.165718>,  <33.901337, 38.761501, 47.990143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.881729, 38.923950, 48.165718>,  <33.849049, 39.194695, 48.458344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.881729, 38.923950, 48.165718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411833, -0.691346, 0.593661,
		-0.907589, 0.252775, -0.335241,
		0.081704, -0.676864, -0.731560,
		33.906242, 38.720890, 47.946251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.253475, 39.099796, 48.314751>,  <33.849049, 39.194695, 48.458344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.253475, 39.099796, 48.314751> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.414124, 38.767044, 48.161552>,  <33.510513, 38.567394, 48.069633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.414124, 38.767044, 48.161552>,  <33.253475, 39.099796, 48.314751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.414124, 38.767044, 48.161552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.609443, -0.554928, 0.566245,
		-0.683581, 0.006001, -0.729850,
		0.401616, -0.831876, -0.382996,
		33.534607, 38.517483, 48.046654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.703224, 38.648167, 48.105087>,  <33.253475, 39.099796, 48.314751>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.703224, 38.648167, 48.105087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.035950, 38.432404, 48.157425>,  <33.235584, 38.302944, 48.188828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.035950, 38.432404, 48.157425>,  <32.703224, 38.648167, 48.105087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.035950, 38.432404, 48.157425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490075, -0.603066, 0.629395,
		-0.260596, -0.587662, -0.765991,
		0.831815, -0.539411, 0.130842,
		33.285496, 38.270580, 48.196678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.561676, 37.980988, 47.950363>,  <32.703224, 38.648167, 48.105087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.561676, 37.980988, 47.950363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.876122, 37.981590, 48.197594>,  <33.064789, 37.981953, 48.345932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.876122, 37.981590, 48.197594>,  <32.561676, 37.980988, 47.950363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.876122, 37.981590, 48.197594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492967, -0.601691, 0.628452,
		0.372839, -0.798728, -0.472255,
		0.786114, 0.001506, 0.618080,
		33.111958, 37.982040, 48.383018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.543087, 37.286568, 48.212376>,  <32.561676, 37.980988, 47.950363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.543087, 37.286568, 48.212376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.797188, 37.467674, 48.462643>,  <32.949650, 37.576336, 48.612801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.797188, 37.467674, 48.462643>,  <32.543087, 37.286568, 48.212376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.797188, 37.467674, 48.462643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387575, -0.513833, 0.765351,
		0.668009, -0.728686, -0.150936,
		0.635256, 0.452762, 0.625665,
		32.987766, 37.603504, 48.650341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.675831, 36.790913, 48.650360>,  <32.543087, 37.286568, 48.212376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.675831, 36.790913, 48.650360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.801941, 37.114799, 48.848335>,  <32.877609, 37.309132, 48.967121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.801941, 37.114799, 48.848335>,  <32.675831, 36.790913, 48.650360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.801941, 37.114799, 48.848335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323082, -0.398802, 0.858240,
		0.892310, -0.430491, 0.135869,
		0.315279, 0.809713, 0.494938,
		32.896526, 37.357712, 48.996819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.198521, 36.578602, 49.084797>,  <32.675831, 36.790913, 48.650360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.198521, 36.578602, 49.084797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.026985, 36.901756, 49.246498>,  <32.924065, 37.095650, 49.343517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.026985, 36.901756, 49.246498>,  <33.198521, 36.578602, 49.084797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.026985, 36.901756, 49.246498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114259, -0.492399, 0.862837,
		0.896127, 0.323828, 0.303467,
		-0.428838, 0.807885, 0.404252,
		32.898335, 37.144123, 49.367775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.458611, 36.569424, 49.719704>,  <33.198521, 36.578602, 49.084797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.458611, 36.569424, 49.719704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.154556, 36.827736, 49.748474>,  <32.972126, 36.982723, 49.765736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.154556, 36.827736, 49.748474>,  <33.458611, 36.569424, 49.719704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.154556, 36.827736, 49.748474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240508, -0.382457, 0.892123,
		0.603619, 0.660833, 0.446032,
		-0.760132, 0.645776, 0.071922,
		32.926517, 37.021469, 49.770050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.496647, 36.880878, 50.416740>,  <33.458611, 36.569424, 49.719704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.496647, 36.880878, 50.416740> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.127262, 36.912720, 50.266598>,  <32.905632, 36.931824, 50.176514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.127262, 36.912720, 50.266598>,  <33.496647, 36.880878, 50.416740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.127262, 36.912720, 50.266598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383600, -0.214044, 0.898352,
		-0.008835, 0.973576, 0.228195,
		-0.923457, 0.079599, -0.375354,
		32.850224, 36.936600, 50.153992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.146351, 37.207653, 50.919308>,  <33.496647, 36.880878, 50.416740>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.146351, 37.207653, 50.919308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.840603, 37.054497, 50.711792>,  <32.657154, 36.962605, 50.587284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.840603, 37.054497, 50.711792>,  <33.146351, 37.207653, 50.919308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.840603, 37.054497, 50.711792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475741, -0.208186, 0.854593,
		-0.435217, 0.900032, -0.023024,
		-0.764367, -0.382887, -0.518788,
		32.611294, 36.939632, 50.556156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.621498, 37.418701, 51.279095>,  <33.146351, 37.207653, 50.919308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.621498, 37.418701, 51.279095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.441681, 37.141243, 51.053967>,  <32.333790, 36.974770, 50.918888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.441681, 37.141243, 51.053967>,  <32.621498, 37.418701, 51.279095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.441681, 37.141243, 51.053967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487725, -0.337267, 0.805217,
		-0.748358, 0.636479, -0.186694,
		-0.449538, -0.693646, -0.562823,
		32.306820, 36.933147, 50.885120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.840548, 37.494984, 51.369862>,  <32.621498, 37.418701, 51.279095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.840548, 37.494984, 51.369862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.933590, 37.120651, 51.263950>,  <31.989416, 36.896049, 51.200401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.933590, 37.120651, 51.263950>,  <31.840548, 37.494984, 51.369862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.933590, 37.120651, 51.263950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.639271, -0.352291, 0.683538,
		-0.732958, 0.010272, -0.680196,
		0.232606, -0.935834, -0.264781,
		32.003372, 36.839901, 51.184517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.154129, 37.204437, 51.408566>,  <31.840548, 37.494984, 51.369862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.154129, 37.204437, 51.408566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.426006, 36.911995, 51.432220>,  <31.589132, 36.736530, 51.446415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.426006, 36.911995, 51.432220>,  <31.154129, 37.204437, 51.408566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.426006, 36.911995, 51.432220> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.533463, -0.437392, 0.723951,
		-0.503421, -0.523612, -0.687312,
		0.679694, -0.731108, 0.059135,
		31.629915, 36.692661, 51.449963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.830193, 36.587898, 51.284790>,  <31.154129, 37.204437, 51.408566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.830193, 36.587898, 51.284790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.163555, 36.465446, 51.468838>,  <31.363573, 36.391975, 51.579266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.163555, 36.465446, 51.468838>,  <30.830193, 36.587898, 51.284790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.163555, 36.465446, 51.468838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.549156, -0.552288, 0.627220,
		0.062110, -0.775411, -0.628395,
		0.833409, -0.306130, 0.460124,
		31.413578, 36.373608, 51.606876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.942719, 35.828606, 51.389736>,  <30.830193, 36.587898, 51.284790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.942719, 35.828606, 51.389736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.144875, 35.995171, 51.692043>,  <31.266169, 36.095108, 51.873428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.144875, 35.995171, 51.692043>,  <30.942719, 35.828606, 51.389736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.144875, 35.995171, 51.692043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376598, -0.681593, 0.627380,
		0.776372, -0.601692, -0.187651,
		0.505391, 0.416412, 0.755766,
		31.296492, 36.120094, 51.918774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.541683, 35.508003, 51.792133>,  <30.942719, 35.828606, 51.389736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.541683, 35.508003, 51.792133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.302214, 35.723022, 52.029667>,  <31.158531, 35.852032, 52.172188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.302214, 35.723022, 52.029667>,  <31.541683, 35.508003, 51.792133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.302214, 35.723022, 52.029667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192156, -0.816103, 0.545025,
		0.777603, 0.212184, 0.591871,
		-0.598673, 0.537545, 0.593832,
		31.122612, 35.884285, 52.207817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.731354, 35.275349, 52.428223>,  <31.541683, 35.508003, 51.792133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.731354, 35.275349, 52.428223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.358313, 35.418991, 52.413799>,  <31.134489, 35.505177, 52.405144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.358313, 35.418991, 52.413799>,  <31.731354, 35.275349, 52.428223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.358313, 35.418991, 52.413799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298094, -0.710104, 0.637881,
		0.203456, 0.605638, 0.769290,
		-0.932601, 0.359102, -0.036063,
		31.078531, 35.526722, 52.402981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.412060, 35.581528, 53.125328>,  <31.731354, 35.275349, 52.428223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.412060, 35.581528, 53.125328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.187773, 35.402306, 52.846806>,  <31.053202, 35.294773, 52.679691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.187773, 35.402306, 52.846806>,  <31.412060, 35.581528, 53.125328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.187773, 35.402306, 52.846806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078392, -0.808437, 0.583338,
		-0.824289, 0.381672, 0.418180,
		-0.560716, -0.448057, -0.696306,
		31.019558, 35.267887, 52.637913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.909176, 35.512390, 53.539387>,  <31.412060, 35.581528, 53.125328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.909176, 35.512390, 53.539387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.909849, 35.251343, 53.236313>,  <30.910254, 35.094715, 53.054470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.909849, 35.251343, 53.236313>,  <30.909176, 35.512390, 53.539387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.909849, 35.251343, 53.236313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285500, -0.726465, 0.625091,
		-0.958377, 0.215268, -0.187544,
		0.001682, -0.652617, -0.757686,
		30.910355, 35.055557, 53.009007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.233677, 35.937450, 53.965363>,  <30.909176, 35.512390, 53.539387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.233677, 35.937450, 53.965363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.428160, 35.900513, 54.312943>,  <31.544849, 35.878349, 54.521492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.428160, 35.900513, 54.312943>,  <31.233677, 35.937450, 53.965363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.428160, 35.900513, 54.312943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.862141, 0.212883, -0.459776,
		-0.142530, 0.972704, 0.183115,
		0.486209, -0.092340, 0.868950,
		31.574022, 35.872810, 54.573627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.601646, 36.541885, 54.009399>,  <31.233677, 35.937450, 53.965363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.601646, 36.541885, 54.009399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.785301, 36.249397, 54.211193>,  <31.895494, 36.073902, 54.332268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.785301, 36.249397, 54.211193>,  <31.601646, 36.541885, 54.009399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.785301, 36.249397, 54.211193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.838309, 0.168696, -0.518439,
		0.293990, 0.660949, 0.690446,
		0.459138, -0.731223, 0.504485,
		31.923042, 36.030029, 54.362537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.288750, 36.388790, 53.626469>,  <31.601646, 36.541885, 54.009399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.288750, 36.388790, 53.626469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.369312, 36.083374, 53.871887>,  <32.417648, 35.900124, 54.019138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.369312, 36.083374, 53.871887>,  <32.288750, 36.388790, 53.626469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.369312, 36.083374, 53.871887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.977753, 0.194199, -0.079286,
		-0.058612, 0.615865, 0.785669,
		0.201406, -0.763543, 0.613546,
		32.429733, 35.854313, 54.055950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.523975, 36.630562, 54.183712>,  <32.288750, 36.388790, 53.626469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.523975, 36.630562, 54.183712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.655067, 36.262192, 54.099350>,  <32.733723, 36.041168, 54.048733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.655067, 36.262192, 54.099350>,  <32.523975, 36.630562, 54.183712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.655067, 36.262192, 54.099350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.932348, 0.351344, -0.085349,
		0.152699, -0.168663, 0.973774,
		0.327734, -0.920929, -0.210902,
		32.753387, 35.985912, 54.036079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.137871, 36.414032, 54.608128>,  <32.523975, 36.630562, 54.183712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.137871, 36.414032, 54.608128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.137650, 36.219849, 54.258423>,  <33.137516, 36.103340, 54.048599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.137650, 36.219849, 54.258423>,  <33.137871, 36.414032, 54.608128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.137650, 36.219849, 54.258423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.858991, 0.447384, -0.248963,
		0.511990, -0.751118, 0.416758,
		-0.000550, -0.485458, -0.874260,
		33.137486, 36.074211, 53.996143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.881454, 36.276711, 54.378136>,  <33.137871, 36.414032, 54.608128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.881454, 36.276711, 54.378136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.670090, 36.206757, 54.045822>,  <33.543270, 36.164783, 53.846436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.670090, 36.206757, 54.045822>,  <33.881454, 36.276711, 54.378136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.670090, 36.206757, 54.045822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.703241, 0.458072, -0.543712,
		0.475645, -0.871542, -0.119063,
		-0.528408, -0.174884, -0.830784,
		33.511566, 36.154293, 53.796589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.321938, 35.900520, 53.893524>,  <33.881454, 36.276711, 54.378136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.321938, 35.900520, 53.893524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.038399, 36.090782, 53.685181>,  <33.868275, 36.204941, 53.560177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.038399, 36.090782, 53.685181>,  <34.321938, 35.900520, 53.893524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.038399, 36.090782, 53.685181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.703686, 0.425975, -0.568656,
		-0.048613, -0.769608, -0.636663,
		-0.708845, 0.475655, -0.520855,
		33.825745, 36.233479, 53.528923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.679047, 35.911934, 53.268333>,  <34.321938, 35.900520, 53.893524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.679047, 35.911934, 53.268333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.379494, 36.169617, 53.206139>,  <34.199760, 36.324226, 53.168823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.379494, 36.169617, 53.206139>,  <34.679047, 35.911934, 53.268333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.379494, 36.169617, 53.206139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.618970, 0.596123, -0.511384,
		-0.236748, -0.479207, -0.845169,
		-0.748884, 0.644203, -0.155483,
		34.154827, 36.362877, 53.159492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.615601, 36.062256, 52.471348>,  <34.679047, 35.911934, 53.268333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.615601, 36.062256, 52.471348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.443199, 36.366608, 52.665375>,  <34.339756, 36.549221, 52.781792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.443199, 36.366608, 52.665375>,  <34.615601, 36.062256, 52.471348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.443199, 36.366608, 52.665375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535950, 0.648332, -0.540762,
		-0.725942, 0.026901, -0.687230,
		-0.431006, 0.760883, 0.485068,
		34.313896, 36.594872, 52.810894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.403240, 36.547180, 51.925884>,  <34.615601, 36.062256, 52.471348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.403240, 36.547180, 51.925884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.432487, 36.752983, 52.267628>,  <34.450035, 36.876465, 52.472675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.432487, 36.752983, 52.267628>,  <34.403240, 36.547180, 51.925884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.432487, 36.752983, 52.267628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409363, 0.765683, -0.496137,
		-0.909437, 0.386022, -0.154634,
		0.073119, 0.514507, 0.854363,
		34.454422, 36.907333, 52.523937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.094284, 37.284557, 51.839558>,  <34.403240, 36.547180, 51.925884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.094284, 37.284557, 51.839558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.330803, 37.304298, 52.161533>,  <34.472713, 37.316143, 52.354721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.330803, 37.304298, 52.161533>,  <34.094284, 37.284557, 51.839558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.330803, 37.304298, 52.161533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263243, 0.931641, -0.250497,
		-0.762282, 0.360014, 0.537882,
		0.591295, 0.049355, 0.804944,
		34.508190, 37.319103, 52.403015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.937302, 38.052639, 52.105221>,  <34.094284, 37.284557, 51.839558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.937302, 38.052639, 52.105221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.289558, 37.891747, 52.205360>,  <34.500912, 37.795212, 52.265442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.289558, 37.891747, 52.205360>,  <33.937302, 38.052639, 52.105221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.289558, 37.891747, 52.205360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467038, 0.825832, -0.316033,
		-0.079624, 0.395234, 0.915123,
		0.880645, -0.402233, 0.250345,
		34.553753, 37.771076, 52.280464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.360149, 38.609077, 52.289169>,  <33.937302, 38.052639, 52.105221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.360149, 38.609077, 52.289169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.628510, 38.320732, 52.219589>,  <34.789524, 38.147724, 52.177841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.628510, 38.320732, 52.219589>,  <34.360149, 38.609077, 52.289169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.628510, 38.320732, 52.219589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.654191, 0.685804, -0.318915,
		0.349188, 0.100163, 0.931684,
		0.670896, -0.720861, -0.173949,
		34.829777, 38.104473, 52.167404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.918579, 38.969433, 52.534676>,  <34.360149, 38.609077, 52.289169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.918579, 38.969433, 52.534676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.082397, 38.659729, 52.341679>,  <35.180687, 38.473907, 52.225880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.082397, 38.659729, 52.341679>,  <34.918579, 38.969433, 52.534676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.082397, 38.659729, 52.341679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.689914, 0.608895, -0.391492,
		0.596901, -0.172543, 0.783542,
		0.409545, -0.774258, -0.482490,
		35.205261, 38.427452, 52.196930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.711979, 38.952347, 52.593674>,  <34.918579, 38.969433, 52.534676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.711979, 38.952347, 52.593674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.630989, 38.752861, 52.256557>,  <35.582394, 38.633171, 52.054287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.630989, 38.752861, 52.256557>,  <35.711979, 38.952347, 52.593674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.630989, 38.752861, 52.256557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.773847, 0.445930, -0.449786,
		0.600138, -0.743259, 0.295637,
		-0.202474, -0.498711, -0.842788,
		35.570248, 38.603249, 52.003719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.372417, 38.818905, 52.295334>,  <35.711979, 38.952347, 52.593674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.372417, 38.818905, 52.295334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.115726, 38.758232, 51.994621>,  <35.961712, 38.721828, 51.814194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.115726, 38.758232, 51.994621>,  <36.372417, 38.818905, 52.295334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.115726, 38.758232, 51.994621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.700598, 0.282851, -0.655101,
		0.312013, -0.947094, -0.075240,
		-0.641724, -0.151687, -0.751786,
		35.923210, 38.712727, 51.769085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.739819, 38.362976, 51.766739>,  <36.372417, 38.818905, 52.295334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.739819, 38.362976, 51.766739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.456757, 38.577499, 51.582741>,  <36.286919, 38.706215, 51.472343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.456757, 38.577499, 51.582741>,  <36.739819, 38.362976, 51.766739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.456757, 38.577499, 51.582741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.670601, 0.304770, -0.676321,
		-0.222523, -0.787076, -0.575321,
		-0.707657, 0.536308, -0.459996,
		36.244461, 38.738392, 51.444740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.806808, 38.308113, 51.012108>,  <36.739819, 38.362976, 51.766739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.806808, 38.308113, 51.012108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.584541, 38.638092, 51.053482>,  <36.451180, 38.836079, 51.078304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.584541, 38.638092, 51.053482>,  <36.806808, 38.308113, 51.012108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.584541, 38.638092, 51.053482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531573, 0.448173, -0.718729,
		-0.639269, -0.344391, -0.687554,
		-0.555667, 0.824946, 0.103434,
		36.417843, 38.885574, 51.084511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.499260, 38.442867, 50.458160>,  <36.806808, 38.308113, 51.012108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.499260, 38.442867, 50.458160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.492767, 38.813469, 50.608536>,  <36.488873, 39.035831, 50.698761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.492767, 38.813469, 50.608536>,  <36.499260, 38.442867, 50.458160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.492767, 38.813469, 50.608536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443206, 0.343693, -0.827915,
		-0.896273, 0.153181, -0.416210,
		-0.016228, 0.926504, 0.375934,
		36.487900, 39.091419, 50.721317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.371750, 38.872585, 49.860344>,  <36.499260, 38.442867, 50.458160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.371750, 38.872585, 49.860344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.500328, 39.119995, 50.147148>,  <36.577473, 39.268440, 50.319229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.500328, 39.119995, 50.147148>,  <36.371750, 38.872585, 49.860344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.500328, 39.119995, 50.147148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484069, 0.543445, -0.685817,
		-0.813851, 0.567531, -0.124724,
		0.321441, 0.618528, 0.717007,
		36.596760, 39.305553, 50.362251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.280460, 39.533398, 49.586037>,  <36.371750, 38.872585, 49.860344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.280460, 39.533398, 49.586037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.564156, 39.575104, 49.864925>,  <36.734371, 39.600128, 50.032257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.564156, 39.575104, 49.864925>,  <36.280460, 39.533398, 49.586037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.564156, 39.575104, 49.864925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569469, 0.498255, -0.653794,
		-0.415559, 0.860739, 0.294007,
		0.709237, 0.104262, 0.697218,
		36.776928, 39.606384, 50.074089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.554241, 40.222237, 49.532864>,  <36.280460, 39.533398, 49.586037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.554241, 40.222237, 49.532864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.829514, 40.006905, 49.727432>,  <36.994678, 39.877705, 49.844173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.829514, 40.006905, 49.727432>,  <36.554241, 40.222237, 49.532864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.829514, 40.006905, 49.727432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.676667, 0.234325, -0.698007,
		0.261775, 0.809503, 0.525527,
		0.688183, -0.538327, 0.486423,
		37.035969, 39.845406, 49.873360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.138573, 40.720993, 49.591026>,  <36.554241, 40.222237, 49.532864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.138573, 40.720993, 49.591026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.290665, 40.351959, 49.617126>,  <37.381920, 40.130539, 49.632786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.290665, 40.351959, 49.617126>,  <37.138573, 40.720993, 49.591026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.290665, 40.351959, 49.617126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.728480, 0.255270, -0.635731,
		0.569859, 0.289264, 0.769147,
		0.380234, -0.922585, 0.065255,
		37.404736, 40.075184, 49.636703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.782555, 40.898144, 49.652439>,  <37.138573, 40.720993, 49.591026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.782555, 40.898144, 49.652439> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.780262, 40.510193, 49.555031>,  <37.778885, 40.277424, 49.496586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.780262, 40.510193, 49.555031>,  <37.782555, 40.898144, 49.652439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.780262, 40.510193, 49.555031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.830661, 0.130965, -0.541157,
		0.556749, -0.205387, 0.804889,
		-0.005734, -0.969879, -0.243521,
		37.778542, 40.219231, 49.481976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.389088, 40.649445, 49.922939>,  <37.782555, 40.898144, 49.652439>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.389088, 40.649445, 49.922939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.261444, 40.409584, 49.629383>,  <38.184860, 40.265667, 49.453251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.261444, 40.409584, 49.629383>,  <38.389088, 40.649445, 49.922939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.261444, 40.409584, 49.629383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.881322, 0.096983, -0.462457,
		0.348487, -0.794363, 0.497538,
		-0.319106, -0.599651, -0.733887,
		38.165710, 40.229691, 49.409218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.023678, 40.358246, 49.615154>,  <38.389088, 40.649445, 49.922939>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.023678, 40.358246, 49.615154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.764389, 40.272560, 49.322876>,  <38.608814, 40.221149, 49.147507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.764389, 40.272560, 49.322876>,  <39.023678, 40.358246, 49.615154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.764389, 40.272560, 49.322876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.739831, 0.049871, -0.670942,
		0.180169, -0.975512, 0.126157,
		-0.648221, -0.214218, -0.730699,
		38.569923, 40.208294, 49.103668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.362553, 39.944874, 49.202957>,  <39.023678, 40.358246, 49.615154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.362553, 39.944874, 49.202957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.073608, 40.120895, 48.989586>,  <38.900242, 40.226509, 48.861561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.073608, 40.120895, 48.989586>,  <39.362553, 39.944874, 49.202957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.073608, 40.120895, 48.989586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.665510, 0.232830, -0.709145,
		-0.187860, -0.867263, -0.461045,
		-0.722361, 0.440050, -0.533433,
		38.856899, 40.252911, 48.829556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.457748, 39.595200, 48.581947>,  <39.362553, 39.944874, 49.202957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.457748, 39.595200, 48.581947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.244114, 39.915054, 48.472160>,  <39.115932, 40.106968, 48.406288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.244114, 39.915054, 48.472160>,  <39.457748, 39.595200, 48.581947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.244114, 39.915054, 48.472160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558434, 0.089924, -0.824660,
		-0.634748, -0.593712, -0.494572,
		-0.534085, 0.799637, -0.274470,
		39.083889, 40.154945, 48.389820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.587345, 39.576336, 47.808777>,  <39.457748, 39.595200, 48.581947>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.587345, 39.576336, 47.808777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.453651, 39.939743, 47.909084>,  <39.373436, 40.157787, 47.969269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.453651, 39.939743, 47.909084>,  <39.587345, 39.576336, 47.808777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.453651, 39.939743, 47.909084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434150, 0.384576, -0.814626,
		-0.836541, -0.163405, -0.522971,
		-0.334236, 0.908515, 0.250771,
		39.353382, 40.212299, 47.984314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.162586, 39.777164, 47.190666>,  <39.587345, 39.576336, 47.808777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.162586, 39.777164, 47.190666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.256741, 40.098465, 47.409527>,  <39.313232, 40.291245, 47.540844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.256741, 40.098465, 47.409527>,  <39.162586, 39.777164, 47.190666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.256741, 40.098465, 47.409527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267545, 0.487670, -0.831022,
		-0.934352, 0.341999, -0.100115,
		0.235386, 0.803252, 0.547156,
		39.327354, 40.339439, 47.573673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.820759, 40.368904, 46.839401>,  <39.162586, 39.777164, 47.190666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.820759, 40.368904, 46.839401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.121956, 40.484863, 47.075691>,  <39.302673, 40.554440, 47.217464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.121956, 40.484863, 47.075691>,  <38.820759, 40.368904, 46.839401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.121956, 40.484863, 47.075691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346642, 0.588304, -0.730574,
		-0.559318, 0.754889, 0.342500,
		0.752996, 0.289898, 0.590725,
		39.347855, 40.571831, 47.252907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.827492, 41.174370, 46.776642>,  <38.820759, 40.368904, 46.839401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.827492, 41.174370, 46.776642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.181488, 41.032822, 46.897682>,  <39.393887, 40.947891, 46.970306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.181488, 41.032822, 46.897682>,  <38.827492, 41.174370, 46.776642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.181488, 41.032822, 46.897682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462930, 0.599150, -0.653235,
		0.049858, 0.718189, 0.694059,
		0.884992, -0.353869, 0.302599,
		39.446987, 40.926662, 46.988461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.249855, 41.735729, 46.791412>,  <38.827492, 41.174370, 46.776642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.249855, 41.735729, 46.791412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.507896, 41.430183, 46.798882>,  <39.662720, 41.246857, 46.803364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.507896, 41.430183, 46.798882>,  <39.249855, 41.735729, 46.791412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.507896, 41.430183, 46.798882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518430, 0.419612, -0.745088,
		0.561311, 0.490341, 0.666705,
		0.645105, -0.763866, 0.018675,
		39.701427, 41.201023, 46.804485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.811642, 42.021854, 46.623322>,  <39.249855, 41.735729, 46.791412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.811642, 42.021854, 46.623322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.932095, 41.646027, 46.558182>,  <40.004368, 41.420528, 46.519096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.932095, 41.646027, 46.558182>,  <39.811642, 42.021854, 46.623322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.932095, 41.646027, 46.558182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.672592, 0.330338, -0.662191,
		0.675974, 0.089874, 0.731425,
		0.301131, -0.939574, -0.162852,
		40.022434, 41.364155, 46.509327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.551773, 41.974361, 46.707733>,  <39.811642, 42.021854, 46.623322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.551773, 41.974361, 46.707733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.444946, 41.689667, 46.447853>,  <40.380852, 41.518848, 46.291924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.444946, 41.689667, 46.447853>,  <40.551773, 41.974361, 46.707733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.444946, 41.689667, 46.447853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.701810, 0.318377, -0.637259,
		0.660409, -0.626154, 0.414476,
		-0.267062, -0.711735, -0.649700,
		40.364826, 41.476147, 46.252941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.132225, 41.616627, 46.617710>,  <40.551773, 41.974361, 46.707733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.132225, 41.616627, 46.617710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.901787, 41.517487, 46.306152>,  <40.763523, 41.458000, 46.119217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.901787, 41.517487, 46.306152>,  <41.132225, 41.616627, 46.617710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.901787, 41.517487, 46.306152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.736655, 0.255488, -0.626151,
		0.354193, -0.934502, 0.035398,
		-0.576096, -0.247855, -0.778898,
		40.728958, 41.443130, 46.072483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.524349, 41.339878, 46.131786>,  <41.132225, 41.616627, 46.617710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.524349, 41.339878, 46.131786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.211971, 41.410629, 45.892174>,  <41.024544, 41.453079, 45.748405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.211971, 41.410629, 45.892174>,  <41.524349, 41.339878, 46.131786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.211971, 41.410629, 45.892174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.623331, 0.281859, -0.729393,
		0.039829, -0.943010, -0.330371,
		-0.780943, 0.176880, -0.599034,
		40.977688, 41.463692, 45.712463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.854080, 41.173500, 45.488461>,  <41.524349, 41.339878, 46.131786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.854080, 41.173500, 45.488461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.511848, 41.332314, 45.355587>,  <41.306507, 41.427601, 45.275864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.511848, 41.332314, 45.355587>,  <41.854080, 41.173500, 45.488461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.511848, 41.332314, 45.355587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449533, 0.251628, -0.857090,
		-0.256705, -0.882638, -0.393766,
		-0.855583, 0.397030, -0.332181,
		41.255173, 41.451424, 45.255932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.730717, 40.945133, 44.760620>,  <41.854080, 41.173500, 45.488461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.730717, 40.945133, 44.760620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.540043, 41.294029, 44.804367>,  <41.425640, 41.503368, 44.830616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.540043, 41.294029, 44.804367>,  <41.730717, 40.945133, 44.760620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.540043, 41.294029, 44.804367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571908, 0.402200, -0.714952,
		-0.667601, -0.278257, -0.690566,
		-0.476686, 0.872243, 0.109371,
		41.397038, 41.555702, 44.837177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.464584, 41.207756, 44.012589>,  <41.730717, 40.945133, 44.760620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.464584, 41.207756, 44.012589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.479057, 41.510597, 44.273502>,  <41.487740, 41.692303, 44.430050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.479057, 41.510597, 44.273502>,  <41.464584, 41.207756, 44.012589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.479057, 41.510597, 44.273502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446229, 0.571794, -0.688427,
		-0.894187, 0.315977, -0.317156,
		0.036180, 0.757107, 0.652289,
		41.489910, 41.737728, 44.469189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.565094, 41.727524, 43.565090>,  <41.464584, 41.207756, 44.012589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.565094, 41.727524, 43.565090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.653812, 41.921440, 43.903507>,  <41.707043, 42.037788, 44.106556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.653812, 41.921440, 43.903507>,  <41.565094, 41.727524, 43.565090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.653812, 41.921440, 43.903507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414400, 0.738537, -0.531823,
		-0.882656, 0.468554, -0.037094,
		0.221792, 0.484788, 0.846043,
		41.720348, 42.066875, 44.157322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.516911, 42.435234, 43.372040>,  <41.565094, 41.727524, 43.565090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.516911, 42.435234, 43.372040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.754673, 42.447998, 43.693451>,  <41.897331, 42.455654, 43.886299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.754673, 42.447998, 43.693451>,  <41.516911, 42.435234, 43.372040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.754673, 42.447998, 43.693451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.577945, 0.677831, -0.454450,
		-0.559156, 0.734525, 0.384470,
		0.594411, 0.031906, 0.803528,
		41.932995, 42.457569, 43.934509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.674389, 43.129330, 43.457546>,  <41.516911, 42.435234, 43.372040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.674389, 43.129330, 43.457546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.947220, 42.936996, 43.677933>,  <42.110920, 42.821598, 43.810165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.947220, 42.936996, 43.677933>,  <41.674389, 43.129330, 43.457546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.947220, 42.936996, 43.677933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.690444, 0.671683, -0.268566,
		-0.240940, 0.563596, 0.790131,
		0.682081, -0.480834, 0.550967,
		42.151844, 42.792747, 43.843224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.122372, 43.641003, 43.689335>,  <41.674389, 43.129330, 43.457546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.122372, 43.641003, 43.689335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.324017, 43.295547, 43.688915>,  <42.445004, 43.088276, 43.688663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.324017, 43.295547, 43.688915>,  <42.122372, 43.641003, 43.689335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.324017, 43.295547, 43.688915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.785033, 0.458740, -0.416271,
		0.359987, 0.209026, 0.909240,
		0.504116, -0.863635, -0.001048,
		42.475250, 43.036457, 43.688602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.746120, 43.812866, 44.018204>,  <42.122372, 43.641003, 43.689335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.746120, 43.812866, 44.018204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.796165, 43.479691, 43.802586>,  <42.826195, 43.279785, 43.673214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.796165, 43.479691, 43.802586>,  <42.746120, 43.812866, 44.018204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.796165, 43.479691, 43.802586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.827088, 0.387640, -0.407014,
		0.547970, -0.394911, 0.737410,
		0.125115, -0.832935, -0.539042,
		42.833698, 43.229809, 43.640873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.583672, 43.772285, 44.713169>,  <42.746120, 43.812866, 44.018204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.583672, 43.772285, 44.713169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.593132, 44.161308, 44.805748>,  <42.598808, 44.394722, 44.861294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.593132, 44.161308, 44.805748>,  <42.583672, 43.772285, 44.713169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.593132, 44.161308, 44.805748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.587920, -0.173715, 0.790046,
		0.808573, -0.154756, 0.567679,
		0.023650, 0.972560, 0.231445,
		42.600227, 44.453075, 44.875183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.663277, 43.683437, 45.420872>,  <42.583672, 43.772285, 44.713169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.663277, 43.683437, 45.420872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.503044, 44.044434, 45.357567>,  <42.406906, 44.261032, 45.319584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.503044, 44.044434, 45.357567>,  <42.663277, 43.683437, 45.420872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.503044, 44.044434, 45.357567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.540343, -0.093188, 0.836269,
		0.739977, 0.420506, 0.524984,
		-0.400579, 0.902491, -0.158260,
		42.382870, 44.315182, 45.310089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.698658, 44.008526, 46.055737>,  <42.663277, 43.683437, 45.420872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.698658, 44.008526, 46.055737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.415886, 44.173775, 45.826099>,  <42.246223, 44.272926, 45.688316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.415886, 44.173775, 45.826099>,  <42.698658, 44.008526, 46.055737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.415886, 44.173775, 45.826099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.616563, 0.037757, 0.786399,
		0.346558, 0.909891, 0.228026,
		-0.706928, 0.413126, -0.574091,
		42.203808, 44.297714, 45.653873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.461788, 44.558613, 46.443813>,  <42.698658, 44.008526, 46.055737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.461788, 44.558613, 46.443813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.165855, 44.506935, 46.179703>,  <41.988297, 44.475929, 46.021236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.165855, 44.506935, 46.179703>,  <42.461788, 44.558613, 46.443813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.165855, 44.506935, 46.179703> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.667106, 0.013532, 0.744840,
		-0.087297, 0.991526, -0.096201,
		-0.739830, -0.129199, -0.660272,
		41.943905, 44.468174, 45.981621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.032810, 45.158577, 46.502247>,  <42.461788, 44.558613, 46.443813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.032810, 45.158577, 46.502247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.815128, 44.857544, 46.353947>,  <41.684517, 44.676922, 46.264965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.815128, 44.857544, 46.353947>,  <42.032810, 45.158577, 46.502247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.815128, 44.857544, 46.353947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.581877, 0.020239, 0.813025,
		-0.604367, 0.658184, -0.448926,
		-0.544206, -0.752585, -0.370750,
		41.651867, 44.631767, 46.242722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.396275, 45.338985, 46.619980>,  <42.032810, 45.158577, 46.502247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.396275, 45.338985, 46.619980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.335064, 44.948914, 46.555958>,  <41.298336, 44.714870, 46.517544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.335064, 44.948914, 46.555958>,  <41.396275, 45.338985, 46.619980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.335064, 44.948914, 46.555958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.594139, -0.038631, 0.803434,
		-0.789672, 0.218039, -0.573478,
		-0.153025, -0.975175, -0.160051,
		41.289158, 44.656361, 46.507942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.648060, 45.234241, 46.607952>,  <41.396275, 45.338985, 46.619980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.648060, 45.234241, 46.607952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.808815, 44.877991, 46.693062>,  <40.905266, 44.664242, 46.744129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.808815, 44.877991, 46.693062>,  <40.648060, 45.234241, 46.607952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.808815, 44.877991, 46.693062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.725385, -0.167836, 0.667568,
		-0.558843, -0.422629, -0.713498,
		0.401885, -0.890626, 0.212775,
		40.929382, 44.610802, 46.756893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.080769, 44.697754, 46.585270>,  <40.648060, 45.234241, 46.607952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.080769, 44.697754, 46.585270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.375717, 44.550140, 46.811577>,  <40.552685, 44.461571, 46.947361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.375717, 44.550140, 46.811577>,  <40.080769, 44.697754, 46.585270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.375717, 44.550140, 46.811577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.661762, -0.226670, 0.714627,
		-0.135478, -0.901352, -0.411352,
		0.737372, -0.369033, 0.565771,
		40.596928, 44.439430, 46.981308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.883007, 43.914577, 46.788548>,  <40.080769, 44.697754, 46.585270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.883007, 43.914577, 46.788548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.149956, 44.028412, 47.063828>,  <40.310127, 44.096714, 47.228996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.149956, 44.028412, 47.063828>,  <39.883007, 43.914577, 46.788548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.149956, 44.028412, 47.063828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492394, -0.524671, 0.694456,
		0.558712, -0.802329, -0.210023,
		0.667375, 0.284587, 0.688201,
		40.350166, 44.113789, 47.270287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.795296, 43.395370, 47.195618>,  <39.883007, 43.914577, 46.788548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.795296, 43.395370, 47.195618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.016403, 43.631180, 47.431213>,  <40.149067, 43.772667, 47.572571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.016403, 43.631180, 47.431213>,  <39.795296, 43.395370, 47.195618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.016403, 43.631180, 47.431213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223807, -0.575802, 0.786360,
		0.802721, -0.566494, -0.186344,
		0.552766, 0.589522, 0.588993,
		40.182232, 43.808037, 47.607910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.135872, 42.986137, 47.685299>,  <39.795296, 43.395370, 47.195618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.135872, 42.986137, 47.685299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.167534, 43.351509, 47.844990>,  <40.186531, 43.570732, 47.940804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.167534, 43.351509, 47.844990>,  <40.135872, 42.986137, 47.685299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.167534, 43.351509, 47.844990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199034, -0.377938, 0.904184,
		0.976790, -0.151035, 0.151886,
		0.079160, 0.913428, 0.399227,
		40.191280, 43.625538, 47.964760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.553318, 42.912209, 48.245598>,  <40.135872, 42.986137, 47.685299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.553318, 42.912209, 48.245598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.350990, 43.250252, 48.314800>,  <40.229595, 43.453079, 48.356323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.350990, 43.250252, 48.314800>,  <40.553318, 42.912209, 48.245598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.350990, 43.250252, 48.314800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152534, -0.285018, 0.946308,
		0.849046, 0.452271, 0.273076,
		-0.505820, 0.845113, 0.173007,
		40.199245, 43.503784, 48.366703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.670872, 43.182537, 48.953777>,  <40.553318, 42.912209, 48.245598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.670872, 43.182537, 48.953777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.330727, 43.371277, 48.860622>,  <40.126640, 43.484520, 48.804729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.330727, 43.371277, 48.860622>,  <40.670872, 43.182537, 48.953777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.330727, 43.371277, 48.860622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387051, -0.261077, 0.884325,
		0.356472, 0.842136, 0.404642,
		-0.850364, 0.471854, -0.232883,
		40.075619, 43.512833, 48.790756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.527954, 43.641300, 49.526646>,  <40.670872, 43.182537, 48.953777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.527954, 43.641300, 49.526646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.179565, 43.561028, 49.347252>,  <39.970531, 43.512863, 49.239616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.179565, 43.561028, 49.347252>,  <40.527954, 43.641300, 49.526646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.179565, 43.561028, 49.347252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373498, -0.322639, 0.869714,
		-0.319233, 0.925003, 0.206056,
		-0.870971, -0.200680, -0.448484,
		39.918274, 43.500824, 49.212708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.966759, 44.084755, 49.887890>,  <40.527954, 43.641300, 49.526646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.966759, 44.084755, 49.887890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.776581, 43.766815, 49.737072>,  <39.662476, 43.576050, 49.646584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.776581, 43.766815, 49.737072>,  <39.966759, 44.084755, 49.887890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.776581, 43.766815, 49.737072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383162, -0.198701, 0.902056,
		-0.791921, 0.573346, -0.210086,
		-0.475445, -0.794854, -0.377040,
		39.633945, 43.528358, 49.623959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.304417, 44.065411, 50.179306>,  <39.966759, 44.084755, 49.887890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.304417, 44.065411, 50.179306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.307243, 43.707916, 49.999893>,  <39.308941, 43.493420, 49.892246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.307243, 43.707916, 49.999893>,  <39.304417, 44.065411, 50.179306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.307243, 43.707916, 49.999893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477730, -0.397064, 0.783654,
		-0.878478, 0.208739, -0.429772,
		0.007068, -0.893738, -0.448533,
		39.309364, 43.439796, 49.865334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.639854, 43.945457, 50.045097>,  <39.304417, 44.065411, 50.179306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.639854, 43.945457, 50.045097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.826504, 43.593178, 50.077686>,  <38.938492, 43.381809, 50.097240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.826504, 43.593178, 50.077686>,  <38.639854, 43.945457, 50.045097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.826504, 43.593178, 50.077686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.745451, -0.342042, 0.572110,
		-0.475989, -0.327692, -0.816121,
		0.466623, -0.880696, 0.081469,
		38.966492, 43.328968, 50.102127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.221489, 43.425640, 49.788231>,  <38.639854, 43.945457, 50.045097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.221489, 43.425640, 49.788231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.457790, 43.228096, 50.043449>,  <38.599571, 43.109570, 50.196583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.457790, 43.228096, 50.043449>,  <38.221489, 43.425640, 49.788231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.457790, 43.228096, 50.043449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.803762, -0.429329, 0.411877,
		0.070522, -0.756158, -0.650578,
		0.590756, -0.493864, 0.638048,
		38.635017, 43.079937, 50.234863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.793949, 42.928230, 49.936546>,  <38.221489, 43.425640, 49.788231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.793949, 42.928230, 49.936546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.081314, 42.871567, 50.208961>,  <38.253735, 42.837566, 50.372410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.081314, 42.871567, 50.208961>,  <37.793949, 42.928230, 49.936546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.081314, 42.871567, 50.208961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.644730, -0.503177, 0.575444,
		0.261165, -0.852493, -0.452823,
		0.718412, -0.141663, 0.681040,
		38.296837, 42.829067, 50.413273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.884323, 42.140797, 50.131748>,  <37.793949, 42.928230, 49.936546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.884323, 42.140797, 50.131748> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.040123, 42.359238, 50.428413>,  <38.133602, 42.490303, 50.606411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.040123, 42.359238, 50.428413>,  <37.884323, 42.140797, 50.131748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.040123, 42.359238, 50.428413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.571646, -0.488041, 0.659573,
		0.722157, -0.680869, 0.122089,
		0.389499, 0.546107, 0.741659,
		38.156971, 42.523071, 50.650909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.135693, 41.618172, 50.559139>,  <37.884323, 42.140797, 50.131748>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.135693, 41.618172, 50.559139> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.068069, 41.955460, 50.763260>,  <38.027496, 42.157833, 50.885731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.068069, 41.955460, 50.763260>,  <38.135693, 41.618172, 50.559139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.068069, 41.955460, 50.763260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.632000, -0.490038, 0.600365,
		0.756305, -0.221016, 0.615756,
		-0.169054, 0.843217, 0.510300,
		38.017353, 42.208424, 50.916351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.139847, 41.411888, 51.281933>,  <38.135693, 41.618172, 50.559139>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.139847, 41.411888, 51.281933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.966713, 41.770790, 51.316776>,  <37.862831, 41.986130, 51.337681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.966713, 41.770790, 51.316776>,  <38.139847, 41.411888, 51.281933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.966713, 41.770790, 51.316776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.659300, -0.380977, 0.648213,
		0.614796, 0.223143, 0.756461,
		-0.432838, 0.897254, 0.087105,
		37.836861, 42.039967, 51.342907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.907097, 41.344692, 51.964451>,  <38.139847, 41.411888, 51.281933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.907097, 41.344692, 51.964451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.699986, 41.656609, 51.823692>,  <37.575718, 41.843758, 51.739235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.699986, 41.656609, 51.823692>,  <37.907097, 41.344692, 51.964451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.699986, 41.656609, 51.823692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.750263, -0.216221, 0.624783,
		0.411112, 0.587514, 0.697003,
		-0.517775, 0.779792, -0.351899,
		37.544651, 41.890545, 51.718124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.673298, 41.723431, 52.557182>,  <37.907097, 41.344692, 51.964451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.673298, 41.723431, 52.557182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.429619, 41.827629, 52.257576>,  <37.283413, 41.890148, 52.077812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.429619, 41.827629, 52.257576>,  <37.673298, 41.723431, 52.557182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.429619, 41.827629, 52.257576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.792274, -0.240908, 0.560593,
		-0.034410, 0.934935, 0.353146,
		-0.609194, 0.260499, -0.749014,
		37.246861, 41.905777, 52.032871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.074989, 42.109173, 52.915028>,  <37.673298, 41.723431, 52.557182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.074989, 42.109173, 52.915028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.972511, 41.978271, 52.551208>,  <36.911026, 41.899731, 52.332916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.972511, 41.978271, 52.551208>,  <37.074989, 42.109173, 52.915028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.972511, 41.978271, 52.551208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.892876, -0.280363, 0.352376,
		-0.370318, 0.902387, -0.220368,
		-0.256196, -0.327252, -0.909544,
		36.895653, 41.880096, 52.278347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.377747, 42.251793, 52.879406>,  <37.074989, 42.109173, 52.915028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.377747, 42.251793, 52.879406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.377575, 42.002632, 52.566486>,  <36.377472, 41.853134, 52.378735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.377575, 42.002632, 52.566486>,  <36.377747, 42.251793, 52.879406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.377575, 42.002632, 52.566486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.941348, -0.263726, 0.210504,
		-0.337436, 0.736504, -0.586258,
		-0.000426, -0.622905, -0.782298,
		36.377449, 41.815762, 52.331799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.673122, 42.347149, 52.565922>,  <36.377747, 42.251793, 52.879406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.673122, 42.347149, 52.565922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.813023, 41.993439, 52.442162>,  <35.896965, 41.781212, 52.367905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.813023, 41.993439, 52.442162>,  <35.673122, 42.347149, 52.565922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.813023, 41.993439, 52.442162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.889402, -0.417175, 0.186894,
		-0.294341, 0.209817, -0.932384,
		0.349753, -0.884275, -0.309404,
		35.917950, 41.728157, 52.349339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.173077, 42.062679, 52.006409>,  <35.673122, 42.347149, 52.565922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.173077, 42.062679, 52.006409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.387733, 41.772781, 52.179276>,  <35.516525, 41.598843, 52.282993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.387733, 41.772781, 52.179276>,  <35.173077, 42.062679, 52.006409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.387733, 41.772781, 52.179276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.843514, -0.474357, 0.251931,
		0.022415, -0.499733, -0.865889,
		0.536639, -0.724743, 0.432165,
		35.548725, 41.555359, 52.308926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.744190, 41.501816, 51.847511>,  <35.173077, 42.062679, 52.006409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.744190, 41.501816, 51.847511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.990082, 41.346153, 52.121933>,  <35.137615, 41.252754, 52.286587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.990082, 41.346153, 52.121933>,  <34.744190, 41.501816, 51.847511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.990082, 41.346153, 52.121933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.699626, -0.670658, 0.246459,
		0.364195, -0.631484, -0.684536,
		0.614724, -0.389160, 0.686053,
		35.174500, 41.229404, 52.327747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.550110, 40.850456, 51.833096>,  <34.744190, 41.501816, 51.847511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.550110, 40.850456, 51.833096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.721848, 40.925171, 52.186543>,  <34.824890, 40.969997, 52.398609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.721848, 40.925171, 52.186543>,  <34.550110, 40.850456, 51.833096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.721848, 40.925171, 52.186543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.768920, -0.437604, 0.466116,
		0.473737, -0.879554, -0.044261,
		0.429343, 0.186783, 0.883616,
		34.850651, 40.981205, 52.451626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.303619, 40.337143, 52.203434>,  <34.550110, 40.850456, 51.833096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.303619, 40.337143, 52.203434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.439110, 40.576485, 52.493881>,  <34.520405, 40.720089, 52.668148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.439110, 40.576485, 52.493881>,  <34.303619, 40.337143, 52.203434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.439110, 40.576485, 52.493881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.692445, -0.363960, 0.622939,
		0.637013, -0.713798, 0.291044,
		0.338724, 0.598352, 0.726113,
		34.540726, 40.755989, 52.711716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.318249, 39.971031, 52.768593>,  <34.303619, 40.337143, 52.203434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.318249, 39.971031, 52.768593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.284210, 40.356697, 52.869110>,  <34.263786, 40.588097, 52.929420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.284210, 40.356697, 52.869110>,  <34.318249, 39.971031, 52.768593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.284210, 40.356697, 52.869110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.855690, -0.199924, 0.477310,
		0.510444, -0.174412, 0.842038,
		-0.085095, 0.964163, 0.251292,
		34.258682, 40.645947, 52.944496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.245174, 39.964001, 53.590118>,  <34.318249, 39.971031, 52.768593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.245174, 39.964001, 53.590118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.104057, 40.306755, 53.439774>,  <34.019386, 40.512409, 53.349567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.104057, 40.306755, 53.439774>,  <34.245174, 39.964001, 53.590118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.104057, 40.306755, 53.439774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.836778, -0.109161, 0.536550,
		0.418734, 0.503809, 0.755539,
		-0.352794, 0.856890, -0.375867,
		33.998219, 40.563824, 53.327015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.982315, 40.271473, 54.153820>,  <34.245174, 39.964001, 53.590118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.982315, 40.271473, 54.153820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.829479, 40.479935, 53.848557>,  <33.737778, 40.605011, 53.665398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.829479, 40.479935, 53.848557>,  <33.982315, 40.271473, 54.153820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.829479, 40.479935, 53.848557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.882294, 0.039925, 0.469001,
		0.274890, 0.852529, 0.444555,
		-0.382089, 0.521152, -0.763157,
		33.714851, 40.636280, 53.619610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.585381, 40.770546, 54.446930>,  <33.982315, 40.271473, 54.153820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.585381, 40.770546, 54.446930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.437508, 40.707344, 54.080681>,  <33.348785, 40.669422, 53.860931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.437508, 40.707344, 54.080681>,  <33.585381, 40.770546, 54.446930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.437508, 40.707344, 54.080681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.912663, -0.123118, 0.389729,
		-0.174309, 0.979733, -0.098693,
		-0.369679, -0.158007, -0.915626,
		33.326603, 40.659943, 53.805992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.936954, 41.077812, 54.515953>,  <33.585381, 40.770546, 54.446930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.936954, 41.077812, 54.515953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.890076, 40.873390, 54.175346>,  <32.861950, 40.750736, 53.970982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.890076, 40.873390, 54.175346>,  <32.936954, 41.077812, 54.515953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.890076, 40.873390, 54.175346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.939790, -0.220101, 0.261438,
		-0.321030, 0.830889, -0.454492,
		-0.117192, -0.511057, -0.851520,
		32.854919, 40.720074, 53.919891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.271847, 41.342098, 54.208168>,  <32.936954, 41.077812, 54.515953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.271847, 41.342098, 54.208168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.360977, 40.986061, 54.049126>,  <32.414455, 40.772438, 53.953701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.360977, 40.986061, 54.049126>,  <32.271847, 41.342098, 54.208168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.360977, 40.986061, 54.049126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.945997, -0.295935, 0.132333,
		-0.235453, 0.346643, -0.907965,
		0.222827, -0.890090, -0.397602,
		32.427826, 40.719032, 53.929844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.756590, 41.228931, 53.715820>,  <32.271847, 41.342098, 54.208168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.756590, 41.228931, 53.715820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.878027, 40.852409, 53.774841>,  <31.950890, 40.626495, 53.810253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.878027, 40.852409, 53.774841>,  <31.756590, 41.228931, 53.715820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.878027, 40.852409, 53.774841> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.943222, -0.275007, 0.186287,
		-0.134774, -0.195734, -0.971352,
		0.303591, -0.941307, 0.147557,
		31.969105, 40.570019, 53.819107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.997330, 41.376789, 53.963425>,  <31.756590, 41.228931, 53.715820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.997330, 41.376789, 53.963425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.743832, 41.645180, 53.809460>,  <30.591732, 41.806213, 53.717079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.743832, 41.645180, 53.809460>,  <30.997330, 41.376789, 53.963425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.743832, 41.645180, 53.809460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.727333, 0.347468, -0.591821,
		-0.263352, -0.655025, -0.708229,
		-0.633744, 0.670976, -0.384915,
		30.553709, 41.846474, 53.693985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.090527, 41.294083, 53.187946>,  <30.997330, 41.376789, 53.963425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.090527, 41.294083, 53.187946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.918095, 41.647484, 53.261261>,  <30.814634, 41.859524, 53.305252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.918095, 41.647484, 53.261261>,  <31.090527, 41.294083, 53.187946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.918095, 41.647484, 53.261261> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.605318, 0.433804, -0.667386,
		-0.669147, -0.176750, -0.721804,
		-0.431082, 0.883501, 0.183289,
		30.788771, 41.912533, 53.316246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.053415, 41.600155, 52.489933>,  <31.090527, 41.294083, 53.187946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.053415, 41.600155, 52.489933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.994701, 41.881409, 52.768227>,  <30.959473, 42.050163, 52.935204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.994701, 41.881409, 52.768227>,  <31.053415, 41.600155, 52.489933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.994701, 41.881409, 52.768227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.663825, 0.591472, -0.457709,
		-0.733342, 0.394663, -0.553580,
		-0.146786, 0.703138, 0.695738,
		30.950666, 42.092350, 52.976948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.924084, 42.241470, 52.141598>,  <31.053415, 41.600155, 52.489933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.924084, 42.241470, 52.141598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.048218, 42.366821, 52.500595>,  <31.122698, 42.442032, 52.715992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.048218, 42.366821, 52.500595>,  <30.924084, 42.241470, 52.141598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.048218, 42.366821, 52.500595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.777352, 0.459779, -0.429334,
		-0.547189, 0.830903, -0.100915,
		0.310336, 0.313373, 0.897490,
		31.141319, 42.460835, 52.769844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.043976, 42.963837, 52.052746>,  <30.924084, 42.241470, 52.141598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.043976, 42.963837, 52.052746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.232010, 42.862129, 52.390827>,  <31.344830, 42.801105, 52.593678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.232010, 42.862129, 52.390827>,  <31.043976, 42.963837, 52.052746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.232010, 42.862129, 52.390827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.751278, 0.617880, -0.231961,
		-0.463252, 0.744023, 0.481485,
		0.470084, -0.254273, 0.845202,
		31.373035, 42.785847, 52.644386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.341059, 43.566116, 52.351940>,  <31.043976, 42.963837, 52.052746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.341059, 43.566116, 52.351940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.554585, 43.274712, 52.523666>,  <31.682699, 43.099869, 52.626701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.554585, 43.274712, 52.523666>,  <31.341059, 43.566116, 52.351940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.554585, 43.274712, 52.523666> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.845599, 0.461141, -0.268907,
		-0.002075, 0.506579, 0.862191,
		0.533815, -0.728510, 0.429319,
		31.714729, 43.056160, 52.652462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.834938, 43.920727, 52.791542>,  <31.341059, 43.566116, 52.351940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.834938, 43.920727, 52.791542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.961702, 43.543907, 52.747505>,  <32.037762, 43.317818, 52.721085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.961702, 43.543907, 52.747505>,  <31.834938, 43.920727, 52.791542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.961702, 43.543907, 52.747505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.910974, 0.334636, -0.241135,
		0.264000, -0.023871, 0.964227,
		0.316909, -0.942045, -0.110090,
		32.056774, 43.261295, 52.714478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.456387, 43.871445, 53.216011>,  <31.834938, 43.920727, 52.791542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.456387, 43.871445, 53.216011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.455902, 43.602142, 52.920246>,  <32.455612, 43.440559, 52.742786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.455902, 43.602142, 52.920246>,  <32.456387, 43.871445, 53.216011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.455902, 43.602142, 52.920246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.912352, 0.301975, -0.276452,
		0.409405, -0.674937, 0.613879,
		-0.001211, -0.673255, -0.739410,
		32.455540, 43.400166, 52.698421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.105877, 43.609032, 53.282036>,  <32.456387, 43.871445, 53.216011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.105877, 43.609032, 53.282036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.988258, 43.492332, 52.917965>,  <32.917686, 43.422314, 52.699524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.988258, 43.492332, 52.917965>,  <33.105877, 43.609032, 53.282036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.988258, 43.492332, 52.917965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.941350, 0.076514, -0.328642,
		0.165522, -0.953430, 0.252140,
		-0.294044, -0.291749, -0.910176,
		32.900043, 43.404808, 52.644913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.644276, 43.040783, 52.936249>,  <33.105877, 43.609032, 53.282036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.644276, 43.040783, 52.936249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.446964, 43.174995, 52.615227>,  <33.328575, 43.255524, 52.422615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.446964, 43.174995, 52.615227>,  <33.644276, 43.040783, 52.936249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.446964, 43.174995, 52.615227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.808223, -0.164354, -0.565476,
		-0.321636, -0.927582, -0.190108,
		-0.493281, 0.335528, -0.802556,
		33.298981, 43.275654, 52.374458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.853226, 42.598343, 52.443588>,  <33.644276, 43.040783, 52.936249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.853226, 42.598343, 52.443588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.693954, 42.900230, 52.235031>,  <33.598392, 43.081364, 52.109898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.693954, 42.900230, 52.235031>,  <33.853226, 42.598343, 52.443588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.693954, 42.900230, 52.235031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.776867, -0.024797, -0.629177,
		-0.487782, -0.655578, -0.576444,
		-0.398180, 0.754721, -0.521392,
		33.574501, 43.126648, 52.078613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.101074, 42.502132, 51.683414>,  <33.853226, 42.598343, 52.443588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.101074, 42.502132, 51.683414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.985928, 42.884422, 51.659027>,  <33.916840, 43.113796, 51.644394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.985928, 42.884422, 51.659027>,  <34.101074, 42.502132, 51.683414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.985928, 42.884422, 51.659027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.697451, 0.165593, -0.697239,
		-0.656274, -0.243234, -0.714242,
		-0.287866, 0.955728, -0.060969,
		33.899567, 43.171143, 51.640736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.962482, 42.650166, 50.957462>,  <34.101074, 42.502132, 51.683414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.962482, 42.650166, 50.957462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.016895, 43.000816, 51.142082>,  <34.049541, 43.211205, 51.252853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.016895, 43.000816, 51.142082>,  <33.962482, 42.650166, 50.957462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.016895, 43.000816, 51.142082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.709824, 0.238759, -0.662680,
		-0.691120, 0.417760, -0.589771,
		0.136028, 0.876625, 0.461547,
		34.057705, 43.263805, 51.280548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.957909, 43.086994, 50.414116>,  <33.962482, 42.650166, 50.957462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.957909, 43.086994, 50.414116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.114143, 43.282135, 50.726383>,  <34.207886, 43.399220, 50.913746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.114143, 43.282135, 50.726383>,  <33.957909, 43.086994, 50.414116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.114143, 43.282135, 50.726383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.634963, 0.471244, -0.612169,
		-0.666532, 0.734802, -0.125704,
		0.390585, 0.487847, 0.780671,
		34.231319, 43.428490, 50.960587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.927765, 43.804443, 50.209293>,  <33.957909, 43.086994, 50.414116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.927765, 43.804443, 50.209293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.219673, 43.751740, 50.477646>,  <34.394817, 43.720116, 50.638657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.219673, 43.751740, 50.477646>,  <33.927765, 43.804443, 50.209293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.219673, 43.751740, 50.477646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.639034, 0.480288, -0.600799,
		-0.243053, 0.867157, 0.434699,
		0.729768, -0.131762, 0.670878,
		34.438602, 43.712212, 50.678909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.294895, 44.390022, 50.223206>,  <33.927765, 43.804443, 50.209293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.294895, 44.390022, 50.223206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.565826, 44.157394, 50.403423>,  <34.728386, 44.017818, 50.511555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.565826, 44.157394, 50.403423>,  <34.294895, 44.390022, 50.223206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.565826, 44.157394, 50.403423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.732178, 0.473242, -0.489854,
		0.071669, 0.661675, 0.746358,
		0.677332, -0.581574, 0.450547,
		34.769028, 43.982922, 50.538586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.822296, 44.831345, 50.430168>,  <34.294895, 44.390022, 50.223206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.822296, 44.831345, 50.430168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.978493, 44.463104, 50.431767>,  <35.072212, 44.242161, 50.432728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.978493, 44.463104, 50.431767>,  <34.822296, 44.831345, 50.430168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.978493, 44.463104, 50.431767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.782192, 0.329487, -0.528785,
		0.485481, 0.209614, 0.848746,
		0.390491, -0.920598, 0.003999,
		35.095638, 44.186924, 50.432964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.490864, 44.927288, 50.631882>,  <34.822296, 44.831345, 50.430168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.490864, 44.927288, 50.631882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.499992, 44.562248, 50.468597>,  <35.505470, 44.343224, 50.370628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.499992, 44.562248, 50.468597>,  <35.490864, 44.927288, 50.631882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.499992, 44.562248, 50.468597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.780038, 0.271647, -0.563692,
		0.625316, -0.305553, 0.718065,
		0.022823, -0.912604, -0.408208,
		35.506840, 44.288467, 50.346134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.151806, 44.536484, 50.757675>,  <35.490864, 44.927288, 50.631882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.151806, 44.536484, 50.757675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.023865, 44.365311, 50.419548>,  <35.947102, 44.262608, 50.216671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.023865, 44.365311, 50.419548>,  <36.151806, 44.536484, 50.757675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.023865, 44.365311, 50.419548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.881919, 0.191611, -0.430701,
		0.346284, -0.883265, 0.316117,
		-0.319852, -0.427935, -0.845320,
		35.927910, 44.236931, 50.165951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.747265, 44.184845, 50.529446>,  <36.151806, 44.536484, 50.757675>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.747265, 44.184845, 50.529446> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.511017, 44.155151, 50.208035>,  <36.369267, 44.137333, 50.015190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.511017, 44.155151, 50.208035>,  <36.747265, 44.184845, 50.529446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.511017, 44.155151, 50.208035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.805820, -0.001652, -0.592158,
		0.042632, -0.997240, 0.060797,
		-0.590623, -0.074236, -0.803525,
		36.333828, 44.132881, 49.966976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.035641, 43.680012, 50.104626>,  <36.747265, 44.184845, 50.529446>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.035641, 43.680012, 50.104626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.791462, 43.908699, 49.885357>,  <36.644955, 44.045910, 49.753796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.791462, 43.908699, 49.885357>,  <37.035641, 43.680012, 50.104626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.791462, 43.908699, 49.885357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.738099, 0.159533, -0.655560,
		-0.287345, -0.804790, -0.519371,
		-0.610445, 0.571719, -0.548174,
		36.608330, 44.080215, 49.720905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.115757, 43.499889, 49.387028>,  <37.035641, 43.680012, 50.104626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.115757, 43.499889, 49.387028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.984833, 43.877281, 49.407871>,  <36.906277, 44.103718, 49.420376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.984833, 43.877281, 49.407871>,  <37.115757, 43.499889, 49.387028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.984833, 43.877281, 49.407871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.725322, 0.286207, -0.626094,
		-0.605621, -0.167130, -0.778005,
		-0.327310, 0.943479, 0.052110,
		36.886639, 44.160324, 49.423504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.153217, 43.693859, 48.727531>,  <37.115757, 43.499889, 49.387028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.153217, 43.693859, 48.727531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.130348, 44.040924, 48.925072>,  <37.116627, 44.249165, 49.043598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.130348, 44.040924, 48.925072>,  <37.153217, 43.693859, 48.727531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.130348, 44.040924, 48.925072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589500, 0.428564, -0.684706,
		-0.805743, 0.251981, -0.535989,
		-0.057173, 0.867663, 0.493855,
		37.113197, 44.301224, 49.073227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.067329, 44.266548, 48.192471>,  <37.153217, 43.693859, 48.727531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.067329, 44.266548, 48.192471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.187851, 44.453362, 48.524998>,  <37.260166, 44.565449, 48.724514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.187851, 44.453362, 48.524998>,  <37.067329, 44.266548, 48.192471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.187851, 44.453362, 48.524998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562677, 0.616771, -0.550444,
		-0.769811, 0.633617, -0.076953,
		0.301308, 0.467037, 0.831318,
		37.278244, 44.593472, 48.774395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.027840, 44.981071, 48.000008>,  <37.067329, 44.266548, 48.192471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.027840, 44.981071, 48.000008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.286285, 44.926849, 48.300449>,  <37.441353, 44.894318, 48.480713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.286285, 44.926849, 48.300449>,  <37.027840, 44.981071, 48.000008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.286285, 44.926849, 48.300449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.690347, 0.523492, -0.499377,
		-0.325502, 0.841178, 0.431819,
		0.646119, -0.135556, 0.751102,
		37.480122, 44.886181, 48.525780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.216900, 45.672005, 48.174866>,  <37.027840, 44.981071, 48.000008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.216900, 45.672005, 48.174866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.507835, 45.442474, 48.325439>,  <37.682396, 45.304756, 48.415783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.507835, 45.442474, 48.325439>,  <37.216900, 45.672005, 48.174866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.507835, 45.442474, 48.325439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.679368, 0.679686, -0.276560,
		-0.097156, 0.456887, 0.884203,
		0.727337, -0.573830, 0.376430,
		37.726036, 45.270325, 48.438370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.657310, 46.138012, 48.462852>,  <37.216900, 45.672005, 48.174866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.657310, 46.138012, 48.462852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.903221, 45.824951, 48.423862>,  <38.050770, 45.637115, 48.400467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.903221, 45.824951, 48.423862>,  <37.657310, 46.138012, 48.462852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.903221, 45.824951, 48.423862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.761624, 0.621230, -0.184397,
		0.204876, 0.039121, 0.978006,
		0.614780, -0.782651, -0.097480,
		38.087654, 45.590157, 48.394619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.330948, 46.266167, 48.797451>,  <37.657310, 46.138012, 48.462852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.330948, 46.266167, 48.797451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.384247, 45.961815, 48.543427>,  <38.416225, 45.779205, 48.391010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.384247, 45.961815, 48.543427>,  <38.330948, 46.266167, 48.797451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.384247, 45.961815, 48.543427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.815935, 0.447953, -0.365498,
		0.562578, -0.469466, 0.680520,
		0.133252, -0.760881, -0.635062,
		38.424221, 45.733551, 48.352909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.057911, 46.070705, 48.967522>,  <38.330948, 46.266167, 48.797451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.057911, 46.070705, 48.967522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.961441, 45.951286, 48.598152>,  <38.903561, 45.879635, 48.376530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.961441, 45.951286, 48.598152>,  <39.057911, 46.070705, 48.967522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.961441, 45.951286, 48.598152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.916301, 0.243430, -0.318017,
		0.319732, -0.922827, 0.214853,
		-0.241173, -0.298550, -0.923419,
		38.889088, 45.861721, 48.321125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.644482, 45.721321, 48.828709>,  <39.057911, 46.070705, 48.967522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.644482, 45.721321, 48.828709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.465305, 45.803490, 48.480652>,  <39.357800, 45.852791, 48.271816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.465305, 45.803490, 48.480652>,  <39.644482, 45.721321, 48.828709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.465305, 45.803490, 48.480652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.831024, 0.454634, -0.320479,
		0.329764, -0.866667, -0.374360,
		-0.447945, 0.205420, -0.870143,
		39.330921, 45.865116, 48.219608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.164814, 45.648056, 48.338154>,  <39.644482, 45.721321, 48.828709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.164814, 45.648056, 48.338154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.885166, 45.839348, 48.125542>,  <39.717377, 45.954124, 47.997974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.885166, 45.839348, 48.125542>,  <40.164814, 45.648056, 48.338154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.885166, 45.839348, 48.125542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.697641, 0.619091, -0.360587,
		0.156624, -0.622913, -0.766452,
		-0.699118, 0.478232, -0.531534,
		39.675430, 45.982819, 47.966080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.584061, 45.763893, 47.698902>,  <40.164814, 45.648056, 48.338154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.584061, 45.763893, 47.698902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.266735, 46.006119, 47.673752>,  <40.076340, 46.151455, 47.658661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.266735, 46.006119, 47.673752>,  <40.584061, 45.763893, 47.698902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.266735, 46.006119, 47.673752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.575033, 0.711355, -0.404118,
		-0.199992, -0.356747, -0.912543,
		-0.793310, 0.605563, -0.062876,
		40.028744, 46.187786, 47.654888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.482395, 45.957741, 47.006153>,  <40.584061, 45.763893, 47.698902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.482395, 45.957741, 47.006153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.293800, 46.247070, 47.207947>,  <40.180641, 46.420666, 47.329021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.293800, 46.247070, 47.207947>,  <40.482395, 45.957741, 47.006153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.293800, 46.247070, 47.207947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.575384, 0.685841, -0.445595,
		-0.668303, 0.080177, -0.739556,
		-0.471491, 0.723321, 0.504482,
		40.152351, 46.464066, 47.359291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.366070, 46.408634, 46.522499>,  <40.482395, 45.957741, 47.006153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.366070, 46.408634, 46.522499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.346531, 46.604950, 46.870464>,  <40.334808, 46.722740, 47.079243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.346531, 46.604950, 46.870464>,  <40.366070, 46.408634, 46.522499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.346531, 46.604950, 46.870464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497712, 0.767074, -0.404821,
		-0.865966, 0.413188, -0.281742,
		-0.048849, 0.490788, 0.869909,
		40.331875, 46.752186, 47.131435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.103550, 47.040981, 46.376339>,  <40.366070, 46.408634, 46.522499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.103550, 47.040981, 46.376339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.280220, 47.114113, 46.727680>,  <40.386223, 47.157993, 46.938484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.280220, 47.114113, 46.727680>,  <40.103550, 47.040981, 46.376339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.280220, 47.114113, 46.727680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365938, 0.857166, -0.362431,
		-0.819154, 0.481498, 0.311684,
		0.441674, 0.182830, 0.878349,
		40.412724, 47.168961, 46.991184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.929157, 47.722153, 46.528500>,  <40.103550, 47.040981, 46.376339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.929157, 47.722153, 46.528500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.269135, 47.619057, 46.712307>,  <40.473122, 47.557198, 46.822594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.269135, 47.619057, 46.712307>,  <39.929157, 47.722153, 46.528500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.269135, 47.619057, 46.712307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445618, 0.816994, -0.365986,
		-0.281097, 0.515840, 0.809255,
		0.849947, -0.257741, 0.459522,
		40.524120, 47.541733, 46.850163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.150208, 48.405876, 46.866776>,  <39.929157, 47.722153, 46.528500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.150208, 48.405876, 46.866776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.489105, 48.193405, 46.868683>,  <40.692444, 48.065922, 46.869827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.489105, 48.193405, 46.868683>,  <40.150208, 48.405876, 46.866776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.489105, 48.193405, 46.868683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519983, 0.827485, -0.211865,
		0.108594, 0.181980, 0.977287,
		0.847245, -0.531180, 0.004767,
		40.743279, 48.034050, 46.870113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.556427, 48.862206, 47.211296>,  <40.150208, 48.405876, 46.866776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.556427, 48.862206, 47.211296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.805058, 48.605568, 47.031517>,  <40.954235, 48.451588, 46.923649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.805058, 48.605568, 47.031517>,  <40.556427, 48.862206, 47.211296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.805058, 48.605568, 47.031517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526531, 0.766997, -0.366716,
		0.580009, -0.008708, 0.814564,
		0.621575, -0.641591, -0.449450,
		40.991531, 48.413090, 46.896683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.286907, 49.142426, 47.263172>,  <40.556427, 48.862206, 47.211296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.286907, 49.142426, 47.263172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.299744, 48.887398, 46.955280>,  <41.307446, 48.734383, 46.770546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.299744, 48.887398, 46.955280>,  <41.286907, 49.142426, 47.263172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.299744, 48.887398, 46.955280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.594714, 0.631137, -0.497978,
		0.803297, -0.441788, 0.399423,
		0.032090, -0.637566, -0.769727,
		41.309372, 48.696129, 46.724361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.946709, 48.922909, 47.164661>,  <41.286907, 49.142426, 47.263172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.946709, 48.922909, 47.164661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.801697, 48.842964, 46.800545>,  <41.714691, 48.794998, 46.582073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.801697, 48.842964, 46.800545>,  <41.946709, 48.922909, 47.164661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.801697, 48.842964, 46.800545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.713637, 0.568674, -0.409062,
		0.599414, -0.797914, -0.063532,
		-0.362526, -0.199858, -0.910292,
		41.692940, 48.783009, 46.527458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<32.945667, 42.499588, 46.620766> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.153465, 42.166100, 46.545883>,  <33.278145, 41.966007, 46.500954>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.153465, 42.166100, 46.545883>,  <32.945667, 42.499588, 46.620766>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.153465, 42.166100, 46.545883> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.713801, 0.543852, -0.441263,
		0.469699, 0.095608, 0.877635,
		0.519491, -0.833717, -0.187202,
		33.309311, 41.915985, 46.489723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.565186, 42.812103, 46.749424>,  <32.945667, 42.499588, 46.620766>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.565186, 42.812103, 46.749424> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.626461, 42.460091, 46.569614>,  <33.663227, 42.248882, 46.461727>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.626461, 42.460091, 46.569614>,  <33.565186, 42.812103, 46.749424>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.626461, 42.460091, 46.569614> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.843823, 0.353236, -0.403964,
		0.514290, -0.317434, 0.796706,
		0.153193, -0.880034, -0.449524,
		33.672421, 42.196079, 46.434757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.246990, 42.542233, 46.901917>,  <33.565186, 42.812103, 46.749424>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.246990, 42.542233, 46.901917> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.146812, 42.380913, 46.549866>,  <34.086704, 42.284119, 46.338634>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.146812, 42.380913, 46.549866>,  <34.246990, 42.542233, 46.901917>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.146812, 42.380913, 46.549866> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.798734, 0.427650, -0.423248,
		0.547084, -0.808988, 0.215030,
		-0.250445, -0.403304, -0.880127,
		34.071678, 42.259922, 46.285828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.842808, 42.248531, 46.723209>,  <34.246990, 42.542233, 46.901917>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.842808, 42.248531, 46.723209> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.641373, 42.275154, 46.378658>,  <34.520512, 42.291130, 46.171928>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.641373, 42.275154, 46.378658>,  <34.842808, 42.248531, 46.723209>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.641373, 42.275154, 46.378658> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.861062, 0.120007, -0.494137,
		0.070481, -0.990539, -0.117747,
		-0.503592, 0.066560, -0.861374,
		34.490295, 42.295120, 46.120247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.232983, 41.785751, 46.134544>,  <34.842808, 42.248531, 46.723209>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.232983, 41.785751, 46.134544> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.993732, 42.045647, 45.946888>,  <34.850182, 42.201584, 45.834293>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.993732, 42.045647, 45.946888>,  <35.232983, 41.785751, 46.134544>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.993732, 42.045647, 45.946888> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.757838, 0.268180, -0.594778,
		-0.260635, -0.711282, -0.652800,
		-0.598122, 0.649737, -0.469139,
		34.814297, 42.240566, 45.806145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.428196, 41.669456, 45.441532>,  <35.232983, 41.785751, 46.134544>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.428196, 41.669456, 45.441532> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.243729, 42.024185, 45.429741>,  <35.133049, 42.237022, 45.422665>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.243729, 42.024185, 45.429741>,  <35.428196, 41.669456, 45.441532>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.243729, 42.024185, 45.429741> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576071, 0.273970, -0.770119,
		-0.674881, -0.372140, -0.637219,
		-0.461170, 0.886822, -0.029482,
		35.105377, 42.290230, 45.420895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.328011, 41.924755, 44.753578>,  <35.428196, 41.669456, 45.441532>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.328011, 41.924755, 44.753578> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.302521, 42.262367, 44.966576>,  <35.287228, 42.464935, 45.094376>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.302521, 42.262367, 44.966576>,  <35.328011, 41.924755, 44.753578>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.302521, 42.262367, 44.966576> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.581286, 0.465114, -0.667664,
		-0.811200, 0.266989, -0.520260,
		-0.063722, 0.844029, 0.532498,
		35.283405, 42.515575, 45.126324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.213089, 42.517128, 44.260288>,  <35.328011, 41.924755, 44.753578>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.213089, 42.517128, 44.260288> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.371338, 42.684723, 44.587196>,  <35.466290, 42.785278, 44.783340>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.371338, 42.684723, 44.587196>,  <35.213089, 42.517128, 44.260288>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.371338, 42.684723, 44.587196> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.687282, 0.455205, -0.566066,
		-0.609198, 0.785647, -0.107868,
		0.395626, 0.418983, 0.817272,
		35.490025, 42.810417, 44.832378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.386936, 43.242195, 44.094345>,  <35.213089, 42.517128, 44.260288>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.386936, 43.242195, 44.094345> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.610878, 43.150360, 44.412804>,  <35.745243, 43.095261, 44.603878>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.610878, 43.150360, 44.412804>,  <35.386936, 43.242195, 44.094345>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.610878, 43.150360, 44.412804> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.827900, 0.194190, -0.526186,
		-0.033801, 0.953720, 0.298791,
		0.559856, -0.229584, 0.796149,
		35.778835, 43.081486, 44.651649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.706127, 43.815655, 44.235382>,  <35.386936, 43.242195, 44.094345>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.706127, 43.815655, 44.235382> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.914490, 43.531227, 44.424290>,  <36.039505, 43.360569, 44.537636>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.914490, 43.531227, 44.424290>,  <35.706127, 43.815655, 44.235382>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.914490, 43.531227, 44.424290> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.852919, 0.411197, -0.321632,
		0.034508, 0.570345, 0.820680,
		0.520902, -0.711072, 0.472268,
		36.070759, 43.317905, 44.565971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.072552, 44.058411, 44.779819>,  <35.706127, 43.815655, 44.235382>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.072552, 44.058411, 44.779819> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.301979, 43.732712, 44.743988>,  <36.439636, 43.537292, 44.722488>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.301979, 43.732712, 44.743988>,  <36.072552, 44.058411, 44.779819>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.301979, 43.732712, 44.743988> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.817580, 0.575814, 0.000978,
		0.050786, -0.073802, 0.995979,
		0.573571, -0.814243, -0.089583,
		36.474049, 43.488438, 44.717113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.548626, 44.104675, 45.257248>,  <36.072552, 44.058411, 44.779819>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.548626, 44.104675, 45.257248> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.697998, 43.891342, 44.953644>,  <36.787621, 43.763344, 44.771481>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.697998, 43.891342, 44.953644>,  <36.548626, 44.104675, 45.257248>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.697998, 43.891342, 44.953644> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.813848, 0.581026, -0.007855,
		0.445196, -0.614787, 0.651028,
		0.373435, -0.533334, -0.759013,
		36.810028, 43.731342, 44.725941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.259651, 44.133282, 45.440868>,  <36.548626, 44.104675, 45.257248>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.259651, 44.133282, 45.440868> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.220505, 44.030777, 45.056213>,  <37.197018, 43.969276, 44.825420>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.220505, 44.030777, 45.056213>,  <37.259651, 44.133282, 45.440868>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.220505, 44.030777, 45.056213> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.855372, 0.472245, -0.212893,
		0.508686, -0.843396, 0.172980,
		-0.097864, -0.256258, -0.961642,
		37.191147, 43.953899, 44.767719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.872482, 43.727737, 45.209568>,  <37.259651, 44.133282, 45.440868>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.872482, 43.727737, 45.209568> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.687065, 43.875412, 44.887367>,  <37.575817, 43.964016, 44.694046>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.687065, 43.875412, 44.887367>,  <37.872482, 43.727737, 45.209568>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.687065, 43.875412, 44.887367> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.838412, 0.476883, -0.263910,
		0.286700, -0.797676, -0.530582,
		-0.463540, 0.369183, -0.805503,
		37.548004, 43.986168, 44.645718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.448158, 43.827213, 44.842937>,  <37.872482, 43.727737, 45.209568>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.448158, 43.827213, 44.842937> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.159966, 44.048355, 44.675484>,  <37.987049, 44.181042, 44.575012>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.159966, 44.048355, 44.675484>,  <38.448158, 43.827213, 44.842937>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.159966, 44.048355, 44.675484> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.688205, 0.644292, -0.333559,
		0.085312, -0.528429, -0.844680,
		-0.720483, 0.552857, -0.418633,
		37.943821, 44.214211, 44.549892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.598236, 43.916981, 44.171978>,  <38.448158, 43.827213, 44.842937>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.598236, 43.916981, 44.171978> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.352268, 44.226608, 44.232239>,  <38.204689, 44.412384, 44.268394>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.352268, 44.226608, 44.232239>,  <38.598236, 43.916981, 44.171978>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.352268, 44.226608, 44.232239> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.737170, 0.632090, -0.238837,
		-0.280100, -0.035810, -0.959303,
		-0.614918, 0.774067, 0.150650,
		38.167793, 44.458828, 44.277435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.611370, 44.365612, 43.568150>,  <38.598236, 43.916981, 44.171978>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.611370, 44.365612, 43.568150> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.467613, 44.614235, 43.846577>,  <38.381359, 44.763409, 44.013634>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.467613, 44.614235, 43.846577>,  <38.611370, 44.365612, 43.568150>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.467613, 44.614235, 43.846577> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475562, 0.763764, -0.436468,
		-0.802920, 0.174161, -0.570077,
		-0.359389, 0.621556, 0.696066,
		38.359798, 44.800701, 44.055397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.266922, 44.907429, 43.125816>,  <38.611370, 44.365612, 43.568150>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.266922, 44.907429, 43.125816> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.344582, 45.044006, 43.493668>,  <38.391178, 45.125954, 43.714378>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.344582, 45.044006, 43.493668>,  <38.266922, 44.907429, 43.125816>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.344582, 45.044006, 43.493668> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402018, 0.827435, -0.392087,
		-0.894810, 0.445834, 0.023383,
		0.194153, 0.341443, 0.919631,
		38.402828, 45.146439, 43.769558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.084465, 45.586872, 43.164906>,  <38.266922, 44.907429, 43.125816>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.084465, 45.586872, 43.164906> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.315895, 45.573990, 43.490902>,  <38.454754, 45.566261, 43.686501>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.315895, 45.573990, 43.490902>,  <38.084465, 45.586872, 43.164906>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.315895, 45.573990, 43.490902> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525522, 0.778883, -0.342297,
		-0.623764, 0.626341, 0.467563,
		0.578572, -0.032201, 0.814996,
		38.489468, 45.564331, 43.735401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.214046, 46.408558, 43.338474>,  <38.084465, 45.586872, 43.164906>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.214046, 46.408558, 43.338474> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.476624, 46.209229, 43.565018>,  <38.634171, 46.089630, 43.700943>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.476624, 46.209229, 43.565018>,  <38.214046, 46.408558, 43.338474>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.476624, 46.209229, 43.565018> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.692365, 0.696073, -0.190033,
		-0.299527, 0.516871, 0.801953,
		0.656440, -0.498324, 0.566356,
		38.673557, 46.059731, 43.734924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.491291, 46.889484, 43.901608>,  <38.214046, 46.408558, 43.338474>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.491291, 46.889484, 43.901608> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.752323, 46.591568, 43.845860>,  <38.908943, 46.412819, 43.812412>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.752323, 46.591568, 43.845860>,  <38.491291, 46.889484, 43.901608>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.752323, 46.591568, 43.845860> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.741298, 0.665632, -0.086084,
		0.156881, -0.047135, 0.986492,
		0.652584, -0.744790, -0.139366,
		38.948097, 46.368130, 43.804050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.058090, 46.961636, 44.369560>,  <38.491291, 46.889484, 43.901608>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.058090, 46.961636, 44.369560> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.173668, 46.750961, 44.049782>,  <39.243015, 46.624557, 43.857914>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.173668, 46.750961, 44.049782>,  <39.058090, 46.961636, 44.369560>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.173668, 46.750961, 44.049782> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.742407, 0.650505, -0.160234,
		0.604437, -0.547217, 0.578972,
		0.288942, -0.526684, -0.799448,
		39.260349, 46.592957, 43.809948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.604912, 47.437939, 44.159904>,  <39.058090, 46.961636, 44.369560>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.604912, 47.437939, 44.159904> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.567818, 47.738586, 44.421120>,  <39.545563, 47.918976, 44.577850>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.567818, 47.738586, 44.421120>,  <39.604912, 47.437939, 44.159904>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.567818, 47.738586, 44.421120> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.778029, -0.463984, 0.423544,
		0.621347, -0.468809, 0.627811,
		-0.092733, 0.751623, 0.653042,
		39.539997, 47.964073, 44.617031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.573929, 47.098087, 44.864418>,  <39.604912, 47.437939, 44.159904>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.573929, 47.098087, 44.864418> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.419086, 47.465942, 44.891003>,  <39.326180, 47.686653, 44.906956>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.419086, 47.465942, 44.891003>,  <39.573929, 47.098087, 44.864418>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.419086, 47.465942, 44.891003> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.828386, -0.378539, 0.412898,
		0.404875, 0.104777, 0.908349,
		-0.387108, 0.919636, 0.066465,
		39.302956, 47.741833, 44.910942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.361969, 47.145470, 45.634048>,  <39.573929, 47.098087, 44.864418>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.361969, 47.145470, 45.634048> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.159660, 47.417145, 45.421299>,  <39.038273, 47.580151, 45.293648>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.159660, 47.417145, 45.421299>,  <39.361969, 47.145470, 45.634048>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.159660, 47.417145, 45.421299> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.838069, -0.240671, 0.489609,
		0.204531, 0.693382, 0.690933,
		-0.505774, 0.679190, -0.531877,
		39.007927, 47.620903, 45.261734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.059765, 47.589706, 46.155949>,  <39.361969, 47.145470, 45.634048>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.059765, 47.589706, 46.155949> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.853535, 47.605728, 45.813587>,  <38.729797, 47.615341, 45.608170>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.853535, 47.605728, 45.813587>,  <39.059765, 47.589706, 46.155949>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.853535, 47.605728, 45.813587> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.834098, -0.252094, 0.490642,
		-0.196116, 0.966873, 0.163385,
		-0.515577, 0.040057, -0.855906,
		38.698860, 47.617744, 45.556816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.468323, 47.871437, 46.345333>,  <39.059765, 47.589706, 46.155949>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.468323, 47.871437, 46.345333> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.376328, 47.667435, 46.013794>,  <38.321129, 47.545033, 45.814869>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.376328, 47.667435, 46.013794>,  <38.468323, 47.871437, 46.345333>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.376328, 47.667435, 46.013794> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.841523, -0.323566, 0.432601,
		-0.488819, 0.796992, -0.354768,
		-0.229989, -0.510009, -0.828852,
		38.307331, 47.514431, 45.765137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.708881, 47.930462, 46.301014>,  <38.468323, 47.871437, 46.345333>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.708881, 47.930462, 46.301014> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.798004, 47.642548, 46.038025>,  <37.851479, 47.469799, 45.880230>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.798004, 47.642548, 46.038025>,  <37.708881, 47.930462, 46.301014>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.798004, 47.642548, 46.038025> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.849410, -0.474299, 0.231392,
		-0.478394, 0.506918, -0.717059,
		0.222803, -0.719774, -0.657483,
		37.864849, 47.426613, 45.840782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.133102, 47.856564, 45.736401>,  <37.708881, 47.930462, 46.301014>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.133102, 47.856564, 45.736401> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.336769, 47.515808, 45.785461>,  <37.458969, 47.311356, 45.814899>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.336769, 47.515808, 45.785461>,  <37.133102, 47.856564, 45.736401>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.336769, 47.515808, 45.785461> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.858071, -0.491380, 0.149195,
		-0.066828, -0.181211, -0.981171,
		0.509163, -0.851885, 0.122654,
		37.489517, 47.260242, 45.822258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.777802, 47.404064, 45.250431>,  <37.133102, 47.856564, 45.736401>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.777802, 47.404064, 45.250431> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.980694, 47.207771, 45.533810>,  <37.102428, 47.089996, 45.703838>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.980694, 47.207771, 45.533810>,  <36.777802, 47.404064, 45.250431>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.980694, 47.207771, 45.533810> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.813559, -0.543860, 0.205760,
		0.284324, -0.680733, -0.675102,
		0.507229, -0.490733, 0.708449,
		37.132862, 47.060551, 45.746346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.620201, 46.674042, 45.119720>,  <36.777802, 47.404064, 45.250431>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.620201, 46.674042, 45.119720> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.769608, 46.677696, 45.490753>,  <36.859249, 46.679890, 45.713371>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.769608, 46.677696, 45.490753>,  <36.620201, 46.674042, 45.119720>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.769608, 46.677696, 45.490753> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.711874, -0.638294, 0.292944,
		0.594746, -0.769738, -0.231904,
		0.373513, 0.009141, 0.927580,
		36.881660, 46.680439, 45.769028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.639423, 45.961323, 45.280201>,  <36.620201, 46.674042, 45.119720>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.639423, 45.961323, 45.280201> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.649834, 46.132088, 45.641769>,  <36.656078, 46.234547, 45.858711>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.649834, 46.132088, 45.641769>,  <36.639423, 45.961323, 45.280201>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.649834, 46.132088, 45.641769> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.834009, -0.489247, 0.255080,
		0.551136, -0.760513, 0.343321,
		0.026023, 0.426916, 0.903917,
		36.657642, 46.260162, 45.912945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.443707, 45.466740, 45.720245>,  <36.639423, 45.961323, 45.280201>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.443707, 45.466740, 45.720245> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.374458, 45.795090, 45.937943>,  <36.332909, 45.992100, 46.068562>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.374458, 45.795090, 45.937943>,  <36.443707, 45.466740, 45.720245>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.374458, 45.795090, 45.937943> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.822335, -0.424582, 0.378806,
		0.542027, -0.381970, 0.748536,
		-0.173122, 0.820871, 0.544242,
		36.322521, 46.041351, 46.101215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.253845, 45.193527, 46.359467>,  <36.443707, 45.466740, 45.720245>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.253845, 45.193527, 46.359467> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.101173, 45.563240, 46.361366>,  <36.009571, 45.785069, 46.362507>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.101173, 45.563240, 46.361366>,  <36.253845, 45.193527, 46.359467>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.101173, 45.563240, 46.361366> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.824779, -0.342898, 0.449623,
		0.417207, 0.167697, 0.893206,
		-0.381679, 0.924283, 0.004747,
		35.986671, 45.840527, 46.362789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.047291, 45.290009, 47.046818>,  <36.253845, 45.193527, 46.359467>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.047291, 45.290009, 47.046818> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.825619, 45.545494, 46.833302>,  <35.692616, 45.698788, 46.705193>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.825619, 45.545494, 46.833302>,  <36.047291, 45.290009, 47.046818>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.825619, 45.545494, 46.833302> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.814186, -0.282515, 0.507234,
		0.173175, 0.715700, 0.676597,
		-0.554177, 0.638716, -0.533789,
		35.659367, 45.737110, 46.673164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.756992, 45.661835, 47.570671>,  <36.047291, 45.290009, 47.046818>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.756992, 45.661835, 47.570671> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.547070, 45.733643, 47.237843>,  <35.421116, 45.776726, 47.038143>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.547070, 45.733643, 47.237843>,  <35.756992, 45.661835, 47.570671>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.547070, 45.733643, 47.237843> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.849896, -0.056008, 0.523966,
		0.047460, 0.982158, 0.181967,
		-0.524809, 0.179520, -0.832074,
		35.389626, 45.787498, 46.988220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.105705, 46.073734, 47.782143>,  <35.756992, 45.661835, 47.570671>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.105705, 46.073734, 47.782143> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.023628, 45.949318, 47.410950>,  <34.974380, 45.874668, 47.188236>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.023628, 45.949318, 47.410950>,  <35.105705, 46.073734, 47.782143>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.023628, 45.949318, 47.410950> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.969155, -0.067666, 0.236982,
		-0.136505, 0.947983, -0.287566,
		-0.205196, -0.311045, -0.927979,
		34.962070, 45.856003, 47.132557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.561546, 46.529594, 47.477196>,  <35.105705, 46.073734, 47.782143>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.561546, 46.529594, 47.477196> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.543831, 46.173271, 47.296307>,  <34.533199, 45.959476, 47.187775>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.543831, 46.173271, 47.296307>,  <34.561546, 46.529594, 47.477196>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.543831, 46.173271, 47.296307> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.895905, -0.164871, 0.412518,
		-0.442032, 0.423416, -0.790776,
		-0.044291, -0.890807, -0.452218,
		34.530544, 45.906029, 47.160641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.859844, 46.404976, 47.314575>,  <34.561546, 46.529594, 47.477196>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.859844, 46.404976, 47.314575> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.028061, 46.045052, 47.268139>,  <34.128990, 45.829098, 47.240276>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.028061, 46.045052, 47.268139>,  <33.859844, 46.404976, 47.314575>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.028061, 46.045052, 47.268139> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.853763, -0.435782, 0.284926,
		-0.306971, -0.020710, -0.951494,
		0.420544, -0.899814, -0.116091,
		34.154224, 45.775108, 47.233311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.379032, 45.954002, 46.825657>,  <33.859844, 46.404976, 47.314575>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.379032, 45.954002, 46.825657> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.601376, 45.708244, 47.049637>,  <33.734783, 45.560791, 47.184025>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.601376, 45.708244, 47.049637>,  <33.379032, 45.954002, 46.825657>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.601376, 45.708244, 47.049637> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.824694, -0.492181, 0.278637,
		0.104405, -0.616671, -0.780267,
		0.555860, -0.614390, 0.559950,
		33.768135, 45.523926, 47.217621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<33.096775, 45.014725, 46.657757> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.316170, 45.036064, 46.991539>,  <33.447807, 45.048866, 47.191811>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.316170, 45.036064, 46.991539>,  <33.096775, 45.014725, 46.657757>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.316170, 45.036064, 46.991539> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.712395, -0.492692, 0.499748,
		0.437791, -0.868567, -0.232230,
		0.548482, 0.053346, 0.834459,
		33.480713, 45.052067, 47.241879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.192539, 44.331242, 46.904377>,  <33.096775, 45.014725, 46.657757>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.192539, 44.331242, 46.904377> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.282021, 44.531586, 47.238823>,  <33.335709, 44.651791, 47.439491>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.282021, 44.531586, 47.238823>,  <33.192539, 44.331242, 46.904377>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.282021, 44.531586, 47.238823> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.672946, -0.541191, 0.504238,
		0.705052, -0.675465, 0.215983,
		0.223707, 0.500859, 0.836119,
		33.349133, 44.681843, 47.489658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.377567, 43.814754, 47.356667>,  <33.192539, 44.331242, 46.904377>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.377567, 43.814754, 47.356667> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.259163, 44.117065, 47.590309>,  <33.188122, 44.298450, 47.730495>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.259163, 44.117065, 47.590309>,  <33.377567, 43.814754, 47.356667>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.259163, 44.117065, 47.590309> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459585, -0.648768, 0.606533,
		0.837353, -0.088907, 0.539384,
		-0.296010, 0.755775, 0.584108,
		33.170361, 44.343800, 47.765541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.618519, 43.636513, 48.019581>,  <33.377567, 43.814754, 47.356667>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.618519, 43.636513, 48.019581> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.333992, 43.914764, 48.059841>,  <33.163277, 44.081715, 48.083996>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.333992, 43.914764, 48.059841>,  <33.618519, 43.636513, 48.019581>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.333992, 43.914764, 48.059841> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489757, -0.593247, 0.638902,
		0.504148, 0.405168, 0.762675,
		-0.711318, 0.695627, 0.100650,
		33.120598, 44.123451, 48.090034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.360168, 43.604198, 48.794296>,  <33.618519, 43.636513, 48.019581>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.360168, 43.604198, 48.794296> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.071800, 43.784210, 48.583488>,  <32.898781, 43.892220, 48.457005>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.071800, 43.784210, 48.583488>,  <33.360168, 43.604198, 48.794296>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.071800, 43.784210, 48.583488> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.687814, -0.557679, 0.464657,
		-0.084796, 0.697470, 0.711579,
		-0.720917, 0.450033, -0.527018,
		32.855526, 43.919220, 48.425385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.887009, 43.647747, 49.322800>,  <33.360168, 43.604198, 48.794296>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.887009, 43.647747, 49.322800> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.699833, 43.686714, 48.971447>,  <32.587528, 43.710094, 48.760635>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.699833, 43.686714, 48.971447>,  <32.887009, 43.647747, 49.322800>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.699833, 43.686714, 48.971447> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.802358, -0.463486, 0.376035,
		-0.370483, 0.880733, 0.295044,
		-0.467935, 0.097416, -0.878377,
		32.559452, 43.715939, 48.707935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.133839, 43.718121, 49.548450>,  <32.887009, 43.647747, 49.322800>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.133839, 43.718121, 49.548450> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.122036, 43.626404, 49.159286>,  <32.114956, 43.571373, 48.925789>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.122036, 43.626404, 49.159286>,  <32.133839, 43.718121, 49.548450>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.122036, 43.626404, 49.159286> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.789956, -0.591033, 0.163244,
		-0.612453, 0.773373, -0.163691,
		-0.029502, -0.229288, -0.972911,
		32.113186, 43.557617, 48.867413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.425608, 43.866543, 49.343376>,  <32.133839, 43.718121, 49.548450>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.425608, 43.866543, 49.343376> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.584890, 43.595383, 49.096191>,  <31.680460, 43.432686, 48.947880>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.584890, 43.595383, 49.096191>,  <31.425608, 43.866543, 49.343376>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.584890, 43.595383, 49.096191> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.796019, -0.590150, 0.134449,
		-0.455836, 0.438374, -0.774624,
		0.398205, -0.677902, -0.617965,
		31.704351, 43.392014, 48.910801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.937346, 43.633884, 48.760998>,  <31.425608, 43.866543, 49.343376>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.937346, 43.633884, 48.760998> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.190760, 43.327034, 48.801304>,  <31.342808, 43.142925, 48.825485>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.190760, 43.327034, 48.801304>,  <30.937346, 43.633884, 48.760998>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.190760, 43.327034, 48.801304> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.772843, -0.621249, 0.129473,
		-0.036724, -0.159899, -0.986450,
		0.633534, -0.767126, 0.100762,
		31.380819, 43.096897, 48.831532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.613382, 43.178654, 48.407494>,  <30.937346, 43.633884, 48.760998>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.613382, 43.178654, 48.407494> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.880816, 42.992325, 48.639359>,  <31.041275, 42.880527, 48.778477>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.880816, 42.992325, 48.639359>,  <30.613382, 43.178654, 48.407494>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.880816, 42.992325, 48.639359> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.689717, -0.679853, 0.249180,
		0.278008, -0.566397, -0.775826,
		0.668582, -0.465827, 0.579658,
		31.081390, 42.852577, 48.813255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.525230, 42.485813, 48.223774>,  <30.613382, 43.178654, 48.407494>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.525230, 42.485813, 48.223774> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.664167, 42.524719, 48.596848>,  <30.747530, 42.548061, 48.820690>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.664167, 42.524719, 48.596848>,  <30.525230, 42.485813, 48.223774>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.664167, 42.524719, 48.596848> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.665582, -0.675059, 0.318270,
		0.660570, -0.731324, -0.169741,
		0.347343, 0.097263, 0.932680,
		30.768370, 42.553898, 48.876652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.377918, 41.787731, 48.622982>,  <30.525230, 42.485813, 48.223774>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.377918, 41.787731, 48.622982> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.513346, 42.020020, 48.919128>,  <30.594603, 42.159393, 49.096817>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.513346, 42.020020, 48.919128>,  <30.377918, 41.787731, 48.622982>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.513346, 42.020020, 48.919128> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.523087, -0.537883, 0.661107,
		0.782146, -0.611103, 0.121658,
		0.338566, 0.580720, 0.740363,
		30.614916, 42.194237, 49.141239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.644745, 41.264317, 49.148949>,  <30.377918, 41.787731, 48.622982>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.644745, 41.264317, 49.148949> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.554613, 41.606720, 49.335056>,  <30.500534, 41.812164, 49.446720>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.554613, 41.606720, 49.335056>,  <30.644745, 41.264317, 49.148949>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.554613, 41.606720, 49.335056> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374970, -0.516957, 0.769515,
		0.899235, -0.001068, 0.437464,
		-0.225328, 0.856011, 0.465266,
		30.487015, 41.863522, 49.474636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.635208, 41.082546, 49.802216>,  <30.644745, 41.264317, 49.148949>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.635208, 41.082546, 49.802216> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.466425, 41.442116, 49.849350>,  <30.365154, 41.657856, 49.877632>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.466425, 41.442116, 49.849350>,  <30.635208, 41.082546, 49.802216>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.466425, 41.442116, 49.849350> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.561940, -0.361317, 0.744092,
		0.711460, 0.247757, 0.657602,
		-0.421958, 0.898925, 0.117838,
		30.339838, 41.711792, 49.884701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.661734, 41.345806, 50.566563>,  <30.635208, 41.082546, 49.802216>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.661734, 41.345806, 50.566563> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.373800, 41.566467, 50.398029>,  <30.201040, 41.698864, 50.296909>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.373800, 41.566467, 50.398029>,  <30.661734, 41.345806, 50.566563>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.373800, 41.566467, 50.398029> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.581990, -0.148812, 0.799464,
		0.378326, 0.820692, 0.428175,
		-0.719832, 0.551651, -0.421335,
		30.157850, 41.731964, 50.271629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.462576, 41.853500, 51.032860>,  <30.661734, 41.345806, 50.566563>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.462576, 41.853500, 51.032860> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.138845, 41.818474, 50.800541>,  <29.944607, 41.797459, 50.661152>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.138845, 41.818474, 50.800541>,  <30.462576, 41.853500, 51.032860>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.138845, 41.818474, 50.800541> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.544955, -0.256942, 0.798126,
		-0.219120, 0.962451, 0.160231,
		-0.809327, -0.087567, -0.580794,
		29.896048, 41.792202, 50.626305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.794277, 42.130589, 51.469692>,  <30.462576, 41.853500, 51.032860>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.794277, 42.130589, 51.469692> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.597298, 41.959572, 51.166458>,  <29.479109, 41.856960, 50.984516>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.597298, 41.959572, 51.166458>,  <29.794277, 42.130589, 51.469692>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.597298, 41.959572, 51.166458> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.745015, -0.243216, 0.621126,
		-0.449939, 0.870661, -0.198755,
		-0.492451, -0.427544, -0.758089,
		29.449562, 41.831310, 50.939030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.173683, 42.404701, 51.380581>,  <29.794277, 42.130589, 51.469692>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.173683, 42.404701, 51.380581> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.145985, 42.035187, 51.229939>,  <29.129366, 41.813480, 51.139553>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.145985, 42.035187, 51.229939>,  <29.173683, 42.404701, 51.380581>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.145985, 42.035187, 51.229939> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.556311, -0.277606, 0.783232,
		-0.828084, 0.263746, -0.494687,
		-0.069247, -0.923782, -0.376606,
		29.125210, 41.758053, 51.116959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.453871, 42.230267, 51.527252>,  <29.173683, 42.404701, 51.380581>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.453871, 42.230267, 51.527252> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.630215, 41.882408, 51.438389>,  <28.736021, 41.673691, 51.385071>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.630215, 41.882408, 51.438389>,  <28.453871, 42.230267, 51.527252>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.630215, 41.882408, 51.438389> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.582174, -0.465432, 0.666668,
		-0.683165, -0.164575, -0.711478,
		0.440862, -0.869648, -0.222155,
		28.762474, 41.621513, 51.371742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.915136, 41.721947, 51.574944>,  <28.453871, 42.230267, 51.527252>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.915136, 41.721947, 51.574944> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.240734, 41.491615, 51.605495>,  <28.436092, 41.353416, 51.623825>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.240734, 41.491615, 51.605495>,  <27.915136, 41.721947, 51.574944>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.240734, 41.491615, 51.605495> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371264, -0.414613, 0.830818,
		-0.446742, -0.704638, -0.551278,
		0.813993, -0.575831, 0.076382,
		28.484932, 41.318867, 51.628410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.679255, 41.119324, 51.574642>,  <27.915136, 41.721947, 51.574944>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.679255, 41.119324, 51.574642> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.037193, 41.077461, 51.748215>,  <28.251957, 41.052345, 51.852360>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.037193, 41.077461, 51.748215>,  <27.679255, 41.119324, 51.574642>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.037193, 41.077461, 51.748215> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426570, -0.486853, 0.762242,
		0.131492, -0.867192, -0.480299,
		0.894845, -0.104653, 0.433935,
		28.305647, 41.046066, 51.878395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.759319, 40.393272, 51.755070>,  <27.679255, 41.119324, 51.574642>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.759319, 40.393272, 51.755070> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.985325, 40.621414, 51.993549>,  <28.120928, 40.758301, 52.136639>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.985325, 40.621414, 51.993549>,  <27.759319, 40.393272, 51.755070>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.985325, 40.621414, 51.993549> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440393, -0.402583, 0.802484,
		0.697721, -0.715977, 0.023715,
		0.565013, 0.570354, 0.596202,
		28.154829, 40.792519, 52.172409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.172644, 39.838089, 52.153633>,  <27.759319, 40.393272, 51.755070>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.172644, 39.838089, 52.153633> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.115246, 40.196487, 52.321724>,  <28.080807, 40.411526, 52.422581>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.115246, 40.196487, 52.321724>,  <28.172644, 39.838089, 52.153633>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.115246, 40.196487, 52.321724> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484023, -0.433914, 0.759895,
		0.863210, -0.094360, 0.495949,
		-0.143496, 0.895999, 0.420231,
		28.072197, 40.465286, 52.447792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.522001, 39.261887, 52.566555>,  <28.172644, 39.838089, 52.153633>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.522001, 39.261887, 52.566555> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.597000, 38.869125, 52.577183>,  <28.642000, 38.633469, 52.583557>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.597000, 38.869125, 52.577183>,  <28.522001, 39.261887, 52.566555>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.597000, 38.869125, 52.577183> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.847221, 0.147975, -0.510215,
		0.497052, 0.118173, 0.859636,
		0.187499, -0.981905, 0.026567,
		28.653250, 38.574554, 52.585152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.245853, 39.048973, 52.828377>,  <28.522001, 39.261887, 52.566555>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.245853, 39.048973, 52.828377> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.097752, 38.756142, 52.599651>,  <29.008890, 38.580444, 52.462414>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.097752, 38.756142, 52.599651>,  <29.245853, 39.048973, 52.828377>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.097752, 38.756142, 52.599651> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.890921, -0.105573, -0.441717,
		0.263002, -0.672991, 0.691312,
		-0.370256, -0.732077, -0.571816,
		28.986675, 38.536518, 52.428108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.823685, 38.597244, 52.828350>,  <29.245853, 39.048973, 52.828377>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.823685, 38.597244, 52.828350> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.597879, 38.547577, 52.501938>,  <29.462397, 38.517776, 52.306091>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.597879, 38.547577, 52.501938>,  <29.823685, 38.597244, 52.828350>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.597879, 38.547577, 52.501938> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.814738, 0.074755, -0.574991,
		0.132395, -0.989442, 0.058959,
		-0.564512, -0.124162, -0.816033,
		29.428526, 38.510326, 52.257130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.157951, 38.127045, 52.512341>,  <29.823685, 38.597244, 52.828350>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.157951, 38.127045, 52.512341> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.916801, 38.267807, 52.225929>,  <29.772112, 38.352264, 52.054081>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.916801, 38.267807, 52.225929>,  <30.157951, 38.127045, 52.512341>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.916801, 38.267807, 52.225929> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.754075, -0.041812, -0.655456,
		-0.260597, -0.935102, -0.240154,
		-0.602877, 0.351904, -0.716033,
		29.735939, 38.373379, 52.011120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.310253, 37.665371, 51.913506>,  <30.157951, 38.127045, 52.512341>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.310253, 37.665371, 51.913506> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.151632, 37.994995, 51.751678>,  <30.056459, 38.192768, 51.654583>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.151632, 37.994995, 51.751678>,  <30.310253, 37.665371, 51.913506>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.151632, 37.994995, 51.751678> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.675375, -0.036613, -0.736565,
		-0.621785, -0.565322, -0.542028,
		-0.396551, 0.824057, -0.404570,
		30.032667, 38.242210, 51.630306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.307867, 37.581005, 51.220303>,  <30.310253, 37.665371, 51.913506>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.307867, 37.581005, 51.220303> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.269152, 37.976593, 51.265148>,  <30.245922, 38.213947, 51.292057>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.269152, 37.976593, 51.265148>,  <30.307867, 37.581005, 51.220303>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.269152, 37.976593, 51.265148> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471845, 0.144773, -0.869715,
		-0.876353, -0.031278, -0.480653,
		-0.096788, 0.988970, 0.112114,
		30.240116, 38.273285, 51.298782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.080488, 37.914604, 50.584820>,  <30.307867, 37.581005, 51.220303>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.080488, 37.914604, 50.584820> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.231857, 38.233017, 50.773766>,  <30.322680, 38.424065, 50.887135>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.231857, 38.233017, 50.773766>,  <30.080488, 37.914604, 50.584820>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.231857, 38.233017, 50.773766> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314576, 0.369345, -0.874429,
		-0.870539, 0.479500, -0.110643,
		0.378424, 0.796030, 0.472368,
		30.345385, 38.471825, 50.915478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.944931, 38.483212, 50.218548>,  <30.080488, 37.914604, 50.584820>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.944931, 38.483212, 50.218548> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.250782, 38.608559, 50.443810>,  <30.434294, 38.683765, 50.578968>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.250782, 38.608559, 50.443810>,  <29.944931, 38.483212, 50.218548>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.250782, 38.608559, 50.443810> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471608, 0.323484, -0.820332,
		-0.439235, 0.892838, 0.099560,
		0.764629, 0.313365, 0.563155,
		30.480171, 38.702568, 50.612755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.094069, 39.013012, 49.911098>,  <29.944931, 38.483212, 50.218548>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.094069, 39.013012, 49.911098> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.405079, 38.978355, 50.160240>,  <30.591684, 38.957561, 50.309727>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.405079, 38.978355, 50.160240>,  <30.094069, 39.013012, 49.911098>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.405079, 38.978355, 50.160240> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.620738, 0.264335, -0.738113,
		-0.100689, 0.960531, 0.259311,
		0.777526, -0.086644, 0.622853,
		30.638336, 38.952362, 50.347095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.372379, 39.705990, 49.806900>,  <30.094069, 39.013012, 49.911098>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.372379, 39.705990, 49.806900> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.643639, 39.431374, 49.911800>,  <30.806395, 39.266602, 49.974739>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.643639, 39.431374, 49.911800>,  <30.372379, 39.705990, 49.806900>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.643639, 39.431374, 49.911800> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.640531, 0.377183, -0.668919,
		0.360327, 0.621603, 0.695538,
		0.678148, -0.686544, 0.262247,
		30.847082, 39.225410, 49.990475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.523268, 40.060631, 49.217926>,  <30.372379, 39.705990, 49.806900>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.523268, 40.060631, 49.217926> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.797224, 39.847107, 49.416306>,  <30.961597, 39.718990, 49.535336>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.797224, 39.847107, 49.416306>,  <30.523268, 40.060631, 49.217926>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.797224, 39.847107, 49.416306> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.726480, 0.552712, -0.408334,
		-0.056144, 0.639963, 0.766352,
		0.684891, -0.533813, 0.495952,
		31.002691, 39.686962, 49.565090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.050556, 40.438034, 49.635441>,  <30.523268, 40.060631, 49.217926>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.050556, 40.438034, 49.635441> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.241093, 40.101501, 49.533249>,  <31.355413, 39.899582, 49.471935>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.241093, 40.101501, 49.533249>,  <31.050556, 40.438034, 49.635441>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.241093, 40.101501, 49.533249> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.695240, 0.538276, -0.476340,
		0.538276, 0.049281, 0.841327,
		0.476340, -0.841327, -0.255478,
		31.383995, 39.849102, 49.456604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.641497, 40.507908, 49.849106>,  <31.050556, 40.438034, 49.635441>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.641497, 40.507908, 49.849106> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.682491, 40.230209, 49.564144>,  <31.707088, 40.063591, 49.393166>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.682491, 40.230209, 49.564144>,  <31.641497, 40.507908, 49.849106>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.682491, 40.230209, 49.564144> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.597611, 0.615495, -0.513835,
		0.795209, -0.373079, 0.477970,
		0.102487, -0.694246, -0.712403,
		31.713238, 40.021935, 49.350422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.343681, 40.435467, 49.721333>,  <31.641497, 40.507908, 49.849106>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.343681, 40.435467, 49.721333> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.171173, 40.307358, 49.383949>,  <32.067669, 40.230492, 49.181519>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.171173, 40.307358, 49.383949>,  <32.343681, 40.435467, 49.721333>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.171173, 40.307358, 49.383949> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.696440, 0.476143, -0.536898,
		0.573564, -0.818970, 0.017704,
		-0.431273, -0.320275, -0.843461,
		32.041790, 40.211277, 49.130913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.867435, 40.203445, 49.284718>,  <32.343681, 40.435467, 49.721333>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.867435, 40.203445, 49.284718> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.564774, 40.256111, 49.028549>,  <32.383175, 40.287712, 48.874847>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.564774, 40.256111, 49.028549>,  <32.867435, 40.203445, 49.284718>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.564774, 40.256111, 49.028549> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.626854, 0.424471, -0.653360,
		0.185814, -0.895817, -0.403713,
		-0.756656, 0.131666, -0.640419,
		32.337776, 40.295612, 48.836422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.175396, 40.139565, 48.531071>,  <32.867435, 40.203445, 49.284718>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.175396, 40.139565, 48.531071> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.832077, 40.335045, 48.468452>,  <32.626087, 40.452332, 48.430882>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.832077, 40.335045, 48.468452>,  <33.175396, 40.139565, 48.531071>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.832077, 40.335045, 48.468452> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411256, 0.472613, -0.779426,
		-0.306920, -0.733356, -0.606620,
		-0.858294, 0.488698, -0.156543,
		32.574589, 40.481655, 48.421490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.050579, 39.987583, 47.821270>,  <33.175396, 40.139565, 48.531071>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.050579, 39.987583, 47.821270> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.852448, 40.321808, 47.916332>,  <32.733566, 40.522343, 47.973370>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.852448, 40.321808, 47.916332>,  <33.050579, 39.987583, 47.821270>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.852448, 40.321808, 47.916332> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226437, 0.388306, -0.893277,
		-0.838673, -0.388655, -0.381543,
		-0.495333, 0.835563, 0.237656,
		32.703846, 40.572475, 47.987629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.578907, 40.120415, 47.263680>,  <33.050579, 39.987583, 47.821270>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.578907, 40.120415, 47.263680> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.650513, 40.461731, 47.459579>,  <32.693478, 40.666519, 47.577118>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.650513, 40.461731, 47.459579>,  <32.578907, 40.120415, 47.263680>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.650513, 40.461731, 47.459579> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273203, 0.435101, -0.857932,
		-0.945153, 0.287384, -0.155231,
		0.179015, 0.853286, 0.489751,
		32.704216, 40.717716, 47.606506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.272034, 40.619892, 46.807148>,  <32.578907, 40.120415, 47.263680>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.272034, 40.619892, 46.807148> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.527985, 40.827988, 47.033390>,  <32.681557, 40.952847, 47.169136>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.527985, 40.827988, 47.033390>,  <32.272034, 40.619892, 46.807148>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.527985, 40.827988, 47.033390> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363021, 0.444074, -0.819154,
		-0.677327, 0.729484, 0.095295,
		0.639878, 0.520242, 0.565601,
		32.719948, 40.984058, 47.203072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.187748, 41.315163, 46.624828>,  <32.272034, 40.619892, 46.807148>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.187748, 41.315163, 46.624828> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.546135, 41.342438, 46.800369>,  <32.761166, 41.358803, 46.905693>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.546135, 41.342438, 46.800369>,  <32.187748, 41.315163, 46.624828>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.546135, 41.342438, 46.800369> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301337, 0.632537, -0.713507,
		-0.326245, 0.771522, 0.546184,
		0.895969, 0.068192, 0.438851,
		32.814926, 41.362896, 46.932026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.398628, 42.002693, 46.603065>,  <32.187748, 41.315163, 46.624828>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.398628, 42.002693, 46.603065> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.741211, 41.810616, 46.678856>,  <32.946758, 41.695370, 46.724331>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.741211, 41.810616, 46.678856>,  <32.398628, 42.002693, 46.603065>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.741211, 41.810616, 46.678856> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482125, 0.612859, -0.626066,
		0.184513, 0.627547, 0.756400,
		0.856452, -0.480196, 0.189475,
		32.998146, 41.666557, 46.735699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<35.604900, 47.057018, 46.379333> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.729565, 46.677429, 46.398613>,  <35.804363, 46.449677, 46.410183>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.729565, 46.677429, 46.398613>,  <35.604900, 47.057018, 46.379333>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.729565, 46.677429, 46.398613> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.949072, 0.308423, -0.064331,
		0.046182, 0.065796, 0.996764,
		0.311657, -0.948971, 0.048201,
		35.823063, 46.392738, 46.413074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.123295, 47.005245, 46.937912>,  <35.604900, 47.057018, 46.379333>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.123295, 47.005245, 46.937912> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.170570, 46.723381, 46.658062>,  <36.198936, 46.554260, 46.490150>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.170570, 46.723381, 46.658062>,  <36.123295, 47.005245, 46.937912>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.170570, 46.723381, 46.658062> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.947161, 0.291580, -0.133670,
		0.298190, -0.646861, 0.701892,
		0.118192, -0.704664, -0.699628,
		36.206028, 46.511982, 46.448174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.704964, 46.834129, 47.101337>,  <36.123295, 47.005245, 46.937912>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.704964, 46.834129, 47.101337> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.674133, 46.657288, 46.743877>,  <36.655636, 46.551182, 46.529404>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.674133, 46.657288, 46.743877>,  <36.704964, 46.834129, 47.101337>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.674133, 46.657288, 46.743877> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.943611, 0.257090, -0.208576,
		0.321960, -0.859330, 0.397358,
		-0.077079, -0.442104, -0.893646,
		36.651009, 46.524658, 46.475784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.355698, 46.486973, 46.984146>,  <36.704964, 46.834129, 47.101337>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.355698, 46.486973, 46.984146> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.207016, 46.524452, 46.614704>,  <37.117805, 46.546940, 46.393040>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.207016, 46.524452, 46.614704>,  <37.355698, 46.486973, 46.984146>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.207016, 46.524452, 46.614704> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.882061, 0.345878, -0.319900,
		0.289483, -0.933589, -0.211210,
		-0.371708, 0.093694, -0.923609,
		37.095505, 46.552559, 46.337620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.928173, 46.343258, 46.494728>,  <37.355698, 46.486973, 46.984146>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.928173, 46.343258, 46.494728> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.669785, 46.545982, 46.266388>,  <37.514751, 46.667618, 46.129383>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.669785, 46.545982, 46.266388>,  <37.928173, 46.343258, 46.494728>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.669785, 46.545982, 46.266388> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.763178, 0.445331, -0.468231,
		0.016916, -0.738124, -0.674453,
		-0.645967, 0.506807, -0.570853,
		37.475994, 46.698025, 46.095131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.188950, 46.182186, 45.813461>,  <37.928173, 46.343258, 46.494728>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.188950, 46.182186, 45.813461> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.975643, 46.519844, 45.835560>,  <37.847660, 46.722439, 45.848820>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.975643, 46.519844, 45.835560>,  <38.188950, 46.182186, 45.813461>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.975643, 46.519844, 45.835560> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.706791, 0.480480, -0.519216,
		-0.464836, -0.237834, -0.852856,
		-0.533267, 0.844141, 0.055245,
		37.815662, 46.773087, 45.852135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.117493, 46.409424, 45.100224>,  <38.188950, 46.182186, 45.813461>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.117493, 46.409424, 45.100224> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.056416, 46.724152, 45.339424>,  <38.019768, 46.912987, 45.482944>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.056416, 46.724152, 45.339424>,  <38.117493, 46.409424, 45.100224>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.056416, 46.724152, 45.339424> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.775153, 0.470704, -0.421397,
		-0.613043, 0.399195, -0.681778,
		-0.152696, 0.786817, 0.597999,
		38.010609, 46.960197, 45.518826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.027584, 46.991207, 44.655380>,  <38.117493, 46.409424, 45.100224>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.027584, 46.991207, 44.655380> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.086967, 47.209038, 44.985565>,  <38.122597, 47.339737, 45.183678>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.086967, 47.209038, 44.985565>,  <38.027584, 46.991207, 44.655380>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.086967, 47.209038, 44.985565> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.804374, 0.419073, -0.421141,
		-0.575275, 0.726507, -0.375828,
		0.148462, 0.544578, 0.825466,
		38.131508, 47.372410, 45.233204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.206310, 47.605598, 44.351639>,  <38.027584, 46.991207, 44.655380>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.206310, 47.605598, 44.351639> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.334770, 47.627960, 44.729790>,  <38.411846, 47.641376, 44.956680>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.334770, 47.627960, 44.729790>,  <38.206310, 47.605598, 44.351639>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.334770, 47.627960, 44.729790> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.747036, 0.598598, -0.289166,
		-0.582067, 0.799096, 0.150477,
		0.321147, 0.055902, 0.945378,
		38.431114, 47.644730, 45.013405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.213184, 48.331059, 44.618885>,  <38.206310, 47.605598, 44.351639>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.213184, 48.331059, 44.618885> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.484821, 48.147011, 44.847664>,  <38.647804, 48.036583, 44.984932>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.484821, 48.147011, 44.847664>,  <38.213184, 48.331059, 44.618885>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.484821, 48.147011, 44.847664> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.709280, 0.612017, -0.349796,
		-0.189093, 0.643214, 0.741970,
		0.679092, -0.460121, 0.571947,
		38.688549, 48.008976, 45.019249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.673096, 48.845104, 44.939671>,  <38.213184, 48.331059, 44.618885>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.673096, 48.845104, 44.939671> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.871593, 48.497910, 44.947029>,  <38.990692, 48.289593, 44.951443>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.871593, 48.497910, 44.947029>,  <38.673096, 48.845104, 44.939671>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.871593, 48.497910, 44.947029> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.854004, 0.484223, -0.190277,
		0.156251, 0.110133, 0.981558,
		0.496249, -0.867985, 0.018393,
		39.020470, 48.237514, 44.952545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.290142, 48.872311, 45.436478>,  <38.673096, 48.845104, 44.939671>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.290142, 48.872311, 45.436478> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.362320, 48.608475, 45.144619>,  <39.405624, 48.450172, 44.969505>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.362320, 48.608475, 45.144619>,  <39.290142, 48.872311, 45.436478>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.362320, 48.608475, 45.144619> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.865763, 0.458565, -0.200432,
		0.466794, -0.595536, 0.653789,
		0.180440, -0.659587, -0.729648,
		39.416451, 48.410599, 44.925724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.936531, 48.766605, 45.450947>,  <39.290142, 48.872311, 45.436478>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.936531, 48.766605, 45.450947> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.832077, 48.705864, 45.069633>,  <39.769405, 48.669418, 44.840847>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.832077, 48.705864, 45.069633>,  <39.936531, 48.766605, 45.450947>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.832077, 48.705864, 45.069633> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.666661, 0.685839, -0.291870,
		0.698119, -0.711735, -0.077867,
		-0.261138, -0.151849, -0.953283,
		39.753735, 48.660309, 44.783649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.498455, 48.512970, 45.168579>,  <39.936531, 48.766605, 45.450947>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.498455, 48.512970, 45.168579> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.263824, 48.693451, 44.899551>,  <40.123047, 48.801739, 44.738136>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.263824, 48.693451, 44.899551>,  <40.498455, 48.512970, 45.168579>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.263824, 48.693451, 44.899551> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.695067, 0.706706, -0.132091,
		0.415706, -0.544960, -0.728153,
		-0.586575, 0.451204, -0.672566,
		40.087852, 48.828812, 44.697781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.142521, 48.414429, 45.477917>,  <40.498455, 48.512970, 45.168579>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.142521, 48.414429, 45.477917> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.336784, 48.529060, 45.808250>,  <41.453342, 48.597839, 46.006451>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.336784, 48.529060, 45.808250>,  <41.142521, 48.414429, 45.477917>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.336784, 48.529060, 45.808250> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.536951, -0.647698, 0.540528,
		0.689797, -0.705947, -0.160683,
		0.485659, 0.286576, 0.825839,
		41.482483, 48.615032, 46.056004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.366859, 47.862743, 45.781506>,  <41.142521, 48.414429, 45.477917>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.366859, 47.862743, 45.781506> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.362011, 48.124619, 46.083828>,  <41.359100, 48.281742, 46.265221>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.362011, 48.124619, 46.083828>,  <41.366859, 47.862743, 45.781506>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.362011, 48.124619, 46.083828> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352101, -0.710244, 0.609572,
		0.935884, -0.258731, 0.239123,
		-0.012120, 0.654684, 0.755805,
		41.358376, 48.321022, 46.310570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.779137, 47.586056, 46.316624>,  <41.366859, 47.862743, 45.781506>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.779137, 47.586056, 46.316624> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.562256, 47.844185, 46.531876>,  <41.432129, 47.999062, 46.661026>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.562256, 47.844185, 46.531876>,  <41.779137, 47.586056, 46.316624>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.562256, 47.844185, 46.531876> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404864, -0.761834, 0.505662,
		0.736277, 0.056302, 0.674334,
		-0.542200, 0.645321, 0.538126,
		41.399597, 48.037781, 46.693314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.818855, 47.337948, 46.966526>,  <41.779137, 47.586056, 46.316624>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.818855, 47.337948, 46.966526> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.486332, 47.560249, 46.963093>,  <41.286819, 47.693630, 46.961033>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.486332, 47.560249, 46.963093>,  <41.818855, 47.337948, 46.966526>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.486332, 47.560249, 46.963093> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494097, -0.731829, 0.469355,
		0.254560, 0.394420, 0.882968,
		-0.831304, 0.555751, -0.008587,
		41.236942, 47.726974, 46.960518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.522606, 47.352165, 47.689301>,  <41.818855, 47.337948, 46.966526>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.522606, 47.352165, 47.689301> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.230515, 47.401634, 47.420532>,  <41.055260, 47.431316, 47.259270>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.230515, 47.401634, 47.420532>,  <41.522606, 47.352165, 47.689301>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.230515, 47.401634, 47.420532> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.533846, -0.717031, 0.448192,
		-0.426357, 0.685982, 0.589616,
		-0.730225, 0.123675, -0.671920,
		41.011448, 47.438736, 47.218956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.921295, 47.272472, 48.122734>,  <41.522606, 47.352165, 47.689301>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.921295, 47.272472, 48.122734> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.747845, 47.263847, 47.762402>,  <40.643772, 47.258675, 47.546200>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.747845, 47.263847, 47.762402>,  <40.921295, 47.272472, 48.122734>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.747845, 47.263847, 47.762402> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.717050, -0.597187, 0.359454,
		-0.545715, 0.801812, 0.243498,
		-0.433628, -0.021559, -0.900834,
		40.617756, 47.257378, 47.492153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.252411, 47.494835, 48.197979>,  <40.921295, 47.272472, 48.122734>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.252411, 47.494835, 48.197979> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.269386, 47.264420, 47.871452>,  <40.279572, 47.126171, 47.675537>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.269386, 47.264420, 47.871452>,  <40.252411, 47.494835, 48.197979>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.269386, 47.264420, 47.871452> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.801465, -0.507470, 0.316430,
		-0.596534, 0.640823, -0.483211,
		0.042439, -0.576038, -0.816321,
		40.282120, 47.091610, 47.626556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.583664, 47.377193, 48.149647>,  <40.252411, 47.494835, 48.197979>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.583664, 47.377193, 48.149647> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.752357, 47.112488, 47.901707>,  <39.853573, 46.953667, 47.752941>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.752357, 47.112488, 47.901707>,  <39.583664, 47.377193, 48.149647>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.752357, 47.112488, 47.901707> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.740040, -0.646215, 0.186405,
		-0.523913, 0.380103, -0.762258,
		0.421730, -0.661761, -0.619852,
		39.878876, 46.913960, 47.715752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.042118, 47.122097, 47.678257>,  <39.583664, 47.377193, 48.149647>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.042118, 47.122097, 47.678257> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.331413, 46.845863, 47.676289>,  <39.504990, 46.680122, 47.675110>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.331413, 46.845863, 47.676289>,  <39.042118, 47.122097, 47.678257>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.331413, 46.845863, 47.676289> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.688060, -0.721162, 0.080617,
		-0.059220, -0.054920, -0.996733,
		0.723234, -0.690586, -0.004919,
		39.548382, 46.638687, 47.674812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.818665, 46.605614, 47.229355>,  <39.042118, 47.122097, 47.678257>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.818665, 46.605614, 47.229355> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.090118, 46.420334, 47.457352>,  <39.252991, 46.309166, 47.594151>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.090118, 46.420334, 47.457352>,  <38.818665, 46.605614, 47.229355>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.090118, 46.420334, 47.457352> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.708015, -0.618990, 0.339949,
		0.195356, -0.634268, -0.748025,
		0.678639, -0.463202, 0.569994,
		39.293709, 46.281372, 47.628349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.629910, 45.935013, 47.116959>,  <38.818665, 46.605614, 47.229355>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.629910, 45.935013, 47.116959> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.851601, 45.932076, 47.449890>,  <38.984615, 45.930313, 47.649651>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.851601, 45.932076, 47.449890>,  <38.629910, 45.935013, 47.116959>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.851601, 45.932076, 47.449890> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.606121, -0.688907, 0.397523,
		0.570479, -0.724813, -0.386264,
		0.554230, -0.007345, 0.832331,
		39.017868, 45.929871, 47.699589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.827076, 45.349056, 47.151936>,  <38.629910, 45.935013, 47.116959>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.827076, 45.349056, 47.151936> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.842632, 45.477112, 47.530563>,  <38.851967, 45.553947, 47.757740>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.842632, 45.477112, 47.530563>,  <38.827076, 45.349056, 47.151936>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.842632, 45.477112, 47.530563> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.594258, -0.754154, 0.279480,
		0.803334, -0.573376, 0.160920,
		0.038888, 0.320144, 0.946571,
		38.854298, 45.573154, 47.814533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.834393, 44.773216, 47.535080>,  <38.827076, 45.349056, 47.151936>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.834393, 44.773216, 47.535080> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.722637, 45.051765, 47.799507>,  <38.655586, 45.218895, 47.958164>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.722637, 45.051765, 47.799507>,  <38.834393, 44.773216, 47.535080>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.722637, 45.051765, 47.799507> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508341, -0.691353, 0.513441,
		0.814576, -0.192599, 0.547148,
		-0.279384, 0.696374, 0.661065,
		38.638821, 45.260677, 47.997826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.757957, 44.486572, 48.086437>,  <38.834393, 44.773216, 47.535080>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.757957, 44.486572, 48.086437> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.554626, 44.813889, 48.193779>,  <38.432629, 45.010277, 48.258183>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.554626, 44.813889, 48.193779>,  <38.757957, 44.486572, 48.086437>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.554626, 44.813889, 48.193779> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.651559, -0.569206, 0.501473,
		0.563097, 0.080063, 0.822503,
		-0.508323, 0.818287, 0.268352,
		38.402130, 45.059376, 48.274284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.409210, 44.551056, 48.534756>,  <38.757957, 44.486572, 48.086437>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.409210, 44.551056, 48.534756> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.625744, 44.219170, 48.480309>,  <39.755665, 44.020039, 48.447639>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.625744, 44.219170, 48.480309>,  <39.409210, 44.551056, 48.534756>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.625744, 44.219170, 48.480309> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558981, 0.476071, -0.678894,
		0.628093, 0.291420, 0.721508,
		0.541332, -0.829718, -0.136118,
		39.788143, 43.970253, 48.439472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.000488, 44.813187, 48.494652>,  <39.409210, 44.551056, 48.534756>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.000488, 44.813187, 48.494652> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.055683, 44.456375, 48.322495>,  <40.088799, 44.242287, 48.219200>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.055683, 44.456375, 48.322495>,  <40.000488, 44.813187, 48.494652>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.055683, 44.456375, 48.322495> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.655987, 0.407886, -0.635067,
		0.742052, -0.194703, 0.641443,
		0.137986, -0.892031, -0.430396,
		40.097080, 44.188766, 48.193375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.752151, 44.694920, 48.375153>,  <40.000488, 44.813187, 48.494652>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.752151, 44.694920, 48.375153> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.586563, 44.420319, 48.136040>,  <40.487209, 44.255558, 47.992573>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.586563, 44.420319, 48.136040>,  <40.752151, 44.694920, 48.375153>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.586563, 44.420319, 48.136040> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.673808, 0.210447, -0.708304,
		0.612056, -0.696004, 0.375454,
		-0.413969, -0.686506, -0.597779,
		40.462372, 44.214367, 47.956707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.306431, 44.417168, 48.067768>,  <40.752151, 44.694920, 48.375153>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.306431, 44.417168, 48.067768> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.997360, 44.320831, 47.832832>,  <40.811916, 44.263027, 47.691872>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.997360, 44.320831, 47.832832>,  <41.306431, 44.417168, 48.067768>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.997360, 44.320831, 47.832832> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571327, 0.139436, -0.808791,
		0.276690, -0.960495, 0.029862,
		-0.772676, -0.240845, -0.587337,
		40.765556, 44.248577, 47.656631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.549347, 43.924305, 47.655468>,  <41.306431, 44.417168, 48.067768>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.549347, 43.924305, 47.655468> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.240017, 44.057022, 47.439362>,  <41.054420, 44.136654, 47.309696>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.240017, 44.057022, 47.439362>,  <41.549347, 43.924305, 47.655468>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.240017, 44.057022, 47.439362> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568447, -0.014541, -0.822591,
		-0.280789, -0.943238, -0.177365,
		-0.773321, 0.331797, -0.540264,
		41.008022, 44.156563, 47.277283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.376476, 43.416626, 46.981541>,  <41.549347, 43.924305, 47.655468>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.376476, 43.416626, 46.981541> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.240074, 43.788452, 46.925499>,  <41.158234, 44.011547, 46.891872>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.240074, 43.788452, 46.925499>,  <41.376476, 43.416626, 46.981541>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.240074, 43.788452, 46.925499> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506371, 0.056067, -0.860491,
		-0.792025, -0.364378, -0.489822,
		-0.341007, 0.929562, -0.140104,
		41.137772, 44.067322, 46.883469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.128120, 43.403500, 46.342957>,  <41.376476, 43.416626, 46.981541>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.128120, 43.403500, 46.342957> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.182125, 43.796028, 46.397774>,  <41.214527, 44.031544, 46.430664>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.182125, 43.796028, 46.397774>,  <41.128120, 43.403500, 46.342957>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.182125, 43.796028, 46.397774> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535840, 0.044029, -0.843171,
		-0.833454, 0.187276, -0.519886,
		0.135015, 0.981320, 0.137046,
		41.222630, 44.090424, 46.438889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.029610, 43.591209, 45.715706>,  <41.128120, 43.403500, 46.342957>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.029610, 43.591209, 45.715706> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.204250, 43.924248, 45.852036>,  <41.309032, 44.124073, 45.933834>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.204250, 43.924248, 45.852036>,  <41.029610, 43.591209, 45.715706>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.204250, 43.924248, 45.852036> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369595, 0.179403, -0.911710,
		-0.820233, 0.524017, -0.229397,
		0.436597, 0.832598, 0.340827,
		41.335228, 44.174026, 45.954285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.043694, 44.124104, 45.121193>,  <41.029610, 43.591209, 45.715706>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.043694, 44.124104, 45.121193> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.326916, 44.234619, 45.381138>,  <41.496849, 44.300930, 45.537106>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.326916, 44.234619, 45.381138>,  <41.043694, 44.124104, 45.121193>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.326916, 44.234619, 45.381138> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.632182, 0.162043, -0.757686,
		-0.314648, 0.947314, -0.059932,
		0.708055, 0.276293, 0.649862,
		41.539333, 44.317509, 45.576096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.342785, 44.669754, 44.833576>,  <41.043694, 44.124104, 45.121193>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.342785, 44.669754, 44.833576> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.612988, 44.595978, 45.119141>,  <41.775108, 44.551712, 45.290478>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.612988, 44.595978, 45.119141>,  <41.342785, 44.669754, 44.833576>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.612988, 44.595978, 45.119141> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.723119, 0.355032, -0.592496,
		-0.144180, 0.916479, 0.373201,
		0.675508, -0.184443, 0.713912,
		41.815639, 44.540646, 45.333313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.702549, 45.381908, 44.944130>,  <41.342785, 44.669754, 44.833576>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.702549, 45.381908, 44.944130> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.915947, 45.060768, 45.050575>,  <42.043983, 44.868084, 45.114441>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.915947, 45.060768, 45.050575>,  <41.702549, 45.381908, 44.944130>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.915947, 45.060768, 45.050575> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.758607, 0.315061, -0.570309,
		0.374033, 0.506129, 0.777131,
		0.533493, -0.802852, 0.266109,
		42.075996, 44.819912, 45.130409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.354458, 45.630245, 45.287037>,  <41.702549, 45.381908, 44.944130>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.354458, 45.630245, 45.287037> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.430283, 45.268837, 45.133301>,  <42.475777, 45.051991, 45.041061>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.430283, 45.268837, 45.133301>,  <42.354458, 45.630245, 45.287037>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.430283, 45.268837, 45.133301> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.755220, 0.384317, -0.530983,
		0.627462, -0.189605, 0.755210,
		0.189563, -0.903521, -0.384338,
		42.487152, 44.997780, 45.017998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<37.923508, 43.315388, 51.593754> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.954060, 42.973167, 51.388931>,  <37.972389, 42.767834, 51.266037>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.954060, 42.973167, 51.388931>,  <37.923508, 43.315388, 51.593754>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.954060, 42.973167, 51.388931> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.768590, 0.377668, -0.516368,
		0.635165, -0.354121, 0.686413,
		0.076380, -0.855550, -0.512055,
		37.976974, 42.716503, 51.235313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.636703, 43.106934, 51.664963>,  <37.923508, 43.315388, 51.593754>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.636703, 43.106934, 51.664963> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.481556, 42.924377, 51.344646>,  <38.388470, 42.814842, 51.152458>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.481556, 42.924377, 51.344646>,  <38.636703, 43.106934, 51.664963>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.481556, 42.924377, 51.344646> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.830393, 0.204023, -0.518481,
		0.400010, -0.866072, 0.299851,
		-0.387865, -0.456392, -0.800791,
		38.365196, 42.787460, 51.104408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.227203, 42.879761, 51.326496>,  <38.636703, 43.106934, 51.664963>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.227203, 42.879761, 51.326496> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.953186, 42.819374, 51.041420>,  <38.788776, 42.783142, 50.870377>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.953186, 42.819374, 51.041420>,  <39.227203, 42.879761, 51.326496>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.953186, 42.819374, 51.041420> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.678232, 0.224943, -0.699573,
		0.265926, -0.962605, -0.051705,
		-0.685044, -0.150967, -0.712688,
		38.747673, 42.774082, 50.827614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.470261, 42.378235, 50.890171>,  <39.227203, 42.879761, 51.326496>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.470261, 42.378235, 50.890171> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.212494, 42.608360, 50.688679>,  <39.057835, 42.746433, 50.567783>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.212494, 42.608360, 50.688679>,  <39.470261, 42.378235, 50.890171>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.212494, 42.608360, 50.688679> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.596058, -0.034723, -0.802190,
		-0.478999, -0.817198, -0.320541,
		-0.644418, 0.575310, -0.503729,
		39.019169, 42.780952, 50.537560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.447994, 42.126465, 50.163364>,  <39.470261, 42.378235, 50.890171>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.447994, 42.126465, 50.163364> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.303322, 42.498489, 50.137535>,  <39.216518, 42.721703, 50.122040>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.303322, 42.498489, 50.137535>,  <39.447994, 42.126465, 50.163364>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.303322, 42.498489, 50.137535> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.586505, 0.173151, -0.791221,
		-0.724704, -0.324042, -0.608112,
		-0.361684, 0.930062, -0.064569,
		39.194817, 42.777508, 50.118164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.482315, 42.206783, 49.455200>,  <39.447994, 42.126465, 50.163364>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.482315, 42.206783, 49.455200> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.415154, 42.583832, 49.570629>,  <39.374855, 42.810062, 49.639889>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.415154, 42.583832, 49.570629>,  <39.482315, 42.206783, 49.455200>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.415154, 42.583832, 49.570629> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363675, 0.331311, -0.870617,
		-0.916269, -0.041233, -0.398436,
		-0.167904, 0.942620, 0.288575,
		39.364780, 42.866619, 49.657200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.127125, 42.544346, 48.911587>,  <39.482315, 42.206783, 49.455200>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.127125, 42.544346, 48.911587> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.273857, 42.842667, 49.134018>,  <39.361897, 43.021660, 49.267475>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.273857, 42.842667, 49.134018>,  <39.127125, 42.544346, 48.911587>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.273857, 42.842667, 49.134018> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303736, 0.468971, -0.829343,
		-0.879308, 0.473126, -0.054495,
		0.366827, 0.745800, 0.556075,
		39.383904, 43.066406, 49.300842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.854973, 43.114208, 48.685661>,  <39.127125, 42.544346, 48.911587>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.854973, 43.114208, 48.685661> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.205753, 43.214378, 48.849728>,  <39.416222, 43.274479, 48.948166>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.205753, 43.214378, 48.849728>,  <38.854973, 43.114208, 48.685661>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.205753, 43.214378, 48.849728> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195529, 0.593729, -0.780548,
		-0.438996, 0.764705, 0.471708,
		0.876955, 0.250425, 0.410167,
		39.468842, 43.289505, 48.972778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.879089, 43.853214, 48.530785>,  <38.854973, 43.114208, 48.685661>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.879089, 43.853214, 48.530785> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.259445, 43.749649, 48.598644>,  <39.487659, 43.687511, 48.639359>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.259445, 43.749649, 48.598644>,  <38.879089, 43.853214, 48.530785>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.259445, 43.749649, 48.598644> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291348, 0.563513, -0.773026,
		0.104547, 0.784487, 0.611270,
		0.950887, -0.258910, 0.169645,
		39.544712, 43.671974, 48.649536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.608532, 44.481480, 48.897717>,  <38.879089, 43.853214, 48.530785>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.608532, 44.481480, 48.897717> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.339073, 44.746750, 48.767239>,  <38.177399, 44.905910, 48.688953>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.339073, 44.746750, 48.767239>,  <38.608532, 44.481480, 48.897717>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.339073, 44.746750, 48.767239> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.683595, -0.391365, 0.616062,
		0.280897, 0.637990, 0.716984,
		-0.673644, 0.663176, -0.326193,
		38.136982, 44.945702, 48.669380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.324036, 44.918434, 49.506893>,  <38.608532, 44.481480, 48.897717>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.324036, 44.918434, 49.506893> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.056873, 44.882469, 49.211372>,  <37.896576, 44.860889, 49.034061>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.056873, 44.882469, 49.211372>,  <38.324036, 44.918434, 49.506893>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.056873, 44.882469, 49.211372> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.690422, -0.295797, 0.660168,
		-0.277892, 0.951010, 0.135486,
		-0.667903, -0.089913, -0.738797,
		37.856503, 44.855495, 48.989735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.700409, 45.094593, 49.880604>,  <38.324036, 44.918434, 49.506893>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.700409, 45.094593, 49.880604> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.561279, 44.948120, 49.535366>,  <37.477802, 44.860237, 49.328224>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.561279, 44.948120, 49.535366>,  <37.700409, 45.094593, 49.880604>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.561279, 44.948120, 49.535366> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.864626, -0.230699, 0.446319,
		-0.362550, 0.901491, -0.236372,
		-0.347822, -0.366186, -0.863092,
		37.456932, 44.838264, 49.276440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.957279, 45.329269, 49.792538>,  <37.700409, 45.094593, 49.880604>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.957279, 45.329269, 49.792538> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.009212, 45.005562, 49.563374>,  <37.040371, 44.811337, 49.425877>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.009212, 45.005562, 49.563374>,  <36.957279, 45.329269, 49.792538>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.009212, 45.005562, 49.563374> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.868602, -0.371488, 0.327913,
		-0.478199, 0.455059, -0.751164,
		0.129829, -0.809270, -0.572910,
		37.048161, 44.762779, 49.391499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.271645, 45.300125, 49.346542>,  <36.957279, 45.329269, 49.792538>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.271645, 45.300125, 49.346542> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.465458, 44.951347, 49.374680>,  <36.581745, 44.742081, 49.391563>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.465458, 44.951347, 49.374680>,  <36.271645, 45.300125, 49.346542>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.465458, 44.951347, 49.374680> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.860448, -0.460559, 0.217977,
		-0.157667, -0.166142, -0.973416,
		0.484531, -0.871942, 0.070342,
		36.610817, 44.689766, 49.395782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.844349, 44.884884, 48.981003>,  <36.271645, 45.300125, 49.346542>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.844349, 44.884884, 48.981003> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.084038, 44.650185, 49.198868>,  <36.227852, 44.509365, 49.329586>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.084038, 44.650185, 49.198868>,  <35.844349, 44.884884, 48.981003>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.084038, 44.650185, 49.198868> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.796743, -0.503603, 0.334042,
		0.078294, -0.634121, -0.769260,
		0.599225, -0.586749, 0.544661,
		36.263805, 44.474159, 49.362267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.587399, 44.131458, 48.886135>,  <35.844349, 44.884884, 48.981003>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.587399, 44.131458, 48.886135> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.796623, 44.156380, 49.226139>,  <35.922157, 44.171333, 49.430141>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.796623, 44.156380, 49.226139>,  <35.587399, 44.131458, 48.886135>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.796623, 44.156380, 49.226139> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.686430, -0.560364, 0.463472,
		0.505193, -0.825900, -0.250337,
		0.523062, 0.062304, 0.850015,
		35.953541, 44.175072, 49.481144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.617065, 43.449318, 49.177910>,  <35.587399, 44.131458, 48.886135>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.617065, 43.449318, 49.177910> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.691460, 43.710915, 49.471222>,  <35.736095, 43.867874, 49.647209>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.691460, 43.710915, 49.471222>,  <35.617065, 43.449318, 49.177910>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.691460, 43.710915, 49.471222> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.658355, -0.471052, 0.587093,
		0.729369, -0.591950, 0.342952,
		0.185981, 0.653992, 0.733284,
		35.747253, 43.907112, 49.691208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.605736, 43.117775, 49.789707>,  <35.617065, 43.449318, 49.177910>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.605736, 43.117775, 49.789707> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.549065, 43.476776, 49.956760>,  <35.515064, 43.692177, 50.056992>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.549065, 43.476776, 49.956760>,  <35.605736, 43.117775, 49.789707>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.549065, 43.476776, 49.956760> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.739578, -0.376393, 0.557990,
		0.657992, -0.229819, 0.717099,
		-0.141674, 0.897503, 0.417633,
		35.506561, 43.746029, 50.082050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.585342, 42.953403, 50.557568>,  <35.605736, 43.117775, 49.789707>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.585342, 42.953403, 50.557568> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.440102, 43.323456, 50.513233>,  <35.352959, 43.545486, 50.486633>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.440102, 43.323456, 50.513233>,  <35.585342, 42.953403, 50.557568>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.440102, 43.323456, 50.513233> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.663362, -0.173142, 0.727992,
		0.654301, 0.337857, 0.676567,
		-0.363099, 0.925135, -0.110834,
		35.331173, 43.600998, 50.479984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.307659, 43.095688, 51.250839>,  <35.585342, 42.953403, 50.557568>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.307659, 43.095688, 51.250839> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.189079, 43.409866, 51.033512>,  <35.117931, 43.598373, 50.903114>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.189079, 43.409866, 51.033512>,  <35.307659, 43.095688, 51.250839>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.189079, 43.409866, 51.033512> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.793367, 0.114175, 0.597941,
		0.531684, 0.608308, 0.589299,
		-0.296449, 0.785446, -0.543316,
		35.100143, 43.645500, 50.870518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.293358, 43.698795, 51.680344>,  <35.307659, 43.095688, 51.250839>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.293358, 43.698795, 51.680344> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.031090, 43.698784, 51.378323>,  <34.873730, 43.698776, 51.197109>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.031090, 43.698784, 51.378323>,  <35.293358, 43.698795, 51.680344>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.031090, 43.698784, 51.378323> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.754825, -0.024401, 0.655472,
		-0.018439, 0.999702, 0.015981,
		-0.655667, -0.000024, -0.755050,
		34.834389, 43.698776, 51.151806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.838573, 44.016094, 51.996056>,  <35.293358, 43.698795, 51.680344>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.838573, 44.016094, 51.996056> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.641823, 43.861221, 51.684120>,  <34.523773, 43.768299, 51.496960>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.641823, 43.861221, 51.684120>,  <34.838573, 44.016094, 51.996056>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.641823, 43.861221, 51.684120> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.817134, -0.103925, 0.567003,
		-0.300576, 0.916129, -0.265257,
		-0.491881, -0.387178, -0.779838,
		34.494259, 43.745068, 51.450169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.268486, 44.411819, 51.881824>,  <34.838573, 44.016094, 51.996056>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.268486, 44.411819, 51.881824> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.170712, 44.070663, 51.697292>,  <34.112049, 43.865971, 51.586571>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.170712, 44.070663, 51.697292>,  <34.268486, 44.411819, 51.881824>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.170712, 44.070663, 51.697292> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.848757, -0.041874, 0.527123,
		-0.468896, 0.520406, -0.713662,
		-0.244434, -0.852892, -0.461332,
		34.097382, 43.814796, 51.558891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<33.530460, 38.329693, 46.675594> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.716125, 38.487488, 46.992813>,  <33.827526, 38.582165, 47.183144>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.716125, 38.487488, 46.992813>,  <33.530460, 38.329693, 46.675594>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.716125, 38.487488, 46.992813> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440517, 0.673947, -0.593076,
		-0.768436, 0.624638, 0.139043,
		0.464166, 0.394491, 0.793049,
		33.855373, 38.605835, 47.230728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.400562, 39.004807, 46.613575>,  <33.530460, 38.329693, 46.675594>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.400562, 39.004807, 46.613575> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.735405, 38.939484, 46.822414>,  <33.936310, 38.900291, 46.947716>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.735405, 38.939484, 46.822414>,  <33.400562, 39.004807, 46.613575>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.735405, 38.939484, 46.822414> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491114, 0.644727, -0.585776,
		-0.240949, 0.746765, 0.619907,
		0.837108, -0.163303, 0.522094,
		33.986538, 38.890491, 46.979042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.630535, 39.652916, 46.701275>,  <33.400562, 39.004807, 46.613575>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.630535, 39.652916, 46.701275> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.950172, 39.425743, 46.780170>,  <34.141956, 39.289440, 46.827507>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.950172, 39.425743, 46.780170>,  <33.630535, 39.652916, 46.701275>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.950172, 39.425743, 46.780170> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.590372, 0.679267, -0.435956,
		0.113617, 0.464813, 0.878089,
		0.799095, -0.567931, 0.197236,
		34.189899, 39.255363, 46.839340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.131260, 40.109638, 46.589073>,  <33.630535, 39.652916, 46.701275>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.131260, 40.109638, 46.589073> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.356720, 39.779602, 46.604694>,  <34.491997, 39.581581, 46.614067>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.356720, 39.779602, 46.604694>,  <34.131260, 40.109638, 46.589073>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.356720, 39.779602, 46.604694> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.776138, 0.512845, -0.366877,
		0.282679, 0.237100, 0.929449,
		0.563650, -0.825090, 0.039052,
		34.525814, 39.532074, 46.616409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.811207, 40.235878, 47.060604>,  <34.131260, 40.109638, 46.589073>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.811207, 40.235878, 47.060604> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.867237, 39.948196, 46.788391>,  <34.900856, 39.775589, 46.625061>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.867237, 39.948196, 46.788391>,  <34.811207, 40.235878, 47.060604>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.867237, 39.948196, 46.788391> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.798862, 0.488153, -0.351463,
		0.584978, -0.494424, 0.642920,
		0.140072, -0.719202, -0.680535,
		34.909260, 39.732437, 46.584232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.590488, 40.163212, 47.032833>,  <34.811207, 40.235878, 47.060604>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.590488, 40.163212, 47.032833> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.443027, 39.987610, 46.705086>,  <35.354549, 39.882248, 46.508438>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.443027, 39.987610, 46.705086>,  <35.590488, 40.163212, 47.032833>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.443027, 39.987610, 46.705086> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.728291, 0.411349, -0.548073,
		0.577655, -0.798790, 0.168079,
		-0.368656, -0.439008, -0.819369,
		35.332432, 39.855907, 46.459274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.208424, 39.819740, 46.794022>,  <35.590488, 40.163212, 47.032833>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.208424, 39.819740, 46.794022> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.954628, 39.849152, 46.486252>,  <35.802349, 39.866798, 46.301590>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.954628, 39.849152, 46.486252>,  <36.208424, 39.819740, 46.794022>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.954628, 39.849152, 46.486252> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.733624, 0.370695, -0.569544,
		0.243347, -0.925840, -0.289142,
		-0.634490, 0.073525, -0.769426,
		35.764282, 39.871208, 46.255424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.546673, 39.446095, 46.342072>,  <36.208424, 39.819740, 46.794022>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.546673, 39.446095, 46.342072> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.287296, 39.666451, 46.131916>,  <36.131668, 39.798664, 46.005821>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.287296, 39.666451, 46.131916>,  <36.546673, 39.446095, 46.342072>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.287296, 39.666451, 46.131916> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.735342, 0.274717, -0.619519,
		-0.196955, -0.788066, -0.583233,
		-0.648445, 0.550893, -0.525391,
		36.092762, 39.831718, 45.974300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.669811, 39.307396, 45.666729>,  <36.546673, 39.446095, 46.342072>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.669811, 39.307396, 45.666729> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.443203, 39.633881, 45.621368>,  <36.307240, 39.829769, 45.594151>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.443203, 39.633881, 45.621368>,  <36.669811, 39.307396, 45.666729>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.443203, 39.633881, 45.621368> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.675584, 0.381233, -0.631069,
		-0.471853, -0.434123, -0.767393,
		-0.566517, 0.816210, -0.113400,
		36.273247, 39.878742, 45.587349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.648556, 39.406628, 44.984035>,  <36.669811, 39.307396, 45.666729>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.648556, 39.406628, 44.984035> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.569572, 39.758842, 45.156395>,  <36.522182, 39.970169, 45.259811>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.569572, 39.758842, 45.156395>,  <36.648556, 39.406628, 44.984035>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.569572, 39.758842, 45.156395> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.623458, 0.452002, -0.637961,
		-0.756512, 0.142676, -0.638226,
		-0.197458, 0.880533, 0.430898,
		36.510334, 40.023003, 45.285664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.787796, 39.900997, 44.380829>,  <36.648556, 39.406628, 44.984035>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.787796, 39.900997, 44.380829> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.777008, 40.141083, 44.700581>,  <36.770535, 40.285133, 44.892433>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.777008, 40.141083, 44.700581>,  <36.787796, 39.900997, 44.380829>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.777008, 40.141083, 44.700581> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.634035, 0.628511, -0.450526,
		-0.772834, 0.494684, -0.397511,
		-0.026972, 0.600218, 0.799381,
		36.768917, 40.321148, 44.940395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.537086, 40.531307, 44.154648>,  <36.787796, 39.900997, 44.380829>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.537086, 40.531307, 44.154648> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.728317, 40.604965, 44.498165>,  <36.843056, 40.649162, 44.704277>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.728317, 40.604965, 44.498165>,  <36.537086, 40.531307, 44.154648>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.728317, 40.604965, 44.498165> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530445, 0.718787, -0.449414,
		-0.700052, 0.670399, 0.245953,
		0.478075, 0.184148, 0.858798,
		36.871738, 40.660210, 44.755806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.430367, 41.219772, 44.304203>,  <36.537086, 40.531307, 44.154648>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.430367, 41.219772, 44.304203> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.750793, 41.121239, 44.522419>,  <36.943050, 41.062119, 44.653351>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.750793, 41.121239, 44.522419>,  <36.430367, 41.219772, 44.304203>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.750793, 41.121239, 44.522419> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485945, 0.799790, -0.352412,
		-0.349508, 0.547408, 0.760387,
		0.801063, -0.246335, 0.545543,
		36.991112, 41.047337, 44.686081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.784214, 41.851612, 44.634914>,  <36.430367, 41.219772, 44.304203>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.784214, 41.851612, 44.634914> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.061279, 41.563187, 44.628193>,  <37.227516, 41.390129, 44.624161>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.061279, 41.563187, 44.628193>,  <36.784214, 41.851612, 44.634914>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.061279, 41.563187, 44.628193> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.654631, 0.638283, -0.405034,
		0.302785, 0.269549, 0.914147,
		0.692661, -0.721067, -0.016808,
		37.269077, 41.346867, 44.623150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.699589, 42.338108, 45.206367>,  <36.784214, 41.851612, 44.634914>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.699589, 42.338108, 45.206367> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.498104, 42.612991, 44.996983>,  <36.377213, 42.777924, 44.871353>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.498104, 42.612991, 44.996983>,  <36.699589, 42.338108, 45.206367>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.498104, 42.612991, 44.996983> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.714572, 0.009054, 0.699504,
		0.485446, 0.726402, 0.486501,
		-0.503716, 0.687211, -0.523461,
		36.346989, 42.819153, 44.839943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.487457, 42.899097, 45.682270>,  <36.699589, 42.338108, 45.206367>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.487457, 42.899097, 45.682270> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.258873, 42.928001, 45.355293>,  <36.121723, 42.945343, 45.159107>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.258873, 42.928001, 45.355293>,  <36.487457, 42.899097, 45.682270>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.258873, 42.928001, 45.355293> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.820266, -0.020538, 0.571613,
		0.024517, 0.997174, 0.071011,
		-0.571456, 0.072262, -0.817445,
		36.087437, 42.949680, 45.110062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.946281, 43.368210, 45.885036>,  <36.487457, 42.899097, 45.682270>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.946281, 43.368210, 45.885036> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.811378, 43.162025, 45.569935>,  <35.730434, 43.038315, 45.380875>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.811378, 43.162025, 45.569935>,  <35.946281, 43.368210, 45.885036>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.811378, 43.162025, 45.569935> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.859506, -0.172781, 0.481036,
		-0.384063, 0.839314, -0.384768,
		-0.337260, -0.515459, -0.787755,
		35.710201, 43.007389, 45.333607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.233540, 43.602123, 45.787518>,  <35.946281, 43.368210, 45.885036>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.233540, 43.602123, 45.787518> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.263496, 43.264275, 45.575474>,  <35.281471, 43.061565, 45.448250>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.263496, 43.264275, 45.575474>,  <35.233540, 43.602123, 45.787518>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.263496, 43.264275, 45.575474> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.789637, -0.374879, 0.485735,
		-0.608986, 0.382213, -0.695017,
		0.074893, -0.844617, -0.530106,
		35.285965, 43.010891, 45.416443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.565025, 43.486725, 45.581051>,  <35.233540, 43.602123, 45.787518>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.565025, 43.486725, 45.581051> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.740730, 43.129829, 45.539162>,  <34.846153, 42.915691, 45.514027>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.740730, 43.129829, 45.539162>,  <34.565025, 43.486725, 45.581051>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.740730, 43.129829, 45.539162> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.787472, -0.438522, 0.433112,
		-0.432347, -0.107811, -0.895239,
		0.439276, -0.892231, -0.104696,
		34.872509, 42.862160, 45.507744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.133099, 43.119843, 45.134682>,  <34.565025, 43.486725, 45.581051>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.133099, 43.119843, 45.134682> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.324905, 42.858864, 45.369415>,  <34.439991, 42.702278, 45.510258>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.324905, 42.858864, 45.369415>,  <34.133099, 43.119843, 45.134682>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.324905, 42.858864, 45.369415> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.865528, -0.461880, 0.193722,
		0.144655, -0.600817, -0.786189,
		0.479516, -0.652446, 0.586837,
		34.468761, 42.663132, 45.545467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.943459, 42.420692, 44.956963>,  <34.133099, 43.119843, 45.134682>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.943459, 42.420692, 44.956963> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.082497, 42.424118, 45.332005>,  <34.165920, 42.426174, 45.557030>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.082497, 42.424118, 45.332005>,  <33.943459, 42.420692, 44.956963>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.082497, 42.424118, 45.332005> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.733191, -0.620832, 0.277488,
		0.584473, -0.783897, -0.209516,
		0.347596, 0.008569, 0.937605,
		34.186775, 42.426689, 45.613285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.917969, 41.716316, 45.165798>,  <33.943459, 42.420692, 44.956963>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.917969, 41.716316, 45.165798> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.939270, 41.894188, 45.523441>,  <33.952049, 42.000912, 45.738026>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.939270, 41.894188, 45.523441>,  <33.917969, 41.716316, 45.165798>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.939270, 41.894188, 45.523441> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.679120, -0.640301, 0.358902,
		0.732093, -0.626316, 0.267894,
		0.053253, 0.444682, 0.894104,
		33.955246, 42.027592, 45.791672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.809586, 41.141125, 45.588497>,  <33.917969, 41.716316, 45.165798>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.809586, 41.141125, 45.588497> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.789040, 41.436844, 45.857063>,  <33.776711, 41.614273, 46.018204>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.789040, 41.436844, 45.857063>,  <33.809586, 41.141125, 45.588497>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.789040, 41.436844, 45.857063> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.576884, -0.570761, 0.584326,
		0.815210, -0.357315, 0.455807,
		-0.051368, 0.739296, 0.671419,
		33.773628, 41.658634, 46.058491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.942860, 40.851093, 46.250385>,  <33.809586, 41.141125, 45.588497>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.942860, 40.851093, 46.250385> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.759651, 41.197853, 46.329075>,  <33.649727, 41.405910, 46.376289>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.759651, 41.197853, 46.329075>,  <33.942860, 40.851093, 46.250385>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.759651, 41.197853, 46.329075> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.531012, -0.444295, 0.721545,
		0.712910, 0.226022, 0.663832,
		-0.458023, 0.866900, 0.196722,
		33.622246, 41.457924, 46.388092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.046261, 40.985775, 46.981701>,  <33.942860, 40.851093, 46.250385>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.046261, 40.985775, 46.981701> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.724197, 41.206528, 46.894844>,  <33.530960, 41.338982, 46.842731>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.724197, 41.206528, 46.894844>,  <34.046261, 40.985775, 46.981701>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.724197, 41.206528, 46.894844> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375710, -0.191364, 0.906765,
		0.458877, 0.811667, 0.361426,
		-0.805154, 0.551885, -0.217139,
		33.482651, 41.372093, 46.829704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.931473, 41.354187, 47.544403>,  <34.046261, 40.985775, 46.981701>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.931473, 41.354187, 47.544403> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.591751, 41.353165, 47.333244>,  <33.387917, 41.352551, 47.206547>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.591751, 41.353165, 47.333244>,  <33.931473, 41.354187, 47.544403>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.591751, 41.353165, 47.333244> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510237, -0.252568, 0.822111,
		-0.135432, 0.967576, 0.213202,
		-0.849303, -0.002557, -0.527899,
		33.336960, 41.352398, 47.174873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.472778, 41.712894, 47.988255>,  <33.931473, 41.354187, 47.544403>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.472778, 41.712894, 47.988255> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.228569, 41.502243, 47.751640>,  <33.082043, 41.375851, 47.609673>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.228569, 41.502243, 47.751640>,  <33.472778, 41.712894, 47.988255>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.228569, 41.502243, 47.751640> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.540362, -0.269065, 0.797253,
		-0.579021, 0.806389, -0.120301,
		-0.610527, -0.526632, -0.591536,
		33.045410, 41.344254, 47.574181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.834549, 41.944740, 48.099911>,  <33.472778, 41.712894, 47.988255>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.834549, 41.944740, 48.099911> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.809025, 41.564194, 47.979362>,  <32.793713, 41.335865, 47.907032>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.809025, 41.564194, 47.979362>,  <32.834549, 41.944740, 48.099911>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.809025, 41.564194, 47.979362> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.553384, -0.217574, 0.804008,
		-0.830479, 0.218075, -0.512590,
		-0.063808, -0.951370, -0.301369,
		32.789883, 41.278782, 47.888950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.272285, 42.530487, 48.165016>,  <32.834549, 41.944740, 48.099911>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.272285, 42.530487, 48.165016> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.088081, 42.803764, 48.391708>,  <31.977560, 42.967731, 48.527725>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.088081, 42.803764, 48.391708>,  <32.272285, 42.530487, 48.165016>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.088081, 42.803764, 48.391708> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.720298, 0.660727, -0.211212,
		-0.518752, 0.310951, -0.796370,
		-0.460507, 0.683191, 0.566731,
		31.949928, 43.008720, 48.561729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.124760, 43.156559, 47.657520>,  <32.272285, 42.530487, 48.165016>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.124760, 43.156559, 47.657520> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.110130, 43.277832, 48.038414>,  <32.101353, 43.350594, 48.266949>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.110130, 43.277832, 48.038414>,  <32.124760, 43.156559, 47.657520>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.110130, 43.277832, 48.038414> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548727, 0.802462, -0.234421,
		-0.835202, 0.513943, -0.195707,
		-0.036569, 0.303178, 0.952232,
		32.099159, 43.368786, 48.324085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.751324, 43.751831, 47.674171>,  <32.124760, 43.156559, 47.657520>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.751324, 43.751831, 47.674171> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.030506, 43.704010, 47.956608>,  <32.198017, 43.675316, 48.126068>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.030506, 43.704010, 47.956608>,  <31.751324, 43.751831, 47.674171>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.030506, 43.704010, 47.956608> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460012, 0.830501, -0.314096,
		-0.548856, 0.544035, 0.634652,
		0.697958, -0.119554, 0.706088,
		32.239895, 43.668144, 48.168434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.861094, 44.438782, 47.820766>,  <31.751324, 43.751831, 47.674171>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.861094, 44.438782, 47.820766> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.174599, 44.287224, 48.017605>,  <32.362701, 44.196289, 48.135708>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.174599, 44.287224, 48.017605>,  <31.861094, 44.438782, 47.820766>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.174599, 44.287224, 48.017605> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503798, 0.851221, -0.147004,
		-0.363181, 0.363132, 0.858042,
		0.783765, -0.378891, 0.492092,
		32.409729, 44.173557, 48.165234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.237606, 45.076584, 48.163898>,  <31.861094, 44.438782, 47.820766>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.237606, 45.076584, 48.163898> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.508392, 44.782242, 48.170151>,  <32.670864, 44.605637, 48.173904>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.508392, 44.782242, 48.170151>,  <32.237606, 45.076584, 48.163898>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.508392, 44.782242, 48.170151> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.728271, 0.666616, -0.158885,
		0.106495, 0.118945, 0.987173,
		0.676964, -0.735851, 0.015633,
		32.711483, 44.561485, 48.174839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.808899, 45.441929, 48.362572>,  <32.237606, 45.076584, 48.163898>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.808899, 45.441929, 48.362572> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.920685, 45.098366, 48.190910>,  <32.987759, 44.892227, 48.087914>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.920685, 45.098366, 48.190910>,  <32.808899, 45.441929, 48.362572>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.920685, 45.098366, 48.190910> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.802887, 0.454169, -0.386139,
		0.526565, -0.236645, 0.816534,
		0.279467, -0.858912, -0.429149,
		33.004524, 44.840691, 48.062164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.557774, 45.415325, 48.542652>,  <32.808899, 45.441929, 48.362572>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.557774, 45.415325, 48.542652> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.496571, 45.184639, 48.221657>,  <33.459850, 45.046227, 48.029060>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.496571, 45.184639, 48.221657>,  <33.557774, 45.415325, 48.542652>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.496571, 45.184639, 48.221657> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.821327, 0.377376, -0.427796,
		0.549556, -0.724563, 0.415930,
		-0.153003, -0.576712, -0.802492,
		33.450668, 45.011627, 47.980907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.173485, 45.104244, 48.350666>,  <33.557774, 45.415325, 48.542652>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.173485, 45.104244, 48.350666> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.962425, 45.092857, 48.011070>,  <33.835789, 45.086025, 47.807312>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.962425, 45.092857, 48.011070>,  <34.173485, 45.104244, 48.350666>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.962425, 45.092857, 48.011070> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.800480, 0.317815, -0.508160,
		0.284286, -0.947725, -0.144908,
		-0.527650, -0.028467, -0.848985,
		33.804131, 45.084316, 47.756374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.491943, 44.634827, 47.897102>,  <34.173485, 45.104244, 48.350666>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.491943, 44.634827, 47.897102> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.280128, 44.895943, 47.680416>,  <34.153038, 45.052612, 47.550404>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.280128, 44.895943, 47.680416>,  <34.491943, 44.634827, 47.897102>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.280128, 44.895943, 47.680416> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.840676, 0.318515, -0.437964,
		-0.113354, -0.687325, -0.717450,
		-0.529542, 0.652788, -0.541713,
		34.121265, 45.091778, 47.517902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.758717, 44.606800, 47.242111>,  <34.491943, 44.634827, 47.897102>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.758717, 44.606800, 47.242111> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.557217, 44.952339, 47.241241>,  <34.436317, 45.159660, 47.240719>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.557217, 44.952339, 47.241241>,  <34.758717, 44.606800, 47.242111>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.557217, 44.952339, 47.241241> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.677491, 0.393513, -0.621413,
		-0.535949, -0.314512, -0.783480,
		-0.503751, 0.863846, -0.002176,
		34.406090, 45.211494, 47.240589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.569241, 44.752869, 46.526222>,  <34.758717, 44.606800, 47.242111>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.569241, 44.752869, 46.526222> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.562046, 45.104225, 46.717262>,  <34.557728, 45.315041, 46.831886>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.562046, 45.104225, 46.717262>,  <34.569241, 44.752869, 46.526222>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.562046, 45.104225, 46.717262> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.749909, 0.327794, -0.574620,
		-0.661297, 0.347821, -0.664611,
		-0.017991, 0.878392, 0.477603,
		34.556648, 45.367744, 46.860542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.699306, 45.245884, 45.971275>,  <34.569241, 44.752869, 46.526222>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.699306, 45.245884, 45.971275> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.755554, 45.444817, 46.313709>,  <34.789303, 45.564175, 46.519169>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.755554, 45.444817, 46.313709>,  <34.699306, 45.245884, 45.971275>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.755554, 45.444817, 46.313709> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.767122, 0.491903, -0.411771,
		-0.625898, 0.714630, -0.312339,
		0.140624, 0.497329, 0.856089,
		34.797741, 45.594017, 46.570538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.832844, 45.945732, 45.808907>,  <34.699306, 45.245884, 45.971275>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.832844, 45.945732, 45.808907> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.981781, 45.913330, 46.178726>,  <35.071144, 45.893890, 46.400620>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.981781, 45.913330, 46.178726>,  <34.832844, 45.945732, 45.808907>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.981781, 45.913330, 46.178726> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.873790, 0.366358, -0.319801,
		-0.312811, 0.926941, 0.207193,
		0.372343, -0.081006, 0.924553,
		35.093483, 45.889027, 46.456093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.061123, 46.706951, 46.050591>,  <34.832844, 45.945732, 45.808907>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.061123, 46.706951, 46.050591> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.246315, 46.387993, 46.205414>,  <35.357430, 46.196617, 46.298306>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.246315, 46.387993, 46.205414>,  <35.061123, 46.706951, 46.050591>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.246315, 46.387993, 46.205414> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.885804, 0.400648, -0.234162,
		0.031647, 0.451267, 0.891828,
		0.462978, -0.797395, 0.387055,
		35.385208, 46.148773, 46.321529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<33.539925, 44.454952, 51.672909> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.634109, 44.066200, 51.672771>,  <33.690620, 43.832947, 51.672688>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.634109, 44.066200, 51.672771>,  <33.539925, 44.454952, 51.672909>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.634109, 44.066200, 51.672771> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.863909, -0.209466, 0.458024,
		-0.445218, -0.107552, -0.888940,
		0.235464, -0.971883, -0.000343,
		33.704750, 43.774635, 51.672668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.101353, 44.061859, 51.316608>,  <33.539925, 44.454952, 51.672909>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.101353, 44.061859, 51.316608> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.239502, 43.787010, 51.572289>,  <33.322392, 43.622101, 51.725697>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.239502, 43.787010, 51.572289>,  <33.101353, 44.061859, 51.316608>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.239502, 43.787010, 51.572289> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.937176, -0.288206, 0.196568,
		0.049155, -0.666932, -0.743496,
		0.345377, -0.687124, 0.639199,
		33.343117, 43.580872, 51.764050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.530598, 43.639671, 51.384487>,  <33.101353, 44.061859, 51.316608>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.530598, 43.639671, 51.384487> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.764488, 43.530899, 51.690205>,  <32.904823, 43.465633, 51.873634>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.764488, 43.530899, 51.690205>,  <32.530598, 43.639671, 51.384487>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.764488, 43.530899, 51.690205> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.797299, -0.366478, 0.479591,
		0.149679, -0.889801, -0.431103,
		0.584731, -0.271933, 0.764292,
		32.939907, 43.449318, 51.919491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.322144, 43.032753, 51.566891>,  <32.530598, 43.639671, 51.384487>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.322144, 43.032753, 51.566891> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.538498, 43.141754, 51.885181>,  <32.668308, 43.207157, 52.076157>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.538498, 43.141754, 51.885181>,  <32.322144, 43.032753, 51.566891>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.538498, 43.141754, 51.885181> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.607267, -0.528057, 0.593618,
		0.581956, -0.804298, -0.120132,
		0.540882, 0.272507, 0.795730,
		32.700764, 43.223507, 52.123901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.466911, 42.410179, 51.884167>,  <32.322144, 43.032753, 51.566891>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.466911, 42.410179, 51.884167> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.476044, 42.712822, 52.145554>,  <32.481525, 42.894409, 52.302387>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.476044, 42.712822, 52.145554>,  <32.466911, 42.410179, 51.884167>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.476044, 42.712822, 52.145554> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.666203, -0.475847, 0.574233,
		0.745421, -0.448453, 0.493192,
		0.022832, 0.756611, 0.653467,
		32.482895, 42.939804, 52.341595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.656303, 42.143585, 52.546169>,  <32.466911, 42.410179, 51.884167>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.656303, 42.143585, 52.546169> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.452301, 42.483231, 52.601173>,  <32.329899, 42.687016, 52.634174>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.452301, 42.483231, 52.601173>,  <32.656303, 42.143585, 52.546169>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.452301, 42.483231, 52.601173> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.644123, -0.482941, 0.593189,
		0.570091, 0.213956, 0.793233,
		-0.510001, 0.849111, 0.137507,
		32.299301, 42.737965, 52.642426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.537205, 42.265568, 53.236095>,  <32.656303, 42.143585, 52.546169>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.537205, 42.265568, 53.236095> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.249180, 42.483139, 53.063744>,  <32.076366, 42.613682, 52.960331>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.249180, 42.483139, 53.063744>,  <32.537205, 42.265568, 53.236095>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.249180, 42.483139, 53.063744> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.664980, -0.363448, 0.652462,
		0.198288, 0.756339, 0.623405,
		-0.720057, 0.543927, -0.430883,
		32.033161, 42.646317, 52.934479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.112888, 42.373493, 53.715027>,  <32.537205, 42.265568, 53.236095>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.112888, 42.373493, 53.715027> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.895069, 42.480774, 53.397148>,  <31.764378, 42.545143, 53.206421>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.895069, 42.480774, 53.397148>,  <32.112888, 42.373493, 53.715027>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.895069, 42.480774, 53.397148> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.825095, -0.341454, 0.450142,
		-0.150624, 0.900821, 0.407227,
		-0.544547, 0.268198, -0.794694,
		31.731705, 42.561234, 53.158741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.585186, 42.716599, 53.928986>,  <32.112888, 42.373493, 53.715027>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.585186, 42.716599, 53.928986> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.437012, 42.634766, 53.566566>,  <31.348106, 42.585667, 53.349113>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.437012, 42.634766, 53.566566>,  <31.585186, 42.716599, 53.928986>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.437012, 42.634766, 53.566566> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.896539, -0.176318, 0.406361,
		-0.242885, 0.962839, -0.118098,
		-0.370438, -0.204578, -0.906048,
		31.325880, 42.573391, 53.294750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.951674, 43.036903, 53.896152>,  <31.585186, 42.716599, 53.928986>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.951674, 43.036903, 53.896152> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.948925, 42.736526, 53.632019>,  <30.947275, 42.556301, 53.473537>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.948925, 42.736526, 53.632019>,  <30.951674, 43.036903, 53.896152>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.948925, 42.736526, 53.632019> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.925992, -0.244497, 0.287680,
		-0.377480, 0.613443, -0.693683,
		-0.006871, -0.750938, -0.660336,
		30.946863, 42.511246, 53.433918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.341743, 43.125877, 53.528034>,  <30.951674, 43.036903, 53.896152>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.341743, 43.125877, 53.528034> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.467613, 42.751076, 53.467365>,  <30.543135, 42.526196, 53.430965>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.467613, 42.751076, 53.467365>,  <30.341743, 43.125877, 53.528034>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.467613, 42.751076, 53.467365> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.883277, -0.347567, 0.314675,
		-0.347567, 0.034946, -0.937004,
		-0.314675, 0.937004, 0.151669,
		30.562016, 42.469975, 53.421864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.732025, 42.811512, 53.452198>,  <30.341743, 43.125877, 53.528034>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.732025, 42.811512, 53.452198> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.982792, 42.503403, 53.498943>,  <30.133251, 42.318539, 53.526993>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.982792, 42.503403, 53.498943>,  <29.732025, 42.811512, 53.452198>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.982792, 42.503403, 53.498943> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.736349, -0.536820, 0.411843,
		-0.254495, -0.344245, -0.903730,
		0.626916, -0.770272, 0.116866,
		30.170866, 42.272320, 53.534004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.471277, 42.220604, 53.076054>,  <29.732025, 42.811512, 53.452198>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.471277, 42.220604, 53.076054> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.697336, 42.134163, 53.394527>,  <29.832972, 42.082298, 53.585613>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.697336, 42.134163, 53.394527>,  <29.471277, 42.220604, 53.076054>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.697336, 42.134163, 53.394527> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.786364, -0.432949, 0.440665,
		0.249479, -0.875131, -0.414615,
		0.565147, -0.216102, 0.796184,
		29.866880, 42.069332, 53.633381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.605318, 41.380611, 53.334347>,  <29.471277, 42.220604, 53.076054>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.605318, 41.380611, 53.334347> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.594767, 41.658257, 53.622101>,  <29.588436, 41.824844, 53.794754>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.594767, 41.658257, 53.622101>,  <29.605318, 41.380611, 53.334347>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.594767, 41.658257, 53.622101> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.850097, -0.394211, 0.349189,
		0.525966, -0.602338, 0.600457,
		-0.026377, 0.694108, 0.719387,
		29.586853, 41.866489, 53.837917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.992222, 41.362389, 52.895336>,  <29.605318, 41.380611, 53.334347>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.992222, 41.362389, 52.895336> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.733429, 41.161842, 52.665539>,  <28.578154, 41.041515, 52.527660>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.733429, 41.161842, 52.665539>,  <28.992222, 41.362389, 52.895336>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.733429, 41.161842, 52.665539> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445676, 0.362694, -0.818429,
		0.618701, -0.785547, -0.011209,
		-0.646980, -0.501367, -0.574498,
		28.539335, 41.011433, 52.493191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.497215, 41.084206, 52.445450>,  <28.992222, 41.362389, 52.895336>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.497215, 41.084206, 52.445450> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.132153, 41.056953, 52.284248>,  <28.913115, 41.040604, 52.187527>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.132153, 41.056953, 52.284248>,  <29.497215, 41.084206, 52.445450>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.132153, 41.056953, 52.284248> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372596, 0.266624, -0.888867,
		0.168008, -0.961390, -0.217952,
		-0.912658, -0.068129, -0.403005,
		28.858355, 41.036514, 52.163345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.602777, 40.811298, 51.816502>,  <29.497215, 41.084206, 52.445450>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.602777, 40.811298, 51.816502> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.243795, 40.979103, 51.761971>,  <29.028406, 41.079784, 51.729252>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.243795, 40.979103, 51.761971>,  <29.602777, 40.811298, 51.816502>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.243795, 40.979103, 51.761971> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376284, 0.566827, -0.732883,
		-0.230178, -0.709027, -0.666557,
		-0.897457, 0.419508, -0.136325,
		28.974558, 41.104954, 51.721073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.248594, 40.485153, 51.263329>,  <29.602777, 40.811298, 51.816502>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.248594, 40.485153, 51.263329> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.116638, 40.861023, 51.299496>,  <29.037464, 41.086544, 51.321198>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.116638, 40.861023, 51.299496>,  <29.248594, 40.485153, 51.263329>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.116638, 40.861023, 51.299496> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399992, 0.225896, -0.888244,
		-0.855090, -0.256857, -0.450385,
		-0.329892, 0.939678, 0.090421,
		29.017670, 41.142925, 51.326622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.999348, 40.563797, 50.563179>,  <29.248594, 40.485153, 51.263329>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.999348, 40.563797, 50.563179> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.049746, 40.925171, 50.727097>,  <29.079985, 41.141994, 50.825447>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.049746, 40.925171, 50.727097>,  <28.999348, 40.563797, 50.563179>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.049746, 40.925171, 50.727097> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425629, 0.323902, -0.844942,
		-0.896084, 0.280877, -0.343719,
		0.125993, 0.903436, 0.409792,
		29.087543, 41.196201, 50.850033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.056131, 41.025444, 50.040073>,  <28.999348, 40.563797, 50.563179>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.056131, 41.025444, 50.040073> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.218941, 41.255508, 50.323910>,  <29.316628, 41.393547, 50.494209>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.218941, 41.255508, 50.323910>,  <29.056131, 41.025444, 50.040073>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.218941, 41.255508, 50.323910> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511927, 0.499734, -0.698711,
		-0.756479, 0.647650, -0.091038,
		0.407025, 0.575165, 0.709588,
		29.341049, 41.428059, 50.536785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.001963, 41.588375, 49.741093>,  <29.056131, 41.025444, 50.040073>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.001963, 41.588375, 49.741093> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.273949, 41.627701, 50.031742>,  <29.437140, 41.651295, 50.206131>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.273949, 41.627701, 50.031742>,  <29.001963, 41.588375, 49.741093>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.273949, 41.627701, 50.031742> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542640, 0.599006, -0.588841,
		-0.493144, 0.794686, 0.353952,
		0.679963, 0.098315, 0.726625,
		29.477938, 41.657196, 50.249729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.228867, 42.338974, 49.629227>,  <29.001963, 41.588375, 49.741093>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.228867, 42.338974, 49.629227> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.512547, 42.153137, 49.841335>,  <29.682755, 42.041637, 49.968601>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.512547, 42.153137, 49.841335>,  <29.228867, 42.338974, 49.629227>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.512547, 42.153137, 49.841335> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.704819, 0.484592, -0.518074,
		-0.016276, 0.741167, 0.671123,
		0.709201, -0.464588, 0.530276,
		29.725307, 42.013760, 50.000420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.628433, 42.828480, 49.792892>,  <29.228867, 42.338974, 49.629227>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.628433, 42.828480, 49.792892> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.834160, 42.485847, 49.809597>,  <29.957596, 42.280266, 49.819618>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.834160, 42.485847, 49.809597>,  <29.628433, 42.828480, 49.792892>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.834160, 42.485847, 49.809597> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.784480, 0.450232, -0.426476,
		0.346512, 0.252101, 0.903534,
		0.514315, -0.856584, 0.041758,
		29.988455, 42.228870, 49.822124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.188553, 43.038864, 50.060719>,  <29.628433, 42.828480, 49.792892>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.188553, 43.038864, 50.060719> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.278919, 42.696823, 49.874058>,  <30.333139, 42.491600, 49.762062>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.278919, 42.696823, 49.874058>,  <30.188553, 43.038864, 50.060719>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.278919, 42.696823, 49.874058> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.785160, 0.443388, -0.432355,
		0.576616, -0.268723, 0.771558,
		0.225915, -0.855099, -0.466655,
		30.346693, 42.440292, 49.734062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.875858, 42.976067, 50.116817>,  <30.188553, 43.038864, 50.060719>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.875858, 42.976067, 50.116817> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.801466, 42.729713, 49.810589>,  <30.756830, 42.581902, 49.626850>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.801466, 42.729713, 49.810589>,  <30.875858, 42.976067, 50.116817>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.801466, 42.729713, 49.810589> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.710991, 0.453426, -0.537492,
		0.678162, -0.644278, 0.353558,
		-0.185982, -0.615882, -0.765572,
		30.745672, 42.544949, 49.580917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.531792, 42.496517, 50.036919>,  <30.875858, 42.976067, 50.116817>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.531792, 42.496517, 50.036919> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.294262, 42.556610, 49.720741>,  <31.151743, 42.592667, 49.531036>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.294262, 42.556610, 49.720741>,  <31.531792, 42.496517, 50.036919>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.294262, 42.556610, 49.720741> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.795615, 0.255993, -0.549057,
		0.119862, -0.954933, -0.271542,
		-0.593826, 0.150232, -0.790444,
		31.116114, 42.601681, 49.483608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.877068, 42.075912, 49.465054>,  <31.531792, 42.496517, 50.036919>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.877068, 42.075912, 49.465054> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.640186, 42.331818, 49.269096>,  <31.498056, 42.485363, 49.151524>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.640186, 42.331818, 49.269096>,  <31.877068, 42.075912, 49.465054>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.640186, 42.331818, 49.269096> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.790133, 0.341795, -0.508790,
		-0.158063, -0.688388, -0.707911,
		-0.592205, 0.639765, -0.489893,
		31.462524, 42.523746, 49.122128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.118607, 42.049934, 48.815758>,  <31.877068, 42.075912, 49.465054>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.118607, 42.049934, 48.815758> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.913925, 42.392975, 48.836452>,  <31.791117, 42.598801, 48.848869>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.913925, 42.392975, 48.836452>,  <32.118607, 42.049934, 48.815758>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.913925, 42.392975, 48.836452> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.774651, 0.486573, -0.403933,
		-0.371588, -0.166615, -0.913324,
		-0.511700, 0.857605, 0.051736,
		31.760414, 42.650257, 48.851974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.034576, 41.668243, 48.258583>,  <32.118607, 42.049934, 48.815758>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.034576, 41.668243, 48.258583> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.220993, 41.323700, 48.177719>,  <32.332844, 41.116974, 48.129200>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.220993, 41.323700, 48.177719>,  <32.034576, 41.668243, 48.258583>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.220993, 41.323700, 48.177719> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.574209, -0.468287, 0.671559,
		-0.673122, -0.196891, -0.712840,
		0.466037, -0.861361, -0.202158,
		32.360806, 41.065292, 48.117073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.538958, 41.140617, 48.145840>,  <32.034576, 41.668243, 48.258583>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.538958, 41.140617, 48.145840> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.856575, 40.916840, 48.240929>,  <32.047146, 40.782574, 48.297981>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.856575, 40.916840, 48.240929>,  <31.538958, 41.140617, 48.145840>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.856575, 40.916840, 48.240929> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.574621, -0.563284, 0.593735,
		-0.198259, -0.608052, -0.768743,
		0.794043, -0.559449, 0.237723,
		32.094788, 40.749004, 48.312244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.336063, 40.439957, 48.056446>,  <31.538958, 41.140617, 48.145840>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.336063, 40.439957, 48.056446> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.650511, 40.403671, 48.300999>,  <31.839180, 40.381901, 48.447731>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.650511, 40.403671, 48.300999>,  <31.336063, 40.439957, 48.056446>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.650511, 40.403671, 48.300999> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471174, -0.728145, 0.497795,
		0.400017, -0.679393, -0.615151,
		0.786118, -0.090717, 0.611383,
		31.886347, 40.376457, 48.484413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.562407, 39.741070, 48.037025>,  <31.336063, 40.439957, 48.056446>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.562407, 39.741070, 48.037025> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.696836, 39.909500, 48.374012>,  <31.777494, 40.010559, 48.576206>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.696836, 39.909500, 48.374012>,  <31.562407, 39.741070, 48.037025>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.696836, 39.909500, 48.374012> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392331, -0.750605, 0.531666,
		0.856231, -0.509205, -0.087057,
		0.336073, 0.421074, 0.842468,
		31.797659, 40.035824, 48.626751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.752953, 39.159966, 48.383347>,  <31.562407, 39.741070, 48.037025>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.752953, 39.159966, 48.383347> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.775980, 39.421143, 48.685432>,  <31.789797, 39.577850, 48.866684>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.775980, 39.421143, 48.685432>,  <31.752953, 39.159966, 48.383347>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.775980, 39.421143, 48.685432> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404800, -0.676227, 0.615511,
		0.912591, -0.341144, 0.225384,
		0.057566, 0.652945, 0.755214,
		31.793249, 39.617027, 48.911995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.026192, 38.781811, 49.028717>,  <31.752953, 39.159966, 48.383347>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.026192, 38.781811, 49.028717> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.808434, 39.094322, 49.150856>,  <31.677778, 39.281830, 49.224140>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.808434, 39.094322, 49.150856>,  <32.026192, 38.781811, 49.028717>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.808434, 39.094322, 49.150856> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.594021, -0.616084, 0.517282,
		0.592262, 0.100222, 0.799488,
		-0.544394, 0.781279, 0.305349,
		31.645115, 39.328705, 49.242462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.834038, 38.714649, 49.708603>,  <32.026192, 38.781811, 49.028717>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.834038, 38.714649, 49.708603> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.554321, 38.956856, 49.556633>,  <31.386492, 39.102180, 49.465450>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.554321, 38.956856, 49.556633>,  <31.834038, 38.714649, 49.708603>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.554321, 38.956856, 49.556633> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.694678, -0.450312, 0.560929,
		0.168563, 0.656181, 0.735536,
		-0.699291, 0.605513, -0.379929,
		31.344534, 39.138508, 49.442654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.508923, 38.293720, 49.847130>,  <31.834038, 38.714649, 49.708603>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.508923, 38.293720, 49.847130> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.647858, 37.946449, 49.705353>,  <32.731220, 37.738087, 49.620285>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.647858, 37.946449, 49.705353>,  <32.508923, 38.293720, 49.847130>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.647858, 37.946449, 49.705353> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366318, 0.473562, -0.800968,
		0.863230, 0.148368, 0.482514,
		0.347339, -0.868174, -0.354444,
		32.752060, 37.685997, 49.599018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.192604, 38.353481, 49.722301>,  <32.508923, 38.293720, 49.847130>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.192604, 38.353481, 49.722301> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.101982, 38.040085, 49.490849>,  <33.047607, 37.852047, 49.351978>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.101982, 38.040085, 49.490849>,  <33.192604, 38.353481, 49.722301>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.101982, 38.040085, 49.490849> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481488, 0.426321, -0.765781,
		0.846666, -0.452094, 0.280657,
		-0.226555, -0.783493, -0.578628,
		33.034016, 37.805038, 49.317261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.857487, 38.225155, 49.383778>,  <33.192604, 38.353481, 49.722301>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.857487, 38.225155, 49.383778> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.568817, 38.032555, 49.184841>,  <33.395615, 37.916996, 49.065479>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.568817, 38.032555, 49.184841>,  <33.857487, 38.225155, 49.383778>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.568817, 38.032555, 49.184841> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458278, 0.206148, -0.864571,
		0.518814, -0.851859, 0.071888,
		-0.721674, -0.481497, -0.497341,
		33.352314, 37.888107, 49.035637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.261322, 37.711620, 48.914860>,  <33.857487, 38.225155, 49.383778>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.261322, 37.711620, 48.914860> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.908329, 37.792213, 48.744854>,  <33.696533, 37.840569, 48.642853>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.908329, 37.792213, 48.744854>,  <34.261322, 37.711620, 48.914860>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.908329, 37.792213, 48.744854> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468129, 0.288484, -0.835244,
		-0.045681, -0.936045, -0.348903,
		-0.882478, 0.201486, -0.425012,
		33.643585, 37.852661, 48.617352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.434864, 37.650120, 48.280113>,  <34.261322, 37.711620, 48.914860>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.434864, 37.650120, 48.280113> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.080418, 37.833954, 48.256199>,  <33.867748, 37.944256, 48.241852>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.080418, 37.833954, 48.256199>,  <34.434864, 37.650120, 48.280113>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.080418, 37.833954, 48.256199> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276138, 0.419954, -0.864515,
		-0.372214, -0.782571, -0.499039,
		-0.886117, 0.459588, -0.059785,
		33.814583, 37.971828, 48.238262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.216080, 37.541901, 47.603069>,  <34.434864, 37.650120, 48.280113>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.216080, 37.541901, 47.603069> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.013260, 37.850937, 47.755913>,  <33.891567, 38.036358, 47.847618>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.013260, 37.850937, 47.755913>,  <34.216080, 37.541901, 47.603069>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.013260, 37.850937, 47.755913> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332235, 0.584252, -0.740452,
		-0.795313, -0.248496, -0.552926,
		-0.507047, 0.772593, 0.382104,
		33.861145, 38.082714, 47.870544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.031307, 37.906322, 46.977448>,  <34.216080, 37.541901, 47.603069>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.031307, 37.906322, 46.977448> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.982506, 38.151161, 47.289974>,  <33.953224, 38.298065, 47.477489>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.982506, 38.151161, 47.289974>,  <34.031307, 37.906322, 46.977448>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.982506, 38.151161, 47.289974> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352718, 0.762549, -0.542318,
		-0.927742, 0.209418, -0.308933,
		-0.122005, 0.612097, 0.781314,
		33.945904, 38.334789, 47.524368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<32.573978, 39.390354, 54.092384> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.380188, 39.734657, 54.029934>,  <32.263916, 39.941238, 53.992466>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.380188, 39.734657, 54.029934>,  <32.573978, 39.390354, 54.092384>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.380188, 39.734657, 54.029934> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.780506, 0.344711, -0.521521,
		-0.395087, -0.374519, -0.838833,
		-0.484474, 0.860761, -0.156124,
		32.234844, 39.992886, 53.983097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.622387, 39.498363, 53.328800>,  <32.573978, 39.390354, 54.092384>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.622387, 39.498363, 53.328800> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.567894, 39.853851, 53.503899>,  <32.535198, 40.067142, 53.608955>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.567894, 39.853851, 53.503899>,  <32.622387, 39.498363, 53.328800>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.567894, 39.853851, 53.503899> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.786340, 0.365769, -0.497879,
		-0.602587, 0.276389, -0.748664,
		-0.136230, 0.888719, 0.437743,
		32.527023, 40.120468, 53.635223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.677368, 40.018276, 52.835045>,  <32.622387, 39.498363, 53.328800>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.677368, 40.018276, 52.835045> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.755890, 40.232239, 53.163761>,  <32.803005, 40.360615, 53.360992>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.755890, 40.232239, 53.163761>,  <32.677368, 40.018276, 52.835045>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.755890, 40.232239, 53.163761> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.838299, 0.343196, -0.423640,
		-0.508643, 0.772070, -0.381039,
		0.196308, 0.534906, 0.821790,
		32.814781, 40.392712, 53.410297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.951054, 40.571651, 52.554714>,  <32.677368, 40.018276, 52.835045>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.951054, 40.571651, 52.554714> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.053024, 40.610260, 52.939568>,  <33.114208, 40.633427, 53.170479>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.053024, 40.610260, 52.939568>,  <32.951054, 40.571651, 52.554714>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.053024, 40.610260, 52.939568> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.894197, 0.355143, -0.272554,
		-0.368001, 0.929816, 0.004227,
		0.254926, 0.096520, 0.962131,
		33.129501, 40.639217, 53.228207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.165257, 41.215328, 52.664448>,  <32.951054, 40.571651, 52.554714>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.165257, 41.215328, 52.664448> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.348747, 41.005974, 52.951679>,  <33.458839, 40.880360, 53.124020>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.348747, 41.005974, 52.951679>,  <33.165257, 41.215328, 52.664448>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.348747, 41.005974, 52.951679> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.862289, 0.457323, -0.217517,
		-0.214550, 0.718974, 0.661094,
		0.458723, -0.523385, 0.718082,
		33.486362, 40.848957, 53.167103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.511345, 41.727364, 52.943443>,  <33.165257, 41.215328, 52.664448>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.511345, 41.727364, 52.943443> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.661190, 41.373734, 53.055206>,  <33.751099, 41.161556, 53.122265>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.661190, 41.373734, 53.055206>,  <33.511345, 41.727364, 52.943443>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.661190, 41.373734, 53.055206> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.900758, 0.275589, -0.335686,
		0.219770, 0.377434, 0.899580,
		0.374614, -0.884078, 0.279411,
		33.773575, 41.108509, 53.139030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.093071, 41.852394, 53.424992>,  <33.511345, 41.727364, 52.943443>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.093071, 41.852394, 53.424992> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.134094, 41.484291, 53.273937>,  <34.158710, 41.263428, 53.183304>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.134094, 41.484291, 53.273937>,  <34.093071, 41.852394, 53.424992>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.134094, 41.484291, 53.273937> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.974628, 0.168896, -0.146883,
		0.198951, -0.352988, 0.914231,
		0.102562, -0.920257, -0.377634,
		34.164864, 41.208214, 53.160648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.799828, 41.672810, 53.576012>,  <34.093071, 41.852394, 53.424992>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.799828, 41.672810, 53.576012> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.722885, 41.378601, 53.316166>,  <34.676720, 41.202076, 53.160259>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.722885, 41.378601, 53.316166>,  <34.799828, 41.672810, 53.576012>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.722885, 41.378601, 53.316166> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.931877, 0.070571, -0.355845,
		0.307576, -0.673814, 0.671842,
		-0.192360, -0.735524, -0.649617,
		34.665176, 41.157944, 53.121281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.440197, 41.252071, 53.541668>,  <34.799828, 41.672810, 53.576012>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.440197, 41.252071, 53.541668> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.264496, 41.141304, 53.199821>,  <35.159077, 41.074844, 52.994713>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.264496, 41.141304, 53.199821>,  <35.440197, 41.252071, 53.541668>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.264496, 41.141304, 53.199821> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.888578, 0.006102, -0.458686,
		0.132234, -0.960874, 0.243383,
		-0.439254, -0.276919, -0.854618,
		35.132721, 41.058228, 52.943436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.911495, 40.809528, 53.261848>,  <35.440197, 41.252071, 53.541668>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.911495, 40.809528, 53.261848> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.678856, 40.951843, 52.969227>,  <35.539272, 41.037231, 52.793655>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.678856, 40.951843, 52.969227>,  <35.911495, 40.809528, 53.261848>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.678856, 40.951843, 52.969227> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.812901, 0.220286, -0.539135,
		-0.030664, -0.908236, -0.417333,
		-0.581595, 0.355783, -0.731551,
		35.504379, 41.058578, 52.749763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.181843, 40.472565, 52.657635>,  <35.911495, 40.809528, 53.261848>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.181843, 40.472565, 52.657635> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.000523, 40.816910, 52.565170>,  <35.891731, 41.023518, 52.509689>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.000523, 40.816910, 52.565170>,  <36.181843, 40.472565, 52.657635>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.000523, 40.816910, 52.565170> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.770501, 0.248044, -0.587199,
		-0.448157, -0.444291, -0.775732,
		-0.453303, 0.860860, -0.231164,
		35.864532, 41.075169, 52.495819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.430454, 40.550117, 51.998459>,  <36.181843, 40.472565, 52.657635>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.430454, 40.550117, 51.998459> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.276264, 40.908752, 52.085674>,  <36.183750, 41.123932, 52.138004>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.276264, 40.908752, 52.085674>,  <36.430454, 40.550117, 51.998459>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.276264, 40.908752, 52.085674> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.811929, 0.441850, -0.381498,
		-0.438385, 0.029971, -0.898287,
		-0.385474, 0.896588, 0.218035,
		36.160622, 41.177731, 52.151085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.332939, 40.273014, 51.308880>,  <36.430454, 40.550117, 51.998459>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.332939, 40.273014, 51.308880> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.383476, 39.919121, 51.129425>,  <36.413799, 39.706783, 51.021751>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.383476, 39.919121, 51.129425>,  <36.332939, 40.273014, 51.308880>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.383476, 39.919121, 51.129425> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.770325, -0.372455, 0.517568,
		-0.625010, 0.280209, -0.728591,
		0.126340, -0.884737, -0.448640,
		36.421379, 39.653698, 50.994835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.659313, 39.931118, 51.053154>,  <36.332939, 40.273014, 51.308880>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.659313, 39.931118, 51.053154> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.911327, 39.621056, 51.071835>,  <36.062538, 39.435017, 51.083042>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.911327, 39.621056, 51.071835>,  <35.659313, 39.931118, 51.053154>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.911327, 39.621056, 51.071835> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.699557, -0.540424, 0.467506,
		-0.337149, -0.327221, -0.882755,
		0.630039, -0.775157, 0.046706,
		36.100338, 39.388508, 51.085846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.262917, 39.361858, 50.818005>,  <35.659313, 39.931118, 51.053154>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.262917, 39.361858, 50.818005> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.565067, 39.182373, 51.009029>,  <35.746357, 39.074680, 51.123646>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.565067, 39.182373, 51.009029>,  <35.262917, 39.361858, 50.818005>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.565067, 39.182373, 51.009029> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.635584, -0.679086, 0.367253,
		0.159514, -0.580944, -0.798160,
		0.755373, -0.448715, 0.477563,
		35.791679, 39.047760, 51.152298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.128613, 38.643009, 50.722748>,  <35.262917, 39.361858, 50.818005>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.128613, 38.643009, 50.722748> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.366264, 38.671928, 51.043194>,  <35.508858, 38.689281, 51.235462>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.366264, 38.671928, 51.043194>,  <35.128613, 38.643009, 50.722748>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.366264, 38.671928, 51.043194> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.621205, -0.591455, 0.514087,
		0.510992, -0.803090, -0.306487,
		0.594131, 0.072303, 0.801112,
		35.544502, 38.693619, 51.283527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.128891, 37.943768, 51.000309>,  <35.128613, 38.643009, 50.722748>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.128891, 37.943768, 51.000309> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.281090, 38.170898, 51.292282>,  <35.372410, 38.307175, 51.467464>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.281090, 38.170898, 51.292282>,  <35.128891, 37.943768, 51.000309>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.281090, 38.170898, 51.292282> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409462, -0.604276, 0.683514,
		0.829196, -0.558952, 0.002579,
		0.380494, 0.567823, 0.729933,
		35.395237, 38.341244, 51.511261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.488037, 37.431286, 51.418949>,  <35.128891, 37.943768, 51.000309>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.488037, 37.431286, 51.418949> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.439453, 37.745369, 51.661831>,  <35.410305, 37.933819, 51.807560>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.439453, 37.745369, 51.661831>,  <35.488037, 37.431286, 51.418949>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.439453, 37.745369, 51.661831> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339904, -0.607649, 0.717794,
		0.932584, -0.119211, 0.340698,
		-0.121455, 0.785208, 0.607205,
		35.403015, 37.980930, 51.843994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.654266, 37.163139, 52.015957>,  <35.488037, 37.431286, 51.418949>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.654266, 37.163139, 52.015957> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.408012, 37.471619, 52.080753>,  <35.260258, 37.656708, 52.119629>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.408012, 37.471619, 52.080753>,  <35.654266, 37.163139, 52.015957>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.408012, 37.471619, 52.080753> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440412, -0.507180, 0.740814,
		0.653472, 0.384732, 0.651886,
		-0.615638, 0.771200, 0.161988,
		35.223320, 37.702980, 52.129349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.683014, 37.302227, 52.813396>,  <35.654266, 37.163139, 52.015957>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.683014, 37.302227, 52.813396> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.336044, 37.431007, 52.661644>,  <35.127865, 37.508274, 52.570595>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.336044, 37.431007, 52.661644>,  <35.683014, 37.302227, 52.813396>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.336044, 37.431007, 52.661644> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493098, -0.454170, 0.742013,
		0.066588, 0.830710, 0.552709,
		-0.867422, 0.321949, -0.379379,
		35.075817, 37.527592, 52.547829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.200226, 37.416058, 53.465931>,  <35.683014, 37.302227, 52.813396>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.200226, 37.416058, 53.465931> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.968895, 37.421471, 53.139652>,  <34.830097, 37.424717, 52.943886>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.968895, 37.421471, 53.139652>,  <35.200226, 37.416058, 53.465931>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.968895, 37.421471, 53.139652> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.690389, -0.540806, 0.480512,
		-0.434629, 0.841039, 0.322106,
		-0.578326, 0.013534, -0.815693,
		34.795399, 37.425529, 52.894943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.452003, 37.636162, 53.567947>,  <35.200226, 37.416058, 53.465931>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.452003, 37.636162, 53.567947> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.466000, 37.408150, 53.239597>,  <34.474400, 37.271343, 53.042587>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.466000, 37.408150, 53.239597>,  <34.452003, 37.636162, 53.567947>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.466000, 37.408150, 53.239597> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.648385, -0.637999, 0.415397,
		-0.760508, 0.517708, -0.391926,
		0.034995, -0.570031, -0.820877,
		34.476498, 37.237141, 52.993336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.710285, 37.545696, 53.368771>,  <34.452003, 37.636162, 53.567947>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.710285, 37.545696, 53.368771> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.881989, 37.248337, 53.163597>,  <33.985008, 37.069920, 53.040493>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.881989, 37.248337, 53.163597>,  <33.710285, 37.545696, 53.368771>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.881989, 37.248337, 53.163597> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.663152, -0.644969, 0.379795,
		-0.613162, 0.177119, -0.769845,
		0.429257, -0.743400, -0.512927,
		34.010765, 37.025318, 53.009720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.133373, 37.183590, 53.046780>,  <33.710285, 37.545696, 53.368771>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.133373, 37.183590, 53.046780> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.442902, 36.933029, 53.084351>,  <33.628620, 36.782692, 53.106895>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.442902, 36.933029, 53.084351>,  <33.133373, 37.183590, 53.046780>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.442902, 36.933029, 53.084351> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.628463, -0.740815, 0.237123,
		-0.078948, -0.242524, -0.966928,
		0.773823, -0.626399, 0.093932,
		33.675049, 36.745110, 53.112530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.871639, 36.567852, 52.740971>,  <33.133373, 37.183590, 53.046780>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.871639, 36.567852, 52.740971> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.177086, 36.456039, 52.973778>,  <33.360355, 36.388950, 53.113464>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.177086, 36.456039, 52.973778>,  <32.871639, 36.567852, 52.740971>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.177086, 36.456039, 52.973778> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.529816, -0.786487, 0.317385,
		0.369033, -0.550725, -0.748676,
		0.763616, -0.279535, 0.582023,
		33.406170, 36.372177, 53.148384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.934986, 35.866364, 52.656906>,  <32.871639, 36.567852, 52.740971>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.934986, 35.866364, 52.656906> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.089344, 35.953148, 53.015572>,  <33.181957, 36.005219, 53.230770>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.089344, 35.953148, 53.015572>,  <32.934986, 35.866364, 52.656906>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.089344, 35.953148, 53.015572> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436281, -0.813477, 0.384597,
		0.812862, -0.539613, -0.219258,
		0.385895, 0.216966, 0.896667,
		33.205112, 36.018238, 53.284573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.599346, 36.272144, 52.129398>,  <32.934986, 35.866364, 52.656906>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.599346, 36.272144, 52.129398> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.227482, 36.241470, 51.985260>,  <32.004364, 36.223064, 51.898777>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.227482, 36.241470, 51.985260>,  <32.599346, 36.272144, 52.129398>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.227482, 36.241470, 51.985260> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320265, 0.315250, -0.893335,
		0.182107, -0.945905, -0.268515,
		-0.929660, -0.076687, -0.360349,
		31.948584, 36.218464, 51.877155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.513027, 35.686741, 51.521297>,  <32.599346, 36.272144, 52.129398>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.513027, 35.686741, 51.521297> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.267002, 36.001831, 51.507553>,  <32.119385, 36.190887, 51.499306>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.267002, 36.001831, 51.507553>,  <32.513027, 35.686741, 51.521297>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.267002, 36.001831, 51.507553> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314555, 0.205180, -0.926799,
		-0.723015, -0.580849, -0.373983,
		-0.615064, 0.787728, -0.034360,
		32.082481, 36.238148, 51.497246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.201183, 35.646126, 50.868752>,  <32.513027, 35.686741, 51.521297>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.201183, 35.646126, 50.868752> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.182014, 36.027199, 50.988815>,  <32.170513, 36.255844, 51.060852>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.182014, 36.027199, 50.988815>,  <32.201183, 35.646126, 50.868752>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.182014, 36.027199, 50.988815> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133953, 0.303917, -0.943235,
		-0.989829, -0.004992, -0.142178,
		-0.047919, 0.952686, 0.300157,
		32.167637, 36.313004, 51.078861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.026131, 35.901962, 50.183418>,  <32.201183, 35.646126, 50.868752>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.026131, 35.901962, 50.183418> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.085274, 36.231171, 50.402794>,  <32.120762, 36.428696, 50.534420>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.085274, 36.231171, 50.402794>,  <32.026131, 35.901962, 50.183418>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.085274, 36.231171, 50.402794> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114868, 0.536486, -0.836055,
		-0.982315, 0.186618, -0.015213,
		0.147861, 0.823017, 0.548435,
		32.129631, 36.478077, 50.567326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.521362, 36.503651, 49.959080>,  <32.026131, 35.901962, 50.183418>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.521362, 36.503651, 49.959080> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.860756, 36.625343, 50.132290>,  <32.064392, 36.698360, 50.236217>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.860756, 36.625343, 50.132290>,  <31.521362, 36.503651, 49.959080>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.860756, 36.625343, 50.132290> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202107, 0.569941, -0.796442,
		-0.489105, 0.763288, 0.422099,
		0.848486, 0.304235, 0.433027,
		32.115303, 36.716614, 50.262199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.591076, 37.200249, 49.773567>,  <31.521362, 36.503651, 49.959080>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.591076, 37.200249, 49.773567> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.963024, 37.094994, 49.876404>,  <32.186192, 37.031841, 49.938107>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.963024, 37.094994, 49.876404>,  <31.591076, 37.200249, 49.773567>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.963024, 37.094994, 49.876404> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367847, 0.654571, -0.660474,
		0.005511, 0.708727, 0.705462,
		0.929870, -0.263142, 0.257095,
		32.241985, 37.016052, 49.953533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.904907, 37.823402, 49.742580>,  <31.591076, 37.200249, 49.773567>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.904907, 37.823402, 49.742580> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.213196, 37.568550, 49.739655>,  <32.398170, 37.415638, 49.737900>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.213196, 37.568550, 49.739655>,  <31.904907, 37.823402, 49.742580>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.213196, 37.568550, 49.739655> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452850, 0.555802, -0.697145,
		0.448237, 0.533992, 0.716893,
		0.770720, -0.637132, -0.007313,
		32.444412, 37.377411, 49.737461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.779209, 38.296131, 50.277851>,  <31.904907, 37.823402, 49.742580>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.779209, 38.296131, 50.277851> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.490635, 38.564964, 50.211121>,  <31.317490, 38.726265, 50.171082>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.490635, 38.564964, 50.211121>,  <31.779209, 38.296131, 50.277851>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.490635, 38.564964, 50.211121> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437087, -0.255094, 0.862486,
		0.537107, 0.695146, 0.477794,
		-0.721436, 0.672085, -0.166827,
		31.274204, 38.766590, 50.161072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.727251, 38.617096, 50.954666>,  <31.779209, 38.296131, 50.277851>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.727251, 38.617096, 50.954666> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.391003, 38.733047, 50.771660>,  <31.189253, 38.802620, 50.661854>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.391003, 38.733047, 50.771660>,  <31.727251, 38.617096, 50.954666>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.391003, 38.733047, 50.771660> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506274, -0.120387, 0.853928,
		0.192460, 0.949460, 0.247960,
		-0.840622, 0.289883, -0.457518,
		31.138817, 38.820011, 50.634403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.378454, 39.136826, 51.466496>,  <31.727251, 38.617096, 50.954666>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.378454, 39.136826, 51.466496> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.122404, 38.980118, 51.202145>,  <30.968775, 38.886093, 51.043533>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.122404, 38.980118, 51.202145>,  <31.378454, 39.136826, 51.466496>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.122404, 38.980118, 51.202145> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.642343, -0.198986, 0.740135,
		-0.421468, 0.898287, -0.124275,
		-0.640125, -0.391771, -0.660875,
		30.930367, 38.862587, 51.003883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.802101, 39.510151, 51.575317>,  <31.378454, 39.136826, 51.466496>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.802101, 39.510151, 51.575317> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.667517, 39.196503, 51.366726>,  <30.586765, 39.008312, 51.241570>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.667517, 39.196503, 51.366726>,  <30.802101, 39.510151, 51.575317>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.667517, 39.196503, 51.366726> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.820858, -0.027178, 0.570485,
		-0.461503, 0.620011, -0.634509,
		-0.336462, -0.784123, -0.521483,
		30.566578, 38.961266, 51.210281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.035389, 39.556541, 51.531673>,  <30.802101, 39.510151, 51.575317>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.035389, 39.556541, 51.531673> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.095592, 39.171234, 51.442719>,  <30.131714, 38.940048, 51.389347>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.095592, 39.171234, 51.442719>,  <30.035389, 39.556541, 51.531673>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.095592, 39.171234, 51.442719> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.743407, -0.258560, 0.616841,
		-0.651685, 0.072483, -0.755018,
		0.150507, -0.963272, -0.222385,
		30.140745, 38.882252, 51.376003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.438578, 39.325935, 51.283459>,  <30.035389, 39.556541, 51.531673>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.438578, 39.325935, 51.283459> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.635233, 38.998436, 51.402081>,  <29.753225, 38.801937, 51.473255>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.635233, 38.998436, 51.402081>,  <29.438578, 39.325935, 51.283459>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.635233, 38.998436, 51.402081> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.804163, -0.296221, 0.515340,
		-0.334087, -0.491840, -0.804040,
		0.491638, -0.818747, 0.296556,
		29.782724, 38.752811, 51.491047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.003336, 38.781128, 51.052471>,  <29.438578, 39.325935, 51.283459>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.003336, 38.781128, 51.052471> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.237989, 38.647995, 51.347790>,  <29.378782, 38.568115, 51.524982>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.237989, 38.647995, 51.347790>,  <29.003336, 38.781128, 51.052471>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.237989, 38.647995, 51.347790> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.806852, -0.318592, 0.497483,
		0.069637, -0.887537, -0.455444,
		0.586635, -0.332832, 0.738297,
		29.413980, 38.548145, 51.569279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.686775, 38.183380, 51.182560>,  <29.003336, 38.781128, 51.052471>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.686775, 38.183380, 51.182560> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.893385, 38.291740, 51.507477>,  <29.017351, 38.356754, 51.702427>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.893385, 38.291740, 51.507477>,  <28.686775, 38.183380, 51.182560>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.893385, 38.291740, 51.507477> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.795372, -0.199576, 0.572322,
		0.317154, -0.941692, 0.112377,
		0.516524, 0.270896, 0.812292,
		29.048342, 38.373009, 51.751163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.465826, 37.627605, 51.735394>,  <28.686775, 38.183380, 51.182560>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.465826, 37.627605, 51.735394> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.621281, 37.937325, 51.935165>,  <28.714554, 38.123154, 52.055027>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.621281, 37.937325, 51.935165>,  <28.465826, 37.627605, 51.735394>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.621281, 37.937325, 51.935165> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.706510, -0.097511, 0.700953,
		0.591445, -0.625266, 0.509151,
		0.388634, 0.774295, 0.499429,
		28.737871, 38.169613, 52.084995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<39.740620, 45.838932, 42.892273> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.573246, 46.078575, 43.165325>,  <39.472824, 46.222363, 43.329155>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.573246, 46.078575, 43.165325>,  <39.740620, 45.838932, 42.892273>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.573246, 46.078575, 43.165325> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.503337, -0.778578, 0.374790,
		0.756020, -0.186768, 0.627336,
		-0.418432, 0.599111, 0.682628,
		39.447716, 46.258308, 43.370113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.821152, 45.447556, 43.563763>,  <39.740620, 45.838932, 42.892273>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.821152, 45.447556, 43.563763> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.541992, 45.727158, 43.626141>,  <39.374496, 45.894920, 43.663567>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.541992, 45.727158, 43.626141>,  <39.821152, 45.447556, 43.563763>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.541992, 45.727158, 43.626141> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.598892, -0.689004, 0.408169,
		0.392760, 0.191469, 0.899489,
		-0.697903, 0.699009, 0.155944,
		39.332623, 45.936859, 43.672924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.645622, 45.399540, 44.293041>,  <39.821152, 45.447556, 43.563763>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.645622, 45.399540, 44.293041> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.346130, 45.591751, 44.110401>,  <39.166435, 45.707077, 44.000816>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.346130, 45.591751, 44.110401>,  <39.645622, 45.399540, 44.293041>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.346130, 45.591751, 44.110401> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.648892, -0.672042, 0.356788,
		-0.135409, 0.563426, 0.814994,
		-0.748734, 0.480531, -0.456604,
		39.121510, 45.735909, 43.973419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.186981, 45.434254, 44.774151>,  <39.645622, 45.399540, 44.293041>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.186981, 45.434254, 44.774151> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.957737, 45.493538, 44.451767>,  <38.820190, 45.529106, 44.258335>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.957737, 45.493538, 44.451767>,  <39.186981, 45.434254, 44.774151>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.957737, 45.493538, 44.451767> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.658584, -0.668569, 0.345373,
		-0.487654, 0.728732, 0.480774,
		-0.573115, 0.148207, -0.805962,
		38.785801, 45.537998, 44.209980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.496197, 45.454323, 45.045727>,  <39.186981, 45.434254, 44.774151>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.496197, 45.454323, 45.045727> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.471939, 45.370926, 44.655270>,  <38.457386, 45.320889, 44.420994>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.471939, 45.370926, 44.655270>,  <38.496197, 45.454323, 45.045727>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.471939, 45.370926, 44.655270> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.768849, -0.613897, 0.178888,
		-0.636548, 0.761354, -0.123071,
		-0.060644, -0.208494, -0.976142,
		38.453747, 45.308376, 44.362427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.807163, 45.513828, 44.937244>,  <38.496197, 45.454323, 45.045727>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.807163, 45.513828, 44.937244> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.970619, 45.297440, 44.643208>,  <38.068695, 45.167606, 44.466785>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.970619, 45.297440, 44.643208>,  <37.807163, 45.513828, 44.937244>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.970619, 45.297440, 44.643208> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.688742, -0.711253, 0.140547,
		-0.598870, 0.448858, -0.663235,
		0.408642, -0.540967, -0.735096,
		38.093212, 45.135151, 44.422680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.249214, 45.340782, 44.528416>,  <37.807163, 45.513828, 44.937244>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.249214, 45.340782, 44.528416> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.530388, 45.073090, 44.432076>,  <37.699093, 44.912472, 44.374271>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.530388, 45.073090, 44.432076>,  <37.249214, 45.340782, 44.528416>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.530388, 45.073090, 44.432076> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.658438, -0.740344, 0.135463,
		-0.268967, 0.063361, -0.961063,
		0.702934, -0.669236, -0.240848,
		37.741268, 44.872318, 44.359821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.095829, 44.955070, 43.944725>,  <37.249214, 45.340782, 44.528416>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.095829, 44.955070, 43.944725> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.355690, 44.718788, 44.136150>,  <37.511608, 44.577019, 44.251003>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.355690, 44.718788, 44.136150>,  <37.095829, 44.955070, 43.944725>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.355690, 44.718788, 44.136150> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.645041, -0.761445, -0.064219,
		0.402330, -0.266970, -0.875704,
		0.649656, -0.590702, 0.478559,
		37.550587, 44.541576, 44.279716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.939949, 44.413532, 43.623898>,  <37.095829, 44.955070, 43.944725>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.939949, 44.413532, 43.623898> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.130043, 44.286049, 43.951939>,  <37.244099, 44.209560, 44.148766>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.130043, 44.286049, 43.951939>,  <36.939949, 44.413532, 43.623898>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.130043, 44.286049, 43.951939> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.673260, -0.731804, 0.105752,
		0.566453, -0.602403, -0.562353,
		0.475238, -0.318706, 0.820107,
		37.272614, 44.190437, 44.197971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.078220, 43.728939, 43.497345>,  <36.939949, 44.413532, 43.623898>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.078220, 43.728939, 43.497345> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.102276, 43.800911, 43.890079>,  <37.116711, 43.844093, 44.125721>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.102276, 43.800911, 43.890079>,  <37.078220, 43.728939, 43.497345>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.102276, 43.800911, 43.890079> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394992, -0.899042, 0.188955,
		0.916714, -0.399182, 0.017004,
		0.060141, 0.179934, 0.981838,
		37.120319, 43.854893, 44.184631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.325508, 43.081486, 43.723095>,  <37.078220, 43.728939, 43.497345>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.325508, 43.081486, 43.723095> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.151722, 43.273361, 44.028023>,  <37.047451, 43.388489, 44.210979>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.151722, 43.273361, 44.028023>,  <37.325508, 43.081486, 43.723095>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.151722, 43.273361, 44.028023> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.684818, -0.725688, 0.066343,
		0.585032, -0.493228, 0.643789,
		-0.434468, 0.479690, 0.762322,
		37.021381, 43.417267, 44.256718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.112812, 42.560848, 44.205078>,  <37.325508, 43.081486, 43.723095>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.112812, 42.560848, 44.205078> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.898880, 42.873154, 44.334301>,  <36.770519, 43.060535, 44.411835>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.898880, 42.873154, 44.334301>,  <37.112812, 42.560848, 44.205078>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.898880, 42.873154, 44.334301> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.785585, -0.600259, 0.150149,
		0.311148, -0.173484, 0.934393,
		-0.534830, 0.780764, 0.323056,
		36.738430, 43.107384, 44.431217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.513397, 42.285976, 44.868824>,  <37.112812, 42.560848, 44.205078>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.513397, 42.285976, 44.868824> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.603649, 41.939743, 44.690002>,  <37.657799, 41.732002, 44.582710>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.603649, 41.939743, 44.690002>,  <37.513397, 42.285976, 44.868824>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.603649, 41.939743, 44.690002> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.862307, 0.390983, -0.321804,
		0.453339, -0.312891, 0.834615,
		0.225631, -0.865582, -0.447056,
		37.671337, 41.680069, 44.555885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.182831, 42.196175, 45.011215>,  <37.513397, 42.285976, 44.868824>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.182831, 42.196175, 45.011215> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.119999, 41.956421, 44.697254>,  <38.082298, 41.812569, 44.508877>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.119999, 41.956421, 44.697254>,  <38.182831, 42.196175, 45.011215>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.119999, 41.956421, 44.697254> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.836324, 0.341966, -0.428510,
		0.525250, -0.723741, 0.447562,
		-0.157080, -0.599382, -0.784900,
		38.072876, 41.776608, 44.461784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.867706, 41.970985, 44.800560>,  <38.182831, 42.196175, 45.011215>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.867706, 41.970985, 44.800560> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.617783, 41.918777, 44.492645>,  <38.467827, 41.887451, 44.307896>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.617783, 41.918777, 44.492645>,  <38.867706, 41.970985, 44.800560>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.617783, 41.918777, 44.492645> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.649048, 0.461193, -0.605011,
		0.433986, -0.877648, -0.203447,
		-0.624815, -0.130519, -0.769787,
		38.430340, 41.879620, 44.261707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.445038, 41.701324, 44.301102>,  <38.867706, 41.970985, 44.800560>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.445038, 41.701324, 44.301102> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.122715, 41.808380, 44.089798>,  <38.929321, 41.872612, 43.963017>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.122715, 41.808380, 44.089798>,  <39.445038, 41.701324, 44.301102>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.122715, 41.808380, 44.089798> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.591794, 0.331562, -0.734743,
		-0.021494, -0.904675, -0.425558,
		-0.805803, 0.267635, -0.528255,
		38.880974, 41.888672, 43.931320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.454613, 41.342617, 43.594894>,  <39.445038, 41.701324, 44.301102>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.454613, 41.342617, 43.594894> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.221424, 41.666939, 43.573956>,  <39.081512, 41.861534, 43.561390>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.221424, 41.666939, 43.573956>,  <39.454613, 41.342617, 43.594894>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.221424, 41.666939, 43.573956> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461444, 0.277368, -0.842696,
		-0.668745, -0.515420, -0.535838,
		-0.582967, 0.810808, -0.052349,
		39.046535, 41.910183, 43.558250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.228535, 41.383808, 42.908581>,  <39.454613, 41.342617, 43.594894>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.228535, 41.383808, 42.908581> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.137070, 41.747818, 43.046894>,  <39.082191, 41.966225, 43.129883>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.137070, 41.747818, 43.046894>,  <39.228535, 41.383808, 42.908581>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.137070, 41.747818, 43.046894> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367699, 0.409621, -0.834870,
		-0.901394, -0.063759, -0.428280,
		-0.228663, 0.910025, 0.345785,
		39.068470, 42.020824, 43.150631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.178947, 41.779785, 42.279900>,  <39.228535, 41.383808, 42.908581>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.178947, 41.779785, 42.279900> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.229866, 42.053215, 42.567375>,  <39.260418, 42.217274, 42.739861>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.229866, 42.053215, 42.567375>,  <39.178947, 41.779785, 42.279900>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.229866, 42.053215, 42.567375> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503588, 0.579705, -0.640580,
		-0.854514, 0.443471, -0.270444,
		0.127301, 0.683576, 0.718692,
		39.268055, 42.258289, 42.782982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.019844, 42.425388, 41.934570>,  <39.178947, 41.779785, 42.279900>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.019844, 42.425388, 41.934570> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.270294, 42.487961, 42.240116>,  <39.420563, 42.525505, 42.423443>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.270294, 42.487961, 42.240116>,  <39.019844, 42.425388, 41.934570>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.270294, 42.487961, 42.240116> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.666637, 0.400736, -0.628494,
		-0.404426, 0.902740, 0.146628,
		0.626126, 0.156431, 0.763869,
		39.458134, 42.534889, 42.469276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.365086, 43.078644, 41.841366>,  <39.019844, 42.425388, 41.934570>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.365086, 43.078644, 41.841366> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.596287, 42.904053, 42.117165>,  <39.735008, 42.799297, 42.282642>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.596287, 42.904053, 42.117165>,  <39.365086, 43.078644, 41.841366>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.596287, 42.904053, 42.117165> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.813283, 0.238775, -0.530619,
		0.066969, 0.867453, 0.492992,
		0.578001, -0.436477, 0.689494,
		39.769688, 42.773109, 42.324013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.953609, 43.426231, 41.744522>,  <39.365086, 43.078644, 41.841366>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.953609, 43.426231, 41.744522> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.076118, 43.134209, 41.988888>,  <40.149624, 42.958996, 42.135506>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.076118, 43.134209, 41.988888>,  <39.953609, 43.426231, 41.744522>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.076118, 43.134209, 41.988888> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.929420, 0.090556, -0.357739,
		0.205849, 0.677360, 0.706265,
		0.306275, -0.730057, 0.610911,
		40.167999, 42.915192, 42.172161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.506435, 43.759987, 42.153297>,  <39.953609, 43.426231, 41.744522>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.506435, 43.759987, 42.153297> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.534622, 43.361977, 42.125118>,  <40.551533, 43.123173, 42.108212>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.534622, 43.361977, 42.125118>,  <40.506435, 43.759987, 42.153297>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.534622, 43.361977, 42.125118> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.927664, 0.091331, -0.362075,
		0.366707, -0.039838, 0.929483,
		0.070466, -0.995023, -0.070448,
		40.555763, 43.063469, 42.103985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.138031, 43.528774, 42.503632>,  <40.506435, 43.759987, 42.153297>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.138031, 43.528774, 42.503632> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.034386, 43.221603, 42.269318>,  <40.972198, 43.037300, 42.128731>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.034386, 43.221603, 42.269318>,  <41.138031, 43.528774, 42.503632>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.034386, 43.221603, 42.269318> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.925573, -0.024111, -0.377799,
		0.276000, -0.640079, 0.717024,
		-0.259109, -0.767931, -0.585785,
		40.956654, 42.991222, 42.093582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.526264, 42.939243, 42.711197>,  <41.138031, 43.528774, 42.503632>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.526264, 42.939243, 42.711197> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.421089, 42.877678, 42.330215>,  <41.357983, 42.840740, 42.101627>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.421089, 42.877678, 42.330215>,  <41.526264, 42.939243, 42.711197>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.421089, 42.877678, 42.330215> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.964777, -0.050426, -0.258193,
		-0.008291, -0.986798, 0.161747,
		-0.262940, -0.153909, -0.952457,
		41.342209, 42.831505, 42.044479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.088562, 42.603848, 42.488449>,  <41.526264, 42.939243, 42.711197>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.088562, 42.603848, 42.488449> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.936619, 42.712219, 42.134655>,  <41.845455, 42.777241, 41.922379>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.936619, 42.712219, 42.134655>,  <42.088562, 42.603848, 42.488449>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.936619, 42.712219, 42.134655> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.917638, -0.010405, -0.397280,
		-0.116837, -0.962544, -0.244660,
		-0.379854, 0.270926, -0.884483,
		41.822662, 42.793495, 41.869308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.466099, 43.203106, 42.821918>,  <42.088562, 42.603848, 42.488449>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.466099, 43.203106, 42.821918> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.673920, 43.422928, 42.560215>,  <42.798611, 43.554821, 42.403194>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.673920, 43.422928, 42.560215>,  <42.466099, 43.203106, 42.821918>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.673920, 43.422928, 42.560215> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.711330, -0.146020, -0.687523,
		-0.473366, 0.822598, 0.315049,
		0.519552, 0.549554, -0.654260,
		42.829784, 43.587795, 42.363937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.934586, 42.654865, 42.497150>,  <42.466099, 43.203106, 42.821918>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.934586, 42.654865, 42.497150> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.059341, 42.833755, 42.832462>,  <43.134197, 42.941090, 43.033649>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.059341, 42.833755, 42.832462>,  <42.934586, 42.654865, 42.497150>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.059341, 42.833755, 42.832462> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.690937, -0.498853, 0.523213,
		0.652172, -0.742385, 0.153415,
		0.311894, 0.447225, 0.838279,
		43.152908, 42.967922, 43.083946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.055141, 42.139030, 42.983772>,  <42.934586, 42.654865, 42.497150>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.055141, 42.139030, 42.983772> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.009968, 42.475876, 43.194710>,  <42.982864, 42.677982, 43.321274>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.009968, 42.475876, 43.194710>,  <43.055141, 42.139030, 42.983772>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.009968, 42.475876, 43.194710> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.592212, -0.483213, 0.644818,
		0.797829, -0.239478, 0.553280,
		-0.112932, 0.842114, 0.527343,
		42.976089, 42.728512, 43.352913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.209305, 41.973263, 43.710781>,  <43.055141, 42.139030, 42.983772>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.209305, 41.973263, 43.710781> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.973576, 42.296013, 43.694538>,  <42.832138, 42.489662, 43.684792>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.973576, 42.296013, 43.694538>,  <43.209305, 41.973263, 43.710781>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.973576, 42.296013, 43.694538> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484941, -0.313097, 0.816580,
		0.646162, 0.500925, 0.575802,
		-0.589327, 0.806873, -0.040608,
		42.796776, 42.538074, 43.682354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.109051, 42.148823, 44.408749>,  <43.209305, 41.973263, 43.710781>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.109051, 42.148823, 44.408749> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.799805, 42.321388, 44.222771>,  <42.614258, 42.424927, 44.111183>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.799805, 42.321388, 44.222771>,  <43.109051, 42.148823, 44.408749>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.799805, 42.321388, 44.222771> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.627963, -0.417557, 0.656741,
		0.089185, 0.799706, 0.593731,
		-0.773116, 0.431412, -0.464946,
		42.567871, 42.450813, 44.083286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.680199, 42.272968, 44.958542>,  <43.109051, 42.148823, 44.408749>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.680199, 42.272968, 44.958542> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.433720, 42.352028, 44.653587>,  <42.285831, 42.399464, 44.470615>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.433720, 42.352028, 44.653587>,  <42.680199, 42.272968, 44.958542>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.433720, 42.352028, 44.653587> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.760342, -0.401716, 0.510396,
		-0.205385, 0.894181, 0.397816,
		-0.616196, 0.197648, -0.762390,
		42.248859, 42.411324, 44.424870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.073723, 42.703209, 45.250332>,  <42.680199, 42.272968, 44.958542>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.073723, 42.703209, 45.250332> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.957611, 42.526146, 44.910969>,  <41.887943, 42.419907, 44.707352>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.957611, 42.526146, 44.910969>,  <42.073723, 42.703209, 45.250332>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.957611, 42.526146, 44.910969> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.772171, -0.415321, 0.480896,
		-0.565233, 0.794708, -0.221248,
		-0.290283, -0.442660, -0.848403,
		41.870525, 42.393349, 44.656448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.444012, 42.852703, 45.129166>,  <42.073723, 42.703209, 45.250332>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.444012, 42.852703, 45.129166> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.484932, 42.493523, 44.957947>,  <41.509483, 42.278015, 44.855217>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.484932, 42.493523, 44.957947>,  <41.444012, 42.852703, 45.129166>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.484932, 42.493523, 44.957947> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.800903, -0.329564, 0.499942,
		-0.589990, 0.291677, -0.752885,
		0.102302, -0.897949, -0.428045,
		41.515621, 42.224136, 44.829533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.759193, 42.645340, 44.956303>,  <41.444012, 42.852703, 45.129166>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.759193, 42.645340, 44.956303> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.978214, 42.310730, 44.948257>,  <41.109627, 42.109962, 44.943428>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.978214, 42.310730, 44.948257>,  <40.759193, 42.645340, 44.956303>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.978214, 42.310730, 44.948257> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.725542, -0.486606, 0.486624,
		-0.416862, -0.251859, -0.873380,
		0.547553, -0.836529, -0.020113,
		41.142479, 42.059772, 44.942223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.250862, 42.199528, 44.948692>,  <40.759193, 42.645340, 44.956303>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.250862, 42.199528, 44.948692> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.559776, 41.966438, 45.049889>,  <40.745125, 41.826584, 45.110607>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.559776, 41.966438, 45.049889>,  <40.250862, 42.199528, 44.948692>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.559776, 41.966438, 45.049889> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.611520, -0.574031, 0.544546,
		-0.172099, -0.575253, -0.799666,
		0.772285, -0.582728, 0.252989,
		40.791462, 41.791618, 45.125786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.995670, 41.613255, 44.885899>,  <40.250862, 42.199528, 44.948692>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.995670, 41.613255, 44.885899> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.301987, 41.572998, 45.139961>,  <40.485779, 41.548843, 45.292400>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.301987, 41.572998, 45.139961>,  <39.995670, 41.613255, 44.885899>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.301987, 41.572998, 45.139961> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.589038, -0.506105, 0.629994,
		0.258055, -0.856580, -0.446853,
		0.765795, -0.100640, 0.635161,
		40.531727, 41.542805, 45.330509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.039845, 40.911003, 45.109055>,  <39.995670, 41.613255, 44.885899>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.039845, 40.911003, 45.109055> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.222908, 41.107384, 45.405575>,  <40.332745, 41.225212, 45.583485>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.222908, 41.107384, 45.405575>,  <40.039845, 40.911003, 45.109055>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.222908, 41.107384, 45.405575> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.601843, -0.442645, 0.664718,
		0.654474, -0.750356, 0.092895,
		0.457656, 0.490949, 0.741297,
		40.360207, 41.254669, 45.627964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.189838, 40.342342, 45.625454>,  <40.039845, 40.911003, 45.109055>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.189838, 40.342342, 45.625454> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.216240, 40.699669, 45.803276>,  <40.232082, 40.914066, 45.909969>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.216240, 40.699669, 45.803276>,  <40.189838, 40.342342, 45.625454>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.216240, 40.699669, 45.803276> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.605944, -0.318084, 0.729146,
		0.792764, -0.317502, 0.520305,
		0.066005, 0.893317, 0.444554,
		40.236042, 40.967663, 45.936642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.430260, 40.139294, 46.290775>,  <40.189838, 40.342342, 45.625454>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.430260, 40.139294, 46.290775> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.287792, 40.506126, 46.362442>,  <40.202312, 40.726227, 46.405441>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.287792, 40.506126, 46.362442>,  <40.430260, 40.139294, 46.290775>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.287792, 40.506126, 46.362442> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255493, -0.280007, 0.925375,
		0.898816, 0.283813, 0.334038,
		-0.356166, 0.917086, 0.179163,
		40.180943, 40.781254, 46.416191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.616085, 40.291306, 46.909275>,  <40.430260, 40.139294, 46.290775>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.616085, 40.291306, 46.909275> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.333183, 40.573570, 46.892166>,  <40.163441, 40.742928, 46.881901>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.333183, 40.573570, 46.892166>,  <40.616085, 40.291306, 46.909275>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.333183, 40.573570, 46.892166> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274499, -0.218354, 0.936468,
		0.651490, 0.674064, 0.348136,
		-0.707256, 0.705662, -0.042774,
		40.121006, 40.785271, 46.879333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.586151, 40.628086, 47.498127>,  <40.616085, 40.291306, 46.909275>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.586151, 40.628086, 47.498127> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.228745, 40.724342, 47.346481>,  <40.014301, 40.782097, 47.255493>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.228745, 40.724342, 47.346481>,  <40.586151, 40.628086, 47.498127>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.228745, 40.724342, 47.346481> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441193, -0.313346, 0.840930,
		0.083566, 0.918645, 0.386146,
		-0.893513, 0.240638, -0.379115,
		39.960690, 40.796535, 47.232746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.325432, 40.986885, 48.084995>,  <40.586151, 40.628086, 47.498127>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.325432, 40.986885, 48.084995> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.025787, 40.891991, 47.837593>,  <39.846001, 40.835052, 47.689152>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.025787, 40.891991, 47.837593>,  <40.325432, 40.986885, 48.084995>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.025787, 40.891991, 47.837593> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.577000, -0.225000, 0.785141,
		-0.325430, 0.945036, 0.031663,
		-0.749110, -0.237239, -0.618508,
		39.801056, 40.820820, 47.652042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.738869, 41.323063, 48.328297>,  <40.325432, 40.986885, 48.084995>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.738869, 41.323063, 48.328297> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.621037, 41.026817, 48.086731>,  <39.550339, 40.849072, 47.941792>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.621037, 41.026817, 48.086731>,  <39.738869, 41.323063, 48.328297>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.621037, 41.026817, 48.086731> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.606148, -0.343755, 0.717229,
		-0.738789, 0.577342, -0.347659,
		-0.294577, -0.740613, -0.603917,
		39.532665, 40.804634, 47.905556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.068214, 41.385761, 48.397678>,  <39.738869, 41.323063, 48.328297>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.068214, 41.385761, 48.397678> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.116951, 41.019051, 48.245529>,  <39.146191, 40.799026, 48.154240>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.116951, 41.019051, 48.245529>,  <39.068214, 41.385761, 48.397678>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.116951, 41.019051, 48.245529> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.729978, -0.342427, 0.591503,
		-0.672524, 0.205595, -0.710945,
		0.121837, -0.916774, -0.380370,
		39.153503, 40.744019, 48.131420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.443874, 41.203461, 48.122108>,  <39.068214, 41.385761, 48.397678>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.443874, 41.203461, 48.122108> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.653236, 40.883179, 48.238667>,  <38.778854, 40.691010, 48.308601>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.653236, 40.883179, 48.238667>,  <38.443874, 41.203461, 48.122108>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.653236, 40.883179, 48.238667> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.738935, -0.256247, 0.623148,
		-0.424291, -0.541481, -0.725793,
		0.523405, -0.800709, 0.291396,
		38.810257, 40.642967, 48.326084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.045284, 40.673016, 47.947205>,  <38.443874, 41.203461, 48.122108>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.045284, 40.673016, 47.947205> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.299015, 40.551323, 48.231480>,  <38.451252, 40.478306, 48.402046>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.299015, 40.551323, 48.231480>,  <38.045284, 40.673016, 47.947205>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.299015, 40.551323, 48.231480> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.771908, -0.198943, 0.603804,
		-0.042308, -0.931594, -0.361031,
		0.634325, -0.304229, 0.710687,
		38.489311, 40.460052, 48.444687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.745697, 39.986050, 48.152462>,  <38.045284, 40.673016, 47.947205>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.745697, 39.986050, 48.152462> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.989502, 40.069504, 48.458393>,  <38.135784, 40.119576, 48.641953>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.989502, 40.069504, 48.458393>,  <37.745697, 39.986050, 48.152462>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.989502, 40.069504, 48.458393> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.707451, -0.292253, 0.643507,
		0.357782, -0.933306, -0.030533,
		0.609512, 0.208635, 0.764831,
		38.172356, 40.132095, 48.687843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.804317, 39.311871, 48.503662>,  <37.745697, 39.986050, 48.152462>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.804317, 39.311871, 48.503662> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.914539, 39.594986, 48.763851>,  <37.980671, 39.764854, 48.919964>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.914539, 39.594986, 48.763851>,  <37.804317, 39.311871, 48.503662>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.914539, 39.594986, 48.763851> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.784913, -0.224984, 0.577316,
		0.554961, -0.669642, 0.493556,
		0.275553, 0.707786, 0.650468,
		37.997204, 39.807323, 48.958992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.917324, 38.968094, 49.153625>,  <37.804317, 39.311871, 48.503662>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.917324, 38.968094, 49.153625> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.860031, 39.353043, 49.245995>,  <37.825657, 39.584011, 49.301414>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.860031, 39.353043, 49.245995>,  <37.917324, 38.968094, 49.153625>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.860031, 39.353043, 49.245995> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.594862, -0.270190, 0.757058,
		0.790964, -0.028931, 0.611179,
		-0.143233, 0.962372, 0.230920,
		37.817062, 39.641754, 49.315269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.950867, 38.939606, 49.857204>,  <37.917324, 38.968094, 49.153625>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.950867, 38.939606, 49.857204> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.781994, 39.296883, 49.795280>,  <37.680672, 39.511250, 49.758125>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.781994, 39.296883, 49.795280>,  <37.950867, 38.939606, 49.857204>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.781994, 39.296883, 49.795280> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.593578, -0.143305, 0.791915,
		0.685148, 0.426226, 0.590681,
		-0.422182, 0.893194, -0.154813,
		37.655338, 39.564842, 49.748837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.935741, 39.188381, 50.530262>,  <37.950867, 38.939606, 49.857204>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.935741, 39.188381, 50.530262> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.661053, 39.388489, 50.319305>,  <37.496239, 39.508553, 50.192730>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.661053, 39.388489, 50.319305>,  <37.935741, 39.188381, 50.530262>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.661053, 39.388489, 50.319305> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.602778, 0.013605, 0.797793,
		0.406286, 0.865764, 0.292208,
		-0.686724, 0.500269, -0.527391,
		37.455036, 39.538570, 50.161087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.684944, 39.754097, 50.973209>,  <37.935741, 39.188381, 50.530262>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.684944, 39.754097, 50.973209> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.406467, 39.668564, 50.699104>,  <37.239380, 39.617245, 50.534641>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.406467, 39.668564, 50.699104>,  <37.684944, 39.754097, 50.973209>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.406467, 39.668564, 50.699104> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.675035, -0.129745, 0.726288,
		-0.244217, 0.968215, -0.054019,
		-0.696194, -0.213837, -0.685265,
		37.197609, 39.604412, 50.493526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.040916, 40.238968, 51.204906>,  <37.684944, 39.754097, 50.973209>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.040916, 40.238968, 51.204906> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.910576, 39.951141, 50.959618>,  <36.832371, 39.778446, 50.812443>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.910576, 39.951141, 50.959618>,  <37.040916, 40.238968, 51.204906>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.910576, 39.951141, 50.959618> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.757896, -0.188927, 0.624420,
		-0.565165, 0.668232, -0.483792,
		-0.325856, -0.719564, -0.613225,
		36.812820, 39.735271, 50.775650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.693558, 40.935551, 51.425629>,  <37.040916, 40.238968, 51.204906>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.693558, 40.935551, 51.425629> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.572525, 41.211464, 51.688728>,  <36.499905, 41.377014, 51.846588>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.572525, 41.211464, 51.688728>,  <36.693558, 40.935551, 51.425629>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.572525, 41.211464, 51.688728> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.812999, 0.546978, -0.199618,
		-0.497470, 0.474351, -0.726301,
		-0.302582, 0.689786, 0.657753,
		36.481750, 41.418400, 51.886055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.562836, 41.492043, 51.067062>,  <36.693558, 40.935551, 51.425629>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.562836, 41.492043, 51.067062> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.653976, 41.612999, 51.437283>,  <36.708660, 41.685574, 51.659416>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.653976, 41.612999, 51.437283>,  <36.562836, 41.492043, 51.067062>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.653976, 41.612999, 51.437283> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.674176, 0.636854, -0.374037,
		-0.702546, 0.709208, -0.058759,
		0.227849, 0.302392, 0.925551,
		36.722332, 41.703716, 51.714947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.572826, 42.158813, 50.990780>,  <36.562836, 41.492043, 51.067062>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.572826, 42.158813, 50.990780> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.778053, 42.083649, 51.325790>,  <36.901188, 42.038548, 51.526798>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.778053, 42.083649, 51.325790>,  <36.572826, 42.158813, 50.990780>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.778053, 42.083649, 51.325790> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.771809, 0.527966, -0.354348,
		-0.375598, 0.828215, 0.415916,
		0.513066, -0.187915, 0.837527,
		36.931973, 42.027275, 51.577049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.762470, 42.778286, 51.184216>,  <36.572826, 42.158813, 50.990780>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.762470, 42.778286, 51.184216> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.035698, 42.531303, 51.340248>,  <37.199635, 42.383114, 51.433868>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.035698, 42.531303, 51.340248>,  <36.762470, 42.778286, 51.184216>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.035698, 42.531303, 51.340248> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.723427, 0.645398, -0.245184,
		-0.100365, 0.449671, 0.887537,
		0.683067, -0.617460, 0.390080,
		37.240620, 42.346066, 51.457272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.218609, 43.125404, 51.545975>,  <36.762470, 42.778286, 51.184216>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.218609, 43.125404, 51.545975> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.426174, 42.789902, 51.479973>,  <37.550713, 42.588600, 51.440372>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.426174, 42.789902, 51.479973>,  <37.218609, 43.125404, 51.545975>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.426174, 42.789902, 51.479973> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.793153, 0.544404, -0.273006,
		0.318813, 0.010792, 0.947756,
		0.518909, -0.838753, -0.165003,
		37.581848, 42.538277, 51.430473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// box output
cylinder {
	<0.000000, 0.000000, 0.000000>,  <88.400002, 0.000000, 0.000000>, 0.442000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 88.400002, 0.000000>, 0.442000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 0.000000, 88.400002>, 0.442000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<88.400002, 88.400002, 88.400002>,  <0.000000, 88.400002, 88.400002>, 0.442000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<88.400002, 88.400002, 88.400002>,  <88.400002, 0.000000, 88.400002>, 0.442000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<88.400002, 88.400002, 88.400002>,  <88.400002, 88.400002, 0.000000>, 0.442000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 88.400002>,  <0.000000, 88.400002, 88.400002>, 0.442000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 88.400002>,  <88.400002, 0.000000, 88.400002>, 0.442000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<88.400002, 88.400002, 0.000000>,  <0.000000, 88.400002, 0.000000>, 0.442000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<88.400002, 88.400002, 0.000000>,  <88.400002, 0.000000, 0.000000>, 0.442000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<88.400002, 0.000000, 88.400002>,  <88.400002, 0.000000, 0.000000>, 0.442000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 88.400002, 0.000000>,  <0.000000, 88.400002, 88.400002>, 0.442000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
// end of box output
