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
	<4.503373, 0.108881, -1.102565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.851105, 0.129684, -0.905970>,  <5.059744, 0.142166, -0.788013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.851105, 0.129684, -0.905970>,  <4.503373, 0.108881, -1.102565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.851105, 0.129684, -0.905970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455953, 0.468132, 0.756941,
		-0.190714, -0.882127, 0.430675,
		0.869330, 0.052008, 0.491488,
		5.111904, 0.145287, -0.758523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.651382, -0.294123, -0.409573>,  <4.503373, 0.108881, -1.102565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.651382, -0.294123, -0.409573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.801568, 0.072227, -0.466421>,  <4.891680, 0.292038, -0.500530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.801568, 0.072227, -0.466421>,  <4.651382, -0.294123, -0.409573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.801568, 0.072227, -0.466421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315829, 0.270592, 0.909413,
		0.871366, -0.296566, 0.390858,
		0.375464, 0.915875, -0.142121,
		4.914207, 0.346990, -0.509057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.167033, -0.170242, 0.065004>,  <4.651382, -0.294123, -0.409573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.167033, -0.170242, 0.065004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.967402, 0.140579, -0.088417>,  <4.847624, 0.327072, -0.180470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.967402, 0.140579, -0.088417>,  <5.167033, -0.170242, 0.065004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.967402, 0.140579, -0.088417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210451, 0.320678, 0.923513,
		0.840615, 0.541621, 0.003489,
		-0.499075, 0.777053, -0.383552,
		4.817680, 0.373695, -0.203483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.542041, 0.451352, 0.159537>,  <5.167033, -0.170242, 0.065004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.542041, 0.451352, 0.159537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.143583, 0.467010, 0.190941>,  <4.904509, 0.476406, 0.209783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.143583, 0.467010, 0.190941>,  <5.542041, 0.451352, 0.159537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.143583, 0.467010, 0.190941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081317, 0.076175, 0.993773,
		0.032922, 0.996326, -0.079064,
		-0.996144, 0.039146, 0.078510,
		4.844740, 0.478754, 0.214494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.455472, 1.053724, 0.470040>,  <5.542041, 0.451352, 0.159537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.455472, 1.053724, 0.470040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.138866, 0.814175, 0.518801>,  <4.948904, 0.670445, 0.548057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.138866, 0.814175, 0.518801>,  <5.455472, 1.053724, 0.470040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.138866, 0.814175, 0.518801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077734, 0.099188, 0.992028,
		-0.606189, 0.794678, -0.031956,
		-0.791512, -0.598873, 0.121901,
		4.901413, 0.634513, 0.555371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.902340, 1.437674, 0.797982>,  <5.455472, 1.053724, 0.470040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.902340, 1.437674, 0.797982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.932888, 1.047672, 0.881443>,  <4.951217, 0.813671, 0.931520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.932888, 1.047672, 0.881443>,  <4.902340, 1.437674, 0.797982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.932888, 1.047672, 0.881443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291499, 0.221953, 0.930465,
		-0.953518, -0.010237, 0.301163,
		0.076369, -0.975004, 0.208652,
		4.955799, 0.755171, 0.944039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.647402, 1.410848, 1.388396>,  <4.902340, 1.437674, 0.797982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.647402, 1.410848, 1.388396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.809446, 1.045235, 1.396652>,  <4.906673, 0.825866, 1.401606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.809446, 1.045235, 1.396652>,  <4.647402, 1.410848, 1.388396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.809446, 1.045235, 1.396652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267451, 0.140067, 0.953337,
		-0.874274, -0.380686, 0.301202,
		0.405111, -0.914035, 0.020642,
		4.930980, 0.771024, 1.402845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.409388, 1.066090, 1.932035>,  <4.647402, 1.410848, 1.388396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.409388, 1.066090, 1.932035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.773221, 0.909317, 1.876827>,  <4.991520, 0.815253, 1.843702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.773221, 0.909317, 1.876827>,  <4.409388, 1.066090, 1.932035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.773221, 0.909317, 1.876827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179158, 0.070211, 0.981312,
		-0.374917, -0.917311, 0.134080,
		0.909582, -0.391932, -0.138020,
		5.046095, 0.791738, 1.835421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<0.321594, 1.579243, 2.026362> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.302872, 1.921608, 2.232361>,  <0.291638, 2.127027, 2.355960>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.302872, 1.921608, 2.232361>,  <0.321594, 1.579243, 2.026362>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.302872, 1.921608, 2.232361> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.503844, 0.424944, -0.752039,
		-0.862525, -0.294678, 0.411357,
		-0.046805, 0.855913, 0.514997,
		0.288830, 2.178382, 2.386860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.633138, 1.442176, 2.822388>,  <0.321594, 1.579243, 2.026362>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.633138, 1.442176, 2.822388> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.767456, 1.067245, 2.785162>,  <0.848047, 0.842287, 2.762826>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.767456, 1.067245, 2.785162>,  <0.633138, 1.442176, 2.822388>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.767456, 1.067245, 2.785162> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177280, 0.034147, -0.983568,
		0.925102, 0.346777, -0.154703,
		0.335796, -0.937326, -0.093066,
		0.868195, 0.786048, 2.757242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.026990, 1.473213, 2.259678>,  <0.633138, 1.442176, 2.822388>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.026990, 1.473213, 2.259678> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.883224, 1.104553, 2.318169>,  <0.796965, 0.883357, 2.353263>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.883224, 1.104553, 2.318169>,  <1.026990, 1.473213, 2.259678>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.883224, 1.104553, 2.318169> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334532, -0.019028, -0.942192,
		0.871154, -0.387554, -0.301483,
		-0.359414, -0.921650, 0.146226,
		0.775400, 0.828058, 2.362036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.229836, 0.971790, 1.730885>,  <1.026990, 1.473213, 2.259678>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.229836, 0.971790, 1.730885> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.905277, 0.805725, 1.895458>,  <0.710542, 0.706086, 1.994202>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.905277, 0.805725, 1.895458>,  <1.229836, 0.971790, 1.730885>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.905277, 0.805725, 1.895458> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383516, -0.153039, -0.910766,
		0.441081, -0.896783, -0.035046,
		-0.811396, -0.415162, 0.411433,
		0.661858, 0.681177, 2.018888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.128063, 0.215092, 1.554139>,  <1.229836, 0.971790, 1.730885>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.128063, 0.215092, 1.554139> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.763432, 0.351418, 1.646114>,  <0.544653, 0.433213, 1.701300>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.763432, 0.351418, 1.646114>,  <1.128063, 0.215092, 1.554139>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.763432, 0.351418, 1.646114> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343463, -0.323910, -0.881541,
		-0.225959, -0.882570, 0.412326,
		-0.911579, 0.340811, 0.229940,
		0.489958, 0.453661, 1.715096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.555938, -0.329639, 1.370321>,  <1.128063, 0.215092, 1.554139>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.555938, -0.329639, 1.370321> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.356932, 0.016678, 1.391800>,  <0.237528, 0.224468, 1.404687>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.356932, 0.016678, 1.391800>,  <0.555938, -0.329639, 1.370321>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.356932, 0.016678, 1.391800> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.544588, -0.263558, -0.796217,
		-0.675206, -0.425372, 0.602624,
		-0.497515, 0.865792, 0.053696,
		0.207677, 0.276415, 1.407909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.158182, -0.477286, 1.293516>,  <0.555938, -0.329639, 1.370321>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.158182, -0.477286, 1.293516> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.076672, -0.105774, 1.169682>,  <-0.027766, 0.117133, 1.095381>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.076672, -0.105774, 1.169682>,  <-0.158182, -0.477286, 1.293516>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.076672, -0.105774, 1.169682> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.549507, -0.153205, -0.821323,
		-0.810258, 0.337484, 0.479151,
		0.203775, 0.928780, -0.309585,
		-0.015539, 0.172860, 1.076806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.751129, -0.232132, 1.049831>,  <-0.158182, -0.477286, 1.293516>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.751129, -0.232132, 1.049831> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.455929, -0.020386, 0.882439>,  <-0.278809, 0.106662, 0.782003>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.455929, -0.020386, 0.882439>,  <-0.751129, -0.232132, 1.049831>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.455929, -0.020386, 0.882439> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463298, -0.053404, -0.884592,
		-0.490622, 0.846711, 0.205842,
		0.738001, 0.529366, -0.418481,
		-0.234528, 0.138424, 0.756894>
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
