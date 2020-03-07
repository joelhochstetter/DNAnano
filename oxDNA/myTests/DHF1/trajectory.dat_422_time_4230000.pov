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
	<3.311468, 0.135170, 5.878951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.231033, 0.524094, 5.926579>,  <3.182772, 0.757448, 5.955155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.231033, 0.524094, 5.926579>,  <3.311468, 0.135170, 5.878951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.231033, 0.524094, 5.926579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023771, 0.116673, -0.992886,
		-0.979285, -0.202486, -0.000349,
		-0.201087, 0.972310, 0.119070,
		3.170707, 0.815787, 5.962299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.832821, 0.297205, 5.364436>,  <3.311468, 0.135170, 5.878951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.832821, 0.297205, 5.364436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.038708, 0.621330, 5.476479>,  <3.162240, 0.815805, 5.543704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.038708, 0.621330, 5.476479>,  <2.832821, 0.297205, 5.364436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.038708, 0.621330, 5.476479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286962, 0.145040, -0.946898,
		-0.807911, 0.567764, -0.157875,
		0.514716, 0.810313, 0.280106,
		3.193123, 0.864424, 5.560511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.659483, 0.899773, 4.981552>,  <2.832821, 0.297205, 5.364436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.659483, 0.899773, 4.981552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.046299, 0.907764, 5.083088>,  <3.278389, 0.912559, 5.144010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.046299, 0.907764, 5.083088>,  <2.659483, 0.899773, 4.981552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.046299, 0.907764, 5.083088> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242153, 0.236023, -0.941093,
		-0.078714, 0.971542, 0.223406,
		0.967040, 0.019979, 0.253840,
		3.336411, 0.913758, 5.159240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.141239, 1.533012, 4.776737>,  <2.659483, 0.899773, 4.981552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.141239, 1.533012, 4.776737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.409050, 1.235897, 4.776638>,  <3.569737, 1.057628, 4.776578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.409050, 1.235897, 4.776638>,  <3.141239, 1.533012, 4.776737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.409050, 1.235897, 4.776638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473890, 0.427409, -0.769903,
		0.571979, 0.515354, 0.638161,
		0.669528, -0.742787, -0.000248,
		3.609908, 1.013061, 4.776564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.832659, 1.825157, 4.679473>,  <3.141239, 1.533012, 4.776737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.832659, 1.825157, 4.679473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.897243, 1.449635, 4.557770>,  <3.935994, 1.224321, 4.484748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.897243, 1.449635, 4.557770>,  <3.832659, 1.825157, 4.679473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.897243, 1.449635, 4.557770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.645352, 0.333689, -0.687148,
		0.746626, -0.085406, 0.659739,
		0.161461, -0.938807, -0.304258,
		3.945682, 1.167993, 4.466493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.682186, 1.531333, 4.746323>,  <3.832659, 1.825157, 4.679473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.682186, 1.531333, 4.746323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.467175, 1.333797, 4.472919>,  <4.338168, 1.215276, 4.308877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.467175, 1.333797, 4.472919>,  <4.682186, 1.531333, 4.746323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.467175, 1.333797, 4.472919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.665420, 0.249472, -0.703548,
		0.517956, -0.832999, 0.194511,
		-0.537530, -0.493839, -0.683510,
		4.305916, 1.185646, 4.267867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.173798, 1.101078, 4.361353>,  <4.682186, 1.531333, 4.746323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.173798, 1.101078, 4.361353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.852516, 1.114513, 4.123451>,  <4.659747, 1.122575, 3.980710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.852516, 1.114513, 4.123451>,  <5.173798, 1.101078, 4.361353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.852516, 1.114513, 4.123451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562352, 0.372133, -0.738429,
		0.196525, -0.927572, -0.317788,
		-0.803205, 0.033589, -0.594755,
		4.611555, 1.124590, 3.945025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.448575, 0.748178, 3.817621>,  <5.173798, 1.101078, 4.361353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.448575, 0.748178, 3.817621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.128532, 0.957672, 3.700638>,  <4.936507, 1.083369, 3.630448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.128532, 0.957672, 3.700638>,  <5.448575, 0.748178, 3.817621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.128532, 0.957672, 3.700638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485835, 0.279813, -0.828051,
		-0.351846, -0.804615, -0.478329,
		-0.800105, 0.523735, -0.292459,
		4.888501, 1.114793, 3.612900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<5.796876, 1.736699, 3.340090> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.506025, 1.820457, 3.078575>,  <5.331514, 1.870712, 2.921666>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.506025, 1.820457, 3.078575>,  <5.796876, 1.736699, 3.340090>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.506025, 1.820457, 3.078575> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.654108, -0.500412, 0.567213,
		-0.208392, 0.840084, 0.500831,
		-0.727128, 0.209395, -0.653787,
		5.287887, 1.883276, 2.882439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.144815, 2.088549, 3.565287>,  <5.796876, 1.736699, 3.340090>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.144815, 2.088549, 3.565287> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.038034, 1.881500, 3.240128>,  <4.973966, 1.757271, 3.045032>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.038034, 1.881500, 3.240128>,  <5.144815, 2.088549, 3.565287>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.038034, 1.881500, 3.240128> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.659727, -0.516717, 0.545676,
		-0.702493, 0.681961, -0.203551,
		-0.266951, -0.517622, -0.812899,
		4.957949, 1.726214, 2.996258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.379825, 2.221825, 3.400759>,  <5.144815, 2.088549, 3.565287>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.379825, 2.221825, 3.400759> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.521123, 1.867760, 3.279629>,  <4.605902, 1.655321, 3.206950>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.521123, 1.867760, 3.279629>,  <4.379825, 2.221825, 3.400759>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.521123, 1.867760, 3.279629> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.605448, -0.463069, 0.647303,
		-0.713198, -0.045310, -0.699496,
		0.353244, -0.885164, -0.302827,
		4.627096, 1.602211, 3.188781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.796284, 1.746424, 3.186840>,  <4.379825, 2.221825, 3.400759>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.796284, 1.746424, 3.186840> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.123240, 1.544678, 3.298187>,  <4.319414, 1.423630, 3.364995>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.123240, 1.544678, 3.298187>,  <3.796284, 1.746424, 3.186840>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.123240, 1.544678, 3.298187> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.550792, -0.542606, 0.634197,
		-0.168823, -0.671709, -0.721322,
		0.817390, -0.504366, 0.278368,
		4.368457, 1.393368, 3.381698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.555390, 1.039494, 3.240513>,  <3.796284, 1.746424, 3.186840>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.555390, 1.039494, 3.240513> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.885362, 1.076797, 3.463509>,  <4.083345, 1.099179, 3.597306>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.885362, 1.076797, 3.463509>,  <3.555390, 1.039494, 3.240513>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.885362, 1.076797, 3.463509> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483239, -0.395265, 0.781182,
		0.293207, -0.913821, -0.281000,
		0.824930, 0.093258, 0.557489,
		4.132841, 1.104775, 3.630755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.666369, 0.451061, 3.433321>,  <3.555390, 1.039494, 3.240513>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.666369, 0.451061, 3.433321> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.866144, 0.677376, 3.695755>,  <3.986009, 0.813165, 3.853215>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.866144, 0.677376, 3.695755>,  <3.666369, 0.451061, 3.433321>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.866144, 0.677376, 3.695755> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410694, -0.512179, 0.754323,
		0.762819, -0.646187, -0.023436,
		0.499437, 0.565787, 0.656085,
		4.015975, 0.847112, 3.892581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.952222, -0.009035, 3.994603>,  <3.666369, 0.451061, 3.433321>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.952222, -0.009035, 3.994603> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.969192, 0.360031, 4.147907>,  <3.979373, 0.581471, 4.239890>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.969192, 0.360031, 4.147907>,  <3.952222, -0.009035, 3.994603>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.969192, 0.360031, 4.147907> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291253, -0.355523, 0.888130,
		0.955705, -0.149303, 0.253647,
		0.042423, 0.922666, 0.383260,
		3.981918, 0.636831, 4.262885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.404683, -0.027932, 4.615734>,  <3.952222, -0.009035, 3.994603>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.404683, -0.027932, 4.615734> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.137511, 0.266357, 4.660603>,  <3.977208, 0.442931, 4.687524>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.137511, 0.266357, 4.660603>,  <4.404683, -0.027932, 4.615734>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.137511, 0.266357, 4.660603> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224406, -0.342808, 0.912209,
		0.709586, 0.584119, 0.394072,
		-0.667930, 0.735722, 0.112172,
		3.937132, 0.487074, 4.694254>
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
