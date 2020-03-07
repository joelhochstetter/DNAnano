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
	<1.321303, 4.704878, 3.584777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.177387, 4.643127, 3.952847>,  <1.091038, 4.606077, 4.173688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.177387, 4.643127, 3.952847>,  <1.321303, 4.704878, 3.584777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.177387, 4.643127, 3.952847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419155, -0.907841, 0.011583,
		0.833583, 0.389863, 0.391338,
		-0.359788, -0.154376, 0.920174,
		1.069451, 4.596815, 4.228899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.761890, 4.711578, 4.209915>,  <1.321303, 4.704878, 3.584777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.761890, 4.711578, 4.209915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.472588, 4.441544, 4.268097>,  <1.299006, 4.279523, 4.303006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.472588, 4.441544, 4.268097>,  <1.761890, 4.711578, 4.209915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.472588, 4.441544, 4.268097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.690101, -0.714382, 0.115845,
		0.025705, 0.184165, 0.982559,
		-0.723257, -0.675087, 0.145455,
		1.255610, 4.239017, 4.311734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.722148, 4.487786, 4.872785>,  <1.761890, 4.711578, 4.209915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.722148, 4.487786, 4.872785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.617245, 4.201035, 4.614388>,  <1.554303, 4.028984, 4.459349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.617245, 4.201035, 4.614388>,  <1.722148, 4.487786, 4.872785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.617245, 4.201035, 4.614388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.764432, -0.562892, 0.314318,
		-0.588952, -0.411385, 0.695628,
		-0.262258, -0.716878, -0.645992,
		1.538567, 3.985971, 4.420590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.526896, 3.882993, 5.177896>,  <1.722148, 4.487786, 4.872785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.526896, 3.882993, 5.177896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.722328, 3.835617, 4.832119>,  <1.839588, 3.807191, 4.624653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.722328, 3.835617, 4.832119>,  <1.526896, 3.882993, 5.177896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.722328, 3.835617, 4.832119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.819511, -0.277770, 0.501245,
		-0.299486, -0.953318, -0.038647,
		0.488581, -0.118444, -0.864442,
		1.868903, 3.800085, 4.572786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.994376, 3.342112, 5.340646>,  <1.526896, 3.882993, 5.177896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.994376, 3.342112, 5.340646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.137146, 3.470551, 4.989761>,  <2.222808, 3.547614, 4.779231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.137146, 3.470551, 4.989761>,  <1.994376, 3.342112, 5.340646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.137146, 3.470551, 4.989761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.922557, -0.268542, 0.277079,
		-0.146600, -0.908176, -0.392079,
		0.356926, 0.321096, -0.877212,
		2.244224, 3.566879, 4.726598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.362611, 2.779352, 5.127649>,  <1.994376, 3.342112, 5.340646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.362611, 2.779352, 5.127649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.509281, 3.118301, 4.974022>,  <2.597283, 3.321671, 4.881846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.509281, 3.118301, 4.974022>,  <2.362611, 2.779352, 5.127649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.509281, 3.118301, 4.974022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.929695, -0.318259, 0.185415,
		0.034883, -0.425052, -0.904496,
		0.366675, 0.847374, -0.384067,
		2.619284, 3.372514, 4.858802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.940373, 2.654956, 4.850966>,  <2.362611, 2.779352, 5.127649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.940373, 2.654956, 4.850966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.980911, 3.052444, 4.869938>,  <3.005234, 3.290937, 4.881321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.980911, 3.052444, 4.869938>,  <2.940373, 2.654956, 4.850966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.980911, 3.052444, 4.869938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.965989, -0.109694, 0.234163,
		0.237896, 0.022084, -0.971040,
		0.101346, 0.993720, 0.047429,
		3.011315, 3.350560, 4.884167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.547785, 2.790506, 4.489132>,  <2.940373, 2.654956, 4.850966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.547785, 2.790506, 4.489132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.496944, 3.104965, 4.731064>,  <3.466440, 3.293640, 4.876223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.496944, 3.104965, 4.731064>,  <3.547785, 2.790506, 4.489132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.496944, 3.104965, 4.731064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.947644, -0.083846, 0.308124,
		0.292943, 0.612326, -0.734331,
		-0.127102, 0.786147, 0.604829,
		3.458814, 3.340809, 4.912513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<4.994051, 3.088947, 0.719998> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.824033, 3.368423, 0.950188>,  <4.722022, 3.536109, 1.088301>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.824033, 3.368423, 0.950188>,  <4.994051, 3.088947, 0.719998>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.824033, 3.368423, 0.950188> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.695665, 0.154610, -0.701531,
		-0.579127, -0.698518, 0.420338,
		-0.425044, 0.698690, 0.575473,
		4.696519, 3.578031, 1.122830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.255277, 2.889846, 0.764481>,  <4.994051, 3.088947, 0.719998>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.255277, 2.889846, 0.764481> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.303815, 3.282074, 0.826134>,  <4.332937, 3.517411, 0.863125>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.303815, 3.282074, 0.826134>,  <4.255277, 2.889846, 0.764481>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.303815, 3.282074, 0.826134> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.839012, 0.184297, -0.511951,
		-0.530410, -0.067196, 0.845074,
		0.121344, 0.980571, 0.154131,
		4.340218, 3.576245, 0.872373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.659056, 3.200960, 1.066441>,  <4.255277, 2.889846, 0.764481>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.659056, 3.200960, 1.066441> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.870038, 3.447296, 0.832336>,  <3.996627, 3.595098, 0.691873>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.870038, 3.447296, 0.832336>,  <3.659056, 3.200960, 1.066441>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.870038, 3.447296, 0.832336> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.781417, 0.081295, -0.618692,
		-0.333437, 0.783665, 0.524108,
		0.527454, 0.615841, -0.585262,
		4.028275, 3.632049, 0.656758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.398330, 3.791085, 0.997813>,  <3.659056, 3.200960, 1.066441>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.398330, 3.791085, 0.997813> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.592891, 3.740494, 0.652000>,  <3.709627, 3.710139, 0.444513>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.592891, 3.740494, 0.652000>,  <3.398330, 3.791085, 0.997813>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.592891, 3.740494, 0.652000> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.866179, 0.060045, -0.496113,
		0.114659, 0.990151, -0.080347,
		0.486402, -0.126478, -0.864532,
		3.738811, 3.702550, 0.392641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.288311, 4.397987, 0.586248>,  <3.398330, 3.791085, 0.997813>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.288311, 4.397987, 0.586248> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.338872, 4.061539, 0.375900>,  <3.369209, 3.859670, 0.249691>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.338872, 4.061539, 0.375900>,  <3.288311, 4.397987, 0.586248>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.338872, 4.061539, 0.375900> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.875116, 0.155076, -0.458392,
		0.467112, 0.518140, -0.716476,
		0.126403, -0.841120, -0.525870,
		3.376793, 3.809203, 0.218139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.177333, 4.633516, -0.091637>,  <3.288311, 4.397987, 0.586248>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.177333, 4.633516, -0.091637> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.121453, 4.237549, -0.100967>,  <3.087925, 3.999968, -0.106566>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.121453, 4.237549, -0.100967>,  <3.177333, 4.633516, -0.091637>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.121453, 4.237549, -0.100967> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.773324, 0.123786, -0.621809,
		0.618428, -0.068828, -0.782821,
		-0.139700, -0.989919, -0.023327,
		3.079543, 3.940573, -0.107965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.087380, 4.403208, -0.840900>,  <3.177333, 4.633516, -0.091637>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.087380, 4.403208, -0.840900> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.930190, 4.087463, -0.652229>,  <2.835876, 3.898017, -0.539027>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.930190, 4.087463, -0.652229>,  <3.087380, 4.403208, -0.840900>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.930190, 4.087463, -0.652229> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.756176, -0.014462, -0.654208,
		0.523228, -0.613758, -0.591214,
		-0.392976, -0.789362, 0.471676,
		2.812297, 3.850655, -0.510726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.890777, 3.970961, -1.397630>,  <3.087380, 4.403208, -0.840900>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.890777, 3.970961, -1.397630> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.675188, 3.882401, -1.072548>,  <2.545835, 3.829264, -0.877499>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.675188, 3.882401, -1.072548>,  <2.890777, 3.970961, -1.397630>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.675188, 3.882401, -1.072548> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.831631, -0.013377, -0.555168,
		0.133788, -0.975090, -0.176918,
		-0.538972, -0.221405, 0.812705,
		2.513496, 3.815980, -0.828736>
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
