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
	<5.140538, 3.330773, 3.019246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.334488, 3.032059, 2.837166>,  <5.450858, 2.852830, 2.727918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.334488, 3.032059, 2.837166>,  <5.140538, 3.330773, 3.019246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.334488, 3.032059, 2.837166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.738540, -0.070833, -0.670478,
		0.468461, 0.661282, -0.585876,
		0.484874, -0.746786, -0.455201,
		5.479950, 2.808023, 2.700606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.216599, 3.455219, 2.320885>,  <5.140538, 3.330773, 3.019246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.216599, 3.455219, 2.320885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.197540, 3.060745, 2.384346>,  <5.186105, 2.824061, 2.422422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.197540, 3.060745, 2.384346>,  <5.216599, 3.455219, 2.320885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.197540, 3.060745, 2.384346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.822477, -0.051394, -0.566471,
		0.566799, -0.157477, -0.808666,
		-0.047646, -0.986184, 0.158652,
		5.183247, 2.764890, 2.431942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.315339, 3.031397, 1.672447>,  <5.216599, 3.455219, 2.320885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.315339, 3.031397, 1.672447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.054573, 2.866180, 1.926819>,  <4.898114, 2.767050, 2.079442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.054573, 2.866180, 1.926819>,  <5.315339, 3.031397, 1.672447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.054573, 2.866180, 1.926819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.740214, 0.164596, -0.651914,
		0.164596, -0.895715, -0.413042,
		0.651914, 0.413042, -0.635928,
		4.858999, 2.742268, 2.117597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.889166, 2.553628, 1.315511>,  <5.315339, 3.031397, 1.672447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.889166, 2.553628, 1.315511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.663628, 2.663361, 1.627106>,  <4.528305, 2.729200, 1.814062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.663628, 2.663361, 1.627106>,  <4.889166, 2.553628, 1.315511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.663628, 2.663361, 1.627106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.744049, 0.240616, -0.623294,
		-0.358426, -0.931046, 0.068446,
		-0.563846, 0.274331, 0.778987,
		4.494474, 2.745660, 1.860802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.217723, 2.267647, 1.385529>,  <4.889166, 2.553628, 1.315511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.217723, 2.267647, 1.385529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.196640, 2.620544, 1.572662>,  <4.183990, 2.832283, 1.684942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.196640, 2.620544, 1.572662>,  <4.217723, 2.267647, 1.385529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.196640, 2.620544, 1.572662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.840785, 0.213564, -0.497465,
		-0.538798, -0.419567, 0.730521,
		-0.052707, 0.882244, 0.467833,
		4.180828, 2.885218, 1.713012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.506094, 2.415932, 1.735683>,  <4.217723, 2.267647, 1.385529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.506094, 2.415932, 1.735683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.665207, 2.776352, 1.666542>,  <3.760675, 2.992604, 1.625057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.665207, 2.776352, 1.666542>,  <3.506094, 2.415932, 1.735683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.665207, 2.776352, 1.666542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.837374, 0.279559, -0.469735,
		-0.374932, 0.331595, 0.865720,
		0.397782, 0.901050, -0.172853,
		3.784542, 3.046667, 1.614686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.835820, 2.850059, 1.693794>,  <3.506094, 2.415932, 1.735683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.835820, 2.850059, 1.693794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.145447, 3.066040, 1.561569>,  <3.331223, 3.195629, 1.482234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.145447, 3.066040, 1.561569>,  <2.835820, 2.850059, 1.693794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.145447, 3.066040, 1.561569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.623506, 0.559590, -0.545985,
		-0.109827, 0.628737, 0.769823,
		0.774066, 0.539953, -0.330563,
		3.377667, 3.228026, 1.462400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.626752, 3.550538, 1.823922>,  <2.835820, 2.850059, 1.693794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.626752, 3.550538, 1.823922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.908340, 3.523712, 1.541100>,  <3.077293, 3.507617, 1.371406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.908340, 3.523712, 1.541100>,  <2.626752, 3.550538, 1.823922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.908340, 3.523712, 1.541100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.561632, 0.556806, -0.611994,
		0.434736, 0.827931, 0.354310,
		0.703970, -0.067064, -0.707056,
		3.119531, 3.503593, 1.328983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<2.753614, 3.409419, -1.664387> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.056362, 3.562057, -1.452148>,  <3.238011, 3.653641, -1.324805>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.056362, 3.562057, -1.452148>,  <2.753614, 3.409419, -1.664387>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.056362, 3.562057, -1.452148> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.547167, -0.074025, 0.833744,
		0.357430, -0.921360, 0.152769,
		0.756870, 0.381596, 0.530597,
		3.283423, 3.676536, -1.292969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.989007, 2.930982, -1.104750>,  <2.753614, 3.409419, -1.664387>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.989007, 2.930982, -1.104750> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.067741, 3.308762, -0.999474>,  <3.114982, 3.535430, -0.936308>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.067741, 3.308762, -0.999474>,  <2.989007, 2.930982, -1.104750>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.067741, 3.308762, -0.999474> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.653240, -0.073847, 0.753541,
		0.731118, -0.320251, 0.602417,
		0.196836, 0.944450, 0.263191,
		3.126792, 3.592097, -0.920516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.405768, 3.070603, -0.430237>,  <2.989007, 2.930982, -1.104750>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.405768, 3.070603, -0.430237> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.144363, 3.358810, -0.522995>,  <2.987520, 3.531735, -0.578650>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.144363, 3.358810, -0.522995>,  <3.405768, 3.070603, -0.430237>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.144363, 3.358810, -0.522995> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404278, -0.073258, 0.911697,
		0.639906, 0.689556, 0.339165,
		-0.653513, 0.720518, -0.231894,
		2.948310, 3.574966, -0.592563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.391173, 3.041884, 0.380111>,  <3.405768, 3.070603, -0.430237>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.391173, 3.041884, 0.380111> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.288994, 3.386658, 0.555298>,  <3.227686, 3.593522, 0.660410>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.288994, 3.386658, 0.555298>,  <3.391173, 3.041884, 0.380111>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.288994, 3.386658, 0.555298> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528898, -0.254623, 0.809589,
		0.809329, 0.438449, -0.390832,
		-0.255449, 0.861934, 0.437968,
		3.212359, 3.645238, 0.686688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.990873, 3.497606, 0.388496>,  <3.391173, 3.041884, 0.380111>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.990873, 3.497606, 0.388496> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.714474, 3.507095, 0.677483>,  <3.548634, 3.512789, 0.850875>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.714474, 3.507095, 0.677483>,  <3.990873, 3.497606, 0.388496>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.714474, 3.507095, 0.677483> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.693602, -0.259701, 0.671917,
		0.203565, 0.965398, 0.162998,
		-0.690998, 0.023723, 0.722468,
		3.507174, 3.514212, 0.894223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.458560, 3.758886, 0.905295>,  <3.990873, 3.497606, 0.388496>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.458560, 3.758886, 0.905295> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.119881, 3.639282, 1.081337>,  <3.916673, 3.567520, 1.186962>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.119881, 3.639282, 1.081337>,  <4.458560, 3.758886, 0.905295>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.119881, 3.639282, 1.081337> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503325, -0.181907, 0.844733,
		-0.172526, 0.936751, 0.304520,
		-0.846699, -0.299010, 0.440106,
		3.865871, 3.549579, 1.213369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.376925, 4.172790, 1.554195>,  <4.458560, 3.758886, 0.905295>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.376925, 4.172790, 1.554195> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.196445, 3.815826, 1.556351>,  <4.088158, 3.601649, 1.557644>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.196445, 3.815826, 1.556351>,  <4.376925, 4.172790, 1.554195>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.196445, 3.815826, 1.556351> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521208, -0.258609, 0.813304,
		-0.724405, 0.369771, 0.581814,
		-0.451199, -0.892407, 0.005389,
		4.061086, 3.548104, 1.557968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.216873, 4.031910, 2.216356>,  <4.376925, 4.172790, 1.554195>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.216873, 4.031910, 2.216356> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.234474, 3.672775, 2.041107>,  <4.245035, 3.457294, 1.935958>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.234474, 3.672775, 2.041107>,  <4.216873, 4.031910, 2.216356>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.234474, 3.672775, 2.041107> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503527, -0.358839, 0.785936,
		-0.862858, -0.255191, 0.436295,
		0.044004, -0.897838, -0.438122,
		4.247675, 3.403424, 1.909670>
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
