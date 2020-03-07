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
	<4.331707, 3.648839, 4.613807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.986332, 3.448174, 4.635017>,  <3.779107, 3.327774, 4.647743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.986332, 3.448174, 4.635017>,  <4.331707, 3.648839, 4.613807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.986332, 3.448174, 4.635017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502769, 0.864372, -0.009150,
		-0.041243, -0.034560, -0.998551,
		-0.863437, -0.501663, 0.053025,
		3.727301, 3.297675, 4.650925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.816391, 3.845340, 4.011048>,  <4.331707, 3.648839, 4.613807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.816391, 3.845340, 4.011048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.634689, 3.744492, 4.352829>,  <3.525669, 3.683982, 4.557898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.634689, 3.744492, 4.352829>,  <3.816391, 3.845340, 4.011048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.634689, 3.744492, 4.352829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.566384, 0.822059, -0.058543,
		-0.687650, -0.510542, -0.516221,
		-0.454253, -0.252122, 0.854452,
		3.498413, 3.668855, 4.609165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.105954, 3.901611, 3.935362>,  <3.816391, 3.845340, 4.011048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.105954, 3.901611, 3.935362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.196491, 3.957542, 4.320946>,  <3.250813, 3.991101, 4.552296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.196491, 3.957542, 4.320946>,  <3.105954, 3.901611, 3.935362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.196491, 3.957542, 4.320946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.609297, 0.792443, 0.028117,
		-0.759951, -0.593702, 0.264561,
		0.226342, 0.139828, 0.963959,
		3.264394, 3.999491, 4.610134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.546983, 3.888213, 4.370659>,  <3.105954, 3.901611, 3.935362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.546983, 3.888213, 4.370659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.786892, 4.124054, 4.587044>,  <2.930837, 4.265559, 4.716875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.786892, 4.124054, 4.587044>,  <2.546983, 3.888213, 4.370659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.786892, 4.124054, 4.587044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.587990, 0.783289, -0.201806,
		-0.542716, -0.197043, 0.816477,
		0.599773, 0.589603, 0.540963,
		2.966824, 4.300935, 4.749332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.144030, 4.315689, 4.814970>,  <2.546983, 3.888213, 4.370659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.144030, 4.315689, 4.814970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.498772, 4.478676, 4.727829>,  <2.711617, 4.576468, 4.675544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.498772, 4.478676, 4.727829>,  <2.144030, 4.315689, 4.814970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.498772, 4.478676, 4.727829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460099, 0.822073, -0.335418,
		0.042419, 0.397701, 0.916534,
		0.886854, 0.407468, -0.217853,
		2.764828, 4.600916, 4.662473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.196591, 4.994247, 5.183840>,  <2.144030, 4.315689, 4.814970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.196591, 4.994247, 5.183840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.457802, 4.998459, 4.880936>,  <2.614529, 5.000986, 4.699193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.457802, 4.998459, 4.880936>,  <2.196591, 4.994247, 5.183840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.457802, 4.998459, 4.880936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307063, 0.917709, -0.252038,
		0.692291, 0.397115, 0.602523,
		0.653028, 0.010529, -0.757261,
		2.653710, 5.001617, 4.653758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.533400, 5.687294, 5.223620>,  <2.196591, 4.994247, 5.183840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.533400, 5.687294, 5.223620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.569733, 5.542923, 4.852356>,  <2.591532, 5.456300, 4.629598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.569733, 5.542923, 4.852356>,  <2.533400, 5.687294, 5.223620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.569733, 5.542923, 4.852356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262339, 0.890421, -0.371927,
		0.960691, 0.277275, -0.013808,
		0.090831, -0.360929, -0.928159,
		2.596982, 5.434644, 4.573908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.926387, 6.179049, 4.839464>,  <2.533400, 5.687294, 5.223620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.926387, 6.179049, 4.839464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.740395, 5.952126, 4.567596>,  <2.628799, 5.815971, 4.404476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.740395, 5.952126, 4.567596>,  <2.926387, 6.179049, 4.839464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.740395, 5.952126, 4.567596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320025, 0.823506, -0.468426,
		0.825469, -0.000281, -0.564448,
		-0.464957, -0.567308, -0.679688,
		2.600900, 5.781932, 4.363696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<1.879109, 1.756078, 4.507762> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.834205, 1.644470, 4.126282>,  <1.807262, 1.577505, 3.897393>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.834205, 1.644470, 4.126282>,  <1.879109, 1.756078, 4.507762>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.834205, 1.644470, 4.126282> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.587393, -0.792760, 0.162792,
		-0.801478, -0.541922, 0.252890,
		-0.112260, -0.279020, -0.953701,
		1.800526, 1.560764, 3.840171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.636457, 1.058063, 4.451694>,  <1.879109, 1.756078, 4.507762>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.636457, 1.058063, 4.451694> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.825244, 1.135681, 4.107697>,  <1.938516, 1.182252, 3.901298>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.825244, 1.135681, 4.107697>,  <1.636457, 1.058063, 4.451694>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.825244, 1.135681, 4.107697> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456121, -0.888521, 0.049838,
		-0.754453, -0.415784, -0.507862,
		0.471968, 0.194046, -0.859995,
		1.966834, 1.193895, 3.849698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.578491, 0.522844, 4.013695>,  <1.636457, 1.058063, 4.451694>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.578491, 0.522844, 4.013695> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.924881, 0.694077, 3.910286>,  <2.132715, 0.796816, 3.848240>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.924881, 0.694077, 3.910286>,  <1.578491, 0.522844, 4.013695>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.924881, 0.694077, 3.910286> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475570, -0.864822, 0.160984,
		-0.154663, -0.262354, -0.952497,
		0.865975, 0.428080, -0.258524,
		2.184674, 0.822501, 3.832729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.937252, 0.100636, 3.499289>,  <1.578491, 0.522844, 4.013695>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.937252, 0.100636, 3.499289> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.169138, 0.304123, 3.753891>,  <2.308269, 0.426215, 3.906652>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.169138, 0.304123, 3.753891>,  <1.937252, 0.100636, 3.499289>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.169138, 0.304123, 3.753891> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469163, -0.847073, 0.249707,
		0.666197, 0.153867, -0.729731,
		0.579714, 0.508717, 0.636506,
		2.343052, 0.456738, 3.944843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.699898, -0.102446, 3.412870>,  <1.937252, 0.100636, 3.499289>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.699898, -0.102446, 3.412870> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.680013, 0.069412, 3.773521>,  <2.668081, 0.172527, 3.989912>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.680013, 0.069412, 3.773521>,  <2.699898, -0.102446, 3.412870>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.680013, 0.069412, 3.773521> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.601037, -0.708118, 0.370573,
		0.797674, 0.560335, -0.223029,
		-0.049714, 0.429645, 0.901628,
		2.665098, 0.198306, 4.044010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.429068, -0.086728, 3.571458>,  <2.699898, -0.102446, 3.412870>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.429068, -0.086728, 3.571458> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.195500, -0.052689, 3.894394>,  <3.055360, -0.032265, 4.088155>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.195500, -0.052689, 3.894394>,  <3.429068, -0.086728, 3.571458>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.195500, -0.052689, 3.894394> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.586402, -0.643517, 0.491954,
		0.561401, 0.760687, 0.325859,
		-0.583919, 0.085099, 0.807339,
		3.020325, -0.027159, 4.136596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.859758, 0.095406, 4.251043>,  <3.429068, -0.086728, 3.571458>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.859758, 0.095406, 4.251043> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.514766, -0.072433, 4.364227>,  <3.307770, -0.173137, 4.432137>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.514766, -0.072433, 4.364227>,  <3.859758, 0.095406, 4.251043>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.514766, -0.072433, 4.364227> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504959, -0.676098, 0.536571,
		-0.033835, 0.605665, 0.795000,
		-0.862480, -0.419597, 0.282960,
		3.256022, -0.198313, 4.449115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.694863, 0.101250, 5.031003>,  <3.859758, 0.095406, 4.251043>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.694863, 0.101250, 5.031003> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.522581, -0.210175, 4.848427>,  <3.419212, -0.397029, 4.738881>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.522581, -0.210175, 4.848427>,  <3.694863, 0.101250, 5.031003>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.522581, -0.210175, 4.848427> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518893, -0.627431, 0.580587,
		-0.738407, 0.013217, 0.674226,
		-0.430704, -0.778560, -0.456441,
		3.393370, -0.443743, 4.711494>
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
