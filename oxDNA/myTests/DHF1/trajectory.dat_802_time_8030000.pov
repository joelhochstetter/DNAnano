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
	<2.820170, 2.236959, 0.992134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.824291, 2.635582, 1.025034>,  <2.826764, 2.874756, 1.044774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.824291, 2.635582, 1.025034>,  <2.820170, 2.236959, 0.992134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.824291, 2.635582, 1.025034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.909428, -0.043536, 0.413577,
		0.415735, 0.070540, -0.906746,
		0.010302, 0.996558, 0.082251,
		2.827382, 2.934550, 1.049709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.421794, 2.668278, 0.603992>,  <2.820170, 2.236959, 0.992134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.421794, 2.668278, 0.603992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.319248, 2.813255, 0.962414>,  <3.257720, 2.900242, 1.177467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.319248, 2.813255, 0.962414>,  <3.421794, 2.668278, 0.603992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.319248, 2.813255, 0.962414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.941645, -0.115556, 0.316151,
		0.218132, 0.924814, -0.311668,
		-0.256366, 0.362443, 0.896053,
		3.242338, 2.921988, 1.231230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.737982, 3.385206, 0.824765>,  <3.421794, 2.668278, 0.603992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.737982, 3.385206, 0.824765> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.664619, 3.112747, 1.108286>,  <3.620602, 2.949272, 1.278399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.664619, 3.112747, 1.108286>,  <3.737982, 3.385206, 0.824765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.664619, 3.112747, 1.108286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.978247, -0.197555, 0.063279,
		0.096925, 0.704991, 0.702562,
		-0.183406, -0.681146, 0.708803,
		3.609598, 2.908403, 1.320927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.024728, 3.601757, 1.445799>,  <3.737982, 3.385206, 0.824765>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.024728, 3.601757, 1.445799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.985378, 3.206085, 1.402260>,  <3.961768, 2.968682, 1.376136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.985378, 3.206085, 1.402260>,  <4.024728, 3.601757, 1.445799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.985378, 3.206085, 1.402260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.989925, -0.108464, 0.091015,
		-0.101836, -0.098797, 0.989883,
		-0.098374, -0.989179, -0.108848,
		3.955866, 2.909332, 1.369606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.463289, 3.276482, 1.957871>,  <4.024728, 3.601757, 1.445799>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.463289, 3.276482, 1.957871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.394058, 3.007477, 1.670046>,  <4.352520, 2.846074, 1.497351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.394058, 3.007477, 1.670046>,  <4.463289, 3.276482, 1.957871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.394058, 3.007477, 1.670046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.975259, -0.219037, -0.029866,
		-0.137526, -0.706930, 0.693784,
		-0.173078, -0.672512, -0.719563,
		4.342135, 2.805723, 1.454177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.719449, 2.655711, 2.196825>,  <4.463289, 3.276482, 1.957871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.719449, 2.655711, 2.196825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.716137, 2.642418, 1.797060>,  <4.714150, 2.634442, 1.557201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.716137, 2.642418, 1.797060>,  <4.719449, 2.655711, 2.196825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.716137, 2.642418, 1.797060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.994806, -0.101674, -0.004860,
		-0.101453, -0.994263, 0.033901,
		-0.008279, -0.033232, -0.999413,
		4.713654, 2.632448, 1.497236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.266368, 2.270742, 2.048551>,  <4.719449, 2.655711, 2.196825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.266368, 2.270742, 2.048551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.196508, 2.437866, 1.691916>,  <5.154593, 2.538141, 1.477934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.196508, 2.437866, 1.691916>,  <5.266368, 2.270742, 2.048551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.196508, 2.437866, 1.691916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.979235, -0.020962, -0.201641,
		-0.102937, -0.908292, -0.405475,
		-0.174649, 0.417811, -0.891589,
		5.144114, 2.563210, 1.424439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.580912, 1.832319, 1.550931>,  <5.266368, 2.270742, 2.048551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.580912, 1.832319, 1.550931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.568266, 2.215118, 1.435587>,  <5.560678, 2.444798, 1.366380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.568266, 2.215118, 1.435587>,  <5.580912, 1.832319, 1.550931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.568266, 2.215118, 1.435587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.995746, 0.005176, -0.091991,
		-0.086543, -0.290043, -0.953093,
		-0.031615, 0.957000, -0.288361,
		5.558782, 2.502218, 1.349079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<1.706047, 2.771146, 1.594449> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.649590, 3.015160, 1.282568>,  <1.615715, 3.161568, 1.095439>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.649590, 3.015160, 1.282568>,  <1.706047, 2.771146, 1.594449>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.649590, 3.015160, 1.282568> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.979088, -0.202574, 0.018743,
		-0.146514, 0.766042, 0.625870,
		-0.141143, 0.610035, -0.779702,
		1.607247, 3.198170, 1.048657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.192710, 3.309550, 1.825636>,  <1.706047, 2.771146, 1.594449>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.192710, 3.309550, 1.825636> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.218849, 3.225754, 1.435387>,  <1.234533, 3.175476, 1.201237>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.218849, 3.225754, 1.435387>,  <1.192710, 3.309550, 1.825636>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.218849, 3.225754, 1.435387> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.993792, -0.101885, -0.044689,
		-0.090040, 0.972488, -0.214849,
		0.065349, -0.209491, -0.975624,
		1.238454, 3.162906, 1.142699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.758184, 3.775652, 1.352321>,  <1.192710, 3.309550, 1.825636>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.758184, 3.775652, 1.352321> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.790512, 3.409492, 1.194580>,  <0.809909, 3.189797, 1.099936>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.790512, 3.409492, 1.194580>,  <0.758184, 3.775652, 1.352321>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.790512, 3.409492, 1.194580> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.977015, -0.151058, 0.150413,
		-0.197258, 0.373131, -0.906567,
		0.080820, -0.915399, -0.394351,
		0.814758, 3.134873, 1.076275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.353815, 3.732108, 0.683147>,  <0.758184, 3.775652, 1.352321>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.353815, 3.732108, 0.683147> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.389290, 3.377182, 0.864170>,  <0.410575, 3.164227, 0.972784>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.389290, 3.377182, 0.864170>,  <0.353815, 3.732108, 0.683147>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.389290, 3.377182, 0.864170> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.979950, -0.159113, -0.119925,
		0.178419, -0.432848, -0.883634,
		0.088688, -0.887314, 0.452558,
		0.415896, 3.110988, 0.999937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.071712, 3.226822, 0.325291>,  <0.353815, 3.732108, 0.683147>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.071712, 3.226822, 0.325291> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.000771, 3.011826, 0.655054>,  <0.041794, 2.882828, 0.852912>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.000771, 3.011826, 0.655054>,  <-0.071712, 3.226822, 0.325291>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.000771, 3.011826, 0.655054> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.943450, -0.331261, -0.013009,
		0.280086, -0.775481, -0.565846,
		0.177354, -0.537491, 0.824409,
		0.052436, 2.850578, 0.902377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.284475, 2.505697, 0.207116>,  <-0.071712, 3.226822, 0.325291>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.284475, 2.505697, 0.207116> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.297951, 2.559731, 0.603220>,  <-0.306036, 2.592151, 0.840883>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.297951, 2.559731, 0.603220>,  <-0.284475, 2.505697, 0.207116>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.297951, 2.559731, 0.603220> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.925497, -0.378222, 0.020109,
		0.377254, -0.915806, 0.137762,
		-0.033689, 0.135084, 0.990261,
		-0.308057, 2.600256, 0.900298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.710240, 1.965548, 0.402830>,  <-0.284475, 2.505697, 0.207116>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.710240, 1.965548, 0.402830> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.681488, 2.205742, 0.721390>,  <-0.664237, 2.349858, 0.912525>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.681488, 2.205742, 0.721390>,  <-0.710240, 1.965548, 0.402830>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.681488, 2.205742, 0.721390> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.951073, -0.199289, 0.236104,
		0.300490, -0.774404, 0.556780,
		0.071880, 0.600485, 0.796399,
		-0.659924, 2.385887, 0.960309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.899480, 1.597844, 1.051642>,  <-0.710240, 1.965548, 0.402830>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.899480, 1.597844, 1.051642> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.985054, 1.987419, 1.081778>,  <-1.036399, 2.221164, 1.099859>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.985054, 1.987419, 1.081778>,  <-0.899480, 1.597844, 1.051642>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.985054, 1.987419, 1.081778> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.974743, -0.217899, 0.048941,
		0.064082, -0.062967, 0.995956,
		-0.213936, 0.973938, 0.075340,
		-1.049235, 2.279601, 1.104379>
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
