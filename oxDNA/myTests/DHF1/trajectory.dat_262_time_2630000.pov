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
	<2.748419, 1.620019, 3.131498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.362556, 1.544174, 3.204697>,  <2.131039, 1.498667, 3.248616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.362556, 1.544174, 3.204697>,  <2.748419, 1.620019, 3.131498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.362556, 1.544174, 3.204697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247836, 0.416858, -0.874532,
		0.089537, -0.888975, -0.449117,
		-0.964655, -0.189611, 0.182996,
		2.073160, 1.487291, 3.259595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.378573, 1.196365, 2.542871>,  <2.748419, 1.620019, 3.131498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.378573, 1.196365, 2.542871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.142448, 1.442963, 2.751282>,  <2.000773, 1.590921, 2.876328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.142448, 1.442963, 2.751282>,  <2.378573, 1.196365, 2.542871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.142448, 1.442963, 2.751282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223356, 0.495529, -0.839383,
		-0.775657, -0.611872, -0.154819,
		-0.590312, 0.616493, 0.521026,
		1.965355, 1.627910, 2.907589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.958126, 1.359979, 2.089987>,  <2.378573, 1.196365, 2.542871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.958126, 1.359979, 2.089987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.868912, 1.632858, 2.368515>,  <1.815383, 1.796586, 2.535632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.868912, 1.632858, 2.368515>,  <1.958126, 1.359979, 2.089987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.868912, 1.632858, 2.368515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389542, 0.592427, -0.705186,
		-0.893595, -0.428527, 0.133613,
		-0.223035, 0.682198, 0.696319,
		1.802001, 1.837518, 2.577411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.257651, 1.535196, 2.009336>,  <1.958126, 1.359979, 2.089987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.257651, 1.535196, 2.009336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.482117, 1.821106, 2.176281>,  <1.616796, 1.992652, 2.276448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.482117, 1.821106, 2.176281>,  <1.257651, 1.535196, 2.009336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.482117, 1.821106, 2.176281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318782, 0.651982, -0.687966,
		-0.763853, 0.253015, 0.593727,
		0.561165, 0.714774, 0.417362,
		1.650466, 2.035538, 2.301490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.789955, 2.087638, 2.159240>,  <1.257651, 1.535196, 2.009336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.789955, 2.087638, 2.159240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.163689, 2.223480, 2.115993>,  <1.387929, 2.304986, 2.090045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.163689, 2.223480, 2.115993>,  <0.789955, 2.087638, 2.159240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.163689, 2.223480, 2.115993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299989, 0.585598, -0.753048,
		-0.192427, 0.736031, 0.649022,
		0.934333, 0.339606, -0.108117,
		1.443989, 2.325362, 2.083559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.676101, 2.821920, 1.909688>,  <0.789955, 2.087638, 2.159240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.676101, 2.821920, 1.909688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.053223, 2.711304, 1.835236>,  <1.279496, 2.644934, 1.790564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.053223, 2.711304, 1.835236>,  <0.676101, 2.821920, 1.909688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.053223, 2.711304, 1.835236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020788, 0.606059, -0.795148,
		0.332697, 0.745800, 0.577144,
		0.942805, -0.276540, -0.186131,
		1.336064, 2.628342, 1.779396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.051021, 3.433976, 1.843961>,  <0.676101, 2.821920, 1.909688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.051021, 3.433976, 1.843961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.267155, 3.155655, 1.654690>,  <1.396835, 2.988662, 1.541127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.267155, 3.155655, 1.654690>,  <1.051021, 3.433976, 1.843961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.267155, 3.155655, 1.654690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189288, 0.648433, -0.737363,
		0.819884, 0.308856, 0.482078,
		0.540334, -0.695803, -0.473177,
		1.429255, 2.946914, 1.512737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.625183, 3.750325, 1.667374>,  <1.051021, 3.433976, 1.843961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.625183, 3.750325, 1.667374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.604027, 3.442810, 1.412449>,  <1.591333, 3.258301, 1.259494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.604027, 3.442810, 1.412449>,  <1.625183, 3.750325, 1.667374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.604027, 3.442810, 1.412449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232731, 0.611142, -0.756532,
		0.971102, -0.188336, 0.146597,
		-0.052891, -0.768788, -0.637313,
		1.588159, 3.212174, 1.221255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<1.557476, 4.518466, 0.012094> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.390955, 4.203812, -0.170288>,  <1.291042, 4.015019, -0.279718>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.390955, 4.203812, -0.170288>,  <1.557476, 4.518466, 0.012094>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.390955, 4.203812, -0.170288> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177019, -0.562004, 0.807970,
		-0.891827, 0.255648, 0.373214,
		-0.416304, -0.786635, -0.455956,
		1.266064, 3.967821, -0.307075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.018384, 4.179904, 0.387257>,  <1.557476, 4.518466, 0.012094>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.018384, 4.179904, 0.387257> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.214050, 3.917892, 0.156898>,  <1.331450, 3.760686, 0.018684>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.214050, 3.917892, 0.156898>,  <1.018384, 4.179904, 0.387257>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.214050, 3.917892, 0.156898> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056416, -0.635141, 0.770333,
		-0.870364, -0.409311, -0.273736,
		0.489167, -0.655027, -0.575895,
		1.360800, 3.721384, -0.015870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.661650, 3.444335, 0.185382>,  <1.018384, 4.179904, 0.387257>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.661650, 3.444335, 0.185382> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.059446, 3.432541, 0.225620>,  <1.298124, 3.425464, 0.249763>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.059446, 3.432541, 0.225620>,  <0.661650, 3.444335, 0.185382>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.059446, 3.432541, 0.225620> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097858, -0.605199, 0.790037,
		0.037585, -0.795528, -0.604750,
		0.994490, -0.029486, 0.100595,
		1.357793, 3.423695, 0.255799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.851863, 2.761338, 0.209532>,  <0.661650, 3.444335, 0.185382>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.851863, 2.761338, 0.209532> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.169386, 2.933197, 0.381706>,  <1.359900, 3.036312, 0.485011>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.169386, 2.933197, 0.381706>,  <0.851863, 2.761338, 0.209532>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.169386, 2.933197, 0.381706> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050694, -0.658547, 0.750830,
		0.606053, -0.617835, -0.500979,
		0.793807, 0.429646, 0.430435,
		1.407528, 3.062091, 0.510837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.397504, 2.274029, 0.358415>,  <0.851863, 2.761338, 0.209532>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.397504, 2.274029, 0.358415> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.466953, 2.564011, 0.625038>,  <1.508623, 2.737999, 0.785012>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.466953, 2.564011, 0.625038>,  <1.397504, 2.274029, 0.358415>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.466953, 2.564011, 0.625038> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042813, -0.681753, 0.730328,
		0.983881, -0.098265, -0.149406,
		0.173624, 0.724953, 0.666557,
		1.519040, 2.781497, 0.825005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.062866, 2.066814, 0.784424>,  <1.397504, 2.274029, 0.358415>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.062866, 2.066814, 0.784424> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.863262, 2.322510, 1.018471>,  <1.743500, 2.475927, 1.158899>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.863262, 2.322510, 1.018471>,  <2.062866, 2.066814, 0.784424>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.863262, 2.322510, 1.018471> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238729, -0.547664, 0.801918,
		0.833065, 0.539850, 0.120685,
		-0.499010, 0.639239, 0.585118,
		1.713559, 2.514282, 1.194006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.544377, 2.302261, 1.279438>,  <2.062866, 2.066814, 0.784424>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.544377, 2.302261, 1.279438> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.180655, 2.373352, 1.429943>,  <1.962421, 2.416007, 1.520247>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.180655, 2.373352, 1.429943>,  <2.544377, 2.302261, 1.279438>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.180655, 2.373352, 1.429943> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194085, -0.618695, 0.761280,
		0.368093, 0.765264, 0.528089,
		-0.909307, 0.177728, 0.376264,
		1.907863, 2.426670, 1.542822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.743402, 2.577151, 1.846365>,  <2.544377, 2.302261, 1.279438>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.743402, 2.577151, 1.846365> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.360140, 2.476273, 1.900528>,  <2.130183, 2.415746, 1.933026>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.360140, 2.476273, 1.900528>,  <2.743402, 2.577151, 1.846365>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.360140, 2.476273, 1.900528> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275268, -0.682040, 0.677531,
		-0.078517, 0.686454, 0.722922,
		-0.958156, -0.252195, 0.135407,
		2.072693, 2.400614, 1.941150>
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
