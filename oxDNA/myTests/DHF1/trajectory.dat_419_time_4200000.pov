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
	<4.352903, 3.103208, 3.219311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.233795, 3.343018, 2.922150>,  <4.162330, 3.486903, 2.743853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.233795, 3.343018, 2.922150>,  <4.352903, 3.103208, 3.219311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.233795, 3.343018, 2.922150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111354, 0.794704, 0.596695,
		0.948121, 0.094953, -0.303399,
		-0.297771, 0.599524, -0.742902,
		4.144464, 3.522875, 2.699279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.775754, 3.763812, 3.173827>,  <4.352903, 3.103208, 3.219311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.775754, 3.763812, 3.173827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.411510, 3.831383, 3.022961>,  <4.192964, 3.871925, 2.932441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.411510, 3.831383, 3.022961>,  <4.775754, 3.763812, 3.173827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.411510, 3.831383, 3.022961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037438, 0.875171, 0.482363,
		0.411568, 0.453365, -0.790615,
		-0.910610, 0.168926, -0.377165,
		4.138328, 3.882061, 2.909811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.776919, 4.455787, 2.811564>,  <4.775754, 3.763812, 3.173827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.776919, 4.455787, 2.811564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.435524, 4.311897, 2.962379>,  <4.230687, 4.225564, 3.052868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.435524, 4.311897, 2.962379>,  <4.776919, 4.455787, 2.811564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.435524, 4.311897, 2.962379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097377, 0.820873, 0.562748,
		-0.511933, 0.443584, -0.735634,
		-0.853488, -0.359723, 0.377038,
		4.179478, 4.203980, 3.075491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.227849, 4.996083, 2.830177>,  <4.776919, 4.455787, 2.811564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.227849, 4.996083, 2.830177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.133564, 4.734688, 3.117897>,  <4.076993, 4.577851, 3.290529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.133564, 4.734688, 3.117897>,  <4.227849, 4.996083, 2.830177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.133564, 4.734688, 3.117897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316488, 0.751425, 0.578961,
		-0.918845, -0.091181, -0.383941,
		-0.235712, -0.653488, 0.719300,
		4.062850, 4.538641, 3.333687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.584979, 5.199212, 3.165046>,  <4.227849, 4.996083, 2.830177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.584979, 5.199212, 3.165046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.762329, 4.963737, 3.435413>,  <3.868739, 4.822453, 3.597634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.762329, 4.963737, 3.435413>,  <3.584979, 5.199212, 3.165046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.762329, 4.963737, 3.435413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287616, 0.620776, 0.729325,
		-0.848938, -0.517770, 0.105921,
		0.443375, -0.588686, 0.675919,
		3.895342, 4.787131, 3.638189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.112014, 5.006070, 3.690620>,  <3.584979, 5.199212, 3.165046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.112014, 5.006070, 3.690620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.459297, 4.944458, 3.879295>,  <3.667667, 4.907491, 3.992501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.459297, 4.944458, 3.879295>,  <3.112014, 5.006070, 3.690620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.459297, 4.944458, 3.879295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347792, 0.489116, 0.799879,
		-0.353916, -0.858511, 0.371083,
		0.868207, -0.154031, 0.471689,
		3.719759, 4.898249, 4.020802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.930418, 4.713169, 4.382588>,  <3.112014, 5.006070, 3.690620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.930418, 4.713169, 4.382588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.304630, 4.850380, 4.416321>,  <3.529158, 4.932707, 4.436560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.304630, 4.850380, 4.416321>,  <2.930418, 4.713169, 4.382588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.304630, 4.850380, 4.416321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264423, 0.521754, 0.811082,
		0.234224, -0.781092, 0.578822,
		0.935532, 0.343029, 0.084331,
		3.585290, 4.953289, 4.441620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.027925, 4.779999, 5.096117>,  <2.930418, 4.713169, 4.382588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.027925, 4.779999, 5.096117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.317692, 4.998131, 4.927433>,  <3.491552, 5.129010, 4.826223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.317692, 4.998131, 4.927433>,  <3.027925, 4.779999, 5.096117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.317692, 4.998131, 4.927433> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006493, 0.617107, 0.786852,
		0.689334, -0.567269, 0.450582,
		0.724415, 0.545329, -0.421709,
		3.535017, 5.161729, 4.800920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<2.671240, 1.447300, 4.620303> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.986291, 1.448738, 4.866760>,  <3.175321, 1.449601, 5.014635>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.986291, 1.448738, 4.866760>,  <2.671240, 1.447300, 4.620303>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.986291, 1.448738, 4.866760> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491988, -0.605676, -0.625384,
		0.370934, 0.795703, -0.478815,
		0.787627, 0.003595, 0.616142,
		3.222579, 1.449817, 5.051603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.205383, 1.362570, 4.235541>,  <2.671240, 1.447300, 4.620303>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.205383, 1.362570, 4.235541> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.363406, 1.228973, 4.577858>,  <3.458220, 1.148815, 4.783248>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.363406, 1.228973, 4.577858>,  <3.205383, 1.362570, 4.235541>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.363406, 1.228973, 4.577858> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.606661, -0.604695, -0.516049,
		0.689849, 0.723044, -0.036271,
		0.395059, -0.333992, 0.855791,
		3.481924, 1.128776, 4.834595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.884315, 1.251109, 4.118368>,  <3.205383, 1.362570, 4.235541>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.884315, 1.251109, 4.118368> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.845014, 1.019394, 4.442039>,  <3.821433, 0.880365, 4.636243>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.845014, 1.019394, 4.442039>,  <3.884315, 1.251109, 4.118368>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.845014, 1.019394, 4.442039> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488327, -0.736555, -0.468000,
		0.867112, 0.349161, 0.355251,
		-0.098254, -0.579287, 0.809180,
		3.815537, 0.845608, 4.684793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.508461, 0.876796, 4.311465>,  <3.884315, 1.251109, 4.118368>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.508461, 0.876796, 4.311465> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.204871, 0.667534, 4.466522>,  <4.022717, 0.541976, 4.559556>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.204871, 0.667534, 4.466522>,  <4.508461, 0.876796, 4.311465>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.204871, 0.667534, 4.466522> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290612, -0.804933, -0.517328,
		0.582670, -0.279985, 0.762958,
		-0.758973, -0.523156, 0.387644,
		3.977179, 0.510587, 4.582815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.806114, 0.315497, 4.631309>,  <4.508461, 0.876796, 4.311465>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.806114, 0.315497, 4.631309> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.425614, 0.213310, 4.562187>,  <4.197314, 0.151998, 4.520714>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.425614, 0.213310, 4.562187>,  <4.806114, 0.315497, 4.631309>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.425614, 0.213310, 4.562187> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308111, -0.761965, -0.569629,
		0.013849, -0.595103, 0.803531,
		-0.951249, -0.255466, -0.172805,
		4.140240, 0.136671, 4.510345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.819471, -0.487076, 4.672602>,  <4.806114, 0.315497, 4.631309>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.819471, -0.487076, 4.672602> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.494086, -0.371376, 4.470764>,  <4.298856, -0.301956, 4.349661>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.494086, -0.371376, 4.470764>,  <4.819471, -0.487076, 4.672602>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.494086, -0.371376, 4.470764> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123101, -0.762291, -0.635420,
		-0.568442, -0.579006, 0.584488,
		-0.813461, 0.289249, -0.504594,
		4.250048, -0.284601, 4.319386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.346002, -1.012709, 4.597738>,  <4.819471, -0.487076, 4.672602>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.346002, -1.012709, 4.597738> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.238585, -0.771729, 4.297089>,  <4.174136, -0.627140, 4.116699>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.238585, -0.771729, 4.297089>,  <4.346002, -1.012709, 4.597738>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.238585, -0.771729, 4.297089> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121329, -0.752916, -0.646836,
		-0.955597, -0.264896, 0.129093,
		-0.268541, 0.602452, -0.751624,
		4.158023, -0.590993, 4.071602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.977609, -1.438321, 4.202485>,  <4.346002, -1.012709, 4.597738>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.977609, -1.438321, 4.202485> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.044805, -1.134506, 3.951126>,  <4.085122, -0.952217, 3.800311>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.044805, -1.134506, 3.951126>,  <3.977609, -1.438321, 4.202485>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.044805, -1.134506, 3.951126> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059015, -0.644061, -0.762695,
		-0.984021, 0.091040, -0.153019,
		0.167989, 0.759538, -0.628397,
		4.095201, -0.906645, 3.762607>
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
