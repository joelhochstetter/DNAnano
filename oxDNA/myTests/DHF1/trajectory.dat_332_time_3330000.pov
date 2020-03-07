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
	<2.236928, 0.963052, 0.187495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.028130, 0.838821, 0.505253>,  <1.902851, 0.764283, 0.695908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.028130, 0.838821, 0.505253>,  <2.236928, 0.963052, 0.187495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.028130, 0.838821, 0.505253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211207, 0.855282, 0.473164,
		-0.826386, 0.414771, -0.380857,
		-0.521995, -0.310576, 0.794395,
		1.871531, 0.745649, 0.743571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.726614, 1.376419, 0.426058>,  <2.236928, 0.963052, 0.187495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.726614, 1.376419, 0.426058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.913391, 1.170105, 0.713371>,  <2.025457, 1.046317, 0.885759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.913391, 1.170105, 0.713371>,  <1.726614, 1.376419, 0.426058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.913391, 1.170105, 0.713371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445522, 0.838867, 0.312748,
		-0.763856, 0.173976, 0.621495,
		0.466942, -0.515785, 0.718284,
		2.053474, 1.015370, 0.928856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.573251, 1.605425, 1.193731>,  <1.726614, 1.376419, 0.426058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.573251, 1.605425, 1.193731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.931400, 1.458832, 1.092541>,  <2.146290, 1.370876, 1.031827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.931400, 1.458832, 1.092541>,  <1.573251, 1.605425, 1.193731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.931400, 1.458832, 1.092541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431599, 0.854080, 0.290292,
		0.109673, -0.369104, 0.922894,
		0.895374, -0.366483, -0.252975,
		2.200012, 1.348887, 1.016648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.109993, 1.592614, 1.764313>,  <1.573251, 1.605425, 1.193731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.109993, 1.592614, 1.764313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.236050, 1.654572, 1.389786>,  <2.311684, 1.691746, 1.165069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.236050, 1.654572, 1.389786>,  <2.109993, 1.592614, 1.764313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.236050, 1.654572, 1.389786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322605, 0.910358, 0.259180,
		0.892530, -0.383741, 0.236925,
		0.315144, 0.154893, -0.936318,
		2.330592, 1.701040, 1.108890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.759535, 1.750421, 1.772310>,  <2.109993, 1.592614, 1.764313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.759535, 1.750421, 1.772310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.635330, 1.937294, 1.441174>,  <2.560807, 2.049417, 1.242491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.635330, 1.937294, 1.441174>,  <2.759535, 1.750421, 1.772310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.635330, 1.937294, 1.441174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522662, 0.811340, 0.261825,
		0.793981, -0.351382, -0.496110,
		-0.310513, 0.467182, -0.827842,
		2.542176, 2.077448, 1.192821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.372338, 2.094510, 1.510279>,  <2.759535, 1.750421, 1.772310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.372338, 2.094510, 1.510279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.075970, 2.294983, 1.331459>,  <2.898149, 2.415267, 1.224167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.075970, 2.294983, 1.331459>,  <3.372338, 2.094510, 1.510279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.075970, 2.294983, 1.331459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439340, 0.865169, 0.241790,
		0.507955, -0.017259, -0.861211,
		-0.740920, 0.501183, -0.447050,
		2.853694, 2.445338, 1.197344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.682618, 2.462429, 0.945511>,  <3.372338, 2.094510, 1.510279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.682618, 2.462429, 0.945511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.348846, 2.677299, 0.994778>,  <3.148583, 2.806222, 1.024338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.348846, 2.677299, 0.994778>,  <3.682618, 2.462429, 0.945511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.348846, 2.677299, 0.994778> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547543, 0.833457, 0.074470,
		-0.062651, 0.129579, -0.989588,
		-0.834429, 0.537176, 0.123166,
		3.098518, 2.838452, 1.031728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.753124, 3.080227, 0.563992>,  <3.682618, 2.462429, 0.945511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.753124, 3.080227, 0.563992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.447945, 3.176147, 0.804127>,  <3.264837, 3.233700, 0.948207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.447945, 3.176147, 0.804127>,  <3.753124, 3.080227, 0.563992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.447945, 3.176147, 0.804127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402727, 0.902743, 0.151216,
		-0.505687, 0.357142, -0.785322,
		-0.762950, 0.239802, 0.600336,
		3.219060, 3.248088, 0.984227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<4.403974, 4.240842, 1.213285> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.148676, 4.303528, 1.514771>,  <3.995497, 4.341139, 1.695662>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.148676, 4.303528, 1.514771>,  <4.403974, 4.240842, 1.213285>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.148676, 4.303528, 1.514771> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.733345, -0.421621, -0.533331,
		0.234202, -0.893128, 0.384022,
		-0.638244, 0.156713, 0.753715,
		3.957203, 4.350542, 1.740885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.096413, 3.617608, 1.466782>,  <4.403974, 4.240842, 1.213285>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.096413, 3.617608, 1.466782> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.845341, 3.925064, 1.516113>,  <3.694697, 4.109538, 1.545712>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.845341, 3.925064, 1.516113>,  <4.096413, 3.617608, 1.466782>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.845341, 3.925064, 1.516113> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.733199, -0.530475, -0.425459,
		-0.261602, -0.357477, 0.896535,
		-0.627681, 0.768639, 0.123329,
		3.657036, 4.155656, 1.553112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.556510, 3.382809, 1.994388>,  <4.096413, 3.617608, 1.466782>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.556510, 3.382809, 1.994388> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.406960, 3.656464, 1.743893>,  <3.317229, 3.820656, 1.593596>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.406960, 3.656464, 1.743893>,  <3.556510, 3.382809, 1.994388>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.406960, 3.656464, 1.743893> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.675221, -0.663667, -0.321905,
		-0.635839, 0.302494, 0.710075,
		-0.373879, 0.684137, -0.626236,
		3.294796, 3.861705, 1.556021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.939810, 3.567027, 2.094651>,  <3.556510, 3.382809, 1.994388>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.939810, 3.567027, 2.094651> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.002529, 3.619034, 1.703037>,  <3.040161, 3.650238, 1.468069>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.002529, 3.619034, 1.703037>,  <2.939810, 3.567027, 2.094651>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.002529, 3.619034, 1.703037> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.520891, -0.831327, -0.193824,
		-0.839099, 0.540361, -0.062627,
		0.156798, 0.130016, -0.979035,
		3.049569, 3.658039, 1.409327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.269471, 3.623563, 1.763663>,  <2.939810, 3.567027, 2.094651>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.269471, 3.623563, 1.763663> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.562450, 3.495789, 1.523170>,  <2.738238, 3.419124, 1.378875>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.562450, 3.495789, 1.523170>,  <2.269471, 3.623563, 1.763663>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.562450, 3.495789, 1.523170> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.539725, -0.810721, -0.226778,
		-0.414990, 0.490603, -0.766219,
		0.732448, -0.319437, -0.601232,
		2.782185, 3.399957, 1.342801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.903642, 3.380584, 1.230567>,  <2.269471, 3.623563, 1.763663>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.903642, 3.380584, 1.230567> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.266457, 3.218216, 1.185822>,  <2.484146, 3.120795, 1.158974>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.266457, 3.218216, 1.185822>,  <1.903642, 3.380584, 1.230567>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.266457, 3.218216, 1.185822> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419372, -0.847258, -0.326007,
		0.037555, 0.342614, -0.938725,
		0.907037, -0.405919, -0.111864,
		2.538568, 3.096440, 1.152262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.952305, 3.078505, 0.549928>,  <1.903642, 3.380584, 1.230567>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.952305, 3.078505, 0.549928> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.224083, 2.874527, 0.760948>,  <2.387150, 2.752140, 0.887561>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.224083, 2.874527, 0.760948>,  <1.952305, 3.078505, 0.549928>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.224083, 2.874527, 0.760948> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424682, -0.859645, -0.283999,
		0.598331, -0.031080, -0.800646,
		0.679445, -0.509945, 0.527552,
		2.427917, 2.721544, 0.919214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.337579, 2.652400, 0.052444>,  <1.952305, 3.078505, 0.549928>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.337579, 2.652400, 0.052444> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.360899, 2.461884, 0.403385>,  <2.374891, 2.347574, 0.613950>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.360899, 2.461884, 0.403385>,  <2.337579, 2.652400, 0.052444>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.360899, 2.461884, 0.403385> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233663, -0.860946, -0.451856,
		0.970568, -0.178661, -0.161485,
		0.058300, -0.476290, 0.877353,
		2.378389, 2.318996, 0.666591>
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
