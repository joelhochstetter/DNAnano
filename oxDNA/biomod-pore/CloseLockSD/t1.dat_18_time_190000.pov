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
	location <25.469, 94.9851, 44.8844>
	look_at <25.469, 29.3977, 32.8955>
	direction <0, -65.5874, -11.9889>
	angle 67.0682
}


# declare cpy_camera_pos = <25.469, 94.9851, 44.8844>;
# if (DRAW_FOG = 1)
fog {
	fog_type 2
	up vnormalize(cpy_camera_pos)
	color rgbt<1,1,1,0.3>
	distance 1e-5
	fog_alt 3e-3
	fog_offset 28
}
# end


// LIGHTS

# declare lum = 6;
global_settings {
	ambient_light rgb lum * <0.05, 0.05, 0.05>
	max_trace_level 15
}# declare cpy_direct_light_amount = 0.25;
light_source
{	1000 * <-1, -1.16351, -0.803887>,
	rgb lum * cpy_direct_light_amount
	parallel
}

light_source
{	1000 * <1, 1.16351, 0.803887>,
	rgb lum * cpy_direct_light_amount
	parallel
}

// strand 0

// nucleotide -1

// particle -1
sphere {
	<4.641053, 15.063071, 14.900021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.302399, 15.002584, 15.104116>,  <4.099207, 14.966292, 15.226574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.302399, 15.002584, 15.104116>,  <4.641053, 15.063071, 14.900021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.302399, 15.002584, 15.104116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116016, 0.988165, 0.100353,
		-0.519376, 0.025766, -0.854157,
		-0.846634, -0.151216, 0.510240,
		4.048409, 14.957219, 15.257189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.657769, 14.961375, 14.150542>,  <4.641053, 15.063071, 14.900021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.657769, 14.961375, 14.150542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.004606, 15.159247, 14.174017>,  <5.212708, 15.277971, 14.188102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.004606, 15.159247, 14.174017>,  <4.657769, 14.961375, 14.150542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.004606, 15.159247, 14.174017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496400, -0.867894, -0.018635,
		0.041715, 0.045291, -0.998102,
		0.867091, 0.494681, 0.058687,
		5.264733, 15.307652, 14.191623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.154102, 14.714607, 13.527581>,  <4.657769, 14.961375, 14.150542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.154102, 14.714607, 13.527581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.355643, 14.838509, 13.850118>,  <5.476567, 14.912849, 14.043639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.355643, 14.838509, 13.850118>,  <5.154102, 14.714607, 13.527581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.355643, 14.838509, 13.850118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555779, -0.830855, -0.028116,
		0.661243, 0.462314, -0.590782,
		0.503852, 0.309753, 0.806341,
		5.506798, 14.931435, 14.092020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.794161, 14.366836, 13.469082>,  <5.154102, 14.714607, 13.527581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.794161, 14.366836, 13.469082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.794825, 14.517774, 13.839510>,  <5.795223, 14.608336, 14.061767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.794825, 14.517774, 13.839510>,  <5.794161, 14.366836, 13.469082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.794825, 14.517774, 13.839510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.596185, -0.743867, 0.302036,
		0.802845, 0.551609, -0.226201,
		0.001658, 0.377346, 0.926071,
		5.795322, 14.630978, 14.117332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.532794, 14.505695, 13.691433>,  <5.794161, 14.366836, 13.469082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.532794, 14.505695, 13.691433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.271397, 14.385656, 13.969394>,  <6.114558, 14.313633, 14.136170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.271397, 14.385656, 13.969394>,  <6.532794, 14.505695, 13.691433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.271397, 14.385656, 13.969394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.630970, -0.723091, 0.281099,
		0.418119, 0.622158, 0.661888,
		-0.653493, -0.300099, 0.694901,
		6.075349, 14.295627, 14.177864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.994289, 14.359311, 14.278702>,  <6.532794, 14.505695, 13.691433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.994289, 14.359311, 14.278702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.641951, 14.187445, 14.358199>,  <6.430548, 14.084325, 14.405897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.641951, 14.187445, 14.358199>,  <6.994289, 14.359311, 14.278702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.641951, 14.187445, 14.358199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469172, -0.848325, 0.245402,
		0.063158, 0.309405, 0.948831,
		-0.880846, -0.429666, 0.198743,
		6.377697, 14.058545, 14.417822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.994289, 14.130312, 15.010320>,  <6.994289, 14.359311, 14.278702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.994289, 14.130312, 15.010320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.712086, 13.916628, 14.824039>,  <6.542764, 13.788418, 14.712272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.712086, 13.916628, 14.824039>,  <6.994289, 14.130312, 15.010320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.712086, 13.916628, 14.824039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460483, -0.845046, 0.271756,
		-0.538713, -0.022721, 0.842183,
		-0.705509, -0.534210, -0.465700,
		6.500433, 13.756365, 14.684329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.827732, 13.605598, 15.480175>,  <6.994289, 14.130312, 15.010320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.827732, 13.605598, 15.480175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.710587, 13.456085, 15.128148>,  <6.640300, 13.366378, 14.916932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.710587, 13.456085, 15.128148>,  <6.827732, 13.605598, 15.480175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.710587, 13.456085, 15.128148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308212, -0.908197, 0.283165,
		-0.905117, -0.188320, 0.381181,
		-0.292862, -0.373782, -0.880067,
		6.622728, 13.343950, 14.864128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.520226, 12.961228, 15.608240>,  <6.827732, 13.605598, 15.480175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.520226, 12.961228, 15.608240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.579986, 12.945261, 15.213052>,  <6.615842, 12.935680, 14.975939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.579986, 12.945261, 15.213052>,  <6.520226, 12.961228, 15.608240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.579986, 12.945261, 15.213052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380585, -0.919882, 0.094720,
		-0.912598, -0.390158, -0.122239,
		0.149401, -0.039919, -0.987971,
		6.624806, 12.933285, 14.916660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.387225, 12.292693, 15.501795>,  <6.520226, 12.961228, 15.608240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.387225, 12.292693, 15.501795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.578218, 12.378454, 15.160962>,  <6.692813, 12.429911, 14.956463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.578218, 12.378454, 15.160962>,  <6.387225, 12.292693, 15.501795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.578218, 12.378454, 15.160962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346238, -0.937215, -0.041803,
		-0.807546, -0.275063, -0.521738,
		0.477482, 0.214404, -0.852081,
		6.721463, 12.442776, 14.905337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.188227, 11.766236, 14.940826>,  <6.387225, 12.292693, 15.501795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.188227, 11.766236, 14.940826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.549000, 11.900497, 14.832123>,  <6.765464, 11.981054, 14.766901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.549000, 11.900497, 14.832123>,  <6.188227, 11.766236, 14.940826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.549000, 11.900497, 14.832123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344763, -0.938570, -0.015013,
		-0.260104, -0.080151, -0.962248,
		0.901933, 0.335653, -0.271759,
		6.819581, 12.001193, 14.750595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.515085, 11.359537, 14.357313>,  <6.188227, 11.766236, 14.940826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.515085, 11.359537, 14.357313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.828087, 11.567660, 14.494113>,  <7.015889, 11.692534, 14.576193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.828087, 11.567660, 14.494113>,  <6.515085, 11.359537, 14.357313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.828087, 11.567660, 14.494113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.605619, -0.763579, -0.223991,
		0.144600, 0.382396, -0.912614,
		0.782506, 0.520307, 0.342000,
		7.062839, 11.723753, 14.596713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.005969, 11.173387, 13.930489>,  <6.515085, 11.359537, 14.357313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.005969, 11.173387, 13.930489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.218235, 11.327152, 14.232645>,  <7.345596, 11.419412, 14.413939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.218235, 11.327152, 14.232645>,  <7.005969, 11.173387, 13.930489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.218235, 11.327152, 14.232645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.657417, -0.749207, -0.080573,
		0.534971, 0.539366, -0.650300,
		0.530668, 0.384414, 0.755392,
		7.377436, 11.442476, 14.459263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.517128, 10.619270, 13.942451>,  <7.005969, 11.173387, 13.930489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.517128, 10.619270, 13.942451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.605477, 10.873879, 14.238032>,  <7.658486, 11.026645, 14.415381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.605477, 10.873879, 14.238032>,  <7.517128, 10.619270, 13.942451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.605477, 10.873879, 14.238032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.748944, -0.596025, 0.289547,
		0.624739, 0.489483, -0.608365,
		0.220873, 0.636522, 0.738955,
		7.671739, 11.064837, 14.459719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.270829, 10.716980, 13.988792>,  <7.517128, 10.619270, 13.942451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.270829, 10.716980, 13.988792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.091831, 10.759780, 14.343938>,  <7.984433, 10.785460, 14.557025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.091831, 10.759780, 14.343938>,  <8.270829, 10.716980, 13.988792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.091831, 10.759780, 14.343938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.756529, -0.484125, 0.439644,
		0.476878, 0.868432, 0.135695,
		-0.447494, 0.106999, 0.887863,
		7.957583, 10.791880, 14.610296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.811711, 10.854115, 14.439981>,  <8.270829, 10.716980, 13.988792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.811711, 10.854115, 14.439981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.505747, 10.748792, 14.675125>,  <8.322168, 10.685597, 14.816212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.505747, 10.748792, 14.675125>,  <8.811711, 10.854115, 14.439981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.505747, 10.748792, 14.675125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576085, -0.687924, 0.441460,
		0.288161, 0.676335, 0.677890,
		-0.764911, -0.263310, 0.587859,
		8.276274, 10.669799, 14.851482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.173743, 10.834949, 15.069599>,  <8.811711, 10.854115, 14.439981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.173743, 10.834949, 15.069599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.841375, 10.614005, 15.096354>,  <8.641954, 10.481439, 15.112406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.841375, 10.614005, 15.096354>,  <9.173743, 10.834949, 15.069599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.841375, 10.614005, 15.096354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532397, -0.754395, 0.383981,
		-0.161638, 0.354667, 0.920915,
		-0.830919, -0.552358, 0.066885,
		8.592099, 10.448298, 15.116419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.109318, 10.587189, 15.770302>,  <9.173743, 10.834949, 15.069599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.109318, 10.587189, 15.770302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.903557, 10.334109, 15.538756>,  <8.780100, 10.182261, 15.399829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.903557, 10.334109, 15.538756>,  <9.109318, 10.587189, 15.770302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.903557, 10.334109, 15.538756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541248, -0.763123, 0.353119,
		-0.665162, -0.131663, 0.734999,
		-0.514402, -0.632699, -0.578863,
		8.749236, 10.144300, 15.365097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.834159, 10.074801, 16.257002>,  <9.109318, 10.587189, 15.770302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.834159, 10.074801, 16.257002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.802052, 9.890339, 15.903530>,  <8.782789, 9.779661, 15.691446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.802052, 9.890339, 15.903530>,  <8.834159, 10.074801, 16.257002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.802052, 9.890339, 15.903530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235789, -0.870165, 0.432685,
		-0.968484, -0.173633, 0.178580,
		-0.080266, -0.461156, -0.883681,
		8.777973, 9.751992, 15.638426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.444265, 9.488508, 16.347874>,  <8.834159, 10.074801, 16.257002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.444265, 9.488508, 16.347874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.606148, 9.387821, 15.996226>,  <8.703278, 9.327409, 15.785237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.606148, 9.387821, 15.996226>,  <8.444265, 9.488508, 16.347874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.606148, 9.387821, 15.996226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088052, -0.946174, 0.311451,
		-0.910197, -0.203455, -0.360760,
		0.404708, -0.251716, -0.879120,
		8.727560, 9.312306, 15.732491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.109317, 8.883203, 16.141228>,  <8.444265, 9.488508, 16.347874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.109317, 8.883203, 16.141228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.432579, 8.874914, 15.905786>,  <8.626536, 8.869941, 15.764520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.432579, 8.874914, 15.905786>,  <8.109317, 8.883203, 16.141228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.432579, 8.874914, 15.905786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144297, -0.961957, 0.231983,
		-0.571021, -0.272412, -0.774420,
		0.808155, -0.020721, -0.588606,
		8.675025, 8.868698, 15.729204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.177056, 8.302230, 15.692252>,  <8.109317, 8.883203, 16.141228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.177056, 8.302230, 15.692252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.559477, 8.416738, 15.666899>,  <8.788929, 8.485442, 15.651687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.559477, 8.416738, 15.666899>,  <8.177056, 8.302230, 15.692252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.559477, 8.416738, 15.666899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292526, -0.945955, 0.139993,
		-0.019882, -0.152382, -0.988122,
		0.956051, 0.286268, -0.063383,
		8.846292, 8.502618, 15.647883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.501320, 7.916234, 15.166217>,  <8.177056, 8.302230, 15.692252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.501320, 7.916234, 15.166217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.771439, 8.030139, 15.438359>,  <8.933510, 8.098482, 15.601645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.771439, 8.030139, 15.438359>,  <8.501320, 7.916234, 15.166217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.771439, 8.030139, 15.438359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107377, -0.950589, 0.291291,
		0.729688, -0.123653, -0.672507,
		0.675297, 0.284764, 0.680356,
		8.974028, 8.115568, 15.642466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.084057, 7.352097, 15.157500>,  <8.501320, 7.916234, 15.166217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.084057, 7.352097, 15.157500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.114506, 7.549834, 15.503871>,  <9.132775, 7.668476, 15.711694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.114506, 7.549834, 15.503871>,  <9.084057, 7.352097, 15.157500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.114506, 7.549834, 15.503871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180900, -0.860882, 0.475560,
		0.980551, 0.120446, -0.154958,
		0.076121, 0.494343, 0.865928,
		9.137342, 7.698137, 15.763649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.753177, 7.167189, 15.337646>,  <9.084057, 7.352097, 15.157500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.753177, 7.167189, 15.337646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.491739, 7.276982, 15.619773>,  <9.334877, 7.342859, 15.789049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.491739, 7.276982, 15.619773>,  <9.753177, 7.167189, 15.337646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.491739, 7.276982, 15.619773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130295, -0.877197, 0.462114,
		0.745545, 0.393934, 0.537567,
		-0.653594, 0.274484, 0.705318,
		9.295661, 7.359328, 15.831368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.988518, 6.954545, 16.024693>,  <9.753177, 7.167189, 15.337646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.988518, 6.954545, 16.024693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.590261, 6.960729, 16.061481>,  <9.351308, 6.964439, 16.083555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.590261, 6.960729, 16.061481>,  <9.988518, 6.954545, 16.024693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.590261, 6.960729, 16.061481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046878, -0.769576, 0.636833,
		0.080626, 0.638369, 0.765496,
		-0.995641, 0.015460, 0.091973,
		9.291569, 6.965366, 16.089073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.809072, 6.929604, 16.789162>,  <9.988518, 6.954545, 16.024693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.809072, 6.929604, 16.789162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.508885, 6.768394, 16.579641>,  <9.328773, 6.671667, 16.453930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.508885, 6.768394, 16.579641>,  <9.809072, 6.929604, 16.789162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.508885, 6.768394, 16.579641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038247, -0.817704, 0.574366,
		-0.659800, 0.411009, 0.629075,
		-0.750468, -0.403027, -0.523801,
		9.283745, 6.647485, 16.422501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.257231, 6.749897, 17.304619>,  <9.809072, 6.929604, 16.789162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.257231, 6.749897, 17.304619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.209796, 6.478729, 17.014416>,  <9.181335, 6.316028, 16.840294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.209796, 6.478729, 17.014416>,  <9.257231, 6.749897, 17.304619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.209796, 6.478729, 17.014416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022284, -0.728660, 0.684513,
		-0.992694, 0.097342, 0.071302,
		-0.118587, -0.677922, -0.725506,
		9.174220, 6.275352, 16.796764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.786431, 6.311635, 17.478592>,  <9.257231, 6.749897, 17.304619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.786431, 6.311635, 17.478592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.025905, 6.098125, 17.239708>,  <9.169589, 5.970019, 17.096376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.025905, 6.098125, 17.239708>,  <8.786431, 6.311635, 17.478592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.025905, 6.098125, 17.239708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058020, -0.772538, 0.632312,
		-0.798884, -0.343902, -0.493473,
		0.598680, -0.533776, -0.597215,
		9.205510, 5.937993, 17.060545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.585318, 5.931504, 18.119350>,  <8.786431, 6.311635, 17.478592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.585318, 5.931504, 18.119350> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.664166, 5.585006, 18.302986>,  <8.711475, 5.377107, 18.413168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.664166, 5.585006, 18.302986>,  <8.585318, 5.931504, 18.119350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.664166, 5.585006, 18.302986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.973988, -0.119658, 0.192428,
		-0.111753, -0.485094, -0.867292,
		0.197124, -0.866237, 0.459103,
		8.723303, 5.325132, 18.440712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.224831, 5.316577, 17.850267>,  <8.585318, 5.931504, 18.119350>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.224831, 5.316577, 17.850267> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.243518, 5.258440, 18.245579>,  <8.254730, 5.223557, 18.482765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.243518, 5.258440, 18.245579>,  <8.224831, 5.316577, 17.850267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.243518, 5.258440, 18.245579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.998844, 0.004449, 0.047871,
		-0.011355, -0.989370, -0.144976,
		0.046718, -0.145352, 0.988276,
		8.257533, 5.214837, 18.542063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.535381, 5.361428, 18.283081>,  <8.224831, 5.316577, 17.850267>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.535381, 5.361428, 18.283081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.685735, 5.431536, 18.647057>,  <7.775948, 5.473601, 18.865442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.685735, 5.431536, 18.647057>,  <7.535381, 5.361428, 18.283081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.685735, 5.431536, 18.647057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405960, 0.913853, -0.008325,
		-0.833010, -0.366270, 0.414657,
		0.375886, 0.175269, 0.909940,
		7.798501, 5.484117, 18.920038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.977550, 5.557539, 18.785187>,  <7.535381, 5.361428, 18.283081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.977550, 5.557539, 18.785187> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.339943, 5.705852, 18.866884>,  <7.557379, 5.794839, 18.915903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.339943, 5.705852, 18.866884>,  <6.977550, 5.557539, 18.785187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.339943, 5.705852, 18.866884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371573, 0.927708, -0.035927,
		-0.202800, -0.043343, 0.978261,
		0.905983, 0.370781, 0.204244,
		7.611738, 5.817086, 18.928158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.913091, 6.062856, 19.394464>,  <6.977550, 5.557539, 18.785187>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.913091, 6.062856, 19.394464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.195503, 6.113618, 19.115776>,  <7.364950, 6.144075, 18.948563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.195503, 6.113618, 19.115776>,  <6.913091, 6.062856, 19.394464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.195503, 6.113618, 19.115776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287592, 0.950416, -0.118319,
		0.647157, 0.283907, 0.707519,
		0.706030, 0.126906, -0.696719,
		7.407311, 6.151690, 18.906761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.401881, 6.668561, 19.514446>,  <6.913091, 6.062856, 19.394464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.401881, 6.668561, 19.514446> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.361179, 6.615117, 19.120129>,  <7.336757, 6.583050, 18.883537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.361179, 6.615117, 19.120129>,  <7.401881, 6.668561, 19.514446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.361179, 6.615117, 19.120129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376557, 0.922380, -0.086147,
		0.920788, 0.362442, -0.144173,
		-0.101758, -0.133612, -0.985795,
		7.330652, 6.575033, 18.824390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.763615, 7.223655, 19.235691>,  <7.401881, 6.668561, 19.514446>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.763615, 7.223655, 19.235691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.454884, 7.092002, 19.018084>,  <7.269646, 7.013011, 18.887520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.454884, 7.092002, 19.018084>,  <7.763615, 7.223655, 19.235691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.454884, 7.092002, 19.018084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308597, 0.941979, -0.132075,
		0.555923, 0.065943, -0.828614,
		-0.771828, -0.329132, -0.544017,
		7.223336, 6.993263, 18.854877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.730578, 7.733105, 18.731138>,  <7.763615, 7.223655, 19.235691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.730578, 7.733105, 18.731138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.370072, 7.559803, 18.732325>,  <7.153768, 7.455821, 18.733036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.370072, 7.559803, 18.732325>,  <7.730578, 7.733105, 18.731138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.370072, 7.559803, 18.732325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405487, 0.841048, -0.358076,
		0.152642, -0.323925, -0.933688,
		-0.901266, -0.433255, 0.002968,
		7.099692, 7.429826, 18.733215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.338456, 8.012798, 18.109297>,  <7.730578, 7.733105, 18.731138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.338456, 8.012798, 18.109297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.069402, 7.919709, 18.390268>,  <6.907969, 7.863856, 18.558851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.069402, 7.919709, 18.390268>,  <7.338456, 8.012798, 18.109297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.069402, 7.919709, 18.390268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.600265, 0.726703, -0.334041,
		-0.432718, -0.646330, -0.628501,
		-0.672634, -0.232722, 0.702427,
		6.867611, 7.849893, 18.600996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.730814, 8.042307, 17.781607>,  <7.338456, 8.012798, 18.109297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.730814, 8.042307, 17.781607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.661380, 8.076541, 18.174044>,  <6.619720, 8.097081, 18.409506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.661380, 8.076541, 18.174044>,  <6.730814, 8.042307, 17.781607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.661380, 8.076541, 18.174044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390306, 0.908659, -0.148322,
		-0.904174, -0.408673, -0.124323,
		-0.173582, 0.085585, 0.981093,
		6.609305, 8.102217, 18.468372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.121617, 8.255038, 17.782167>,  <6.730814, 8.042307, 17.781607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.121617, 8.255038, 17.782167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.260256, 8.355592, 18.143648>,  <6.343439, 8.415924, 18.360537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.260256, 8.355592, 18.143648>,  <6.121617, 8.255038, 17.782167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.260256, 8.355592, 18.143648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472140, 0.879233, -0.063498,
		-0.810528, -0.404666, 0.423427,
		0.346596, 0.251384, 0.903702,
		6.364234, 8.431007, 18.414759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.526790, 8.436997, 18.148270>,  <6.121617, 8.255038, 17.782167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.526790, 8.436997, 18.148270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.849161, 8.604759, 18.315401>,  <6.042584, 8.705417, 18.415680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.849161, 8.604759, 18.315401>,  <5.526790, 8.436997, 18.148270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.849161, 8.604759, 18.315401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419660, 0.902539, -0.096481,
		-0.417571, -0.097589, 0.903389,
		0.805928, 0.419404, 0.417828,
		6.090940, 8.730580, 18.440750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.149961, 8.933553, 18.573219>,  <5.526790, 8.436997, 18.148270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.149961, 8.933553, 18.573219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.534222, 9.044096, 18.562094>,  <5.764778, 9.110422, 18.555418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.534222, 9.044096, 18.562094>,  <5.149961, 8.933553, 18.573219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.534222, 9.044096, 18.562094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265047, 0.942039, 0.205701,
		0.083051, -0.190235, 0.978219,
		0.960652, 0.276357, -0.027816,
		5.822417, 9.127004, 18.553749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.223300, 9.392993, 19.197117>,  <5.149961, 8.933553, 18.573219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.223300, 9.392993, 19.197117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.492702, 9.468865, 18.911345>,  <5.654344, 9.514389, 18.739882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.492702, 9.468865, 18.911345>,  <5.223300, 9.392993, 19.197117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.492702, 9.468865, 18.911345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283689, 0.958830, -0.012869,
		0.682577, 0.211343, 0.699588,
		0.673506, 0.189681, -0.714431,
		5.694754, 9.525770, 18.697016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.533723, 10.022058, 19.365595>,  <5.223300, 9.392993, 19.197117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.533723, 10.022058, 19.365595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.654778, 9.979182, 18.986771>,  <5.727412, 9.953457, 18.759476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.654778, 9.979182, 18.986771>,  <5.533723, 10.022058, 19.365595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.654778, 9.979182, 18.986771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217265, 0.959736, -0.178053,
		0.928012, 0.259649, 0.267165,
		0.302639, -0.107190, -0.947059,
		5.745570, 9.947025, 18.702654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.908066, 10.568811, 19.164358>,  <5.533723, 10.022058, 19.365595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.908066, 10.568811, 19.164358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.837965, 10.449185, 18.789158>,  <5.795904, 10.377410, 18.564037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.837965, 10.449185, 18.789158>,  <5.908066, 10.568811, 19.164358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.837965, 10.449185, 18.789158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249631, 0.935110, -0.251502,
		0.952350, 0.190078, -0.238538,
		-0.175255, -0.299064, -0.938001,
		5.785389, 10.359467, 18.507757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.241321, 11.040854, 18.753750>,  <5.908066, 10.568811, 19.164358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.241321, 11.040854, 18.753750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.961811, 10.844901, 18.545240>,  <5.794104, 10.727329, 18.420135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.961811, 10.844901, 18.545240>,  <6.241321, 11.040854, 18.753750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.961811, 10.844901, 18.545240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393417, 0.871787, -0.291909,
		0.597439, 0.001098, -0.801913,
		-0.698777, -0.489884, -0.521271,
		5.752178, 10.697936, 18.388859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.423080, 11.350560, 18.215286>,  <6.241321, 11.040854, 18.753750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.423080, 11.350560, 18.215286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.055765, 11.194373, 18.189116>,  <5.835375, 11.100661, 18.173412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.055765, 11.194373, 18.189116>,  <6.423080, 11.350560, 18.215286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.055765, 11.194373, 18.189116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317670, 0.825312, -0.466845,
		0.236287, -0.407914, -0.881915,
		-0.918289, -0.390468, -0.065428,
		5.780278, 11.077232, 18.169487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.274346, 11.341558, 17.501560>,  <6.423080, 11.350560, 18.215286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.274346, 11.341558, 17.501560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.933657, 11.357951, 17.710514>,  <5.729243, 11.367787, 17.835886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.933657, 11.357951, 17.710514>,  <6.274346, 11.341558, 17.501560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.933657, 11.357951, 17.710514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271948, 0.817586, -0.507541,
		-0.447897, -0.574346, -0.685212,
		-0.851723, 0.040984, 0.522386,
		5.678140, 11.370246, 17.867229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.767425, 11.554675, 17.030901>,  <6.274346, 11.341558, 17.501560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.767425, 11.554675, 17.030901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.620198, 11.649946, 17.390411>,  <5.531861, 11.707108, 17.606117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.620198, 11.649946, 17.390411>,  <5.767425, 11.554675, 17.030901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.620198, 11.649946, 17.390411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308363, 0.880658, -0.359658,
		-0.877176, -0.409528, -0.250697,
		-0.368068, 0.238178, 0.898775,
		5.509777, 11.721399, 17.660044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.302086, 11.851315, 16.800488>,  <5.767425, 11.554675, 17.030901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.302086, 11.851315, 16.800488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.322356, 11.957708, 17.185545>,  <5.334518, 12.021544, 17.416580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.322356, 11.957708, 17.185545>,  <5.302086, 11.851315, 16.800488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.322356, 11.957708, 17.185545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328562, 0.914669, -0.235429,
		-0.943122, -0.304358, 0.133743,
		0.050676, 0.265982, 0.962645,
		5.337559, 12.037503, 17.474339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.743978, 12.233335, 16.863857>,  <5.302086, 11.851315, 16.800488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.743978, 12.233335, 16.863857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.966228, 12.326716, 17.183052>,  <5.099577, 12.382745, 17.374569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.966228, 12.326716, 17.183052>,  <4.743978, 12.233335, 16.863857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.966228, 12.326716, 17.183052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051880, 0.967636, -0.246960,
		-0.829813, 0.095818, 0.549754,
		0.555625, 0.233451, 0.797986,
		5.132915, 12.396751, 17.422447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.419896, 12.791395, 17.120205>,  <4.743978, 12.233335, 16.863857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.419896, 12.791395, 17.120205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.797020, 12.795412, 17.253477>,  <5.023294, 12.797822, 17.333441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.797020, 12.795412, 17.253477>,  <4.419896, 12.791395, 17.120205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.797020, 12.795412, 17.253477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083237, 0.960787, -0.264500,
		-0.322772, 0.277106, 0.905003,
		0.942809, 0.010043, 0.333181,
		5.079863, 12.798425, 17.353432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.520990, 13.499633, 17.319227>,  <4.419896, 12.791395, 17.120205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.520990, 13.499633, 17.319227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.895491, 13.359865, 17.304600>,  <5.120192, 13.276005, 17.295824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.895491, 13.359865, 17.304600>,  <4.520990, 13.499633, 17.319227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.895491, 13.359865, 17.304600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315679, 0.882370, -0.348956,
		0.154197, 0.315168, 0.936425,
		0.936253, -0.349418, -0.036567,
		5.176367, 13.255040, 17.293631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.071378, 13.912926, 17.707188>,  <4.520990, 13.499633, 17.319227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.071378, 13.912926, 17.707188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.289766, 13.720475, 17.432835>,  <5.420798, 13.605005, 17.268223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.289766, 13.720475, 17.432835>,  <5.071378, 13.912926, 17.707188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.289766, 13.720475, 17.432835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413787, 0.866701, -0.278585,
		0.728490, -0.131711, 0.672275,
		0.545969, -0.481126, -0.685883,
		5.453557, 13.576138, 17.227070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.694449, 14.286876, 17.640989>,  <5.071378, 13.912926, 17.707188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.694449, 14.286876, 17.640989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.669683, 14.090174, 17.293577>,  <5.654824, 13.972153, 17.085131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.669683, 14.090174, 17.293577>,  <5.694449, 14.286876, 17.640989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.669683, 14.090174, 17.293577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.559231, 0.703680, -0.438286,
		0.826696, -0.512845, 0.231437,
		-0.061915, -0.491756, -0.868529,
		5.651109, 13.942647, 17.033018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.308691, 14.440366, 17.327936>,  <5.694449, 14.286876, 17.640989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.308691, 14.440366, 17.327936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.036599, 14.343779, 17.051102>,  <5.873344, 14.285826, 16.885002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.036599, 14.343779, 17.051102>,  <6.308691, 14.440366, 17.327936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.036599, 14.343779, 17.051102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373119, 0.698636, -0.610483,
		0.630927, -0.673499, -0.385137,
		-0.680230, -0.241468, -0.692084,
		5.832530, 14.271338, 16.843477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.556235, 14.246462, 16.555092>,  <6.308691, 14.440366, 17.327936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.556235, 14.246462, 16.555092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.185598, 14.388399, 16.505266>,  <5.963217, 14.473561, 16.475370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.185598, 14.388399, 16.505266>,  <6.556235, 14.246462, 16.555092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.185598, 14.388399, 16.505266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371650, 0.813366, -0.447563,
		-0.057500, -0.461001, -0.885535,
		-0.926591, 0.354843, -0.124562,
		5.907621, 14.494852, 16.467897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.556350, 14.503675, 15.864951>,  <6.556235, 14.246462, 16.555092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.556350, 14.503675, 15.864951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.255617, 14.687520, 16.054056>,  <6.075177, 14.797827, 16.167519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.255617, 14.687520, 16.054056>,  <6.556350, 14.503675, 15.864951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.255617, 14.687520, 16.054056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208290, 0.845849, -0.491075,
		-0.625590, -0.270734, -0.731669,
		-0.751832, 0.459611, 0.472764,
		6.030067, 14.825403, 16.195885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.958288, 15.023221, 15.771409>,  <6.556350, 14.503675, 15.864951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.958288, 15.023221, 15.771409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.636863, 15.105480, 15.547982>,  <6.444008, 15.154836, 15.413926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.636863, 15.105480, 15.547982>,  <6.958288, 15.023221, 15.771409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.636863, 15.105480, 15.547982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025667, 0.925575, 0.377694,
		0.594667, 0.317838, -0.738478,
		-0.803562, 0.205648, -0.558567,
		6.395794, 15.167174, 15.380412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.501946, 14.429544, 15.853518>,  <6.958288, 15.023221, 15.771409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.501946, 14.429544, 15.853518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.683873, 14.344769, 15.507518>,  <7.793029, 14.293904, 15.299918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.683873, 14.344769, 15.507518>,  <7.501946, 14.429544, 15.853518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.683873, 14.344769, 15.507518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.771562, 0.578852, 0.263861,
		0.444784, -0.787409, 0.426795,
		0.454817, -0.211938, -0.864999,
		7.820318, 14.281188, 15.248018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.051536, 14.206605, 16.089577>,  <7.501946, 14.429544, 15.853518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.051536, 14.206605, 16.089577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.068048, 14.395021, 15.737120>,  <8.077956, 14.508071, 15.525645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.068048, 14.395021, 15.737120>,  <8.051536, 14.206605, 16.089577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.068048, 14.395021, 15.737120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.654338, 0.653720, 0.380121,
		0.755075, -0.592259, -0.281232,
		0.041283, 0.471041, -0.881145,
		8.080433, 14.536334, 15.472776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.719019, 14.215071, 15.785974>,  <8.051536, 14.206605, 16.089577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.719019, 14.215071, 15.785974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.496228, 14.540254, 15.717999>,  <8.362554, 14.735363, 15.677214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.496228, 14.540254, 15.717999>,  <8.719019, 14.215071, 15.785974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.496228, 14.540254, 15.717999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.607192, 0.538189, 0.584527,
		0.566654, 0.222382, -0.793379,
		-0.556976, 0.812957, -0.169938,
		8.329136, 14.784141, 15.667017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.029836, 14.817911, 15.338682>,  <8.719019, 14.215071, 15.785974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.029836, 14.817911, 15.338682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.775476, 14.968088, 15.608401>,  <8.622861, 15.058194, 15.770233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.775476, 14.968088, 15.608401>,  <9.029836, 14.817911, 15.338682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.775476, 14.968088, 15.608401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.742802, 0.534869, 0.402691,
		-0.209475, 0.756940, -0.619001,
		-0.635897, 0.375442, 0.674298,
		8.584707, 15.080721, 15.810691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.090089, 15.604597, 15.370799>,  <9.029836, 14.817911, 15.338682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.090089, 15.604597, 15.370799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.961428, 15.476895, 15.727365>,  <8.884232, 15.400274, 15.941303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.961428, 15.476895, 15.727365>,  <9.090089, 15.604597, 15.370799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.961428, 15.476895, 15.727365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.628665, 0.631984, 0.453185,
		-0.708040, 0.706168, -0.002575,
		-0.321652, -0.319255, 0.891413,
		8.864932, 15.381119, 15.994788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.827523, 16.143496, 15.763549>,  <9.090089, 15.604597, 15.370799>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.827523, 16.143496, 15.763549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.983175, 15.878522, 16.019598>,  <9.076567, 15.719538, 16.173227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.983175, 15.878522, 16.019598>,  <8.827523, 16.143496, 15.763549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.983175, 15.878522, 16.019598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410883, 0.746753, 0.523006,
		-0.824472, 0.059499, 0.562766,
		0.389129, -0.662435, 0.640124,
		9.099914, 15.679791, 16.211636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.599158, 16.410707, 16.471720>,  <8.827523, 16.143496, 15.763549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.599158, 16.410707, 16.471720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.917241, 16.177963, 16.539936>,  <9.108091, 16.038317, 16.580866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.917241, 16.177963, 16.539936>,  <8.599158, 16.410707, 16.471720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.917241, 16.177963, 16.539936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329374, 0.650680, 0.684199,
		-0.509076, -0.487908, 0.709076,
		0.795208, -0.581860, 0.170541,
		9.155804, 16.003405, 16.591099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.644339, 16.327063, 17.100817>,  <8.599158, 16.410707, 16.471720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.644339, 16.327063, 17.100817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.018920, 16.263744, 16.975599>,  <9.243669, 16.225754, 16.900469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.018920, 16.263744, 16.975599>,  <8.644339, 16.327063, 17.100817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.018920, 16.263744, 16.975599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310512, 0.789244, 0.529789,
		0.163205, -0.593327, 0.788243,
		0.936454, -0.158295, -0.313043,
		9.299856, 16.216255, 16.881687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.976192, 16.234013, 17.709921>,  <8.644339, 16.327063, 17.100817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.976192, 16.234013, 17.709921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.244495, 16.349955, 17.436844>,  <9.405477, 16.419519, 17.272997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.244495, 16.349955, 17.436844>,  <8.976192, 16.234013, 17.709921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.244495, 16.349955, 17.436844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386290, 0.649238, 0.655187,
		0.633134, -0.703191, 0.323518,
		0.670762, 0.289850, -0.682690,
		9.445723, 16.436911, 17.232037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.635484, 16.249182, 18.080578>,  <8.976192, 16.234013, 17.709921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.635484, 16.249182, 18.080578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.679850, 16.449383, 17.737137>,  <9.706470, 16.569504, 17.531073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.679850, 16.449383, 17.737137>,  <9.635484, 16.249182, 18.080578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.679850, 16.449383, 17.737137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.575559, 0.671958, 0.466053,
		0.810204, -0.545868, -0.213538,
		0.110914, 0.500502, -0.858601,
		9.713124, 16.599533, 17.479557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.283180, 16.399536, 18.208586>,  <9.635484, 16.249182, 18.080578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.283180, 16.399536, 18.208586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.139863, 16.646358, 17.928339>,  <10.053872, 16.794453, 17.760191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.139863, 16.646358, 17.928339>,  <10.283180, 16.399536, 18.208586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.139863, 16.646358, 17.928339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525200, 0.753655, 0.395183,
		0.771875, -0.226373, -0.594108,
		-0.358294, 0.617057, -0.700618,
		10.032375, 16.831476, 17.718153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.858309, 16.753174, 17.935806>,  <10.283180, 16.399536, 18.208586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.858309, 16.753174, 17.935806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.562474, 16.999451, 17.827044>,  <10.384974, 17.147217, 17.761786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.562474, 16.999451, 17.827044>,  <10.858309, 16.753174, 17.935806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.562474, 16.999451, 17.827044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519041, 0.778922, 0.351962,
		0.428496, 0.119175, -0.895650,
		-0.739586, 0.615693, -0.271908,
		10.340598, 17.184158, 17.745472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.186531, 17.255434, 17.642181>,  <10.858309, 16.753174, 17.935806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.186531, 17.255434, 17.642181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.825514, 17.399221, 17.737005>,  <10.608904, 17.485495, 17.793900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.825514, 17.399221, 17.737005>,  <11.186531, 17.255434, 17.642181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.825514, 17.399221, 17.737005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430210, 0.776228, 0.460858,
		-0.018350, 0.517930, -0.855226,
		-0.902542, 0.359470, 0.237062,
		10.554751, 17.507063, 17.808125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.146638, 18.037394, 17.486265>,  <11.186531, 17.255434, 17.642181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.146638, 18.037394, 17.486265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.844632, 17.980087, 17.742210>,  <10.663428, 17.945704, 17.895779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.844632, 17.980087, 17.742210>,  <11.146638, 18.037394, 17.486265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.844632, 17.980087, 17.742210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320563, 0.770628, 0.550793,
		-0.572007, 0.620974, -0.535910,
		-0.755015, -0.143264, 0.639865,
		10.618128, 17.937107, 17.934170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.022276, 18.688103, 17.655296>,  <11.146638, 18.037394, 17.486265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.022276, 18.688103, 17.655296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.820566, 18.498760, 17.944195>,  <10.699540, 18.385155, 18.117535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.820566, 18.498760, 17.944195>,  <11.022276, 18.688103, 17.655296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.820566, 18.498760, 17.944195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256882, 0.716285, 0.648805,
		-0.824451, 0.512708, -0.239608,
		-0.504275, -0.473357, 0.722247,
		10.669284, 18.356752, 18.160870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.452503, 19.151155, 17.923126>,  <11.022276, 18.688103, 17.655296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.452503, 19.151155, 17.923126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.541935, 18.882814, 18.205961>,  <10.595594, 18.721809, 18.375662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.541935, 18.882814, 18.205961>,  <10.452503, 19.151155, 17.923126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.541935, 18.882814, 18.205961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048214, 0.732174, 0.679409,
		-0.973493, -0.117810, 0.196044,
		0.223580, -0.670852, 0.707086,
		10.609009, 18.681559, 18.418087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.186494, 19.406887, 18.563519>,  <10.452503, 19.151155, 17.923126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.186494, 19.406887, 18.563519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.393096, 19.110706, 18.735542>,  <10.517057, 18.932999, 18.838757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.393096, 19.110706, 18.735542>,  <10.186494, 19.406887, 18.563519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.393096, 19.110706, 18.735542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152293, 0.573670, 0.804804,
		-0.842633, -0.350190, 0.409069,
		0.516505, -0.740453, 0.430062,
		10.548047, 18.888571, 18.864561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.878020, 19.249760, 19.199503>,  <10.186494, 19.406887, 18.563519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.878020, 19.249760, 19.199503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.262549, 19.140009, 19.209105>,  <10.493267, 19.074158, 19.214867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.262549, 19.140009, 19.209105>,  <9.878020, 19.249760, 19.199503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.262549, 19.140009, 19.209105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081386, 0.366246, 0.926952,
		-0.263128, -0.889146, 0.374411,
		0.961322, -0.274379, 0.024006,
		10.550946, 19.057695, 19.216307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.945664, 18.826048, 19.856539>,  <9.878020, 19.249760, 19.199503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.945664, 18.826048, 19.856539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.297838, 18.967417, 19.730095>,  <10.509143, 19.052238, 19.654228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.297838, 18.967417, 19.730095>,  <9.945664, 18.826048, 19.856539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.297838, 18.967417, 19.730095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195223, 0.337352, 0.920913,
		0.432116, -0.872515, 0.228019,
		0.880434, 0.353427, -0.316110,
		10.561969, 19.073444, 19.635262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.536649, 18.441534, 20.202858>,  <9.945664, 18.826048, 19.856539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.536649, 18.441534, 20.202858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.697443, 18.794624, 20.105532>,  <10.793920, 19.006479, 20.047136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.697443, 18.794624, 20.105532>,  <10.536649, 18.441534, 20.202858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.697443, 18.794624, 20.105532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322122, 0.112413, 0.940001,
		0.857114, -0.456245, -0.239156,
		0.401986, 0.882725, -0.243318,
		10.818039, 19.059443, 20.032536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.052333, 18.500969, 20.696548>,  <10.536649, 18.441534, 20.202858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.052333, 18.500969, 20.696548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.058114, 18.872875, 20.549404>,  <11.061583, 19.096020, 20.461117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.058114, 18.872875, 20.549404>,  <11.052333, 18.500969, 20.696548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.058114, 18.872875, 20.549404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249453, 0.352915, 0.901790,
		0.968279, -0.104797, -0.226833,
		0.014452, 0.929768, -0.367862,
		11.062449, 19.151806, 20.439045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.697680, 18.920982, 20.966923>,  <11.052333, 18.500969, 20.696548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.697680, 18.920982, 20.966923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.408382, 19.175400, 20.859320>,  <11.234803, 19.328051, 20.794758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.408382, 19.175400, 20.859320>,  <11.697680, 18.920982, 20.966923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.408382, 19.175400, 20.859320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172677, 0.543716, 0.821313,
		0.668654, 0.547560, -0.503070,
		-0.723246, 0.636043, -0.269006,
		11.191409, 19.366213, 20.778618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.986912, 19.577738, 21.071842>,  <11.697680, 18.920982, 20.966923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.986912, 19.577738, 21.071842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.593813, 19.647390, 21.046907>,  <11.357953, 19.689182, 21.031946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.593813, 19.647390, 21.046907>,  <11.986912, 19.577738, 21.071842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.593813, 19.647390, 21.046907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083534, 0.718603, 0.690386,
		0.165012, 0.673267, -0.720751,
		-0.982748, 0.174130, -0.062337,
		11.298988, 19.699629, 21.028206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.974717, 20.336952, 21.080894>,  <11.986912, 19.577738, 21.071842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.974717, 20.336952, 21.080894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.606843, 20.218124, 21.183599>,  <11.386119, 20.146828, 21.245222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.606843, 20.218124, 21.183599>,  <11.974717, 20.336952, 21.080894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.606843, 20.218124, 21.183599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026465, 0.699326, 0.714313,
		-0.391764, 0.650147, -0.651022,
		-0.919685, -0.297072, 0.256765,
		11.330937, 20.129004, 21.260630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.595459, 20.943670, 21.178400>,  <11.974717, 20.336952, 21.080894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.595459, 20.943670, 21.178400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.370717, 20.680998, 21.379631>,  <11.235872, 20.523394, 21.500370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.370717, 20.680998, 21.379631>,  <11.595459, 20.943670, 21.178400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.370717, 20.680998, 21.379631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029219, 0.623519, 0.781262,
		-0.826720, 0.424256, -0.369514,
		-0.561854, -0.656682, 0.503079,
		11.202161, 20.483994, 21.530554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.213418, 21.391211, 21.589470>,  <11.595459, 20.943670, 21.178400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.213418, 21.391211, 21.589470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.180772, 21.038424, 21.775146>,  <11.161184, 20.826752, 21.886553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.180772, 21.038424, 21.775146>,  <11.213418, 21.391211, 21.589470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.180772, 21.038424, 21.775146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037167, 0.462726, 0.885722,
		-0.995971, 0.089540, -0.004985,
		-0.081615, -0.881968, 0.464189,
		11.156287, 20.773832, 21.914404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.632331, 21.368206, 22.102324>,  <11.213418, 21.391211, 21.589470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.632331, 21.368206, 22.102324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.906391, 21.100355, 22.216986>,  <11.070827, 20.939646, 22.285782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.906391, 21.100355, 22.216986>,  <10.632331, 21.368206, 22.102324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.906391, 21.100355, 22.216986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092710, 0.310169, 0.946150,
		-0.722478, -0.674830, 0.150432,
		0.685150, -0.669626, 0.286654,
		11.111937, 20.899467, 22.302982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.320765, 21.061615, 22.756401>,  <10.632331, 21.368206, 22.102324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.320765, 21.061615, 22.756401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.700151, 20.934887, 22.758890>,  <10.927783, 20.858850, 22.760384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.700151, 20.934887, 22.758890>,  <10.320765, 21.061615, 22.756401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.700151, 20.934887, 22.758890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030932, 0.112113, 0.993214,
		-0.315371, -0.941836, 0.116135,
		0.948464, -0.316823, 0.006225,
		10.984691, 20.839840, 22.760757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.329433, 20.520947, 23.242010>,  <10.320765, 21.061615, 22.756401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.329433, 20.520947, 23.242010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.690170, 20.683289, 23.182728>,  <10.906612, 20.780693, 23.147160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.690170, 20.683289, 23.182728>,  <10.329433, 20.520947, 23.242010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.690170, 20.683289, 23.182728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082546, 0.174851, 0.981129,
		0.424109, -0.897056, 0.124186,
		0.901841, 0.405855, -0.148205,
		10.960723, 20.805044, 23.138266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.723615, 20.386049, 23.810318>,  <10.329433, 20.520947, 23.242010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.723615, 20.386049, 23.810318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.951050, 20.677568, 23.657707>,  <11.087511, 20.852480, 23.566141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.951050, 20.677568, 23.657707>,  <10.723615, 20.386049, 23.810318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.951050, 20.677568, 23.657707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058272, 0.426946, 0.902398,
		0.820557, -0.535324, 0.200287,
		0.568587, 0.728797, -0.381528,
		11.121626, 20.896208, 23.543249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.319822, 20.529436, 24.346834>,  <10.723615, 20.386049, 23.810318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.319822, 20.529436, 24.346834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.302971, 20.858538, 24.120100>,  <11.292860, 21.055998, 23.984060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.302971, 20.858538, 24.120100>,  <11.319822, 20.529436, 24.346834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.302971, 20.858538, 24.120100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094460, 0.561516, 0.822057,
		0.994637, 0.088176, 0.054061,
		-0.042129, 0.822754, -0.566834,
		11.290332, 21.105364, 23.950050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.890596, 20.914883, 24.529060>,  <11.319822, 20.529436, 24.346834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.890596, 20.914883, 24.529060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.637865, 21.179321, 24.367199>,  <11.486226, 21.337984, 24.270082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.637865, 21.179321, 24.367199>,  <11.890596, 20.914883, 24.529060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.637865, 21.179321, 24.367199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126593, 0.603064, 0.787583,
		0.764700, 0.446392, -0.464724,
		-0.631829, 0.661096, -0.404653,
		11.448317, 21.377649, 24.245804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.248869, 21.584894, 24.424038>,  <11.890596, 20.914883, 24.529060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.248869, 21.584894, 24.424038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.854892, 21.652918, 24.436474>,  <11.618505, 21.693731, 24.443935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.854892, 21.652918, 24.436474>,  <12.248869, 21.584894, 24.424038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.854892, 21.652918, 24.436474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142657, 0.697941, 0.701803,
		0.097650, 0.695671, -0.711692,
		-0.984943, 0.170058, 0.031088,
		11.559409, 21.703936, 24.445801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.169958, 22.259499, 24.589506>,  <12.248869, 21.584894, 24.424038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.169958, 22.259499, 24.589506> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.784250, 22.172701, 24.650299>,  <11.552826, 22.120623, 24.686775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.784250, 22.172701, 24.650299>,  <12.169958, 22.259499, 24.589506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.784250, 22.172701, 24.650299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035715, 0.674917, 0.737029,
		-0.262507, 0.705266, -0.658552,
		-0.964269, -0.216995, 0.151982,
		11.494969, 22.107603, 24.695894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.883134, 22.871294, 24.798996>,  <12.169958, 22.259499, 24.589506>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.883134, 22.871294, 24.798996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.586469, 22.623962, 24.903000>,  <11.408469, 22.475563, 24.965403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.586469, 22.623962, 24.903000>,  <11.883134, 22.871294, 24.798996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.586469, 22.623962, 24.903000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012187, 0.399984, 0.916441,
		-0.670661, 0.676522, -0.304189,
		-0.741664, -0.618329, 0.260009,
		11.363970, 22.438463, 24.981003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.326477, 23.256020, 25.108625>,  <11.883134, 22.871294, 24.798996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.326477, 23.256020, 25.108625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.296137, 22.889914, 25.266882>,  <11.277933, 22.670250, 25.361835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.296137, 22.889914, 25.266882>,  <11.326477, 23.256020, 25.108625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.296137, 22.889914, 25.266882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086212, 0.401318, 0.911872,
		-0.993385, 0.035057, -0.109347,
		-0.075851, -0.915267, 0.395642,
		11.273382, 22.615334, 25.385574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.835239, 23.329081, 25.711235>,  <11.326477, 23.256020, 25.108625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.835239, 23.329081, 25.711235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.028275, 22.983995, 25.771685>,  <11.144095, 22.776945, 25.807955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.028275, 22.983995, 25.771685>,  <10.835239, 23.329081, 25.711235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.028275, 22.983995, 25.771685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062170, 0.205853, 0.976606,
		-0.873638, -0.461903, 0.152977,
		0.482588, -0.862711, 0.151125,
		11.173051, 22.725182, 25.817022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.645226, 23.081545, 26.384333>,  <10.835239, 23.329081, 25.711235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.645226, 23.081545, 26.384333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.973710, 22.874720, 26.287785>,  <11.170800, 22.750624, 26.229856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.973710, 22.874720, 26.287785>,  <10.645226, 23.081545, 26.384333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.973710, 22.874720, 26.287785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344556, 0.112145, 0.932043,
		-0.454859, -0.848567, 0.270252,
		0.821209, -0.517066, -0.241369,
		11.220073, 22.719601, 26.215374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.801171, 22.477011, 26.985743>,  <10.645226, 23.081545, 26.384333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.801171, 22.477011, 26.985743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.133615, 22.551811, 26.776251>,  <11.333080, 22.596691, 26.650557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.133615, 22.551811, 26.776251>,  <10.801171, 22.477011, 26.985743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.133615, 22.551811, 26.776251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.550216, -0.139738, 0.823247,
		0.080766, -0.972369, -0.219030,
		0.831107, 0.187004, -0.523727,
		11.382947, 22.607912, 26.619133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.358592, 22.053087, 27.234255>,  <10.801171, 22.477011, 26.985743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.358592, 22.053087, 27.234255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.558517, 22.362200, 27.077797>,  <11.678473, 22.547667, 26.983921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.558517, 22.362200, 27.077797>,  <11.358592, 22.053087, 27.234255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.558517, 22.362200, 27.077797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524148, 0.089654, 0.846895,
		0.689532, -0.628309, -0.360241,
		0.499814, 0.772781, -0.391146,
		11.708462, 22.594034, 26.960453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.996753, 21.906565, 27.330643>,  <11.358592, 22.053087, 27.234255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.996753, 21.906565, 27.330643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.981352, 22.302906, 27.278910>,  <11.972112, 22.540710, 27.247869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.981352, 22.302906, 27.278910>,  <11.996753, 21.906565, 27.330643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.981352, 22.302906, 27.278910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552161, 0.128971, 0.823702,
		0.832848, -0.039699, -0.552076,
		-0.038502, 0.990853, -0.129334,
		11.969801, 22.600163, 27.240110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.607290, 22.197634, 27.641617>,  <11.996753, 21.906565, 27.330643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.607290, 22.197634, 27.641617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.413798, 22.547209, 27.622707>,  <12.297703, 22.756954, 27.611361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.413798, 22.547209, 27.622707>,  <12.607290, 22.197634, 27.641617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.413798, 22.547209, 27.622707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470184, 0.305050, 0.828174,
		0.738195, 0.378385, -0.558474,
		-0.483730, 0.873939, -0.047276,
		12.268680, 22.809391, 27.608524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.108438, 22.720444, 27.484722>,  <12.607290, 22.197634, 27.641617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.108438, 22.720444, 27.484722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.782594, 22.834213, 27.686914>,  <12.587087, 22.902475, 27.808229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.782594, 22.834213, 27.686914>,  <13.108438, 22.720444, 27.484722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.782594, 22.834213, 27.686914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521216, -0.023336, 0.853105,
		0.254439, 0.958415, -0.129236,
		-0.814613, 0.284423, 0.505479,
		12.538210, 22.919540, 27.838558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.382741, 23.000141, 28.113510>,  <13.108438, 22.720444, 27.484722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.382741, 23.000141, 28.113510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.995182, 22.946838, 28.196917>,  <12.762647, 22.914858, 28.246962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.995182, 22.946838, 28.196917>,  <13.382741, 23.000141, 28.113510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.995182, 22.946838, 28.196917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210577, -0.001398, 0.977576,
		-0.129975, 0.991081, 0.029415,
		-0.968898, -0.133255, 0.208518,
		12.704513, 22.906862, 28.259472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.208566, 23.521015, 28.536638>,  <13.382741, 23.000141, 28.113510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.208566, 23.521015, 28.536638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.926018, 23.244709, 28.598454>,  <12.756489, 23.078924, 28.635542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.926018, 23.244709, 28.598454>,  <13.208566, 23.521015, 28.536638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.926018, 23.244709, 28.598454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124240, 0.093942, 0.987795,
		-0.696854, 0.716949, 0.019463,
		-0.706370, -0.690767, 0.154538,
		12.714107, 23.037479, 28.644815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.655061, 23.857628, 28.765619>,  <13.208566, 23.521015, 28.536638>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.655061, 23.857628, 28.765619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.614253, 23.478176, 28.885412>,  <12.589768, 23.250505, 28.957289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.614253, 23.478176, 28.885412>,  <12.655061, 23.857628, 28.765619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.614253, 23.478176, 28.885412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129011, 0.285895, 0.949537,
		-0.986381, 0.135508, 0.093217,
		-0.102020, -0.948631, 0.299484,
		12.583647, 23.193586, 28.975258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.109415, 24.378004, 28.873541>,  <12.655061, 23.857628, 28.765619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.109415, 24.378004, 28.873541> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.367764, 24.499039, 29.153910>,  <13.522773, 24.571659, 29.322130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.367764, 24.499039, 29.153910>,  <13.109415, 24.378004, 28.873541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.367764, 24.499039, 29.153910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210710, -0.953093, 0.217290,
		0.733792, 0.007350, -0.679334,
		0.645872, 0.302588, 0.700921,
		13.561525, 24.589815, 29.364185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.768931, 24.094580, 28.746397>,  <13.109415, 24.378004, 28.873541>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.768931, 24.094580, 28.746397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.691962, 24.167099, 29.132164>,  <13.645781, 24.210611, 29.363625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.691962, 24.167099, 29.132164>,  <13.768931, 24.094580, 28.746397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.691962, 24.167099, 29.132164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190201, -0.957258, 0.217902,
		0.962703, 0.225363, 0.149715,
		-0.192423, 0.181299, 0.964419,
		13.634235, 24.221489, 29.421490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.345279, 23.919870, 29.295506>,  <13.768931, 24.094580, 28.746397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.345279, 23.919870, 29.295506> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.002442, 23.857193, 29.491808>,  <13.796741, 23.819588, 29.609589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.002442, 23.857193, 29.491808>,  <14.345279, 23.919870, 29.295506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.002442, 23.857193, 29.491808> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290104, -0.934020, 0.208439,
		0.425715, 0.321022, 0.845998,
		-0.857092, -0.156691, 0.490756,
		13.745315, 23.810186, 29.639034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.493416, 23.607643, 29.966076>,  <14.345279, 23.919870, 29.295506>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.493416, 23.607643, 29.966076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.110088, 23.521969, 29.890444>,  <13.880092, 23.470564, 29.845064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.110088, 23.521969, 29.890444>,  <14.493416, 23.607643, 29.966076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.110088, 23.521969, 29.890444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090591, -0.855453, 0.509896,
		-0.270960, 0.471514, 0.839199,
		-0.958318, -0.214185, -0.189079,
		13.822593, 23.457714, 29.833719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.169161, 23.474020, 30.561287>,  <14.493416, 23.607643, 29.966076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.169161, 23.474020, 30.561287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.981303, 23.259302, 30.280920>,  <13.868588, 23.130470, 30.112700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.981303, 23.259302, 30.280920>,  <14.169161, 23.474020, 30.561287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.981303, 23.259302, 30.280920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141486, -0.829421, 0.540410,
		-0.871444, 0.154631, 0.465482,
		-0.469645, -0.536797, -0.700916,
		13.840409, 23.098263, 30.070644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.445467, 23.211178, 30.562620>,  <14.169161, 23.474020, 30.561287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.445467, 23.211178, 30.562620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.735749, 23.000156, 30.385967>,  <13.909919, 22.873543, 30.279976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.735749, 23.000156, 30.385967>,  <13.445467, 23.211178, 30.562620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.735749, 23.000156, 30.385967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180450, -0.765380, 0.617763,
		-0.663920, -0.368621, -0.650638,
		0.725705, -0.527552, -0.441633,
		13.953461, 22.841890, 30.253477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.184799, 22.540466, 30.469038>,  <13.445467, 23.211178, 30.562620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.184799, 22.540466, 30.469038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.582917, 22.514845, 30.498116>,  <13.821788, 22.499472, 30.515562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.582917, 22.514845, 30.498116>,  <13.184799, 22.540466, 30.469038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.582917, 22.514845, 30.498116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085860, -0.930732, 0.355481,
		0.044889, -0.360050, -0.931853,
		0.995295, -0.064052, 0.072694,
		13.881506, 22.495628, 30.519924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.662835, 22.079733, 29.932716>,  <13.184799, 22.540466, 30.469038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.662835, 22.079733, 29.932716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.810494, 22.102030, 30.303795>,  <13.899090, 22.115408, 30.526442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.810494, 22.102030, 30.303795>,  <13.662835, 22.079733, 29.932716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.810494, 22.102030, 30.303795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180644, -0.974858, 0.130458,
		0.911646, -0.215741, -0.349797,
		0.369148, 0.055743, 0.927698,
		13.921239, 22.118753, 30.582104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.170071, 21.605566, 30.062071>,  <13.662835, 22.079733, 29.932716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.170071, 21.605566, 30.062071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.982057, 21.675238, 30.408188>,  <13.869248, 21.717041, 30.615858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.982057, 21.675238, 30.408188>,  <14.170071, 21.605566, 30.062071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.982057, 21.675238, 30.408188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258647, -0.964481, 0.053644,
		0.843901, -0.198591, 0.498390,
		-0.470034, 0.174178, 0.865292,
		13.841046, 21.727491, 30.667776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.356715, 21.055872, 30.589552>,  <14.170071, 21.605566, 30.062071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.356715, 21.055872, 30.589552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.988607, 21.209002, 30.621923>,  <13.767743, 21.300880, 30.641346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.988607, 21.209002, 30.621923>,  <14.356715, 21.055872, 30.589552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.988607, 21.209002, 30.621923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390939, -0.890865, -0.231359,
		-0.016473, -0.244551, 0.969497,
		-0.920269, 0.382825, 0.080929,
		13.712526, 21.323849, 30.646202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.849998, 20.565578, 31.000660>,  <14.356715, 21.055872, 30.589552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.849998, 20.565578, 31.000660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.649516, 20.815294, 30.760977>,  <13.529226, 20.965124, 30.617167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.649516, 20.815294, 30.760977>,  <13.849998, 20.565578, 31.000660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.649516, 20.815294, 30.760977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497945, -0.774405, -0.390318,
		-0.707703, 0.102743, 0.699000,
		-0.501206, 0.624292, -0.599209,
		13.499154, 21.002583, 30.581213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.084526, 20.529848, 31.020687>,  <13.849998, 20.565578, 31.000660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.084526, 20.529848, 31.020687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.161784, 20.668858, 30.653662>,  <13.208138, 20.752264, 30.433447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.161784, 20.668858, 30.653662>,  <13.084526, 20.529848, 31.020687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.161784, 20.668858, 30.653662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.545582, -0.739225, -0.394824,
		-0.815497, 0.576864, 0.046826,
		0.193145, 0.347525, -0.917562,
		13.219728, 20.773115, 30.378393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.462944, 20.476561, 30.731049>,  <13.084526, 20.529848, 31.020687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.462944, 20.476561, 30.731049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.735976, 20.485609, 30.438864>,  <12.899796, 20.491037, 30.263554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.735976, 20.485609, 30.438864>,  <12.462944, 20.476561, 30.731049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.735976, 20.485609, 30.438864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521889, -0.684598, -0.508879,
		-0.511583, 0.728570, -0.455488,
		0.682580, 0.022620, -0.730461,
		12.940750, 20.492395, 30.219725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.102034, 20.771502, 30.134493>,  <12.462944, 20.476561, 30.731049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.102034, 20.771502, 30.134493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.416318, 20.576097, 29.982695>,  <12.604889, 20.458855, 29.891615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.416318, 20.576097, 29.982695>,  <12.102034, 20.771502, 30.134493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.416318, 20.576097, 29.982695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.583305, -0.380843, -0.717436,
		0.205945, 0.785059, -0.584182,
		0.785711, -0.488508, -0.379497,
		12.652031, 20.429544, 29.868845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.933114, 20.557474, 29.457121>,  <12.102034, 20.771502, 30.134493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.933114, 20.557474, 29.457121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.277420, 20.354094, 29.466581>,  <12.484004, 20.232065, 29.472258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.277420, 20.354094, 29.466581>,  <11.933114, 20.557474, 29.457121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.277420, 20.354094, 29.466581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300177, -0.544605, -0.783134,
		0.411067, 0.666995, -0.621403,
		0.860766, -0.508451, 0.023652,
		12.535650, 20.201559, 29.473677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.253502, 20.601988, 28.775753>,  <11.933114, 20.557474, 29.457121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.253502, 20.601988, 28.775753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.381886, 20.278385, 28.972727>,  <12.458916, 20.084223, 29.090912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.381886, 20.278385, 28.972727>,  <12.253502, 20.601988, 28.775753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.381886, 20.278385, 28.972727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392308, -0.586803, -0.708347,
		0.862021, 0.034164, -0.505720,
		0.320958, -0.809009, 0.492434,
		12.478173, 20.035683, 29.120457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.668430, 20.347218, 28.377893>,  <12.253502, 20.601988, 28.775753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.668430, 20.347218, 28.377893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.589874, 20.031204, 28.610197>,  <12.542741, 19.841597, 28.749578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.589874, 20.031204, 28.610197>,  <12.668430, 20.347218, 28.377893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.589874, 20.031204, 28.610197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023668, -0.588299, -0.808297,
		0.980240, -0.172487, 0.096839,
		-0.196391, -0.790033, 0.580757,
		12.530957, 19.794195, 28.784424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.099050, 19.792610, 28.170790>,  <12.668430, 20.347218, 28.377893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.099050, 19.792610, 28.170790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.792009, 19.615187, 28.355850>,  <12.607785, 19.508732, 28.466887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.792009, 19.615187, 28.355850>,  <13.099050, 19.792610, 28.170790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.792009, 19.615187, 28.355850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140238, -0.588119, -0.796523,
		0.625399, -0.676293, 0.389236,
		-0.767600, -0.443559, 0.462651,
		12.561729, 19.482119, 28.494646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.162346, 19.048342, 27.993465>,  <13.099050, 19.792610, 28.170790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.162346, 19.048342, 27.993465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.784382, 19.078913, 28.120779>,  <12.557604, 19.097256, 28.197168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.784382, 19.078913, 28.120779>,  <13.162346, 19.048342, 27.993465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.784382, 19.078913, 28.120779> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296169, -0.613697, -0.731887,
		0.139396, -0.785834, 0.602524,
		-0.944909, 0.076427, 0.318286,
		12.500909, 19.101841, 28.216265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.899845, 18.375656, 27.898922>,  <13.162346, 19.048342, 27.993465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.899845, 18.375656, 27.898922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.603309, 18.643169, 27.921349>,  <12.425386, 18.803677, 27.934805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.603309, 18.643169, 27.921349>,  <12.899845, 18.375656, 27.898922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.603309, 18.643169, 27.921349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387598, -0.358451, -0.849283,
		-0.547888, -0.651339, 0.524953,
		-0.741341, 0.668783, 0.056067,
		12.380906, 18.843803, 27.938169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.359025, 18.045250, 27.611713>,  <12.899845, 18.375656, 27.898922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.359025, 18.045250, 27.611713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.214883, 18.418343, 27.616751>,  <12.128397, 18.642199, 27.619774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.214883, 18.418343, 27.616751>,  <12.359025, 18.045250, 27.611713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.214883, 18.418343, 27.616751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516873, -0.188415, -0.835070,
		-0.776522, -0.307433, 0.549999,
		-0.360356, 0.932730, 0.012595,
		12.106776, 18.698162, 27.620529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.581389, 18.011284, 27.528683>,  <12.359025, 18.045250, 27.611713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.581389, 18.011284, 27.528683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.759312, 18.343985, 27.395813>,  <11.866065, 18.543604, 27.316092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.759312, 18.343985, 27.395813>,  <11.581389, 18.011284, 27.528683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.759312, 18.343985, 27.395813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502749, -0.075061, -0.861167,
		-0.741210, 0.550052, 0.384774,
		0.444805, 0.831751, -0.332174,
		11.892753, 18.593510, 27.296162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.072659, 18.294531, 27.081343>,  <11.581389, 18.011284, 27.528683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.072659, 18.294531, 27.081343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.363726, 18.557373, 27.002640>,  <11.538365, 18.715078, 26.955418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.363726, 18.557373, 27.002640>,  <11.072659, 18.294531, 27.081343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.363726, 18.557373, 27.002640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195040, -0.076793, -0.977784,
		-0.657618, 0.749876, 0.072282,
		0.727666, 0.657107, -0.196757,
		11.582026, 18.754505, 26.943613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.809398, 18.763882, 26.603825>,  <11.072659, 18.294531, 27.081343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.809398, 18.763882, 26.603825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.204561, 18.741463, 26.546005>,  <11.441659, 18.728010, 26.511314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.204561, 18.741463, 26.546005>,  <10.809398, 18.763882, 26.603825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.204561, 18.741463, 26.546005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147675, -0.056330, -0.987431,
		0.047202, 0.996838, -0.063925,
		0.987909, -0.056049, -0.144549,
		11.500934, 18.724648, 26.502640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.046817, 19.237865, 26.038439>,  <10.809398, 18.763882, 26.603825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.046817, 19.237865, 26.038439> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.268118, 18.907829, 26.084280>,  <11.400899, 18.709806, 26.111784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.268118, 18.907829, 26.084280>,  <11.046817, 19.237865, 26.038439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.268118, 18.907829, 26.084280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196735, -0.263106, -0.944495,
		0.809449, 0.499998, -0.307889,
		0.553253, -0.825093, 0.114603,
		11.434093, 18.660301, 26.118662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.499317, 19.286301, 25.473223>,  <11.046817, 19.237865, 26.038439>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.499317, 19.286301, 25.473223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.502510, 18.899418, 25.574766>,  <11.504426, 18.667288, 25.635693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.502510, 18.899418, 25.574766>,  <11.499317, 19.286301, 25.473223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.502510, 18.899418, 25.574766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202213, -0.250183, -0.946847,
		0.979309, -0.043777, -0.197579,
		0.007981, -0.967208, 0.253859,
		11.504905, 18.609255, 25.650925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.777169, 18.934156, 24.932415>,  <11.499317, 19.286301, 25.473223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.777169, 18.934156, 24.932415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.603338, 18.629839, 25.125221>,  <11.499040, 18.447248, 25.240904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.603338, 18.629839, 25.125221>,  <11.777169, 18.934156, 24.932415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.603338, 18.629839, 25.125221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120492, -0.481270, -0.868252,
		0.892538, -0.435401, 0.117480,
		-0.434577, -0.760793, 0.482014,
		11.472965, 18.401602, 25.269825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.116040, 18.228760, 24.639490>,  <11.777169, 18.934156, 24.932415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.116040, 18.228760, 24.639490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.743738, 18.176203, 24.775980>,  <11.520357, 18.144669, 24.857874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.743738, 18.176203, 24.775980>,  <12.116040, 18.228760, 24.639490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.743738, 18.176203, 24.775980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235564, -0.498266, -0.834411,
		0.279653, -0.857011, 0.432812,
		-0.930754, -0.131391, 0.341222,
		11.464512, 18.136786, 24.878347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.982293, 17.615589, 24.342371>,  <12.116040, 18.228760, 24.639490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.982293, 17.615589, 24.342371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.617247, 17.739737, 24.448807>,  <11.398219, 17.814224, 24.512669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.617247, 17.739737, 24.448807>,  <11.982293, 17.615589, 24.342371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.617247, 17.739737, 24.448807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394299, -0.496333, -0.773422,
		-0.107978, -0.810756, 0.575339,
		-0.912616, 0.310368, 0.266088,
		11.343462, 17.832848, 24.528633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.599286, 16.978714, 24.386105>,  <11.982293, 17.615589, 24.342371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.599286, 16.978714, 24.386105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.352437, 17.288517, 24.330545>,  <11.204328, 17.474400, 24.297209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.352437, 17.288517, 24.330545>,  <11.599286, 16.978714, 24.386105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.352437, 17.288517, 24.330545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476282, -0.508186, -0.717568,
		-0.626350, -0.376672, 0.682498,
		-0.617123, 0.774510, -0.138900,
		11.167300, 17.520870, 24.288876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.936186, 16.669544, 24.431204>,  <11.599286, 16.978714, 24.386105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.936186, 16.669544, 24.431204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.898374, 17.008644, 24.222443>,  <10.875687, 17.212105, 24.097185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.898374, 17.008644, 24.222443>,  <10.936186, 16.669544, 24.431204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.898374, 17.008644, 24.222443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450356, -0.503957, -0.737026,
		-0.887831, 0.165371, 0.429429,
		-0.094531, 0.847750, -0.521904,
		10.870014, 17.262970, 24.065872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.259090, 16.593489, 24.016575>,  <10.936186, 16.669544, 24.431204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.259090, 16.593489, 24.016575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.452542, 16.900534, 23.848351>,  <10.568613, 17.084761, 23.747416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.452542, 16.900534, 23.848351>,  <10.259090, 16.593489, 24.016575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.452542, 16.900534, 23.848351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276014, -0.322225, -0.905532,
		-0.830614, 0.554022, 0.056035,
		0.483629, 0.767613, -0.420562,
		10.597631, 17.130817, 23.722181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.832623, 16.901928, 23.524071>,  <10.259090, 16.593489, 24.016575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.832623, 16.901928, 23.524071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.203377, 16.992773, 23.404533>,  <10.425829, 17.047279, 23.332811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.203377, 16.992773, 23.404533>,  <9.832623, 16.901928, 23.524071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.203377, 16.992773, 23.404533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229714, -0.286439, -0.930153,
		-0.296851, 0.930791, -0.213324,
		0.926883, 0.227113, -0.298845,
		10.481441, 17.060907, 23.314880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.744059, 17.266413, 22.846199>,  <9.832623, 16.901928, 23.524071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.744059, 17.266413, 22.846199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.121965, 17.138371, 22.874332>,  <10.348709, 17.061544, 22.891212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.121965, 17.138371, 22.874332>,  <9.744059, 17.266413, 22.846199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.121965, 17.138371, 22.874332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084635, -0.445611, -0.891217,
		0.316627, 0.836040, -0.448090,
		0.944767, -0.320107, 0.070335,
		10.405396, 17.042337, 22.895433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.230374, 17.501095, 22.205736>,  <9.744059, 17.266413, 22.846199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.230374, 17.501095, 22.205736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.441573, 17.185461, 22.331318>,  <10.568293, 16.996080, 22.406666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.441573, 17.185461, 22.331318>,  <10.230374, 17.501095, 22.205736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.441573, 17.185461, 22.331318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063992, -0.405600, -0.911808,
		0.846832, 0.461341, -0.264651,
		0.527997, -0.789083, 0.313953,
		10.599972, 16.948736, 22.425505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.593112, 17.258562, 21.625881>,  <10.230374, 17.501095, 22.205736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.593112, 17.258562, 21.625881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.639646, 16.929493, 21.848475>,  <10.667565, 16.732052, 21.982031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.639646, 16.929493, 21.848475>,  <10.593112, 17.258562, 21.625881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.639646, 16.929493, 21.848475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136042, -0.568205, -0.811564,
		0.983849, 0.018707, -0.178020,
		0.116334, -0.822674, 0.556483,
		10.674546, 16.682690, 22.015419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.139987, 16.852100, 21.335674>,  <10.593112, 17.258562, 21.625881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.139987, 16.852100, 21.335674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.909971, 16.599697, 21.543966>,  <10.771961, 16.448256, 21.668941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.909971, 16.599697, 21.543966>,  <11.139987, 16.852100, 21.335674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.909971, 16.599697, 21.543966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006739, -0.640123, -0.768243,
		0.818097, -0.438261, 0.372349,
		-0.575040, -0.631007, 0.520729,
		10.737459, 16.410395, 21.700186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.530707, 16.254150, 21.269947>,  <11.139987, 16.852100, 21.335674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.530707, 16.254150, 21.269947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.166169, 16.135969, 21.384602>,  <10.947447, 16.065062, 21.453394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.166169, 16.135969, 21.384602>,  <11.530707, 16.254150, 21.269947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.166169, 16.135969, 21.384602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080517, -0.810809, -0.579746,
		0.403694, -0.505269, 0.762715,
		-0.911344, -0.295451, 0.286636,
		10.892766, 16.047335, 21.470592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.588820, 15.544576, 21.218290>,  <11.530707, 16.254150, 21.269947>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.588820, 15.544576, 21.218290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.192890, 15.588201, 21.254852>,  <10.955333, 15.614376, 21.276789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.192890, 15.588201, 21.254852>,  <11.588820, 15.544576, 21.218290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.192890, 15.588201, 21.254852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141814, -0.809058, -0.570363,
		0.011745, -0.577521, 0.816292,
		-0.989824, 0.109063, 0.091403,
		10.895943, 15.620919, 21.282272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.169065, 14.959412, 21.452969>,  <11.588820, 15.544576, 21.218290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.169065, 14.959412, 21.452969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.885654, 15.139230, 21.235382>,  <10.715609, 15.247121, 21.104830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.885654, 15.139230, 21.235382>,  <11.169065, 14.959412, 21.452969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.885654, 15.139230, 21.235382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151991, -0.849959, -0.504449,
		-0.689122, -0.274737, 0.670545,
		-0.708526, 0.449544, -0.543968,
		10.673097, 15.274093, 21.072191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.684180, 14.543066, 21.396994>,  <11.169065, 14.959412, 21.452969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.684180, 14.543066, 21.396994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.597223, 14.795504, 21.099144>,  <10.545049, 14.946966, 20.920435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.597223, 14.795504, 21.099144>,  <10.684180, 14.543066, 21.396994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.597223, 14.795504, 21.099144> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341462, -0.763834, -0.547686,
		-0.914409, 0.135197, 0.381547,
		-0.217393, 0.631093, -0.744622,
		10.532005, 14.984832, 20.875757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.995092, 14.385206, 21.202354>,  <10.684180, 14.543066, 21.396994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.995092, 14.385206, 21.202354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.116218, 14.592073, 20.882145>,  <10.188893, 14.716194, 20.690020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.116218, 14.592073, 20.882145>,  <9.995092, 14.385206, 21.202354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.116218, 14.592073, 20.882145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394305, -0.696717, -0.599257,
		-0.867656, 0.497115, -0.007054,
		0.302814, 0.517168, -0.800526,
		10.207062, 14.747224, 20.641987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.421286, 14.394446, 20.713251>,  <9.995092, 14.385206, 21.202354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.421286, 14.394446, 20.713251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.731680, 14.485610, 20.477997>,  <9.917916, 14.540308, 20.336843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.731680, 14.485610, 20.477997>,  <9.421286, 14.394446, 20.713251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.731680, 14.485610, 20.477997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343789, -0.628937, -0.697315,
		-0.528826, 0.743300, -0.409692,
		0.775985, 0.227910, -0.588137,
		9.964476, 14.553983, 20.301556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.143867, 14.466664, 20.059494>,  <9.421286, 14.394446, 20.713251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.143867, 14.466664, 20.059494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.530944, 14.369196, 20.033590>,  <9.763190, 14.310715, 20.018047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.530944, 14.369196, 20.033590>,  <9.143867, 14.466664, 20.059494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.530944, 14.369196, 20.033590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162318, -0.405545, -0.899547,
		0.192931, 0.880998, -0.431996,
		0.967693, -0.243671, -0.064760,
		9.821252, 14.296095, 20.014162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.377643, 14.566409, 19.423883>,  <9.143867, 14.466664, 20.059494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.377643, 14.566409, 19.423883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.670926, 14.324512, 19.548264>,  <9.846896, 14.179373, 19.622892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.670926, 14.324512, 19.548264>,  <9.377643, 14.566409, 19.423883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.670926, 14.324512, 19.548264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028997, -0.484667, -0.874218,
		0.679385, 0.631967, -0.372898,
		0.733209, -0.604744, 0.310951,
		9.890888, 14.143088, 19.641548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.810420, 14.500550, 18.870043>,  <9.377643, 14.566409, 19.423883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.810420, 14.500550, 18.870043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.893719, 14.174744, 19.086632>,  <9.943698, 13.979259, 19.216585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.893719, 14.174744, 19.086632>,  <9.810420, 14.500550, 18.870043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.893719, 14.174744, 19.086632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053576, -0.562280, -0.825210,
		0.976608, 0.142836, -0.160731,
		0.208246, -0.814518, 0.541475,
		9.956192, 13.930388, 19.249075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.307455, 14.151999, 18.457987>,  <9.810420, 14.500550, 18.870043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.307455, 14.151999, 18.457987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.160913, 13.872797, 18.704100>,  <10.072987, 13.705276, 18.851767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.160913, 13.872797, 18.704100>,  <10.307455, 14.151999, 18.457987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.160913, 13.872797, 18.704100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054018, -0.644184, -0.762961,
		0.928905, -0.312752, 0.198295,
		-0.366356, -0.698007, 0.615280,
		10.051005, 13.663395, 18.888683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.785730, 13.587390, 18.396152>,  <10.307455, 14.151999, 18.457987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.785730, 13.587390, 18.396152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.427669, 13.459764, 18.520664>,  <10.212831, 13.383187, 18.595371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.427669, 13.459764, 18.520664>,  <10.785730, 13.587390, 18.396152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.427669, 13.459764, 18.520664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010999, -0.713919, -0.700142,
		0.445621, -0.623311, 0.642577,
		-0.895154, -0.319066, 0.311282,
		10.159122, 13.364044, 18.614048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.778192, 12.766871, 18.307346>,  <10.785730, 13.587390, 18.396152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.778192, 12.766871, 18.307346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.400462, 12.875438, 18.381737>,  <10.173824, 12.940578, 18.426371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.400462, 12.875438, 18.381737>,  <10.778192, 12.766871, 18.307346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.400462, 12.875438, 18.381737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328110, -0.818801, -0.471071,
		0.024420, -0.505864, 0.862268,
		-0.944324, 0.271415, 0.185974,
		10.117165, 12.956862, 18.437529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.384623, 12.171902, 18.307121>,  <10.778192, 12.766871, 18.307346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.384623, 12.171902, 18.307121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.100795, 12.444801, 18.236643>,  <9.930498, 12.608541, 18.194355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.100795, 12.444801, 18.236643>,  <10.384623, 12.171902, 18.307121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.100795, 12.444801, 18.236643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468642, -0.643666, -0.605037,
		-0.526197, -0.346744, 0.776457,
		-0.709571, 0.682249, -0.176197,
		9.887923, 12.649476, 18.183783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.035327, 11.792463, 18.461805>,  <10.384623, 12.171902, 18.307121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.035327, 11.792463, 18.461805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.400686, 11.749784, 18.304672>,  <11.619902, 11.724175, 18.210392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.400686, 11.749784, 18.304672>,  <11.035327, 11.792463, 18.461805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.400686, 11.749784, 18.304672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380951, 0.564152, 0.732536,
		0.143456, -0.818748, 0.555943,
		0.913399, -0.106701, -0.392833,
		11.674706, 11.717773, 18.186823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.549273, 11.522728, 19.006878>,  <11.035327, 11.792463, 18.461805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.549273, 11.522728, 19.006878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.716916, 11.741304, 18.716843>,  <11.817502, 11.872450, 18.542822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.716916, 11.741304, 18.716843>,  <11.549273, 11.522728, 19.006878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.716916, 11.741304, 18.716843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449333, 0.569123, 0.688621,
		0.788954, -0.614412, -0.007010,
		0.419108, 0.546440, -0.725088,
		11.842649, 11.905236, 18.499317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.168688, 11.733070, 19.312180>,  <11.549273, 11.522728, 19.006878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.168688, 11.733070, 19.312180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.166296, 11.963502, 18.985229>,  <12.164861, 12.101761, 18.789061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.166296, 11.963502, 18.985229>,  <12.168688, 11.733070, 19.312180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.166296, 11.963502, 18.985229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.673134, 0.606784, 0.422733,
		0.739496, -0.547674, -0.391406,
		-0.005979, 0.576078, -0.817373,
		12.164502, 12.136325, 18.740017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.893391, 11.935649, 19.075558>,  <12.168688, 11.733070, 19.312180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.893391, 11.935649, 19.075558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.651698, 12.227734, 18.948000>,  <12.506682, 12.402985, 18.871466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.651698, 12.227734, 18.948000>,  <12.893391, 11.935649, 19.075558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.651698, 12.227734, 18.948000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.606439, 0.681036, 0.410392,
		0.516853, 0.054581, -0.854333,
		-0.604231, 0.730213, -0.318895,
		12.470428, 12.446797, 18.852331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.253344, 12.403992, 18.758938>,  <12.893391, 11.935649, 19.075558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.253344, 12.403992, 18.758938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.940340, 12.617351, 18.887417>,  <12.752538, 12.745366, 18.964504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.940340, 12.617351, 18.887417>,  <13.253344, 12.403992, 18.758938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.940340, 12.617351, 18.887417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.621639, 0.698506, 0.354477,
		-0.035280, 0.477050, -0.878168,
		-0.782509, 0.533397, 0.321196,
		12.705587, 12.777369, 18.983776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.459943, 13.137712, 18.782778>,  <13.253344, 12.403992, 18.758938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.459943, 13.137712, 18.782778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.117224, 13.165127, 18.987207>,  <12.911592, 13.181576, 19.109865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.117224, 13.165127, 18.987207>,  <13.459943, 13.137712, 18.782778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.117224, 13.165127, 18.987207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354180, 0.798563, 0.486676,
		-0.374771, 0.597996, -0.708483,
		-0.856798, 0.068538, 0.511076,
		12.860184, 13.185688, 19.140530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.419219, 13.782436, 18.827763>,  <13.459943, 13.137712, 18.782778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.419219, 13.782436, 18.827763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.172254, 13.657697, 19.116636>,  <13.024075, 13.582852, 19.289961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.172254, 13.657697, 19.116636>,  <13.419219, 13.782436, 18.827763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.172254, 13.657697, 19.116636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291120, 0.762298, 0.578058,
		-0.730786, 0.567143, -0.379868,
		-0.617414, -0.311850, 0.722184,
		12.987029, 13.564142, 19.333292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.046845, 14.326883, 19.074316>,  <13.419219, 13.782436, 18.827763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.046845, 14.326883, 19.074316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.028763, 14.048267, 19.360754>,  <13.017913, 13.881098, 19.532616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.028763, 14.048267, 19.360754>,  <13.046845, 14.326883, 19.074316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.028763, 14.048267, 19.360754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195665, 0.696768, 0.690094,
		-0.979628, 0.171312, 0.104789,
		-0.045207, -0.696539, 0.716093,
		13.015201, 13.839306, 19.575583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.899567, 14.742070, 19.600422>,  <13.046845, 14.326883, 19.074316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.899567, 14.742070, 19.600422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.039557, 14.411901, 19.777597>,  <13.123550, 14.213799, 19.883904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.039557, 14.411901, 19.777597>,  <12.899567, 14.742070, 19.600422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.039557, 14.411901, 19.777597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148232, 0.515681, 0.843860,
		-0.924957, -0.229671, 0.302829,
		0.349974, -0.825424, 0.442938,
		13.144548, 14.164273, 19.910479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.380460, 14.735954, 20.297766>,  <12.899567, 14.742070, 19.600422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.380460, 14.735954, 20.297766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.703651, 14.502175, 20.327669>,  <12.897567, 14.361908, 20.345612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.703651, 14.502175, 20.327669>,  <12.380460, 14.735954, 20.297766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.703651, 14.502175, 20.327669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155304, 0.333640, 0.929820,
		-0.568375, -0.739665, 0.360341,
		0.807979, -0.584449, 0.074759,
		12.946045, 14.326840, 20.350098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.339489, 14.387311, 20.949131>,  <12.380460, 14.735954, 20.297766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.339489, 14.387311, 20.949131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.724713, 14.310519, 20.873596>,  <12.955848, 14.264444, 20.828276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.724713, 14.310519, 20.873596>,  <12.339489, 14.387311, 20.949131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.724713, 14.310519, 20.873596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243180, 0.318810, 0.916091,
		-0.115667, -0.928172, 0.353718,
		0.963060, -0.191979, -0.188838,
		13.013631, 14.252926, 20.816944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.681077, 13.862261, 21.430597>,  <12.339489, 14.387311, 20.949131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.681077, 13.862261, 21.430597> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.950207, 14.120871, 21.286757>,  <13.111685, 14.276036, 21.200451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.950207, 14.120871, 21.286757>,  <12.681077, 13.862261, 21.430597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.950207, 14.120871, 21.286757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223997, 0.285233, 0.931916,
		0.705078, -0.707565, 0.047092,
		0.672823, 0.646525, -0.359604,
		13.152054, 14.314828, 21.178875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.296163, 13.761699, 21.785662>,  <12.681077, 13.862261, 21.430597>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.296163, 13.761699, 21.785662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.358803, 14.125774, 21.632282>,  <13.396387, 14.344219, 21.540255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.358803, 14.125774, 21.632282>,  <13.296163, 13.761699, 21.785662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.358803, 14.125774, 21.632282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436297, 0.284553, 0.853625,
		0.886071, -0.300976, -0.352552,
		0.156601, 0.910189, -0.383449,
		13.405783, 14.398831, 21.517248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.998433, 14.013720, 21.959944>,  <13.296163, 13.761699, 21.785662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.998433, 14.013720, 21.959944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.788725, 14.343605, 21.875103>,  <13.662900, 14.541536, 21.824198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.788725, 14.343605, 21.875103>,  <13.998433, 14.013720, 21.959944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.788725, 14.343605, 21.875103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396681, 0.456930, 0.796153,
		0.753514, 0.333263, -0.566703,
		-0.524272, 0.824713, -0.212104,
		13.631443, 14.591019, 21.811472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.359525, 14.531721, 22.279608>,  <13.998433, 14.013720, 21.959944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.359525, 14.531721, 22.279608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.021152, 14.729163, 22.198856>,  <13.818129, 14.847629, 22.150406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.021152, 14.729163, 22.198856>,  <14.359525, 14.531721, 22.279608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.021152, 14.729163, 22.198856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154089, 0.588637, 0.793576,
		0.510545, 0.640204, -0.574006,
		-0.845931, 0.493605, -0.201877,
		13.767373, 14.877245, 22.138292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.590698, 15.157644, 22.396814>,  <14.359525, 14.531721, 22.279608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.590698, 15.157644, 22.396814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.192539, 15.144870, 22.432959>,  <13.953644, 15.137205, 22.454645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.192539, 15.144870, 22.432959>,  <14.590698, 15.157644, 22.396814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.192539, 15.144870, 22.432959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052204, 0.610026, 0.790660,
		-0.080374, 0.791737, -0.605551,
		-0.995397, -0.031937, 0.090362,
		13.893920, 15.135289, 22.460068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.350577, 15.839558, 22.346968>,  <14.590698, 15.157644, 22.396814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.350577, 15.839558, 22.346968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.075185, 15.626369, 22.543716>,  <13.909949, 15.498457, 22.661766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.075185, 15.626369, 22.543716>,  <14.350577, 15.839558, 22.346968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.075185, 15.626369, 22.543716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161103, 0.773647, 0.612794,
		-0.707134, 0.342655, -0.618505,
		-0.688481, -0.532971, 0.491870,
		13.868640, 15.466478, 22.691277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.805778, 16.326387, 22.357365>,  <14.350577, 15.839558, 22.346968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.805778, 16.326387, 22.357365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.724020, 16.050713, 22.635427>,  <13.674965, 15.885307, 22.802265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.724020, 16.050713, 22.635427>,  <13.805778, 16.326387, 22.357365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.724020, 16.050713, 22.635427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131297, 0.723035, 0.678220,
		-0.970043, 0.047352, -0.238273,
		-0.204395, -0.689187, 0.695158,
		13.662702, 15.843956, 22.843975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.156940, 16.459677, 22.735884>,  <13.805778, 16.326387, 22.357365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.156940, 16.459677, 22.735884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.358061, 16.226633, 22.991306>,  <13.478733, 16.086807, 23.144560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.358061, 16.226633, 22.991306>,  <13.156940, 16.459677, 22.735884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.358061, 16.226633, 22.991306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206893, 0.636143, 0.743315,
		-0.839277, -0.505853, 0.199315,
		0.502801, -0.582611, 0.638558,
		13.508902, 16.051849, 23.182873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.753618, 16.538572, 23.238451>,  <13.156940, 16.459677, 22.735884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.753618, 16.538572, 23.238451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.087516, 16.404808, 23.413435>,  <13.287854, 16.324549, 23.518425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.087516, 16.404808, 23.413435>,  <12.753618, 16.538572, 23.238451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.087516, 16.404808, 23.413435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154755, 0.619963, 0.769218,
		-0.528445, -0.709799, 0.465758,
		0.834744, -0.334411, 0.437462,
		13.337939, 16.304485, 23.544674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.615908, 16.422401, 24.040815>,  <12.753618, 16.538572, 23.238451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.615908, 16.422401, 24.040815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.008904, 16.453718, 23.973190>,  <13.244701, 16.472509, 23.932615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.008904, 16.453718, 23.973190>,  <12.615908, 16.422401, 24.040815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.008904, 16.453718, 23.973190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072961, 0.673267, 0.735791,
		0.171433, -0.735243, 0.655765,
		0.982490, 0.078294, -0.169065,
		13.303651, 16.477207, 23.922470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.854251, 16.624109, 24.736475>,  <12.615908, 16.422401, 24.040815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.854251, 16.624109, 24.736475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.156267, 16.715992, 24.490826>,  <13.337477, 16.771122, 24.343435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.156267, 16.715992, 24.490826>,  <12.854251, 16.624109, 24.736475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.156267, 16.715992, 24.490826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345063, 0.657222, 0.670068,
		0.557535, -0.717840, 0.416966,
		0.755041, 0.229706, -0.614124,
		13.382779, 16.784904, 24.306589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.479477, 16.625959, 25.108908>,  <12.854251, 16.624109, 24.736475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.479477, 16.625959, 25.108908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.554527, 16.863136, 24.795675>,  <13.599558, 17.005442, 24.607735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.554527, 16.863136, 24.795675>,  <13.479477, 16.625959, 25.108908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.554527, 16.863136, 24.795675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362666, 0.699089, 0.616236,
		0.912836, -0.399620, -0.083872,
		0.187626, 0.592940, -0.783082,
		13.610815, 17.041018, 24.560751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.176429, 16.974607, 25.252703>,  <13.479477, 16.625959, 25.108908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.176429, 16.974607, 25.252703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.970997, 17.204716, 24.998049>,  <13.847737, 17.342781, 24.845257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.970997, 17.204716, 24.998049>,  <14.176429, 16.974607, 25.252703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.970997, 17.204716, 24.998049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488564, 0.805997, 0.334177,
		0.705366, -0.139409, -0.695000,
		-0.513581, 0.575269, -0.636632,
		13.816923, 17.377296, 24.807058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.594259, 17.497776, 25.261673>,  <14.176429, 16.974607, 25.252703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.594259, 17.497776, 25.261673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.254400, 17.633888, 25.100523>,  <14.050485, 17.715555, 25.003834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.254400, 17.633888, 25.100523>,  <14.594259, 17.497776, 25.261673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.254400, 17.633888, 25.100523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236906, 0.928824, 0.284887,
		0.471141, 0.146610, -0.869788,
		-0.849648, 0.340280, -0.402875,
		13.999506, 17.735971, 24.979660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.833488, 18.086266, 24.847786>,  <14.594259, 17.497776, 25.261673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.833488, 18.086266, 24.847786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.444596, 18.132006, 24.929466>,  <14.211262, 18.159449, 24.978474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.444596, 18.132006, 24.929466>,  <14.833488, 18.086266, 24.847786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.444596, 18.132006, 24.929466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169499, 0.945670, 0.277451,
		-0.161380, 0.304358, -0.938788,
		-0.972228, 0.114349, 0.204201,
		14.152928, 18.166311, 24.990726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.600205, 18.698357, 24.559559>,  <14.833488, 18.086266, 24.847786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.600205, 18.698357, 24.559559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.350427, 18.613371, 24.860205>,  <14.200560, 18.562380, 25.040592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.350427, 18.613371, 24.860205>,  <14.600205, 18.698357, 24.559559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.350427, 18.613371, 24.860205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042799, 0.970154, 0.238682,
		-0.779894, 0.116876, -0.614903,
		-0.624447, -0.212464, 0.751615,
		14.163093, 18.549631, 25.085690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.032630, 19.178595, 24.424763>,  <14.600205, 18.698357, 24.559559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.032630, 19.178595, 24.424763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.981536, 19.073456, 24.807301>,  <13.950879, 19.010372, 25.036823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.981536, 19.073456, 24.807301>,  <14.032630, 19.178595, 24.424763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.981536, 19.073456, 24.807301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017110, 0.963516, 0.267104,
		-0.991661, 0.050482, -0.118577,
		-0.127735, -0.262848, 0.956344,
		13.943215, 18.994602, 25.094204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.771732, 19.702614, 24.706465>,  <14.032630, 19.178595, 24.424763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.771732, 19.702614, 24.706465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.864839, 19.511795, 25.045462>,  <13.920702, 19.397305, 25.248859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.864839, 19.511795, 25.045462>,  <13.771732, 19.702614, 24.706465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.864839, 19.511795, 25.045462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100262, 0.878557, 0.466995,
		-0.967351, -0.023728, 0.252327,
		0.232765, -0.477047, 0.847494,
		13.934668, 19.368681, 25.299709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.290984, 20.011433, 25.273411>,  <13.771732, 19.702614, 24.706465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.290984, 20.011433, 25.273411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.632164, 19.879057, 25.434883>,  <13.836872, 19.799631, 25.531767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.632164, 19.879057, 25.434883>,  <13.290984, 20.011433, 25.273411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.632164, 19.879057, 25.434883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107073, 0.867820, 0.485205,
		-0.510894, -0.370632, 0.775641,
		0.852949, -0.330939, 0.403680,
		13.888049, 19.779776, 25.555986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.213284, 20.172455, 25.966000>,  <13.290984, 20.011433, 25.273411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.213284, 20.172455, 25.966000> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.607642, 20.118017, 25.927032>,  <13.844257, 20.085354, 25.903652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.607642, 20.118017, 25.927032>,  <13.213284, 20.172455, 25.966000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.607642, 20.118017, 25.927032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166349, 0.860929, 0.480759,
		0.018439, -0.490183, 0.871425,
		0.985895, -0.136096, -0.097416,
		13.903411, 20.077188, 25.897808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.457940, 20.073244, 26.595919>,  <13.213284, 20.172455, 25.966000>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.457940, 20.073244, 26.595919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.765454, 20.208063, 26.378527>,  <13.949963, 20.288954, 26.248093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.765454, 20.208063, 26.378527>,  <13.457940, 20.073244, 26.595919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.765454, 20.208063, 26.378527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395100, 0.417917, 0.818072,
		0.502857, -0.843650, 0.188121,
		0.768786, 0.337047, -0.543478,
		13.996090, 20.309177, 26.215483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.146219, 19.781406, 26.699295>,  <13.457940, 20.073244, 26.595919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.146219, 19.781406, 26.699295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.163644, 20.170053, 26.606291>,  <14.174099, 20.403242, 26.550488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.163644, 20.170053, 26.606291>,  <14.146219, 19.781406, 26.699295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.163644, 20.170053, 26.606291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215023, 0.218159, 0.951930,
		0.975637, -0.091463, -0.199417,
		0.043562, 0.971618, -0.232511,
		14.176713, 20.461538, 26.536537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.753197, 19.449062, 27.087795>,  <14.146219, 19.781406, 26.699295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.753197, 19.449062, 27.087795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.505808, 19.685457, 27.294958>,  <14.357375, 19.827293, 27.419256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.505808, 19.685457, 27.294958>,  <14.753197, 19.449062, 27.087795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.505808, 19.685457, 27.294958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.696782, 0.107732, 0.709146,
		0.363302, 0.799454, -0.478418,
		-0.618471, 0.590988, 0.517906,
		14.320267, 19.862753, 27.450331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.984031, 20.208441, 27.212280>,  <14.753197, 19.449062, 27.087795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.984031, 20.208441, 27.212280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.740770, 20.078489, 27.501999>,  <14.594814, 20.000519, 27.675831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.740770, 20.078489, 27.501999>,  <14.984031, 20.208441, 27.212280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.740770, 20.078489, 27.501999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.668704, 0.282014, 0.687970,
		-0.427770, 0.902730, 0.045742,
		-0.608151, -0.324880, 0.724296,
		14.558325, 19.981026, 27.719288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.921228, 20.809578, 27.751383>,  <14.984031, 20.208441, 27.212280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.921228, 20.809578, 27.751383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.922609, 20.427441, 27.869576>,  <14.923438, 20.198158, 27.940491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.922609, 20.427441, 27.869576>,  <14.921228, 20.809578, 27.751383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.922609, 20.427441, 27.869576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.680644, 0.218718, 0.699204,
		-0.732606, 0.198703, 0.651004,
		0.003453, -0.955343, 0.295480,
		14.923645, 20.140839, 27.958220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.197509, 21.212896, 27.817816>,  <14.921228, 20.809578, 27.751383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.197509, 21.212896, 27.817816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.897259, 21.457451, 27.918032>,  <13.717109, 21.604183, 27.978161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.897259, 21.457451, 27.918032>,  <14.197509, 21.212896, 27.817816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.897259, 21.457451, 27.918032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466481, 0.221834, 0.856262,
		0.467929, 0.759603, -0.451715,
		-0.750625, 0.611386, 0.250538,
		13.672071, 21.640867, 27.993193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.984200, 21.488867, 28.541178>,  <14.197509, 21.212896, 27.817816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.984200, 21.488867, 28.541178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.954110, 21.677914, 28.892399>,  <13.936056, 21.791342, 29.103130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.954110, 21.677914, 28.892399>,  <13.984200, 21.488867, 28.541178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.954110, 21.677914, 28.892399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.928844, -0.353538, 0.110719,
		0.362753, -0.807244, 0.465583,
		-0.075224, 0.472618, 0.878051,
		13.931543, 21.819698, 29.155813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.317051, 21.943615, 28.068933>,  <13.984200, 21.488867, 28.541178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.317051, 21.943615, 28.068933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.614617, 22.175177, 27.935392>,  <14.793158, 22.314114, 27.855268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.614617, 22.175177, 27.935392>,  <14.317051, 21.943615, 28.068933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.614617, 22.175177, 27.935392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260242, -0.209180, -0.942612,
		-0.615518, 0.788107, -0.004957,
		0.743917, 0.578904, -0.333853,
		14.837792, 22.348848, 27.835238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.054051, 22.342115, 27.500103>,  <14.317051, 21.943615, 28.068933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.054051, 22.342115, 27.500103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.448286, 22.357038, 27.434103>,  <14.684827, 22.365993, 27.394503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.448286, 22.357038, 27.434103>,  <14.054051, 22.342115, 27.500103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.448286, 22.357038, 27.434103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167850, 0.094253, -0.981297,
		-0.021060, 0.994849, 0.099157,
		0.985588, 0.037310, -0.165000,
		14.743962, 22.368231, 27.384604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.208157, 22.900534, 26.970114>,  <14.054051, 22.342115, 27.500103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.208157, 22.900534, 26.970114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.509210, 22.637220, 26.975834>,  <14.689841, 22.479233, 26.979265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.509210, 22.637220, 26.975834>,  <14.208157, 22.900534, 26.970114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.509210, 22.637220, 26.975834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040685, -0.068170, -0.996844,
		0.657182, 0.749676, -0.078089,
		0.752633, -0.658285, 0.014299,
		14.735000, 22.439735, 26.980124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.442000, 22.926685, 26.332048>,  <14.208157, 22.900534, 26.970114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.442000, 22.926685, 26.332048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.651235, 22.616796, 26.474140>,  <14.776775, 22.430864, 26.559395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.651235, 22.616796, 26.474140>,  <14.442000, 22.926685, 26.332048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.651235, 22.616796, 26.474140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129684, -0.339598, -0.931588,
		0.842356, 0.533367, -0.077170,
		0.523085, -0.774721, 0.355232,
		14.808160, 22.384380, 26.580709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.029602, 22.875477, 25.829000>,  <14.442000, 22.926685, 26.332048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.029602, 22.875477, 25.829000> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.984049, 22.516771, 26.000042>,  <14.956717, 22.301548, 26.102667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.984049, 22.516771, 26.000042>,  <15.029602, 22.875477, 25.829000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.984049, 22.516771, 26.000042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330763, -0.440074, -0.834824,
		0.936817, 0.046363, 0.346734,
		-0.113884, -0.896764, 0.427603,
		14.949883, 22.247742, 26.128323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.401507, 22.500055, 25.414736>,  <15.029602, 22.875477, 25.829000>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.401507, 22.500055, 25.414736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.195239, 22.220526, 25.613020>,  <15.071478, 22.052809, 25.731991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.195239, 22.220526, 25.613020>,  <15.401507, 22.500055, 25.414736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.195239, 22.220526, 25.613020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120995, -0.632169, -0.765325,
		0.848201, -0.334677, 0.410545,
		-0.515670, -0.698823, 0.495712,
		15.040538, 22.010880, 25.761734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.807956, 21.881088, 25.496023>,  <15.401507, 22.500055, 25.414736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.807956, 21.881088, 25.496023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.422278, 21.775095, 25.500271>,  <15.190872, 21.711498, 25.502819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.422278, 21.775095, 25.500271>,  <15.807956, 21.881088, 25.496023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.422278, 21.775095, 25.500271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182972, -0.693695, -0.696641,
		0.191964, -0.669755, 0.717341,
		-0.964194, -0.264984, 0.010618,
		15.133020, 21.695601, 25.503456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.803308, 21.164730, 25.432911>,  <15.807956, 21.881088, 25.496023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.803308, 21.164730, 25.432911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.431437, 21.273890, 25.333935>,  <15.208314, 21.339386, 25.274549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.431437, 21.273890, 25.333935>,  <15.803308, 21.164730, 25.432911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.431437, 21.273890, 25.333935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023177, -0.627039, -0.778643,
		-0.367646, -0.729621, 0.576619,
		-0.929677, 0.272900, -0.247439,
		15.152534, 21.355761, 25.259703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.428329, 20.484682, 25.400747>,  <15.803308, 21.164730, 25.432911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.428329, 20.484682, 25.400747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.227345, 20.771170, 25.207020>,  <15.106755, 20.943062, 25.090784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.227345, 20.771170, 25.207020>,  <15.428329, 20.484682, 25.400747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.227345, 20.771170, 25.207020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170647, -0.631297, -0.756534,
		-0.847594, -0.297479, 0.439421,
		-0.502458, 0.716220, -0.484320,
		15.076608, 20.986036, 25.061724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.856728, 20.174316, 25.177164>,  <15.428329, 20.484682, 25.400747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.856728, 20.174316, 25.177164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.904326, 20.498632, 24.947918>,  <14.932886, 20.693222, 24.810371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.904326, 20.498632, 24.947918>,  <14.856728, 20.174316, 25.177164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.904326, 20.498632, 24.947918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115034, -0.562070, -0.819050,
		-0.986208, 0.163392, 0.026384,
		0.118997, 0.810790, -0.573114,
		14.940025, 20.741869, 24.775984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.351604, 20.147478, 24.686306>,  <14.856728, 20.174316, 25.177164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.351604, 20.147478, 24.686306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.581310, 20.410526, 24.491264>,  <14.719133, 20.568356, 24.374239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.581310, 20.410526, 24.491264>,  <14.351604, 20.147478, 24.686306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.581310, 20.410526, 24.491264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228165, -0.443442, -0.866776,
		-0.786232, 0.609013, -0.104607,
		0.574265, 0.657619, -0.487604,
		14.753590, 20.607813, 24.344984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.891242, 20.410730, 24.248461>,  <14.351604, 20.147478, 24.686306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.891242, 20.410730, 24.248461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.258855, 20.440674, 24.093657>,  <14.479423, 20.458639, 24.000774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.258855, 20.440674, 24.093657>,  <13.891242, 20.410730, 24.248461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.258855, 20.440674, 24.093657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362590, -0.224597, -0.904480,
		-0.154629, 0.971572, -0.179269,
		0.919031, 0.074857, -0.387012,
		14.534564, 20.463131, 23.977552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.882306, 20.912397, 23.685339>,  <13.891242, 20.410730, 24.248461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.882306, 20.912397, 23.685339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.148999, 20.617781, 23.639776>,  <14.309015, 20.441011, 23.612438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.148999, 20.617781, 23.639776>,  <13.882306, 20.912397, 23.685339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.148999, 20.617781, 23.639776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491066, -0.319172, -0.810545,
		0.560645, 0.596352, -0.574493,
		0.666732, -0.736542, -0.113906,
		14.349019, 20.396818, 23.605604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.055655, 20.948132, 22.984552>,  <13.882306, 20.912397, 23.685339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.055655, 20.948132, 22.984552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.232038, 20.600744, 23.075171>,  <14.337868, 20.392313, 23.129541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.232038, 20.600744, 23.075171>,  <14.055655, 20.948132, 22.984552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.232038, 20.600744, 23.075171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530369, -0.455760, -0.714837,
		0.724061, 0.195062, -0.661579,
		0.440959, -0.868466, 0.226543,
		14.364326, 20.340204, 23.143133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.342598, 20.720337, 22.353504>,  <14.055655, 20.948132, 22.984552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.342598, 20.720337, 22.353504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.321053, 20.385372, 22.571068>,  <14.308125, 20.184393, 22.701607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.321053, 20.385372, 22.571068>,  <14.342598, 20.720337, 22.353504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.321053, 20.385372, 22.571068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110896, -0.536314, -0.836702,
		0.992371, -0.105386, -0.063978,
		-0.053864, -0.837413, 0.543909,
		14.304893, 20.134148, 22.734241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.465988, 20.239948, 21.845320>,  <14.342598, 20.720337, 22.353504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.465988, 20.239948, 21.845320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.288983, 20.041634, 22.144218>,  <14.182780, 19.922646, 22.323557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.288983, 20.041634, 22.144218>,  <14.465988, 20.239948, 21.845320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.288983, 20.041634, 22.144218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351472, -0.670719, -0.653149,
		0.825015, -0.551663, 0.122546,
		-0.442513, -0.495787, 0.747247,
		14.156230, 19.892899, 22.368393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.764153, 19.694931, 21.769434>,  <14.465988, 20.239948, 21.845320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.764153, 19.694931, 21.769434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.409200, 19.651382, 21.948631>,  <14.196228, 19.625254, 22.056150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.409200, 19.651382, 21.948631>,  <14.764153, 19.694931, 21.769434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.409200, 19.651382, 21.948631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143955, -0.857702, -0.493584,
		0.437982, -0.502489, 0.745437,
		-0.887383, -0.108871, 0.447994,
		14.142984, 19.618721, 22.083029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.742366, 19.042786, 22.105692>,  <14.764153, 19.694931, 21.769434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.742366, 19.042786, 22.105692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.355184, 19.134140, 22.063923>,  <14.122874, 19.188951, 22.038860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.355184, 19.134140, 22.063923>,  <14.742366, 19.042786, 22.105692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.355184, 19.134140, 22.063923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161010, -0.883519, -0.439852,
		-0.192716, -0.408944, 0.891979,
		-0.967955, 0.228384, -0.104424,
		14.064797, 19.202656, 22.032595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.371261, 18.397209, 22.398106>,  <14.742366, 19.042786, 22.105692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.371261, 18.397209, 22.398106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.117725, 18.603884, 22.167875>,  <13.965605, 18.727888, 22.029737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.117725, 18.603884, 22.167875>,  <14.371261, 18.397209, 22.398106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.117725, 18.603884, 22.167875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212617, -0.831872, -0.512623,
		-0.743670, -0.202543, 0.637127,
		-0.633836, 0.516686, -0.575575,
		13.927574, 18.758890, 21.995203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.718925, 17.936049, 22.372086>,  <14.371261, 18.397209, 22.398106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.718925, 17.936049, 22.372086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.707428, 18.173986, 22.050755>,  <13.700529, 18.316750, 21.857956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.707428, 18.173986, 22.050755>,  <13.718925, 17.936049, 22.372086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.707428, 18.173986, 22.050755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196290, -0.791369, -0.578968,
		-0.980124, 0.141043, 0.139510,
		-0.028744, 0.594846, -0.803326,
		13.698805, 18.352440, 21.809757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.051316, 17.685013, 21.965984>,  <13.718925, 17.936049, 22.372086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.051316, 17.685013, 21.965984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.310211, 17.891880, 21.741976>,  <13.465548, 18.016001, 21.607571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.310211, 17.891880, 21.741976>,  <13.051316, 17.685013, 21.965984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.310211, 17.891880, 21.741976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005981, -0.738078, -0.674689,
		-0.762266, 0.433334, -0.480804,
		0.647236, 0.517168, -0.560020,
		13.504382, 18.047031, 21.573969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.946211, 17.436218, 21.294247>,  <13.051316, 17.685013, 21.965984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.946211, 17.436218, 21.294247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.284498, 17.643654, 21.243927>,  <13.487471, 17.768114, 21.213736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.284498, 17.643654, 21.243927>,  <12.946211, 17.436218, 21.294247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.284498, 17.643654, 21.243927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271380, -0.620955, -0.735369,
		-0.459468, 0.587777, -0.665888,
		0.845720, 0.518588, -0.125798,
		13.538214, 17.799231, 21.206188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.907054, 17.587147, 20.556475>,  <12.946211, 17.436218, 21.294247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.907054, 17.587147, 20.556475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.283737, 17.579433, 20.690825>,  <13.509748, 17.574806, 20.771435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.283737, 17.579433, 20.690825>,  <12.907054, 17.587147, 20.556475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.283737, 17.579433, 20.690825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254476, -0.612205, -0.748630,
		0.220061, 0.790464, -0.571612,
		0.941708, -0.019283, 0.335877,
		13.566250, 17.573648, 20.791588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.258939, 17.309809, 20.057381>,  <12.907054, 17.587147, 20.556475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.258939, 17.309809, 20.057381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.548992, 17.281057, 20.331320>,  <13.723024, 17.263805, 20.495684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.548992, 17.281057, 20.331320>,  <13.258939, 17.309809, 20.057381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.548992, 17.281057, 20.331320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482335, -0.656784, -0.579644,
		0.491460, 0.750645, -0.441587,
		0.725134, -0.071880, 0.684846,
		13.766533, 17.259493, 20.536774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.815322, 17.559122, 19.726414>,  <13.258939, 17.309809, 20.057381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.815322, 17.559122, 19.726414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.948942, 17.330574, 20.026266>,  <14.029115, 17.193445, 20.206177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.948942, 17.330574, 20.026266>,  <13.815322, 17.559122, 19.726414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.948942, 17.330574, 20.026266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.697418, -0.385170, -0.604361,
		0.634049, 0.724694, 0.269817,
		0.334051, -0.571370, 0.749631,
		14.049157, 17.159163, 20.251156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.518352, 17.484394, 19.589315>,  <13.815322, 17.559122, 19.726414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.518352, 17.484394, 19.589315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.485724, 17.189001, 19.857044>,  <14.466148, 17.011766, 20.017681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.485724, 17.189001, 19.857044>,  <14.518352, 17.484394, 19.589315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.485724, 17.189001, 19.857044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.716154, -0.510482, -0.475953,
		0.693159, 0.440515, 0.570506,
		-0.081568, -0.738482, 0.669322,
		14.461254, 16.967457, 20.057840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.211109, 17.268641, 19.932091>,  <14.518352, 17.484394, 19.589315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.211109, 17.268641, 19.932091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.964338, 16.954824, 19.957071>,  <14.816276, 16.766535, 19.972059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.964338, 16.954824, 19.957071>,  <15.211109, 17.268641, 19.932091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.964338, 16.954824, 19.957071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.687073, -0.575585, -0.443433,
		0.383836, -0.230657, 0.894129,
		-0.616928, -0.784538, 0.062452,
		14.779260, 16.719463, 19.975807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.656252, 16.732798, 20.216318>,  <15.211109, 17.268641, 19.932091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.656252, 16.732798, 20.216318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.333644, 16.550007, 20.066280>,  <15.140079, 16.440332, 19.976257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.333644, 16.550007, 20.066280>,  <15.656252, 16.732798, 20.216318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.333644, 16.550007, 20.066280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.584722, -0.710274, -0.391932,
		-0.087318, -0.535429, 0.840055,
		-0.806521, -0.456976, -0.375097,
		15.091688, 16.412914, 19.953751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.786955, 16.088253, 20.484501>,  <15.656252, 16.732798, 20.216318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.786955, 16.088253, 20.484501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.558713, 16.082829, 20.156055>,  <15.421768, 16.079573, 19.958988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.558713, 16.082829, 20.156055>,  <15.786955, 16.088253, 20.484501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.558713, 16.082829, 20.156055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.564748, -0.732385, -0.380356,
		-0.596212, -0.680755, 0.425562,
		-0.570605, -0.013562, -0.821113,
		15.387531, 16.078760, 19.909721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.561120, 15.325449, 20.365793>,  <15.786955, 16.088253, 20.484501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.561120, 15.325449, 20.365793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.525725, 15.538947, 20.029392>,  <15.504489, 15.667046, 19.827551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.525725, 15.538947, 20.029392>,  <15.561120, 15.325449, 20.365793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.525725, 15.538947, 20.029392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317406, -0.785192, -0.531721,
		-0.944152, -0.313989, -0.099935,
		-0.088486, 0.533745, -0.841003,
		15.499180, 15.699071, 19.777092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.395576, 14.878895, 19.934832>,  <15.561120, 15.325449, 20.365793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.395576, 14.878895, 19.934832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.510811, 15.174229, 19.690908>,  <15.579951, 15.351429, 19.544554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.510811, 15.174229, 19.690908>,  <15.395576, 14.878895, 19.934832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.510811, 15.174229, 19.690908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227429, -0.671340, -0.705393,
		-0.930206, 0.064525, -0.361322,
		0.288086, 0.738335, -0.609810,
		15.597237, 15.395729, 19.507965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.196858, 14.653954, 19.330013>,  <15.395576, 14.878895, 19.934832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.196858, 14.653954, 19.330013> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.470367, 14.922123, 19.214781>,  <15.634473, 15.083024, 19.145641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.470367, 14.922123, 19.214781>,  <15.196858, 14.653954, 19.330013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.470367, 14.922123, 19.214781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406164, -0.677667, -0.613024,
		-0.606207, 0.302161, -0.735671,
		0.683772, 0.670422, -0.288079,
		15.675499, 15.123250, 19.128357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.141776, 14.587117, 18.548433>,  <15.196858, 14.653954, 19.330013>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.141776, 14.587117, 18.548433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.481707, 14.772391, 18.649035>,  <15.685665, 14.883556, 18.709394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.481707, 14.772391, 18.649035>,  <15.141776, 14.587117, 18.548433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.481707, 14.772391, 18.649035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487609, -0.509782, -0.708773,
		-0.200082, 0.724969, -0.659080,
		0.849826, 0.463186, 0.251504,
		15.736654, 14.911347, 18.724485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.561198, 14.693212, 17.910458>,  <15.141776, 14.587117, 18.548433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.561198, 14.693212, 17.910458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.830707, 14.740949, 18.202154>,  <15.992412, 14.769590, 18.377172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.830707, 14.740949, 18.202154>,  <15.561198, 14.693212, 17.910458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.830707, 14.740949, 18.202154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.724161, -0.303032, -0.619485,
		0.147052, 0.945478, -0.290597,
		0.673770, 0.119342, 0.729240,
		16.032837, 14.776752, 18.420927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.245543, 14.911140, 17.596050>,  <15.561198, 14.693212, 17.910458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.245543, 14.911140, 17.596050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.335325, 14.750228, 17.951080>,  <16.389194, 14.653680, 18.164099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.335325, 14.750228, 17.951080>,  <16.245543, 14.911140, 17.596050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.335325, 14.750228, 17.951080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.840765, -0.380544, -0.385097,
		0.492678, 0.832680, 0.252809,
		0.224458, -0.402282, 0.887574,
		16.402662, 14.629543, 18.217352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.903700, 15.044358, 17.698103>,  <16.245543, 14.911140, 17.596050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.903700, 15.044358, 17.698103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.870598, 14.733177, 17.947243>,  <16.850737, 14.546469, 18.096725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.870598, 14.733177, 17.947243>,  <16.903700, 15.044358, 17.698103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.870598, 14.733177, 17.947243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.923254, -0.295135, -0.245962,
		0.375171, 0.554692, 0.742673,
		-0.082756, -0.777954, 0.622848,
		16.845772, 14.499791, 18.134098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.550755, 14.911790, 18.180002>,  <16.903700, 15.044358, 17.698103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.550755, 14.911790, 18.180002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.363256, 14.560017, 18.213161>,  <17.250757, 14.348952, 18.233057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.363256, 14.560017, 18.213161>,  <17.550755, 14.911790, 18.180002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.363256, 14.560017, 18.213161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.807103, -0.464544, -0.364396,
		0.358973, -0.103900, 0.927547,
		-0.468747, -0.879434, 0.082900,
		17.222631, 14.296186, 18.238031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.049786, 14.534788, 18.568380>,  <17.550755, 14.911790, 18.180002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.049786, 14.534788, 18.568380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.803738, 14.280590, 18.381716>,  <17.656109, 14.128071, 18.269718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.803738, 14.280590, 18.381716>,  <18.049786, 14.534788, 18.568380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.803738, 14.280590, 18.381716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.778254, -0.584205, -0.230274,
		-0.126287, -0.504826, 0.853933,
		-0.615120, -0.635496, -0.466660,
		17.619202, 14.089941, 18.241718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.374971, 13.870815, 18.499151>,  <18.049786, 14.534788, 18.568380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.374971, 13.870815, 18.499151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.097168, 13.853737, 18.211864>,  <17.930485, 13.843490, 18.039494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.097168, 13.853737, 18.211864>,  <18.374971, 13.870815, 18.499151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.097168, 13.853737, 18.211864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.566689, -0.647519, -0.509492,
		-0.443305, -0.760852, 0.473903,
		-0.694510, -0.042695, -0.718215,
		17.888815, 13.840928, 17.996399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.380081, 13.156178, 18.249352>,  <18.374971, 13.870815, 18.499151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.380081, 13.156178, 18.249352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.236404, 13.377332, 17.948606>,  <18.150198, 13.510024, 17.768160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.236404, 13.377332, 17.948606>,  <18.380081, 13.156178, 18.249352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.236404, 13.377332, 17.948606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.586712, -0.492742, -0.642630,
		-0.725776, -0.671955, -0.147396,
		-0.359190, 0.552885, -0.751865,
		18.128647, 13.543198, 17.723047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.234587, 12.658236, 17.856991>,  <18.380081, 13.156178, 18.249352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.234587, 12.658236, 17.856991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.301128, 12.998151, 17.656918>,  <18.341053, 13.202100, 17.536873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.301128, 12.998151, 17.656918>,  <18.234587, 12.658236, 17.856991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.301128, 12.998151, 17.656918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481730, -0.512638, -0.710731,
		-0.860385, -0.122721, -0.494649,
		0.166355, 0.849789, -0.500184,
		18.351034, 13.253088, 17.506863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.861515, 12.674336, 17.260098>,  <18.234587, 12.658236, 17.856991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.861515, 12.674336, 17.260098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.187176, 12.899894, 17.204700>,  <18.382572, 13.035228, 17.171461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.187176, 12.899894, 17.204700>,  <17.861515, 12.674336, 17.260098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.187176, 12.899894, 17.204700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211484, -0.510103, -0.833708,
		-0.540769, 0.649476, -0.534556,
		0.814152, 0.563893, -0.138494,
		18.431421, 13.069062, 17.163153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.898186, 13.006356, 16.472412>,  <17.861515, 12.674336, 17.260098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.898186, 13.006356, 16.472412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.229160, 12.927929, 16.682899>,  <18.427746, 12.880873, 16.809191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.229160, 12.927929, 16.682899>,  <17.898186, 13.006356, 16.472412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.229160, 12.927929, 16.682899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298485, -0.640173, -0.707874,
		0.475661, 0.742789, -0.471180,
		0.827438, -0.196068, 0.526217,
		18.477392, 12.869108, 16.840765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.344078, 13.117692, 15.999665>,  <17.898186, 13.006356, 16.472412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.344078, 13.117692, 15.999665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.468859, 12.858388, 16.277498>,  <18.543728, 12.702806, 16.444199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.468859, 12.858388, 16.277498>,  <18.344078, 13.117692, 15.999665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.468859, 12.858388, 16.277498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192018, -0.672961, -0.714320,
		0.930491, 0.356207, -0.085455,
		0.311953, -0.648260, 0.694582,
		18.562445, 12.663910, 16.485872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.568407, 12.585841, 15.565134>,  <18.344078, 13.117692, 15.999665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.568407, 12.585841, 15.565134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.599581, 12.437819, 15.935429>,  <18.618284, 12.349007, 16.157604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.599581, 12.437819, 15.935429>,  <18.568407, 12.585841, 15.565134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.599581, 12.437819, 15.935429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199321, -0.904029, -0.378157,
		0.976831, 0.213989, 0.003306,
		0.077932, -0.370054, 0.925736,
		18.622961, 12.326803, 16.213150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.201427, 11.993749, 15.739598>,  <18.568407, 12.585841, 15.565134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.201427, 11.993749, 15.739598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.888227, 11.923941, 15.978414>,  <18.700308, 11.882056, 16.121702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.888227, 11.923941, 15.978414>,  <19.201427, 11.993749, 15.739598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.888227, 11.923941, 15.978414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103358, -0.982994, -0.151787,
		0.613374, -0.057141, 0.787723,
		-0.783000, -0.174520, 0.597037,
		18.653328, 11.871585, 16.157524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.204123, 11.398455, 16.373848>,  <19.201427, 11.993749, 15.739598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.204123, 11.398455, 16.373848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.854008, 11.454224, 16.188618>,  <18.643940, 11.487685, 16.077480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.854008, 11.454224, 16.188618>,  <19.204123, 11.398455, 16.373848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.854008, 11.454224, 16.188618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027101, -0.941895, -0.334812,
		-0.482847, -0.305606, 0.820648,
		-0.875285, 0.139423, -0.463074,
		18.591423, 11.496051, 16.049696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.751358, 10.808245, 16.151426>,  <19.204123, 11.398455, 16.373848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.751358, 10.808245, 16.151426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.821209, 11.014365, 16.487038>,  <19.863119, 11.138038, 16.688404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.821209, 11.014365, 16.487038>,  <19.751358, 10.808245, 16.151426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.821209, 11.014365, 16.487038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.984215, -0.066484, -0.164012,
		-0.028734, 0.854426, -0.518778,
		0.174626, 0.515302, 0.839029,
		19.873596, 11.168956, 16.738747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.389494, 11.134400, 15.993083>,  <19.751358, 10.808245, 16.151426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.389494, 11.134400, 15.993083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.416588, 10.741345, 15.923992>,  <20.432844, 10.505512, 15.882538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.416588, 10.741345, 15.923992>,  <20.389494, 11.134400, 15.993083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.416588, 10.741345, 15.923992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028163, 0.171172, -0.984838,
		0.997306, 0.071573, -0.016079,
		0.067735, -0.982638, -0.172727,
		20.436909, 10.446554, 15.872174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.900591, 11.091434, 15.538998>,  <20.389494, 11.134400, 15.993083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.900591, 11.091434, 15.538998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.714306, 10.741909, 15.483054>,  <20.602535, 10.532193, 15.449489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.714306, 10.741909, 15.483054>,  <20.900591, 11.091434, 15.538998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.714306, 10.741909, 15.483054> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168855, 0.067393, -0.983334,
		0.868677, -0.481566, 0.116162,
		-0.465712, -0.873815, -0.139858,
		20.574593, 10.479765, 15.441097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.340635, 10.718176, 15.191309>,  <20.900591, 11.091434, 15.538998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.340635, 10.718176, 15.191309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.005581, 10.516143, 15.108114>,  <20.804548, 10.394923, 15.058197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.005581, 10.516143, 15.108114>,  <21.340635, 10.718176, 15.191309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.005581, 10.516143, 15.108114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177720, 0.108050, -0.978131,
		0.516510, -0.856281, -0.000743,
		-0.837635, -0.505083, -0.207987,
		20.754290, 10.364618, 15.045718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.502092, 10.223279, 14.707850>,  <21.340635, 10.718176, 15.191309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.502092, 10.223279, 14.707850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.103788, 10.251112, 14.683781>,  <20.864805, 10.267812, 14.669339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.103788, 10.251112, 14.683781>,  <21.502092, 10.223279, 14.707850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.103788, 10.251112, 14.683781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062501, 0.031764, -0.997540,
		-0.067500, -0.997070, -0.035978,
		-0.995760, 0.069583, -0.060174,
		20.805061, 10.271986, 14.665729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.398695, 9.819834, 14.190710>,  <21.502092, 10.223279, 14.707850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.398695, 9.819834, 14.190710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.076908, 10.056416, 14.212676>,  <20.883837, 10.198364, 14.225856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.076908, 10.056416, 14.212676>,  <21.398695, 9.819834, 14.190710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.076908, 10.056416, 14.212676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049678, 0.159118, -0.986009,
		-0.591917, -0.790483, -0.157388,
		-0.804467, 0.591454, 0.054915,
		20.835567, 10.233851, 14.229151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.952938, 9.581172, 13.598780>,  <21.398695, 9.819834, 14.190710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.952938, 9.581172, 13.598780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.767868, 9.920972, 13.700196>,  <20.656826, 10.124851, 13.761046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.767868, 9.920972, 13.700196>,  <20.952938, 9.581172, 13.598780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.767868, 9.920972, 13.700196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168011, 0.196789, -0.965943,
		-0.870462, -0.489515, 0.051675,
		-0.462675, 0.849499, 0.253541,
		20.629066, 10.175821, 13.776258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.448847, 9.646600, 13.152551>,  <20.952938, 9.581172, 13.598780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.448847, 9.646600, 13.152551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.499058, 10.025509, 13.270477>,  <20.529184, 10.252854, 13.341233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.499058, 10.025509, 13.270477>,  <20.448847, 9.646600, 13.152551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.499058, 10.025509, 13.270477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051879, 0.290493, -0.955470,
		-0.990733, 0.135232, -0.012679,
		0.125527, 0.947273, 0.294816,
		20.536716, 10.309690, 13.358922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.904406, 10.047004, 12.736588>,  <20.448847, 9.646600, 13.152551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.904406, 10.047004, 12.736588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.197105, 10.296875, 12.845635>,  <20.372725, 10.446797, 12.911064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.197105, 10.296875, 12.845635>,  <19.904406, 10.047004, 12.736588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.197105, 10.296875, 12.845635> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023908, 0.376214, -0.926224,
		-0.681155, 0.684281, 0.260359,
		0.731749, 0.624678, 0.272621,
		20.416630, 10.484279, 12.927422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.507616, 10.773827, 12.759896>,  <19.904406, 10.047004, 12.736588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.507616, 10.773827, 12.759896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.898855, 10.848409, 12.722898>,  <20.133598, 10.893158, 12.700700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.898855, 10.848409, 12.722898>,  <19.507616, 10.773827, 12.759896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.898855, 10.848409, 12.722898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191483, 0.631930, -0.750999,
		-0.081578, 0.752263, 0.653793,
		0.978100, 0.186455, -0.092494,
		20.192286, 10.904346, 12.695150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.590860, 11.444724, 12.652674>,  <19.507616, 10.773827, 12.759896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.590860, 11.444724, 12.652674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.963287, 11.347876, 12.543502>,  <20.186743, 11.289766, 12.477999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.963287, 11.347876, 12.543502>,  <19.590860, 11.444724, 12.652674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.963287, 11.347876, 12.543502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022440, 0.784651, -0.619531,
		0.364156, 0.570701, 0.735996,
		0.931068, -0.242122, -0.272929,
		20.242607, 11.275239, 12.461623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.025652, 12.153604, 12.647722>,  <19.590860, 11.444724, 12.652674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.025652, 12.153604, 12.647722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.182257, 11.868872, 12.414478>,  <20.276220, 11.698032, 12.274532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.182257, 11.868872, 12.414478>,  <20.025652, 12.153604, 12.647722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.182257, 11.868872, 12.414478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273929, 0.695126, -0.664652,
		0.878454, 0.100489, 0.467140,
		0.391511, -0.711830, -0.583110,
		20.299709, 11.655323, 12.239546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.754454, 12.387325, 12.455795>,  <20.025652, 12.153604, 12.647722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.754454, 12.387325, 12.455795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.634924, 12.104136, 12.199834>,  <20.563206, 11.934223, 12.046257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.634924, 12.104136, 12.199834>,  <20.754454, 12.387325, 12.455795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.634924, 12.104136, 12.199834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468047, 0.475624, -0.744791,
		0.831646, -0.522068, 0.189236,
		-0.298826, -0.707973, -0.639904,
		20.545277, 11.891745, 12.007863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.362797, 12.420889, 12.074846>,  <20.754454, 12.387325, 12.455795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.362797, 12.420889, 12.074846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.093443, 12.218577, 11.859165>,  <20.931831, 12.097190, 11.729756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.093443, 12.218577, 11.859165>,  <21.362797, 12.420889, 12.074846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.093443, 12.218577, 11.859165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378759, 0.390335, -0.839154,
		0.634898, -0.769301, -0.071277,
		-0.673385, -0.505781, -0.539203,
		20.891428, 12.066843, 11.697405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.713511, 12.066022, 11.556408>,  <21.362797, 12.420889, 12.074846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.713511, 12.066022, 11.556408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.341879, 12.116207, 11.417227>,  <21.118900, 12.146318, 11.333718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.341879, 12.116207, 11.417227>,  <21.713511, 12.066022, 11.556408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.341879, 12.116207, 11.417227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369679, 0.346004, -0.862333,
		0.012201, -0.929807, -0.367847,
		-0.929079, 0.125464, -0.347952,
		21.063154, 12.153846, 11.312841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.703758, 12.043145, 10.870956>,  <21.713511, 12.066022, 11.556408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.703758, 12.043145, 10.870956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.340544, 12.205724, 10.911489>,  <21.122614, 12.303271, 10.935809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.340544, 12.205724, 10.911489>,  <21.703758, 12.043145, 10.870956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.340544, 12.205724, 10.911489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181029, 0.598917, -0.780081,
		-0.377751, -0.689999, -0.617418,
		-0.908038, 0.406447, 0.101332,
		21.068132, 12.327658, 10.941889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.391619, 11.967492, 10.350935>,  <21.703758, 12.043145, 10.870956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.391619, 11.967492, 10.350935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.184551, 12.281837, 10.486251>,  <21.060310, 12.470445, 10.567441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.184551, 12.281837, 10.486251>,  <21.391619, 11.967492, 10.350935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.184551, 12.281837, 10.486251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300970, 0.537383, -0.787805,
		-0.800898, -0.306005, -0.514707,
		-0.517667, 0.785863, 0.338291,
		21.029251, 12.517596, 10.587738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.970058, 12.282202, 9.683269>,  <21.391619, 11.967492, 10.350935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.970058, 12.282202, 9.683269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.997248, 12.547619, 9.981286>,  <21.013561, 12.706869, 10.160097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.997248, 12.547619, 9.981286>,  <20.970058, 12.282202, 9.683269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.997248, 12.547619, 9.981286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123480, 0.735435, -0.666249,
		-0.990016, 0.137284, -0.031945,
		0.067972, 0.663542, 0.745045,
		21.017639, 12.746681, 10.204800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.512836, 12.838700, 9.596327>,  <20.970058, 12.282202, 9.683269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.512836, 12.838700, 9.596327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.753603, 13.013761, 9.863508>,  <20.898062, 13.118797, 10.023817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.753603, 13.013761, 9.863508>,  <20.512836, 12.838700, 9.596327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.753603, 13.013761, 9.863508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143408, 0.763606, -0.629555,
		-0.785578, 0.474728, 0.396863,
		0.601914, 0.437651, 0.667953,
		20.934177, 13.145056, 10.063894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.398687, 13.612015, 9.516227>,  <20.512836, 12.838700, 9.596327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.398687, 13.612015, 9.516227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.738043, 13.588018, 9.726611>,  <20.941656, 13.573621, 9.852841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.738043, 13.588018, 9.726611>,  <20.398687, 13.612015, 9.516227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.738043, 13.588018, 9.726611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376864, 0.766194, -0.520500,
		-0.371762, 0.639803, 0.672641,
		0.848391, -0.059992, 0.525960,
		20.992559, 13.570021, 9.884399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.551224, 14.287711, 9.920929>,  <20.398687, 13.612015, 9.516227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.551224, 14.287711, 9.920929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.887405, 14.084127, 9.846526>,  <21.089115, 13.961977, 9.801885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.887405, 14.084127, 9.846526>,  <20.551224, 14.287711, 9.920929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.887405, 14.084127, 9.846526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341043, 0.763566, -0.548321,
		0.421102, 0.397402, 0.815319,
		0.840454, -0.508958, -0.186008,
		21.139542, 13.931440, 9.790724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.063601, 14.863956, 10.067826>,  <20.551224, 14.287711, 9.920929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.063601, 14.863956, 10.067826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.210175, 14.576522, 9.831400>,  <21.298119, 14.404061, 9.689544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.210175, 14.576522, 9.831400>,  <21.063601, 14.863956, 10.067826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.210175, 14.576522, 9.831400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569558, 0.675562, -0.468209,
		0.735750, -0.165078, 0.656826,
		0.366436, -0.718586, -0.591067,
		21.320105, 14.360947, 9.654079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.944773, 15.568974, 10.148953>,  <21.063601, 14.863956, 10.067826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.944773, 15.568974, 10.148953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.339710, 15.594853, 10.206870>,  <21.576674, 15.610381, 10.241620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.339710, 15.594853, 10.206870>,  <20.944773, 15.568974, 10.148953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.339710, 15.594853, 10.206870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150667, 0.667621, 0.729097,
		-0.049494, -0.741685, 0.668920,
		0.987345, 0.064698, 0.144791,
		21.635914, 15.614263, 10.250307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.021929, 15.521190, 10.788982>,  <20.944773, 15.568974, 10.148953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.021929, 15.521190, 10.788982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.331553, 15.739141, 10.660020>,  <21.517326, 15.869911, 10.582643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.331553, 15.739141, 10.660020>,  <21.021929, 15.521190, 10.788982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.331553, 15.739141, 10.660020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170579, 0.669891, 0.722599,
		0.609701, -0.504339, 0.611479,
		0.774059, 0.544875, -0.322404,
		21.563770, 15.902603, 10.563298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.210081, 15.782813, 11.431158>,  <21.021929, 15.521190, 10.788982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.210081, 15.782813, 11.431158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.373899, 16.003763, 11.140738>,  <21.472191, 16.136333, 10.966485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.373899, 16.003763, 11.140738>,  <21.210081, 15.782813, 11.431158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.373899, 16.003763, 11.140738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068776, 0.812288, 0.579188,
		0.909692, -0.187270, 0.370661,
		0.409548, 0.552375, -0.726053,
		21.496763, 16.169476, 10.922922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.828926, 16.310619, 11.723335>,  <21.210081, 15.782813, 11.431158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.828926, 16.310619, 11.723335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.658779, 16.444220, 11.386882>,  <21.556692, 16.524380, 11.185010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.658779, 16.444220, 11.386882>,  <21.828926, 16.310619, 11.723335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.658779, 16.444220, 11.386882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371560, 0.783018, 0.498824,
		0.825231, 0.524714, -0.208968,
		-0.425366, 0.334001, -0.841134,
		21.531170, 16.544420, 11.134542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.248850, 16.854753, 11.500633>,  <21.828926, 16.310619, 11.723335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.248850, 16.854753, 11.500633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.850496, 16.838886, 11.468023>,  <21.611485, 16.829367, 11.448457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.850496, 16.838886, 11.468023>,  <22.248850, 16.854753, 11.500633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.850496, 16.838886, 11.468023> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079515, 0.814136, 0.575204,
		0.043557, 0.579317, -0.813938,
		-0.995882, -0.039666, -0.081526,
		21.551731, 16.826986, 11.443565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.928122, 17.427576, 11.211519>,  <22.248850, 16.854753, 11.500633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.928122, 17.427576, 11.211519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.679850, 17.242264, 11.464541>,  <21.530886, 17.131077, 11.616355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.679850, 17.242264, 11.464541>,  <21.928122, 17.427576, 11.211519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.679850, 17.242264, 11.464541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012533, 0.812525, 0.582792,
		-0.783963, 0.353800, -0.510125,
		-0.620681, -0.463280, 0.632555,
		21.493645, 17.103279, 11.654308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.167543, 17.756123, 11.328907>,  <21.928122, 17.427576, 11.211519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.167543, 17.756123, 11.328907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.338863, 17.585651, 11.647637>,  <21.441656, 17.483368, 11.838876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.338863, 17.585651, 11.647637>,  <21.167543, 17.756123, 11.328907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.338863, 17.585651, 11.647637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029162, 0.887858, 0.459192,
		-0.903165, -0.173435, 0.392699,
		0.428301, -0.426178, 0.796825,
		21.467354, 17.457798, 11.886685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.454741, 18.113564, 11.965664>,  <21.167543, 17.756123, 11.328907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.454741, 18.113564, 11.965664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.560417, 18.479284, 12.088465>,  <21.623823, 18.698717, 12.162146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.560417, 18.479284, 12.088465>,  <21.454741, 18.113564, 11.965664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.560417, 18.479284, 12.088465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456902, -0.398975, 0.795022,
		0.849378, -0.069769, -0.523154,
		0.264193, 0.914304, 0.307003,
		21.639675, 18.753576, 12.180566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.143829, 18.179436, 12.138651>,  <21.454741, 18.113564, 11.965664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.143829, 18.179436, 12.138651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.933966, 18.445410, 12.351289>,  <21.808048, 18.604994, 12.478871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.933966, 18.445410, 12.351289>,  <22.143829, 18.179436, 12.138651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.933966, 18.445410, 12.351289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358473, -0.393825, 0.846404,
		0.772160, 0.634635, -0.031738,
		-0.524658, 0.664936, 0.531595,
		21.776567, 18.644890, 12.510767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.492783, 18.309046, 12.694098>,  <22.143829, 18.179436, 12.138651>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.492783, 18.309046, 12.694098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.115314, 18.367325, 12.812933>,  <21.888834, 18.402292, 12.884233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.115314, 18.367325, 12.812933>,  <22.492783, 18.309046, 12.694098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.115314, 18.367325, 12.812933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188095, -0.502468, 0.843888,
		0.272227, 0.852231, 0.446759,
		-0.943670, 0.145696, 0.297086,
		21.832214, 18.411034, 12.902059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.547421, 18.586977, 13.423268>,  <22.492783, 18.309046, 12.694098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.547421, 18.586977, 13.423268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.191542, 18.412472, 13.369434>,  <21.978014, 18.307770, 13.337134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.191542, 18.412472, 13.369434>,  <22.547421, 18.586977, 13.423268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.191542, 18.412472, 13.369434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082672, -0.443862, 0.892274,
		-0.449002, 0.782728, 0.430969,
		-0.889698, -0.436262, -0.134585,
		21.924633, 18.281593, 13.329059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.257196, 18.479519, 14.120214>,  <22.547421, 18.586977, 13.423268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.257196, 18.479519, 14.120214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.054688, 18.239050, 13.872899>,  <21.933182, 18.094769, 13.724510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.054688, 18.239050, 13.872899>,  <22.257196, 18.479519, 14.120214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.054688, 18.239050, 13.872899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091070, -0.675681, 0.731547,
		-0.857551, 0.426670, 0.287330,
		-0.506273, -0.601172, -0.618288,
		21.902805, 18.058699, 13.687412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.682720, 18.261528, 14.480432>,  <22.257196, 18.479519, 14.120214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.682720, 18.261528, 14.480432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.722673, 17.981050, 14.198056>,  <21.746645, 17.812763, 14.028631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.722673, 17.981050, 14.198056>,  <21.682720, 18.261528, 14.480432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.722673, 17.981050, 14.198056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130215, -0.694173, 0.707933,
		-0.986442, -0.162635, 0.021970,
		0.099884, -0.701195, -0.705938,
		21.752638, 17.770693, 13.986275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.381596, 17.668295, 14.675509>,  <21.682720, 18.261528, 14.480432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.381596, 17.668295, 14.675509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.636650, 17.536020, 14.397209>,  <21.789682, 17.456656, 14.230229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.636650, 17.536020, 14.397209>,  <21.381596, 17.668295, 14.675509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.636650, 17.536020, 14.397209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053236, -0.882099, 0.468046,
		-0.768497, -0.335482, -0.544853,
		0.637636, -0.330685, -0.695750,
		21.827940, 17.436815, 14.188484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.197060, 16.971035, 14.691675>,  <21.381596, 17.668295, 14.675509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.197060, 16.971035, 14.691675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.549175, 16.975229, 14.501946>,  <21.760445, 16.977745, 14.388109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.549175, 16.975229, 14.501946>,  <21.197060, 16.971035, 14.691675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.549175, 16.975229, 14.501946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220147, -0.894639, 0.388789,
		-0.420270, -0.446667, -0.789849,
		0.880289, 0.010486, -0.474322,
		21.813261, 16.978374, 14.359650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.369324, 16.291330, 14.604940>,  <21.197060, 16.971035, 14.691675>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.369324, 16.291330, 14.604940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.729237, 16.454273, 14.542389>,  <21.945185, 16.552038, 14.504858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.729237, 16.454273, 14.542389>,  <21.369324, 16.291330, 14.604940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.729237, 16.454273, 14.542389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433657, -0.795147, 0.423890,
		0.048329, -0.449223, -0.892112,
		0.899781, 0.407356, -0.156380,
		21.999170, 16.576481, 14.495475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.843834, 15.697008, 14.381396>,  <21.369324, 16.291330, 14.604940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.843834, 15.697008, 14.381396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.102262, 15.978808, 14.498885>,  <22.257320, 16.147888, 14.569378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.102262, 15.978808, 14.498885>,  <21.843834, 15.697008, 14.381396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.102262, 15.978808, 14.498885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554547, -0.697665, 0.453586,
		0.524471, -0.130166, -0.841420,
		0.646071, 0.704500, 0.293722,
		22.296083, 16.190159, 14.587002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.454527, 15.484506, 14.179133>,  <21.843834, 15.697008, 14.381396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.454527, 15.484506, 14.179133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.525431, 15.740287, 14.478380>,  <22.567974, 15.893755, 14.657928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.525431, 15.740287, 14.478380>,  <22.454527, 15.484506, 14.179133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.525431, 15.740287, 14.478380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.703983, -0.613587, 0.357658,
		0.687741, 0.463263, -0.558928,
		0.177261, 0.639452, 0.748118,
		22.578609, 15.932122, 14.702815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.166428, 15.752748, 14.124024>,  <22.454527, 15.484506, 14.179133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.166428, 15.752748, 14.124024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.074726, 15.808615, 14.509342>,  <23.019705, 15.842135, 14.740533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.074726, 15.808615, 14.509342>,  <23.166428, 15.752748, 14.124024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.074726, 15.808615, 14.509342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.744461, -0.612405, 0.265965,
		0.627073, 0.778109, 0.036418,
		-0.229252, 0.139668, 0.963294,
		23.005951, 15.850515, 14.798330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.827679, 15.669731, 14.523065>,  <23.166428, 15.752748, 14.124024>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.827679, 15.669731, 14.523065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.544497, 15.682967, 14.805257>,  <23.374588, 15.690908, 14.974572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.544497, 15.682967, 14.805257>,  <23.827679, 15.669731, 14.523065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.544497, 15.682967, 14.805257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482377, -0.706957, 0.517228,
		0.515860, 0.706482, 0.484532,
		-0.707956, 0.033090, 0.705481,
		23.332109, 15.692894, 15.016901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.281191, 15.716305, 15.052156>,  <23.827679, 15.669731, 14.523065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.281191, 15.716305, 15.052156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.922070, 15.570981, 15.151719>,  <23.706596, 15.483787, 15.211456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.922070, 15.570981, 15.151719>,  <24.281191, 15.716305, 15.052156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.922070, 15.570981, 15.151719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438374, -0.791356, 0.426126,
		0.042158, 0.491691, 0.869748,
		-0.897803, -0.363310, 0.248907,
		23.652729, 15.461987, 15.226391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.356594, 15.549717, 15.720897>,  <24.281191, 15.716305, 15.052156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.356594, 15.549717, 15.720897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.037413, 15.331888, 15.617583>,  <23.845903, 15.201191, 15.555595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.037413, 15.331888, 15.617583>,  <24.356594, 15.549717, 15.720897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.037413, 15.331888, 15.617583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414762, -0.807068, 0.420254,
		-0.437310, 0.228219, 0.869871,
		-0.797955, -0.544571, -0.258282,
		23.798025, 15.168517, 15.540098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.076332, 15.318285, 16.387321>,  <24.356594, 15.549717, 15.720897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.076332, 15.318285, 16.387321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.996248, 15.082484, 16.074297>,  <23.948198, 14.941004, 15.886482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.996248, 15.082484, 16.074297>,  <24.076332, 15.318285, 16.387321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.996248, 15.082484, 16.074297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392301, -0.780144, 0.487315,
		-0.897784, -0.209434, 0.387455,
		-0.200210, -0.589503, -0.782562,
		23.936186, 14.905634, 15.839528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.797955, 14.676315, 16.579056>,  <24.076332, 15.318285, 16.387321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.797955, 14.676315, 16.579056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.946758, 14.601093, 16.215464>,  <24.036041, 14.555961, 15.997309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.946758, 14.601093, 16.215464>,  <23.797955, 14.676315, 16.579056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.946758, 14.601093, 16.215464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397932, -0.852402, 0.339207,
		-0.838605, -0.487901, -0.242271,
		0.372011, -0.188054, -0.908979,
		24.058361, 14.544677, 15.942770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.499521, 14.100765, 16.195320>,  <23.797955, 14.676315, 16.579056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.499521, 14.100765, 16.195320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.898411, 14.071836, 16.188251>,  <24.137745, 14.054479, 16.184010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.898411, 14.071836, 16.188251>,  <23.499521, 14.100765, 16.195320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.898411, 14.071836, 16.188251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063538, -0.950459, 0.304288,
		-0.038803, -0.302321, -0.952416,
		0.997225, -0.072322, -0.017672,
		24.197578, 14.050139, 16.182949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.706543, 13.569902, 15.800725>,  <23.499521, 14.100765, 16.195320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.706543, 13.569902, 15.800725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.991562, 13.603446, 16.079363>,  <24.162573, 13.623572, 16.246546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.991562, 13.603446, 16.079363>,  <23.706543, 13.569902, 15.800725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.991562, 13.603446, 16.079363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191329, -0.931980, 0.307908,
		0.675033, -0.352678, -0.648035,
		0.712547, 0.083860, 0.696595,
		24.205326, 13.628604, 16.288342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.227222, 12.917143, 15.790955>,  <23.706543, 13.569902, 15.800725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.227222, 12.917143, 15.790955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.195574, 13.097080, 16.146793>,  <24.176584, 13.205043, 16.360296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.195574, 13.097080, 16.146793>,  <24.227222, 12.917143, 15.790955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.195574, 13.097080, 16.146793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085347, -0.892174, 0.443556,
		0.993205, -0.040829, 0.108984,
		-0.079122, 0.449843, 0.889596,
		24.171837, 13.232033, 16.413671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.745155, 12.819582, 16.269371>,  <24.227222, 12.917143, 15.790955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.745155, 12.819582, 16.269371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.406815, 12.885437, 16.472322>,  <24.203810, 12.924951, 16.594093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.406815, 12.885437, 16.472322>,  <24.745155, 12.819582, 16.269371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.406815, 12.885437, 16.472322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073182, -0.906366, 0.416107,
		0.528377, 0.389095, 0.754601,
		-0.845850, 0.164639, 0.507378,
		24.153059, 12.934829, 16.624537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.964987, 13.254850, 15.560748>,  <24.745155, 12.819582, 16.269371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.964987, 13.254850, 15.560748> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.778019, 13.383400, 15.890169>,  <24.665838, 13.460529, 16.087822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.778019, 13.383400, 15.890169>,  <24.964987, 13.254850, 15.560748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.778019, 13.383400, 15.890169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.616671, 0.786031, 0.043270,
		-0.633431, 0.528086, -0.565589,
		-0.467420, 0.321374, 0.823552,
		24.637793, 13.479813, 16.137234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.800798, 14.026099, 15.548991>,  <24.964987, 13.254850, 15.560748>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.800798, 14.026099, 15.548991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.881008, 13.892169, 15.917270>,  <24.929134, 13.811810, 16.138237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.881008, 13.892169, 15.917270>,  <24.800798, 14.026099, 15.548991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.881008, 13.892169, 15.917270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.604324, 0.781958, 0.152754,
		-0.771092, 0.525769, 0.359143,
		0.200522, -0.334826, 0.920697,
		24.941164, 13.791721, 16.193480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.413088, 14.333162, 15.927374>,  <24.800798, 14.026099, 15.548991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.413088, 14.333162, 15.927374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.734379, 14.120544, 16.034922>,  <25.927153, 13.992974, 16.099451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.734379, 14.120544, 16.034922>,  <25.413088, 14.333162, 15.927374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.734379, 14.120544, 16.034922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505524, 0.847022, 0.164317,
		-0.315080, 0.003936, 0.949057,
		0.803225, -0.531544, 0.268869,
		25.975346, 13.961082, 16.115582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.069677, 14.251482, 15.617659>,  <25.413088, 14.333162, 15.927374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.069677, 14.251482, 15.617659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.208248, 14.016737, 15.324925>,  <26.291391, 13.875890, 15.149285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.208248, 14.016737, 15.324925>,  <26.069677, 14.251482, 15.617659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.208248, 14.016737, 15.324925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501994, -0.775017, 0.383863,
		-0.792459, 0.234396, -0.563088,
		0.346427, -0.586862, -0.731834,
		26.312176, 13.840678, 15.105375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.342491, 14.741012, 15.263009>,  <26.069677, 14.251482, 15.617659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.342491, 14.741012, 15.263009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.645464, 14.677424, 15.009703>,  <26.827248, 14.639272, 14.857719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.645464, 14.677424, 15.009703>,  <26.342491, 14.741012, 15.263009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.645464, 14.677424, 15.009703> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055609, 0.950676, -0.305160,
		0.650541, 0.266354, 0.711233,
		0.757433, -0.158968, -0.633265,
		26.872694, 14.629734, 14.819723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.801619, 15.176308, 15.406797>,  <26.342491, 14.741012, 15.263009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.801619, 15.176308, 15.406797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.841608, 15.115136, 15.013531>,  <26.865602, 15.078433, 14.777571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.841608, 15.115136, 15.013531>,  <26.801619, 15.176308, 15.406797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.841608, 15.115136, 15.013531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072698, 0.984354, -0.160505,
		0.992331, 0.087520, 0.087293,
		0.099974, -0.152928, -0.983168,
		26.871601, 15.069258, 14.718580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<14.342457, 22.302319, 20.745630> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.950680, 22.286842, 20.824821>,  <13.715613, 22.277557, 20.872335>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.950680, 22.286842, 20.824821>,  <14.342457, 22.302319, 20.745630>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.950680, 22.286842, 20.824821> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139278, -0.580259, -0.802434,
		0.145925, -0.813512, 0.562942,
		-0.979442, -0.038690, 0.197979,
		13.656847, 22.275236, 20.884214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.147717, 21.598726, 20.545624>,  <14.342457, 22.302319, 20.745630>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.147717, 21.598726, 20.545624> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.806999, 21.807602, 20.562416>,  <13.602569, 21.932928, 20.572493>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.806999, 21.807602, 20.562416>,  <14.147717, 21.598726, 20.545624>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.806999, 21.807602, 20.562416> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432379, -0.655520, -0.619146,
		-0.295792, -0.545538, 0.784153,
		-0.851796, 0.522190, 0.041982,
		13.551460, 21.964258, 20.575010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.718853, 21.138052, 20.775703>,  <14.147717, 21.598726, 20.545624>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.718853, 21.138052, 20.775703> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.498046, 21.414043, 20.588427>,  <13.365561, 21.579639, 20.476061>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.498046, 21.414043, 20.588427>,  <13.718853, 21.138052, 20.775703>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.498046, 21.414043, 20.588427> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355836, -0.702731, -0.616077,
		-0.754095, -0.173484, 0.633438,
		-0.552016, 0.689981, -0.468194,
		13.332440, 21.621037, 20.447969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.056953, 20.775238, 20.619869>,  <13.718853, 21.138052, 20.775703>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.056953, 20.775238, 20.619869> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.052627, 21.089693, 20.372686>,  <13.050031, 21.278366, 20.224377>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.052627, 21.089693, 20.372686>,  <13.056953, 20.775238, 20.619869>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.052627, 21.089693, 20.372686> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365798, -0.578270, -0.729243,
		-0.930631, 0.218161, 0.293822,
		-0.010816, 0.786136, -0.617959,
		13.049382, 21.325533, 20.187298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.353764, 20.859692, 20.312193>,  <13.056953, 20.775238, 20.619869>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.353764, 20.859692, 20.312193> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.594851, 21.044516, 20.051968>,  <12.739503, 21.155411, 19.895832>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.594851, 21.044516, 20.051968>,  <12.353764, 20.859692, 20.312193>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.594851, 21.044516, 20.051968> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307654, -0.617694, -0.723742,
		-0.736262, 0.636360, -0.230140,
		0.602716, 0.462060, -0.650564,
		12.775665, 21.183134, 19.856798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.002069, 20.781334, 19.693562>,  <12.353764, 20.859692, 20.312193>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.002069, 20.781334, 19.693562> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.375693, 20.876335, 19.586884>,  <12.599868, 20.933336, 19.522877>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.375693, 20.876335, 19.586884>,  <12.002069, 20.781334, 19.693562>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.375693, 20.876335, 19.586884> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061633, -0.628379, -0.775462,
		-0.351760, 0.740764, -0.572305,
		0.934059, 0.237504, -0.266695,
		12.655911, 20.947586, 19.506876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.989737, 20.902077, 18.969986>,  <12.002069, 20.781334, 19.693562>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.989737, 20.902077, 18.969986> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.377563, 20.825752, 19.031353>,  <12.610258, 20.779957, 19.068172>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.377563, 20.825752, 19.031353>,  <11.989737, 20.902077, 18.969986>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.377563, 20.825752, 19.031353> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014182, -0.669322, -0.742837,
		0.244427, 0.718053, -0.651657,
		0.969564, -0.190811, 0.153417,
		12.668432, 20.768509, 19.077377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.368793, 20.853462, 18.172243>,  <11.989737, 20.902077, 18.969986>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.368793, 20.853462, 18.172243> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.584272, 20.672937, 18.456814>,  <12.713559, 20.564623, 18.627556>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.584272, 20.672937, 18.456814>,  <12.368793, 20.853462, 18.172243>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.584272, 20.672937, 18.456814> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121278, -0.794087, -0.595582,
		0.833725, 0.407118, -0.373037,
		0.538696, -0.451311, 0.711425,
		12.745881, 20.537544, 18.670240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.996557, 20.572231, 17.911200>,  <12.368793, 20.853462, 18.172243>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.996557, 20.572231, 17.911200> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.926631, 20.367182, 18.247452>,  <12.884675, 20.244152, 18.449203>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.926631, 20.367182, 18.247452>,  <12.996557, 20.572231, 17.911200>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.926631, 20.367182, 18.247452> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349286, -0.830536, -0.433832,
		0.920565, 0.217780, 0.324242,
		-0.174814, -0.512623, 0.840629,
		12.874187, 20.213394, 18.499641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.570793, 20.274954, 17.942978>,  <12.996557, 20.572231, 17.911200>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.570793, 20.274954, 17.942978> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.337433, 20.071457, 18.196220>,  <13.197417, 19.949358, 18.348166>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.337433, 20.071457, 18.196220>,  <13.570793, 20.274954, 17.942978>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.337433, 20.071457, 18.196220> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314916, -0.860222, -0.401056,
		0.748647, -0.034600, 0.662065,
		-0.583400, -0.508744, 0.633106,
		13.162413, 19.918833, 18.386152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.995494, 19.833641, 18.253775>,  <13.570793, 20.274954, 17.942978>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.995494, 19.833641, 18.253775> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.630655, 19.682461, 18.317312>,  <13.411752, 19.591753, 18.355434>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.630655, 19.682461, 18.317312>,  <13.995494, 19.833641, 18.253775>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.630655, 19.682461, 18.317312> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308637, -0.888040, -0.340777,
		0.269856, -0.261796, 0.926629,
		-0.912097, -0.377953, 0.158843,
		13.357026, 19.569075, 18.364965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.102911, 19.276100, 18.533901>,  <13.995494, 19.833641, 18.253775>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.102911, 19.276100, 18.533901> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.735372, 19.257277, 18.377184>,  <13.514848, 19.245981, 18.283154>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.735372, 19.257277, 18.377184>,  <14.102911, 19.276100, 18.533901>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.735372, 19.257277, 18.377184> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157172, -0.954356, -0.253972,
		-0.361958, -0.294941, 0.884306,
		-0.918849, -0.047061, -0.391793,
		13.459717, 19.243158, 18.259645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.925456, 18.620640, 18.733438>,  <14.102911, 19.276100, 18.533901>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.925456, 18.620640, 18.733438> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.694593, 18.728601, 18.425142>,  <13.556076, 18.793379, 18.240164>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.694593, 18.728601, 18.425142>,  <13.925456, 18.620640, 18.733438>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.694593, 18.728601, 18.425142> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118811, -0.906008, -0.406243,
		-0.807946, -0.326037, 0.490840,
		-0.577155, 0.269905, -0.770742,
		13.521447, 18.809572, 18.193920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.628195, 17.972488, 18.579479>,  <13.925456, 18.620640, 18.733438>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.628195, 17.972488, 18.579479> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.567012, 18.196339, 18.253675>,  <13.530302, 18.330648, 18.058193>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.567012, 18.196339, 18.253675>,  <13.628195, 17.972488, 18.579479>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.567012, 18.196339, 18.253675> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000080, -0.824214, -0.566278,
		-0.988233, -0.086551, 0.126115,
		-0.152958, 0.559624, -0.814508,
		13.521125, 18.364225, 18.009323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.052916, 17.753820, 18.259773>,  <13.628195, 17.972488, 18.579479>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.052916, 17.753820, 18.259773> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.251685, 17.950310, 17.973623>,  <13.370947, 18.068203, 17.801933>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.251685, 17.950310, 17.973623>,  <13.052916, 17.753820, 18.259773>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.251685, 17.950310, 17.973623> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087299, -0.848478, -0.521980,
		-0.863392, 0.196933, -0.464513,
		0.496924, 0.491225, -0.715377,
		13.400763, 18.097677, 17.759010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.748022, 17.583023, 17.663050>,  <13.052916, 17.753820, 18.259773>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.748022, 17.583023, 17.663050> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.119188, 17.702703, 17.574097>,  <13.341887, 17.774511, 17.520725>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.119188, 17.702703, 17.574097>,  <12.748022, 17.583023, 17.663050>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.119188, 17.702703, 17.574097> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173371, -0.874444, -0.453089,
		-0.330025, 0.381873, -0.863282,
		0.927915, 0.299199, -0.222383,
		13.397563, 17.792463, 17.507381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.875011, 17.227663, 17.117895>,  <12.748022, 17.583023, 17.663050>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.875011, 17.227663, 17.117895> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.248816, 17.345226, 17.198204>,  <13.473098, 17.415764, 17.246389>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.248816, 17.345226, 17.198204>,  <12.875011, 17.227663, 17.117895>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.248816, 17.345226, 17.198204> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355280, -0.735936, -0.576346,
		-0.021639, 0.609931, -0.792159,
		0.934509, 0.293910, 0.200772,
		13.529168, 17.433399, 17.258436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.300538, 16.932135, 16.601757>,  <12.875011, 17.227663, 17.117895>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.300538, 16.932135, 16.601757> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.585027, 17.045643, 16.859016>,  <13.755720, 17.113749, 17.013372>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.585027, 17.045643, 16.859016>,  <13.300538, 16.932135, 16.601757>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.585027, 17.045643, 16.859016> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582266, -0.750418, -0.312794,
		0.393868, 0.596949, -0.698942,
		0.711221, 0.283770, 0.643148,
		13.798393, 17.130774, 17.051960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.918704, 17.123274, 16.307413>,  <13.300538, 16.932135, 16.601757>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.918704, 17.123274, 16.307413> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.007925, 16.999578, 16.677195>,  <14.061458, 16.925362, 16.899063>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.007925, 16.999578, 16.677195>,  <13.918704, 17.123274, 16.307413>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.007925, 16.999578, 16.677195> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.635670, -0.672833, -0.378443,
		0.739034, 0.672061, 0.046497,
		0.223052, -0.309239, 0.924456,
		14.074841, 16.906807, 16.954531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.595779, 16.954668, 16.269468>,  <13.918704, 17.123274, 16.307413>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.595779, 16.954668, 16.269468> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.493350, 16.768888, 16.608576>,  <14.431892, 16.657421, 16.812040>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.493350, 16.768888, 16.608576>,  <14.595779, 16.954668, 16.269468>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.493350, 16.768888, 16.608576> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.583901, -0.773256, -0.247254,
		0.770381, 0.431699, 0.469201,
		-0.256073, -0.464447, 0.847771,
		14.416528, 16.629555, 16.862907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.160572, 16.589867, 16.407459>,  <14.595779, 16.954668, 16.269468>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.160572, 16.589867, 16.407459> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.903925, 16.395533, 16.644876>,  <14.749937, 16.278933, 16.787327>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.903925, 16.395533, 16.644876>,  <15.160572, 16.589867, 16.407459>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.903925, 16.395533, 16.644876> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421904, -0.869785, -0.255873,
		0.640565, 0.086245, 0.763045,
		-0.641618, -0.485835, 0.593541,
		14.711439, 16.249783, 16.822939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.491303, 16.211977, 16.872532>,  <15.160572, 16.589867, 16.407459>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.491303, 16.211977, 16.872532> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.142386, 16.029190, 16.802921>,  <14.933036, 15.919518, 16.761154>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.142386, 16.029190, 16.802921>,  <15.491303, 16.211977, 16.872532>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.142386, 16.029190, 16.802921> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487073, -0.843430, -0.226685,
		-0.043192, -0.282499, 0.958294,
		-0.872293, -0.456968, -0.174027,
		14.880698, 15.892099, 16.750713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.088030, 16.099808, 16.513939>,  <15.491303, 16.211977, 16.872532>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.088030, 16.099808, 16.513939> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.482897, 16.104065, 16.450205>,  <16.719816, 16.106619, 16.411964>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.482897, 16.104065, 16.450205>,  <16.088030, 16.099808, 16.513939>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.482897, 16.104065, 16.450205> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123701, 0.580019, 0.805155,
		0.100986, -0.814533, 0.571260,
		0.987168, 0.010644, -0.159333,
		16.779047, 16.107258, 16.402405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.277658, 16.139746, 17.141609>,  <16.088030, 16.099808, 16.513939>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.277658, 16.139746, 17.141609> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.621981, 16.240063, 16.964468>,  <16.828573, 16.300253, 16.858183>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.621981, 16.240063, 16.964468>,  <16.277658, 16.139746, 17.141609>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.621981, 16.240063, 16.964468> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294180, 0.464873, 0.835076,
		0.415304, -0.849114, 0.326385,
		0.860802, 0.250795, -0.442856,
		16.880222, 16.315300, 16.831612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.686852, 16.166437, 17.686487>,  <16.277658, 16.139746, 17.141609>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.686852, 16.166437, 17.686487> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.854866, 16.372526, 17.387659>,  <16.955675, 16.496180, 17.208363>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.854866, 16.372526, 17.387659>,  <16.686852, 16.166437, 17.686487>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.854866, 16.372526, 17.387659> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299992, 0.698103, 0.650121,
		0.856491, -0.497188, 0.138664,
		0.420034, 0.515225, -0.747071,
		16.980877, 16.527094, 17.163538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.389816, 16.556982, 17.955410>,  <16.686852, 16.166437, 17.686487>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.389816, 16.556982, 17.955410> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.267056, 16.752291, 17.628632>,  <17.193399, 16.869476, 17.432564>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.267056, 16.752291, 17.628632>,  <17.389816, 16.556982, 17.955410>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.267056, 16.752291, 17.628632> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130091, 0.871837, 0.472204,
		0.942808, 0.038644, -0.331090,
		-0.306904, 0.488270, -0.816947,
		17.174984, 16.898771, 17.383547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.867344, 17.055101, 17.797485>,  <17.389816, 16.556982, 17.955410>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.867344, 17.055101, 17.797485> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.529760, 17.172915, 17.618162>,  <17.327209, 17.243603, 17.510569>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.529760, 17.172915, 17.618162>,  <17.867344, 17.055101, 17.797485>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.529760, 17.172915, 17.618162> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011556, 0.825588, 0.564155,
		0.536282, 0.481304, -0.693360,
		-0.843960, 0.294534, -0.448310,
		17.276573, 17.261274, 17.483669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.985477, 17.781734, 17.719408>,  <17.867344, 17.055101, 17.797485>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.985477, 17.781734, 17.719408> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.594326, 17.702274, 17.693190>,  <17.359636, 17.654598, 17.677458>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.594326, 17.702274, 17.693190>,  <17.985477, 17.781734, 17.719408>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.594326, 17.702274, 17.693190> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207112, 0.875447, 0.436690,
		-0.029365, 0.440604, -0.897221,
		-0.977876, -0.198649, -0.065546,
		17.300962, 17.642679, 17.673525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.711706, 18.408209, 17.758497>,  <17.985477, 17.781734, 17.719408>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.711706, 18.408209, 17.758497> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.365063, 18.213549, 17.802610>,  <17.157078, 18.096752, 17.829079>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.365063, 18.213549, 17.802610>,  <17.711706, 18.408209, 17.758497>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.365063, 18.213549, 17.802610> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314083, 0.703724, 0.637279,
		-0.387743, 0.517632, -0.762701,
		-0.866607, -0.486651, 0.110285,
		17.105080, 18.067553, 17.835695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.076477, 18.910702, 17.642290>,  <17.711706, 18.408209, 17.758497>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.076477, 18.910702, 17.642290> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.956631, 18.592207, 17.852524>,  <16.884722, 18.401110, 17.978664>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.956631, 18.592207, 17.852524>,  <17.076477, 18.910702, 17.642290>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.956631, 18.592207, 17.852524> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415015, 0.604813, 0.679679,
		-0.859064, -0.014482, -0.511663,
		-0.299617, -0.796236, 0.525583,
		16.866745, 18.353336, 18.010199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.382542, 18.996243, 17.759005>,  <17.076477, 18.910702, 17.642290>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.382542, 18.996243, 17.759005> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.512228, 18.743561, 18.040667>,  <16.590040, 18.591951, 18.209663>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.512228, 18.743561, 18.040667>,  <16.382542, 18.996243, 17.759005>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.512228, 18.743561, 18.040667> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184416, 0.687873, 0.702012,
		-0.927833, -0.357462, 0.106524,
		0.324217, -0.631705, 0.704153,
		16.609493, 18.554049, 18.251913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.836907, 19.031250, 18.334072>,  <16.382542, 18.996243, 17.759005>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.836907, 19.031250, 18.334072> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.175463, 18.882145, 18.486217>,  <16.378595, 18.792683, 18.577505>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.175463, 18.882145, 18.486217>,  <15.836907, 19.031250, 18.334072>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.175463, 18.882145, 18.486217> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082565, 0.613726, 0.785190,
		-0.526128, -0.695980, 0.488673,
		0.846388, -0.372764, 0.380362,
		16.429379, 18.770315, 18.600327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.605951, 19.103809, 19.117809>,  <15.836907, 19.031250, 18.334072>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.605951, 19.103809, 19.117809> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.999279, 19.043951, 19.076456>,  <16.235275, 19.008036, 19.051643>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.999279, 19.043951, 19.076456>,  <15.605951, 19.103809, 19.117809>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.999279, 19.043951, 19.076456> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171387, 0.572028, 0.802128,
		-0.060895, -0.806468, 0.588134,
		0.983320, -0.149644, -0.103385,
		16.294275, 18.999058, 19.045441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.989615, 18.967203, 19.819347>,  <15.605951, 19.103809, 19.117809>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.989615, 18.967203, 19.819347> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.258951, 19.100510, 19.555363>,  <16.420553, 19.180494, 19.396973>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.258951, 19.100510, 19.555363>,  <15.989615, 18.967203, 19.819347>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.258951, 19.100510, 19.555363> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193043, 0.782428, 0.592065,
		0.713686, -0.526062, 0.462505,
		0.673339, 0.333265, -0.659960,
		16.460953, 19.200489, 19.357374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.378124, 19.242275, 20.218157>,  <15.989615, 18.967203, 19.819347>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.378124, 19.242275, 20.218157> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.477217, 19.425386, 19.876616>,  <16.536673, 19.535254, 19.671690>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.477217, 19.425386, 19.876616>,  <16.378124, 19.242275, 20.218157>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.477217, 19.425386, 19.876616> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043313, 0.875213, 0.481794,
		0.967860, -0.156339, 0.196991,
		0.247732, 0.457777, -0.853855,
		16.551537, 19.562719, 19.620459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.878807, 19.747690, 20.390570>,  <16.378124, 19.242275, 20.218157>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.878807, 19.747690, 20.390570> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.744328, 19.859400, 20.030798>,  <16.663641, 19.926426, 19.814934>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.744328, 19.859400, 20.030798>,  <16.878807, 19.747690, 20.390570>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.744328, 19.859400, 20.030798> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111816, 0.936431, 0.332558,
		0.935130, 0.212376, -0.283599,
		-0.336198, 0.279274, -0.899431,
		16.643469, 19.943182, 19.760969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.291660, 20.429028, 20.251965>,  <16.878807, 19.747690, 20.390570>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.291660, 20.429028, 20.251965> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.987053, 20.416264, 19.993023>,  <16.804289, 20.408606, 19.837658>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.987053, 20.416264, 19.993023>,  <17.291660, 20.429028, 20.251965>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.987053, 20.416264, 19.993023> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308762, 0.896034, 0.319044,
		0.569871, 0.442837, -0.692201,
		-0.761520, -0.031912, -0.647355,
		16.758596, 20.406691, 19.798817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.330219, 20.955378, 19.829521>,  <17.291660, 20.429028, 20.251965>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.330219, 20.955378, 19.829521> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.948042, 20.841621, 19.861139>,  <16.718735, 20.773367, 19.880110>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.948042, 20.841621, 19.861139>,  <17.330219, 20.955378, 19.829521>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.948042, 20.841621, 19.861139> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249151, 0.920616, 0.300650,
		-0.158273, 0.267560, -0.950453,
		-0.955444, -0.284391, 0.079046,
		16.661409, 20.756304, 19.884853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.027514, 21.571733, 19.822554>,  <17.330219, 20.955378, 19.829521>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.027514, 21.571733, 19.822554> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.734354, 21.330145, 19.947823>,  <16.558458, 21.185192, 20.022984>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.734354, 21.330145, 19.947823>,  <17.027514, 21.571733, 19.822554>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.734354, 21.330145, 19.947823> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394702, 0.752402, 0.527353,
		-0.554138, 0.262886, -0.789824,
		-0.732899, -0.603971, 0.313173,
		16.514484, 21.148954, 20.041775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.390051, 21.889845, 19.736259>,  <17.027514, 21.571733, 19.822554>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.390051, 21.889845, 19.736259> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.346304, 21.623962, 20.031881>,  <16.320055, 21.464434, 20.209255>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.346304, 21.623962, 20.031881>,  <16.390051, 21.889845, 19.736259>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.346304, 21.623962, 20.031881> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307854, 0.729610, 0.610652,
		-0.945127, -0.160736, -0.284428,
		-0.109368, -0.664706, 0.739057,
		16.313494, 21.424551, 20.253599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<15.733415, 21.996855, 20.009329> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.919873, 21.792540, 20.298273>,  <16.031748, 21.669950, 20.471640>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.919873, 21.792540, 20.298273>,  <15.733415, 21.996855, 20.009329>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.919873, 21.792540, 20.298273> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269963, 0.695430, 0.665955,
		-0.842513, -0.505443, 0.186278,
		0.466146, -0.510788, 0.722360,
		16.059717, 21.639303, 20.514980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.342151, 22.093960, 20.473597>,  <15.733415, 21.996855, 20.009329>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.342151, 22.093960, 20.473597> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.653701, 21.963646, 20.687967>,  <15.840631, 21.885458, 20.816589>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.653701, 21.963646, 20.687967>,  <15.342151, 22.093960, 20.473597>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.653701, 21.963646, 20.687967> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260277, 0.609544, 0.748807,
		-0.570622, -0.722716, 0.389964,
		0.778875, -0.325787, 0.535926,
		15.887363, 21.865910, 20.848745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.076865, 22.105268, 21.137688>,  <15.342151, 22.093960, 20.473597>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.076865, 22.105268, 21.137688> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.474915, 22.101444, 21.176954>,  <15.713744, 22.099150, 21.200514>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.474915, 22.101444, 21.176954>,  <15.076865, 22.105268, 21.137688>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.474915, 22.101444, 21.176954> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085612, 0.410469, 0.907847,
		-0.048971, -0.911825, 0.407649,
		0.995124, -0.009559, 0.098165,
		15.773452, 22.098577, 21.206404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.128734, 21.964134, 21.782356>,  <15.076865, 22.105268, 21.137688>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.128734, 21.964134, 21.782356> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.464330, 22.157768, 21.682951>,  <15.665688, 22.273949, 21.623308>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.464330, 22.157768, 21.682951>,  <15.128734, 21.964134, 21.782356>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.464330, 22.157768, 21.682951> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080029, 0.561509, 0.823591,
		0.538228, -0.671098, 0.509842,
		0.838991, 0.484082, -0.248513,
		15.716026, 22.302994, 21.608397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.515511, 21.904413, 22.371647>,  <15.128734, 21.964134, 21.782356>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.515511, 21.904413, 22.371647> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.667454, 22.210003, 22.163013>,  <15.758619, 22.393356, 22.037832>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.667454, 22.210003, 22.163013>,  <15.515511, 21.904413, 22.371647>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.667454, 22.210003, 22.163013> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173331, 0.612645, 0.771118,
		0.908661, -0.202508, 0.365138,
		0.379858, 0.763974, -0.521586,
		15.781411, 22.439196, 22.006538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.014719, 22.208347, 22.760439>,  <15.515511, 21.904413, 22.371647>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.014719, 22.208347, 22.760439> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.887777, 22.480749, 22.496464>,  <15.811612, 22.644190, 22.338079>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.887777, 22.480749, 22.496464>,  <16.014719, 22.208347, 22.760439>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.887777, 22.480749, 22.496464> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128924, 0.658466, 0.741485,
		0.939502, 0.320396, -0.121169,
		-0.317355, 0.681006, -0.659937,
		15.792571, 22.685051, 22.298483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.342558, 22.896635, 22.956755>,  <16.014719, 22.208347, 22.760439>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.342558, 22.896635, 22.956755> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.072084, 23.034517, 22.696308>,  <15.909801, 23.117247, 22.540039>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.072084, 23.034517, 22.696308>,  <16.342558, 22.896635, 22.956755>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.072084, 23.034517, 22.696308> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136835, 0.809653, 0.570735,
		0.723914, 0.475017, -0.500307,
		-0.676184, 0.344704, -0.651118,
		15.869229, 23.137928, 22.500973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.539907, 23.571552, 22.870079>,  <16.342558, 22.896635, 22.956755>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.539907, 23.571552, 22.870079> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.154593, 23.562420, 22.763077>,  <15.923404, 23.556940, 22.698875>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.154593, 23.562420, 22.763077>,  <16.539907, 23.571552, 22.870079>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.154593, 23.562420, 22.763077> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182563, 0.786273, 0.590292,
		0.196856, 0.617457, -0.761574,
		-0.963285, -0.022832, -0.267507,
		15.865607, 23.555571, 22.682825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.353064, 24.252846, 22.553265>,  <16.539907, 23.571552, 22.870079>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.353064, 24.252846, 22.553265> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.006111, 24.098217, 22.678619>,  <15.797940, 24.005440, 22.753832>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.006111, 24.098217, 22.678619>,  <16.353064, 24.252846, 22.553265>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.006111, 24.098217, 22.678619> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101505, 0.753935, 0.649059,
		-0.487183, 0.531171, -0.693188,
		-0.867380, -0.386573, 0.313389,
		15.745897, 23.982244, 22.772636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.854457, 24.734964, 22.883898>,  <16.353064, 24.252846, 22.553265>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.854457, 24.734964, 22.883898> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.657744, 24.434511, 23.060057>,  <15.539717, 24.254240, 23.165752>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.657744, 24.434511, 23.060057>,  <15.854457, 24.734964, 22.883898>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.657744, 24.434511, 23.060057> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136488, 0.566034, 0.813004,
		-0.859954, 0.339711, -0.380886,
		-0.491782, -0.751133, 0.440397,
		15.510210, 24.209171, 23.192177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.108429, 24.930401, 22.991163>,  <15.854457, 24.734964, 22.883898>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.108429, 24.930401, 22.991163> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.198934, 24.650690, 23.262402>,  <15.253236, 24.482862, 23.425144>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.198934, 24.650690, 23.262402>,  <15.108429, 24.930401, 22.991163>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.198934, 24.650690, 23.262402> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172097, 0.656500, 0.734432,
		-0.958743, -0.282872, 0.028197,
		0.226261, -0.699279, 0.678097,
		15.266812, 24.440907, 23.465830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.654721, 25.160810, 23.516371>,  <15.108429, 24.930401, 22.991163>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.654721, 25.160810, 23.516371> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.879262, 24.887371, 23.702951>,  <15.013987, 24.723307, 23.814899>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.879262, 24.887371, 23.702951>,  <14.654721, 25.160810, 23.516371>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.879262, 24.887371, 23.702951> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143447, 0.474731, 0.868362,
		-0.815050, -0.554368, 0.168431,
		0.561352, -0.683598, 0.466453,
		15.047668, 24.682291, 23.842888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.408851, 24.955492, 24.203360>,  <14.654721, 25.160810, 23.516371>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.408851, 24.955492, 24.203360> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.799953, 24.879114, 24.238075>,  <15.034615, 24.833286, 24.258905>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.799953, 24.879114, 24.238075>,  <14.408851, 24.955492, 24.203360>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.799953, 24.879114, 24.238075> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034211, 0.553429, 0.832193,
		-0.206937, -0.810713, 0.547651,
		0.977756, -0.190947, 0.086790,
		15.093280, 24.821831, 24.264112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.490132, 24.711796, 24.862183>,  <14.408851, 24.955492, 24.203360>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.490132, 24.711796, 24.862183> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.856893, 24.829973, 24.754845>,  <15.076948, 24.900879, 24.690443>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.856893, 24.829973, 24.754845>,  <14.490132, 24.711796, 24.862183>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.856893, 24.829973, 24.754845> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103165, 0.474053, 0.874432,
		0.385552, -0.829451, 0.404180,
		0.916901, 0.295442, -0.268342,
		15.131963, 24.918606, 24.674341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.924329, 24.441603, 25.421917>,  <14.490132, 24.711796, 24.862183>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.924329, 24.441603, 25.421917> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.153144, 24.725618, 25.257664>,  <15.290433, 24.896029, 25.159113>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.153144, 24.725618, 25.257664>,  <14.924329, 24.441603, 25.421917>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.153144, 24.725618, 25.257664> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087208, 0.445145, 0.891202,
		0.815578, -0.545611, 0.192719,
		0.572037, 0.710039, -0.410632,
		15.324755, 24.938629, 25.134474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.400925, 24.543661, 25.946072>,  <14.924329, 24.441603, 25.421917>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.400925, 24.543661, 25.946072> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.457289, 24.850395, 25.695597>,  <15.491107, 25.034435, 25.545311>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.457289, 24.850395, 25.695597>,  <15.400925, 24.543661, 25.946072>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.457289, 24.850395, 25.695597> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054033, 0.625598, 0.778272,
		0.988547, -0.143501, 0.046718,
		0.140910, 0.766834, -0.626187,
		15.499561, 25.080446, 25.507740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.050402, 24.791342, 26.137541>,  <15.400925, 24.543661, 25.946072>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.050402, 24.791342, 26.137541> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.848971, 25.087364, 25.959225>,  <15.728113, 25.264978, 25.852236>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.848971, 25.087364, 25.959225>,  <16.050402, 24.791342, 26.137541>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.848971, 25.087364, 25.959225> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135682, 0.577331, 0.805158,
		0.853231, 0.344972, -0.391141,
		-0.503575, 0.740057, -0.445790,
		15.697899, 25.309381, 25.825487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.444553, 25.418425, 26.251923>,  <16.050402, 24.791342, 26.137541>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.444553, 25.418425, 26.251923> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.068239, 25.530092, 26.174994>,  <15.842450, 25.597092, 26.128836>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.068239, 25.530092, 26.174994>,  <16.444553, 25.418425, 26.251923>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.068239, 25.530092, 26.174994> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050862, 0.444656, 0.894256,
		0.335163, 0.851085, -0.404127,
		-0.940786, 0.279167, -0.192321,
		15.786003, 25.613842, 26.117298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.447514, 26.079454, 26.425381>,  <16.444553, 25.418425, 26.251923>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.447514, 26.079454, 26.425381> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.078592, 25.928963, 26.460732>,  <15.857240, 25.838667, 26.481943>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.078592, 25.928963, 26.460732>,  <16.447514, 26.079454, 26.425381>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.078592, 25.928963, 26.460732> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041911, 0.324702, 0.944887,
		-0.384192, 0.867767, -0.315242,
		-0.922301, -0.376230, 0.088379,
		15.801902, 25.816093, 26.487246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.276838, 26.326239, 26.991732>,  <16.447514, 26.079454, 26.425381>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.276838, 26.326239, 26.991732> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.973447, 26.065882, 26.978792>,  <15.791411, 25.909668, 26.971027>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.973447, 26.065882, 26.978792>,  <16.276838, 26.326239, 26.991732>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.973447, 26.065882, 26.978792> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055990, 0.015628, 0.998309,
		-0.649287, 0.759008, -0.048297,
		-0.758480, -0.650893, -0.032349,
		15.745903, 25.870613, 26.969088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.732124, 26.643900, 27.317766>,  <16.276838, 26.326239, 26.991732>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.732124, 26.643900, 27.317766> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.638788, 26.255150, 27.330490>,  <15.582787, 26.021900, 27.338125>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.638788, 26.255150, 27.330490>,  <15.732124, 26.643900, 27.317766>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.638788, 26.255150, 27.330490> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151181, 0.068576, 0.986125,
		-0.960571, 0.225292, -0.162931,
		-0.233339, -0.971875, 0.031812,
		15.568787, 25.963587, 27.340034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.109332, 26.547207, 27.779343>,  <15.732124, 26.643900, 27.317766>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.109332, 26.547207, 27.779343> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.319872, 26.207106, 27.781448>,  <15.446196, 26.003046, 27.782711>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.319872, 26.207106, 27.781448>,  <15.109332, 26.547207, 27.779343>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.319872, 26.207106, 27.781448> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210627, -0.124387, 0.969621,
		-0.823767, -0.511468, -0.244557,
		0.526350, -0.850252, 0.005263,
		15.477777, 25.952030, 27.783028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.621561, 26.721161, 28.364096>,  <15.109332, 26.547207, 27.779343>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.621561, 26.721161, 28.364096> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.969790, 26.697056, 28.559429>,  <15.178728, 26.682592, 28.676630>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.969790, 26.697056, 28.559429>,  <14.621561, 26.721161, 28.364096>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.969790, 26.697056, 28.559429> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356940, 0.605766, 0.711085,
		-0.338668, -0.793357, 0.505853,
		0.870573, -0.060262, 0.488335,
		15.230963, 26.678978, 28.705929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.179739, 26.519667, 27.909113>,  <14.621561, 26.721161, 28.364096>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.179739, 26.519667, 27.909113> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.993637, 26.274296, 28.164375>,  <13.881976, 26.127073, 28.317533>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.993637, 26.274296, 28.164375>,  <14.179739, 26.519667, 27.909113>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.993637, 26.274296, 28.164375> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.556677, -0.357758, -0.749747,
		0.688221, -0.704071, -0.175032,
		-0.465256, -0.613428, 0.638157,
		13.854060, 26.090267, 28.355822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.308326, 25.766960, 27.605091>,  <14.179739, 26.519667, 27.909113>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.308326, 25.766960, 27.605091> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.972569, 25.809456, 27.818310>,  <13.771115, 25.834953, 27.946241>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.972569, 25.809456, 27.818310>,  <14.308326, 25.766960, 27.605091>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.972569, 25.809456, 27.818310> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.513830, -0.474840, -0.714497,
		0.177205, -0.873636, 0.453164,
		-0.839391, 0.106237, 0.533045,
		13.720752, 25.841328, 27.978224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.998674, 25.127020, 27.636150>,  <14.308326, 25.766960, 27.605091>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.998674, 25.127020, 27.636150> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.712419, 25.399590, 27.697496>,  <13.540666, 25.563131, 27.734304>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.712419, 25.399590, 27.697496>,  <13.998674, 25.127020, 27.636150>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.712419, 25.399590, 27.697496> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484412, -0.326020, -0.811823,
		-0.503195, -0.655265, 0.563403,
		-0.715639, 0.681424, 0.153366,
		13.497726, 25.604017, 27.743505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.290616, 24.807926, 27.671446>,  <13.998674, 25.127020, 27.636150>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.290616, 24.807926, 27.671446> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.243898, 25.175081, 27.519739>,  <13.215868, 25.395374, 27.428715>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.243898, 25.175081, 27.519739>,  <13.290616, 24.807926, 27.671446>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.243898, 25.175081, 27.519739> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.612302, -0.367219, -0.700168,
		-0.781949, 0.150451, 0.604913,
		-0.116795, 0.917886, -0.379269,
		13.208860, 25.450447, 27.405958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.678858, 24.729586, 27.487593>,  <13.290616, 24.807926, 27.671446>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.678858, 24.729586, 27.487593> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.813240, 25.054111, 27.296219>,  <12.893869, 25.248827, 27.181395>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.813240, 25.054111, 27.296219>,  <12.678858, 24.729586, 27.487593>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.813240, 25.054111, 27.296219> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504598, -0.273877, -0.818762,
		-0.795307, 0.516485, 0.317378,
		0.335956, 0.811316, -0.478434,
		12.914027, 25.297506, 27.152689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.131598, 24.904770, 27.058607>,  <12.678858, 24.729586, 27.487593>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.131598, 24.904770, 27.058607> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.440374, 25.104706, 26.901501>,  <12.625641, 25.224667, 26.807236>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.440374, 25.104706, 26.901501>,  <12.131598, 24.904770, 27.058607>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.440374, 25.104706, 26.901501> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410089, -0.080539, -0.908482,
		-0.485727, 0.862366, 0.142807,
		0.771943, 0.499838, -0.392767,
		12.671957, 25.254658, 26.783670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.905527, 25.368839, 26.443029>,  <12.131598, 24.904770, 27.058607>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.905527, 25.368839, 26.443029> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.295072, 25.296051, 26.388655>,  <12.528798, 25.252378, 26.356030>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.295072, 25.296051, 26.388655>,  <11.905527, 25.368839, 26.443029>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.295072, 25.296051, 26.388655> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187801, -0.308435, -0.932523,
		0.127764, 0.933678, -0.334547,
		0.973862, -0.181970, -0.135939,
		12.587231, 25.241461, 26.347874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.981526, 25.346701, 25.674335>,  <11.905527, 25.368839, 26.443029>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.981526, 25.346701, 25.674335> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.330522, 25.195045, 25.797636>,  <12.539919, 25.104052, 25.871616>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.330522, 25.195045, 25.797636>,  <11.981526, 25.346701, 25.674335>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.330522, 25.195045, 25.797636> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109673, -0.462801, -0.879651,
		0.476169, 0.801292, -0.362207,
		0.872488, -0.379138, 0.308252,
		12.592268, 25.081305, 25.890112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.560823, 25.510895, 25.173910>,  <11.981526, 25.346701, 25.674335>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.560823, 25.510895, 25.173910> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.668442, 25.169224, 25.351896>,  <12.733013, 24.964222, 25.458689>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.668442, 25.169224, 25.351896>,  <12.560823, 25.510895, 25.173910>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.668442, 25.169224, 25.351896> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086570, -0.438684, -0.894462,
		0.959229, 0.279172, -0.044080,
		0.269046, -0.854178, 0.444967,
		12.749155, 24.912971, 25.485386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.169939, 25.247128, 24.820379>,  <12.560823, 25.510895, 25.173910>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.169939, 25.247128, 24.820379> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.011225, 24.921877, 24.990738>,  <12.915997, 24.726727, 25.092953>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.011225, 24.921877, 24.990738>,  <13.169939, 25.247128, 24.820379>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.011225, 24.921877, 24.990738> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320413, -0.557492, -0.765858,
		0.860173, -0.167419, 0.481741,
		-0.396785, -0.813126, 0.425897,
		12.892189, 24.677938, 25.118507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.604888, 24.700920, 24.683550>,  <13.169939, 25.247128, 24.820379>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.604888, 24.700920, 24.683550> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.317733, 24.473793, 24.844656>,  <13.145439, 24.337517, 24.941320>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.317733, 24.473793, 24.844656>,  <13.604888, 24.700920, 24.683550>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.317733, 24.473793, 24.844656> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206083, -0.725962, -0.656132,
		0.664955, -0.388027, 0.638177,
		-0.717889, -0.567816, 0.402766,
		13.102366, 24.303448, 24.965487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.902664, 24.160879, 24.592722>,  <13.604888, 24.700920, 24.683550>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.902664, 24.160879, 24.592722> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.517553, 24.068680, 24.649191>,  <13.286487, 24.013361, 24.683073>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.517553, 24.068680, 24.649191>,  <13.902664, 24.160879, 24.592722>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.517553, 24.068680, 24.649191> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104188, -0.798409, -0.593033,
		0.249406, -0.556251, 0.792705,
		-0.962778, -0.230496, 0.141173,
		13.228720, 23.999531, 24.691544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.890686, 23.456945, 24.618603>,  <13.902664, 24.160879, 24.592722>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.890686, 23.456945, 24.618603> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.517363, 23.562956, 24.521694>,  <13.293368, 23.626562, 24.463549>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.517363, 23.562956, 24.521694>,  <13.890686, 23.456945, 24.618603>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.517363, 23.562956, 24.521694> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047780, -0.577046, -0.815313,
		-0.355881, -0.772515, 0.525899,
		-0.933309, 0.265027, -0.242270,
		13.237370, 23.642464, 24.449013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.570668, 22.791813, 24.456186>,  <13.890686, 23.456945, 24.618603>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.570668, 22.791813, 24.456186> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.353803, 23.087540, 24.296452>,  <13.223683, 23.264977, 24.200611>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.353803, 23.087540, 24.296452>,  <13.570668, 22.791813, 24.456186>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.353803, 23.087540, 24.296452> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189488, -0.355431, -0.915294,
		-0.818628, -0.571909, 0.052610,
		-0.542165, 0.739316, -0.399336,
		13.191154, 23.309334, 24.176651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.227683, 22.449902, 23.954308>,  <13.570668, 22.791813, 24.456186>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.227683, 22.449902, 23.954308> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.167342, 22.822506, 23.821924>,  <13.131138, 23.046068, 23.742495>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.167342, 22.822506, 23.821924>,  <13.227683, 22.449902, 23.954308>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.167342, 22.822506, 23.821924> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067935, -0.324230, -0.943536,
		-0.986219, -0.164818, -0.014372,
		-0.150852, 0.931510, -0.330958,
		13.122087, 23.101959, 23.722637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.937519, 22.360399, 23.354841>,  <13.227683, 22.449902, 23.954308>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.937519, 22.360399, 23.354841> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.031669, 22.747831, 23.322706>,  <13.088159, 22.980289, 23.303425>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.031669, 22.747831, 23.322706>,  <12.937519, 22.360399, 23.354841>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.031669, 22.747831, 23.322706> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082045, -0.102166, -0.991378,
		-0.968436, 0.226753, -0.103514,
		0.235373, 0.968579, -0.080338,
		13.102281, 23.038404, 23.298605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.547382, 22.579714, 22.761908>,  <12.937519, 22.360399, 23.354841>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.547382, 22.579714, 22.761908> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.846478, 22.842449, 22.800779>,  <13.025936, 23.000092, 22.824102>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.846478, 22.842449, 22.800779>,  <12.547382, 22.579714, 22.761908>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.846478, 22.842449, 22.800779> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239036, -0.129744, -0.962304,
		-0.619471, 0.742784, -0.254023,
		0.747742, 0.656840, 0.097180,
		13.070801, 23.039501, 22.829933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.459369, 23.181509, 22.281406>,  <12.547382, 22.579714, 22.761908>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.459369, 23.181509, 22.281406> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.844739, 23.108459, 22.359850>,  <13.075961, 23.064631, 22.406916>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.844739, 23.108459, 22.359850>,  <12.459369, 23.181509, 22.281406>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.844739, 23.108459, 22.359850> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162833, -0.182257, -0.969674,
		0.212828, 0.966142, -0.145854,
		0.963426, -0.182623, 0.196110,
		13.133767, 23.053673, 22.418682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.852390, 23.604437, 21.821142>,  <12.459369, 23.181509, 22.281406>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.852390, 23.604437, 21.821142> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.090178, 23.302614, 21.932320>,  <13.232851, 23.121521, 21.999027>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.090178, 23.302614, 21.932320>,  <12.852390, 23.604437, 21.821142>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.090178, 23.302614, 21.932320> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097655, -0.275350, -0.956371,
		0.798166, 0.595676, -0.090001,
		0.594469, -0.754554, 0.277946,
		13.268519, 23.076248, 22.015703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.461694, 23.729298, 21.387569>,  <12.852390, 23.604437, 21.821142>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.461694, 23.729298, 21.387569> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.438002, 23.342525, 21.486799>,  <13.423786, 23.110462, 21.546337>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.438002, 23.342525, 21.486799>,  <13.461694, 23.729298, 21.387569>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.438002, 23.342525, 21.486799> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237918, -0.255024, -0.937208,
		0.969478, 0.003511, 0.245155,
		-0.059230, -0.966928, 0.248075,
		13.420233, 23.052446, 21.561222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.016903, 23.437630, 20.918745>,  <13.461694, 23.729298, 21.387569>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.016903, 23.437630, 20.918745> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.762628, 23.158770, 21.051338>,  <13.610063, 22.991453, 21.130894>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.762628, 23.158770, 21.051338>,  <14.016903, 23.437630, 20.918745>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.762628, 23.158770, 21.051338> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082812, -0.488524, -0.868612,
		0.767491, -0.524715, 0.368282,
		-0.635688, -0.697150, 0.331485,
		13.571921, 22.949625, 21.150784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<18.891661, 15.821639, 8.646346> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.271051, 15.925363, 8.719172>,  <19.498686, 15.987597, 8.762867>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.271051, 15.925363, 8.719172>,  <18.891661, 15.821639, 8.646346>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.271051, 15.925363, 8.719172> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316826, -0.781822, -0.537007,
		0.003092, 0.567022, -0.823697,
		0.948479, 0.259308, 0.182065,
		19.555595, 16.003155, 8.773791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.309858, 15.765715, 7.977893>,  <18.891661, 15.821639, 8.646346>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.309858, 15.765715, 7.977893> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.511215, 15.714189, 8.319654>,  <19.632029, 15.683273, 8.524711>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.511215, 15.714189, 8.319654>,  <19.309858, 15.765715, 7.977893>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.511215, 15.714189, 8.319654> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424988, -0.824038, -0.374629,
		0.752318, 0.551696, -0.360068,
		0.503391, -0.128816, 0.854403,
		19.662233, 15.675544, 8.575975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.987856, 15.620654, 7.804090>,  <19.309858, 15.765715, 7.977893>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.987856, 15.620654, 7.804090> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.933443, 15.471430, 8.171203>,  <19.900795, 15.381895, 8.391470>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.933443, 15.471430, 8.171203>,  <19.987856, 15.620654, 7.804090>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.933443, 15.471430, 8.171203> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470368, -0.839641, -0.271583,
		0.871923, 0.394751, 0.289694,
		-0.136031, -0.373062, 0.917780,
		19.892633, 15.359511, 8.446537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.600868, 15.426896, 7.994178>,  <19.987856, 15.620654, 7.804090>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.600868, 15.426896, 7.994178> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.297024, 15.213964, 8.143640>,  <20.114717, 15.086205, 8.233316>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.297024, 15.213964, 8.143640>,  <20.600868, 15.426896, 7.994178>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.297024, 15.213964, 8.143640> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463589, -0.846120, -0.262995,
		0.456156, -0.026552, 0.889504,
		-0.759610, -0.532331, 0.373653,
		20.069141, 15.054264, 8.255735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.854467, 14.923887, 8.485681>,  <20.600868, 15.426896, 7.994178>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.854467, 14.923887, 8.485681> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.515839, 14.798917, 8.313307>,  <20.312660, 14.723935, 8.209883>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.515839, 14.798917, 8.313307>,  <20.854467, 14.923887, 8.485681>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.515839, 14.798917, 8.313307> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439744, -0.866688, -0.235537,
		-0.299897, -0.388900, 0.871101,
		-0.846573, -0.312425, -0.430934,
		20.261868, 14.705189, 8.184027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.600988, 14.303012, 8.951854>,  <20.854467, 14.923887, 8.485681>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.600988, 14.303012, 8.951854> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.482611, 14.293191, 8.569898>,  <20.411585, 14.287298, 8.340724>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.482611, 14.293191, 8.569898>,  <20.600988, 14.303012, 8.951854>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.482611, 14.293191, 8.569898> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.667245, -0.720653, -0.188266,
		-0.683522, -0.692861, 0.229654,
		-0.295943, -0.024552, -0.954890,
		20.393827, 14.285826, 8.283431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.574953, 13.618279, 8.778394>,  <20.600988, 14.303012, 8.951854>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.574953, 13.618279, 8.778394> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.649204, 13.869596, 8.476190>,  <20.693756, 14.020385, 8.294868>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.649204, 13.869596, 8.476190>,  <20.574953, 13.618279, 8.778394>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.649204, 13.869596, 8.476190> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.842610, -0.497335, -0.206559,
		-0.505520, -0.598256, -0.621722,
		0.185629, 0.628289, -0.755509,
		20.704893, 14.058083, 8.249537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.241343, 13.876342, 8.347929>,  <20.574953, 13.618279, 8.778394>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.241343, 13.876342, 8.347929> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.584717, 13.685946, 8.271488>,  <21.790741, 13.571710, 8.225624>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.584717, 13.685946, 8.271488>,  <21.241343, 13.876342, 8.347929>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.584717, 13.685946, 8.271488> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404522, -0.857346, 0.318308,
		-0.315351, -0.195943, -0.928526,
		0.858438, -0.475988, -0.191101,
		21.842249, 13.543150, 8.214158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.329294, 13.336289, 8.907604>,  <21.241343, 13.876342, 8.347929>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.329294, 13.336289, 8.907604> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.473467, 13.698602, 8.996734>,  <21.559971, 13.915989, 9.050211>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.473467, 13.698602, 8.996734>,  <21.329294, 13.336289, 8.907604>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.473467, 13.698602, 8.996734> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106686, -0.277342, 0.954830,
		0.926664, -0.320381, -0.196597,
		0.360434, 0.905780, 0.222823,
		21.581596, 13.970336, 9.063581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.928429, 13.177389, 9.174035>,  <21.329294, 13.336289, 8.907604>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.928429, 13.177389, 9.174035> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.789385, 13.531961, 9.296288>,  <21.705959, 13.744704, 9.369640>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.789385, 13.531961, 9.296288>,  <21.928429, 13.177389, 9.174035>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.789385, 13.531961, 9.296288> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070471, -0.349736, 0.934194,
		0.934988, 0.303195, 0.184038,
		-0.347608, 0.886430, 0.305633,
		21.685102, 13.797891, 9.387979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.316114, 13.446049, 9.716462>,  <21.928429, 13.177389, 9.174035>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.316114, 13.446049, 9.716462> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.934999, 13.565598, 9.737892>,  <21.706331, 13.637328, 9.750751>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.934999, 13.565598, 9.737892>,  <22.316114, 13.446049, 9.716462>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.934999, 13.565598, 9.737892> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111932, -0.509738, 0.853017,
		0.282255, 0.806747, 0.519125,
		-0.952787, 0.298875, 0.053575,
		21.649164, 13.655261, 9.753964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.193108, 13.557606, 10.410018>,  <22.316114, 13.446049, 9.716462>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.193108, 13.557606, 10.410018> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.822508, 13.532204, 10.261658>,  <21.600147, 13.516963, 10.172642>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.822508, 13.532204, 10.261658>,  <22.193108, 13.557606, 10.410018>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.822508, 13.532204, 10.261658> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275715, -0.556223, 0.783963,
		-0.256089, 0.828603, 0.497831,
		-0.926499, -0.063505, -0.370901,
		21.544558, 13.513152, 10.150388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.733028, 13.655687, 10.913331>,  <22.193108, 13.557606, 10.410018>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.733028, 13.655687, 10.913331> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.479694, 13.489882, 10.651929>,  <21.327694, 13.390400, 10.495088>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.479694, 13.489882, 10.651929>,  <21.733028, 13.655687, 10.913331>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.479694, 13.489882, 10.651929> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398814, -0.548861, 0.734642,
		-0.663202, 0.725900, 0.182299,
		-0.633333, -0.414512, -0.653505,
		21.289694, 13.365529, 10.455877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.995327, 13.573166, 11.333998>,  <21.733028, 13.655687, 10.913331>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.995327, 13.573166, 11.333998> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.020382, 13.352149, 11.001546>,  <21.035414, 13.219539, 10.802075>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.020382, 13.352149, 11.001546>,  <20.995327, 13.573166, 11.333998>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.020382, 13.352149, 11.001546> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525709, -0.726135, 0.443122,
		-0.848355, 0.409177, -0.335958,
		0.062635, -0.552541, -0.831129,
		21.039173, 13.186387, 10.752207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.410910, 13.358823, 11.316057>,  <20.995327, 13.573166, 11.333998>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.410910, 13.358823, 11.316057> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.567566, 13.097221, 11.057168>,  <20.661560, 12.940261, 10.901834>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.567566, 13.097221, 11.057168>,  <20.410910, 13.358823, 11.316057>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.567566, 13.097221, 11.057168> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410010, -0.753759, 0.513556,
		-0.823718, 0.064239, -0.563349,
		0.391639, -0.654004, -0.647223,
		20.685059, 12.901020, 10.863001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.939184, 12.946517, 10.887623>,  <20.410910, 13.358823, 11.316057>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.939184, 12.946517, 10.887623> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.277658, 12.737371, 10.928774>,  <20.480743, 12.611884, 10.953465>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.277658, 12.737371, 10.928774>,  <19.939184, 12.946517, 10.887623>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.277658, 12.737371, 10.928774> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480845, -0.665967, 0.570330,
		-0.229692, -0.532073, -0.814948,
		0.846185, -0.522863, 0.102878,
		20.531513, 12.580512, 10.959638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.722752, 12.264529, 11.050126>,  <19.939184, 12.946517, 10.887623>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.722752, 12.264529, 11.050126> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.116531, 12.203977, 11.085783>,  <20.352798, 12.167645, 11.107177>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.116531, 12.203977, 11.085783>,  <19.722752, 12.264529, 11.050126>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.116531, 12.203977, 11.085783> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174128, -0.773585, 0.609299,
		-0.023276, -0.615345, -0.787914,
		0.984448, -0.151380, 0.089143,
		20.411865, 12.158563, 11.112526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.791529, 11.446145, 11.059989>,  <19.722752, 12.264529, 11.050126>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.791529, 11.446145, 11.059989> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.095209, 11.639781, 11.234012>,  <20.277416, 11.755962, 11.338426>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.095209, 11.639781, 11.234012>,  <19.791529, 11.446145, 11.059989>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.095209, 11.639781, 11.234012> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054384, -0.713280, 0.698766,
		0.648582, -0.506843, -0.567848,
		0.759200, 0.484089, 0.435057,
		20.322969, 11.785007, 11.364529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.346796, 10.949629, 11.123443>,  <19.791529, 11.446145, 11.059989>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.346796, 10.949629, 11.123443> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.394356, 11.242061, 11.392183>,  <20.422892, 11.417520, 11.553428>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.394356, 11.242061, 11.392183>,  <20.346796, 10.949629, 11.123443>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.394356, 11.242061, 11.392183> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167268, -0.681730, 0.712226,
		0.978715, 0.027696, -0.203344,
		0.118900, 0.731080, 0.671852,
		20.430025, 11.461385, 11.593739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.980932, 10.727926, 11.536769>,  <20.346796, 10.949629, 11.123443>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.980932, 10.727926, 11.536769> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.777794, 11.008165, 11.737271>,  <20.655910, 11.176309, 11.857573>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.777794, 11.008165, 11.737271>,  <20.980932, 10.727926, 11.536769>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.777794, 11.008165, 11.737271> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130017, -0.512873, 0.848562,
		0.851580, 0.496110, 0.169371,
		-0.507845, 0.700597, 0.501255,
		20.625441, 11.218345, 11.887648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.467724, 10.865366, 12.067019>,  <20.980932, 10.727926, 11.536769>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.467724, 10.865366, 12.067019> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.102192, 10.982463, 12.179603>,  <20.882874, 11.052721, 12.247153>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.102192, 10.982463, 12.179603>,  <21.467724, 10.865366, 12.067019>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.102192, 10.982463, 12.179603> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195233, -0.291038, 0.936579,
		0.356092, 0.910823, 0.208806,
		-0.913828, 0.292742, 0.281459,
		20.828043, 11.070286, 12.264040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.619267, 11.028823, 12.686136>,  <21.467724, 10.865366, 12.067019>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.619267, 11.028823, 12.686136> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.222307, 10.980925, 12.697480>,  <20.984131, 10.952186, 12.704287>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.222307, 10.980925, 12.697480>,  <21.619267, 11.028823, 12.686136>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.222307, 10.980925, 12.697480> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054150, -0.217997, 0.974446,
		-0.110502, 0.968575, 0.222824,
		-0.992400, -0.119745, 0.028359,
		20.924587, 10.945002, 12.705988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.331154, 11.382987, 13.268175>,  <21.619267, 11.028823, 12.686136>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.331154, 11.382987, 13.268175> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.054806, 11.111798, 13.167733>,  <20.888998, 10.949085, 13.107468>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.054806, 11.111798, 13.167733>,  <21.331154, 11.382987, 13.268175>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.054806, 11.111798, 13.167733> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164102, -0.191202, 0.967735,
		-0.704110, 0.709785, 0.020839,
		-0.690868, -0.677973, -0.251105,
		20.847546, 10.908406, 13.092402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.857401, 11.464769, 13.768574>,  <21.331154, 11.382987, 13.268175>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.857401, 11.464769, 13.768574> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.780752, 11.099690, 13.624205>,  <20.734764, 10.880643, 13.537583>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.780752, 11.099690, 13.624205>,  <20.857401, 11.464769, 13.768574>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.780752, 11.099690, 13.624205> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084807, -0.350963, 0.932541,
		-0.977798, 0.209303, -0.010152,
		-0.191621, -0.912698, -0.360922,
		20.723267, 10.825881, 13.515928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.234426, 11.385330, 14.086593>,  <20.857401, 11.464769, 13.768574>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.234426, 11.385330, 14.086593> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.351543, 11.019474, 13.975089>,  <20.421814, 10.799960, 13.908187>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.351543, 11.019474, 13.975089>,  <20.234426, 11.385330, 14.086593>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.351543, 11.019474, 13.975089> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285643, -0.361890, 0.887380,
		-0.912513, -0.180194, -0.367219,
		0.292793, -0.914640, -0.278759,
		20.439381, 10.745082, 13.891461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.715387, 10.853660, 14.146271>,  <20.234426, 11.385330, 14.086593>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.715387, 10.853660, 14.146271> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.062334, 10.659166, 14.188706>,  <20.270502, 10.542470, 14.214168>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.062334, 10.659166, 14.188706>,  <19.715387, 10.853660, 14.146271>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.062334, 10.659166, 14.188706> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287816, -0.316180, 0.903987,
		-0.406008, -0.814620, -0.414189,
		0.867364, -0.486236, 0.106089,
		20.322544, 10.513296, 14.220533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.500910, 10.332316, 14.528194>,  <19.715387, 10.853660, 14.146271>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.500910, 10.332316, 14.528194> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.898844, 10.318505, 14.566379>,  <20.137604, 10.310219, 14.589289>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.898844, 10.318505, 14.566379>,  <19.500910, 10.332316, 14.528194>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.898844, 10.318505, 14.566379> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100290, -0.188783, 0.976884,
		-0.015708, -0.981412, -0.191271,
		0.994834, -0.034527, 0.095460,
		20.197294, 10.308146, 14.595016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.526663, 9.840280, 14.991594>,  <19.500910, 10.332316, 14.528194>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.526663, 9.840280, 14.991594> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.881643, 10.024483, 14.999176>,  <20.094631, 10.135004, 15.003725>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.881643, 10.024483, 14.999176>,  <19.526663, 9.840280, 14.991594>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.881643, 10.024483, 14.999176> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114912, -0.260900, 0.958502,
		0.446343, -0.848448, -0.284455,
		0.887454, 0.460508, 0.018954,
		20.147879, 10.162635, 15.004862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.983549, 9.404552, 15.251848>,  <19.526663, 9.840280, 14.991594>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.983549, 9.404552, 15.251848> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.173943, 9.745807, 15.337266>,  <20.288177, 9.950559, 15.388516>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.173943, 9.745807, 15.337266>,  <19.983549, 9.404552, 15.251848>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.173943, 9.745807, 15.337266> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156766, -0.321233, 0.933934,
		0.865370, -0.411060, -0.286644,
		0.475982, 0.853135, 0.213545,
		20.316738, 10.001747, 15.401330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.454506, 9.198170, 15.645729>,  <19.983549, 9.404552, 15.251848>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.454506, 9.198170, 15.645729> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.405714, 9.585436, 15.733159>,  <20.376440, 9.817796, 15.785617>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.405714, 9.585436, 15.733159>,  <20.454506, 9.198170, 15.645729>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.405714, 9.585436, 15.733159> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129231, -0.202853, 0.970644,
		0.984084, 0.146644, -0.100374,
		-0.121978, 0.968166, 0.218576,
		20.369122, 9.875886, 15.798732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.041212, 9.459551, 15.897832>,  <20.454506, 9.198170, 15.645729>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.041212, 9.459551, 15.897832> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.687389, 9.592944, 16.028276>,  <20.475096, 9.672980, 16.106543>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.687389, 9.592944, 16.028276>,  <21.041212, 9.459551, 15.897832>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.687389, 9.592944, 16.028276> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310593, -0.100481, 0.945217,
		0.347981, 0.937386, -0.014696,
		-0.884557, 0.333482, 0.326111,
		20.422022, 9.692988, 16.126110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.019690, 10.244287, 16.193529>,  <21.041212, 9.459551, 15.897832>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.019690, 10.244287, 16.193529> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.779865, 9.981390, 16.376202>,  <20.635971, 9.823651, 16.485806>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.779865, 9.981390, 16.376202>,  <21.019690, 10.244287, 16.193529>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.779865, 9.981390, 16.376202> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476825, 0.164944, 0.863384,
		-0.642781, 0.735407, 0.214497,
		-0.599559, -0.657244, 0.456683,
		20.599998, 9.784217, 16.513206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.672411, 10.753794, 16.403265>,  <21.019690, 10.244287, 16.193529>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.672411, 10.753794, 16.403265> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.795782, 10.429308, 16.204548>,  <21.869804, 10.234616, 16.085318>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.795782, 10.429308, 16.204548>,  <21.672411, 10.753794, 16.403265>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.795782, 10.429308, 16.204548> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.950760, 0.279596, 0.133718,
		0.030427, -0.513574, 0.857505,
		0.308429, -0.811213, -0.496794,
		21.888311, 10.185944, 16.055510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.361479, 11.381822, 16.644552>,  <21.672411, 10.753794, 16.403265>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.361479, 11.381822, 16.644552> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.496254, 11.220005, 16.304478>,  <21.577120, 11.122915, 16.100433>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.496254, 11.220005, 16.304478>,  <21.361479, 11.381822, 16.644552>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.496254, 11.220005, 16.304478> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111432, 0.913776, -0.390637,
		0.934909, 0.036883, 0.352965,
		0.336939, -0.404542, -0.850187,
		21.597336, 11.098642, 16.049421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.895826, 11.775990, 16.428347>,  <21.361479, 11.381822, 16.644552>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.895826, 11.775990, 16.428347> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.736500, 11.580807, 16.117672>,  <21.640903, 11.463697, 15.931268>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.736500, 11.580807, 16.117672>,  <21.895826, 11.775990, 16.428347>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.736500, 11.580807, 16.117672> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174205, 0.791102, -0.586354,
		0.900553, -0.368858, -0.230105,
		-0.398317, -0.487957, -0.776686,
		21.617004, 11.434420, 15.884666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.183512, 12.409566, 16.307526>,  <21.895826, 11.775990, 16.428347>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.183512, 12.409566, 16.307526> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.575350, 12.474370, 16.259951>,  <22.810453, 12.513252, 16.231405>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.575350, 12.474370, 16.259951>,  <22.183512, 12.409566, 16.307526>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.575350, 12.474370, 16.259951> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120743, 0.001312, -0.992683,
		-0.160669, 0.986788, 0.020847,
		0.979595, 0.162011, -0.118937,
		22.869228, 12.522973, 16.224270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.344755, 13.052228, 15.847420>,  <22.183512, 12.409566, 16.307526>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.344755, 13.052228, 15.847420> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.629473, 12.771490, 15.836368>,  <22.800303, 12.603047, 15.829736>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.629473, 12.771490, 15.836368>,  <22.344755, 13.052228, 15.847420>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.629473, 12.771490, 15.836368> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006209, 0.033051, -0.999434,
		0.702361, 0.711563, 0.019168,
		0.711794, -0.701845, -0.027632,
		22.843010, 12.560937, 15.828078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.847229, 13.317353, 15.406476>,  <22.344755, 13.052228, 15.847420>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.847229, 13.317353, 15.406476> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.870409, 12.918176, 15.417440>,  <22.884317, 12.678669, 15.424019>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.870409, 12.918176, 15.417440>,  <22.847229, 13.317353, 15.406476>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.870409, 12.918176, 15.417440> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050022, -0.030324, -0.998288,
		0.997066, 0.056479, -0.051677,
		0.057949, -0.997943, 0.027410,
		22.887794, 12.618793, 15.425664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.215784, 13.952115, 15.175088>,  <22.847229, 13.317353, 15.406476>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.215784, 13.952115, 15.175088> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.403982, 14.229454, 15.393409>,  <23.516901, 14.395858, 15.524402>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.403982, 14.229454, 15.393409>,  <23.215784, 13.952115, 15.175088>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.403982, 14.229454, 15.393409> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.662050, 0.686304, -0.301126,
		-0.583372, -0.219669, 0.781935,
		0.470497, 0.693348, 0.545803,
		23.545132, 14.437458, 15.557150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.703966, 14.497145, 15.233015>,  <23.215784, 13.952115, 15.175088>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.703966, 14.497145, 15.233015> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.034389, 14.688771, 15.351757>,  <23.232643, 14.803747, 15.423002>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.034389, 14.688771, 15.351757>,  <22.703966, 14.497145, 15.233015>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.034389, 14.688771, 15.351757> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394121, 0.867553, -0.303347,
		-0.402861, 0.133586, 0.905460,
		0.826058, 0.479067, 0.296855,
		23.282207, 14.832492, 15.440813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.495480, 15.023755, 15.627920>,  <22.703966, 14.497145, 15.233015>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.495480, 15.023755, 15.627920> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.852308, 15.131725, 15.482954>,  <23.066406, 15.196507, 15.395974>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.852308, 15.131725, 15.482954>,  <22.495480, 15.023755, 15.627920>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.852308, 15.131725, 15.482954> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373366, 0.892054, -0.254631,
		0.254564, 0.362463, 0.896559,
		0.892073, 0.269925, -0.362416,
		23.119930, 15.212703, 15.374229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.474615, 15.621198, 15.979044>,  <22.495480, 15.023755, 15.627920>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.474615, 15.621198, 15.979044> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.705919, 15.607159, 15.653006>,  <22.844702, 15.598736, 15.457382>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.705919, 15.607159, 15.653006>,  <22.474615, 15.621198, 15.979044>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.705919, 15.607159, 15.653006> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323231, 0.907464, -0.268386,
		0.749090, 0.418662, 0.513407,
		0.578261, -0.035097, -0.815097,
		22.879398, 15.596630, 15.408477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.622005, 16.298338, 15.938456>,  <22.474615, 15.621198, 15.979044>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.622005, 16.298338, 15.938456> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.725279, 16.127129, 15.592013>,  <22.787243, 16.024403, 15.384149>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.725279, 16.127129, 15.592013>,  <22.622005, 16.298338, 15.938456>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.725279, 16.127129, 15.592013> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344020, 0.797002, -0.496424,
		0.902769, 0.426126, 0.058524,
		0.258183, -0.428023, -0.866105,
		22.802734, 15.998722, 15.332182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.974825, 16.848072, 15.516987>,  <22.622005, 16.298338, 15.938456>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.974825, 16.848072, 15.516987> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.849106, 16.566982, 15.261677>,  <22.773674, 16.398329, 15.108491>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.849106, 16.566982, 15.261677>,  <22.974825, 16.848072, 15.516987>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.849106, 16.566982, 15.261677> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354859, 0.710575, -0.607584,
		0.880506, 0.035534, -0.472702,
		-0.314300, -0.702724, -0.638275,
		22.754816, 16.356165, 15.070194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.895447, 17.244522, 14.996747>,  <22.974825, 16.848072, 15.516987>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.895447, 17.244522, 14.996747> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.758945, 16.901190, 14.843479>,  <22.677046, 16.695190, 14.751518>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.758945, 16.901190, 14.843479>,  <22.895447, 17.244522, 14.996747>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.758945, 16.901190, 14.843479> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369750, 0.497353, -0.784809,
		0.864194, -0.126141, -0.487090,
		-0.341252, -0.858329, -0.383170,
		22.656570, 16.643692, 14.728528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.176311, 17.067106, 14.355757>,  <22.895447, 17.244522, 14.996747>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.176311, 17.067106, 14.355757> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.802889, 16.928890, 14.393865>,  <22.578836, 16.845961, 14.416730>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.802889, 16.928890, 14.393865>,  <23.176311, 17.067106, 14.355757>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.802889, 16.928890, 14.393865> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325489, 0.705948, -0.629043,
		0.150103, -0.618256, -0.771511,
		-0.933555, -0.345539, 0.095271,
		22.522821, 16.825228, 14.422446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.930012, 16.939636, 13.675420>,  <23.176311, 17.067106, 14.355757>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.930012, 16.939636, 13.675420> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.589876, 16.972317, 13.883361>,  <22.385794, 16.991924, 14.008125>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.589876, 16.972317, 13.883361>,  <22.930012, 16.939636, 13.675420>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.589876, 16.972317, 13.883361> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349366, 0.651105, -0.673800,
		-0.393529, -0.754578, -0.525117,
		-0.850340, 0.081702, 0.519853,
		22.334774, 16.996828, 14.039316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.471003, 16.956137, 13.176589>,  <22.930012, 16.939636, 13.675420>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.471003, 16.956137, 13.176589> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.251873, 17.082300, 13.486532>,  <22.120396, 17.157999, 13.672498>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.251873, 17.082300, 13.486532>,  <22.471003, 16.956137, 13.176589>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.251873, 17.082300, 13.486532> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407434, 0.708355, -0.576395,
		-0.730676, -0.631466, -0.259544,
		-0.547823, 0.315411, 0.774858,
		22.087526, 17.176924, 13.718989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.776884, 16.922430, 13.037263>,  <22.471003, 16.956137, 13.176589>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.776884, 16.922430, 13.037263> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.795950, 17.196184, 13.328287>,  <21.807390, 17.360437, 13.502902>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.795950, 17.196184, 13.328287>,  <21.776884, 16.922430, 13.037263>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.795950, 17.196184, 13.328287> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435069, 0.669889, -0.601634,
		-0.899135, -0.287863, 0.329685,
		0.047665, 0.684386, 0.727561,
		21.810249, 17.401501, 13.546556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.123940, 17.319862, 13.000508>,  <21.776884, 16.922430, 13.037263>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.123940, 17.319862, 13.000508> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.372492, 17.556150, 13.206396>,  <21.521624, 17.697924, 13.329928>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.372492, 17.556150, 13.206396>,  <21.123940, 17.319862, 13.000508>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.372492, 17.556150, 13.206396> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225782, 0.764076, -0.604326,
		-0.750273, 0.259302, 0.608156,
		0.621380, 0.590720, 0.514720,
		21.558907, 17.733366, 13.360812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.636517, 17.864166, 13.145949>,  <21.123940, 17.319862, 13.000508>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.636517, 17.864166, 13.145949> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.006380, 17.999760, 13.215347>,  <21.228298, 18.081116, 13.256987>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.006380, 17.999760, 13.215347>,  <20.636517, 17.864166, 13.145949>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.006380, 17.999760, 13.215347> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189115, 0.804228, -0.563429,
		-0.330523, 0.488168, 0.807742,
		0.924657, 0.338983, 0.173496,
		21.283777, 18.101454, 13.267396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.559898, 18.532072, 13.238660>,  <20.636517, 17.864166, 13.145949>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.559898, 18.532072, 13.238660> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.945625, 18.501471, 13.137280>,  <21.177061, 18.483110, 13.076453>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.945625, 18.501471, 13.137280>,  <20.559898, 18.532072, 13.238660>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.945625, 18.501471, 13.137280> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145964, 0.645054, -0.750066,
		0.220869, 0.760298, 0.610872,
		0.964319, -0.076502, -0.253449,
		21.234921, 18.478519, 13.061246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<17.248415, 19.540194, 18.405899> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.019432, 19.460768, 18.724110>,  <16.882042, 19.413113, 18.915037>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.019432, 19.460768, 18.724110>,  <17.248415, 19.540194, 18.405899>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.019432, 19.460768, 18.724110> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118190, -0.980084, -0.159582,
		0.811372, 0.002670, 0.584523,
		-0.572456, -0.198565, 0.795529,
		16.847694, 19.401197, 18.962769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.601151, 19.041828, 18.830374>,  <17.248415, 19.540194, 18.405899>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.601151, 19.041828, 18.830374> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.207148, 19.004387, 18.888344>,  <16.970747, 18.981922, 18.923126>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.207148, 19.004387, 18.888344>,  <17.601151, 19.041828, 18.830374>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.207148, 19.004387, 18.888344> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026125, -0.911256, -0.411010,
		0.170537, -0.401061, 0.900038,
		-0.985005, -0.093605, 0.144925,
		16.911646, 18.976305, 18.931822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.515747, 18.356159, 19.206398>,  <17.601151, 19.041828, 18.830374>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.515747, 18.356159, 19.206398> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.193859, 18.482389, 19.005266>,  <17.000727, 18.558128, 18.884586>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.193859, 18.482389, 19.005266>,  <17.515747, 18.356159, 19.206398>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.193859, 18.482389, 19.005266> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009328, -0.840181, -0.542226,
		-0.593583, -0.441030, 0.673166,
		-0.804719, 0.315576, -0.502831,
		16.952444, 18.577063, 18.854416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.177353, 17.714220, 19.060602>,  <17.515747, 18.356159, 19.206398>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.177353, 17.714220, 19.060602> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.003601, 17.989794, 18.828505>,  <16.899349, 18.155138, 18.689245>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.003601, 17.989794, 18.828505>,  <17.177353, 17.714220, 19.060602>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.003601, 17.989794, 18.828505> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025213, -0.634642, -0.772395,
		-0.900376, -0.350144, 0.258306,
		-0.434381, 0.688934, -0.580244,
		16.873287, 18.196474, 18.654430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.637272, 17.353298, 18.787268>,  <17.177353, 17.714220, 19.060602>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.637272, 17.353298, 18.787268> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.729158, 17.663363, 18.551861>,  <16.784290, 17.849401, 18.410616>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.729158, 17.663363, 18.551861>,  <16.637272, 17.353298, 18.787268>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.729158, 17.663363, 18.551861> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067282, -0.590595, -0.804159,
		-0.970929, 0.224327, -0.083516,
		0.229719, 0.775162, -0.588518,
		16.798075, 17.895910, 18.375305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.095024, 17.432674, 18.289328>,  <16.637272, 17.353298, 18.787268>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.095024, 17.432674, 18.289328> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.428961, 17.583479, 18.128876>,  <16.629322, 17.673962, 18.032604>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.428961, 17.583479, 18.128876>,  <16.095024, 17.432674, 18.289328>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.428961, 17.583479, 18.128876> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122623, -0.583010, -0.803158,
		-0.536660, 0.719697, -0.440490,
		0.834841, 0.377009, -0.401129,
		16.679413, 17.696581, 18.008537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.968925, 17.502831, 17.554399>,  <16.095024, 17.432674, 18.289328>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.968925, 17.502831, 17.554399> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.364832, 17.542929, 17.595018>,  <16.602377, 17.566988, 17.619390>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.364832, 17.542929, 17.595018>,  <15.968925, 17.502831, 17.554399>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.364832, 17.542929, 17.595018> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142038, -0.624212, -0.768234,
		-0.013623, 0.774797, -0.632064,
		0.989767, 0.100243, 0.101547,
		16.661762, 17.573002, 17.625483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.192533, 17.521477, 16.857130>,  <15.968925, 17.502831, 17.554399>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.192533, 17.521477, 16.857130> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.529955, 17.458317, 17.062454>,  <16.732409, 17.420422, 17.185648>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.529955, 17.458317, 17.062454>,  <16.192533, 17.521477, 16.857130>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.529955, 17.458317, 17.062454> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261721, -0.713752, -0.649661,
		0.468956, 0.682368, -0.560763,
		0.843554, -0.157899, 0.513308,
		16.783020, 17.410948, 17.216446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.693062, 17.598120, 16.400343>,  <16.192533, 17.521477, 16.857130>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.693062, 17.598120, 16.400343> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.819071, 17.355146, 16.692038>,  <16.894676, 17.209362, 16.867054>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.819071, 17.355146, 16.692038>,  <16.693062, 17.598120, 16.400343>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.819071, 17.355146, 16.692038> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225970, -0.698257, -0.679246,
		0.921791, 0.378763, -0.082704,
		0.315022, -0.607434, 0.729236,
		16.913578, 17.172916, 16.910809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.471630, 17.355181, 16.303095>,  <16.693062, 17.598120, 16.400343>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.471630, 17.355181, 16.303095> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.307528, 17.088150, 16.551622>,  <17.209066, 16.927933, 16.700739>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.307528, 17.088150, 16.551622>,  <17.471630, 17.355181, 16.303095>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.307528, 17.088150, 16.551622> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358512, -0.744497, -0.563200,
		0.838546, -0.008306, 0.544767,
		-0.410255, -0.667575, 0.621317,
		17.184450, 16.887878, 16.738018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.951572, 16.841360, 16.333548>,  <17.471630, 17.355181, 16.303095>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.951572, 16.841360, 16.333548> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.618576, 16.654196, 16.452217>,  <17.418777, 16.541897, 16.523418>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.618576, 16.654196, 16.452217>,  <17.951572, 16.841360, 16.333548>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.618576, 16.654196, 16.452217> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244751, -0.790989, -0.560743,
		0.497044, -0.394204, 0.773014,
		-0.832493, -0.467910, 0.296675,
		17.368828, 16.513823, 16.541220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.092064, 16.140388, 16.284498>,  <17.951572, 16.841360, 16.333548>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.092064, 16.140388, 16.284498> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.696329, 16.103676, 16.329725>,  <17.458887, 16.081648, 16.356861>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.696329, 16.103676, 16.329725>,  <18.092064, 16.140388, 16.284498>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.696329, 16.103676, 16.329725> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002474, -0.765697, -0.643196,
		0.145609, -0.636619, 0.757307,
		-0.989339, -0.091782, 0.113067,
		17.399527, 16.076141, 16.363646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.002243, 15.335869, 16.382549>,  <18.092064, 16.140388, 16.284498>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.002243, 15.335869, 16.382549> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.669640, 15.524052, 16.264387>,  <17.470078, 15.636961, 16.193491>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.669640, 15.524052, 16.264387>,  <18.002243, 15.335869, 16.382549>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.669640, 15.524052, 16.264387> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183715, -0.734733, -0.653005,
		-0.524254, -0.488709, 0.697367,
		-0.831509, 0.470458, -0.295403,
		17.420187, 15.665189, 16.175766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.448898, 14.869500, 16.346584>,  <18.002243, 15.335869, 16.382549>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.448898, 14.869500, 16.346584> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.335670, 15.175590, 16.115309>,  <17.267735, 15.359243, 15.976543>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.335670, 15.175590, 16.115309>,  <17.448898, 14.869500, 16.346584>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.335670, 15.175590, 16.115309> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115990, -0.625735, -0.771364,
		-0.952060, -0.151285, 0.265885,
		-0.283069, 0.765225, -0.578189,
		17.250750, 15.405157, 15.941852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.504538, 14.268421, 16.835688>,  <17.448898, 14.869500, 16.346584>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.504538, 14.268421, 16.835688> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.696405, 14.047962, 17.108789>,  <17.811527, 13.915687, 17.272650>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.696405, 14.047962, 17.108789>,  <17.504538, 14.268421, 16.835688>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.696405, 14.047962, 17.108789> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.734629, 0.173255, 0.655975,
		-0.479829, -0.816222, -0.321784,
		0.479671, -0.551148, 0.682754,
		17.840307, 13.882618, 17.313616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.989998, 13.715203, 17.068806>,  <17.504538, 14.268421, 16.835688>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.989998, 13.715203, 17.068806> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.277380, 13.756389, 17.343969>,  <17.449808, 13.781100, 17.509068>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.277380, 13.756389, 17.343969>,  <16.989998, 13.715203, 17.068806>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.277380, 13.756389, 17.343969> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.693914, 0.037804, 0.719064,
		0.048071, -0.993961, 0.098645,
		0.718451, 0.103017, 0.687906,
		17.492916, 13.787278, 17.550343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.864511, 13.228102, 17.568844>,  <16.989998, 13.715203, 17.068806>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.864511, 13.228102, 17.568844> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.101664, 13.497939, 17.744761>,  <17.243956, 13.659842, 17.850311>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.101664, 13.497939, 17.744761>,  <16.864511, 13.228102, 17.568844>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.101664, 13.497939, 17.744761> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.673872, 0.116600, 0.729589,
		0.440897, -0.728921, 0.523721,
		0.592879, 0.674595, 0.439791,
		17.279528, 13.700317, 17.876698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.684587, 13.182146, 18.259089>,  <16.864511, 13.228102, 17.568844>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.684587, 13.182146, 18.259089> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.839102, 13.550428, 18.236876>,  <16.931810, 13.771398, 18.223549>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.839102, 13.550428, 18.236876>,  <16.684587, 13.182146, 18.259089>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.839102, 13.550428, 18.236876> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.716946, 0.337584, 0.609939,
		0.580322, -0.195796, 0.790500,
		0.386284, 0.920707, -0.055532,
		16.954987, 13.826640, 18.220217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.718828, 13.552979, 18.945814>,  <16.684587, 13.182146, 18.259089>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.718828, 13.552979, 18.945814> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.725138, 13.840882, 18.668196>,  <16.728924, 14.013624, 18.501625>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.725138, 13.840882, 18.668196>,  <16.718828, 13.552979, 18.945814>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.725138, 13.840882, 18.668196> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.719155, 0.490419, 0.492245,
		0.694671, 0.491360, 0.525355,
		0.015775, 0.719760, -0.694044,
		16.729870, 14.056810, 18.459982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.677931, 14.164351, 19.380564>,  <16.718828, 13.552979, 18.945814>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.677931, 14.164351, 19.380564> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.610365, 14.303761, 19.011782>,  <16.569826, 14.387408, 18.790512>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.610365, 14.303761, 19.011782>,  <16.677931, 14.164351, 19.380564>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.610365, 14.303761, 19.011782> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.591556, 0.712340, 0.377668,
		0.788371, 0.609180, 0.085850,
		-0.168913, 0.348528, -0.921953,
		16.559690, 14.408319, 18.735195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.787973, 14.817834, 19.437263>,  <16.677931, 14.164351, 19.380564>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.787973, 14.817834, 19.437263> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.565191, 14.794662, 19.105856>,  <16.431522, 14.780760, 18.907011>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.565191, 14.794662, 19.105856>,  <16.787973, 14.817834, 19.437263>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.565191, 14.794662, 19.105856> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.588481, 0.731465, 0.344454,
		0.586079, 0.679413, -0.441484,
		-0.556957, -0.057928, -0.828518,
		16.398104, 14.777285, 18.857300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.854767, 15.466394, 19.174656>,  <16.787973, 14.817834, 19.437263>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.854767, 15.466394, 19.174656> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.521366, 15.304541, 19.024164>,  <16.321325, 15.207428, 18.933868>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.521366, 15.304541, 19.024164>,  <16.854767, 15.466394, 19.174656>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.521366, 15.304541, 19.024164> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.546405, 0.704677, 0.452626,
		0.081973, 0.582838, -0.808443,
		-0.833499, -0.404635, -0.376230,
		16.271317, 15.183150, 18.911295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.587936, 16.078367, 18.832516>,  <16.854767, 15.466394, 19.174656>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.587936, 16.078367, 18.832516> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.306656, 15.803412, 18.905190>,  <16.137888, 15.638439, 18.948793>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.306656, 15.803412, 18.905190>,  <16.587936, 16.078367, 18.832516>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.306656, 15.803412, 18.905190> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.593295, 0.708128, 0.382827,
		-0.391805, 0.161412, -0.905779,
		-0.703200, -0.687387, 0.181683,
		16.095695, 15.597197, 18.959694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.947556, 16.320520, 18.557766>,  <16.587936, 16.078367, 18.832516>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.947556, 16.320520, 18.557766> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.833071, 16.056019, 18.835133>,  <15.764380, 15.897318, 19.001553>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.833071, 16.056019, 18.835133>,  <15.947556, 16.320520, 18.557766>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.833071, 16.056019, 18.835133> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.707855, 0.633666, 0.312103,
		-0.645773, -0.401509, -0.649436,
		-0.286214, -0.661254, 0.693415,
		15.747207, 15.857642, 19.043158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.209518, 16.436285, 18.688797>,  <15.947556, 16.320520, 18.557766>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.209518, 16.436285, 18.688797> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.320309, 16.232840, 19.014889>,  <15.386783, 16.110771, 19.210543>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.320309, 16.232840, 19.014889>,  <15.209518, 16.436285, 18.688797>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.320309, 16.232840, 19.014889> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.697595, 0.477016, 0.534618,
		-0.660791, -0.716775, -0.222685,
		0.276976, -0.508615, 0.815227,
		15.403401, 16.080256, 19.259457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.590320, 16.135733, 18.909483>,  <15.209518, 16.436285, 18.688797>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.590320, 16.135733, 18.909483> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.816507, 16.071203, 19.233019>,  <14.952220, 16.032486, 19.427139>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.816507, 16.071203, 19.233019>,  <14.590320, 16.135733, 18.909483>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.816507, 16.071203, 19.233019> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.768887, 0.251728, 0.587746,
		-0.298426, -0.954257, 0.018303,
		0.565469, -0.161326, 0.808838,
		14.986148, 16.022806, 19.475670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.130305, 15.806855, 19.362949>,  <14.590320, 16.135733, 18.909483>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.130305, 15.806855, 19.362949> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.429823, 15.989291, 19.555321>,  <14.609533, 16.098753, 19.670744>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.429823, 15.989291, 19.555321>,  <14.130305, 15.806855, 19.362949>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.429823, 15.989291, 19.555321> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.653108, 0.384066, 0.652644,
		0.112957, -0.802792, 0.585462,
		0.748793, 0.456090, 0.480927,
		14.654461, 16.126118, 19.699598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.998612, 15.701214, 20.047779>,  <14.130305, 15.806855, 19.362949>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.998612, 15.701214, 20.047779> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.219483, 16.031693, 20.003059>,  <14.352006, 16.229980, 19.976227>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.219483, 16.031693, 20.003059>,  <13.998612, 15.701214, 20.047779>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.219483, 16.031693, 20.003059> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.560072, 0.466919, 0.684329,
		0.617593, -0.315254, 0.720551,
		0.552176, 0.826197, -0.111802,
		14.385137, 16.279551, 19.969519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.060683, 15.107393, 20.572554>,  <13.998612, 15.701214, 20.047779>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.060683, 15.107393, 20.572554> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.790074, 14.872208, 20.749918>,  <13.627708, 14.731096, 20.856337>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.790074, 14.872208, 20.749918>,  <14.060683, 15.107393, 20.572554>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.790074, 14.872208, 20.749918> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052448, -0.639057, -0.767369,
		0.734552, -0.495887, 0.463174,
		-0.676523, -0.587965, 0.443412,
		13.587117, 14.695818, 20.882942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.158362, 14.435463, 20.341162>,  <14.060683, 15.107393, 20.572554>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.158362, 14.435463, 20.341162> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.811096, 14.339715, 20.515055>,  <13.602736, 14.282267, 20.619390>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.811096, 14.339715, 20.515055>,  <14.158362, 14.435463, 20.341162>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.811096, 14.339715, 20.515055> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198930, -0.634684, -0.746729,
		0.454661, -0.734765, 0.503393,
		-0.868165, -0.239369, 0.434733,
		13.550647, 14.267904, 20.645475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.091043, 13.641452, 20.324028>,  <14.158362, 14.435463, 20.341162>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.091043, 13.641452, 20.324028> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.742668, 13.834445, 20.361290>,  <13.533643, 13.950241, 20.383646>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.742668, 13.834445, 20.361290>,  <14.091043, 13.641452, 20.324028>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.742668, 13.834445, 20.361290> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386098, -0.554643, -0.737089,
		-0.303966, -0.677925, 0.669345,
		-0.870938, 0.482483, 0.093153,
		13.481387, 13.979190, 20.389236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.611119, 13.036773, 20.361773>,  <14.091043, 13.641452, 20.324028>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.611119, 13.036773, 20.361773> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.419464, 13.377037, 20.275236>,  <13.304471, 13.581196, 20.223314>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.419464, 13.377037, 20.275236>,  <13.611119, 13.036773, 20.361773>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.419464, 13.377037, 20.275236> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.605813, -0.498852, -0.619789,
		-0.635153, -0.165900, 0.754359,
		-0.479136, 0.850661, -0.216343,
		13.275723, 13.632236, 20.210333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.003898, 12.860456, 20.492897>,  <13.611119, 13.036773, 20.361773>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.003898, 12.860456, 20.492897> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.989289, 13.168811, 20.238527>,  <12.980524, 13.353824, 20.085905>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.989289, 13.168811, 20.238527>,  <13.003898, 12.860456, 20.492897>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.989289, 13.168811, 20.238527> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.589530, -0.530445, -0.609166,
		-0.806920, 0.352648, 0.473834,
		-0.036522, 0.770887, -0.635923,
		12.978333, 13.400077, 20.047750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.331989, 13.033860, 20.278994>,  <13.003898, 12.860456, 20.492897>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.331989, 13.033860, 20.278994> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.547233, 13.197836, 19.984406>,  <12.676379, 13.296222, 19.807653>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.547233, 13.197836, 19.984406>,  <12.331989, 13.033860, 20.278994>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.547233, 13.197836, 19.984406> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.592054, -0.438073, -0.676434,
		-0.599925, 0.800026, 0.006975,
		0.538110, 0.409939, -0.736470,
		12.708666, 13.320818, 19.763464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.808149, 13.220573, 19.833170>,  <12.331989, 13.033860, 20.278994>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.808149, 13.220573, 19.833170> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.151843, 13.213105, 19.628674>,  <12.358059, 13.208624, 19.505976>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.151843, 13.213105, 19.628674>,  <11.808149, 13.220573, 19.833170>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.151843, 13.213105, 19.628674> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415988, -0.607179, -0.676969,
		-0.297775, 0.794346, -0.529476,
		0.859235, -0.018672, -0.511241,
		12.409614, 13.207503, 19.475302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.517150, 13.333460, 19.121916>,  <11.808149, 13.220573, 19.833170>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.517150, 13.333460, 19.121916> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.884271, 13.176406, 19.098324>,  <12.104543, 13.082173, 19.084169>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.884271, 13.176406, 19.098324>,  <11.517150, 13.333460, 19.121916>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.884271, 13.176406, 19.098324> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292926, -0.569342, -0.768143,
		0.268019, 0.722280, -0.637556,
		0.917802, -0.392634, -0.058980,
		12.159611, 13.058616, 19.080629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.615566, 13.395569, 18.496555>,  <11.517150, 13.333460, 19.121916>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.615566, 13.395569, 18.496555> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.858949, 13.097851, 18.606686>,  <12.004978, 12.919220, 18.672764>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.858949, 13.097851, 18.606686>,  <11.615566, 13.395569, 18.496555>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.858949, 13.097851, 18.606686> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372739, -0.574325, -0.728845,
		0.700604, 0.340845, -0.626880,
		0.608457, -0.744295, 0.275328,
		12.041486, 12.874562, 18.689283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.794343, 12.993053, 17.876881>,  <11.615566, 13.395569, 18.496555>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.794343, 12.993053, 17.876881> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.930987, 12.722939, 18.138350>,  <12.012974, 12.560870, 18.295231>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.930987, 12.722939, 18.138350>,  <11.794343, 12.993053, 17.876881>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.930987, 12.722939, 18.138350> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449488, -0.728204, -0.517377,
		0.825386, -0.117077, -0.552296,
		0.341611, -0.675286, 0.653674,
		12.033471, 12.520352, 18.334452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.250406, 12.624135, 17.509108>,  <11.794343, 12.993053, 17.876881>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.250406, 12.624135, 17.509108> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.135839, 12.400583, 17.820393>,  <12.067098, 12.266452, 18.007164>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.135839, 12.400583, 17.820393>,  <12.250406, 12.624135, 17.509108>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.135839, 12.400583, 17.820393> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410515, -0.662324, -0.626741,
		0.865703, -0.498979, -0.039727,
		-0.286419, -0.558880, 0.778215,
		12.049912, 12.232920, 18.053858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.436985, 11.869547, 17.494587>,  <12.250406, 12.624135, 17.509108>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.436985, 11.869547, 17.494587> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.107463, 11.919260, 17.715820>,  <11.909750, 11.949088, 17.848560>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.107463, 11.919260, 17.715820>,  <12.436985, 11.869547, 17.494587>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.107463, 11.919260, 17.715820> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456303, -0.724295, -0.516899,
		0.336353, -0.678197, 0.653388,
		-0.823805, 0.124282, 0.553082,
		11.860321, 11.956545, 17.881744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<12.891550, 18.247629, 25.206493> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<13.287778, 18.237337, 25.152668>,  <13.525515, 18.231163, 25.120373>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<13.287778, 18.237337, 25.152668>,  <12.891550, 18.247629, 25.206493>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.287778, 18.237337, 25.152668> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123007, -0.599486, -0.790877,
		-0.060322, 0.799972, -0.596998,
		0.990571, -0.025728, -0.134564,
		13.584949, 18.229618, 25.112299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.942368, 18.238554, 24.471857>,  <12.891550, 18.247629, 25.206493>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.942368, 18.238554, 24.471857> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<13.260740, 18.067783, 24.643543>,  <13.451764, 17.965321, 24.746555>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<13.260740, 18.067783, 24.643543>,  <12.942368, 18.238554, 24.471857>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.260740, 18.067783, 24.643543> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119604, -0.805915, -0.579824,
		0.593453, 0.410165, -0.692516,
		0.795932, -0.426926, 0.429216,
		13.499520, 17.939705, 24.772308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.192341, 18.010592, 23.880869>,  <12.942368, 18.238554, 24.471857>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.192341, 18.010592, 23.880869> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<13.390952, 17.817616, 24.169512>,  <13.510118, 17.701830, 24.342697>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<13.390952, 17.817616, 24.169512>,  <13.192341, 18.010592, 23.880869>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.390952, 17.817616, 24.169512> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043468, -0.816460, -0.575764,
		0.866932, 0.317250, -0.384424,
		0.496527, -0.482438, 0.721605,
		13.539910, 17.672884, 24.385994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.928009, 17.761082, 23.567793>,  <13.192341, 18.010592, 23.880869>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.928009, 17.761082, 23.567793> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<13.813543, 17.537243, 23.878910>,  <13.744864, 17.402939, 24.065580>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<13.813543, 17.537243, 23.878910>,  <13.928009, 17.761082, 23.567793>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.813543, 17.537243, 23.878910> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078279, -0.822678, -0.563092,
		0.954978, -0.100252, 0.279225,
		-0.286164, -0.559598, 0.777792,
		13.727695, 17.369364, 24.112247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.394434, 17.187212, 23.608101>,  <13.928009, 17.761082, 23.567793>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.394434, 17.187212, 23.608101> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.087610, 17.054438, 23.827715>,  <13.903516, 16.974773, 23.959482>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.087610, 17.054438, 23.827715>,  <14.394434, 17.187212, 23.608101>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.087610, 17.054438, 23.827715> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050480, -0.884330, -0.464125,
		0.639586, -0.328297, 0.695090,
		-0.767060, -0.331936, 0.549033,
		13.857492, 16.954857, 23.992424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.618525, 16.448536, 23.818836>,  <14.394434, 17.187212, 23.608101>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.618525, 16.448536, 23.818836> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.221209, 16.471350, 23.859083>,  <13.982820, 16.485037, 23.883232>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.221209, 16.471350, 23.859083>,  <14.618525, 16.448536, 23.818836>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.221209, 16.471350, 23.859083> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108357, -0.763060, -0.637180,
		0.040437, -0.643807, 0.764119,
		-0.993289, 0.057032, 0.100617,
		13.923222, 16.488459, 23.889269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.401167, 15.763634, 24.041800>,  <14.618525, 16.448536, 23.818836>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.401167, 15.763634, 24.041800> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.077257, 15.933985, 23.880358>,  <13.882912, 16.036196, 23.783493>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.077257, 15.933985, 23.880358>,  <14.401167, 15.763634, 24.041800>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.077257, 15.933985, 23.880358> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136294, -0.805585, -0.576591,
		-0.570693, -0.411899, 0.710386,
		-0.809774, 0.425877, -0.403603,
		13.834325, 16.061749, 23.759277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.944491, 15.222999, 24.043507>,  <14.401167, 15.763634, 24.041800>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.944491, 15.222999, 24.043507> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<13.797070, 15.488556, 23.783226>,  <13.708616, 15.647890, 23.627058>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<13.797070, 15.488556, 23.783226>,  <13.944491, 15.222999, 24.043507>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.797070, 15.488556, 23.783226> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263970, -0.745903, -0.611513,
		-0.891341, -0.053609, 0.450153,
		-0.368553, 0.663893, -0.650703,
		13.686503, 15.687724, 23.588015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.358518, 14.857957, 23.705050>,  <13.944491, 15.222999, 24.043507>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.358518, 14.857957, 23.705050> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<13.464045, 15.149598, 23.452444>,  <13.527361, 15.324583, 23.300880>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<13.464045, 15.149598, 23.452444>,  <13.358518, 14.857957, 23.705050>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.464045, 15.149598, 23.452444> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139605, -0.618953, -0.772922,
		-0.954416, 0.292074, -0.061505,
		0.263818, 0.729103, -0.631514,
		13.543190, 15.368329, 23.262991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.872652, 14.790148, 23.178053>,  <13.358518, 14.857957, 23.705050>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.872652, 14.790148, 23.178053> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<13.184814, 15.000789, 23.043201>,  <13.372112, 15.127173, 22.962292>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<13.184814, 15.000789, 23.043201>,  <12.872652, 14.790148, 23.178053>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.184814, 15.000789, 23.043201> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005838, -0.545281, -0.838233,
		-0.625245, 0.652194, -0.428615,
		0.780407, 0.526603, -0.337127,
		13.418937, 15.158770, 22.942062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.583321, 15.027882, 22.608524>,  <12.872652, 14.790148, 23.178053>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.583321, 15.027882, 22.608524> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<12.980455, 15.055885, 22.569798>,  <13.218737, 15.072687, 22.546562>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<12.980455, 15.055885, 22.569798>,  <12.583321, 15.027882, 22.608524>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.980455, 15.055885, 22.569798> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061659, -0.393841, -0.917108,
		-0.102336, 0.916508, -0.386704,
		0.992837, 0.070009, -0.096815,
		13.278307, 15.076888, 22.540752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.604804, 15.399694, 22.045448>,  <12.583321, 15.027882, 22.608524>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.604804, 15.399694, 22.045448> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<12.975197, 15.249861, 22.064386>,  <13.197433, 15.159961, 22.075750>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<12.975197, 15.249861, 22.064386>,  <12.604804, 15.399694, 22.045448>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.975197, 15.249861, 22.064386> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024912, -0.064514, -0.997606,
		0.376742, 0.924946, -0.050407,
		0.925983, -0.374584, 0.047347,
		13.252992, 15.137486, 22.078590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.872962, 15.630994, 21.424959>,  <12.604804, 15.399694, 22.045448>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.872962, 15.630994, 21.424959> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<13.109119, 15.330309, 21.542511>,  <13.250813, 15.149899, 21.613043>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<13.109119, 15.330309, 21.542511>,  <12.872962, 15.630994, 21.424959>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.109119, 15.330309, 21.542511> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121144, -0.277455, -0.953070,
		0.797973, 0.598287, -0.072743,
		0.590393, -0.751712, 0.293881,
		13.286238, 15.104795, 21.630674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.528962, 15.555843, 21.004477>,  <12.872962, 15.630994, 21.424959>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.528962, 15.555843, 21.004477> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<13.437189, 15.205569, 21.174435>,  <13.382125, 14.995405, 21.276409>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<13.437189, 15.205569, 21.174435>,  <13.528962, 15.555843, 21.004477>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.437189, 15.205569, 21.174435> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087246, -0.453287, -0.887085,
		0.969407, -0.166456, 0.180398,
		-0.229432, -0.875685, 0.424896,
		13.368360, 14.942863, 21.301903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.139051, 15.946102, 20.813560>,  <13.528962, 15.555843, 21.004477>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.139051, 15.946102, 20.813560> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.259659, 16.259521, 20.596254>,  <14.332024, 16.447573, 20.465870>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.259659, 16.259521, 20.596254>,  <14.139051, 15.946102, 20.813560>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.259659, 16.259521, 20.596254> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345736, 0.620854, 0.703567,
		0.888568, -0.024313, 0.458101,
		0.301519, 0.783549, -0.543265,
		14.350115, 16.494587, 20.433275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.373272, 16.378881, 21.329342>,  <14.139051, 15.946102, 20.813560>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.373272, 16.378881, 21.329342> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.313330, 16.617002, 21.013580>,  <14.277365, 16.759876, 20.824123>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.313330, 16.617002, 21.013580>,  <14.373272, 16.378881, 21.329342>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.313330, 16.617002, 21.013580> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320689, 0.725988, 0.608358,
		0.935255, 0.344318, 0.082115,
		-0.149855, 0.595304, -0.789403,
		14.268373, 16.795593, 20.776760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.637901, 17.075129, 21.501514>,  <14.373272, 16.378881, 21.329342>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.637901, 17.075129, 21.501514> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.379495, 17.123768, 21.200085>,  <14.224451, 17.152952, 21.019226>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.379495, 17.123768, 21.200085>,  <14.637901, 17.075129, 21.501514>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.379495, 17.123768, 21.200085> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337778, 0.839773, 0.425074,
		0.684520, 0.529146, -0.501434,
		-0.646017, 0.121599, -0.753575,
		14.185690, 17.160248, 20.974012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.873169, 17.688314, 21.178490>,  <14.637901, 17.075129, 21.501514>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.873169, 17.688314, 21.178490> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.492461, 17.667971, 21.057463>,  <14.264036, 17.655764, 20.984846>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.492461, 17.667971, 21.057463>,  <14.873169, 17.688314, 21.178490>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.492461, 17.667971, 21.057463> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231662, 0.765711, 0.600017,
		0.201163, 0.641171, -0.740563,
		-0.951770, -0.050859, -0.302568,
		14.206930, 17.652714, 20.966692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.647968, 18.386419, 20.982578>,  <14.873169, 17.688314, 21.178490>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.647968, 18.386419, 20.982578> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.320100, 18.179741, 21.081505>,  <14.123379, 18.055735, 21.140862>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.320100, 18.179741, 21.081505>,  <14.647968, 18.386419, 20.982578>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.320100, 18.179741, 21.081505> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368825, 0.806378, 0.462301,
		-0.438300, 0.287718, -0.851534,
		-0.819671, -0.516694, 0.247318,
		14.074199, 18.024733, 21.155701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.210987, 18.796427, 20.735210>,  <14.647968, 18.386419, 20.982578>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.210987, 18.796427, 20.735210> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<13.993135, 18.562691, 20.975851>,  <13.862425, 18.422449, 21.120235>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<13.993135, 18.562691, 20.975851>,  <14.210987, 18.796427, 20.735210>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.993135, 18.562691, 20.975851> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465181, 0.807341, 0.363053,
		-0.697844, -0.082124, -0.711526,
		-0.544629, -0.584342, 0.601601,
		13.829747, 18.387388, 21.156332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.582496, 19.048075, 20.750666>,  <14.210987, 18.796427, 20.735210>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.582496, 19.048075, 20.750666> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<13.639278, 18.850161, 21.093603>,  <13.673348, 18.731413, 21.299366>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<13.639278, 18.850161, 21.093603>,  <13.582496, 19.048075, 20.750666>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.639278, 18.850161, 21.093603> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205847, 0.832424, 0.514488,
		-0.968233, -0.249517, 0.016319,
		0.141957, -0.494785, 0.857342,
		13.681866, 18.701725, 21.350805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.117979, 19.398117, 21.186623>,  <13.582496, 19.048075, 20.750666>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.117979, 19.398117, 21.186623> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<13.351810, 19.200928, 21.444380>,  <13.492109, 19.082613, 21.599035>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<13.351810, 19.200928, 21.444380>,  <13.117979, 19.398117, 21.186623>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.351810, 19.200928, 21.444380> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038898, 0.776295, 0.629169,
		-0.810405, -0.392864, 0.434628,
		0.584577, -0.492975, 0.644395,
		13.527184, 19.053036, 21.637699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.849368, 19.635435, 21.862408>,  <13.117979, 19.398117, 21.186623>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.849368, 19.635435, 21.862408> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<13.210307, 19.484447, 21.945631>,  <13.426870, 19.393856, 21.995565>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<13.210307, 19.484447, 21.945631>,  <12.849368, 19.635435, 21.862408>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.210307, 19.484447, 21.945631> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127796, 0.695328, 0.707240,
		-0.411629, -0.611586, 0.675665,
		0.902347, -0.377467, 0.208058,
		13.481011, 19.371208, 22.008049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.981021, 19.519094, 22.602968>,  <12.849368, 19.635435, 21.862408>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.981021, 19.519094, 22.602968> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<13.346166, 19.546423, 22.441963>,  <13.565252, 19.562820, 22.345360>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<13.346166, 19.546423, 22.441963>,  <12.981021, 19.519094, 22.602968>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.346166, 19.546423, 22.441963> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346456, 0.391951, 0.852257,
		0.215991, -0.917446, 0.334127,
		0.912861, 0.068319, -0.402513,
		13.620024, 19.566919, 22.321209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.410327, 19.354855, 23.215277>,  <12.981021, 19.519094, 22.602968>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.410327, 19.354855, 23.215277> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<13.669752, 19.496372, 22.945702>,  <13.825407, 19.581284, 22.783957>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<13.669752, 19.496372, 22.945702>,  <13.410327, 19.354855, 23.215277>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.669752, 19.496372, 22.945702> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.626358, 0.255010, 0.736645,
		0.432484, -0.899887, -0.056214,
		0.648562, 0.353797, -0.673940,
		13.864321, 19.602510, 22.743519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.129423, 19.129477, 23.500662>,  <13.410327, 19.354855, 23.215277>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.129423, 19.129477, 23.500662> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.181425, 19.449760, 23.266752>,  <14.212626, 19.641932, 23.126406>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.181425, 19.449760, 23.266752>,  <14.129423, 19.129477, 23.500662>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.181425, 19.449760, 23.266752> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.796383, 0.267013, 0.542658,
		0.590654, -0.536254, -0.602959,
		0.130004, 0.800710, -0.584776,
		14.220427, 19.689974, 23.091320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.883700, 19.172150, 23.337353>,  <14.129423, 19.129477, 23.500662>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.883700, 19.172150, 23.337353> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.689720, 19.520647, 23.307005>,  <14.573332, 19.729746, 23.288795>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.689720, 19.520647, 23.307005>,  <14.883700, 19.172150, 23.337353>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.689720, 19.520647, 23.307005> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535648, 0.364485, 0.761730,
		0.691306, 0.328761, -0.643437,
		-0.484951, 0.871244, -0.075870,
		14.544235, 19.782021, 23.284245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.421388, 19.776869, 23.266056>,  <14.883700, 19.172150, 23.337353>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.421388, 19.776869, 23.266056> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.085279, 19.939741, 23.409245>,  <14.883613, 20.037464, 23.495157>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.085279, 19.939741, 23.409245>,  <15.421388, 19.776869, 23.266056>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.085279, 19.939741, 23.409245> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529822, 0.476625, 0.701510,
		0.115023, 0.779122, -0.616229,
		-0.840273, 0.407182, 0.357973,
		14.833197, 20.061895, 23.516636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<10.541839, 22.127378, 23.580030> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.818871, 21.924974, 23.785664>,  <10.985091, 21.803532, 23.909044>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.818871, 21.924974, 23.785664>,  <10.541839, 22.127378, 23.580030>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.818871, 21.924974, 23.785664> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275607, -0.472983, -0.836856,
		0.666613, 0.721276, -0.188119,
		0.692581, -0.506012, 0.514085,
		11.026646, 21.773170, 23.939890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.245922, 22.191929, 23.309448>,  <10.541839, 22.127378, 23.580030>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.245922, 22.191929, 23.309448> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.241109, 21.840462, 23.500360>,  <11.238221, 21.629581, 23.614908>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.241109, 21.840462, 23.500360>,  <11.245922, 22.191929, 23.309448>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.241109, 21.840462, 23.500360> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328492, -0.454296, -0.828075,
		0.944430, 0.146818, 0.294103,
		-0.012034, -0.878669, 0.477280,
		11.237498, 21.576860, 23.643545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.774806, 21.864641, 22.983067>,  <11.245922, 22.191929, 23.309448>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.774806, 21.864641, 22.983067> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.578088, 21.564278, 23.159370>,  <11.460057, 21.384060, 23.265152>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.578088, 21.564278, 23.159370>,  <11.774806, 21.864641, 22.983067>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.578088, 21.564278, 23.159370> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181605, -0.583536, -0.791521,
		0.851562, -0.309222, 0.423349,
		-0.491795, -0.750911, 0.440760,
		11.430550, 21.339005, 23.291599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.143276, 21.293867, 22.908667>,  <11.774806, 21.864641, 22.983067>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.143276, 21.293867, 22.908667> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.787922, 21.122330, 22.974228>,  <11.574709, 21.019407, 23.013565>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.787922, 21.122330, 22.974228>,  <12.143276, 21.293867, 22.908667>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.787922, 21.122330, 22.974228> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153266, -0.613569, -0.774624,
		0.432758, -0.663044, 0.610813,
		-0.888386, -0.428842, 0.163905,
		11.521406, 20.993677, 23.023399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.251462, 20.570459, 22.901649>,  <12.143276, 21.293867, 22.908667>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.251462, 20.570459, 22.901649> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.868251, 20.656399, 22.825731>,  <11.638324, 20.707962, 22.780180>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.868251, 20.656399, 22.825731>,  <12.251462, 20.570459, 22.901649>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.868251, 20.656399, 22.825731> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010839, -0.688733, -0.724935,
		-0.286470, -0.692451, 0.662154,
		-0.958028, 0.214849, -0.189796,
		11.580842, 20.720854, 22.768793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.826465, 19.876923, 22.808779>,  <12.251462, 20.570459, 22.901649>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.826465, 19.876923, 22.808779> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.617805, 20.178333, 22.648739>,  <11.492610, 20.359180, 22.552715>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.617805, 20.178333, 22.648739>,  <11.826465, 19.876923, 22.808779>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.617805, 20.178333, 22.648739> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210129, -0.567992, -0.795758,
		-0.826879, -0.331033, 0.454630,
		-0.521649, 0.753527, -0.400101,
		11.461310, 20.404390, 22.528709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.130367, 19.608282, 22.549673>,  <11.826465, 19.876923, 22.808779>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.130367, 19.608282, 22.549673> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.148125, 19.957541, 22.355499>,  <11.158779, 20.167095, 22.238995>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.148125, 19.957541, 22.355499>,  <11.130367, 19.608282, 22.549673>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.148125, 19.957541, 22.355499> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269636, -0.457406, -0.847394,
		-0.961939, 0.168510, 0.215125,
		0.044395, 0.873146, -0.485433,
		11.161443, 20.219484, 22.209869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.654301, 19.511225, 22.095835>,  <11.130367, 19.608282, 22.549673>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.654301, 19.511225, 22.095835> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.816411, 19.823677, 21.905851>,  <10.913677, 20.011148, 21.791862>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.816411, 19.823677, 21.905851>,  <10.654301, 19.511225, 22.095835>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.816411, 19.823677, 21.905851> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097516, -0.479633, -0.872034,
		-0.908979, 0.399730, -0.118211,
		0.405276, 0.781133, -0.474956,
		10.937994, 20.058018, 21.763365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.122888, 19.757448, 21.643200>,  <10.654301, 19.511225, 22.095835>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.122888, 19.757448, 21.643200> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.482625, 19.869671, 21.509054>,  <10.698467, 19.937004, 21.428566>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.482625, 19.869671, 21.509054>,  <10.122888, 19.757448, 21.643200>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.482625, 19.869671, 21.509054> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157151, -0.508340, -0.846696,
		-0.408025, 0.814173, -0.413083,
		0.899344, 0.280557, -0.335364,
		10.752428, 19.953838, 21.408445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.027077, 19.895102, 20.946753>,  <10.122888, 19.757448, 21.643200>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.027077, 19.895102, 20.946753> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.423268, 19.842199, 20.962027>,  <10.660983, 19.810457, 20.971191>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.423268, 19.842199, 20.962027>,  <10.027077, 19.895102, 20.946753>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.423268, 19.842199, 20.962027> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011279, -0.354416, -0.935020,
		0.137194, 0.925688, -0.352534,
		0.990480, -0.132255, 0.038183,
		10.720412, 19.802523, 20.973482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.342377, 20.249641, 20.331535>,  <10.027077, 19.895102, 20.946753>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.342377, 20.249641, 20.331535> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.595437, 19.973703, 20.472315>,  <10.747273, 19.808140, 20.556782>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.595437, 19.973703, 20.472315>,  <10.342377, 20.249641, 20.331535>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.595437, 19.973703, 20.472315> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252336, -0.246036, -0.935838,
		0.732175, 0.680868, 0.018418,
		0.632650, -0.689844, 0.351949,
		10.785233, 19.766750, 20.577900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.903827, 20.307734, 19.943348>,  <10.342377, 20.249641, 20.331535>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.903827, 20.307734, 19.943348> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.947026, 19.945719, 20.107904>,  <10.972946, 19.728510, 20.206638>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.947026, 19.945719, 20.107904>,  <10.903827, 20.307734, 19.943348>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.947026, 19.945719, 20.107904> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015586, -0.415304, -0.909549,
		0.994029, 0.091818, -0.058958,
		0.107999, -0.905037, 0.411394,
		10.979425, 19.674208, 20.231323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.400160, 20.026487, 19.508463>,  <10.903827, 20.307734, 19.943348>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.400160, 20.026487, 19.508463> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.196774, 19.730894, 19.685265>,  <11.074741, 19.553537, 19.791346>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.196774, 19.730894, 19.685265>,  <11.400160, 20.026487, 19.508463>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.196774, 19.730894, 19.685265> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124825, -0.444633, -0.886972,
		0.851987, -0.506168, 0.133837,
		-0.508466, -0.738983, 0.442004,
		11.044234, 19.509199, 19.817865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.682025, 19.521181, 19.099089>,  <11.400160, 20.026487, 19.508463>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.682025, 19.521181, 19.099089> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.336980, 19.403452, 19.263660>,  <11.129952, 19.332815, 19.362404>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.336980, 19.403452, 19.263660>,  <11.682025, 19.521181, 19.099089>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.336980, 19.403452, 19.263660> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133329, -0.652278, -0.746162,
		0.487978, -0.698504, 0.523421,
		-0.862613, -0.294323, 0.411429,
		11.078197, 19.315155, 19.387089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.315241, 19.226044, 19.165194>,  <11.682025, 19.521181, 19.099089>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.315241, 19.226044, 19.165194> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.589680, 19.425430, 18.953232>,  <12.754343, 19.545063, 18.826054>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.589680, 19.425430, 18.953232>,  <12.315241, 19.226044, 19.165194>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.589680, 19.425430, 18.953232> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084835, 0.778232, 0.622220,
		0.722544, -0.381950, 0.576233,
		0.686100, 0.498466, -0.529904,
		12.795509, 19.574970, 18.794260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.872534, 19.579102, 19.665787>,  <12.315241, 19.226044, 19.165194>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.872534, 19.579102, 19.665787> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.895230, 19.759605, 19.309551>,  <12.908848, 19.867908, 19.095810>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.895230, 19.759605, 19.309551>,  <12.872534, 19.579102, 19.665787>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.895230, 19.759605, 19.309551> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244497, 0.858582, 0.450621,
		0.967989, -0.243314, -0.061616,
		0.056740, 0.451261, -0.890587,
		12.912252, 19.894983, 19.042376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.531064, 19.944843, 19.566801>,  <12.872534, 19.579102, 19.665787>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.531064, 19.944843, 19.566801> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.292054, 20.131369, 19.305874>,  <13.148648, 20.243284, 19.149319>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.292054, 20.131369, 19.305874>,  <13.531064, 19.944843, 19.566801>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.292054, 20.131369, 19.305874> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125588, 0.857897, 0.498237,
		0.791955, 0.215785, -0.571178,
		-0.597524, 0.466314, -0.652316,
		13.112797, 20.271263, 19.110180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.891848, 20.546360, 19.315386>,  <13.531064, 19.944843, 19.566801>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.891848, 20.546360, 19.315386> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.507380, 20.628778, 19.241959>,  <13.276699, 20.678230, 19.197903>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.507380, 20.628778, 19.241959>,  <13.891848, 20.546360, 19.315386>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.507380, 20.628778, 19.241959> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094897, 0.871429, 0.481254,
		0.259128, 0.445147, -0.857145,
		-0.961170, 0.206047, -0.183569,
		13.219028, 20.690592, 19.186888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.858324, 21.235334, 18.981071>,  <13.891848, 20.546360, 19.315386>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.858324, 21.235334, 18.981071> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.517536, 21.150270, 19.172457>,  <13.313064, 21.099232, 19.287287>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.517536, 21.150270, 19.172457>,  <13.858324, 21.235334, 18.981071>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.517536, 21.150270, 19.172457> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063172, 0.865382, 0.497115,
		-0.519767, 0.453752, -0.723844,
		-0.851969, -0.212657, 0.478462,
		13.261946, 21.086473, 19.315994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.543891, 21.864494, 19.095045>,  <13.858324, 21.235334, 18.981071>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.543891, 21.864494, 19.095045> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.325754, 21.622616, 19.327232>,  <13.194872, 21.477489, 19.466545>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.325754, 21.622616, 19.327232>,  <13.543891, 21.864494, 19.095045>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.325754, 21.622616, 19.327232> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024733, 0.703815, 0.709953,
		-0.837849, 0.372810, -0.398775,
		-0.545341, -0.604696, 0.580470,
		13.162152, 21.441206, 19.501373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.045525, 22.294565, 19.246765>,  <13.543891, 21.864494, 19.095045>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.045525, 22.294565, 19.246765> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.077846, 22.026636, 19.542009>,  <13.097239, 21.865879, 19.719156>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.077846, 22.026636, 19.542009>,  <13.045525, 22.294565, 19.246765>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.077846, 22.026636, 19.542009> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095604, 0.731911, 0.674659,
		-0.992134, -0.125081, -0.004897,
		0.080802, -0.669821, 0.738113,
		13.102086, 21.825689, 19.763443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.623093, 22.553331, 19.862661>,  <13.045525, 22.294565, 19.246765>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.623093, 22.553331, 19.862661> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.829161, 22.262226, 20.043751>,  <12.952802, 22.087563, 20.152405>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.829161, 22.262226, 20.043751>,  <12.623093, 22.553331, 19.862661>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.829161, 22.262226, 20.043751> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147555, 0.595633, 0.789588,
		-0.844291, -0.339971, 0.414238,
		0.515170, -0.727765, 0.452723,
		12.983712, 22.043898, 20.179567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.486642, 22.652994, 20.518057>,  <12.623093, 22.553331, 19.862661>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.486642, 22.652994, 20.518057> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.793220, 22.398832, 20.555630>,  <12.977166, 22.246336, 20.578175>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.793220, 22.398832, 20.555630>,  <12.486642, 22.652994, 20.518057>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.793220, 22.398832, 20.555630> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215394, 0.392034, 0.894380,
		-0.605119, -0.665259, 0.437334,
		0.766444, -0.635405, 0.093934,
		13.023152, 22.208210, 20.583811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.383973, 22.274788, 21.130896>,  <12.486642, 22.652994, 20.518057>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.383973, 22.274788, 21.130896> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.772923, 22.292257, 21.039173>,  <13.006292, 22.302740, 20.984138>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.772923, 22.292257, 21.039173>,  <12.383973, 22.274788, 21.130896>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.772923, 22.292257, 21.039173> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192158, 0.407974, 0.892543,
		0.132533, -0.911949, 0.388310,
		0.972373, 0.043674, -0.229308,
		13.064634, 22.305359, 20.970381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.814386, 21.926338, 21.573343>,  <12.383973, 22.274788, 21.130896>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.814386, 21.926338, 21.573343> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.058664, 22.214794, 21.442492>,  <13.205231, 22.387867, 21.363981>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.058664, 22.214794, 21.442492>,  <12.814386, 21.926338, 21.573343>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.058664, 22.214794, 21.442492> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011615, 0.404908, 0.914284,
		0.791781, -0.562148, 0.238899,
		0.610694, 0.721138, -0.327128,
		13.241873, 22.431135, 21.344353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.466680, 21.796576, 21.802902>,  <12.814386, 21.926338, 21.573343>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.466680, 21.796576, 21.802902> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.456866, 22.192348, 21.745745>,  <13.450978, 22.429813, 21.711451>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.456866, 22.192348, 21.745745>,  <13.466680, 21.796576, 21.802902>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.456866, 22.192348, 21.745745> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252502, 0.144436, 0.956755,
		0.967285, -0.012608, -0.253378,
		-0.024534, 0.989434, -0.142895,
		13.449506, 22.489178, 21.702877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.029141, 22.043259, 22.316891>,  <13.466680, 21.796576, 21.802902>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.029141, 22.043259, 22.316891> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.803561, 22.361197, 22.227287>,  <13.668213, 22.551960, 22.173525>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.803561, 22.361197, 22.227287>,  <14.029141, 22.043259, 22.316891>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.803561, 22.361197, 22.227287> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072051, 0.317585, 0.945488,
		0.822659, 0.517069, -0.236372,
		-0.563951, 0.794845, -0.224009,
		13.634376, 22.599649, 22.160084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.414967, 22.759935, 22.586435>,  <14.029141, 22.043259, 22.316891>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.414967, 22.759935, 22.586435> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.030225, 22.853977, 22.530489>,  <13.799380, 22.910402, 22.496922>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.030225, 22.853977, 22.530489>,  <14.414967, 22.759935, 22.586435>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.030225, 22.853977, 22.530489> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022238, 0.442385, 0.896549,
		0.272659, 0.865460, -0.420282,
		-0.961854, 0.235106, -0.139866,
		13.741669, 22.924509, 22.488529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.623688, 23.473589, 22.386890>,  <14.414967, 22.759935, 22.586435>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.623688, 23.473589, 22.386890> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.010564, 23.497677, 22.485617>,  <15.242689, 23.512129, 22.544853>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.010564, 23.497677, 22.485617>,  <14.623688, 23.473589, 22.386890>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.010564, 23.497677, 22.485617> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213029, -0.721579, -0.658743,
		0.138428, 0.689709, -0.710732,
		0.967190, 0.060218, 0.246815,
		15.300721, 23.515741, 22.559662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.972324, 23.585583, 21.743834>,  <14.623688, 23.473589, 22.386890>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.972324, 23.585583, 21.743834> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.240913, 23.441156, 22.002680>,  <15.402066, 23.354502, 22.157988>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.240913, 23.441156, 22.002680>,  <14.972324, 23.585583, 21.743834>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.240913, 23.441156, 22.002680> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318830, -0.647537, -0.692129,
		0.668934, 0.671065, -0.319685,
		0.671472, -0.361064, 0.647115,
		15.442355, 23.332838, 22.196814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.535745, 23.569792, 21.387842>,  <14.972324, 23.585583, 21.743834>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.535745, 23.569792, 21.387842> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.639822, 23.320164, 21.682550>,  <15.702269, 23.170387, 21.859375>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.639822, 23.320164, 21.682550>,  <15.535745, 23.569792, 21.387842>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.639822, 23.320164, 21.682550> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275307, -0.683429, -0.676114,
		0.925476, 0.378760, -0.006013,
		0.260194, -0.624072, 0.736772,
		15.717880, 23.132942, 21.903582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.216005, 23.446135, 21.330725>,  <15.535745, 23.569792, 21.387842>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.216005, 23.446135, 21.330725> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.060724, 23.133415, 21.525902>,  <15.967555, 22.945784, 21.643007>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.060724, 23.133415, 21.525902>,  <16.216005, 23.446135, 21.330725>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.060724, 23.133415, 21.525902> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466560, -0.623325, -0.627525,
		0.794745, -0.015953, 0.606733,
		-0.388203, -0.781800, 0.487942,
		15.944263, 22.898876, 21.672285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.749693, 22.952166, 21.198675>,  <16.216005, 23.446135, 21.330725>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.749693, 22.952166, 21.198675> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.429102, 22.746929, 21.321552>,  <16.236748, 22.623787, 21.395279>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.429102, 22.746929, 21.321552>,  <16.749693, 22.952166, 21.198675>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.429102, 22.746929, 21.321552> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319561, -0.801648, -0.505213,
		0.505481, -0.306752, 0.806469,
		-0.801480, -0.513092, 0.307193,
		16.188658, 22.593002, 21.413710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.037537, 22.255033, 21.252876>,  <16.749693, 22.952166, 21.198675>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.037537, 22.255033, 21.252876> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.643114, 22.189623, 21.265211>,  <16.406460, 22.150377, 21.272612>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.643114, 22.189623, 21.265211>,  <17.037537, 22.255033, 21.252876>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.643114, 22.189623, 21.265211> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126223, -0.855737, -0.501779,
		0.108442, -0.490891, 0.864446,
		-0.986057, -0.163526, 0.030836,
		16.347298, 22.140566, 21.274462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.958084, 21.537039, 21.516788>,  <17.037537, 22.255033, 21.252876>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.958084, 21.537039, 21.516788> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.622499, 21.623167, 21.316877>,  <16.421148, 21.674845, 21.196930>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.622499, 21.623167, 21.316877>,  <16.958084, 21.537039, 21.516788>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.622499, 21.623167, 21.316877> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093076, -0.848082, -0.521627,
		-0.536169, -0.484143, 0.691468,
		-0.838963, 0.215321, -0.499777,
		16.370810, 21.687763, 21.166945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.600246, 20.927210, 21.501265>,  <16.958084, 21.537039, 21.516788>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.600246, 20.927210, 21.501265> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.459946, 21.153717, 21.202919>,  <16.375765, 21.289621, 21.023912>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.459946, 21.153717, 21.202919>,  <16.600246, 20.927210, 21.501265>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.459946, 21.153717, 21.202919> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150084, -0.752176, -0.641643,
		-0.924363, -0.337001, 0.178841,
		-0.350754, 0.566270, -0.745863,
		16.354719, 21.323597, 20.979160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.144938, 20.470045, 21.066910>,  <16.600246, 20.927210, 21.501265>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.144938, 20.470045, 21.066910> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.159952, 20.776320, 20.810062>,  <16.168961, 20.960085, 20.655954>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.159952, 20.776320, 20.810062>,  <16.144938, 20.470045, 21.066910>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.159952, 20.776320, 20.810062> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040493, -0.640878, -0.766574,
		-0.998475, 0.054775, 0.006949,
		0.037536, 0.765685, -0.642119,
		16.171213, 21.006025, 20.617426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.644093, 20.339520, 20.531258>,  <16.144938, 20.470045, 21.066910>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.644093, 20.339520, 20.531258> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.908322, 20.592951, 20.370152>,  <16.066860, 20.745010, 20.273487>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.908322, 20.592951, 20.370152>,  <15.644093, 20.339520, 20.531258>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.908322, 20.592951, 20.370152> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073984, -0.588802, -0.804885,
		-0.747107, 0.501887, -0.435822,
		0.660573, 0.633579, -0.402766,
		16.106495, 20.783024, 20.249321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.435219, 20.359121, 19.851421>,  <15.644093, 20.339520, 20.531258>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.435219, 20.359121, 19.851421> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.814826, 20.485176, 19.848497>,  <16.042591, 20.560808, 19.846743>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.814826, 20.485176, 19.848497>,  <15.435219, 20.359121, 19.851421>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.814826, 20.485176, 19.848497> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143727, -0.453231, -0.879730,
		-0.280547, 0.833829, -0.475418,
		0.949018, 0.315136, -0.007309,
		16.099531, 20.579718, 19.846304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.627829, 20.412813, 19.164207>,  <15.435219, 20.359121, 19.851421>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.627829, 20.412813, 19.164207> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.975496, 20.398527, 19.361496>,  <16.184097, 20.389956, 19.479870>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.975496, 20.398527, 19.361496>,  <15.627829, 20.412813, 19.164207>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.975496, 20.398527, 19.361496> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328261, -0.704282, -0.629470,
		0.369850, 0.709022, -0.600416,
		0.869170, -0.035717, 0.493223,
		16.236248, 20.387812, 19.509462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.150116, 20.312809, 18.654404>,  <15.627829, 20.412813, 19.164207>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.150116, 20.312809, 18.654404> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.311098, 20.191135, 18.999773>,  <16.407688, 20.118132, 19.206995>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.311098, 20.191135, 18.999773>,  <16.150116, 20.312809, 18.654404>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.311098, 20.191135, 18.999773> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407318, -0.785173, -0.466472,
		0.819830, 0.539423, -0.192099,
		0.402457, -0.304183, 0.863424,
		16.431835, 20.099880, 19.258801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.879810, 20.176777, 18.547632>,  <16.150116, 20.312809, 18.654404>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.879810, 20.176777, 18.547632> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.752966, 19.967649, 18.864138>,  <16.676859, 19.842173, 19.054041>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.752966, 19.967649, 18.864138>,  <16.879810, 20.176777, 18.547632>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.752966, 19.967649, 18.864138> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457286, -0.815224, -0.355387,
		0.830861, 0.249137, 0.497594,
		-0.317111, -0.522820, 0.791265,
		16.657833, 19.810802, 19.101517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<8.287785, 3.672958, 16.636612> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.650994, 3.683068, 16.803873>,  <8.868920, 3.689134, 16.904230>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.650994, 3.683068, 16.803873>,  <8.287785, 3.672958, 16.636612>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.650994, 3.683068, 16.803873> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133064, 0.963886, 0.230692,
		-0.397220, -0.265115, 0.878596,
		0.908026, 0.025274, 0.418152,
		8.923402, 3.690650, 16.929319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.158587, 4.051738, 17.208586>,  <8.287785, 3.672958, 16.636612>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.158587, 4.051738, 17.208586> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.534231, 4.071636, 17.072590>,  <8.759618, 4.083575, 16.990992>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.534231, 4.071636, 17.072590>,  <8.158587, 4.051738, 17.208586>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.534231, 4.071636, 17.072590> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030583, 0.997639, 0.061492,
		0.342248, -0.047350, 0.938416,
		0.939112, 0.049745, -0.339992,
		8.815965, 4.086560, 16.970592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.541862, 4.496633, 17.615925>,  <8.158587, 4.051738, 17.208586>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.541862, 4.496633, 17.615925> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.647377, 4.499161, 17.230101>,  <8.710686, 4.500678, 16.998606>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.647377, 4.499161, 17.230101>,  <8.541862, 4.496633, 17.615925>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.647377, 4.499161, 17.230101> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040230, 0.999036, 0.017548,
		0.963741, -0.043433, 0.263280,
		0.263788, 0.006320, -0.964560,
		8.726514, 4.501057, 16.940733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.228626, 4.866452, 17.455372>,  <8.541862, 4.496633, 17.615925>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.228626, 4.866452, 17.455372> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.984016, 4.855958, 17.139055>,  <8.837251, 4.849661, 16.949266>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.984016, 4.855958, 17.139055>,  <9.228626, 4.866452, 17.455372>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.984016, 4.855958, 17.139055> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040464, 0.997105, -0.064372,
		0.790190, -0.071364, -0.608694,
		-0.611526, -0.026235, -0.790790,
		8.800559, 4.848087, 16.901819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.396073, 5.304810, 16.832596>,  <9.228626, 4.866452, 17.455372>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.396073, 5.304810, 16.832596> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.008345, 5.236134, 16.762239>,  <8.775707, 5.194929, 16.720026>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.008345, 5.236134, 16.762239>,  <9.396073, 5.304810, 16.832596>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.008345, 5.236134, 16.762239> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097100, 0.924875, -0.367666,
		0.225803, -0.339308, -0.913172,
		-0.969322, -0.171689, -0.175892,
		8.717548, 5.184628, 16.709473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.991648, 5.335894, 16.069248>,  <9.396073, 5.304810, 16.832596>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.991648, 5.335894, 16.069248> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.825060, 5.468033, 16.408052>,  <8.725107, 5.547316, 16.611334>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.825060, 5.468033, 16.408052>,  <8.991648, 5.335894, 16.069248>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.825060, 5.468033, 16.408052> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216193, 0.940911, -0.260669,
		-0.883070, 0.074556, -0.463280,
		-0.416470, 0.330347, 0.847009,
		8.700119, 5.567137, 16.662155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.491128, 5.881913, 16.052664>,  <8.991648, 5.335894, 16.069248>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.491128, 5.881913, 16.052664> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.620624, 5.942394, 16.426258>,  <8.698320, 5.978683, 16.650415>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.620624, 5.942394, 16.426258>,  <8.491128, 5.881913, 16.052664>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.620624, 5.942394, 16.426258> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056033, 0.982351, -0.178455,
		-0.944486, 0.110106, 0.309553,
		0.323739, 0.151203, 0.933987,
		8.717745, 5.987755, 16.706453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.984882, 6.306789, 16.449358>,  <8.491128, 5.881913, 16.052664>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.984882, 6.306789, 16.449358> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.369299, 6.324656, 16.558466>,  <8.599949, 6.335375, 16.623930>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.369299, 6.324656, 16.558466>,  <7.984882, 6.306789, 16.449358>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.369299, 6.324656, 16.558466> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009750, 0.980765, -0.194949,
		-0.276230, 0.190014, 0.942121,
		0.961042, 0.044665, 0.272769,
		8.657612, 6.338055, 16.640297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.026636, 6.924365, 16.766018>,  <7.984882, 6.306789, 16.449358>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.026636, 6.924365, 16.766018> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.402767, 6.823374, 16.674768>,  <8.628446, 6.762779, 16.620018>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.402767, 6.823374, 16.674768>,  <8.026636, 6.924365, 16.766018>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.402767, 6.823374, 16.674768> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192101, 0.947253, -0.256533,
		0.280861, 0.197401, 0.939228,
		0.940327, -0.252477, -0.228126,
		8.684865, 6.747631, 16.606331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.547090, 7.260135, 17.217960>,  <8.026636, 6.924365, 16.766018>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.547090, 7.260135, 17.217960> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.698700, 7.182437, 16.856052>,  <8.789666, 7.135819, 16.638908>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.698700, 7.182437, 16.856052>,  <8.547090, 7.260135, 17.217960>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.698700, 7.182437, 16.856052> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199404, 0.971896, -0.125121,
		0.903646, -0.132991, 0.407107,
		0.379026, -0.194244, -0.904770,
		8.812407, 7.124164, 16.584621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.869094, 7.809043, 16.923031>,  <8.547090, 7.260135, 17.217960>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.869094, 7.809043, 16.923031> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.017250, 7.660131, 16.582626>,  <9.106144, 7.570784, 16.378384>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.017250, 7.660131, 16.582626>,  <8.869094, 7.809043, 16.923031>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.017250, 7.660131, 16.582626> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197944, 0.926762, -0.319266,
		0.907540, -0.050199, 0.416954,
		0.370390, -0.372280, -0.851010,
		9.128367, 7.548448, 16.327324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.378413, 8.212072, 16.891523>,  <8.869094, 7.809043, 16.923031>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.378413, 8.212072, 16.891523> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.315011, 8.055802, 16.528812>,  <9.276970, 7.962040, 16.311186>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.315011, 8.055802, 16.528812>,  <9.378413, 8.212072, 16.891523>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.315011, 8.055802, 16.528812> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188403, 0.889548, -0.416185,
		0.969217, -0.236807, -0.067394,
		-0.158505, -0.390676, -0.906779,
		9.267460, 7.938600, 16.256779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.928534, 8.541654, 16.390471>,  <9.378413, 8.212072, 16.891523>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.928534, 8.541654, 16.390471> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.640066, 8.401747, 16.151279>,  <9.466986, 8.317802, 16.007765>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.640066, 8.401747, 16.151279>,  <9.928534, 8.541654, 16.390471>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.640066, 8.401747, 16.151279> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087677, 0.810161, -0.579614,
		0.687189, -0.470428, -0.553596,
		-0.721169, -0.349767, -0.597979,
		9.423716, 8.296817, 15.971886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.061731, 8.853466, 15.700986>,  <9.928534, 8.541654, 16.390471>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.061731, 8.853466, 15.700986> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.672033, 8.764768, 15.717354>,  <9.438214, 8.711549, 15.727175>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.672033, 8.764768, 15.717354>,  <10.061731, 8.853466, 15.700986>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.672033, 8.764768, 15.717354> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216775, 0.871078, -0.440718,
		0.062082, -0.438238, -0.896712,
		-0.974246, -0.221746, 0.040921,
		9.379760, 8.698244, 15.729630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.818259, 9.057663, 15.120912>,  <10.061731, 8.853466, 15.700986>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.818259, 9.057663, 15.120912> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.472821, 8.997227, 15.313318>,  <9.265558, 8.960965, 15.428762>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.472821, 8.997227, 15.313318>,  <9.818259, 9.057663, 15.120912>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.472821, 8.997227, 15.313318> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358112, 0.855389, -0.374254,
		-0.354910, -0.495461, -0.792816,
		-0.863594, -0.151091, 0.481017,
		9.213743, 8.951900, 15.457623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.290284, 9.081125, 14.620277>,  <9.818259, 9.057663, 15.120912>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.290284, 9.081125, 14.620277> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.099694, 9.150180, 14.965106>,  <8.985340, 9.191612, 15.172004>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.099694, 9.150180, 14.965106>,  <9.290284, 9.081125, 14.620277>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.099694, 9.150180, 14.965106> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.563810, 0.692367, -0.450274,
		-0.674604, -0.700589, -0.232561,
		-0.476474, 0.172637, 0.862072,
		8.956752, 9.201971, 15.223728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.644176, 9.237548, 14.435502>,  <9.290284, 9.081125, 14.620277>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.644176, 9.237548, 14.435502> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.667235, 9.374799, 14.810510>,  <8.681070, 9.457150, 15.035514>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.667235, 9.374799, 14.810510>,  <8.644176, 9.237548, 14.435502>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.667235, 9.374799, 14.810510> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502289, 0.821534, -0.269792,
		-0.862776, -0.455353, 0.219707,
		0.057646, 0.343126, 0.937519,
		8.684529, 9.477736, 15.091765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.924079, 9.329165, 14.669854>,  <8.644176, 9.237548, 14.435502>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.924079, 9.329165, 14.669854> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.171070, 9.564404, 14.878798>,  <8.319264, 9.705548, 15.004166>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.171070, 9.564404, 14.878798>,  <7.924079, 9.329165, 14.669854>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.171070, 9.564404, 14.878798> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.573645, 0.791057, -0.212512,
		-0.538195, -0.168429, 0.825819,
		0.617477, 0.588100, 0.522362,
		8.356313, 9.740834, 15.035507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.542728, 9.678067, 15.207319>,  <7.924079, 9.329165, 14.669854>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.542728, 9.678067, 15.207319> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.856452, 9.920155, 15.152810>,  <8.044686, 10.065407, 15.120105>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.856452, 9.920155, 15.152810>,  <7.542728, 9.678067, 15.207319>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.856452, 9.920155, 15.152810> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.616698, 0.784491, -0.065255,
		0.067411, 0.135219, 0.988520,
		0.784308, 0.605219, -0.136273,
		8.091744, 10.101720, 15.111928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.365809, 10.261905, 15.682246>,  <7.542728, 9.678067, 15.207319>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.365809, 10.261905, 15.682246> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.635455, 10.363425, 15.404785>,  <7.797243, 10.424337, 15.238309>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.635455, 10.363425, 15.404785>,  <7.365809, 10.261905, 15.682246>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.635455, 10.363425, 15.404785> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.574872, 0.769943, -0.276964,
		0.463779, 0.585467, 0.664934,
		0.674115, 0.253802, -0.693653,
		7.837689, 10.439566, 15.196690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.209668, 10.873403, 15.728837>,  <7.365809, 10.261905, 15.682246>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.209668, 10.873403, 15.728837> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.446619, 10.862618, 15.406753>,  <7.588789, 10.856148, 15.213502>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.446619, 10.862618, 15.406753>,  <7.209668, 10.873403, 15.728837>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.446619, 10.862618, 15.406753> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501473, 0.769894, -0.394700,
		0.630568, 0.637602, 0.442547,
		0.592376, -0.026959, -0.805211,
		7.624331, 10.854530, 15.165190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.723083, 11.424120, 15.748605>,  <7.209668, 10.873403, 15.728837>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.723083, 11.424120, 15.748605> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.718624, 11.347390, 15.356058>,  <7.715949, 11.301353, 15.120530>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.718624, 11.347390, 15.356058>,  <7.723083, 11.424120, 15.748605>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.718624, 11.347390, 15.356058> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487638, 0.857857, -0.162143,
		0.872974, 0.476744, -0.103105,
		-0.011148, -0.191825, -0.981366,
		7.715280, 11.289843, 15.061648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.044851, 11.963867, 15.450744>,  <7.723083, 11.424120, 15.748605>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.044851, 11.963867, 15.450744> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.824746, 11.795836, 15.162092>,  <7.692682, 11.695018, 14.988901>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.824746, 11.795836, 15.162092>,  <8.044851, 11.963867, 15.450744>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.824746, 11.795836, 15.162092> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413010, 0.888039, -0.202015,
		0.725695, 0.186878, -0.662151,
		-0.550263, -0.420076, -0.721627,
		7.659667, 11.669814, 14.945604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.119019, 12.366247, 14.937439>,  <8.044851, 11.963867, 15.450744>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.119019, 12.366247, 14.937439> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.785039, 12.171415, 14.834977>,  <7.584651, 12.054516, 14.773500>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.785039, 12.171415, 14.834977>,  <8.119019, 12.366247, 14.937439>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.785039, 12.171415, 14.834977> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357457, 0.833900, -0.420518,
		0.418433, -0.259547, -0.870373,
		-0.834948, -0.487079, -0.256154,
		7.534554, 12.025291, 14.758131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.933730, 12.663735, 14.311867>,  <8.119019, 12.366247, 14.937439>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.933730, 12.663735, 14.311867> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.598435, 12.477169, 14.424871>,  <7.397258, 12.365229, 14.492674>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.598435, 12.477169, 14.424871>,  <7.933730, 12.663735, 14.311867>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.598435, 12.477169, 14.424871> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.545133, 0.729711, -0.412736,
		-0.013645, -0.499977, -0.865931,
		-0.838238, -0.466417, 0.282511,
		7.346963, 12.337244, 14.509624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.374011, 12.727104, 13.727272>,  <7.933730, 12.663735, 14.311867>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.374011, 12.727104, 13.727272> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.189403, 12.641469, 14.071636>,  <7.078638, 12.590088, 14.278255>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.189403, 12.641469, 14.071636>,  <7.374011, 12.727104, 13.727272>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.189403, 12.641469, 14.071636> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.668187, 0.722237, -0.178603,
		-0.583544, -0.657678, -0.476378,
		-0.461521, -0.214087, 0.860909,
		7.050946, 12.577243, 14.329909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.761237, 12.805224, 13.635465>,  <7.374011, 12.727104, 13.727272>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.761237, 12.805224, 13.635465> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.738161, 12.840597, 14.033229>,  <6.724315, 12.861821, 14.271888>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.738161, 12.840597, 14.033229>,  <6.761237, 12.805224, 13.635465>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.738161, 12.840597, 14.033229> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.643665, 0.758104, -0.104760,
		-0.763130, -0.646110, 0.013186,
		-0.057690, 0.088432, 0.994410,
		6.720854, 12.867126, 14.331552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.035179, 12.952564, 13.777596>,  <6.761237, 12.805224, 13.635465>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.035179, 12.952564, 13.777596> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.222516, 13.066028, 14.112308>,  <6.334918, 13.134106, 14.313134>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.222516, 13.066028, 14.112308>,  <6.035179, 12.952564, 13.777596>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.222516, 13.066028, 14.112308> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.583004, 0.810840, 0.051440,
		-0.663900, -0.511935, 0.545123,
		0.468341, 0.283658, 0.836777,
		6.363018, 13.151125, 14.363340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.480140, 13.009914, 14.202793>,  <6.035179, 12.952564, 13.777596>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.480140, 13.009914, 14.202793> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.788261, 13.204137, 14.368139>,  <5.973134, 13.320670, 14.467347>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.788261, 13.204137, 14.368139>,  <5.480140, 13.009914, 14.202793>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.788261, 13.204137, 14.368139> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530906, 0.847409, -0.006064,
		-0.353233, -0.214787, 0.910545,
		0.770302, 0.485556, 0.413364,
		6.019351, 13.349804, 14.492148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.327672, 13.350630, 14.773883>,  <5.480140, 13.009914, 14.202793>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.327672, 13.350630, 14.773883> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.632785, 13.579762, 14.653863>,  <5.815853, 13.717240, 14.581851>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.632785, 13.579762, 14.653863>,  <5.327672, 13.350630, 14.773883>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.632785, 13.579762, 14.653863> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.582130, 0.810322, 0.067110,
		0.281579, 0.123477, 0.951560,
		0.762783, 0.572828, -0.300049,
		5.861620, 13.751610, 14.563848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.379734, 13.962394, 15.241260>,  <5.327672, 13.350630, 14.773883>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.379734, 13.962394, 15.241260> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.576504, 14.075686, 14.911947>,  <5.694567, 14.143661, 14.714360>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.576504, 14.075686, 14.911947>,  <5.379734, 13.962394, 15.241260>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.576504, 14.075686, 14.911947> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.595525, 0.799255, -0.080875,
		0.635104, 0.530069, 0.561845,
		0.491927, 0.283229, -0.823280,
		5.724082, 14.160654, 14.664964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.915896, 13.838391, 15.861268>,  <5.379734, 13.962394, 15.241260>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.915896, 13.838391, 15.861268> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.248709, 13.894520, 16.075943>,  <5.448397, 13.928197, 16.204748>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.248709, 13.894520, 16.075943>,  <4.915896, 13.838391, 15.861268>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.248709, 13.894520, 16.075943> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292267, -0.711420, 0.639110,
		0.471490, -0.688616, -0.550913,
		0.832032, 0.140320, 0.536687,
		5.498319, 13.936616, 16.236950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.459740, 13.287624, 15.963269>,  <4.915896, 13.838391, 15.861268>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.459740, 13.287624, 15.963269> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.552285, 13.495204, 16.292429>,  <5.607811, 13.619752, 16.489925>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.552285, 13.495204, 16.292429>,  <5.459740, 13.287624, 15.963269>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.552285, 13.495204, 16.292429> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099622, -0.828766, 0.550657,
		0.967754, -0.209379, -0.140046,
		0.231361, 0.518949, 0.822900,
		5.621693, 13.650888, 16.539299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.961493, 12.881496, 16.270262>,  <5.459740, 13.287624, 15.963269>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.961493, 12.881496, 16.270262> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.833032, 13.114646, 16.568823>,  <5.755956, 13.254536, 16.747959>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.833032, 13.114646, 16.568823>,  <5.961493, 12.881496, 16.270262>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.833032, 13.114646, 16.568823> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019095, -0.791981, 0.610247,
		0.946835, 0.181730, 0.265476,
		-0.321152, 0.582873, 0.746405,
		5.736687, 13.289508, 16.792744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.305001, 12.677494, 16.957584>,  <5.961493, 12.881496, 16.270262>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.305001, 12.677494, 16.957584> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.963139, 12.851841, 17.070425>,  <5.758021, 12.956450, 17.138130>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.963139, 12.851841, 17.070425>,  <6.305001, 12.677494, 16.957584>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.963139, 12.851841, 17.070425> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147364, -0.724648, 0.673178,
		0.497841, 0.533764, 0.683556,
		-0.854657, 0.435868, 0.282102,
		5.706742, 12.982601, 17.155056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.352441, 12.761392, 17.722750>,  <6.305001, 12.677494, 16.957584>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.352441, 12.761392, 17.722750> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.966684, 12.771066, 17.617401>,  <5.735230, 12.776870, 17.554192>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.966684, 12.771066, 17.617401>,  <6.352441, 12.761392, 17.722750>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.966684, 12.771066, 17.617401> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204138, -0.701207, 0.683108,
		-0.168156, 0.712547, 0.681176,
		-0.964392, 0.024185, -0.263370,
		5.677366, 12.778321, 17.538391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.930490, 12.647055, 18.413118>,  <6.352441, 12.761392, 17.722750>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.930490, 12.647055, 18.413118> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.700336, 12.560626, 18.097588>,  <5.562244, 12.508769, 17.908270>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.700336, 12.560626, 18.097588>,  <5.930490, 12.647055, 18.413118>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.700336, 12.560626, 18.097588> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265079, -0.863145, 0.429783,
		-0.773735, 0.456392, 0.439364,
		-0.575384, -0.216072, -0.788826,
		5.527720, 12.495805, 17.860939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.399260, 12.285686, 18.736855>,  <5.930490, 12.647055, 18.413118>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.399260, 12.285686, 18.736855> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.367807, 12.235269, 18.341293>,  <5.348936, 12.205018, 18.103956>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.367807, 12.235269, 18.341293>,  <5.399260, 12.285686, 18.736855>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.367807, 12.235269, 18.341293> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287179, -0.947061, 0.143544,
		-0.954644, 0.295280, 0.038271,
		-0.078630, -0.126043, -0.988904,
		5.344218, 12.197455, 18.044622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.802559, 11.954245, 18.676420>,  <5.399260, 12.285686, 18.736855>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.802559, 11.954245, 18.676420> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.050499, 11.876111, 18.372414>,  <5.199264, 11.829231, 18.190010>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.050499, 11.876111, 18.372414>,  <4.802559, 11.954245, 18.676420>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.050499, 11.876111, 18.372414> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025058, -0.963103, 0.267965,
		-0.784319, -0.185143, -0.592086,
		0.619852, -0.195334, -0.760019,
		5.236455, 11.817511, 18.144407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.578478, 11.300451, 18.513407>,  <4.802559, 11.954245, 18.676420>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.578478, 11.300451, 18.513407> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.907373, 11.345180, 18.290186>,  <5.104710, 11.372017, 18.156254>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.907373, 11.345180, 18.290186>,  <4.578478, 11.300451, 18.513407>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<4.907373, 11.345180, 18.290186> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109757, -0.993258, -0.037309,
		-0.558463, -0.030573, -0.828966,
		0.822236, 0.111820, -0.558053,
		5.154044, 11.378726, 18.122770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.527427, 10.741188, 17.973736>,  <4.578478, 11.300451, 18.513407>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.527427, 10.741188, 17.973736> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.913660, 10.832338, 18.023890>,  <5.145400, 10.887029, 18.053982>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.913660, 10.832338, 18.023890>,  <4.527427, 10.741188, 17.973736>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<4.913660, 10.832338, 18.023890> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239730, -0.966732, -0.089213,
		0.100885, 0.116202, -0.988089,
		0.965583, 0.227875, 0.125386,
		5.203335, 10.900701, 18.061504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.863225, 10.294209, 17.565809>,  <4.527427, 10.741188, 17.973736>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.863225, 10.294209, 17.565809> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.147671, 10.412953, 17.820742>,  <5.318338, 10.484200, 17.973701>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.147671, 10.412953, 17.820742>,  <4.863225, 10.294209, 17.565809>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.147671, 10.412953, 17.820742> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282453, -0.950744, 0.127695,
		0.643847, 0.089210, -0.759936,
		0.711113, 0.296862, 0.637331,
		5.361005, 10.502012, 18.011942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.444793, 9.904284, 17.366629>,  <4.863225, 10.294209, 17.565809>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.444793, 9.904284, 17.366629> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.532748, 10.032428, 17.735197>,  <5.585521, 10.109314, 17.956339>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.532748, 10.032428, 17.735197>,  <5.444793, 9.904284, 17.366629>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.532748, 10.032428, 17.735197> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398577, -0.891608, 0.214875,
		0.890385, 0.320010, -0.323741,
		0.219887, 0.320358, 0.921423,
		5.598714, 10.128535, 18.011623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.117507, 9.734457, 17.491236>,  <5.444793, 9.904284, 17.366629>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.117507, 9.734457, 17.491236> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.948503, 9.789246, 17.849615>,  <5.847102, 9.822119, 18.064644>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.948503, 9.789246, 17.849615>,  <6.117507, 9.734457, 17.491236>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.948503, 9.789246, 17.849615> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356368, -0.883794, 0.303167,
		0.833360, 0.447378, 0.324598,
		-0.422508, 0.136970, 0.895950,
		5.821751, 9.830337, 18.118401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.671341, 9.700505, 17.881512>,  <6.117507, 9.734457, 17.491236>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.671341, 9.700505, 17.881512> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.340261, 9.640244, 18.097740>,  <6.141613, 9.604086, 18.227478>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.340261, 9.640244, 18.097740>,  <6.671341, 9.700505, 17.881512>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.340261, 9.640244, 18.097740> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466584, -0.719963, 0.513763,
		0.311790, 0.677463, 0.666206,
		-0.827699, -0.150655, 0.540571,
		6.091952, 9.595047, 18.259911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.891751, 9.776272, 18.544409>,  <6.671341, 9.700505, 17.881512>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.891751, 9.776272, 18.544409> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.568853, 9.541158, 18.523012>,  <6.375114, 9.400089, 18.510174>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.568853, 9.541158, 18.523012>,  <6.891751, 9.776272, 18.544409>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.568853, 9.541158, 18.523012> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498173, -0.727155, 0.472301,
		-0.316507, 0.354617, 0.879812,
		-0.807246, -0.587786, -0.053489,
		6.326679, 9.364822, 18.506966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.048635, 9.283592, 19.123693>,  <6.891751, 9.776272, 18.544409>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.048635, 9.283592, 19.123693> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.730485, 9.124378, 18.940849>,  <6.539596, 9.028850, 18.831142>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.730485, 9.124378, 18.940849>,  <7.048635, 9.283592, 19.123693>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.730485, 9.124378, 18.940849> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221847, -0.893001, 0.391578,
		-0.564060, 0.210043, 0.798573,
		-0.795375, -0.398034, -0.457108,
		6.491873, 9.004968, 18.803717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.734015, 8.752580, 19.619057>,  <7.048635, 9.283592, 19.123693>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.734015, 8.752580, 19.619057> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.600511, 8.643268, 19.258186>,  <6.520409, 8.577681, 19.041664>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.600511, 8.643268, 19.258186>,  <6.734015, 8.752580, 19.619057>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.600511, 8.643268, 19.258186> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099531, -0.961922, 0.254557,
		-0.937390, -0.004834, 0.348249,
		-0.333758, -0.273280, -0.902177,
		6.500383, 8.561283, 18.987534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.238493, 8.181067, 19.733852>,  <6.734015, 8.752580, 19.619057>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.238493, 8.181067, 19.733852> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.352076, 8.155380, 19.351179>,  <6.420226, 8.139968, 19.121574>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.352076, 8.155380, 19.351179>,  <6.238493, 8.181067, 19.733852>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.352076, 8.155380, 19.351179> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265208, -0.953569, 0.142727,
		-0.921430, -0.294249, -0.253743,
		0.283958, -0.064218, -0.956684,
		6.437263, 8.136115, 19.064175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.973448, 7.512193, 19.504074>,  <6.238493, 8.181067, 19.733852>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.973448, 7.512193, 19.504074> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.250599, 7.612509, 19.233660>,  <6.416889, 7.672699, 19.071411>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.250599, 7.612509, 19.233660>,  <5.973448, 7.512193, 19.504074>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.250599, 7.612509, 19.233660> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459149, -0.876367, 0.145478,
		-0.555972, -0.411200, -0.722364,
		0.692877, 0.250791, -0.676037,
		6.458462, 7.687747, 19.030849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.939360, 6.959239, 19.060133>,  <5.973448, 7.512193, 19.504074>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.939360, 6.959239, 19.060133> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.292432, 7.109632, 18.947342>,  <6.504276, 7.199867, 18.879667>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.292432, 7.109632, 18.947342>,  <5.939360, 6.959239, 19.060133>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.292432, 7.109632, 18.947342> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429705, -0.888638, 0.160237,
		-0.190330, -0.262605, -0.945946,
		0.882682, 0.375980, -0.281977,
		6.557237, 7.222425, 18.862749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.112736, 6.591653, 18.458267>,  <5.939360, 6.959239, 19.060133>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.112736, 6.591653, 18.458267> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.447606, 6.729737, 18.627958>,  <6.648528, 6.812588, 18.729773>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.447606, 6.729737, 18.627958>,  <6.112736, 6.591653, 18.458267>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.447606, 6.729737, 18.627958> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290875, -0.937874, 0.189168,
		0.463175, -0.034970, -0.885577,
		0.837174, 0.345211, 0.424227,
		6.698758, 6.833301, 18.755226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<15.827286, 20.749687, 23.665682> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.451528, 20.642019, 23.750612>,  <15.226072, 20.577417, 23.801571>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.451528, 20.642019, 23.750612>,  <15.827286, 20.749687, 23.665682>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.451528, 20.642019, 23.750612> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099141, 0.806146, 0.583352,
		-0.328186, 0.526948, -0.783977,
		-0.939396, -0.269172, 0.212324,
		15.169709, 20.561268, 23.814310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.496723, 21.330853, 23.637093>,  <15.827286, 20.749687, 23.665682>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.496723, 21.330853, 23.637093> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.271351, 21.104898, 23.878241>,  <15.136127, 20.969326, 24.022928>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.271351, 21.104898, 23.878241>,  <15.496723, 21.330853, 23.637093>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.271351, 21.104898, 23.878241> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109487, 0.774339, 0.623227,
		-0.818876, 0.285139, -0.498134,
		-0.563431, -0.564885, 0.602869,
		15.102322, 20.935432, 24.059101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.001121, 21.760153, 23.979399>,  <15.496723, 21.330853, 23.637093>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.001121, 21.760153, 23.979399> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.972525, 21.449646, 24.229933>,  <14.955367, 21.263342, 24.380253>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.972525, 21.449646, 24.229933>,  <15.001121, 21.760153, 23.979399>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.972525, 21.449646, 24.229933> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095390, 0.630385, 0.770400,
		-0.992870, -0.004670, -0.119114,
		-0.071490, -0.776269, 0.626335,
		14.951077, 21.216764, 24.417833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.354527, 21.851326, 24.338499>,  <15.001121, 21.760153, 23.979399>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.354527, 21.851326, 24.338499> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.562480, 21.583038, 24.550106>,  <14.687252, 21.422066, 24.677071>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.562480, 21.583038, 24.550106>,  <14.354527, 21.851326, 24.338499>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.562480, 21.583038, 24.550106> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242146, 0.478177, 0.844223,
		-0.819199, -0.566997, 0.086185,
		0.519883, -0.670717, 0.529018,
		14.718445, 21.381823, 24.708811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.986488, 21.696890, 24.892565>,  <14.354527, 21.851326, 24.338499>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.986488, 21.696890, 24.892565> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.350082, 21.592535, 25.022602>,  <14.568239, 21.529922, 25.100624>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.350082, 21.592535, 25.022602>,  <13.986488, 21.696890, 24.892565>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.350082, 21.592535, 25.022602> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202221, 0.405981, 0.891227,
		-0.364490, -0.875853, 0.316273,
		0.908985, -0.260886, 0.325092,
		14.622778, 21.514269, 25.120131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.862401, 21.521315, 25.613974>,  <13.986488, 21.696890, 24.892565>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.862401, 21.521315, 25.613974> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.253995, 21.585323, 25.563404>,  <14.488951, 21.623730, 25.533062>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.253995, 21.585323, 25.563404>,  <13.862401, 21.521315, 25.613974>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.253995, 21.585323, 25.563404> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055201, 0.388857, 0.919643,
		0.196325, -0.907294, 0.371852,
		0.978984, 0.160023, -0.126426,
		14.547690, 21.633329, 25.525476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.141914, 21.251478, 26.225470>,  <13.862401, 21.521315, 25.613974>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.141914, 21.251478, 26.225470> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.433753, 21.491587, 26.094404>,  <14.608856, 21.635653, 26.015766>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.433753, 21.491587, 26.094404>,  <14.141914, 21.251478, 26.225470>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.433753, 21.491587, 26.094404> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086916, 0.393849, 0.915057,
		0.678332, -0.696101, 0.235178,
		0.729597, 0.600272, -0.327662,
		14.652632, 21.671669, 25.996105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.712547, 21.104053, 26.725153>,  <14.141914, 21.251478, 26.225470>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.712547, 21.104053, 26.725153> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.786826, 21.455183, 26.548546>,  <14.831393, 21.665861, 26.442581>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.786826, 21.455183, 26.548546>,  <14.712547, 21.104053, 26.725153>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.786826, 21.455183, 26.548546> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301737, 0.376681, 0.875823,
		0.935132, -0.295861, -0.194923,
		0.185698, 0.877825, -0.441519,
		14.842536, 21.718531, 26.416090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.342414, 21.313515, 27.029003>,  <14.712547, 21.104053, 26.725153>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.342414, 21.313515, 27.029003> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.205920, 21.649235, 26.859707>,  <15.124023, 21.850668, 26.758129>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.205920, 21.649235, 26.859707>,  <15.342414, 21.313515, 27.029003>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.205920, 21.649235, 26.859707> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222037, 0.509494, 0.831333,
		0.913377, 0.189705, -0.360214,
		-0.341235, 0.839302, -0.423239,
		15.103550, 21.901026, 26.732735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.836862, 21.738789, 27.062819>,  <15.342414, 21.313515, 27.029003>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.836862, 21.738789, 27.062819> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.495649, 21.946560, 27.042685>,  <15.290922, 22.071222, 27.030603>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.495649, 21.946560, 27.042685>,  <15.836862, 21.738789, 27.062819>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.495649, 21.946560, 27.042685> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213029, 0.434645, 0.875044,
		0.476401, 0.735716, -0.481418,
		-0.853030, 0.519428, -0.050336,
		15.239740, 22.102388, 27.027584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.988136, 22.469337, 27.138706>,  <15.836862, 21.738789, 27.062819>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.988136, 22.469337, 27.138706> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.605088, 22.412430, 27.238882>,  <15.375259, 22.378284, 27.298988>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.605088, 22.412430, 27.238882>,  <15.988136, 22.469337, 27.138706>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.605088, 22.412430, 27.238882> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131674, 0.557081, 0.819953,
		-0.256171, 0.818181, -0.514740,
		-0.957621, -0.142270, 0.250441,
		15.317801, 22.369749, 27.314014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.758517, 23.125725, 27.390188>,  <15.988136, 22.469337, 27.138706>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.758517, 23.125725, 27.390188> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.505640, 22.845007, 27.521528>,  <15.353913, 22.676577, 27.600332>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.505640, 22.845007, 27.521528>,  <15.758517, 23.125725, 27.390188>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.505640, 22.845007, 27.521528> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064689, 0.374492, 0.924971,
		-0.772105, 0.606002, -0.191353,
		-0.632194, -0.701796, 0.328349,
		15.315982, 22.634468, 27.620033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.213640, 23.694658, 27.546951>,  <15.758517, 23.125725, 27.390188>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.213640, 23.694658, 27.546951> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.425810, 23.725239, 27.209240>,  <16.553112, 23.743587, 27.006613>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.425810, 23.725239, 27.209240>,  <16.213640, 23.694658, 27.546951>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.425810, 23.725239, 27.209240> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.847106, 0.009475, -0.531340,
		-0.032622, 0.997029, 0.069788,
		0.530422, 0.076451, -0.844280,
		16.584936, 23.748175, 26.955956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.093382, 24.292009, 27.009911>,  <16.213640, 23.694658, 27.546951>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.093382, 24.292009, 27.009911> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.160505, 23.962496, 26.793310>,  <16.200779, 23.764788, 26.663351>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.160505, 23.962496, 26.793310>,  <16.093382, 24.292009, 27.009911>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.160505, 23.962496, 26.793310> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.921882, 0.063467, -0.382237,
		0.349248, 0.563340, -0.748781,
		0.167807, -0.823783, -0.541499,
		16.210848, 23.715361, 26.630861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.866962, 24.715902, 27.673670>,  <16.093382, 24.292009, 27.009911>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.866962, 24.715902, 27.673670> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.699442, 25.078541, 27.694424>,  <15.598929, 25.296124, 27.706875>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.699442, 25.078541, 27.694424>,  <15.866962, 24.715902, 27.673670>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.699442, 25.078541, 27.694424> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149048, -0.012268, -0.988754,
		-0.895763, -0.421824, 0.140264,
		-0.418801, 0.906595, 0.051883,
		15.573802, 25.350519, 27.709988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.320796, 24.704245, 27.287544>,  <15.866962, 24.715902, 27.673670>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.320796, 24.704245, 27.287544> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.350234, 25.102064, 27.317097>,  <15.367897, 25.340755, 27.334827>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.350234, 25.102064, 27.317097>,  <15.320796, 24.704245, 27.287544>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.350234, 25.102064, 27.317097> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225176, 0.088739, -0.970268,
		-0.971535, 0.054771, 0.230479,
		0.073595, 0.994548, 0.073880,
		15.372313, 25.400429, 27.339260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.779151, 25.020496, 27.064314>,  <15.320796, 24.704245, 27.287544>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.779151, 25.020496, 27.064314> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.070420, 25.291058, 27.020056>,  <15.245182, 25.453394, 26.993502>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.070420, 25.291058, 27.020056>,  <14.779151, 25.020496, 27.064314>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.070420, 25.291058, 27.020056> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228399, 0.087267, -0.969649,
		-0.646217, 0.731344, 0.218035,
		0.728174, 0.676402, -0.110645,
		15.288873, 25.493979, 26.986862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.555164, 25.486593, 26.563864>,  <14.779151, 25.020496, 27.064314>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.555164, 25.486593, 26.563864> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.949734, 25.550756, 26.549801>,  <15.186476, 25.589254, 26.541363>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.949734, 25.550756, 26.549801>,  <14.555164, 25.486593, 26.563864>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.949734, 25.550756, 26.549801> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050820, 0.094603, -0.994217,
		-0.156156, 0.982507, 0.101470,
		0.986424, 0.160410, -0.035158,
		15.245661, 25.598879, 26.539253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.525110, 25.940977, 25.943027>,  <14.555164, 25.486593, 26.563864>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.525110, 25.940977, 25.943027> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.910296, 25.847027, 25.995987>,  <15.141408, 25.790657, 26.027763>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.910296, 25.847027, 25.995987>,  <14.525110, 25.940977, 25.943027>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.910296, 25.847027, 25.995987> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057938, -0.299321, -0.952392,
		0.263326, 0.924792, -0.274627,
		0.962966, -0.234878, 0.132399,
		15.199186, 25.776564, 26.035707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.831189, 26.173290, 25.332174>,  <14.525110, 25.940977, 25.943027>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.831189, 26.173290, 25.332174> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.108838, 25.915689, 25.460835>,  <15.275427, 25.761129, 25.538031>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.108838, 25.915689, 25.460835>,  <14.831189, 26.173290, 25.332174>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.108838, 25.915689, 25.460835> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057564, -0.395736, -0.916558,
		0.717552, 0.654719, -0.237618,
		0.694122, -0.644000, 0.321650,
		15.317075, 25.722488, 25.557329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.377966, 26.111362, 24.760679>,  <14.831189, 26.173290, 25.332174>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.377966, 26.111362, 24.760679> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.418132, 25.790995, 24.996798>,  <15.442231, 25.598774, 25.138468>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.418132, 25.790995, 24.996798>,  <15.377966, 26.111362, 24.760679>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.418132, 25.790995, 24.996798> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152420, -0.573908, -0.804610,
		0.983201, 0.170767, 0.064448,
		0.100414, -0.800917, 0.590295,
		15.448256, 25.550720, 25.173885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.052828, 25.860266, 24.634983>,  <15.377966, 26.111362, 24.760679>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.052828, 25.860266, 24.634983> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.811059, 25.572653, 24.772194>,  <15.665998, 25.400085, 24.854521>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.811059, 25.572653, 24.772194>,  <16.052828, 25.860266, 24.634983>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.811059, 25.572653, 24.772194> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095778, -0.493040, -0.864719,
		0.790885, -0.489802, 0.366873,
		-0.604424, -0.719031, 0.343025,
		15.629732, 25.356943, 24.875101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.343657, 25.272095, 24.420742>,  <16.052828, 25.860266, 24.634983>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.343657, 25.272095, 24.420742> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.965641, 25.152573, 24.473837>,  <15.738832, 25.080858, 24.505693>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.965641, 25.152573, 24.473837>,  <16.343657, 25.272095, 24.420742>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.965641, 25.152573, 24.473837> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065887, -0.571677, -0.817829,
		0.320256, -0.764133, 0.559944,
		-0.945037, -0.298808, 0.132736,
		15.682130, 25.062931, 24.513659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.360168, 24.568254, 24.277277>,  <16.343657, 25.272095, 24.420742>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.360168, 24.568254, 24.277277> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.964324, 24.623894, 24.291822>,  <15.726817, 24.657276, 24.300550>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.964324, 24.623894, 24.291822>,  <16.360168, 24.568254, 24.277277>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.964324, 24.623894, 24.291822> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131619, -0.774729, -0.618443,
		-0.057850, -0.616804, 0.784988,
		-0.989611, 0.139096, 0.036365,
		15.667440, 24.665623, 24.302732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.059000, 23.931820, 24.412844>,  <16.360168, 24.568254, 24.277277>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.059000, 23.931820, 24.412844> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.757810, 24.147423, 24.261847>,  <15.577095, 24.276785, 24.171247>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.757810, 24.147423, 24.261847>,  <16.059000, 23.931820, 24.412844>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.757810, 24.147423, 24.261847> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145198, -0.695604, -0.703600,
		-0.641828, -0.474984, 0.602036,
		-0.752977, 0.539005, -0.377491,
		15.531917, 24.309124, 24.148600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.380849, 23.449097, 24.325264>,  <16.059000, 23.931820, 24.412844>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.380849, 23.449097, 24.325264> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.355109, 23.747913, 24.060602>,  <15.339665, 23.927202, 23.901804>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.355109, 23.747913, 24.060602>,  <15.380849, 23.449097, 24.325264>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.355109, 23.747913, 24.060602> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178070, -0.660986, -0.728965,
		-0.981911, 0.070913, 0.175560,
		-0.064350, 0.747041, -0.661657,
		15.335804, 23.972025, 23.862104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.891102, 23.291868, 23.827427>,  <15.380849, 23.449097, 24.325264>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.891102, 23.291868, 23.827427> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.085460, 23.579643, 23.628906>,  <15.202075, 23.752308, 23.509794>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.085460, 23.579643, 23.628906>,  <14.891102, 23.291868, 23.827427>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.085460, 23.579643, 23.628906> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045143, -0.546425, -0.836291,
		-0.872850, 0.428754, -0.233028,
		0.485895, 0.719437, -0.496302,
		15.231228, 23.795475, 23.480015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.654126, 23.280001, 23.142820>,  <14.891102, 23.291868, 23.827427>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.654126, 23.280001, 23.142820> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.999797, 23.462097, 23.057074>,  <15.207199, 23.571356, 23.005625>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.999797, 23.462097, 23.057074>,  <14.654126, 23.280001, 23.142820>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.999797, 23.462097, 23.057074> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149834, -0.639502, -0.754047,
		-0.480362, 0.619511, -0.620853,
		0.864177, 0.455240, -0.214369,
		15.259050, 23.598669, 22.992764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.089802, 23.810602, 22.778963>,  <14.654126, 23.280001, 23.142820>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.089802, 23.810602, 22.778963> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.761116, 23.590708, 22.839067>,  <13.563905, 23.458771, 22.875130>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.761116, 23.590708, 22.839067>,  <14.089802, 23.810602, 22.778963>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<13.761116, 23.590708, 22.839067> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062224, 0.348626, 0.935194,
		-0.566494, 0.759112, -0.320677,
		-0.821713, -0.549736, 0.150259,
		13.514602, 23.425787, 22.884146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.671523, 24.176334, 23.202562>,  <14.089802, 23.810602, 22.778963>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.671523, 24.176334, 23.202562> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.462894, 23.836269, 23.231363>,  <13.337717, 23.632231, 23.248644>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.462894, 23.836269, 23.231363>,  <13.671523, 24.176334, 23.202562>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<13.462894, 23.836269, 23.231363> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135069, 0.165602, 0.976899,
		-0.842449, 0.499797, -0.201204,
		-0.521571, -0.850164, 0.072004,
		13.306423, 23.581221, 23.252964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.070226, 24.342773, 23.371750>,  <13.671523, 24.176334, 23.202562>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.070226, 24.342773, 23.371750> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.068872, 23.958426, 23.482540>,  <13.068061, 23.727816, 23.549013>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.068872, 23.958426, 23.482540>,  <13.070226, 24.342773, 23.371750>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<13.068872, 23.958426, 23.482540> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448502, 0.249014, 0.858393,
		-0.893776, -0.121319, -0.431795,
		-0.003384, -0.960871, 0.276974,
		13.067858, 23.670164, 23.565632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.435915, 24.254238, 23.657667>,  <13.070226, 24.342773, 23.371750>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.435915, 24.254238, 23.657667> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.666947, 23.963081, 23.805492>,  <12.805567, 23.788387, 23.894188>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.666947, 23.963081, 23.805492>,  <12.435915, 24.254238, 23.657667>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<12.666947, 23.963081, 23.805492> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308567, 0.224456, 0.924340,
		-0.755770, -0.647915, -0.094962,
		0.577579, -0.727891, 0.369563,
		12.840221, 23.744715, 23.916361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.062542, 23.981037, 24.071701>,  <12.435915, 24.254238, 23.657667>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.062542, 23.981037, 24.071701> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.424185, 23.867046, 24.199060>,  <12.641171, 23.798653, 24.275476>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.424185, 23.867046, 24.199060>,  <12.062542, 23.981037, 24.071701>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<12.424185, 23.867046, 24.199060> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260530, 0.222987, 0.939362,
		-0.338696, -0.932237, 0.127359,
		0.904107, -0.284977, 0.318401,
		12.695417, 23.781553, 24.294580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.945112, 23.651386, 24.720669>,  <12.062542, 23.981037, 24.071701>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.945112, 23.651386, 24.720669> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.328183, 23.766523, 24.721094>,  <12.558025, 23.835606, 24.721350>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.328183, 23.766523, 24.721094>,  <11.945112, 23.651386, 24.720669>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<12.328183, 23.766523, 24.721094> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075507, 0.247658, 0.965901,
		0.277775, -0.925098, 0.258910,
		0.957674, 0.287853, 0.001058,
		12.615486, 23.852877, 24.721413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.226637, 23.436506, 25.461826>,  <11.945112, 23.651386, 24.720669>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.226637, 23.436506, 25.461826> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.479734, 23.703032, 25.304010>,  <12.631593, 23.862947, 25.209320>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.479734, 23.703032, 25.304010>,  <12.226637, 23.436506, 25.461826>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<12.479734, 23.703032, 25.304010> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044200, 0.477596, 0.877467,
		0.773099, -0.572650, 0.272744,
		0.632743, 0.666314, -0.394540,
		12.669558, 23.902925, 25.185648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.472551, 22.938066, 25.955185>,  <12.226637, 23.436506, 25.461826>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.472551, 22.938066, 25.955185> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.152539, 22.824036, 26.166346>,  <11.960532, 22.755617, 26.293043>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.152539, 22.824036, 26.166346>,  <12.472551, 22.938066, 25.955185>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<12.152539, 22.824036, 26.166346> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366868, -0.463772, -0.806427,
		0.474719, -0.838837, 0.266447,
		-0.800031, -0.285075, 0.527904,
		11.912530, 22.738514, 26.324717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.347550, 22.116133, 25.932802>,  <12.472551, 22.938066, 25.955185>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.347550, 22.116133, 25.932802> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.008115, 22.321815, 25.982584>,  <11.804454, 22.445225, 26.012453>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.008115, 22.321815, 25.982584>,  <12.347550, 22.116133, 25.932802>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<12.008115, 22.321815, 25.982584> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432363, -0.538467, -0.723267,
		-0.304894, -0.667566, 0.679261,
		-0.848588, 0.514207, 0.124455,
		11.753538, 22.476078, 26.019920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.863081, 21.658905, 26.064491>,  <12.347550, 22.116133, 25.932802>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.863081, 21.658905, 26.064491> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.649265, 21.977991, 25.952839>,  <11.520976, 22.169443, 25.885847>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.649265, 21.977991, 25.952839>,  <11.863081, 21.658905, 26.064491>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<11.649265, 21.977991, 25.952839> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365488, -0.515989, -0.774709,
		-0.762027, -0.312093, 0.567373,
		-0.534540, 0.797717, -0.279132,
		11.488903, 22.217306, 25.869099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.174390, 21.428154, 25.873966>,  <11.863081, 21.658905, 26.064491>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.174390, 21.428154, 25.873966> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.216149, 21.795076, 25.720266>,  <11.241205, 22.015230, 25.628046>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.216149, 21.795076, 25.720266>,  <11.174390, 21.428154, 25.873966>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<11.216149, 21.795076, 25.720266> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282391, -0.343116, -0.895838,
		-0.953601, 0.202034, 0.223219,
		0.104400, 0.917308, -0.384248,
		11.247469, 22.070269, 25.604992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.617728, 21.557648, 25.474163>,  <11.174390, 21.428154, 25.873966>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.617728, 21.557648, 25.474163> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<10.859428, 21.841145, 25.328524>,  <11.004448, 22.011242, 25.241140>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<10.859428, 21.841145, 25.328524>,  <10.617728, 21.557648, 25.474163>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<10.859428, 21.841145, 25.328524> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332025, -0.191428, -0.923642,
		-0.724322, 0.679000, 0.119650,
		0.604249, 0.708741, -0.364100,
		11.040703, 22.053766, 25.219294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.235732, 21.905270, 25.005825>,  <10.617728, 21.557648, 25.474163>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.235732, 21.905270, 25.005825> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<10.621173, 21.936047, 24.903414>,  <10.852438, 21.954512, 24.841967>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<10.621173, 21.936047, 24.903414>,  <10.235732, 21.905270, 25.005825>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<10.621173, 21.936047, 24.903414> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216100, -0.339630, -0.915397,
		-0.157386, 0.937407, -0.310642,
		0.963603, 0.076941, -0.256027,
		10.910254, 21.959129, 24.826605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.328145, 21.947218, 24.254372>,  <10.235732, 21.905270, 25.005825>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.328145, 21.947218, 24.254372> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<10.719607, 21.882496, 24.305050>,  <10.954485, 21.843662, 24.335457>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<10.719607, 21.882496, 24.305050>,  <10.328145, 21.947218, 24.254372>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<10.719607, 21.882496, 24.305050> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071460, -0.310096, -0.948016,
		0.192682, 0.936835, -0.291915,
		0.978656, -0.161805, 0.126696,
		11.013205, 21.833954, 24.343060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<17.669909, 17.200863, 27.177380> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.992544, 17.365549, 27.347040>,  <18.186125, 17.464361, 27.448837>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.992544, 17.365549, 27.347040>,  <17.669909, 17.200863, 27.177380>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<17.992544, 17.365549, 27.347040> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312727, 0.311690, -0.897247,
		-0.501615, 0.856352, 0.122650,
		0.806588, 0.411717, 0.424153,
		18.234520, 17.489063, 27.474285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.918446, 16.888273, 26.972746>,  <17.669909, 17.200863, 27.177380>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.918446, 16.888273, 26.972746> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.696123, 16.592213, 27.124144>,  <16.562731, 16.414576, 27.214983>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.696123, 16.592213, 27.124144>,  <16.918446, 16.888273, 26.972746>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<16.696123, 16.592213, 27.124144> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404455, 0.157018, 0.900978,
		-0.726290, 0.653852, 0.212086,
		-0.555805, -0.740151, 0.378494,
		16.529381, 16.370167, 27.237692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.790533, 17.660521, 26.981133>,  <16.918446, 16.888273, 26.972746>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.790533, 17.660521, 26.981133> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.404724, 17.577271, 26.916162>,  <16.173239, 17.527321, 26.877180>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.404724, 17.577271, 26.916162>,  <16.790533, 17.660521, 26.981133>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<16.404724, 17.577271, 26.916162> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161095, 0.951401, -0.262458,
		0.209156, -0.226980, -0.951175,
		-0.964522, -0.208124, -0.162425,
		16.115368, 17.514833, 26.867435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.497845, 17.707829, 26.220583>,  <16.790533, 17.660521, 26.981133>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.497845, 17.707829, 26.220583> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.196421, 17.842373, 26.446507>,  <16.015566, 17.923100, 26.582060>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.196421, 17.842373, 26.446507>,  <16.497845, 17.707829, 26.220583>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<16.196421, 17.842373, 26.446507> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014036, 0.867218, -0.497731,
		-0.657231, -0.367142, -0.658220,
		-0.753558, 0.336363, 0.564809,
		15.970353, 17.943281, 26.615950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.827633, 17.852264, 25.862490>,  <16.497845, 17.707829, 26.220583>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.827633, 17.852264, 25.862490> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.943919, 18.067595, 26.178892>,  <16.013691, 18.196793, 26.368734>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.943919, 18.067595, 26.178892>,  <15.827633, 17.852264, 25.862490>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<15.943919, 18.067595, 26.178892> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210206, 0.770580, -0.601681,
		-0.933434, 0.341192, 0.110860,
		0.290715, 0.538326, 0.791006,
		16.031134, 18.229092, 26.416193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.539202, 18.469997, 25.737600>,  <15.827633, 17.852264, 25.862490>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.539202, 18.469997, 25.737600> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.841423, 18.524441, 25.993917>,  <16.022757, 18.557106, 26.147707>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.841423, 18.524441, 25.993917>,  <15.539202, 18.469997, 25.737600>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<15.841423, 18.524441, 25.993917> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263525, 0.832391, -0.487524,
		-0.599744, 0.537215, 0.593049,
		0.755554, 0.136107, 0.640791,
		16.068089, 18.565273, 26.186155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.616186, 19.178331, 25.636061>,  <15.539202, 18.469997, 25.737600>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.616186, 19.178331, 25.636061> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.947824, 19.031305, 25.804583>,  <16.146807, 18.943089, 25.905697>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.947824, 19.031305, 25.804583>,  <15.616186, 19.178331, 25.636061>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<15.947824, 19.031305, 25.804583> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464888, 0.871832, -0.154234,
		-0.310617, 0.323735, 0.893707,
		0.829093, -0.367566, 0.421306,
		16.196552, 18.921036, 25.930975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.176680, 19.807550, 25.823275>,  <15.616186, 19.178331, 25.636061>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.176680, 19.807550, 25.823275> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.785701, 19.891666, 25.831007>,  <14.551113, 19.942135, 25.835648>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.785701, 19.891666, 25.831007>,  <15.176680, 19.807550, 25.823275>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<14.785701, 19.891666, 25.831007> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210063, -0.958829, -0.191106,
		-0.021651, -0.190857, 0.981379,
		-0.977448, 0.210289, 0.019332,
		14.492466, 19.954754, 25.836807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.922343, 19.268188, 26.199612>,  <15.176680, 19.807550, 25.823275>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.922343, 19.268188, 26.199612> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.612198, 19.426025, 26.002388>,  <14.426110, 19.520727, 25.884054>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.612198, 19.426025, 26.002388>,  <14.922343, 19.268188, 26.199612>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<14.612198, 19.426025, 26.002388> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236633, -0.905408, -0.352478,
		-0.585504, -0.156625, 0.795395,
		-0.775364, 0.394594, -0.493058,
		14.379589, 19.544403, 25.854471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.423765, 18.808878, 26.377314>,  <14.922343, 19.268188, 26.199612>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.423765, 18.808878, 26.377314> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.281651, 18.973602, 26.041651>,  <14.196382, 19.072437, 25.840254>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.281651, 18.973602, 26.041651>,  <14.423765, 18.808878, 26.377314>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<14.281651, 18.973602, 26.041651> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247758, -0.907106, -0.340257,
		-0.901323, 0.087016, 0.424318,
		-0.355293, 0.411810, -0.839154,
		14.175064, 19.097145, 25.789904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.812215, 18.658403, 26.313433>,  <14.423765, 18.808878, 26.377314>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.812215, 18.658403, 26.313433> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.867092, 18.748772, 25.927658>,  <13.900019, 18.802992, 25.696194>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.867092, 18.748772, 25.927658>,  <13.812215, 18.658403, 26.313433>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<13.867092, 18.748772, 25.927658> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325743, -0.909201, -0.259319,
		-0.935452, 0.349735, -0.051145,
		0.137194, 0.225920, -0.964437,
		13.908250, 18.816547, 25.638327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.263380, 18.287540, 25.973375>,  <13.812215, 18.658403, 26.313433>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.263380, 18.287540, 25.973375> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.509111, 18.388231, 25.674248>,  <13.656550, 18.448645, 25.494770>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.509111, 18.388231, 25.674248>,  <13.263380, 18.287540, 25.973375>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<13.509111, 18.388231, 25.674248> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268096, -0.824773, -0.497869,
		-0.742108, 0.506342, -0.439195,
		0.614329, 0.251726, -0.747820,
		13.693410, 18.463749, 25.449902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.702327, 18.750402, 26.265932>,  <13.263380, 18.287540, 25.973375>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.702327, 18.750402, 26.265932> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.315479, 18.804632, 26.352003>,  <12.083371, 18.837170, 26.403645>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.315479, 18.804632, 26.352003>,  <12.702327, 18.750402, 26.265932>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<12.315479, 18.804632, 26.352003> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243155, 0.244923, 0.938556,
		0.074541, 0.960017, -0.269835,
		-0.967119, 0.135573, 0.215176,
		12.025344, 18.845304, 26.416555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.577858, 19.494015, 26.520405>,  <12.702327, 18.750402, 26.265932>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.577858, 19.494015, 26.520405> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.276603, 19.259499, 26.639767>,  <12.095849, 19.118788, 26.711384>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.276603, 19.259499, 26.639767>,  <12.577858, 19.494015, 26.520405>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<12.276603, 19.259499, 26.639767> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116837, 0.327177, 0.937712,
		-0.647403, 0.741092, -0.177909,
		-0.753139, -0.586291, 0.298402,
		12.050661, 19.083611, 26.729288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.251862, 19.839474, 27.027077>,  <12.577858, 19.494015, 26.520405>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.251862, 19.839474, 27.027077> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.150805, 19.460381, 27.105028>,  <12.090172, 19.232925, 27.151798>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.150805, 19.460381, 27.105028>,  <12.251862, 19.839474, 27.027077>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<12.150805, 19.460381, 27.105028> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059912, 0.185702, 0.980778,
		-0.965704, 0.259459, 0.009865,
		-0.252640, -0.947732, 0.194878,
		12.075013, 19.176062, 27.163492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.639992, 19.869226, 27.515877>,  <12.251862, 19.839474, 27.027077>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.639992, 19.869226, 27.515877> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.763052, 19.490602, 27.554604>,  <11.836888, 19.263428, 27.577839>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.763052, 19.490602, 27.554604>,  <11.639992, 19.869226, 27.515877>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<11.763052, 19.490602, 27.554604> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023454, 0.094175, 0.995279,
		-0.951211, -0.308469, 0.006773,
		0.307650, -0.946561, 0.096815,
		11.855347, 19.206635, 27.583649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.239350, 19.599007, 28.063709>,  <11.639992, 19.869226, 27.515877>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.239350, 19.599007, 28.063709> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.573515, 19.383535, 28.020046>,  <11.774014, 19.254253, 27.993849>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.573515, 19.383535, 28.020046>,  <11.239350, 19.599007, 28.063709>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<11.573515, 19.383535, 28.020046> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183390, 0.085974, 0.979273,
		-0.518128, -0.838114, 0.170612,
		0.835411, -0.538677, -0.109157,
		11.824139, 19.221931, 27.987299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.257409, 19.271025, 28.590376>,  <11.239350, 19.599007, 28.063709>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.257409, 19.271025, 28.590376> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.637059, 19.232323, 28.470510>,  <11.864849, 19.209101, 28.398592>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.637059, 19.232323, 28.470510>,  <11.257409, 19.271025, 28.590376>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<11.637059, 19.232323, 28.470510> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309742, 0.115410, 0.943790,
		-0.056736, -0.988594, 0.139509,
		0.949126, -0.096758, -0.299662,
		11.921797, 19.203295, 28.380611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.565359, 19.020777, 29.203619>,  <11.257409, 19.271025, 28.590376>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.565359, 19.020777, 29.203619> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.877344, 19.136385, 28.981583>,  <12.064535, 19.205750, 28.848362>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.877344, 19.136385, 28.981583>,  <11.565359, 19.020777, 29.203619>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<11.877344, 19.136385, 28.981583> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409017, 0.435906, 0.801680,
		0.473672, -0.852321, 0.221775,
		0.779961, 0.289023, -0.555090,
		12.111333, 19.223091, 28.815056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.171275, 18.876776, 29.622608>,  <11.565359, 19.020777, 29.203619>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.171275, 18.876776, 29.622608> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.295236, 19.152843, 29.361034>,  <12.369612, 19.318483, 29.204090>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.295236, 19.152843, 29.361034>,  <12.171275, 18.876776, 29.622608>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<12.295236, 19.152843, 29.361034> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449707, 0.499589, 0.740388,
		0.837690, -0.523526, -0.155550,
		0.309901, 0.690168, -0.653934,
		12.388206, 19.359894, 29.164854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.917049, 18.982201, 29.737103>,  <12.171275, 18.876776, 29.622608>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.917049, 18.982201, 29.737103> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.788893, 19.307646, 29.543037>,  <12.711999, 19.502913, 29.426598>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.788893, 19.307646, 29.543037>,  <12.917049, 18.982201, 29.737103>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<12.788893, 19.307646, 29.543037> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.685070, 0.552731, 0.474518,
		0.654239, -0.180341, -0.734472,
		-0.320391, 0.813613, -0.485164,
		12.692776, 19.551729, 29.397488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.529160, 19.412266, 29.686218>,  <12.917049, 18.982201, 29.737103>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.529160, 19.412266, 29.686218> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.218196, 19.651810, 29.609274>,  <13.031618, 19.795536, 29.563108>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.218196, 19.651810, 29.609274>,  <13.529160, 19.412266, 29.686218>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<13.218196, 19.651810, 29.609274> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512002, 0.780131, 0.359512,
		0.365362, 0.180999, -0.913099,
		-0.777408, 0.598861, -0.192358,
		12.984973, 19.831469, 29.551567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.813181, 20.154545, 29.338812>,  <13.529160, 19.412266, 29.686218>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.813181, 20.154545, 29.338812> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.439726, 20.201252, 29.474274>,  <13.215653, 20.229277, 29.555552>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.439726, 20.201252, 29.474274>,  <13.813181, 20.154545, 29.338812>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<13.439726, 20.201252, 29.474274> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252590, 0.884952, 0.391227,
		-0.254011, 0.450805, -0.855718,
		-0.933636, 0.116770, 0.338656,
		13.159635, 20.236282, 29.575871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.568181, 20.882191, 29.190392>,  <13.813181, 20.154545, 29.338812>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.568181, 20.882191, 29.190392> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.373756, 20.741499, 29.510399>,  <13.257102, 20.657084, 29.702404>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.373756, 20.741499, 29.510399>,  <13.568181, 20.882191, 29.190392>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<13.373756, 20.741499, 29.510399> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202058, 0.845398, 0.494443,
		-0.850245, 0.401980, -0.339846,
		-0.486061, -0.351729, 0.800020,
		13.227938, 20.635981, 29.750404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.268949, 21.421164, 29.328644>,  <13.568181, 20.882191, 29.190392>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.268949, 21.421164, 29.328644> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.235888, 21.197523, 29.658630>,  <13.216052, 21.063339, 29.856623>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.235888, 21.197523, 29.658630>,  <13.268949, 21.421164, 29.328644>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<13.235888, 21.197523, 29.658630> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104329, 0.818398, 0.565103,
		-0.991103, 0.132774, -0.009310,
		-0.082650, -0.559103, 0.824968,
		13.211093, 21.029793, 29.906120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.686589, 21.592052, 29.777920>,  <13.268949, 21.421164, 29.328644>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.686589, 21.592052, 29.777920> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.960477, 21.441889, 30.027792>,  <13.124809, 21.351789, 30.177715>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.960477, 21.441889, 30.027792>,  <12.686589, 21.592052, 29.777920>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<12.960477, 21.441889, 30.027792> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032740, 0.840418, 0.540948,
		-0.728071, -0.390850, 0.563160,
		0.684719, -0.375411, 0.624681,
		13.165893, 21.329266, 30.215197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.396896, 21.903152, 29.146030>,  <12.686589, 21.592052, 29.777920>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.396896, 21.903152, 29.146030> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.450961, 22.297552, 29.106966>,  <12.483399, 22.534191, 29.083529>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.450961, 22.297552, 29.106966>,  <12.396896, 21.903152, 29.146030>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<12.450961, 22.297552, 29.106966> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361926, -0.042622, -0.931232,
		-0.922356, 0.161212, 0.351098,
		0.135161, 0.985999, -0.097660,
		12.491509, 22.593351, 29.077667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.826412, 22.121607, 28.797672>,  <12.396896, 21.903152, 29.146030>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.826412, 22.121607, 28.797672> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.093839, 22.416439, 28.758219>,  <12.254294, 22.593338, 28.734547>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.093839, 22.416439, 28.758219>,  <11.826412, 22.121607, 28.797672>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<12.093839, 22.416439, 28.758219> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252206, 0.099964, -0.962496,
		-0.699580, 0.668368, 0.252729,
		0.668566, 0.737083, -0.098633,
		12.294409, 22.637564, 28.728628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.464790, 22.774944, 28.649570>,  <11.826412, 22.121607, 28.797672>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.464790, 22.774944, 28.649570> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.837893, 22.777657, 28.505394>,  <12.061754, 22.779284, 28.418888>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.837893, 22.777657, 28.505394>,  <11.464790, 22.774944, 28.649570>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<11.837893, 22.777657, 28.505394> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343875, 0.316918, -0.883919,
		0.108238, 0.948429, 0.297939,
		0.932757, 0.006780, -0.360443,
		12.117720, 22.779690, 28.397261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.516837, 23.529953, 28.318344>,  <11.464790, 22.774944, 28.649570>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.516837, 23.529953, 28.318344> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.818141, 23.314974, 28.166687>,  <11.998923, 23.185986, 28.075693>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.818141, 23.314974, 28.166687>,  <11.516837, 23.529953, 28.318344>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<11.818141, 23.314974, 28.166687> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301197, 0.230583, -0.925263,
		0.584706, 0.811159, 0.011811,
		0.753259, -0.537449, -0.379142,
		12.044119, 23.153740, 28.052944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.712018, 23.904329, 27.810596>,  <11.516837, 23.529953, 28.318344>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.712018, 23.904329, 27.810596> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.844890, 23.532286, 27.747913>,  <11.924612, 23.309059, 27.710302>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.844890, 23.532286, 27.747913>,  <11.712018, 23.904329, 27.810596>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<11.844890, 23.532286, 27.747913> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401974, 0.010703, -0.915589,
		0.853273, 0.367132, -0.370323,
		0.332178, -0.930108, -0.156710,
		11.944543, 23.253254, 27.700901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.973684, 23.935688, 27.059519>,  <11.712018, 23.904329, 27.810596>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.973684, 23.935688, 27.059519> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.950441, 23.549032, 27.159304>,  <11.936496, 23.317039, 27.219175>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.950441, 23.549032, 27.159304>,  <11.973684, 23.935688, 27.059519>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<11.950441, 23.549032, 27.159304> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361854, -0.212498, -0.907693,
		0.930422, -0.143012, -0.337435,
		-0.058107, -0.966640, 0.249462,
		11.933009, 23.259041, 27.234142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.214037, 23.630579, 26.395420>,  <11.973684, 23.935688, 27.059519>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.214037, 23.630579, 26.395420> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.056500, 23.315989, 26.585724>,  <11.961979, 23.127235, 26.699905>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.056500, 23.315989, 26.585724>,  <12.214037, 23.630579, 26.395420>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<12.056500, 23.315989, 26.585724> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259994, -0.401138, -0.878346,
		0.881642, -0.469623, -0.046495,
		-0.393840, -0.786475, 0.475759,
		11.938348, 23.080046, 26.728451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.718586, 23.647568, 25.922312>,  <12.214037, 23.630579, 26.395420>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.718586, 23.647568, 25.922312> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.781513, 23.953833, 25.672829>,  <12.819269, 24.137592, 25.523138>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.781513, 23.953833, 25.672829>,  <12.718586, 23.647568, 25.922312>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<12.781513, 23.953833, 25.672829> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202581, 0.593120, 0.779211,
		0.966546, -0.248935, -0.061801,
		0.157317, 0.765663, -0.623707,
		12.828709, 24.183531, 25.485716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.194613, 23.953419, 26.310057>,  <12.718586, 23.647568, 25.922312>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.194613, 23.953419, 26.310057> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.092217, 24.236881, 26.047066>,  <13.030781, 24.406958, 25.889271>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.092217, 24.236881, 26.047066>,  <13.194613, 23.953419, 26.310057>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<13.092217, 24.236881, 26.047066> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237042, 0.705393, 0.668006,
		0.937167, 0.015152, -0.348553,
		-0.255988, 0.708655, -0.657479,
		13.015421, 24.449478, 25.849821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.676935, 24.479553, 26.348078>,  <13.194613, 23.953419, 26.310057>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.676935, 24.479553, 26.348078> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.368053, 24.676815, 26.187828>,  <13.182725, 24.795172, 26.091679>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.368053, 24.676815, 26.187828>,  <13.676935, 24.479553, 26.348078>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<13.368053, 24.676815, 26.187828> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058785, 0.683281, 0.727785,
		0.632650, 0.538447, -0.556622,
		-0.772203, 0.493154, -0.400625,
		13.136393, 24.824762, 26.067640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.855213, 25.246534, 26.173630>,  <13.676935, 24.479553, 26.348078>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.855213, 25.246534, 26.173630> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.457195, 25.246729, 26.213400>,  <13.218385, 25.246845, 26.237263>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.457195, 25.246729, 26.213400>,  <13.855213, 25.246534, 26.173630>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<13.457195, 25.246729, 26.213400> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084752, 0.527004, 0.845626,
		-0.051989, 0.849863, -0.524434,
		-0.995045, 0.000484, 0.099426,
		13.158682, 25.246874, 26.243227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.674544, 25.891344, 26.187361>,  <13.855213, 25.246534, 26.173630>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.674544, 25.891344, 26.187361> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.374296, 25.697355, 26.366859>,  <13.194147, 25.580963, 26.474558>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.374296, 25.697355, 26.366859>,  <13.674544, 25.891344, 26.187361>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<13.374296, 25.697355, 26.366859> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333570, 0.308117, 0.890952,
		-0.570351, 0.818455, -0.069508,
		-0.750620, -0.484970, 0.448747,
		13.149110, 25.551865, 26.501484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.292315, 26.459494, 26.631557>,  <13.674544, 25.891344, 26.187361>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.292315, 26.459494, 26.631557> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.184038, 26.108191, 26.789236>,  <13.119072, 25.897409, 26.883842>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.184038, 26.108191, 26.789236>,  <13.292315, 26.459494, 26.631557>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<13.184038, 26.108191, 26.789236> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084373, 0.386262, 0.918522,
		-0.958961, 0.281897, -0.030457,
		-0.270693, -0.878257, 0.394194,
		13.102830, 25.844713, 26.907494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.833898, 26.625866, 27.135651>,  <13.292315, 26.459494, 26.631557>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.833898, 26.625866, 27.135651> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.957045, 26.259398, 27.238297>,  <13.030932, 26.039516, 27.299883>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.957045, 26.259398, 27.238297>,  <12.833898, 26.625866, 27.135651>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<12.957045, 26.259398, 27.238297> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065426, 0.289462, 0.954951,
		-0.949177, -0.277209, 0.149057,
		0.307867, -0.916170, 0.256614,
		13.049405, 25.984547, 27.315281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.699188, 26.614491, 27.781218>,  <12.833898, 26.625866, 27.135651>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.699188, 26.614491, 27.781218> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.944894, 26.299519, 27.760683>,  <13.092318, 26.110537, 27.748362>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.944894, 26.299519, 27.760683>,  <12.699188, 26.614491, 27.781218>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<12.944894, 26.299519, 27.760683> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367707, 0.228068, 0.901541,
		-0.698191, -0.572661, 0.429637,
		0.614264, -0.787429, -0.051337,
		13.129173, 26.063290, 27.745281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.576969, 26.200487, 28.446547>,  <12.699188, 26.614491, 27.781218>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.576969, 26.200487, 28.446547> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.946252, 26.116598, 28.317734>,  <13.167822, 26.066265, 28.240446>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.946252, 26.116598, 28.317734>,  <12.576969, 26.200487, 28.446547>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<12.946252, 26.116598, 28.317734> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376267, 0.322831, 0.868448,
		-0.078173, -0.922928, 0.376953,
		0.923208, -0.209724, -0.322031,
		13.223214, 26.053680, 28.221125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<13.535372, 15.543898, 16.755501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.932969, 15.583314, 16.736450>,  <14.171527, 15.606964, 16.725019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.932969, 15.583314, 16.736450>,  <13.535372, 15.543898, 16.755501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.932969, 15.583314, 16.736450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061255, 0.861498, 0.504052,
		0.090700, -0.498106, 0.862359,
		0.993993, 0.098541, -0.047626,
		14.231167, 15.612876, 16.722162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.765734, 15.622861, 17.476925>,  <13.535372, 15.543898, 16.755501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.765734, 15.622861, 17.476925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.065049, 15.809414, 17.288223>,  <14.244638, 15.921346, 17.175003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.065049, 15.809414, 17.288223>,  <13.765734, 15.622861, 17.476925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.065049, 15.809414, 17.288223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183054, 0.828701, 0.528910,
		0.637615, -0.309422, 0.705482,
		0.748290, 0.466382, -0.471751,
		14.289536, 15.949328, 17.146698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.094871, 16.010323, 17.975861>,  <13.765734, 15.622861, 17.476925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.094871, 16.010323, 17.975861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.195928, 16.183495, 17.629740>,  <14.256561, 16.287397, 17.422068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.195928, 16.183495, 17.629740>,  <14.094871, 16.010323, 17.975861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.195928, 16.183495, 17.629740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285663, 0.887820, 0.360793,
		0.924429, 0.156034, 0.347971,
		0.252640, 0.432930, -0.865300,
		14.271720, 16.313374, 17.370150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.237437, 16.619375, 18.198490>,  <14.094871, 16.010323, 17.975861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.237437, 16.619375, 18.198490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.195294, 16.701555, 17.809298>,  <14.170009, 16.750862, 17.575783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.195294, 16.701555, 17.809298>,  <14.237437, 16.619375, 18.198490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.195294, 16.701555, 17.809298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097952, 0.971524, 0.215747,
		0.989598, 0.118036, -0.082233,
		-0.105358, 0.205448, -0.972980,
		14.163687, 16.763189, 17.517403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.546346, 17.186022, 18.048304>,  <14.237437, 16.619375, 18.198490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.546346, 17.186022, 18.048304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.311665, 17.165178, 17.725054>,  <14.170856, 17.152672, 17.531105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.311665, 17.165178, 17.725054>,  <14.546346, 17.186022, 18.048304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.311665, 17.165178, 17.725054> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167857, 0.984080, 0.058410,
		0.792214, 0.169918, -0.586110,
		-0.586703, -0.052110, -0.808124,
		14.135653, 17.149546, 17.482616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.727788, 17.772097, 17.639713>,  <14.546346, 17.186022, 18.048304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.727788, 17.772097, 17.639713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.362005, 17.670439, 17.513742>,  <14.142535, 17.609444, 17.438160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.362005, 17.670439, 17.513742>,  <14.727788, 17.772097, 17.639713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.362005, 17.670439, 17.513742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322412, 0.927861, 0.187415,
		0.244580, 0.272919, -0.930428,
		-0.914457, -0.254143, -0.314928,
		14.087668, 17.594196, 17.419264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.514293, 18.321009, 17.252563>,  <14.727788, 17.772097, 17.639713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.514293, 18.321009, 17.252563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.169887, 18.133234, 17.330828>,  <13.963243, 18.020569, 17.377787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.169887, 18.133234, 17.330828>,  <14.514293, 18.321009, 17.252563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.169887, 18.133234, 17.330828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453735, 0.882825, 0.121426,
		-0.229737, 0.015771, -0.973125,
		-0.861014, -0.469437, 0.195661,
		13.911582, 17.992403, 17.389526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.047250, 18.702433, 16.843983>,  <14.514293, 18.321009, 17.252563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.047250, 18.702433, 16.843983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.863951, 18.514868, 17.146011>,  <13.753971, 18.402328, 17.327229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.863951, 18.514868, 17.146011>,  <14.047250, 18.702433, 16.843983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.863951, 18.514868, 17.146011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297606, 0.881426, 0.366768,
		-0.837521, -0.056643, -0.543462,
		-0.458246, -0.468913, 0.755070,
		13.726477, 18.374193, 17.372532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.464580, 19.141655, 16.957191>,  <14.047250, 18.702433, 16.843983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.464580, 19.141655, 16.957191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.464396, 18.893845, 17.271181>,  <13.464287, 18.745157, 17.459576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.464396, 18.893845, 17.271181>,  <13.464580, 19.141655, 16.957191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.464396, 18.893845, 17.271181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180293, 0.772162, 0.609311,
		-0.983613, -0.141246, -0.112051,
		-0.000459, -0.619528, 0.784975,
		13.464259, 18.707987, 17.506674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.717086, 19.031603, 17.262436>,  <13.464580, 19.141655, 16.957191>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.717086, 19.031603, 17.262436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.981465, 18.964516, 17.555016>,  <13.140093, 18.924263, 17.730564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.981465, 18.964516, 17.555016>,  <12.717086, 19.031603, 17.262436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.981465, 18.964516, 17.555016> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388019, 0.757918, 0.524406,
		-0.642331, -0.630422, 0.435867,
		0.660948, -0.167717, 0.731450,
		13.179749, 18.914200, 17.774450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.307920, 19.045197, 17.825472>,  <12.717086, 19.031603, 17.262436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.307920, 19.045197, 17.825472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.676676, 19.132961, 17.953207>,  <12.897929, 19.185619, 18.029848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.676676, 19.132961, 17.953207>,  <12.307920, 19.045197, 17.825472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.676676, 19.132961, 17.953207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372929, 0.726029, 0.577759,
		-0.105081, -0.651720, 0.751145,
		0.921890, 0.219412, 0.319337,
		12.953243, 19.198786, 18.049007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.072858, 19.211855, 18.465422>,  <12.307920, 19.045197, 17.825472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.072858, 19.211855, 18.465422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.454487, 19.328201, 18.436737>,  <12.683464, 19.398008, 18.419527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.454487, 19.328201, 18.436737>,  <12.072858, 19.211855, 18.465422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.454487, 19.328201, 18.436737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163877, 0.707118, 0.687843,
		0.250776, -0.644501, 0.722309,
		0.954073, 0.290864, -0.071709,
		12.740709, 19.415461, 18.415224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.788192, 18.695309, 19.010681>,  <12.072858, 19.211855, 18.465422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.788192, 18.695309, 19.010681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.414484, 18.799084, 19.108524>,  <11.190259, 18.861349, 19.167231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.414484, 18.799084, 19.108524>,  <11.788192, 18.695309, 19.010681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.414484, 18.799084, 19.108524> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356451, -0.697162, -0.622019,
		0.009157, -0.668325, 0.743813,
		-0.934269, 0.259437, 0.244609,
		11.134203, 18.876915, 19.181908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.444611, 18.127337, 19.327662>,  <11.788192, 18.695309, 19.010681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.444611, 18.127337, 19.327662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.155666, 18.359251, 19.176907>,  <10.982300, 18.498400, 19.086454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.155666, 18.359251, 19.176907>,  <11.444611, 18.127337, 19.327662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.155666, 18.359251, 19.176907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236796, -0.719458, -0.652922,
		-0.649708, -0.382401, 0.657000,
		-0.722362, 0.579784, -0.376887,
		10.938958, 18.533186, 19.063841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.877131, 17.666424, 19.223156>,  <11.444611, 18.127337, 19.327662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.877131, 17.666424, 19.223156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.790225, 17.987648, 19.001205>,  <10.738082, 18.180382, 18.868034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.790225, 17.987648, 19.001205>,  <10.877131, 17.666424, 19.223156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.790225, 17.987648, 19.001205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.503610, -0.579178, -0.641038,
		-0.836166, 0.140168, 0.530264,
		-0.217264, 0.803060, -0.554879,
		10.725046, 18.228565, 18.834742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.152044, 17.692680, 19.148224>,  <10.877131, 17.666424, 19.223156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.152044, 17.692680, 19.148224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.317179, 17.888214, 18.840820>,  <10.416260, 18.005533, 18.656378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.317179, 17.888214, 18.840820>,  <10.152044, 17.692680, 19.148224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.317179, 17.888214, 18.840820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.547624, -0.541003, -0.638298,
		-0.727787, 0.684367, 0.044350,
		0.412837, 0.488832, -0.768511,
		10.441030, 18.034864, 18.610268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.637262, 17.787729, 18.751581>,  <10.152044, 17.692680, 19.148224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.637262, 17.787729, 18.751581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.949646, 17.815521, 18.503298>,  <10.137076, 17.832197, 18.354328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.949646, 17.815521, 18.503298>,  <9.637262, 17.787729, 18.751581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.949646, 17.815521, 18.503298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504991, -0.514568, -0.692968,
		-0.367544, 0.854630, -0.366769,
		0.780958, 0.069481, -0.620706,
		10.183933, 17.836365, 18.317085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.344381, 18.016405, 18.152126>,  <9.637262, 17.787729, 18.751581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.344381, 18.016405, 18.152126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.694305, 17.845705, 18.060394>,  <9.904260, 17.743284, 18.005354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.694305, 17.845705, 18.060394>,  <9.344381, 18.016405, 18.152126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.694305, 17.845705, 18.060394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464046, -0.602117, -0.649705,
		0.139176, 0.674788, -0.724769,
		0.874809, -0.426750, -0.229332,
		9.956748, 17.717680, 17.991594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.325907, 17.877432, 17.454298>,  <9.344381, 18.016405, 18.152126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.325907, 17.877432, 17.454298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.654244, 17.669460, 17.548862>,  <9.851247, 17.544678, 17.605602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.654244, 17.669460, 17.548862>,  <9.325907, 17.877432, 17.454298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.654244, 17.669460, 17.548862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217489, -0.667274, -0.712351,
		0.528122, 0.533312, -0.660806,
		0.820844, -0.519927, 0.236413,
		9.900497, 17.513483, 17.619787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.693613, 17.718258, 16.826969>,  <9.325907, 17.877432, 17.454298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.693613, 17.718258, 16.826969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.787631, 17.448761, 17.107204>,  <9.844042, 17.287064, 17.275347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.787631, 17.448761, 17.107204>,  <9.693613, 17.718258, 16.826969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.787631, 17.448761, 17.107204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314418, -0.734733, -0.601090,
		0.919725, -0.078994, -0.384532,
		0.235046, -0.673742, 0.700590,
		9.858145, 17.246639, 17.317381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.104570, 17.232742, 16.460747>,  <9.693613, 17.718258, 16.826969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.104570, 17.232742, 16.460747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.970026, 17.020142, 16.771711>,  <9.889299, 16.892582, 16.958290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.970026, 17.020142, 16.771711>,  <10.104570, 17.232742, 16.460747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.970026, 17.020142, 16.771711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237821, -0.750814, -0.616214,
		0.911210, -0.392154, 0.126141,
		-0.336360, -0.531501, 0.777412,
		9.869118, 16.860691, 17.004934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.386769, 16.666029, 16.273470>,  <10.104570, 17.232742, 16.460747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.386769, 16.666029, 16.273470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.107282, 16.593151, 16.550192>,  <9.939590, 16.549423, 16.716225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.107282, 16.593151, 16.550192>,  <10.386769, 16.666029, 16.273470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.107282, 16.593151, 16.550192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242187, -0.849684, -0.468383,
		0.673155, -0.494815, 0.549564,
		-0.698719, -0.182197, 0.691807,
		9.897666, 16.538492, 16.757734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.551392, 16.035213, 16.539145>,  <10.386769, 16.666029, 16.273470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.551392, 16.035213, 16.539145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.164891, 16.068111, 16.636791>,  <9.932991, 16.087851, 16.695379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.164891, 16.068111, 16.636791>,  <10.551392, 16.035213, 16.539145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.164891, 16.068111, 16.636791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195140, -0.852334, -0.485229,
		0.168162, -0.516490, 0.839618,
		-0.966251, 0.082246, 0.244118,
		9.875016, 16.092785, 16.710026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.357111, 15.415928, 16.714748>,  <10.551392, 16.035213, 16.539145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.357111, 15.415928, 16.714748> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.985974, 15.563811, 16.695057>,  <9.763292, 15.652541, 16.683243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.985974, 15.563811, 16.695057>,  <10.357111, 15.415928, 16.714748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.985974, 15.563811, 16.695057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315737, -0.848848, -0.423990,
		-0.198539, -0.377853, 0.904328,
		-0.927843, 0.369708, -0.049227,
		9.707622, 15.674724, 16.680288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.855031, 14.939458, 17.019079>,  <10.357111, 15.415928, 16.714748>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.855031, 14.939458, 17.019079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.629211, 15.157052, 16.770767>,  <9.493720, 15.287608, 16.621780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.629211, 15.157052, 16.770767>,  <9.855031, 14.939458, 17.019079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.629211, 15.157052, 16.770767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468871, -0.830322, -0.301207,
		-0.679297, 0.121018, 0.723816,
		-0.564549, 0.543986, -0.620777,
		9.459847, 15.320248, 16.584534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.088050, 14.730704, 17.140745>,  <9.855031, 14.939458, 17.019079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.088050, 14.730704, 17.140745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.123813, 14.892377, 16.776625>,  <9.145270, 14.989380, 16.558153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.123813, 14.892377, 16.776625>,  <9.088050, 14.730704, 17.140745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.123813, 14.892377, 16.776625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.665586, -0.655671, -0.356496,
		-0.740946, 0.637756, 0.210396,
		0.089407, 0.404181, -0.910299,
		9.150635, 15.013631, 16.503534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.412004, 14.038968, 17.083670>,  <9.088050, 14.730704, 17.140745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.412004, 14.038968, 17.083670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.438803, 13.817605, 17.415754>,  <9.454882, 13.684788, 17.615005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.438803, 13.817605, 17.415754>,  <9.412004, 14.038968, 17.083670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.438803, 13.817605, 17.415754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.604068, -0.684751, -0.407698,
		0.794112, -0.474190, -0.380171,
		0.066997, -0.553407, 0.830212,
		9.458901, 13.651583, 17.664818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.029441, 13.369617, 17.370237>,  <9.412004, 14.038968, 17.083670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.029441, 13.369617, 17.370237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.197377, 13.092050, 17.604233>,  <9.298139, 12.925509, 17.744631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.197377, 13.092050, 17.604233>,  <9.029441, 13.369617, 17.370237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.197377, 13.092050, 17.604233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125744, 0.682804, 0.719699,
		-0.898845, -0.228599, 0.373924,
		0.419840, -0.693917, 0.584990,
		9.323329, 12.883875, 17.779730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.022666, 13.577238, 18.035229>,  <9.029441, 13.369617, 17.370237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.022666, 13.577238, 18.035229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.284014, 13.281516, 18.100388>,  <9.440823, 13.104083, 18.139482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.284014, 13.281516, 18.100388>,  <9.022666, 13.577238, 18.035229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.284014, 13.281516, 18.100388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278057, 0.434494, 0.856679,
		-0.704126, -0.514433, 0.489454,
		0.653369, -0.739306, 0.162897,
		9.480024, 13.059724, 18.149256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.921188, 13.336082, 18.700359>,  <9.022666, 13.577238, 18.035229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.921188, 13.336082, 18.700359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.287999, 13.205515, 18.608696>,  <9.508085, 13.127174, 18.553698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.287999, 13.205515, 18.608696>,  <8.921188, 13.336082, 18.700359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.287999, 13.205515, 18.608696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370459, 0.484335, 0.792578,
		-0.147723, -0.811709, 0.565072,
		0.917027, -0.326418, -0.229157,
		9.563107, 13.107590, 18.539949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.126860, 13.043731, 19.307629>,  <8.921188, 13.336082, 18.700359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.126860, 13.043731, 19.307629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.456141, 13.105157, 19.088995>,  <9.653709, 13.142013, 18.957815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.456141, 13.105157, 19.088995>,  <9.126860, 13.043731, 19.307629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.456141, 13.105157, 19.088995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483755, 0.314211, 0.816856,
		0.297175, -0.936852, 0.184377,
		0.823207, 0.153555, -0.546582,
		9.703101, 13.151227, 18.925020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.678048, 12.708069, 19.645967>,  <9.126860, 13.043731, 19.307629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.678048, 12.708069, 19.645967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.825265, 13.000510, 19.416174>,  <9.913595, 13.175975, 19.278297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.825265, 13.000510, 19.416174>,  <9.678048, 12.708069, 19.645967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.825265, 13.000510, 19.416174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397573, 0.434785, 0.808021,
		0.840524, -0.525786, -0.130647,
		0.368042, 0.731103, -0.574485,
		9.935678, 13.219841, 19.243828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.382613, 12.910942, 19.873394>,  <9.678048, 12.708069, 19.645967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.382613, 12.910942, 19.873394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.230122, 13.227899, 19.682907>,  <10.138626, 13.418073, 19.568615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.230122, 13.227899, 19.682907>,  <10.382613, 12.910942, 19.873394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.230122, 13.227899, 19.682907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347372, 0.600150, 0.720522,
		0.856736, 0.109260, -0.504050,
		-0.381230, 0.792390, -0.476216,
		10.115753, 13.465615, 19.540043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.851938, 13.310705, 19.890646>,  <10.382613, 12.910942, 19.873394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.851938, 13.310705, 19.890646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.546377, 13.559011, 19.820099>,  <10.363041, 13.707994, 19.777771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.546377, 13.559011, 19.820099>,  <10.851938, 13.310705, 19.890646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.546377, 13.559011, 19.820099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408707, 0.676884, 0.612198,
		0.499411, 0.395577, -0.770783,
		-0.763903, 0.620763, -0.176369,
		10.317206, 13.745239, 19.767189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.066085, 14.026648, 19.845093>,  <10.851938, 13.310705, 19.890646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.066085, 14.026648, 19.845093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.678545, 14.114267, 19.891304>,  <10.446021, 14.166839, 19.919031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.678545, 14.114267, 19.891304>,  <11.066085, 14.026648, 19.845093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.678545, 14.114267, 19.891304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247054, 0.822686, 0.512007,
		0.017113, 0.524599, -0.851177,
		-0.968851, 0.219049, 0.115526,
		10.387890, 14.179982, 19.925962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.054139, 14.708540, 19.579281>,  <11.066085, 14.026648, 19.845093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.054139, 14.708540, 19.579281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.755145, 14.637329, 19.835272>,  <10.575748, 14.594603, 19.988867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.755145, 14.637329, 19.835272>,  <11.054139, 14.708540, 19.579281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.755145, 14.637329, 19.835272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171903, 0.878760, 0.445230,
		-0.641652, 0.442817, -0.626256,
		-0.747484, -0.178027, 0.639980,
		10.530900, 14.583920, 20.027266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.790575, 15.326506, 19.664623>,  <11.054139, 14.708540, 19.579281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.790575, 15.326506, 19.664623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.582966, 15.155599, 19.960747>,  <10.458401, 15.053055, 20.138422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.582966, 15.155599, 19.960747>,  <10.790575, 15.326506, 19.664623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.582966, 15.155599, 19.960747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113596, 0.823940, 0.555174,
		-0.847179, 0.372243, -0.379107,
		-0.519022, -0.427267, 0.740310,
		10.427259, 15.027418, 20.182840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.269474, 15.869343, 19.976259>,  <10.790575, 15.326506, 19.664623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.269474, 15.869343, 19.976259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.300371, 15.589875, 20.260765>,  <10.318910, 15.422194, 20.431469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.300371, 15.589875, 20.260765>,  <10.269474, 15.869343, 19.976259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.300371, 15.589875, 20.260765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092614, 0.715339, 0.692613,
		-0.992701, 0.012373, 0.119962,
		0.077244, -0.698668, 0.711264,
		10.323545, 15.380275, 20.474144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.966710, 16.184544, 20.534786>,  <10.269474, 15.869343, 19.976259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.966710, 16.184544, 20.534786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.202004, 15.888275, 20.664640>,  <10.343181, 15.710515, 20.742554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.202004, 15.888275, 20.664640>,  <9.966710, 16.184544, 20.534786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.202004, 15.888275, 20.664640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187517, 0.515418, 0.836171,
		-0.786649, -0.430991, 0.442076,
		0.588236, -0.740669, 0.324635,
		10.378475, 15.666075, 20.762032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.680741, 15.936854, 21.169607>,  <9.966710, 16.184544, 20.534786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.680741, 15.936854, 21.169607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.070452, 15.847818, 21.183691>,  <10.304278, 15.794396, 21.192141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.070452, 15.847818, 21.183691>,  <9.680741, 15.936854, 21.169607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.070452, 15.847818, 21.183691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089140, 0.524138, 0.846955,
		-0.206979, -0.822029, 0.530497,
		0.974276, -0.222591, 0.035210,
		10.362735, 15.781041, 21.194254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.674594, 15.612068, 21.769747>,  <9.680741, 15.936854, 21.169607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.674594, 15.612068, 21.769747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.033616, 15.768305, 21.687935>,  <10.249029, 15.862047, 21.638847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.033616, 15.768305, 21.687935>,  <9.674594, 15.612068, 21.769747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.033616, 15.768305, 21.687935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046723, 0.545542, 0.836780,
		0.438420, -0.741500, 0.507903,
		0.897555, 0.390592, -0.204532,
		10.302882, 15.885483, 21.626575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.058020, 15.555429, 22.400324>,  <9.674594, 15.612068, 21.769747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.058020, 15.555429, 22.400324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.268151, 15.825055, 22.192606>,  <10.394230, 15.986831, 22.067974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.268151, 15.825055, 22.192606>,  <10.058020, 15.555429, 22.400324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.268151, 15.825055, 22.192606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179931, 0.508490, 0.842059,
		0.831657, -0.535796, 0.145839,
		0.525329, 0.674063, -0.519296,
		10.425750, 16.027273, 22.036818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.662420, 15.695746, 22.825136>,  <10.058020, 15.555429, 22.400324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.662420, 15.695746, 22.825136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.673445, 16.005810, 22.572670>,  <10.680059, 16.191849, 22.421190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.673445, 16.005810, 22.572670>,  <10.662420, 15.695746, 22.825136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.673445, 16.005810, 22.572670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263620, 0.603416, 0.752592,
		0.964233, -0.187130, -0.187716,
		0.027562, 0.775159, -0.631164,
		10.681713, 16.238358, 22.383320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.333000, 16.048874, 22.909744>,  <10.662420, 15.695746, 22.825136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.333000, 16.048874, 22.909744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.096858, 16.335777, 22.761679>,  <10.955173, 16.507919, 22.672840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.096858, 16.335777, 22.761679>,  <11.333000, 16.048874, 22.909744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.096858, 16.335777, 22.761679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262367, 0.604232, 0.752374,
		0.763311, 0.347049, -0.544897,
		-0.590355, 0.717259, -0.370163,
		10.919751, 16.550955, 22.650629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.665807, 16.742949, 23.056391>,  <11.333000, 16.048874, 22.909744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.665807, 16.742949, 23.056391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.275951, 16.814812, 23.003021>,  <11.042038, 16.857929, 22.971001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.275951, 16.814812, 23.003021>,  <11.665807, 16.742949, 23.056391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.275951, 16.814812, 23.003021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006653, 0.619210, 0.785197,
		0.223685, 0.764396, -0.604702,
		-0.974639, 0.179660, -0.133423,
		10.983560, 16.868710, 22.962994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.632975, 17.431221, 22.887638>,  <11.665807, 16.742949, 23.056391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.632975, 17.431221, 22.887638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.273440, 17.310642, 23.014902>,  <11.057720, 17.238295, 23.091261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.273440, 17.310642, 23.014902>,  <11.632975, 17.431221, 22.887638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.273440, 17.310642, 23.014902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018944, 0.751957, 0.658939,
		-0.437876, 0.586251, -0.681597,
		-0.898836, -0.301446, 0.318158,
		11.003790, 17.220209, 23.110350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.290806, 18.050312, 23.175638>,  <11.632975, 17.431221, 22.887638>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.290806, 18.050312, 23.175638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.070648, 17.763884, 23.347363>,  <10.938554, 17.592026, 23.450397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.070648, 17.763884, 23.347363>,  <11.290806, 18.050312, 23.175638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.070648, 17.763884, 23.347363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012771, 0.506921, 0.861898,
		-0.834808, 0.479866, -0.269860,
		-0.550393, -0.716073, 0.429310,
		10.905530, 17.549061, 23.476156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.689252, 18.416307, 23.437519>,  <11.290806, 18.050312, 23.175638>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.689252, 18.416307, 23.437519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.754688, 18.071527, 23.629469>,  <10.793950, 17.864658, 23.744638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.754688, 18.071527, 23.629469>,  <10.689252, 18.416307, 23.437519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.754688, 18.071527, 23.629469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032944, 0.481381, 0.875892,
		-0.985978, -0.159096, 0.050353,
		0.163590, -0.861952, 0.479872,
		10.803765, 17.812943, 23.773430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.319143, 18.498552, 24.136938>,  <10.689252, 18.416307, 23.437519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.319143, 18.498552, 24.136938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.562447, 18.186356, 24.194702>,  <10.708428, 17.999037, 24.229361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.562447, 18.186356, 24.194702>,  <10.319143, 18.498552, 24.136938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.562447, 18.186356, 24.194702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151342, 0.292640, 0.944170,
		-0.779178, -0.552444, 0.296121,
		0.608258, -0.780492, 0.144410,
		10.744924, 17.952208, 24.238026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.106170, 18.252171, 24.816208>,  <10.319143, 18.498552, 24.136938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.106170, 18.252171, 24.816208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.474166, 18.114834, 24.740595>,  <10.694963, 18.032433, 24.695227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.474166, 18.114834, 24.740595>,  <10.106170, 18.252171, 24.816208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.474166, 18.114834, 24.740595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301323, 0.311157, 0.901324,
		-0.250642, -0.886171, 0.389719,
		0.919991, -0.343341, -0.189035,
		10.750163, 18.011831, 24.683884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.279517, 18.016840, 25.495304>,  <10.106170, 18.252171, 24.816208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.279517, 18.016840, 25.495304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.616674, 18.039171, 25.281233>,  <10.818969, 18.052570, 25.152790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.616674, 18.039171, 25.281233>,  <10.279517, 18.016840, 25.495304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.616674, 18.039171, 25.281233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527403, 0.111449, 0.842274,
		0.106679, -0.992200, 0.064488,
		0.842891, 0.055842, -0.535179,
		10.869542, 18.055920, 25.120680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.699330, 17.619095, 25.917223>,  <10.279517, 18.016840, 25.495304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.699330, 17.619095, 25.917223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.958296, 17.843296, 25.710655>,  <11.113675, 17.977818, 25.586714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.958296, 17.843296, 25.710655>,  <10.699330, 17.619095, 25.917223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.958296, 17.843296, 25.710655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563011, 0.104971, 0.819756,
		0.513687, -0.821471, -0.247610,
		0.647414, 0.560505, -0.516420,
		11.152520, 18.011448, 25.555729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.420208, 17.321184, 25.921848>,  <10.699330, 17.619095, 25.917223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.420208, 17.321184, 25.921848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.438012, 17.715874, 25.859367>,  <11.448695, 17.952686, 25.821878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.438012, 17.715874, 25.859367>,  <11.420208, 17.321184, 25.921848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.438012, 17.715874, 25.859367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555092, 0.105570, 0.825063,
		0.830598, -0.123431, -0.543022,
		0.044511, 0.986722, -0.156201,
		11.451365, 18.011890, 25.812508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.082552, 17.520052, 26.164175>,  <11.420208, 17.321184, 25.921848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.082552, 17.520052, 26.164175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.885819, 17.867826, 26.145506>,  <11.767779, 18.076492, 26.134304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.885819, 17.867826, 26.145506>,  <12.082552, 17.520052, 26.164175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.885819, 17.867826, 26.145506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522480, 0.337591, 0.782973,
		0.696502, 0.360707, -0.620303,
		-0.491832, 0.869438, -0.046670,
		11.738270, 18.128658, 26.131504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
