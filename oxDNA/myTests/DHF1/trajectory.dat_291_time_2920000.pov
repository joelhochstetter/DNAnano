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
	<2.428158, 1.224648, 2.476865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.282001, 0.948608, 2.726746>,  <2.194308, 0.782984, 2.876674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.282001, 0.948608, 2.726746>,  <2.428158, 1.224648, 2.476865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.282001, 0.948608, 2.726746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142666, 0.704694, 0.695020,
		-0.919857, 0.164830, -0.355942,
		-0.365390, -0.690100, 0.624702,
		2.172385, 0.741578, 2.914156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.703218, 0.819578, 2.850326>,  <2.428158, 1.224648, 2.476865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.703218, 0.819578, 2.850326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.484077, 0.600037, 3.102871>,  <2.352593, 0.468312, 3.254398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.484077, 0.600037, 3.102871>,  <2.703218, 0.819578, 2.850326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.484077, 0.600037, 3.102871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473305, 0.418947, 0.774897,
		-0.689814, 0.723355, 0.030255,
		-0.547850, -0.548855, 0.631363,
		2.319722, 0.435380, 3.292280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.422844, 1.276226, 3.343432>,  <2.703218, 0.819578, 2.850326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.422844, 1.276226, 3.343432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.441319, 0.908722, 3.500275>,  <2.452403, 0.688220, 3.594380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.441319, 0.908722, 3.500275>,  <2.422844, 1.276226, 3.343432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.441319, 0.908722, 3.500275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426060, 0.373150, 0.824155,
		-0.903515, 0.128996, 0.408682,
		0.046187, -0.918760, 0.392106,
		2.455175, 0.633094, 3.617907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.069783, 1.274737, 3.948446>,  <2.422844, 1.276226, 3.343432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.069783, 1.274737, 3.948446> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.422981, 1.091217, 3.908802>,  <2.634900, 0.981105, 3.885016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.422981, 1.091217, 3.908802>,  <2.069783, 1.274737, 3.948446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.422981, 1.091217, 3.908802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351612, 0.506655, 0.787191,
		-0.310949, -0.729934, 0.608693,
		0.882995, -0.458799, -0.099110,
		2.687880, 0.953577, 3.879069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.245680, 1.045492, 4.667811>,  <2.069783, 1.274737, 3.948446>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.245680, 1.045492, 4.667811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.579861, 1.104752, 4.456123>,  <2.780369, 1.140307, 4.329111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.579861, 1.104752, 4.456123>,  <2.245680, 1.045492, 4.667811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.579861, 1.104752, 4.456123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428428, 0.427547, 0.796023,
		0.344194, -0.891772, 0.293725,
		0.835452, 0.148147, -0.529219,
		2.830496, 1.149196, 4.297358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.857756, 0.813773, 5.157256>,  <2.245680, 1.045492, 4.667811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.857756, 0.813773, 5.157256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.012081, 1.032867, 4.860302>,  <3.104676, 1.164324, 4.682130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.012081, 1.032867, 4.860302>,  <2.857756, 0.813773, 5.157256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.012081, 1.032867, 4.860302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395837, 0.628575, 0.669482,
		0.833344, -0.552157, 0.025697,
		0.385812, 0.547737, -0.742384,
		3.127825, 1.197188, 4.637587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.500141, 0.981058, 5.398419>,  <2.857756, 0.813773, 5.157256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.500141, 0.981058, 5.398419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.419231, 1.248077, 5.111794>,  <3.370686, 1.408289, 4.939818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.419231, 1.248077, 5.111794>,  <3.500141, 0.981058, 5.398419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.419231, 1.248077, 5.111794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382994, 0.727337, 0.569470,
		0.901333, -0.159251, -0.402789,
		-0.202274, 0.667548, -0.716565,
		3.358549, 1.448342, 4.896824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.075277, 1.343949, 5.359604>,  <3.500141, 0.981058, 5.398419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.075277, 1.343949, 5.359604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.770641, 1.572952, 5.238136>,  <3.587860, 1.710354, 5.165256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.770641, 1.572952, 5.238136>,  <4.075277, 1.343949, 5.359604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.770641, 1.572952, 5.238136> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332449, 0.747371, 0.575252,
		0.556291, 0.337151, -0.759520,
		-0.761589, 0.572509, -0.303670,
		3.542165, 1.744705, 5.147035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<3.574993, 3.022309, 6.677812> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.398560, 3.133759, 6.336563>,  <3.292700, 3.200628, 6.131814>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.398560, 3.133759, 6.336563>,  <3.574993, 3.022309, 6.677812>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.398560, 3.133759, 6.336563> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280154, -0.860340, -0.425827,
		-0.852619, -0.426830, 0.301426,
		-0.441084, 0.278622, -0.853121,
		3.266235, 3.217345, 6.080627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.418625, 2.361856, 6.308950>,  <3.574993, 3.022309, 6.677812>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.418625, 2.361856, 6.308950> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.420624, 2.664642, 6.047577>,  <3.421823, 2.846314, 5.890753>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.420624, 2.664642, 6.047577>,  <3.418625, 2.361856, 6.308950>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.420624, 2.664642, 6.047577> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276498, -0.629012, -0.726562,
		-0.961002, -0.177043, -0.212442,
		0.004996, 0.756967, -0.653434,
		3.422122, 2.891732, 5.851547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.998266, 2.075303, 5.776056>,  <3.418625, 2.361856, 6.308950>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.998266, 2.075303, 5.776056> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.203487, 2.386993, 5.632065>,  <3.326620, 2.574008, 5.545670>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.203487, 2.386993, 5.632065>,  <2.998266, 2.075303, 5.776056>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.203487, 2.386993, 5.632065> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214929, -0.522644, -0.825015,
		-0.831012, 0.345907, -0.435622,
		0.513054, 0.779225, -0.359978,
		3.357404, 2.620761, 5.524071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.649033, 2.257759, 5.173470>,  <2.998266, 2.075303, 5.776056>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.649033, 2.257759, 5.173470> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.043619, 2.320663, 5.192047>,  <3.280371, 2.358406, 5.203194>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.043619, 2.320663, 5.192047>,  <2.649033, 2.257759, 5.173470>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.043619, 2.320663, 5.192047> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139277, -0.654088, -0.743485,
		-0.086543, 0.739890, -0.667137,
		0.986464, 0.157260, 0.046443,
		3.339559, 2.367841, 5.205980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.754816, 2.555403, 4.553404>,  <2.649033, 2.257759, 5.173470>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.754816, 2.555403, 4.553404> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.019344, 2.318054, 4.736954>,  <3.178061, 2.175645, 4.847084>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.019344, 2.318054, 4.736954>,  <2.754816, 2.555403, 4.553404>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.019344, 2.318054, 4.736954> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132384, -0.509818, -0.850035,
		0.738329, 0.622894, -0.258600,
		0.661321, -0.593371, 0.458875,
		3.217741, 2.140043, 4.874616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.182279, 2.374610, 3.975699>,  <2.754816, 2.555403, 4.553404>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.182279, 2.374610, 3.975699> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.236500, 2.095993, 4.257538>,  <3.269032, 1.928823, 4.426641>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.236500, 2.095993, 4.257538>,  <3.182279, 2.374610, 3.975699>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.236500, 2.095993, 4.257538> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020750, -0.709008, -0.704895,
		0.990553, 0.110170, -0.081654,
		0.135551, -0.696542, 0.704596,
		3.277165, 1.887030, 4.468916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.638716, 1.973703, 3.643250>,  <3.182279, 2.374610, 3.975699>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.638716, 1.973703, 3.643250> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.505638, 1.741730, 3.940704>,  <3.425792, 1.602546, 4.119177>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.505638, 1.741730, 3.940704>,  <3.638716, 1.973703, 3.643250>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.505638, 1.741730, 3.940704> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149360, -0.746197, -0.648753,
		0.931132, -0.326906, 0.161636,
		-0.332694, -0.579933, 0.743635,
		3.405830, 1.567750, 4.163795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.919548, 1.356121, 3.621832>,  <3.638716, 1.973703, 3.643250>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.919548, 1.356121, 3.621832> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.587208, 1.270859, 3.827454>,  <3.387804, 1.219701, 3.950827>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.587208, 1.270859, 3.827454>,  <3.919548, 1.356121, 3.621832>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.587208, 1.270859, 3.827454> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299956, -0.606528, -0.736309,
		0.468737, -0.765956, 0.439996,
		-0.830850, -0.213156, 0.514055,
		3.337953, 1.206912, 3.981670>
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
