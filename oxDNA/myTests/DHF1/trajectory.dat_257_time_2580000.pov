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
	<2.492310, 0.440819, 1.213871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.265614, 0.360184, 1.533413>,  <2.129596, 0.311803, 1.725138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.265614, 0.360184, 1.533413>,  <2.492310, 0.440819, 1.213871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.265614, 0.360184, 1.533413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504138, 0.682047, 0.529770,
		-0.651651, 0.702975, -0.284916,
		-0.566741, -0.201588, 0.798854,
		2.095591, 0.299707, 1.773069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.161192, 1.131463, 1.395841>,  <2.492310, 0.440819, 1.213871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.161192, 1.131463, 1.395841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.146015, 0.881973, 1.708130>,  <2.136909, 0.732279, 1.895503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.146015, 0.881973, 1.708130>,  <2.161192, 1.131463, 1.395841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.146015, 0.881973, 1.708130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358860, 0.720663, 0.593182,
		-0.932620, 0.302677, 0.196486,
		-0.037943, -0.623724, 0.780723,
		2.134632, 0.694856, 1.942347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.621466, 1.210332, 1.972069>,  <2.161192, 1.131463, 1.395841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.621466, 1.210332, 1.972069> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.975025, 1.066696, 2.091923>,  <2.187160, 0.980515, 2.163835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.975025, 1.066696, 2.091923>,  <1.621466, 1.210332, 1.972069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.975025, 1.066696, 2.091923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182793, 0.854972, 0.485397,
		-0.430480, -0.374270, 0.821346,
		0.883897, -0.359090, 0.299635,
		2.240194, 0.958969, 2.181813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.680313, 1.312949, 2.702573>,  <1.621466, 1.210332, 1.972069>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.680313, 1.312949, 2.702573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.056797, 1.271072, 2.574097>,  <2.282687, 1.245946, 2.497011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.056797, 1.271072, 2.574097>,  <1.680313, 1.312949, 2.702573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.056797, 1.271072, 2.574097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278215, 0.779528, 0.561188,
		0.191624, -0.617556, 0.762827,
		0.941210, -0.104693, -0.321190,
		2.339160, 1.239665, 2.477740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.222215, 1.290801, 3.379102>,  <1.680313, 1.312949, 2.702573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.222215, 1.290801, 3.379102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.388973, 1.418594, 3.038719>,  <2.489028, 1.495270, 2.834489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.388973, 1.418594, 3.038719>,  <2.222215, 1.290801, 3.379102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.388973, 1.418594, 3.038719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355421, 0.804358, 0.476113,
		0.836586, -0.500937, 0.221781,
		0.416894, 0.319484, -0.850958,
		2.514042, 1.514439, 2.783432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.863010, 1.637529, 3.611762>,  <2.222215, 1.290801, 3.379102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.863010, 1.637529, 3.611762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.722515, 1.785278, 3.267624>,  <2.638218, 1.873928, 3.061141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.722515, 1.785278, 3.267624>,  <2.863010, 1.637529, 3.611762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.722515, 1.785278, 3.267624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169008, 0.928810, 0.329770,
		0.920906, -0.029577, -0.388661,
		-0.351238, 0.369374, -0.860346,
		2.617144, 1.896091, 3.009520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.389483, 2.046156, 3.383983>,  <2.863010, 1.637529, 3.611762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.389483, 2.046156, 3.383983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.064457, 2.175560, 3.190044>,  <2.869441, 2.253203, 3.073681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.064457, 2.175560, 3.190044>,  <3.389483, 2.046156, 3.383983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.064457, 2.175560, 3.190044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243042, 0.944120, 0.222639,
		0.529780, 0.063071, -0.845787,
		-0.812566, 0.323511, -0.484847,
		2.820687, 2.272613, 3.044590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.635973, 2.659964, 3.068914>,  <3.389483, 2.046156, 3.383983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.635973, 2.659964, 3.068914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.237576, 2.694458, 3.059444>,  <2.998537, 2.715154, 3.053763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.237576, 2.694458, 3.059444>,  <3.635973, 2.659964, 3.068914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.237576, 2.694458, 3.059444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080767, 0.981110, 0.175786,
		0.038385, 0.173170, -0.984144,
		-0.995994, 0.086234, -0.023673,
		2.938777, 2.720328, 3.052342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<3.025700, 4.368556, 3.355099> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.694281, 4.323090, 3.574402>,  <2.495429, 4.295809, 3.705984>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.694281, 4.323090, 3.574402>,  <3.025700, 4.368556, 3.355099>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.694281, 4.323090, 3.574402> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117166, -0.992696, -0.028743,
		0.547521, 0.040422, 0.835815,
		-0.828549, -0.113667, 0.548258,
		2.445716, 4.288990, 3.738879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.199330, 3.796156, 3.802268>,  <3.025700, 4.368556, 3.355099>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.199330, 3.796156, 3.802268> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.809847, 3.842468, 3.723793>,  <2.576157, 3.870256, 3.676708>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.809847, 3.842468, 3.723793>,  <3.199330, 3.796156, 3.802268>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.809847, 3.842468, 3.723793> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013009, -0.888066, -0.459532,
		-0.227432, -0.444897, 0.866222,
		-0.973707, 0.115781, -0.196187,
		2.517735, 3.877203, 3.664937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.715760, 3.301155, 4.091143>,  <3.199330, 3.796156, 3.802268>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.715760, 3.301155, 4.091143> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.549076, 3.421066, 3.747868>,  <2.449066, 3.493013, 3.541903>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.549076, 3.421066, 3.747868>,  <2.715760, 3.301155, 4.091143>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.549076, 3.421066, 3.747868> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003809, -0.944627, -0.328124,
		-0.909031, -0.133464, 0.394778,
		-0.416711, 0.299779, -0.858187,
		2.424063, 3.511000, 3.490411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.207545, 2.801199, 3.932409>,  <2.715760, 3.301155, 4.091143>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.207545, 2.801199, 3.932409> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.338726, 2.965622, 3.592178>,  <2.417434, 3.064276, 3.388040>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.338726, 2.965622, 3.592178>,  <2.207545, 2.801199, 3.932409>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.338726, 2.965622, 3.592178> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013225, -0.902281, -0.430946,
		-0.944602, 0.130081, -0.301341,
		0.327952, 0.411058, -0.850575,
		2.437112, 3.088939, 3.337006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.669460, 2.694364, 3.238731>,  <2.207545, 2.801199, 3.932409>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.669460, 2.694364, 3.238731> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.062210, 2.721786, 3.168053>,  <2.297860, 2.738240, 3.125646>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.062210, 2.721786, 3.168053>,  <1.669460, 2.694364, 3.238731>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.062210, 2.721786, 3.168053> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041407, -0.832171, -0.552971,
		-0.184951, 0.550265, -0.814249,
		0.981875, 0.068557, -0.176695,
		2.356773, 2.742354, 3.115044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.778202, 2.711253, 2.492747>,  <1.669460, 2.694364, 3.238731>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.778202, 2.711253, 2.492747> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.080589, 2.565643, 2.710369>,  <2.262022, 2.478277, 2.840943>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.080589, 2.565643, 2.710369>,  <1.778202, 2.711253, 2.492747>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.080589, 2.565643, 2.710369> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026322, -0.813542, -0.580911,
		0.654079, 0.453471, -0.605430,
		0.755969, -0.364025, 0.544056,
		2.307380, 2.456436, 2.873586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.167377, 2.453140, 1.972587>,  <1.778202, 2.711253, 2.492747>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.167377, 2.453140, 1.972587> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.277849, 2.261063, 2.305607>,  <2.344133, 2.145816, 2.505419>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.277849, 2.261063, 2.305607>,  <2.167377, 2.453140, 1.972587>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.277849, 2.261063, 2.305607> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100847, -0.875937, -0.471766,
		0.955800, 0.046333, -0.290344,
		0.276182, -0.480195, 0.832548,
		2.360704, 2.117004, 2.555371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.467485, 1.876409, 1.629382>,  <2.167377, 2.453140, 1.972587>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.467485, 1.876409, 1.629382> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.389940, 1.809708, 2.016083>,  <2.343413, 1.769687, 2.248103>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.389940, 1.809708, 2.016083>,  <2.467485, 1.876409, 1.629382>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.389940, 1.809708, 2.016083> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188305, -0.960799, -0.203487,
		0.962787, -0.221493, 0.154862,
		-0.193862, -0.166753, 0.966752,
		2.331782, 1.759682, 2.306108>
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
