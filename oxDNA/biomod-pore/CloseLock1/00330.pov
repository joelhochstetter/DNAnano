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
	sky <0, 0.179814, -0.983701>
	up <0, 0.179814, -0.983701>
	right 1.6 * <1, 0, 0>
	location <35, 94.9851, 44.8844>
	look_at <35, 29.7336, 32.9568>
	direction <0, -65.2515, -11.9276>
	angle 67.0682
}


# declare cpy_camera_pos = <35, 94.9851, 44.8844>;
# if (DRAW_FOG = 1)
fog {
	fog_type 2
	up vnormalize(cpy_camera_pos)
	color rgbt<1,1,1,0.3>
	distance 1e-5
	fog_alt 3e-3
	fog_offset 56
}
# end


// LIGHTS

# declare lum = 6;
global_settings {
	ambient_light rgb lum * <0.05, 0.05, 0.05>
	max_trace_level 15
}# declare cpy_direct_light_amount = 0.25;
light_source
{	1000 * <-1, -1.16352, -0.803886>,
	rgb lum * cpy_direct_light_amount
	parallel
}

light_source
{	1000 * <1, 1.16352, 0.803886>,
	rgb lum * cpy_direct_light_amount
	parallel
}

// strand 0

// nucleotide -1

// particle -1
sphere {
	<24.271738, 35.117165, 34.772526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.308592, 34.970634, 35.142891>,  <24.330704, 34.882717, 35.365108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.308592, 34.970634, 35.142891>,  <24.271738, 35.117165, 34.772526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.308592, 34.970634, 35.142891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312783, -0.872155, -0.376181,
		0.945345, 0.324270, 0.034224,
		0.092136, -0.366325, 0.925914,
		24.336233, 34.860737, 35.420666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.896378, 35.016731, 35.065578>,  <24.271738, 35.117165, 34.772526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.896378, 35.016731, 35.065578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.620792, 34.745117, 35.166954>,  <24.455441, 34.582150, 35.227779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.620792, 34.745117, 35.166954>,  <24.896378, 35.016731, 35.065578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.620792, 34.745117, 35.166954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471384, -0.685413, -0.554982,
		0.550569, -0.262894, 0.792313,
		-0.688964, -0.679040, 0.253443,
		24.414103, 34.541405, 35.242989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.258507, 34.364845, 35.121052>,  <24.896378, 35.016731, 35.065578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.258507, 34.364845, 35.121052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.870695, 34.274307, 35.083572>,  <24.638008, 34.219982, 35.061085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.870695, 34.274307, 35.083572>,  <25.258507, 34.364845, 35.121052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.870695, 34.274307, 35.083572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229540, -0.705757, -0.670238,
		0.085580, -0.671323, 0.736208,
		-0.969530, -0.226348, -0.093697,
		24.579836, 34.206402, 35.055462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.194729, 33.658962, 35.294094>,  <25.258507, 34.364845, 35.121052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.194729, 33.658962, 35.294094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.937876, 33.798061, 35.020821>,  <24.783764, 33.881519, 34.856857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.937876, 33.798061, 35.020821>,  <25.194729, 33.658962, 35.294094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.937876, 33.798061, 35.020821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208398, -0.778446, -0.592108,
		-0.737722, -0.522587, 0.427399,
		-0.642135, 0.347742, -0.683183,
		24.745235, 33.902386, 34.815865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.721571, 33.064270, 35.098522>,  <25.194729, 33.658962, 35.294094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.721571, 33.064270, 35.098522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.775820, 33.343212, 34.817009>,  <24.808369, 33.510578, 34.648102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.775820, 33.343212, 34.817009>,  <24.721571, 33.064270, 35.098522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.775820, 33.343212, 34.817009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194360, -0.715268, -0.671279,
		-0.971509, -0.045745, -0.232545,
		0.135624, 0.697351, -0.703781,
		24.816507, 33.552418, 34.605873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.233152, 33.101109, 34.515797>,  <24.721571, 33.064270, 35.098522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.233152, 33.101109, 34.515797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.595263, 33.231407, 34.406715>,  <24.812529, 33.309586, 34.341267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.595263, 33.231407, 34.406715>,  <24.233152, 33.101109, 34.515797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.595263, 33.231407, 34.406715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145279, -0.840588, -0.521830,
		-0.399215, 0.432781, -0.808287,
		0.905274, 0.325749, -0.272702,
		24.866844, 33.329132, 34.324905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.357376, 32.733433, 33.872829>,  <24.233152, 33.101109, 34.515797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.357376, 32.733433, 33.872829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.724844, 32.853401, 33.975662>,  <24.945324, 32.925381, 34.037361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.724844, 32.853401, 33.975662>,  <24.357376, 32.733433, 33.872829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.724844, 32.853401, 33.975662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394803, -0.675269, -0.623010,
		-0.013250, 0.673840, -0.738759,
		0.918670, 0.299919, 0.257087,
		25.000444, 32.943378, 34.052788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.712599, 33.050972, 33.355179>,  <24.357376, 32.733433, 33.872829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.712599, 33.050972, 33.355179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.002626, 32.897831, 33.584160>,  <25.176643, 32.805946, 33.721550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.002626, 32.897831, 33.584160>,  <24.712599, 33.050972, 33.355179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.002626, 32.897831, 33.584160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309771, -0.561094, -0.767604,
		0.615077, 0.733894, -0.288235,
		0.725067, -0.382849, 0.572455,
		25.220146, 32.782978, 33.755898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.116167, 32.883842, 32.833744>,  <24.712599, 33.050972, 33.355179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.116167, 32.883842, 32.833744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.347021, 32.749615, 33.131550>,  <25.485535, 32.669079, 33.310234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.347021, 32.749615, 33.131550>,  <25.116167, 32.883842, 32.833744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.347021, 32.749615, 33.131550> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365265, -0.709328, -0.602856,
		0.730408, 0.619876, -0.286807,
		0.577136, -0.335570, 0.744518,
		25.520163, 32.648945, 33.354904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.802654, 32.794830, 32.496117>,  <25.116167, 32.883842, 32.833744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.802654, 32.794830, 32.496117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.816790, 32.585911, 32.836929>,  <25.825272, 32.460560, 33.041416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.816790, 32.585911, 32.836929>,  <25.802654, 32.794830, 32.496117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.816790, 32.585911, 32.836929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424365, -0.764040, -0.485960,
		0.904801, 0.378746, 0.194643,
		0.035341, -0.522297, 0.852031,
		25.827393, 32.429222, 33.092537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.579012, 32.554626, 32.669605>,  <25.802654, 32.794830, 32.496117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.579012, 32.554626, 32.669605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.311892, 32.318081, 32.850414>,  <26.151619, 32.176151, 32.958900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.311892, 32.318081, 32.850414>,  <26.579012, 32.554626, 32.669605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.311892, 32.318081, 32.850414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307017, -0.772057, -0.556478,
		0.678072, -0.232837, 0.697141,
		-0.667801, -0.591366, 0.452026,
		26.111551, 32.140671, 32.986023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.967487, 31.899353, 32.659786>,  <26.579012, 32.554626, 32.669605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.967487, 31.899353, 32.659786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.585306, 31.797888, 32.720142>,  <26.355997, 31.737009, 32.756355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.585306, 31.797888, 32.720142>,  <26.967487, 31.899353, 32.659786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.585306, 31.797888, 32.720142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116494, -0.793831, -0.596877,
		0.271185, -0.552710, 0.788017,
		-0.955452, -0.253663, 0.150888,
		26.298670, 31.721788, 32.765408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.009693, 31.238005, 32.842644>,  <26.967487, 31.899353, 32.659786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.009693, 31.238005, 32.842644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.630838, 31.272480, 32.719028>,  <26.403526, 31.293165, 32.644859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.630838, 31.272480, 32.719028>,  <27.009693, 31.238005, 32.842644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.630838, 31.272480, 32.719028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093354, -0.847528, -0.522476,
		-0.306951, -0.523706, 0.794678,
		-0.947136, 0.086188, -0.309039,
		26.346697, 31.298336, 32.626316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.673746, 30.560532, 32.909798>,  <27.009693, 31.238005, 32.842644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.673746, 30.560532, 32.909798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.470636, 30.767836, 32.634533>,  <26.348770, 30.892218, 32.469372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.470636, 30.767836, 32.634533>,  <26.673746, 30.560532, 32.909798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.470636, 30.767836, 32.634533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066681, -0.820057, -0.568384,
		-0.858907, -0.242722, 0.450960,
		-0.507773, 0.518259, -0.688168,
		26.318304, 30.923313, 32.428082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.216021, 30.054924, 32.736107>,  <26.673746, 30.560532, 32.909798>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.216021, 30.054924, 32.736107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.194410, 30.321104, 32.438313>,  <26.181444, 30.480812, 32.259636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.194410, 30.321104, 32.438313>,  <26.216021, 30.054924, 32.736107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.194410, 30.321104, 32.438313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169010, -0.740910, -0.649990,
		-0.984133, 0.090710, 0.152495,
		-0.054024, 0.665450, -0.744485,
		26.178204, 30.520739, 32.214966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.610149, 29.941799, 32.290165>,  <26.216021, 30.054924, 32.736107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.610149, 29.941799, 32.290165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.873564, 30.133255, 32.057877>,  <26.031612, 30.248129, 31.918505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.873564, 30.133255, 32.057877>,  <25.610149, 29.941799, 32.290165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.873564, 30.133255, 32.057877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205182, -0.628237, -0.750479,
		-0.724038, 0.613371, -0.315509,
		0.658536, 0.478638, -0.580720,
		26.071125, 30.276846, 31.883661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.213034, 30.147512, 31.651468>,  <25.610149, 29.941799, 32.290165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.213034, 30.147512, 31.651468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.604097, 30.170092, 31.570480>,  <25.838736, 30.183640, 31.521887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.604097, 30.170092, 31.570480>,  <25.213034, 30.147512, 31.651468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.604097, 30.170092, 31.570480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151944, -0.475795, -0.866333,
		-0.145239, 0.877743, -0.456589,
		0.977660, 0.056449, -0.202472,
		25.897396, 30.187027, 31.509739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.302237, 30.585371, 30.929819>,  <25.213034, 30.147512, 31.651468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.302237, 30.585371, 30.929819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.596540, 30.335871, 31.035341>,  <25.773123, 30.186171, 31.098654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.596540, 30.335871, 31.035341>,  <25.302237, 30.585371, 30.929819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.596540, 30.335871, 31.035341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077450, -0.309476, -0.947748,
		0.672798, 0.717748, -0.179391,
		0.735761, -0.623749, 0.263805,
		25.817268, 30.148746, 31.114483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.742266, 30.507401, 30.380981>,  <25.302237, 30.585371, 30.929819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.742266, 30.507401, 30.380981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.900093, 30.196653, 30.577263>,  <25.994789, 30.010204, 30.695032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.900093, 30.196653, 30.577263>,  <25.742266, 30.507401, 30.380981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.900093, 30.196653, 30.577263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243480, -0.426549, -0.871076,
		0.886022, 0.463175, 0.020849,
		0.394567, -0.776869, 0.490705,
		26.018463, 29.963593, 30.724474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.362949, 30.386345, 30.051258>,  <25.742266, 30.507401, 30.380981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.362949, 30.386345, 30.051258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.249262, 30.053101, 30.241056>,  <26.181049, 29.853155, 30.354937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.249262, 30.053101, 30.241056>,  <26.362949, 30.386345, 30.051258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.249262, 30.053101, 30.241056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082311, -0.514284, -0.853661,
		0.955220, -0.203571, 0.214743,
		-0.284219, -0.833109, 0.474498,
		26.163996, 29.803167, 30.383406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.738110, 29.894291, 29.727774>,  <26.362949, 30.386345, 30.051258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.738110, 29.894291, 29.727774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.448271, 29.686550, 29.908985>,  <26.274368, 29.561905, 30.017712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.448271, 29.686550, 29.908985>,  <26.738110, 29.894291, 29.727774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.448271, 29.686550, 29.908985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007655, -0.663375, -0.748247,
		0.689132, -0.538708, 0.484654,
		-0.724595, -0.519351, 0.453030,
		26.230892, 29.530745, 30.044893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.028946, 29.291868, 29.786829>,  <26.738110, 29.894291, 29.727774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.028946, 29.291868, 29.786829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.633543, 29.232475, 29.798164>,  <26.396301, 29.196840, 29.804966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.633543, 29.232475, 29.798164>,  <27.028946, 29.291868, 29.786829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.633543, 29.232475, 29.798164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074388, -0.641030, -0.763902,
		0.131590, -0.753016, 0.644709,
		-0.988509, -0.148481, 0.028338,
		26.336990, 29.187931, 29.806665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.895071, 28.565304, 29.691307>,  <27.028946, 29.291868, 29.786829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.895071, 28.565304, 29.691307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.541498, 28.723618, 29.591694>,  <26.329355, 28.818605, 29.531925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.541498, 28.723618, 29.591694>,  <26.895071, 28.565304, 29.691307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.541498, 28.723618, 29.591694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020733, -0.498871, -0.866428,
		-0.467153, -0.771028, 0.432764,
		-0.883933, 0.395782, -0.249035,
		26.276318, 28.842352, 29.516983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.496828, 28.006859, 29.458023>,  <26.895071, 28.565304, 29.691307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.496828, 28.006859, 29.458023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.294243, 28.315269, 29.303612>,  <26.172691, 28.500315, 29.210964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.294243, 28.315269, 29.303612>,  <26.496828, 28.006859, 29.458023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.294243, 28.315269, 29.303612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035717, -0.466067, -0.884028,
		-0.861523, -0.433938, 0.263583,
		-0.506461, 0.771025, -0.386028,
		26.142305, 28.546577, 29.187803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.898708, 27.769464, 29.094288>,  <26.496828, 28.006859, 29.458023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.898708, 27.769464, 29.094288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.066469, 28.109898, 28.967951>,  <26.167126, 28.314157, 28.892149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.066469, 28.109898, 28.967951>,  <25.898708, 27.769464, 29.094288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.066469, 28.109898, 28.967951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180797, -0.419261, -0.889681,
		-0.889615, 0.316030, -0.329712,
		0.419402, 0.851085, -0.315843,
		26.192289, 28.365223, 28.873198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.540028, 28.055849, 28.443319>,  <25.898708, 27.769464, 29.094288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.540028, 28.055849, 28.443319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.932287, 28.130775, 28.466101>,  <26.167643, 28.175732, 28.479769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.932287, 28.130775, 28.466101>,  <25.540028, 28.055849, 28.443319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.932287, 28.130775, 28.466101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150526, -0.535340, -0.831115,
		-0.125191, 0.823604, -0.553176,
		0.980647, 0.187316, 0.056954,
		26.226480, 28.186970, 28.483187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.055035, 27.737484, 27.881557>,  <25.540028, 28.055849, 28.443319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.055035, 27.737484, 27.881557> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.247869, 27.947546, 27.601042>,  <26.363569, 28.073584, 27.432734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.247869, 27.947546, 27.601042>,  <26.055035, 27.737484, 27.881557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.247869, 27.947546, 27.601042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.874591, 0.335790, -0.349764,
		0.051805, 0.781957, 0.621176,
		0.482085, 0.525156, -0.701288,
		26.392494, 28.105093, 27.390656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.811350, 27.300121, 27.284233>,  <26.055035, 27.737484, 27.881557>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.811350, 27.300121, 27.284233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.470770, 27.462664, 27.151625>,  <25.266422, 27.560190, 27.072060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.470770, 27.462664, 27.151625>,  <25.811350, 27.300121, 27.284233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.470770, 27.462664, 27.151625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437184, 0.899134, -0.020721,
		0.289663, -0.162579, -0.943220,
		-0.851449, 0.406358, -0.331523,
		25.215336, 27.584572, 27.052168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.870886, 27.747873, 26.584938>,  <25.811350, 27.300121, 27.284233>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.870886, 27.747873, 26.584938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.566729, 27.871315, 26.813520>,  <25.384233, 27.945381, 26.950670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.566729, 27.871315, 26.813520>,  <25.870886, 27.747873, 26.584938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.566729, 27.871315, 26.813520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349310, 0.936121, -0.040735,
		-0.547524, 0.168641, -0.819621,
		-0.760395, 0.308605, 0.571457,
		25.338610, 27.963896, 26.984957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.394457, 28.265224, 26.293915>,  <25.870886, 27.747873, 26.584938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.394457, 28.265224, 26.293915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.408829, 28.304436, 26.691729>,  <25.417452, 28.327963, 26.930416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.408829, 28.304436, 26.691729>,  <25.394457, 28.265224, 26.293915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.408829, 28.304436, 26.691729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435376, 0.894237, -0.103870,
		-0.899532, 0.436728, -0.010549,
		0.035929, 0.098027, 0.994535,
		25.419607, 28.333843, 26.990089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.104839, 28.935137, 26.420622>,  <25.394457, 28.265224, 26.293915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.104839, 28.935137, 26.420622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.321981, 28.853485, 26.746479>,  <25.452267, 28.804495, 26.941994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.321981, 28.853485, 26.746479>,  <25.104839, 28.935137, 26.420622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.321981, 28.853485, 26.746479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276475, 0.959379, 0.056162,
		-0.793014, 0.194740, 0.577239,
		0.542854, -0.204129, 0.814641,
		25.484838, 28.792246, 26.990871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.039434, 29.730780, 26.202360>,  <25.104839, 28.935137, 26.420622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.039434, 29.730780, 26.202360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.211313, 29.856897, 25.863905>,  <25.314440, 29.932568, 25.660831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.211313, 29.856897, 25.863905>,  <25.039434, 29.730780, 26.202360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.211313, 29.856897, 25.863905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518601, 0.680929, 0.517097,
		0.739199, -0.661002, 0.129078,
		0.429695, 0.315297, -0.846138,
		25.340221, 29.951487, 25.610064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.819006, 29.597528, 26.044325>,  <25.039434, 29.730780, 26.202360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.819006, 29.597528, 26.044325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.706059, 29.936424, 25.864346>,  <25.638290, 30.139763, 25.756359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.706059, 29.936424, 25.864346>,  <25.819006, 29.597528, 26.044325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.706059, 29.936424, 25.864346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.599211, 0.522049, 0.606968,
		0.749142, -0.098225, -0.655086,
		-0.282368, 0.847240, -0.449947,
		25.621347, 30.190596, 25.729361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.470934, 30.002464, 25.702988>,  <25.819006, 29.597528, 26.044325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.470934, 30.002464, 25.702988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.162868, 30.217876, 25.839712>,  <25.978029, 30.347124, 25.921747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.162868, 30.217876, 25.839712>,  <26.470934, 30.002464, 25.702988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.162868, 30.217876, 25.839712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.614624, 0.483286, 0.623436,
		0.170546, 0.690233, -0.703202,
		-0.770163, 0.538530, 0.341811,
		25.931820, 30.379435, 25.942255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.785614, 30.543619, 26.022219>,  <26.470934, 30.002464, 25.702988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.785614, 30.543619, 26.022219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.418318, 30.565176, 26.179153>,  <26.197941, 30.578110, 26.273314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.418318, 30.565176, 26.179153>,  <26.785614, 30.543619, 26.022219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.418318, 30.565176, 26.179153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316625, 0.694968, 0.645575,
		-0.237869, 0.717018, -0.655213,
		-0.918241, 0.053894, 0.392337,
		26.142845, 30.581345, 26.296854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.554148, 31.298309, 25.986616>,  <26.785614, 30.543619, 26.022219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.554148, 31.298309, 25.986616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.372314, 31.104385, 26.285498>,  <26.263214, 30.988031, 26.464827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.372314, 31.104385, 26.285498>,  <26.554148, 31.298309, 25.986616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.372314, 31.104385, 26.285498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453053, 0.596410, 0.662599,
		-0.766874, 0.639731, -0.051475,
		-0.454585, -0.484809, 0.747203,
		26.235939, 30.958942, 26.509659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.130194, 31.737722, 26.352253>,  <26.554148, 31.298309, 25.986616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.130194, 31.737722, 26.352253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.247997, 31.449188, 26.602993>,  <26.318680, 31.276068, 26.753437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.247997, 31.449188, 26.602993>,  <26.130194, 31.737722, 26.352253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.247997, 31.449188, 26.602993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286645, 0.692416, 0.662114,
		-0.911646, -0.015316, 0.410691,
		0.294509, -0.721336, 0.626848,
		26.336349, 31.232788, 26.791048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.912159, 31.964804, 26.931993>,  <26.130194, 31.737722, 26.352253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.912159, 31.964804, 26.931993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.189243, 31.700024, 27.046516>,  <26.355494, 31.541155, 27.115231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.189243, 31.700024, 27.046516>,  <25.912159, 31.964804, 26.931993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.189243, 31.700024, 27.046516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263800, 0.602026, 0.753641,
		-0.671238, -0.446527, 0.591653,
		0.692711, -0.661951, 0.286309,
		26.397057, 31.501438, 27.132408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.755587, 31.795229, 27.595425>,  <25.912159, 31.964804, 26.931993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.755587, 31.795229, 27.595425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.140381, 31.686979, 27.580759>,  <26.371258, 31.622030, 27.571959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.140381, 31.686979, 27.580759>,  <25.755587, 31.795229, 27.595425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.140381, 31.686979, 27.580759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205403, 0.628507, 0.750193,
		-0.179974, -0.729207, 0.660202,
		0.961987, -0.270622, -0.036666,
		26.428976, 31.605793, 27.569759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.932928, 31.534193, 28.291925>,  <25.755587, 31.795229, 27.595425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.932928, 31.534193, 28.291925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.298697, 31.594217, 28.141560>,  <26.518158, 31.630232, 28.051340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.298697, 31.594217, 28.141560>,  <25.932928, 31.534193, 28.291925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.298697, 31.594217, 28.141560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219158, 0.597260, 0.771525,
		0.340293, -0.787885, 0.513262,
		0.914423, 0.150059, -0.375915,
		26.573023, 31.639235, 28.028786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.406704, 31.269518, 28.825678>,  <25.932928, 31.534193, 28.291925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.406704, 31.269518, 28.825678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.591702, 31.542780, 28.599617>,  <26.702700, 31.706738, 28.463980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.591702, 31.542780, 28.599617>,  <26.406704, 31.269518, 28.825678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.591702, 31.542780, 28.599617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110312, 0.588132, 0.801207,
		0.879733, -0.432896, 0.196647,
		0.462494, 0.683156, -0.565153,
		26.730450, 31.747726, 28.430071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.035561, 31.498592, 29.262850>,  <26.406704, 31.269518, 28.825678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.035561, 31.498592, 29.262850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.984203, 31.786329, 28.989775>,  <26.953388, 31.958971, 28.825930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.984203, 31.786329, 28.989775>,  <27.035561, 31.498592, 29.262850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.984203, 31.786329, 28.989775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043432, 0.691803, 0.720779,
		0.990772, 0.062895, -0.120067,
		-0.128395, 0.719342, -0.682687,
		26.945684, 32.002132, 28.784969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.576891, 31.921091, 29.487944>,  <27.035561, 31.498592, 29.262850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.576891, 31.921091, 29.487944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.311522, 32.127815, 29.271507>,  <27.152300, 32.251850, 29.141645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.311522, 32.127815, 29.271507>,  <27.576891, 31.921091, 29.487944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.311522, 32.127815, 29.271507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048241, 0.692098, 0.720190,
		0.746687, 0.503895, -0.434223,
		-0.663424, 0.516809, -0.541089,
		27.112494, 32.282856, 29.109180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.826252, 32.549644, 29.436640>,  <27.576891, 31.921091, 29.487944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.826252, 32.549644, 29.436640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.439466, 32.630024, 29.373907>,  <27.207396, 32.678253, 29.336267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.439466, 32.630024, 29.373907>,  <27.826252, 32.549644, 29.436640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.439466, 32.630024, 29.373907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052324, 0.758624, 0.649424,
		0.249478, 0.619765, -0.744078,
		-0.966966, 0.200950, -0.156831,
		27.149376, 32.690308, 29.326859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.802088, 33.251312, 29.384369>,  <27.826252, 32.549644, 29.436640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.802088, 33.251312, 29.384369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.414099, 33.176224, 29.446228>,  <27.181305, 33.131172, 29.483343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.414099, 33.176224, 29.446228>,  <27.802088, 33.251312, 29.384369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.414099, 33.176224, 29.446228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061839, 0.805284, 0.589655,
		-0.235225, 0.562386, -0.792711,
		-0.969972, -0.187722, 0.154646,
		27.123108, 33.119907, 29.492622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.435408, 33.921303, 29.317556>,  <27.802088, 33.251312, 29.384369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.435408, 33.921303, 29.317556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.182337, 33.689415, 29.522943>,  <27.030495, 33.550282, 29.646175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.182337, 33.689415, 29.522943>,  <27.435408, 33.921303, 29.317556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.182337, 33.689415, 29.522943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315778, 0.798531, 0.512476,
		-0.707111, 0.162090, -0.688274,
		-0.632676, -0.579719, 0.513466,
		26.992535, 33.515499, 29.676983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.900620, 34.342628, 29.428177>,  <27.435408, 33.921303, 29.317556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.900620, 34.342628, 29.428177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.810558, 34.074760, 29.711260>,  <26.756521, 33.914040, 29.881109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.810558, 34.074760, 29.711260>,  <26.900620, 34.342628, 29.428177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.810558, 34.074760, 29.711260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087085, 0.737282, 0.669949,
		-0.970423, 0.089212, -0.224321,
		-0.225155, -0.669669, 0.707706,
		26.743011, 33.873859, 29.923573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.319910, 34.604206, 29.844744>,  <26.900620, 34.342628, 29.428177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.319910, 34.604206, 29.844744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.505733, 34.334881, 30.074818>,  <26.617228, 34.173286, 30.212862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.505733, 34.334881, 30.074818>,  <26.319910, 34.604206, 29.844744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.505733, 34.334881, 30.074818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038594, 0.633514, 0.772768,
		-0.884702, -0.381193, 0.268318,
		0.464557, -0.673314, 0.575183,
		26.645102, 34.132885, 30.247372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.938868, 34.518269, 30.532816>,  <26.319910, 34.604206, 29.844744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.938868, 34.518269, 30.532816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.299355, 34.355721, 30.593046>,  <26.515646, 34.258190, 30.629185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.299355, 34.355721, 30.593046>,  <25.938868, 34.518269, 30.532816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.299355, 34.355721, 30.593046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071367, 0.481871, 0.873331,
		-0.427455, -0.776313, 0.463270,
		0.901215, -0.406372, 0.150575,
		26.569719, 34.233810, 30.638218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.830767, 34.237217, 31.181149>,  <25.938868, 34.518269, 30.532816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.830767, 34.237217, 31.181149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.228132, 34.262691, 31.143057>,  <26.466553, 34.277977, 31.120201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.228132, 34.262691, 31.143057>,  <25.830767, 34.237217, 31.181149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.228132, 34.262691, 31.143057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065883, 0.362456, 0.929669,
		0.093720, -0.929823, 0.355875,
		0.993416, 0.063683, -0.095229,
		26.526157, 34.281796, 31.114489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.125187, 33.920425, 31.691320>,  <25.830767, 34.237217, 31.181149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.125187, 33.920425, 31.691320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.395096, 34.195126, 31.583210>,  <26.557041, 34.359947, 31.518343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.395096, 34.195126, 31.583210>,  <26.125187, 33.920425, 31.691320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.395096, 34.195126, 31.583210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050797, 0.322131, 0.945331,
		0.736275, -0.651613, 0.182480,
		0.674773, 0.686754, -0.270277,
		26.597528, 34.401154, 31.502127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.656078, 33.863365, 32.164474>,  <26.125187, 33.920425, 31.691320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.656078, 33.863365, 32.164474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.706951, 34.227207, 32.006260>,  <26.737474, 34.445511, 31.911331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.706951, 34.227207, 32.006260>,  <26.656078, 33.863365, 32.164474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.706951, 34.227207, 32.006260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024954, 0.395711, 0.918036,
		0.991565, -0.126628, 0.027630,
		0.127183, 0.909603, -0.395533,
		26.745106, 34.500088, 31.887600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.295118, 34.090321, 32.414673>,  <26.656078, 33.863365, 32.164474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.295118, 34.090321, 32.414673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.054113, 34.396027, 32.322689>,  <26.909510, 34.579449, 32.267498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.054113, 34.396027, 32.322689>,  <27.295118, 34.090321, 32.414673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.054113, 34.396027, 32.322689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142341, 0.386412, 0.911276,
		0.785312, 0.516324, -0.341605,
		-0.602514, 0.764261, -0.229960,
		26.873360, 34.625305, 32.253700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.637312, 34.745934, 32.648621>,  <27.295118, 34.090321, 32.414673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.637312, 34.745934, 32.648621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.260509, 34.864292, 32.585285>,  <27.034428, 34.935307, 32.547283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.260509, 34.864292, 32.585285>,  <27.637312, 34.745934, 32.648621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.260509, 34.864292, 32.585285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051567, 0.593842, 0.802928,
		0.331612, 0.748197, -0.574661,
		-0.942005, 0.295894, -0.158343,
		26.977907, 34.953060, 32.537781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.518143, 35.565083, 32.632423>,  <27.637312, 34.745934, 32.648621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.518143, 35.565083, 32.632423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.177011, 35.410114, 32.772476>,  <26.972332, 35.317135, 32.856506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.177011, 35.410114, 32.772476>,  <27.518143, 35.565083, 32.632423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.177011, 35.410114, 32.772476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053099, 0.731360, 0.679921,
		-0.519485, 0.561265, -0.644296,
		-0.852828, -0.387420, 0.350128,
		26.921164, 35.293888, 32.877514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.080282, 36.068581, 32.872303>,  <27.518143, 35.565083, 32.632423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.080282, 36.068581, 32.872303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.943262, 35.739059, 33.052967>,  <26.861050, 35.541348, 33.161366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.943262, 35.739059, 33.052967>,  <27.080282, 36.068581, 32.872303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.943262, 35.739059, 33.052967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111505, 0.513001, 0.851115,
		-0.932859, 0.241188, -0.267588,
		-0.342552, -0.823807, 0.451664,
		26.840496, 35.491917, 33.188465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.779787, 36.488323, 32.887390>,  <27.080282, 36.068581, 32.872303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.779787, 36.488323, 32.887390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.704672, 36.661083, 33.240253>,  <27.659603, 36.764740, 33.451969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.704672, 36.661083, 33.240253>,  <27.779787, 36.488323, 32.887390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.704672, 36.661083, 33.240253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.874396, 0.335594, -0.350441,
		-0.447401, -0.837161, 0.314632,
		-0.187787, 0.431901, 0.882155,
		27.648336, 36.790653, 33.504902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.466848, 36.156902, 32.722984>,  <27.779787, 36.488323, 32.887390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.466848, 36.156902, 32.722984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.682652, 36.000820, 32.424541>,  <28.812134, 35.907169, 32.245476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.682652, 36.000820, 32.424541>,  <28.466848, 36.156902, 32.722984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.682652, 36.000820, 32.424541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.821479, 0.049586, 0.568078,
		-0.184672, -0.919391, 0.347299,
		0.539507, -0.390207, -0.746103,
		28.844503, 35.883759, 32.200710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.004377, 35.906895, 33.076336>,  <28.466848, 36.156902, 32.722984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.004377, 35.906895, 33.076336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.138004, 35.891560, 32.699627>,  <29.218180, 35.882359, 32.473602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.138004, 35.891560, 32.699627>,  <29.004377, 35.906895, 33.076336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.138004, 35.891560, 32.699627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.938633, 0.104522, 0.328699,
		0.085833, -0.993783, 0.070905,
		0.334067, -0.038340, -0.941769,
		29.238224, 35.880058, 32.417095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.651581, 35.423721, 32.924755>,  <29.004377, 35.906895, 33.076336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.651581, 35.423721, 32.924755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.625038, 35.785675, 32.756569>,  <29.609112, 36.002846, 32.655659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.625038, 35.785675, 32.756569>,  <29.651581, 35.423721, 32.924755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.625038, 35.785675, 32.756569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.818569, 0.290329, 0.495634,
		0.570562, -0.311289, -0.759972,
		-0.066356, 0.904880, -0.420462,
		29.605131, 36.057140, 32.630428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.276972, 35.484646, 32.981647>,  <29.651581, 35.423721, 32.924755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.276972, 35.484646, 32.981647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.147802, 35.846119, 32.869167>,  <30.070301, 36.063004, 32.801682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.147802, 35.846119, 32.869167>,  <30.276972, 35.484646, 32.981647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.147802, 35.846119, 32.869167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.740293, 0.426293, 0.519846,
		0.589651, -0.040298, -0.806652,
		-0.322922, 0.903687, -0.281197,
		30.050926, 36.117226, 32.784809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.836269, 35.804905, 32.546421>,  <30.276972, 35.484646, 32.981647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.836269, 35.804905, 32.546421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.585880, 36.066692, 32.716045>,  <30.435648, 36.223766, 32.817822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.585880, 36.066692, 32.716045>,  <30.836269, 35.804905, 32.546421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.585880, 36.066692, 32.716045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.702042, 0.236159, 0.671838,
		0.339553, 0.718259, -0.607295,
		-0.625972, 0.654471, 0.424060,
		30.398088, 36.263035, 32.843262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.227001, 36.442524, 32.629356>,  <30.836269, 35.804905, 32.546421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.227001, 36.442524, 32.629356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.939381, 36.391582, 32.902630>,  <30.766808, 36.361015, 33.066593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.939381, 36.391582, 32.902630>,  <31.227001, 36.442524, 32.629356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.939381, 36.391582, 32.902630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.629205, 0.298085, 0.717806,
		-0.295065, 0.946005, -0.134206,
		-0.719053, -0.127356, 0.683186,
		30.723665, 36.353374, 33.107586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.053982, 37.104877, 32.979397>,  <31.227001, 36.442524, 32.629356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.053982, 37.104877, 32.979397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.014832, 36.766541, 33.189148>,  <30.991341, 36.563538, 33.314999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.014832, 36.766541, 33.189148>,  <31.053982, 37.104877, 32.979397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.014832, 36.766541, 33.189148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.599635, 0.370401, 0.709394,
		-0.794265, 0.383870, 0.470942,
		-0.097877, -0.845841, 0.524379,
		30.985468, 36.512787, 33.346462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.738075, 37.315098, 33.529011>,  <31.053982, 37.104877, 32.979397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.738075, 37.315098, 33.529011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.890984, 36.964336, 33.645573>,  <30.982729, 36.753880, 33.715511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.890984, 36.964336, 33.645573>,  <30.738075, 37.315098, 33.529011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.890984, 36.964336, 33.645573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275772, 0.409246, 0.869751,
		-0.881941, -0.252119, 0.398267,
		0.382270, -0.876900, 0.291403,
		31.005665, 36.701267, 33.732994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.544975, 37.279041, 34.207291>,  <30.738075, 37.315098, 33.529011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.544975, 37.279041, 34.207291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.867273, 37.043255, 34.184303>,  <31.060652, 36.901783, 34.170513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.867273, 37.043255, 34.184303>,  <30.544975, 37.279041, 34.207291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.867273, 37.043255, 34.184303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365905, 0.419152, 0.830918,
		-0.465715, -0.690534, 0.553419,
		0.805744, -0.589469, -0.057464,
		31.108997, 36.866413, 34.167065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.598871, 37.004856, 34.875881>,  <30.544975, 37.279041, 34.207291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.598871, 37.004856, 34.875881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.956562, 37.003521, 34.696838>,  <31.171177, 37.002720, 34.589413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.956562, 37.003521, 34.696838>,  <30.598871, 37.004856, 34.875881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.956562, 37.003521, 34.696838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417861, 0.364737, 0.832081,
		0.160480, -0.931105, 0.327553,
		0.894225, -0.003339, -0.447605,
		31.224829, 37.002518, 34.562557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.019991, 36.513119, 35.310875>,  <30.598871, 37.004856, 34.875881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.019991, 36.513119, 35.310875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.283298, 36.718063, 35.090271>,  <31.441284, 36.841030, 34.957909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.283298, 36.718063, 35.090271>,  <31.019991, 36.513119, 35.310875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.283298, 36.718063, 35.090271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496328, 0.255429, 0.829708,
		0.565985, -0.819901, -0.086160,
		0.658270, 0.512365, -0.551509,
		31.480780, 36.871773, 34.924820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.720270, 36.405315, 35.545692>,  <31.019991, 36.513119, 35.310875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.720270, 36.405315, 35.545692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.733007, 36.753586, 35.349361>,  <31.740650, 36.962547, 35.231564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.733007, 36.753586, 35.349361>,  <31.720270, 36.405315, 35.545692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.733007, 36.753586, 35.349361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367472, 0.446487, 0.815852,
		0.929489, -0.206347, -0.305730,
		0.031845, 0.870672, -0.490831,
		31.742561, 37.014786, 35.202110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.245258, 36.646515, 35.902206>,  <31.720270, 36.405315, 35.545692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.245258, 36.646515, 35.902206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.086590, 36.951538, 35.697792>,  <31.991388, 37.134552, 35.575142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.086590, 36.951538, 35.697792>,  <32.245258, 36.646515, 35.902206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.086590, 36.951538, 35.697792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405225, 0.644991, 0.647904,
		0.823677, 0.049921, -0.564858,
		-0.396672, 0.762558, -0.511035,
		31.967588, 37.180305, 35.544483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.815849, 37.078636, 35.689606>,  <32.245258, 36.646515, 35.902206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.815849, 37.078636, 35.689606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.484364, 37.301556, 35.710197>,  <32.285473, 37.435307, 35.722553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.484364, 37.301556, 35.710197>,  <32.815849, 37.078636, 35.689606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.484364, 37.301556, 35.710197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424382, 0.565774, 0.706965,
		0.364864, 0.607720, -0.705373,
		-0.828718, 0.557294, 0.051475,
		32.235748, 37.468742, 35.725639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.049492, 37.760971, 35.873131>,  <32.815849, 37.078636, 35.689606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.049492, 37.760971, 35.873131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.656479, 37.755512, 35.947376>,  <32.420673, 37.752235, 35.991924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.656479, 37.755512, 35.947376>,  <33.049492, 37.760971, 35.873131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.656479, 37.755512, 35.947376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119181, 0.719862, 0.683809,
		-0.142947, 0.693983, -0.705658,
		-0.982528, -0.013647, 0.185612,
		32.361721, 37.751419, 36.003059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.978416, 38.368076, 36.027752>,  <33.049492, 37.760971, 35.873131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.978416, 38.368076, 36.027752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.658485, 38.201130, 36.200302>,  <32.466526, 38.100964, 36.303833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.658485, 38.201130, 36.200302>,  <32.978416, 38.368076, 36.027752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.658485, 38.201130, 36.200302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272637, 0.387653, 0.880565,
		-0.534742, 0.821907, -0.196266,
		-0.799825, -0.417365, 0.431377,
		32.418537, 38.075920, 36.329716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.643429, 38.914127, 36.528168>,  <32.978416, 38.368076, 36.027752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.643429, 38.914127, 36.528168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.506752, 38.558361, 36.649624>,  <32.424747, 38.344902, 36.722496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.506752, 38.558361, 36.649624>,  <32.643429, 38.914127, 36.528168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.506752, 38.558361, 36.649624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024535, 0.314530, 0.948931,
		-0.939493, 0.331690, -0.085650,
		-0.341690, -0.889412, 0.303637,
		32.404243, 38.291538, 36.740715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.154835, 39.055584, 37.020218>,  <32.643429, 38.914127, 36.528168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.154835, 39.055584, 37.020218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.271866, 38.676975, 37.074604>,  <32.342087, 38.449810, 37.107235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.271866, 38.676975, 37.074604>,  <32.154835, 39.055584, 37.020218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.271866, 38.676975, 37.074604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071233, 0.163365, 0.983991,
		-0.953584, -0.278212, 0.115222,
		0.292582, -0.946525, 0.135965,
		32.359642, 38.393017, 37.115395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.675344, 38.763592, 37.388622>,  <32.154835, 39.055584, 37.020218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.675344, 38.763592, 37.388622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.010872, 38.560436, 37.467037>,  <32.212189, 38.438541, 37.514088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.010872, 38.560436, 37.467037>,  <31.675344, 38.763592, 37.388622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.010872, 38.560436, 37.467037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120934, 0.177259, 0.976706,
		-0.530811, -0.842986, 0.087266,
		0.838818, -0.507892, 0.196037,
		32.262516, 38.408070, 37.525848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.452448, 38.261257, 37.879562>,  <31.675344, 38.763592, 37.388622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.452448, 38.261257, 37.879562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.850317, 38.286747, 37.911968>,  <32.089039, 38.302040, 37.931412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.850317, 38.286747, 37.911968>,  <31.452448, 38.261257, 37.879562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.850317, 38.286747, 37.911968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089241, 0.139049, 0.986256,
		0.051578, -0.988233, 0.143995,
		0.994673, 0.063719, 0.081019,
		32.148720, 38.305862, 37.936275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.632425, 37.786648, 38.357876>,  <31.452448, 38.261257, 37.879562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.632425, 37.786648, 38.357876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.927528, 38.055988, 38.377102>,  <32.104591, 38.217594, 38.388638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.927528, 38.055988, 38.377102>,  <31.632425, 37.786648, 38.357876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.927528, 38.055988, 38.377102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351633, 0.322530, 0.878822,
		0.576256, -0.665257, 0.474722,
		0.737755, 0.673355, 0.048066,
		32.148853, 38.257996, 38.391521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.020096, 37.645275, 38.961617>,  <31.632425, 37.786648, 38.357876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.020096, 37.645275, 38.961617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.099491, 38.028248, 38.877781>,  <32.147129, 38.258030, 38.827480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.099491, 38.028248, 38.877781>,  <32.020096, 37.645275, 38.961617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.099491, 38.028248, 38.877781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277840, 0.260036, 0.924763,
		0.939898, -0.125320, 0.317626,
		0.198485, 0.957432, -0.209588,
		32.159039, 38.315479, 38.814903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.401337, 37.868279, 39.576153>,  <32.020096, 37.645275, 38.961617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.401337, 37.868279, 39.576153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.318687, 38.205666, 39.377811>,  <32.269096, 38.408096, 39.258808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.318687, 38.205666, 39.377811>,  <32.401337, 37.868279, 39.576153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.318687, 38.205666, 39.377811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289783, 0.431293, 0.854407,
		0.934522, 0.320231, 0.155307,
		-0.206624, 0.843468, -0.495851,
		32.256699, 38.458706, 39.229057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.783436, 38.433445, 39.904579>,  <32.401337, 37.868279, 39.576153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.783436, 38.433445, 39.904579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.468651, 38.584270, 39.709229>,  <32.279781, 38.674767, 39.592018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.468651, 38.584270, 39.709229>,  <32.783436, 38.433445, 39.904579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.468651, 38.584270, 39.709229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248078, 0.531366, 0.810005,
		0.564929, 0.758600, -0.324625,
		-0.786964, 0.377063, -0.488376,
		32.232563, 38.697388, 39.562717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.805981, 39.063835, 40.125114>,  <32.783436, 38.433445, 39.904579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.805981, 39.063835, 40.125114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.438347, 39.016037, 39.974915>,  <32.217766, 38.987358, 39.884796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.438347, 39.016037, 39.974915>,  <32.805981, 39.063835, 40.125114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.438347, 39.016037, 39.974915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382989, 0.495131, 0.779850,
		0.092729, 0.860561, -0.500835,
		-0.919087, -0.119500, -0.375498,
		32.162621, 38.980186, 39.862267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.618702, 39.765457, 40.193665>,  <32.805981, 39.063835, 40.125114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.618702, 39.765457, 40.193665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.303547, 39.526554, 40.133633>,  <32.114456, 39.383213, 40.097614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.303547, 39.526554, 40.133633>,  <32.618702, 39.765457, 40.193665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.303547, 39.526554, 40.133633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.562620, 0.599019, 0.569767,
		-0.250395, 0.533349, -0.807986,
		-0.787884, -0.597256, -0.150081,
		32.067181, 39.347378, 40.088608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.088467, 40.305374, 40.078629>,  <32.618702, 39.765457, 40.193665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.088467, 40.305374, 40.078629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.943130, 39.956291, 40.209084>,  <31.855928, 39.746841, 40.287357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.943130, 39.956291, 40.209084>,  <32.088467, 40.305374, 40.078629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.943130, 39.956291, 40.209084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460084, 0.472478, 0.751723,
		-0.810126, 0.123083, -0.573190,
		-0.363344, -0.872705, 0.326138,
		31.834127, 39.694481, 40.306927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.403336, 40.476662, 40.211613>,  <32.088467, 40.305374, 40.078629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.403336, 40.476662, 40.211613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.465517, 40.138763, 40.416447>,  <31.502827, 39.936024, 40.539349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.465517, 40.138763, 40.416447>,  <31.403336, 40.476662, 40.211613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.465517, 40.138763, 40.416447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511232, 0.374771, 0.773426,
		-0.845266, -0.382029, -0.373602,
		0.155456, -0.844748, 0.512087,
		31.512154, 39.885338, 40.570072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.817589, 40.407928, 40.493191>,  <31.403336, 40.476662, 40.211613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.817589, 40.407928, 40.493191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.051851, 40.170853, 40.714359>,  <31.192410, 40.028606, 40.847061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.051851, 40.170853, 40.714359>,  <30.817589, 40.407928, 40.493191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.051851, 40.170853, 40.714359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433108, 0.347783, 0.831543,
		-0.685146, -0.726474, -0.053018,
		0.585656, -0.592691, 0.552924,
		31.227549, 39.993046, 40.880238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.384216, 40.188377, 41.048138>,  <30.817589, 40.407928, 40.493191>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.384216, 40.188377, 41.048138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.752680, 40.082787, 41.162525>,  <30.973759, 40.019432, 41.231159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.752680, 40.082787, 41.162525>,  <30.384216, 40.188377, 41.048138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.752680, 40.082787, 41.162525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228532, 0.227872, 0.946492,
		-0.315020, -0.937224, 0.149578,
		0.921160, -0.263981, 0.285970,
		31.029028, 40.003593, 41.248318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.321777, 39.829849, 41.571152>,  <30.384216, 40.188377, 41.048138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.321777, 39.829849, 41.571152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.684315, 39.986835, 41.633778>,  <30.901838, 40.081028, 41.671352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.684315, 39.986835, 41.633778>,  <30.321777, 39.829849, 41.571152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.684315, 39.986835, 41.633778> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287675, 0.301743, 0.908952,
		0.309515, -0.868852, 0.386390,
		0.906336, 0.392489, 0.156553,
		30.956219, 40.104572, 41.680748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.514326, 39.602608, 42.218349>,  <30.321777, 39.829849, 41.571152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.514326, 39.602608, 42.218349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.753016, 39.915661, 42.147465>,  <30.896229, 40.103493, 42.104935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.753016, 39.915661, 42.147465>,  <30.514326, 39.602608, 42.218349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.753016, 39.915661, 42.147465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231628, 0.379436, 0.895755,
		0.768290, -0.493470, 0.407698,
		0.596723, 0.782634, -0.177216,
		30.932034, 40.150452, 42.094299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.844446, 39.665302, 42.882301>,  <30.514326, 39.602608, 42.218349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.844446, 39.665302, 42.882301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.889467, 40.014755, 42.692944>,  <30.916479, 40.224426, 42.579330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.889467, 40.014755, 42.692944>,  <30.844446, 39.665302, 42.882301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.889467, 40.014755, 42.692944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189836, 0.486553, 0.852777,
		0.975343, -0.006113, 0.220608,
		0.112551, 0.873629, -0.473396,
		30.923233, 40.276844, 42.550926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.218250, 40.021008, 43.341743>,  <30.844446, 39.665302, 42.882301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.218250, 40.021008, 43.341743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.052572, 40.294189, 43.101074>,  <30.953165, 40.458099, 42.956673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.052572, 40.294189, 43.101074>,  <31.218250, 40.021008, 43.341743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.052572, 40.294189, 43.101074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194773, 0.579228, 0.791555,
		0.889105, 0.445047, -0.106891,
		-0.414194, 0.682956, -0.601677,
		30.928314, 40.499077, 42.920570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.587938, 40.695404, 43.349445>,  <31.218250, 40.021008, 43.341743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.587938, 40.695404, 43.349445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.200792, 40.746281, 43.262672>,  <30.968504, 40.776806, 43.210609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.200792, 40.746281, 43.262672>,  <31.587938, 40.695404, 43.349445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.200792, 40.746281, 43.262672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094639, 0.615015, 0.782816,
		0.232983, 0.778190, -0.583214,
		-0.967865, 0.127188, -0.216935,
		30.910433, 40.784435, 43.197594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.555988, 41.423031, 43.271698>,  <31.587938, 40.695404, 43.349445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.555988, 41.423031, 43.271698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.207945, 41.241325, 43.348175>,  <30.999119, 41.132301, 43.394062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.207945, 41.241325, 43.348175>,  <31.555988, 41.423031, 43.271698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.207945, 41.241325, 43.348175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149650, 0.613113, 0.775692,
		-0.469594, 0.646323, -0.601455,
		-0.870107, -0.454268, 0.191192,
		30.946913, 41.105045, 43.405533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.007366, 42.002373, 43.506466>,  <31.555988, 41.423031, 43.271698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.007366, 42.002373, 43.506466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.891634, 41.644295, 43.642067>,  <30.822195, 41.429447, 43.723427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.891634, 41.644295, 43.642067>,  <31.007366, 42.002373, 43.506466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.891634, 41.644295, 43.642067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068134, 0.372507, 0.925525,
		-0.954802, 0.244684, -0.168770,
		-0.289329, -0.895192, 0.338999,
		30.804834, 41.375736, 43.743767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.886667, 42.143600, 44.183872>,  <31.007366, 42.002373, 43.506466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.886667, 42.143600, 44.183872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.789303, 41.756310, 44.206806>,  <30.730885, 41.523933, 44.220566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.789303, 41.756310, 44.206806>,  <30.886667, 42.143600, 44.183872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.789303, 41.756310, 44.206806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109454, 0.086156, 0.990251,
		-0.963728, 0.234760, -0.126948,
		-0.243409, -0.968228, 0.057335,
		30.716280, 41.465839, 44.224007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.164679, 41.986561, 44.510384>,  <30.886667, 42.143600, 44.183872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.164679, 41.986561, 44.510384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.421291, 41.688843, 44.584641>,  <30.575260, 41.510212, 44.629192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.421291, 41.688843, 44.584641>,  <30.164679, 41.986561, 44.510384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.421291, 41.688843, 44.584641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254852, 0.021457, 0.966742,
		-0.723523, -0.667508, -0.175920,
		0.641533, -0.744294, 0.185640,
		30.613750, 41.465553, 44.640331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.899019, 41.611649, 45.043106>,  <30.164679, 41.986561, 44.510384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.899019, 41.611649, 45.043106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.275135, 41.479889, 45.077396>,  <30.500805, 41.400833, 45.097973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.275135, 41.479889, 45.077396>,  <29.899019, 41.611649, 45.043106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.275135, 41.479889, 45.077396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078068, 0.036443, 0.996282,
		-0.331298, -0.943487, 0.008551,
		0.940291, -0.329399, 0.085730,
		30.557222, 41.381069, 45.103115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.905682, 41.158497, 45.700970>,  <29.899019, 41.611649, 45.043106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.905682, 41.158497, 45.700970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.299652, 41.193073, 45.641037>,  <30.536034, 41.213818, 45.605076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.299652, 41.193073, 45.641037>,  <29.905682, 41.158497, 45.700970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.299652, 41.193073, 45.641037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139207, 0.118103, 0.983195,
		0.102670, -0.989233, 0.104291,
		0.984927, 0.086427, -0.149834,
		30.595129, 41.219006, 45.596085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.300434, 40.723797, 46.150635>,  <29.905682, 41.158497, 45.700970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.300434, 40.723797, 46.150635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.547884, 41.019970, 46.045517>,  <30.696354, 41.197674, 45.982449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.547884, 41.019970, 46.045517>,  <30.300434, 40.723797, 46.150635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.547884, 41.019970, 46.045517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316575, 0.071214, 0.945890,
		0.719086, -0.668343, -0.190349,
		0.618624, 0.740436, -0.262790,
		30.733471, 41.242100, 45.966679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.803507, 40.543446, 46.511311>,  <30.300434, 40.723797, 46.150635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.803507, 40.543446, 46.511311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.820061, 40.928909, 46.405743>,  <30.829992, 41.160187, 46.342400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.820061, 40.928909, 46.405743>,  <30.803507, 40.543446, 46.511311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.820061, 40.928909, 46.405743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418591, 0.223127, 0.880338,
		0.907231, -0.146907, -0.394144,
		0.041384, 0.963656, -0.263921,
		30.832476, 41.218006, 46.326565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.493319, 40.833748, 46.743263>,  <30.803507, 40.543446, 46.511311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.493319, 40.833748, 46.743263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.262072, 41.157948, 46.705585>,  <31.123323, 41.352467, 46.682980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.262072, 41.157948, 46.705585>,  <31.493319, 40.833748, 46.743263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.262072, 41.157948, 46.705585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267489, 0.297314, 0.916545,
		0.770864, 0.504674, -0.388682,
		-0.578116, 0.810499, -0.094193,
		31.088636, 41.401096, 46.677326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.933380, 41.433018, 46.973068>,  <31.493319, 40.833748, 46.743263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.933380, 41.433018, 46.973068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.541748, 41.505852, 47.009392>,  <31.306768, 41.549553, 47.031185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.541748, 41.505852, 47.009392>,  <31.933380, 41.433018, 46.973068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.541748, 41.505852, 47.009392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147257, 0.326114, 0.933791,
		0.140412, 0.927629, -0.346105,
		-0.979081, 0.182082, 0.090810,
		31.248024, 41.560478, 47.036636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.899427, 41.978115, 47.470943>,  <31.933380, 41.433018, 46.973068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.899427, 41.978115, 47.470943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.525450, 41.836803, 47.484047>,  <31.301064, 41.752014, 47.491909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.525450, 41.836803, 47.484047>,  <31.899427, 41.978115, 47.470943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.525450, 41.836803, 47.484047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072630, 0.280948, 0.956971,
		-0.347283, 0.892334, -0.288329,
		-0.934944, -0.353281, 0.032758,
		31.244967, 41.730820, 47.493874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.578072, 42.525707, 47.782406>,  <31.899427, 41.978115, 47.470943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.578072, 42.525707, 47.782406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.356230, 42.194290, 47.813217>,  <31.223124, 41.995441, 47.831703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.356230, 42.194290, 47.813217>,  <31.578072, 42.525707, 47.782406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.356230, 42.194290, 47.813217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202006, 0.223864, 0.953456,
		-0.807221, 0.513231, -0.291526,
		-0.554605, -0.828540, 0.077031,
		31.189848, 41.945728, 47.836327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.015575, 42.754150, 48.250355>,  <31.578072, 42.525707, 47.782406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.015575, 42.754150, 48.250355> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.038572, 42.354897, 48.242199>,  <31.052370, 42.115345, 48.237305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.038572, 42.354897, 48.242199>,  <31.015575, 42.754150, 48.250355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.038572, 42.354897, 48.242199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018616, -0.019347, 0.999640,
		-0.998173, -0.057850, 0.017469,
		0.057491, -0.998138, -0.020388,
		31.055820, 42.055454, 48.236084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.123068, 43.482449, 48.283157>,  <31.015575, 42.754150, 48.250355>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.123068, 43.482449, 48.283157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.836147, 43.328335, 48.515377>,  <30.663994, 43.235867, 48.654709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.836147, 43.328335, 48.515377>,  <31.123068, 43.482449, 48.283157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.836147, 43.328335, 48.515377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.685802, -0.537596, 0.490577,
		0.123091, 0.750033, 0.649845,
		-0.717303, -0.385280, 0.580548,
		30.620956, 43.212749, 48.689541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.394398, 43.482311, 48.973766>,  <31.123068, 43.482449, 48.283157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.394398, 43.482311, 48.973766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.091253, 43.222031, 48.954876>,  <30.909367, 43.065861, 48.943542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.091253, 43.222031, 48.954876>,  <31.394398, 43.482311, 48.973766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.091253, 43.222031, 48.954876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.604966, -0.727999, 0.322541,
		-0.244262, 0.215870, 0.945376,
		-0.757860, -0.650705, -0.047229,
		30.863895, 43.026817, 48.940708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.600967, 43.087082, 49.673916>,  <31.394398, 43.482311, 48.973766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.600967, 43.087082, 49.673916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.337944, 42.883942, 49.451313>,  <31.180130, 42.762058, 49.317749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.337944, 42.883942, 49.451313>,  <31.600967, 43.087082, 49.673916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.337944, 42.883942, 49.451313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405594, -0.861105, 0.306581,
		-0.634911, -0.024122, 0.772208,
		-0.657557, -0.507855, -0.556509,
		31.140676, 42.731586, 49.284359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.190176, 42.554947, 50.138813>,  <31.600967, 43.087082, 49.673916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.190176, 42.554947, 50.138813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.280983, 42.452393, 49.762997>,  <31.335466, 42.390862, 49.537506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.280983, 42.452393, 49.762997>,  <31.190176, 42.554947, 50.138813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.280983, 42.452393, 49.762997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552457, -0.760583, 0.341036,
		-0.802032, -0.596475, -0.031024,
		0.227015, -0.256382, -0.939538,
		31.349087, 42.375477, 49.481136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.642784, 42.010269, 50.309422>,  <31.190176, 42.554947, 50.138813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.642784, 42.010269, 50.309422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.720743, 42.015079, 49.917122>,  <31.767519, 42.017967, 49.681744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.720743, 42.015079, 49.917122>,  <31.642784, 42.010269, 50.309422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.720743, 42.015079, 49.917122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.584369, -0.804501, 0.106263,
		-0.787736, -0.593830, -0.163821,
		0.194896, 0.012025, -0.980750,
		31.779213, 42.018688, 49.622898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.341179, 41.492924, 49.921638>,  <31.642784, 42.010269, 50.309422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.341179, 41.492924, 49.921638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.705481, 41.603973, 49.799358>,  <31.924061, 41.670605, 49.725990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.705481, 41.603973, 49.799358>,  <31.341179, 41.492924, 49.921638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.705481, 41.603973, 49.799358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367195, -0.883148, 0.291920,
		-0.188933, -0.378118, -0.906273,
		0.910753, 0.277626, -0.305699,
		31.978706, 41.687260, 49.707649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.551516, 41.080482, 49.350639>,  <31.341179, 41.492924, 49.921638>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.551516, 41.080482, 49.350639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.851858, 41.186962, 49.592419>,  <32.032063, 41.250851, 49.737484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.851858, 41.186962, 49.592419>,  <31.551516, 41.080482, 49.350639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.851858, 41.186962, 49.592419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126977, -0.956289, 0.263417,
		0.648146, -0.121038, -0.751836,
		0.750855, 0.266199, 0.604445,
		32.077114, 41.266823, 49.773754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.153572, 40.762581, 49.283237>,  <31.551516, 41.080482, 49.350639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.153572, 40.762581, 49.283237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.153763, 40.862617, 49.670525>,  <32.153877, 40.922638, 49.902897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.153763, 40.862617, 49.670525>,  <32.153572, 40.762581, 49.283237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.153763, 40.862617, 49.670525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095884, -0.963750, 0.248983,
		0.995392, -0.092957, 0.023517,
		0.000480, 0.250091, 0.968222,
		32.153908, 40.937645, 49.960991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.840488, 40.620621, 49.656208>,  <32.153572, 40.762581, 49.283237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.840488, 40.620621, 49.656208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.498913, 40.566830, 49.857288>,  <32.293968, 40.534557, 49.977936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.498913, 40.566830, 49.857288>,  <32.840488, 40.620621, 49.656208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.498913, 40.566830, 49.857288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009018, -0.962064, -0.272676,
		0.520293, -0.237382, 0.820332,
		-0.853940, -0.134473, 0.502696,
		32.242729, 40.526489, 50.008099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.771946, 39.885860, 49.870762>,  <32.840488, 40.620621, 49.656208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.771946, 39.885860, 49.870762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.417629, 40.060917, 49.808994>,  <32.205040, 40.165951, 49.771935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.417629, 40.060917, 49.808994>,  <32.771946, 39.885860, 49.870762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.417629, 40.060917, 49.808994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294889, -0.787705, -0.540889,
		-0.358349, -0.433579, 0.826798,
		-0.885791, 0.437641, -0.154415,
		32.151894, 40.192207, 49.762669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.305141, 39.326267, 50.117676>,  <32.771946, 39.885860, 49.870762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.305141, 39.326267, 50.117676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.158936, 39.583019, 49.848042>,  <32.071213, 39.737068, 49.686260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.158936, 39.583019, 49.848042>,  <32.305141, 39.326267, 50.117676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.158936, 39.583019, 49.848042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092845, -0.745726, -0.659752,
		-0.926163, -0.178564, 0.332170,
		-0.365516, 0.641878, -0.674085,
		32.049282, 39.775581, 49.645817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.568359, 39.038219, 49.928883>,  <32.305141, 39.326267, 50.117676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.568359, 39.038219, 49.928883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.721113, 39.247410, 49.624077>,  <31.812765, 39.372925, 49.441193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.721113, 39.247410, 49.624077>,  <31.568359, 39.038219, 49.928883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.721113, 39.247410, 49.624077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169718, -0.770794, -0.614062,
		-0.908494, 0.363826, -0.205594,
		0.381883, 0.522979, -0.762010,
		31.835678, 39.404305, 49.395473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.158737, 38.838058, 49.386005>,  <31.568359, 39.038219, 49.928883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.158737, 38.838058, 49.386005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.460308, 39.024456, 49.200775>,  <31.641251, 39.136295, 49.089638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.460308, 39.024456, 49.200775>,  <31.158737, 38.838058, 49.386005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.460308, 39.024456, 49.200775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139976, -0.574758, -0.806263,
		-0.641870, 0.672685, -0.368100,
		0.753929, 0.465991, -0.463080,
		31.686487, 39.164253, 49.061852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.765795, 39.174690, 48.715508>,  <31.158737, 38.838058, 49.386005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.765795, 39.174690, 48.715508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.161041, 39.163113, 48.655125>,  <31.398190, 39.156166, 48.618896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.161041, 39.163113, 48.655125>,  <30.765795, 39.174690, 48.715508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.161041, 39.163113, 48.655125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144046, -0.517020, -0.843766,
		-0.053628, 0.855484, -0.515045,
		0.988117, -0.028941, -0.150956,
		31.457476, 39.154430, 48.609837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.858316, 39.113865, 47.962032>,  <30.765795, 39.174690, 48.715508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.858316, 39.113865, 47.962032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.227932, 39.011715, 48.075825>,  <31.449701, 38.950424, 48.144100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.227932, 39.011715, 48.075825>,  <30.858316, 39.113865, 47.962032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.227932, 39.011715, 48.075825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163935, -0.407567, -0.898340,
		0.345360, 0.876740, -0.334744,
		0.924041, -0.255375, 0.284486,
		31.505144, 38.935104, 48.161171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.288017, 39.087170, 47.333168>,  <30.858316, 39.113865, 47.962032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.288017, 39.087170, 47.333168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.544985, 38.912098, 47.584797>,  <31.699165, 38.807053, 47.735775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.544985, 38.912098, 47.584797>,  <31.288017, 39.087170, 47.333168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.544985, 38.912098, 47.584797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358867, -0.553485, -0.751578,
		0.677133, 0.708582, -0.198500,
		0.642421, -0.437683, 0.629070,
		31.737711, 38.780792, 47.773518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.855917, 39.034557, 47.015339>,  <31.288017, 39.087170, 47.333168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.855917, 39.034557, 47.015339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.881626, 38.735096, 47.279274>,  <31.897051, 38.555420, 47.437634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.881626, 38.735096, 47.279274>,  <31.855917, 39.034557, 47.015339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.881626, 38.735096, 47.279274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336766, -0.606146, -0.720538,
		0.939392, 0.268521, 0.213163,
		0.064272, -0.748654, 0.659838,
		31.900908, 38.510498, 47.477226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.600327, 38.634071, 46.952671>,  <31.855917, 39.034557, 47.015339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.600327, 38.634071, 46.952671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.331577, 38.388321, 47.118141>,  <32.170326, 38.240871, 47.217422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.331577, 38.388321, 47.118141>,  <32.600327, 38.634071, 46.952671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.331577, 38.388321, 47.118141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175643, -0.674752, -0.716839,
		0.719535, -0.408969, 0.561261,
		-0.671877, -0.614372, 0.413675,
		32.130013, 38.204010, 47.242245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.948036, 38.099648, 46.992268>,  <32.600327, 38.634071, 46.952671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.948036, 38.099648, 46.992268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.566246, 37.985916, 47.028328>,  <32.337170, 37.917679, 47.049965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.566246, 37.985916, 47.028328>,  <32.948036, 38.099648, 46.992268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.566246, 37.985916, 47.028328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112827, -0.623938, -0.773286,
		0.276115, -0.727914, 0.627616,
		-0.954479, -0.284328, 0.090150,
		32.279903, 37.900620, 47.055374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.997540, 37.365482, 47.017052>,  <32.948036, 38.099648, 46.992268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.997540, 37.365482, 47.017052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.637848, 37.476044, 46.881413>,  <32.422031, 37.542381, 46.800030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.637848, 37.476044, 46.881413>,  <32.997540, 37.365482, 47.017052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.637848, 37.476044, 46.881413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058311, -0.843933, -0.533271,
		-0.433570, -0.459761, 0.775008,
		-0.899231, 0.276401, -0.339095,
		32.368080, 37.558964, 46.779682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.863380, 36.838604, 46.542267>,  <32.997540, 37.365482, 47.017052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.863380, 36.838604, 46.542267> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.554600, 37.075504, 46.449898>,  <32.369331, 37.217644, 46.394474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.554600, 37.075504, 46.449898>,  <32.863380, 36.838604, 46.542267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.554600, 37.075504, 46.449898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139645, -0.512396, -0.847319,
		-0.620153, -0.621841, 0.478251,
		-0.771952, 0.592253, -0.230926,
		32.323013, 37.253181, 46.380619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.304459, 36.420242, 46.223770>,  <32.863380, 36.838604, 46.542267>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.304459, 36.420242, 46.223770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.229370, 36.795345, 46.106899>,  <32.184315, 37.020409, 46.036777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.229370, 36.795345, 46.106899>,  <32.304459, 36.420242, 46.223770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.229370, 36.795345, 46.106899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119157, -0.317007, -0.940908,
		-0.974967, -0.141817, 0.171251,
		-0.187724, 0.937760, -0.292173,
		32.173054, 37.076672, 46.019249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.798023, 36.444160, 45.697449>,  <32.304459, 36.420242, 46.223770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.798023, 36.444160, 45.697449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.960693, 36.802692, 45.626797>,  <32.058296, 37.017811, 45.584404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.960693, 36.802692, 45.626797>,  <31.798023, 36.444160, 45.697449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.960693, 36.802692, 45.626797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175894, -0.112903, -0.977913,
		-0.896479, 0.428764, 0.111744,
		0.406678, 0.896334, -0.176632,
		32.082695, 37.071594, 45.573807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.302979, 36.923512, 45.392517>,  <31.798023, 36.444160, 45.697449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.302979, 36.923512, 45.392517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.679077, 37.012726, 45.289604>,  <31.904736, 37.066254, 45.227856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.679077, 37.012726, 45.289604>,  <31.302979, 36.923512, 45.392517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.679077, 37.012726, 45.289604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241271, -0.096781, -0.965620,
		-0.240268, 0.969994, -0.037186,
		0.940244, 0.223036, -0.257285,
		31.961151, 37.079636, 45.212418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.196444, 37.288265, 44.794456>,  <31.302979, 36.923512, 45.392517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.196444, 37.288265, 44.794456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.590857, 37.222237, 44.803318>,  <31.827505, 37.182621, 44.808636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.590857, 37.222237, 44.803318>,  <31.196444, 37.288265, 44.794456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.590857, 37.222237, 44.803318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011926, -0.062674, -0.997963,
		0.166119, 0.984289, -0.059830,
		0.986034, -0.165067, 0.022150,
		31.886667, 37.172718, 44.809963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.434534, 37.691822, 44.251183>,  <31.196444, 37.288265, 44.794456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.434534, 37.691822, 44.251183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.731718, 37.431767, 44.314846>,  <31.910028, 37.275734, 44.353043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.731718, 37.431767, 44.314846>,  <31.434534, 37.691822, 44.251183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.731718, 37.431767, 44.314846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063954, -0.167742, -0.983754,
		0.666273, 0.741069, -0.083047,
		0.742960, -0.650138, 0.159156,
		31.954607, 37.236725, 44.362595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.959316, 37.892487, 43.756203>,  <31.434534, 37.691822, 44.251183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.959316, 37.892487, 43.756203> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.010094, 37.508915, 43.857662>,  <32.040562, 37.278770, 43.918537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.010094, 37.508915, 43.857662>,  <31.959316, 37.892487, 43.756203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.010094, 37.508915, 43.857662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024090, -0.252666, -0.967254,
		0.991617, 0.128896, -0.008974,
		0.126943, -0.958929, 0.253653,
		32.048176, 37.221237, 43.933758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.531239, 37.632774, 43.333160>,  <31.959316, 37.892487, 43.756203>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.531239, 37.632774, 43.333160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.296383, 37.327885, 43.442181>,  <32.155468, 37.144951, 43.507591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.296383, 37.327885, 43.442181>,  <32.531239, 37.632774, 43.333160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.296383, 37.327885, 43.442181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001866, -0.337971, -0.941155,
		0.809484, -0.552081, 0.199858,
		-0.587139, -0.762222, 0.272551,
		32.120239, 37.099216, 43.523945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.742783, 37.171082, 42.891727>,  <32.531239, 37.632774, 43.333160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.742783, 37.171082, 42.891727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.430328, 36.971916, 43.042412>,  <32.242855, 36.852417, 43.132824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.430328, 36.971916, 43.042412>,  <32.742783, 37.171082, 42.891727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.430328, 36.971916, 43.042412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142725, -0.444978, -0.884095,
		0.607835, -0.744361, 0.276521,
		-0.781131, -0.497918, 0.376712,
		32.195988, 36.822540, 43.155426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.850246, 36.483120, 42.625874>,  <32.742783, 37.171082, 42.891727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.850246, 36.483120, 42.625874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.482975, 36.445095, 42.779705>,  <32.262611, 36.422279, 42.872005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.482975, 36.445095, 42.779705>,  <32.850246, 36.483120, 42.625874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.482975, 36.445095, 42.779705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254089, -0.603486, -0.755806,
		0.303939, -0.791686, 0.529956,
		-0.918183, -0.095063, 0.384582,
		32.207520, 36.416576, 42.895081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.721367, 35.715977, 42.679546>,  <32.850246, 36.483120, 42.625874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.721367, 35.715977, 42.679546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.396866, 35.943180, 42.624077>,  <32.202164, 36.079502, 42.590794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.396866, 35.943180, 42.624077>,  <32.721367, 35.715977, 42.679546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.396866, 35.943180, 42.624077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176993, -0.464624, -0.867639,
		-0.557259, -0.679332, 0.477462,
		-0.811256, 0.568007, -0.138679,
		32.153488, 36.113583, 42.582474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.195648, 35.258018, 42.439186>,  <32.721367, 35.715977, 42.679546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.195648, 35.258018, 42.439186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.061359, 35.620621, 42.336784>,  <31.980787, 35.838181, 42.275345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.061359, 35.620621, 42.336784>,  <32.195648, 35.258018, 42.439186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.061359, 35.620621, 42.336784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279582, -0.355422, -0.891913,
		-0.899514, -0.227860, 0.372765,
		-0.335721, 0.906507, -0.256001,
		31.960644, 35.892574, 42.259983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.534275, 35.206059, 42.120533>,  <32.195648, 35.258018, 42.439186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.534275, 35.206059, 42.120533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.632637, 35.569695, 41.986023>,  <31.691654, 35.787876, 41.905315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.632637, 35.569695, 41.986023>,  <31.534275, 35.206059, 42.120533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.632637, 35.569695, 41.986023> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345595, -0.241900, -0.906669,
		-0.905590, 0.339172, 0.254693,
		0.245907, 0.909091, -0.336279,
		31.706409, 35.842422, 41.885139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.863699, 35.513443, 41.788162>,  <31.534275, 35.206059, 42.120533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.863699, 35.513443, 41.788162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.193281, 35.699265, 41.658367>,  <31.391029, 35.810757, 41.580490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.193281, 35.699265, 41.658367>,  <30.863699, 35.513443, 41.788162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.193281, 35.699265, 41.658367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376189, 0.020204, -0.926322,
		-0.423770, 0.885315, 0.191407,
		0.823954, 0.464553, -0.324484,
		31.440468, 35.838631, 41.561024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.740335, 36.108418, 41.292114>,  <30.863699, 35.513443, 41.788162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.740335, 36.108418, 41.292114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.106493, 35.978321, 41.197227>,  <31.326187, 35.900265, 41.140297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.106493, 35.978321, 41.197227>,  <30.740335, 36.108418, 41.292114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.106493, 35.978321, 41.197227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252334, -0.004448, -0.967630,
		0.313656, 0.945621, -0.086140,
		0.915395, -0.325239, -0.237217,
		31.381111, 35.880749, 41.126060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.937702, 36.527832, 40.589783>,  <30.740335, 36.108418, 41.292114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.937702, 36.527832, 40.589783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.215061, 36.241501, 40.622753>,  <31.381477, 36.069702, 40.642536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.215061, 36.241501, 40.622753>,  <30.937702, 36.527832, 40.589783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.215061, 36.241501, 40.622753> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047274, -0.068955, -0.996499,
		0.719001, 0.694868, -0.013974,
		0.693399, -0.715824, 0.082428,
		31.423080, 36.026752, 40.647480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.462523, 36.570450, 40.020573>,  <30.937702, 36.527832, 40.589783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.462523, 36.570450, 40.020573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.475885, 36.196011, 40.160633>,  <31.483904, 35.971348, 40.244671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.475885, 36.196011, 40.160633>,  <31.462523, 36.570450, 40.020573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.475885, 36.196011, 40.160633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024581, -0.351011, -0.936049,
		0.999139, 0.022665, -0.034737,
		0.033409, -0.936097, 0.350151,
		31.485909, 35.915180, 40.265678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.942020, 36.266190, 39.620625>,  <31.462523, 36.570450, 40.020573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.942020, 36.266190, 39.620625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.741598, 35.946117, 39.752476>,  <31.621346, 35.754074, 39.831585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.741598, 35.946117, 39.752476>,  <31.942020, 36.266190, 39.620625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.741598, 35.946117, 39.752476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077166, -0.420678, -0.903922,
		0.861968, -0.427479, 0.272530,
		-0.501055, -0.800182, 0.329624,
		31.591282, 35.706062, 39.851364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.346836, 35.748287, 39.456039>,  <31.942020, 36.266190, 39.620625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.346836, 35.748287, 39.456039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.989540, 35.578888, 39.516399>,  <31.775162, 35.477249, 39.552616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.989540, 35.578888, 39.516399>,  <32.346836, 35.748287, 39.456039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.989540, 35.578888, 39.516399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062491, -0.449344, -0.891170,
		0.445218, -0.786598, 0.427837,
		-0.893239, -0.423501, 0.150901,
		31.721569, 35.451839, 39.561668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.393963, 35.152374, 39.124500>,  <32.346836, 35.748287, 39.456039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.393963, 35.152374, 39.124500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.000950, 35.136135, 39.197155>,  <31.765142, 35.126392, 39.240746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.000950, 35.136135, 39.197155>,  <32.393963, 35.152374, 39.124500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.000950, 35.136135, 39.197155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131440, -0.539555, -0.831628,
		0.131766, -0.840971, 0.524791,
		-0.982528, -0.040602, 0.181633,
		31.706192, 35.123955, 39.251644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.170509, 34.425060, 39.115444>,  <32.393963, 35.152374, 39.124500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.170509, 34.425060, 39.115444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.857454, 34.660412, 39.034168>,  <31.669621, 34.801624, 38.985405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.857454, 34.660412, 39.034168>,  <32.170509, 34.425060, 39.115444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.857454, 34.660412, 39.034168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008828, -0.315894, -0.948753,
		-0.622414, -0.744325, 0.242037,
		-0.782638, 0.588380, -0.203188,
		31.622663, 34.836926, 38.973213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.938030, 34.065304, 38.498535>,  <32.170509, 34.425060, 39.115444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.938030, 34.065304, 38.498535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.759481, 34.422710, 38.479019>,  <31.652353, 34.637154, 38.467308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.759481, 34.422710, 38.479019>,  <31.938030, 34.065304, 38.498535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.759481, 34.422710, 38.479019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007671, -0.050701, -0.998684,
		-0.894815, -0.446157, 0.015778,
		-0.446370, 0.893517, -0.048791,
		31.625570, 34.690765, 38.464382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.393440, 34.004883, 38.096703>,  <31.938030, 34.065304, 38.498535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.393440, 34.004883, 38.096703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.430883, 34.402462, 38.073677>,  <31.453350, 34.641010, 38.059860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.430883, 34.402462, 38.073677>,  <31.393440, 34.004883, 38.096703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.430883, 34.402462, 38.073677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042097, -0.061716, -0.997205,
		-0.994719, 0.090924, -0.047619,
		0.093608, 0.993944, -0.057563,
		31.458965, 34.700645, 38.056408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.904997, 34.145088, 37.632206>,  <31.393440, 34.004883, 38.096703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.904997, 34.145088, 37.632206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.155233, 34.456722, 37.648499>,  <31.305376, 34.643703, 37.658276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.155233, 34.456722, 37.648499>,  <30.904997, 34.145088, 37.632206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.155233, 34.456722, 37.648499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036524, 0.022910, -0.999070,
		-0.779295, 0.626498, -0.014123,
		0.625592, 0.779086, 0.040736,
		31.342911, 34.690449, 37.660721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.647968, 34.687443, 37.193497>,  <30.904997, 34.145088, 37.632206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.647968, 34.687443, 37.193497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.031006, 34.784306, 37.255943>,  <31.260828, 34.842422, 37.293411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.031006, 34.784306, 37.255943>,  <30.647968, 34.687443, 37.193497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.031006, 34.784306, 37.255943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163849, -0.011994, -0.986413,
		-0.236998, 0.970162, -0.051163,
		0.957594, 0.242161, 0.156117,
		31.318283, 34.856953, 37.302780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.839619, 35.304321, 36.809273>,  <30.647968, 34.687443, 37.193497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.839619, 35.304321, 36.809273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.186422, 35.110504, 36.855770>,  <31.394505, 34.994213, 36.883667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.186422, 35.110504, 36.855770>,  <30.839619, 35.304321, 36.809273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.186422, 35.110504, 36.855770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181642, 0.090095, -0.979229,
		0.464006, 0.870115, 0.166126,
		0.867009, -0.484543, 0.116245,
		31.446526, 34.965141, 36.890644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.307425, 35.592747, 36.320591>,  <30.839619, 35.304321, 36.809273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.307425, 35.592747, 36.320591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.514475, 35.263630, 36.414471>,  <31.638704, 35.066162, 36.470798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.514475, 35.263630, 36.414471>,  <31.307425, 35.592747, 36.320591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.514475, 35.263630, 36.414471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322387, -0.066529, -0.944267,
		0.792546, 0.564440, 0.230820,
		0.517626, -0.822789, 0.234695,
		31.669764, 35.016792, 36.484879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.009731, 35.691307, 36.022472>,  <31.307425, 35.592747, 36.320591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.009731, 35.691307, 36.022472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.967926, 35.297539, 36.079025>,  <31.942842, 35.061275, 36.112957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.967926, 35.297539, 36.079025>,  <32.009731, 35.691307, 36.022472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.967926, 35.297539, 36.079025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374815, -0.170667, -0.911255,
		0.921190, -0.042244, 0.386813,
		-0.104511, -0.984423, 0.141383,
		31.936573, 35.002213, 36.121441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.608070, 35.372303, 35.786652>,  <32.009731, 35.691307, 36.022472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.608070, 35.372303, 35.786652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.331871, 35.084812, 35.754025>,  <32.166153, 34.912319, 35.734447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.331871, 35.084812, 35.754025>,  <32.608070, 35.372303, 35.786652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.331871, 35.084812, 35.754025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276489, -0.158046, -0.947932,
		0.668410, -0.677095, 0.307849,
		-0.690494, -0.718724, -0.081570,
		32.124722, 34.869194, 35.729553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.806606, 34.680820, 35.776871>,  <32.608070, 35.372303, 35.786652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.806606, 34.680820, 35.776871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.065693, 34.380287, 35.726341>,  <33.221146, 34.199966, 35.696022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.065693, 34.380287, 35.726341>,  <32.806606, 34.680820, 35.776871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.065693, 34.380287, 35.726341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589562, 0.389262, 0.707737,
		-0.482575, -0.532889, 0.695091,
		0.647717, -0.751336, -0.126323,
		33.260010, 34.154888, 35.688446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.020145, 34.230289, 36.417183>,  <32.806606, 34.680820, 35.776871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.020145, 34.230289, 36.417183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.339664, 34.222748, 36.176662>,  <33.531376, 34.218224, 36.032352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.339664, 34.222748, 36.176662>,  <33.020145, 34.230289, 36.417183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.339664, 34.222748, 36.176662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549012, 0.431512, 0.715809,
		0.245972, -0.901910, 0.355044,
		0.798802, -0.018855, -0.601299,
		33.579304, 34.217091, 35.996273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.599724, 33.896061, 36.659286>,  <33.020145, 34.230289, 36.417183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.599724, 33.896061, 36.659286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.788197, 34.139713, 36.404118>,  <33.901279, 34.285904, 36.251015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.788197, 34.139713, 36.404118>,  <33.599724, 33.896061, 36.659286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.788197, 34.139713, 36.404118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539679, 0.372963, 0.754749,
		0.697664, -0.699897, -0.153003,
		0.471182, 0.609133, -0.637922,
		33.929550, 34.322453, 36.212742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.239952, 33.697224, 36.681526>,  <33.599724, 33.896061, 36.659286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.239952, 33.697224, 36.681526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.254112, 34.071266, 36.540485>,  <34.262608, 34.295692, 36.455860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.254112, 34.071266, 36.540485>,  <34.239952, 33.697224, 36.681526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.254112, 34.071266, 36.540485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.698325, 0.229245, 0.678077,
		0.714905, -0.270234, -0.644892,
		0.035401, 0.935104, -0.352600,
		34.264732, 34.351799, 36.434704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.019676, 33.855183, 36.543140>,  <34.239952, 33.697224, 36.681526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.019676, 33.855183, 36.543140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.801670, 34.181431, 36.620834>,  <34.670868, 34.377178, 36.667450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.801670, 34.181431, 36.620834>,  <35.019676, 33.855183, 36.543140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.801670, 34.181431, 36.620834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.633742, 0.249079, 0.732346,
		0.548935, 0.522233, -0.652643,
		-0.545015, 0.815618, 0.194233,
		34.638165, 34.426117, 36.679104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.479538, 34.414253, 36.627583>,  <35.019676, 33.855183, 36.543140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.479538, 34.414253, 36.627583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.142014, 34.541721, 36.800293>,  <34.939499, 34.618202, 36.903919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.142014, 34.541721, 36.800293>,  <35.479538, 34.414253, 36.627583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.142014, 34.541721, 36.800293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519379, 0.282550, 0.806480,
		0.135002, 0.904774, -0.403929,
		-0.843812, 0.318669, 0.431776,
		34.888870, 34.637321, 36.929825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.620136, 34.940323, 37.104496>,  <35.479538, 34.414253, 36.627583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.620136, 34.940323, 37.104496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.243217, 34.898781, 37.231796>,  <35.017067, 34.873856, 37.308178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.243217, 34.898781, 37.231796>,  <35.620136, 34.940323, 37.104496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.243217, 34.898781, 37.231796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286172, 0.243412, 0.926745,
		-0.173717, 0.964346, -0.199646,
		-0.942299, -0.103858, 0.318254,
		34.960529, 34.867622, 37.327274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.501255, 35.522621, 37.457760>,  <35.620136, 34.940323, 37.104496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.501255, 35.522621, 37.457760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.241871, 35.248890, 37.591148>,  <35.086243, 35.084652, 37.671181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.241871, 35.248890, 37.591148>,  <35.501255, 35.522621, 37.457760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.241871, 35.248890, 37.591148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198642, 0.270770, 0.941926,
		-0.734877, 0.677041, -0.039647,
		-0.648457, -0.684324, 0.333471,
		35.047333, 35.043594, 37.691189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.071754, 35.854271, 37.990154>,  <35.501255, 35.522621, 37.457760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.071754, 35.854271, 37.990154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.069485, 35.460953, 38.062916>,  <35.068123, 35.224960, 38.106575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.069485, 35.460953, 38.062916>,  <35.071754, 35.854271, 37.990154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.069485, 35.460953, 38.062916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126400, 0.179745, 0.975559,
		-0.991963, 0.028524, 0.123270,
		-0.005670, -0.983300, 0.181906,
		35.067783, 35.165962, 38.117489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.808784, 35.892441, 38.596985>,  <35.071754, 35.854271, 37.990154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.808784, 35.892441, 38.596985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.937840, 35.514210, 38.580116>,  <35.015274, 35.287270, 38.569996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.937840, 35.514210, 38.580116>,  <34.808784, 35.892441, 38.596985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.937840, 35.514210, 38.580116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074083, -0.019187, 0.997067,
		-0.943618, -0.324818, 0.063861,
		0.322640, -0.945582, -0.042169,
		35.034630, 35.230534, 38.567467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.370117, 35.490791, 39.132061>,  <34.808784, 35.892441, 38.596985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.370117, 35.490791, 39.132061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.683075, 35.252735, 39.058659>,  <34.870850, 35.109901, 39.014618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.683075, 35.252735, 39.058659>,  <34.370117, 35.490791, 39.132061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.683075, 35.252735, 39.058659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062525, -0.218098, 0.973922,
		-0.619639, -0.773463, -0.133427,
		0.782392, -0.595138, -0.183503,
		34.917793, 35.074192, 39.003609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.270508, 34.900082, 39.590755>,  <34.370117, 35.490791, 39.132061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.270508, 34.900082, 39.590755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.656036, 34.948837, 39.495937>,  <34.887352, 34.978092, 39.439049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.656036, 34.948837, 39.495937>,  <34.270508, 34.900082, 39.590755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.656036, 34.948837, 39.495937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254812, -0.160424, 0.953590,
		0.078207, -0.979493, -0.185679,
		0.963822, 0.121890, -0.237041,
		34.945183, 34.985405, 39.424824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.631165, 34.443260, 39.960396>,  <34.270508, 34.900082, 39.590755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.631165, 34.443260, 39.960396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.916096, 34.709190, 39.870419>,  <35.087055, 34.868748, 39.816433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.916096, 34.709190, 39.870419>,  <34.631165, 34.443260, 39.960396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.916096, 34.709190, 39.870419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199174, 0.115847, 0.973092,
		0.672995, -0.737962, -0.049895,
		0.712325, 0.664824, -0.224948,
		35.129795, 34.908638, 39.802933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.270668, 34.302670, 40.180233>,  <34.631165, 34.443260, 39.960396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.270668, 34.302670, 40.180233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.305355, 34.699173, 40.140472>,  <35.326168, 34.937077, 40.116615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.305355, 34.699173, 40.140472>,  <35.270668, 34.302670, 40.180233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.305355, 34.699173, 40.140472> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014626, 0.098499, 0.995030,
		0.996125, -0.087744, -0.005956,
		0.086721, 0.991261, -0.099401,
		35.331371, 34.996552, 40.110653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.650475, 34.540104, 40.732616>,  <35.270668, 34.302670, 40.180233>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.650475, 34.540104, 40.732616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.510635, 34.894943, 40.612061>,  <35.426731, 35.107845, 40.539726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.510635, 34.894943, 40.612061>,  <35.650475, 34.540104, 40.732616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.510635, 34.894943, 40.612061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042974, 0.336537, 0.940689,
		0.935914, 0.315911, -0.155775,
		-0.349598, 0.887098, -0.301394,
		35.405754, 35.161072, 40.521641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.095600, 35.069794, 41.117908>,  <35.650475, 34.540104, 40.732616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.095600, 35.069794, 41.117908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.769547, 35.255554, 40.979404>,  <35.573914, 35.367012, 40.896301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.769547, 35.255554, 40.979404>,  <36.095600, 35.069794, 41.117908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.769547, 35.255554, 40.979404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162538, 0.390366, 0.906198,
		0.556005, 0.794950, -0.242717,
		-0.815132, 0.464400, -0.346255,
		35.525005, 35.394875, 40.875526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.261822, 35.726219, 41.320499>,  <36.095600, 35.069794, 41.117908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.261822, 35.726219, 41.320499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.870476, 35.660755, 41.269878>,  <35.635670, 35.621475, 41.239506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.870476, 35.660755, 41.269878>,  <36.261822, 35.726219, 41.320499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.870476, 35.660755, 41.269878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193517, 0.507644, 0.839553,
		-0.073162, 0.845879, -0.528333,
		-0.978365, -0.163664, -0.126552,
		35.576965, 35.611656, 41.231915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.017567, 36.375412, 41.545509>,  <36.261822, 35.726219, 41.320499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.017567, 36.375412, 41.545509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.733624, 36.095013, 41.572964>,  <35.563259, 35.926773, 41.589436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.733624, 36.095013, 41.572964>,  <36.017567, 36.375412, 41.545509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.733624, 36.095013, 41.572964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318923, 0.406775, 0.856050,
		-0.628007, 0.585782, -0.512315,
		-0.709856, -0.700995, 0.068638,
		35.520668, 35.884716, 41.593555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.409981, 36.729755, 41.611984>,  <36.017567, 36.375412, 41.545509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.409981, 36.729755, 41.611984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.347569, 36.367088, 41.768753>,  <35.310120, 36.149487, 41.862816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.347569, 36.367088, 41.768753>,  <35.409981, 36.729755, 41.611984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.347569, 36.367088, 41.768753> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180882, 0.416300, 0.891054,
		-0.971049, 0.068142, -0.228957,
		-0.156033, -0.906670, 0.391922,
		35.300758, 36.095089, 41.886330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.906364, 36.839260, 42.136673>,  <35.409981, 36.729755, 41.611984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.906364, 36.839260, 42.136673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.002686, 36.464424, 42.237770>,  <35.060478, 36.239521, 42.298428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.002686, 36.464424, 42.237770>,  <34.906364, 36.839260, 42.136673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.002686, 36.464424, 42.237770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124538, 0.228417, 0.965565,
		-0.962552, -0.263983, -0.061701,
		0.240800, -0.937091, 0.252739,
		35.074924, 36.183296, 42.313591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.342300, 36.700901, 42.461689>,  <34.906364, 36.839260, 42.136673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.342300, 36.700901, 42.461689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.584938, 36.413254, 42.597282>,  <34.730522, 36.240665, 42.678638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.584938, 36.413254, 42.597282>,  <34.342300, 36.700901, 42.461689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.584938, 36.413254, 42.597282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104985, 0.350198, 0.930774,
		-0.788048, -0.600192, 0.136932,
		0.606597, -0.719118, 0.338984,
		34.766918, 36.197517, 42.698978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.027611, 36.447487, 43.122761>,  <34.342300, 36.700901, 42.461689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.027611, 36.447487, 43.122761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.419933, 36.369923, 43.130840>,  <34.655327, 36.323383, 43.135689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.419933, 36.369923, 43.130840>,  <34.027611, 36.447487, 43.122761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.419933, 36.369923, 43.130840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055187, 0.375487, 0.925183,
		-0.186988, -0.906315, 0.378983,
		0.980810, -0.193913, 0.020195,
		34.714176, 36.311749, 43.136898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.145119, 35.938648, 43.664009>,  <34.027611, 36.447487, 43.122761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.145119, 35.938648, 43.664009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.464561, 36.166809, 43.587208>,  <34.656227, 36.303703, 43.541126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.464561, 36.166809, 43.587208>,  <34.145119, 35.938648, 43.664009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.464561, 36.166809, 43.587208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069788, 0.404631, 0.911813,
		0.597788, -0.714785, 0.362950,
		0.798611, 0.570401, -0.192000,
		34.704144, 36.337929, 43.529610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.537060, 35.910065, 44.253895>,  <34.145119, 35.938648, 43.664009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.537060, 35.910065, 44.253895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.649807, 36.232147, 44.045208>,  <34.717457, 36.425396, 43.919994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.649807, 36.232147, 44.045208>,  <34.537060, 35.910065, 44.253895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.649807, 36.232147, 44.045208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041327, 0.533071, 0.845060,
		0.958563, -0.259755, 0.116978,
		0.281866, 0.805209, -0.521717,
		34.734367, 36.473709, 43.888691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.072433, 36.331940, 44.740139>,  <34.537060, 35.910065, 44.253895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.072433, 36.331940, 44.740139> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.967773, 36.596561, 44.459030>,  <34.904980, 36.755333, 44.290363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.967773, 36.596561, 44.459030>,  <35.072433, 36.331940, 44.740139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.967773, 36.596561, 44.459030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110692, 0.743904, 0.659055,
		0.958795, 0.094649, -0.267869,
		-0.261648, 0.661550, -0.702775,
		34.889278, 36.795025, 44.248199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.565262, 36.854481, 44.716530>,  <35.072433, 36.331940, 44.740139>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.565262, 36.854481, 44.716530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.248302, 37.034351, 44.551655>,  <35.058128, 37.142273, 44.452732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.248302, 37.034351, 44.551655>,  <35.565262, 36.854481, 44.716530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.248302, 37.034351, 44.551655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156636, 0.803046, 0.574962,
		0.589549, 0.391037, -0.706768,
		-0.792400, 0.449674, -0.412185,
		35.010582, 37.169254, 44.427998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.742790, 37.542744, 44.478176>,  <35.565262, 36.854481, 44.716530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.742790, 37.542744, 44.478176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.348339, 37.559570, 44.542393>,  <35.111668, 37.569668, 44.580925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.348339, 37.559570, 44.542393>,  <35.742790, 37.542744, 44.478176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.348339, 37.559570, 44.542393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129411, 0.800544, 0.585134,
		-0.103908, 0.597796, -0.794886,
		-0.986132, 0.042067, 0.160545,
		35.052498, 37.572189, 44.590557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.569836, 38.169106, 44.638420>,  <35.742790, 37.542744, 44.478176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.569836, 38.169106, 44.638420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.226460, 38.000862, 44.755844>,  <35.020435, 37.899918, 44.826298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.226460, 38.000862, 44.755844>,  <35.569836, 38.169106, 44.638420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.226460, 38.000862, 44.755844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042539, 0.628738, 0.776453,
		-0.511152, 0.654048, -0.557624,
		-0.858437, -0.420606, 0.293558,
		34.968929, 37.874680, 44.843910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.091576, 38.729675, 44.764328>,  <35.569836, 38.169106, 44.638420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.091576, 38.729675, 44.764328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.977890, 38.420670, 44.991467>,  <34.909679, 38.235268, 45.127750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.977890, 38.420670, 44.991467>,  <35.091576, 38.729675, 44.764328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.977890, 38.420670, 44.991467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018128, 0.587834, 0.808779,
		-0.958591, 0.240157, -0.153064,
		-0.284210, -0.772513, 0.567846,
		34.892628, 38.188915, 45.161819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.693645, 39.060390, 45.292641>,  <35.091576, 38.729675, 44.764328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.693645, 39.060390, 45.292641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.762348, 38.704514, 45.461853>,  <34.803570, 38.490990, 45.563381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.762348, 38.704514, 45.461853>,  <34.693645, 39.060390, 45.292641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.762348, 38.704514, 45.461853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128518, 0.445978, 0.885769,
		-0.976720, -0.097769, 0.190941,
		0.171756, -0.889688, 0.423031,
		34.813873, 38.437607, 45.588760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.314632, 39.053677, 45.912891>,  <34.693645, 39.060390, 45.292641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.314632, 39.053677, 45.912891> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.597599, 38.775669, 45.964275>,  <34.767380, 38.608864, 45.995106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.597599, 38.775669, 45.964275>,  <34.314632, 39.053677, 45.912891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.597599, 38.775669, 45.964275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255047, 0.420527, 0.870694,
		-0.659173, -0.583182, 0.474752,
		0.707419, -0.695023, 0.128461,
		34.809826, 38.567162, 46.002815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.208248, 38.903027, 46.580345>,  <34.314632, 39.053677, 45.912891>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.208248, 38.903027, 46.580345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.573929, 38.798576, 46.456379>,  <34.793339, 38.735905, 46.382000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.573929, 38.798576, 46.456379>,  <34.208248, 38.903027, 46.580345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.573929, 38.798576, 46.456379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395412, 0.407159, 0.823329,
		-0.088808, -0.875233, 0.475478,
		0.914201, -0.261128, -0.309918,
		34.848190, 38.720238, 46.363403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.575699, 38.639790, 47.216713>,  <34.208248, 38.903027, 46.580345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.575699, 38.639790, 47.216713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.849857, 38.694439, 46.930618>,  <35.014351, 38.727230, 46.758961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.849857, 38.694439, 46.930618>,  <34.575699, 38.639790, 47.216713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.849857, 38.694439, 46.930618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.573021, 0.504888, 0.645550,
		0.449312, -0.852304, 0.267760,
		0.685394, 0.136621, -0.715241,
		35.055477, 38.735424, 46.716045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.222504, 38.471107, 47.558117>,  <34.575699, 38.639790, 47.216713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.222504, 38.471107, 47.558117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.270058, 38.706249, 47.238045>,  <35.298592, 38.847336, 47.046001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.270058, 38.706249, 47.238045>,  <35.222504, 38.471107, 47.558117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.270058, 38.706249, 47.238045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331268, 0.736238, 0.590098,
		0.936017, -0.335229, -0.107209,
		0.118886, 0.587856, -0.800182,
		35.305725, 38.882607, 46.997990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.846066, 38.771786, 47.661957>,  <35.222504, 38.471107, 47.558117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.846066, 38.771786, 47.661957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.708782, 39.007328, 47.369259>,  <35.626411, 39.148655, 47.193638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.708782, 39.007328, 47.369259>,  <35.846066, 38.771786, 47.661957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.708782, 39.007328, 47.369259> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488914, 0.777206, 0.396124,
		0.801979, -0.221808, -0.554645,
		-0.343210, 0.588857, -0.731748,
		35.605820, 39.183987, 47.149734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.411064, 39.024311, 47.429581>,  <35.846066, 38.771786, 47.661957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.411064, 39.024311, 47.429581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.114319, 39.268902, 47.319504>,  <35.936272, 39.415657, 47.253456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.114319, 39.268902, 47.319504>,  <36.411064, 39.024311, 47.429581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.114319, 39.268902, 47.319504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472474, 0.767890, 0.432566,
		0.475822, 0.190884, -0.858578,
		-0.741864, 0.611480, -0.275191,
		35.891758, 39.452347, 47.236946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.654346, 39.753433, 47.438217>,  <36.411064, 39.024311, 47.429581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.654346, 39.753433, 47.438217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.259697, 39.818409, 47.443584>,  <36.022907, 39.857395, 47.446804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.259697, 39.818409, 47.443584>,  <36.654346, 39.753433, 47.438217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.259697, 39.818409, 47.443584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146529, 0.847893, 0.509516,
		0.071392, 0.504668, -0.860357,
		-0.986627, 0.162443, 0.013416,
		35.963711, 39.867142, 47.447609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.487213, 40.451607, 47.186996>,  <36.654346, 39.753433, 47.438217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.487213, 40.451607, 47.186996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.186737, 40.328247, 47.420441>,  <36.006451, 40.254230, 47.560509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.186737, 40.328247, 47.420441>,  <36.487213, 40.451607, 47.186996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.186737, 40.328247, 47.420441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204522, 0.731893, 0.650002,
		-0.627599, 0.607638, -0.486718,
		-0.751192, -0.308396, 0.583611,
		35.961380, 40.235729, 47.595524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.036674, 40.983021, 47.304916>,  <36.487213, 40.451607, 47.186996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.036674, 40.983021, 47.304916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.057457, 40.721279, 47.606678>,  <36.069927, 40.564236, 47.787735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.057457, 40.721279, 47.606678>,  <36.036674, 40.983021, 47.304916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.057457, 40.721279, 47.606678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019049, 0.754634, 0.655870,
		-0.998468, -0.048447, 0.026743,
		0.051956, -0.654355, 0.754400,
		36.073044, 40.524971, 47.832996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.498653, 41.254566, 47.786808>,  <36.036674, 40.983021, 47.304916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.498653, 41.254566, 47.786808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.719894, 41.587109, 47.808456>,  <36.852638, 41.786633, 47.821445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.719894, 41.587109, 47.808456>,  <36.498653, 41.254566, 47.786808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.719894, 41.587109, 47.808456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091318, 0.004077, -0.995813,
		-0.828094, 0.555728, -0.073662,
		0.553101, 0.831354, 0.054124,
		36.885826, 41.836514, 47.824692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.251553, 41.730450, 47.305580>,  <36.498653, 41.254566, 47.786808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.251553, 41.730450, 47.305580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.642178, 41.801041, 47.354877>,  <36.876553, 41.843395, 47.384457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.642178, 41.801041, 47.354877>,  <36.251553, 41.730450, 47.305580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.642178, 41.801041, 47.354877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178730, -0.345712, -0.921162,
		-0.119955, 0.921596, -0.369150,
		0.976559, 0.176476, 0.123247,
		36.935146, 41.853985, 47.391853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.393002, 42.190254, 46.754894>,  <36.251553, 41.730450, 47.305580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.393002, 42.190254, 46.754894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.743279, 42.027000, 46.858116>,  <36.953445, 41.929047, 46.920052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.743279, 42.027000, 46.858116>,  <36.393002, 42.190254, 46.754894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.743279, 42.027000, 46.858116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238681, -0.098722, -0.966067,
		0.419761, 0.907568, 0.010964,
		0.875690, -0.408134, 0.258059,
		37.005985, 41.904560, 46.935535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.789124, 42.294342, 46.187057>,  <36.393002, 42.190254, 46.754894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.789124, 42.294342, 46.187057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.013241, 42.026867, 46.382576>,  <37.147713, 41.866383, 46.499886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.013241, 42.026867, 46.382576>,  <36.789124, 42.294342, 46.187057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.013241, 42.026867, 46.382576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483436, -0.215178, -0.848521,
		0.672577, 0.711723, 0.202707,
		0.560294, -0.668692, 0.488796,
		37.181328, 41.826260, 46.529217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.366665, 42.522717, 45.901310>,  <36.789124, 42.294342, 46.187057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.366665, 42.522717, 45.901310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.458710, 42.162914, 46.049870>,  <37.513935, 41.947033, 46.139004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.458710, 42.162914, 46.049870>,  <37.366665, 42.522717, 45.901310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.458710, 42.162914, 46.049870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539167, -0.199869, -0.818139,
		0.810153, 0.388509, 0.438992,
		0.230113, -0.899507, 0.371395,
		37.527744, 41.893063, 46.161289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.028442, 42.392185, 45.651894>,  <37.366665, 42.522717, 45.901310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.028442, 42.392185, 45.651894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.903748, 42.029686, 45.766109>,  <37.828930, 41.812187, 45.834641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.903748, 42.029686, 45.766109>,  <38.028442, 42.392185, 45.651894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.903748, 42.029686, 45.766109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381073, -0.394535, -0.836137,
		0.870404, -0.151842, 0.468338,
		-0.311737, -0.906249, 0.285542,
		37.810226, 41.757812, 45.851772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.572983, 41.822468, 45.575287>,  <38.028442, 42.392185, 45.651894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.572983, 41.822468, 45.575287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.209915, 41.655430, 45.558556>,  <37.992073, 41.555206, 45.548519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.209915, 41.655430, 45.558556>,  <38.572983, 41.822468, 45.575287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.209915, 41.655430, 45.558556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252255, -0.463199, -0.849597,
		0.335417, -0.781703, 0.525772,
		-0.907669, -0.417598, -0.041823,
		37.937614, 41.530151, 45.546009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.733925, 41.149418, 45.260323>,  <38.572983, 41.822468, 45.575287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.733925, 41.149418, 45.260323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.335217, 41.118793, 45.250599>,  <38.095993, 41.100418, 45.244766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.335217, 41.118793, 45.250599>,  <38.733925, 41.149418, 45.260323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.335217, 41.118793, 45.250599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057024, -0.461330, -0.885394,
		0.056576, -0.883919, 0.464205,
		-0.996768, -0.076563, -0.024305,
		38.036186, 41.095825, 45.243309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.499535, 40.431385, 45.228481>,  <38.733925, 41.149418, 45.260323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.499535, 40.431385, 45.228481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.184967, 40.629440, 45.080757>,  <37.996227, 40.748272, 44.992123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.184967, 40.629440, 45.080757>,  <38.499535, 40.431385, 45.228481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.184967, 40.629440, 45.080757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036830, -0.559237, -0.828189,
		-0.616601, -0.664901, 0.421556,
		-0.786413, 0.495137, -0.369315,
		37.949043, 40.777981, 44.969963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.069996, 39.875122, 44.971539>,  <38.499535, 40.431385, 45.228481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.069996, 39.875122, 44.971539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.935802, 40.208282, 44.795483>,  <37.855286, 40.408180, 44.689850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.935802, 40.208282, 44.795483>,  <38.069996, 39.875122, 44.971539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.935802, 40.208282, 44.795483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079599, -0.440487, -0.894223,
		-0.938677, -0.335032, 0.081478,
		-0.335483, 0.832901, -0.440144,
		37.835159, 40.458153, 44.663441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.367847, 39.726837, 44.685371>,  <38.069996, 39.875122, 44.971539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.367847, 39.726837, 44.685371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.535152, 40.036297, 44.494991>,  <37.635536, 40.221973, 44.380764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.535152, 40.036297, 44.494991>,  <37.367847, 39.726837, 44.685371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.535152, 40.036297, 44.494991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092478, -0.484991, -0.869616,
		-0.903606, 0.407743, -0.131309,
		0.418263, 0.773647, -0.475947,
		37.660633, 40.268391, 44.352207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.887875, 40.038582, 44.195511>,  <37.367847, 39.726837, 44.685371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.887875, 40.038582, 44.195511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.265327, 40.113968, 44.086674>,  <37.491798, 40.159199, 44.021374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.265327, 40.113968, 44.086674>,  <36.887875, 40.038582, 44.195511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.265327, 40.113968, 44.086674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149822, -0.489806, -0.858862,
		-0.295132, 0.851218, -0.433963,
		0.943637, 0.188460, -0.272089,
		37.548420, 40.170506, 44.005047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.986019, 40.232819, 43.416130>,  <36.887875, 40.038582, 44.195511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.986019, 40.232819, 43.416130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.313423, 40.060680, 43.568363>,  <37.509865, 39.957397, 43.659702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.313423, 40.060680, 43.568363>,  <36.986019, 40.232819, 43.416130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.313423, 40.060680, 43.568363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006119, -0.668962, -0.743271,
		0.574458, 0.606047, -0.550186,
		0.818511, -0.430345, 0.380583,
		37.558975, 39.931576, 43.682537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.608746, 40.238010, 42.878277>,  <36.986019, 40.232819, 43.416130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.608746, 40.238010, 42.878277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.659531, 39.927547, 43.125324>,  <37.690002, 39.741268, 43.273552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.659531, 39.927547, 43.125324>,  <37.608746, 40.238010, 42.878277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.659531, 39.927547, 43.125324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131306, -0.604030, -0.786071,
		0.983178, 0.180900, 0.025224,
		0.126964, -0.776160, 0.617622,
		37.697620, 39.694698, 43.310612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.008034, 39.896961, 42.525673>,  <37.608746, 40.238010, 42.878277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.008034, 39.896961, 42.525673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.877724, 39.642529, 42.805462>,  <37.799538, 39.489868, 42.973335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.877724, 39.642529, 42.805462>,  <38.008034, 39.896961, 42.525673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.877724, 39.642529, 42.805462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060696, -0.752380, -0.655927,
		0.943497, -0.171229, 0.283714,
		-0.325775, -0.636085, 0.699476,
		37.779991, 39.451702, 43.015305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.470715, 39.383724, 42.604576>,  <38.008034, 39.896961, 42.525673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.470715, 39.383724, 42.604576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.133987, 39.206009, 42.727184>,  <37.931950, 39.099380, 42.800747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.133987, 39.206009, 42.727184>,  <38.470715, 39.383724, 42.604576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.133987, 39.206009, 42.727184> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123195, -0.711034, -0.692282,
		0.525516, -0.545014, 0.653294,
		-0.841817, -0.444287, 0.306517,
		37.881443, 39.072723, 42.819138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.570450, 38.726555, 42.590755>,  <38.470715, 39.383724, 42.604576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.570450, 38.726555, 42.590755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.170906, 38.745129, 42.586353>,  <37.931179, 38.756271, 42.583714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.170906, 38.745129, 42.586353>,  <38.570450, 38.726555, 42.590755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.170906, 38.745129, 42.586353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032246, -0.826761, -0.561629,
		-0.035173, -0.560634, 0.827316,
		-0.998861, 0.046432, -0.011001,
		37.871246, 38.759060, 42.583054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.326202, 38.129044, 42.661057>,  <38.570450, 38.726555, 42.590755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.326202, 38.129044, 42.661057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.999779, 38.299370, 42.504738>,  <37.803925, 38.401566, 42.410946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.999779, 38.299370, 42.504738>,  <38.326202, 38.129044, 42.661057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.999779, 38.299370, 42.504738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170672, -0.823550, -0.540958,
		-0.552189, -0.374758, 0.744744,
		-0.816062, 0.425818, -0.390795,
		37.754959, 38.427116, 42.387501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.870926, 37.579990, 42.752922>,  <38.326202, 38.129044, 42.661057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.870926, 37.579990, 42.752922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.708595, 37.816792, 42.474403>,  <37.611195, 37.958874, 42.307293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.708595, 37.816792, 42.474403>,  <37.870926, 37.579990, 42.752922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.708595, 37.816792, 42.474403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200680, -0.800986, -0.564047,
		-0.891645, -0.089172, 0.443866,
		-0.405828, 0.592004, -0.696301,
		37.586845, 37.994392, 42.265514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.172005, 37.330326, 42.564262>,  <37.870926, 37.579990, 42.752922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.172005, 37.330326, 42.564262> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.289997, 37.544792, 42.247906>,  <37.360794, 37.673470, 42.058090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.289997, 37.544792, 42.247906>,  <37.172005, 37.330326, 42.564262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.289997, 37.544792, 42.247906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191185, -0.777870, -0.598637,
		-0.936181, 0.327794, -0.126952,
		0.294982, 0.536161, -0.790896,
		37.378490, 37.705639, 42.010635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.525738, 37.435966, 42.037724>,  <37.172005, 37.330326, 42.564262>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.525738, 37.435966, 42.037724> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.883373, 37.470085, 41.861843>,  <37.097954, 37.490555, 41.756313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.883373, 37.470085, 41.861843>,  <36.525738, 37.435966, 42.037724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.883373, 37.470085, 41.861843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340970, -0.506958, -0.791665,
		-0.290433, 0.857741, -0.424181,
		0.894085, 0.085293, -0.439701,
		37.151600, 37.495674, 41.729931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.363037, 37.569016, 41.354267>,  <36.525738, 37.435966, 42.037724>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.363037, 37.569016, 41.354267> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.750931, 37.480633, 41.312721>,  <36.983669, 37.427605, 41.287792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.750931, 37.480633, 41.312721>,  <36.363037, 37.569016, 41.354267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.750931, 37.480633, 41.312721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168624, -0.298453, -0.939410,
		0.176569, 0.928495, -0.326679,
		0.969737, -0.220956, -0.103869,
		37.041851, 37.414345, 41.281559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.607101, 37.898350, 40.710617>,  <36.363037, 37.569016, 41.354267>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.607101, 37.898350, 40.710617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.869873, 37.605152, 40.781223>,  <37.027538, 37.429234, 40.823589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.869873, 37.605152, 40.781223>,  <36.607101, 37.898350, 40.710617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.869873, 37.605152, 40.781223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055075, -0.186845, -0.980844,
		0.751934, 0.654071, -0.082375,
		0.656933, -0.732994, 0.176518,
		37.066952, 37.385254, 40.834179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.129475, 38.007019, 40.190365>,  <36.607101, 37.898350, 40.710617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.129475, 38.007019, 40.190365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.159229, 37.627483, 40.313114>,  <37.177082, 37.399761, 40.386765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.159229, 37.627483, 40.313114>,  <37.129475, 38.007019, 40.190365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.159229, 37.627483, 40.313114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096505, -0.299437, -0.949223,
		0.992549, 0.100221, 0.069295,
		0.074382, -0.948838, 0.306878,
		37.181545, 37.342831, 40.405178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.542187, 37.704300, 39.654072>,  <37.129475, 38.007019, 40.190365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.542187, 37.704300, 39.654072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.390518, 37.389023, 39.847969>,  <37.299519, 37.199856, 39.964310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.390518, 37.389023, 39.847969>,  <37.542187, 37.704300, 39.654072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.390518, 37.389023, 39.847969> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171393, -0.574622, -0.800271,
		0.909316, -0.220355, 0.352970,
		-0.379168, -0.788196, 0.484746,
		37.276768, 37.152565, 39.993393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.994347, 37.204510, 39.501400>,  <37.542187, 37.704300, 39.654072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.994347, 37.204510, 39.501400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.662704, 37.014545, 39.619408>,  <37.463718, 36.900566, 39.690212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.662704, 37.014545, 39.619408>,  <37.994347, 37.204510, 39.501400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.662704, 37.014545, 39.619408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084251, -0.627784, -0.773815,
		0.552704, -0.616720, 0.560513,
		-0.829108, -0.474914, 0.295020,
		37.413971, 36.872070, 39.707912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.147514, 36.470921, 39.622288>,  <37.994347, 37.204510, 39.501400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.147514, 36.470921, 39.622288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.748161, 36.463608, 39.600773>,  <37.508549, 36.459221, 39.587864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.748161, 36.463608, 39.600773>,  <38.147514, 36.470921, 39.622288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.748161, 36.463608, 39.600773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049208, -0.751490, -0.657907,
		-0.028389, -0.659491, 0.751176,
		-0.998385, -0.018287, -0.053787,
		37.448647, 36.458122, 39.584637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.850574, 35.730724, 39.761993>,  <38.147514, 36.470921, 39.622288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.850574, 35.730724, 39.761993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.610394, 35.942608, 39.522369>,  <37.466286, 36.069736, 39.378593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.610394, 35.942608, 39.522369>,  <37.850574, 35.730724, 39.761993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.610394, 35.942608, 39.522369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207037, -0.620617, -0.756287,
		-0.772397, -0.578139, 0.262979,
		-0.600448, 0.529708, -0.599059,
		37.430260, 36.101521, 39.342651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.452244, 35.163597, 39.410828>,  <37.850574, 35.730724, 39.761993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.452244, 35.163597, 39.410828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.419174, 35.500488, 39.197727>,  <37.399330, 35.702621, 39.069866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.419174, 35.500488, 39.197727>,  <37.452244, 35.163597, 39.410828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.419174, 35.500488, 39.197727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061082, -0.529292, -0.846238,
		-0.994703, -0.102507, -0.007684,
		-0.082678, 0.842225, -0.532749,
		37.394371, 35.753155, 39.037903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.946014, 35.037212, 38.889057>,  <37.452244, 35.163597, 39.410828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.946014, 35.037212, 38.889057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.120029, 35.357788, 38.724892>,  <37.224438, 35.550133, 38.626392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.120029, 35.357788, 38.724892>,  <36.946014, 35.037212, 38.889057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.120029, 35.357788, 38.724892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125654, -0.397315, -0.909039,
		-0.891601, 0.447038, -0.072144,
		0.435039, 0.801435, -0.410418,
		37.250542, 35.598217, 38.601765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.471203, 35.330650, 38.385284>,  <36.946014, 35.037212, 38.889057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.471203, 35.330650, 38.385284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.844360, 35.447052, 38.300411>,  <37.068256, 35.516891, 38.249489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.844360, 35.447052, 38.300411>,  <36.471203, 35.330650, 38.385284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.844360, 35.447052, 38.300411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101029, -0.354049, -0.929754,
		-0.345683, 0.888801, -0.300891,
		0.932897, 0.291001, -0.212183,
		37.124229, 35.534351, 38.236755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.464382, 35.296944, 37.695580>,  <36.471203, 35.330650, 38.385284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.464382, 35.296944, 37.695580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.856209, 35.353615, 37.752678>,  <37.091305, 35.387619, 37.786938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.856209, 35.353615, 37.752678>,  <36.464382, 35.296944, 37.695580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.856209, 35.353615, 37.752678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174843, -0.249142, -0.952553,
		-0.099391, 0.958048, -0.268822,
		0.979567, 0.141677, 0.142746,
		37.150078, 35.396118, 37.795502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.754955, 35.707573, 37.076134>,  <36.464382, 35.296944, 37.695580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.754955, 35.707573, 37.076134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.062832, 35.502483, 37.228283>,  <37.247559, 35.379429, 37.319572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.062832, 35.502483, 37.228283>,  <36.754955, 35.707573, 37.076134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.062832, 35.502483, 37.228283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254615, -0.299840, -0.919384,
		0.585446, 0.804491, -0.100236,
		0.769691, -0.512729, 0.380376,
		37.293739, 35.348663, 37.342396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.369347, 35.822910, 36.603832>,  <36.754955, 35.707573, 37.076134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.369347, 35.822910, 36.603832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.457500, 35.501732, 36.825359>,  <37.510395, 35.309025, 36.958275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.457500, 35.501732, 36.825359>,  <37.369347, 35.822910, 36.603832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.457500, 35.501732, 36.825359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.550745, -0.366176, -0.750064,
		0.805053, 0.470315, 0.361516,
		0.220387, -0.802944, 0.553815,
		37.523617, 35.260849, 36.991505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.112968, 35.758026, 36.578156>,  <37.369347, 35.822910, 36.603832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.112968, 35.758026, 36.578156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.954006, 35.402084, 36.667801>,  <37.858627, 35.188519, 36.721588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.954006, 35.402084, 36.667801>,  <38.112968, 35.758026, 36.578156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.954006, 35.402084, 36.667801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317810, -0.362577, -0.876091,
		0.860849, -0.276943, 0.426896,
		-0.397410, -0.889854, 0.224109,
		37.834782, 35.135128, 36.735035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.547955, 35.344860, 36.231880>,  <38.112968, 35.758026, 36.578156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.547955, 35.344860, 36.231880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.248276, 35.094231, 36.317772>,  <38.068470, 34.943851, 36.369308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.248276, 35.094231, 36.317772>,  <38.547955, 35.344860, 36.231880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.248276, 35.094231, 36.317772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345157, -0.646022, -0.680824,
		0.565310, -0.435954, 0.700264,
		-0.749194, -0.626578, 0.214730,
		38.023518, 34.906258, 36.382191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.827114, 34.643173, 36.449837>,  <38.547955, 35.344860, 36.231880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.827114, 34.643173, 36.449837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.452385, 34.601021, 36.316414>,  <38.227547, 34.575729, 36.236362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.452385, 34.601021, 36.316414>,  <38.827114, 34.643173, 36.449837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.452385, 34.601021, 36.316414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327379, -0.600042, -0.729913,
		-0.123230, -0.792998, 0.596631,
		-0.936823, -0.105377, -0.333554,
		38.171337, 34.569408, 36.216347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.656464, 33.895554, 36.397831>,  <38.827114, 34.643173, 36.449837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.656464, 33.895554, 36.397831> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.405411, 34.085094, 36.150753>,  <38.254780, 34.198818, 36.002506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.405411, 34.085094, 36.150753>,  <38.656464, 33.895554, 36.397831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.405411, 34.085094, 36.150753> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505399, -0.355513, -0.786246,
		-0.592161, -0.805654, -0.016351,
		-0.627629, 0.473848, -0.617698,
		38.217121, 34.227249, 35.965443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.545296, 33.448555, 35.849045>,  <38.656464, 33.895554, 36.397831>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.545296, 33.448555, 35.849045> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.435768, 33.789799, 35.671402>,  <38.370052, 33.994545, 35.564816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.435768, 33.789799, 35.671402>,  <38.545296, 33.448555, 35.849045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.435768, 33.789799, 35.671402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436002, -0.301478, -0.847947,
		-0.857280, -0.425810, -0.289408,
		-0.273814, 0.853110, -0.444105,
		38.353622, 34.045731, 35.538170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.192600, 33.242783, 35.294121>,  <38.545296, 33.448555, 35.849045>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.192600, 33.242783, 35.294121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.303440, 33.618958, 35.215343>,  <38.369946, 33.844662, 35.168076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.303440, 33.618958, 35.215343>,  <38.192600, 33.242783, 35.294121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.303440, 33.618958, 35.215343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441646, -0.306697, -0.843141,
		-0.853325, 0.146656, -0.500327,
		0.277101, 0.940441, -0.196942,
		38.386570, 33.901089, 35.156261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.039894, 33.550613, 34.512344>,  <38.192600, 33.242783, 35.294121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.039894, 33.550613, 34.512344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.384621, 33.659351, 34.683636>,  <38.591457, 33.724594, 34.786411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.384621, 33.659351, 34.683636>,  <38.039894, 33.550613, 34.512344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.384621, 33.659351, 34.683636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485336, -0.196627, -0.851931,
		-0.147392, 0.942040, -0.301392,
		0.861815, 0.271844, 0.428225,
		38.643166, 33.740906, 34.812103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.380486, 34.031879, 34.049603>,  <38.039894, 33.550613, 34.512344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.380486, 34.031879, 34.049603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.647903, 33.831261, 34.269238>,  <38.808353, 33.710892, 34.401020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.647903, 33.831261, 34.269238>,  <38.380486, 34.031879, 34.049603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.647903, 33.831261, 34.269238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.624566, -0.022135, -0.780658,
		0.403688, 0.864849, 0.298449,
		0.668545, -0.501544, 0.549091,
		38.848469, 33.680798, 34.433964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.028168, 34.365387, 33.978329>,  <38.380486, 34.031879, 34.049603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.028168, 34.365387, 33.978329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.084705, 33.983150, 34.081760>,  <39.118626, 33.753807, 34.143818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.084705, 33.983150, 34.081760>,  <39.028168, 34.365387, 33.978329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.084705, 33.983150, 34.081760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.600433, -0.124923, -0.789857,
		0.787085, 0.266898, 0.556114,
		0.141340, -0.955594, 0.258579,
		39.127106, 33.696472, 34.159332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.780426, 34.139427, 33.901894>,  <39.028168, 34.365387, 33.978329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.780426, 34.139427, 33.901894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.580105, 33.795383, 33.863083>,  <39.459911, 33.588959, 33.839794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.580105, 33.795383, 33.863083>,  <39.780426, 34.139427, 33.901894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.580105, 33.795383, 33.863083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.613784, -0.273845, -0.740458,
		0.610303, -0.430376, 0.665062,
		-0.500799, -0.860108, -0.097029,
		39.429867, 33.537350, 33.833973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.351364, 33.898819, 34.003361>,  <39.780426, 34.139427, 33.901894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.351364, 33.898819, 34.003361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.383076, 34.196148, 33.737675>,  <40.402103, 34.374546, 33.578262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.383076, 34.196148, 33.737675>,  <40.351364, 33.898819, 34.003361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.383076, 34.196148, 33.737675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363496, 0.598878, 0.713593,
		0.928216, -0.298012, -0.222717,
		0.079279, 0.743326, -0.664215,
		40.406860, 34.419147, 33.538410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.961681, 34.336884, 34.273960>,  <40.351364, 33.898819, 34.003361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.961681, 34.336884, 34.273960> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.104218, 33.993011, 34.420368>,  <41.189739, 33.786690, 34.508213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.104218, 33.993011, 34.420368>,  <40.961681, 34.336884, 34.273960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.104218, 33.993011, 34.420368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286836, -0.272173, -0.918503,
		0.889239, 0.432290, 0.149600,
		0.356342, -0.859679, 0.366023,
		41.211121, 33.735107, 34.530174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.697311, 34.358719, 34.386429>,  <40.961681, 34.336884, 34.273960>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.697311, 34.358719, 34.386429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.089138, 34.282955, 34.359375>,  <42.324234, 34.237499, 34.343143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.089138, 34.282955, 34.359375>,  <41.697311, 34.358719, 34.386429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.089138, 34.282955, 34.359375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022732, 0.229853, -0.972960,
		0.199829, 0.954617, 0.220851,
		0.979567, -0.189405, -0.067632,
		42.383007, 34.226135, 34.339085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.850471, 35.009991, 34.006271>,  <41.697311, 34.358719, 34.386429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.850471, 35.009991, 34.006271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.103725, 34.700623, 33.993805>,  <42.255676, 34.515003, 33.986324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.103725, 34.700623, 33.993805>,  <41.850471, 35.009991, 34.006271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.103725, 34.700623, 33.993805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120729, 0.138447, -0.982984,
		0.764571, 0.618594, 0.181029,
		0.633131, -0.773417, -0.031170,
		42.293663, 34.468597, 33.984455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.360062, 35.313053, 33.675629>,  <41.850471, 35.009991, 34.006271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.360062, 35.313053, 33.675629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.409573, 34.919613, 33.623165>,  <42.439281, 34.683548, 33.591686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.409573, 34.919613, 33.623165>,  <42.360062, 35.313053, 33.675629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.409573, 34.919613, 33.623165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098233, 0.143669, -0.984738,
		0.987435, 0.109009, 0.114405,
		0.123782, -0.983604, -0.131156,
		42.446709, 34.624531, 33.583817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.938370, 35.258816, 33.359287>,  <42.360062, 35.313053, 33.675629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.938370, 35.258816, 33.359287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.752972, 34.921268, 33.251175>,  <42.641731, 34.718739, 33.186306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.752972, 34.921268, 33.251175>,  <42.938370, 35.258816, 33.359287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.752972, 34.921268, 33.251175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172848, 0.213060, -0.961629,
		0.869078, -0.492428, 0.047109,
		-0.463495, -0.843872, -0.270280,
		42.613922, 34.668106, 33.170090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.410114, 34.967121, 32.797588>,  <42.938370, 35.258816, 33.359287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.410114, 34.967121, 32.797588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.072384, 34.755035, 32.766636>,  <42.869747, 34.627785, 32.748066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.072384, 34.755035, 32.766636>,  <43.410114, 34.967121, 32.797588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.072384, 34.755035, 32.766636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098858, -0.012205, -0.995027,
		0.526630, -0.847778, 0.062721,
		-0.844327, -0.530212, -0.077382,
		42.819084, 34.595970, 32.743420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.543011, 34.491047, 32.256741>,  <43.410114, 34.967121, 32.797588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.543011, 34.491047, 32.256741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.144531, 34.495014, 32.291340>,  <42.905441, 34.497395, 32.312099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.144531, 34.495014, 32.291340>,  <43.543011, 34.491047, 32.256741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.144531, 34.495014, 32.291340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085725, 0.061907, -0.994394,
		-0.015226, -0.998033, -0.060821,
		-0.996202, 0.009927, 0.086499,
		42.845669, 34.497990, 32.317291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.250069, 33.979160, 31.782278>,  <43.543011, 34.491047, 32.256741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.250069, 33.979160, 31.782278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.965599, 34.251564, 31.852089>,  <42.794918, 34.415005, 31.893974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.965599, 34.251564, 31.852089>,  <43.250069, 33.979160, 31.782278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.965599, 34.251564, 31.852089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150623, 0.094888, -0.984027,
		-0.686693, -0.726100, 0.035094,
		-0.711172, 0.681011, 0.174526,
		42.752247, 34.455868, 31.904448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.803890, 33.805733, 31.269342>,  <43.250069, 33.979160, 31.782278>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.803890, 33.805733, 31.269342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.732204, 34.176338, 31.401674>,  <42.689194, 34.398701, 31.481073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.732204, 34.176338, 31.401674>,  <42.803890, 33.805733, 31.269342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.732204, 34.176338, 31.401674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133808, 0.310192, -0.941210,
		-0.974668, -0.212943, 0.068386,
		-0.179212, 0.926518, 0.330828,
		42.678440, 34.454292, 31.500923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.128223, 34.080780, 30.985477>,  <42.803890, 33.805733, 31.269342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.128223, 34.080780, 30.985477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.353069, 34.399059, 31.075716>,  <42.487976, 34.590027, 31.129858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.353069, 34.399059, 31.075716>,  <42.128223, 34.080780, 30.985477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.353069, 34.399059, 31.075716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114009, 0.344711, -0.931760,
		-0.819165, 0.498034, 0.284484,
		0.562113, 0.795698, 0.225595,
		42.521702, 34.637768, 31.143394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.898525, 34.460812, 30.490419>,  <42.128223, 34.080780, 30.985477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.898525, 34.460812, 30.490419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.173962, 34.702862, 30.650249>,  <42.339222, 34.848091, 30.746147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.173962, 34.702862, 30.650249>,  <41.898525, 34.460812, 30.490419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.173962, 34.702862, 30.650249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118080, 0.637241, -0.761564,
		-0.715472, 0.477224, 0.510252,
		0.688591, 0.605128, 0.399577,
		42.380539, 34.884399, 30.770123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.610069, 35.153763, 30.534279>,  <41.898525, 34.460812, 30.490419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.610069, 35.153763, 30.534279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.009094, 35.167934, 30.510204>,  <42.248508, 35.176437, 30.495760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.009094, 35.167934, 30.510204>,  <41.610069, 35.153763, 30.534279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.009094, 35.167934, 30.510204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068764, 0.649083, -0.757603,
		0.012223, 0.759892, 0.649935,
		0.997558, 0.035432, -0.060187,
		42.308361, 35.178562, 30.492147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.752403, 35.803902, 30.473234>,  <41.610069, 35.153763, 30.534279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.752403, 35.803902, 30.473234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.084011, 35.626217, 30.337357>,  <42.282978, 35.519604, 30.255831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.084011, 35.626217, 30.337357>,  <41.752403, 35.803902, 30.473234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.084011, 35.626217, 30.337357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090075, 0.493444, -0.865101,
		0.551911, 0.747788, 0.369064,
		0.829024, -0.444215, -0.339694,
		42.332718, 35.492954, 30.235449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.217281, 36.314827, 30.174749>,  <41.752403, 35.803902, 30.473234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.217281, 36.314827, 30.174749> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.347610, 35.971817, 30.015507>,  <42.425808, 35.766010, 29.919962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.347610, 35.971817, 30.015507>,  <42.217281, 36.314827, 30.174749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.347610, 35.971817, 30.015507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150974, 0.462870, -0.873475,
		0.933300, 0.224492, 0.280277,
		0.325820, -0.857528, -0.398104,
		42.445354, 35.714558, 29.896076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.645737, 36.530621, 29.687830>,  <42.217281, 36.314827, 30.174749>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.645737, 36.530621, 29.687830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.635296, 36.145813, 29.579140>,  <42.629032, 35.914928, 29.513926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.635296, 36.145813, 29.579140>,  <42.645737, 36.530621, 29.687830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.635296, 36.145813, 29.579140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148506, 0.265070, -0.952724,
		0.988567, -0.065224, 0.135946,
		-0.026105, -0.962020, -0.271726,
		42.627464, 35.857208, 29.497622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.213070, 36.385723, 29.259312>,  <42.645737, 36.530621, 29.687830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.213070, 36.385723, 29.259312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.973358, 36.079655, 29.165178>,  <42.829533, 35.896015, 29.108698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.973358, 36.079655, 29.165178>,  <43.213070, 36.385723, 29.259312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.973358, 36.079655, 29.165178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118965, 0.205584, -0.971382,
		0.791653, -0.610123, -0.032173,
		-0.599277, -0.765170, -0.235335,
		42.793575, 35.850105, 29.094578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.684509, 35.982487, 28.758547>,  <43.213070, 36.385723, 29.259312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.684509, 35.982487, 28.758547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.305664, 35.859024, 28.723431>,  <43.078358, 35.784946, 28.702360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.305664, 35.859024, 28.723431>,  <43.684509, 35.982487, 28.758547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.305664, 35.859024, 28.723431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033272, 0.177656, -0.983530,
		0.319168, -0.934436, -0.157991,
		-0.947114, -0.308655, -0.087793,
		43.021530, 35.766430, 28.697092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.704338, 35.547054, 28.152067>,  <43.684509, 35.982487, 28.758547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.704338, 35.547054, 28.152067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.323437, 35.656380, 28.206482>,  <43.094894, 35.721977, 28.239130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.323437, 35.656380, 28.206482>,  <43.704338, 35.547054, 28.152067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.323437, 35.656380, 28.206482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101927, 0.135403, -0.985534,
		-0.287784, -0.952346, -0.101080,
		-0.952256, 0.273318, 0.136036,
		43.037762, 35.738377, 28.247293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.354202, 35.415058, 27.561592>,  <43.704338, 35.547054, 28.152067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.354202, 35.415058, 27.561592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.132053, 35.699593, 27.733898>,  <42.998764, 35.870312, 27.837282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.132053, 35.699593, 27.733898>,  <43.354202, 35.415058, 27.561592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.132053, 35.699593, 27.733898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157852, 0.418406, -0.894438,
		-0.816480, -0.564747, -0.120087,
		-0.555376, 0.711335, 0.430766,
		42.965439, 35.912994, 27.863129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.867626, 35.470123, 27.128590>,  <43.354202, 35.415058, 27.561592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.867626, 35.470123, 27.128590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.869282, 35.823326, 27.316322>,  <42.870274, 36.035248, 27.428963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.869282, 35.823326, 27.316322>,  <42.867626, 35.470123, 27.128590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.869282, 35.823326, 27.316322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334134, 0.443581, -0.831619,
		-0.942517, -0.153382, 0.296878,
		0.004134, 0.883012, 0.469333,
		42.870522, 36.088230, 27.457123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.324421, 35.806740, 26.767052>,  <42.867626, 35.470123, 27.128590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.324421, 35.806740, 26.767052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.552956, 36.091290, 26.930769>,  <42.690079, 36.262020, 27.028999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.552956, 36.091290, 26.930769>,  <42.324421, 35.806740, 26.767052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.552956, 36.091290, 26.930769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065135, 0.536434, -0.841425,
		-0.818126, 0.454080, 0.352820,
		0.571339, 0.711373, 0.409294,
		42.724358, 36.304703, 27.053556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.990341, 36.401524, 26.834009>,  <42.324421, 35.806740, 26.767052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.990341, 36.401524, 26.834009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.358345, 36.557941, 26.844385>,  <42.579147, 36.651791, 26.850611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.358345, 36.557941, 26.844385>,  <41.990341, 36.401524, 26.834009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.358345, 36.557941, 26.844385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206329, 0.539576, -0.816264,
		-0.333194, 0.745614, 0.577097,
		0.920005, 0.391046, 0.025942,
		42.634346, 36.675255, 26.852167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.923290, 37.121445, 26.702942>,  <41.990341, 36.401524, 26.834009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.923290, 37.121445, 26.702942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.295025, 37.022263, 26.593506>,  <42.518066, 36.962753, 26.527843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.295025, 37.022263, 26.593506>,  <41.923290, 37.121445, 26.702942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.295025, 37.022263, 26.593506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049196, 0.651215, -0.757297,
		0.365940, 0.717244, 0.593000,
		0.929337, -0.247952, -0.273592,
		42.573826, 36.947876, 26.511429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.187584, 37.668507, 26.378340>,  <41.923290, 37.121445, 26.702942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.187584, 37.668507, 26.378340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.493729, 37.459732, 26.227709>,  <42.677414, 37.334469, 26.137329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.493729, 37.459732, 26.227709>,  <42.187584, 37.668507, 26.378340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.493729, 37.459732, 26.227709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018961, 0.566571, -0.823795,
		0.643325, 0.637639, 0.423734,
		0.765359, -0.521933, -0.376580,
		42.723335, 37.303154, 26.114735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.904831, 37.612968, 26.568888>,  <42.187584, 37.668507, 26.378340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.904831, 37.612968, 26.568888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.689690, 37.939804, 26.651915>,  <42.560604, 38.135906, 26.701731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.689690, 37.939804, 26.651915>,  <42.904831, 37.612968, 26.568888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.689690, 37.939804, 26.651915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.815866, 0.442480, 0.372257,
		0.212323, 0.369565, -0.904622,
		-0.537850, 0.817088, 0.207567,
		42.528336, 38.184929, 26.714184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.253098, 38.310143, 26.377840>,  <42.904831, 37.612968, 26.568888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.253098, 38.310143, 26.377840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.052498, 38.270535, 26.721628>,  <42.932137, 38.246769, 26.927902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.052498, 38.270535, 26.721628>,  <43.253098, 38.310143, 26.377840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.052498, 38.270535, 26.721628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.778557, 0.381571, 0.498249,
		-0.377287, 0.919020, -0.114263,
		-0.501501, -0.099023, 0.859472,
		42.902046, 38.240829, 26.979469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.674675, 38.888737, 26.307703>,  <43.253098, 38.310143, 26.377840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.674675, 38.888737, 26.307703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.017036, 38.863503, 26.102390>,  <44.222454, 38.848362, 25.979202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.017036, 38.863503, 26.102390>,  <43.674675, 38.888737, 26.307703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.017036, 38.863503, 26.102390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379215, 0.751397, 0.539998,
		0.351614, -0.656828, 0.667042,
		0.855899, -0.063081, -0.513281,
		44.273808, 38.844578, 25.948406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.904816, 39.557045, 26.613686>,  <43.674675, 38.888737, 26.307703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.904816, 39.557045, 26.613686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.729877, 39.317383, 26.881935>,  <43.624912, 39.173584, 27.042885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.729877, 39.317383, 26.881935>,  <43.904816, 39.557045, 26.613686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.729877, 39.317383, 26.881935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.866923, 0.082619, -0.491548,
		0.239108, -0.796357, -0.555556,
		-0.437347, -0.599157, 0.670625,
		43.598675, 39.137634, 27.083122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.345528, 39.579937, 27.127811>,  <43.904816, 39.557045, 26.613686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.345528, 39.579937, 27.127811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.738434, 39.634430, 27.076269>,  <44.974178, 39.667126, 27.045343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.738434, 39.634430, 27.076269>,  <44.345528, 39.579937, 27.127811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.738434, 39.634430, 27.076269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016216, 0.746298, 0.665415,
		0.186814, -0.651522, 0.735268,
		0.982261, 0.136232, -0.128854,
		45.033112, 39.675301, 27.037613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.754356, 39.435547, 27.827896>,  <44.345528, 39.579937, 27.127811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.754356, 39.435547, 27.827896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.989521, 39.686207, 27.623283>,  <45.130619, 39.836605, 27.500517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.989521, 39.686207, 27.623283>,  <44.754356, 39.435547, 27.827896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.989521, 39.686207, 27.623283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134072, 0.699099, 0.702342,
		0.797735, -0.344335, 0.495027,
		0.587914, 0.626652, -0.511531,
		45.165897, 39.874203, 27.469824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.227570, 39.652580, 28.270863>,  <44.754356, 39.435547, 27.827896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.227570, 39.652580, 28.270863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.191738, 39.931087, 27.985994>,  <45.170238, 40.098190, 27.815073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.191738, 39.931087, 27.985994>,  <45.227570, 39.652580, 28.270863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.191738, 39.931087, 27.985994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197014, 0.688527, 0.697937,
		0.976299, 0.202830, 0.075496,
		-0.089582, 0.696269, -0.712169,
		45.164864, 40.139969, 27.772345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.135803, 39.540348, 28.937265>,  <45.227570, 39.652580, 28.270863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.135803, 39.540348, 28.937265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.103848, 39.834690, 29.206228>,  <45.084675, 40.011295, 29.367605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.103848, 39.834690, 29.206228>,  <45.135803, 39.540348, 28.937265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.103848, 39.834690, 29.206228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303681, -0.660464, 0.686706,
		0.949418, -0.149335, 0.276231,
		-0.079891, 0.735858, 0.672407,
		45.079880, 40.055447, 29.407949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.538986, 39.573360, 29.498396>,  <45.135803, 39.540348, 28.937265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.538986, 39.573360, 29.498396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.167168, 39.717499, 29.529629>,  <44.944077, 39.803982, 29.548368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.167168, 39.717499, 29.529629>,  <45.538986, 39.573360, 29.498396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.167168, 39.717499, 29.529629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176310, -0.620391, 0.764219,
		0.323826, 0.696608, 0.640214,
		-0.929544, 0.360350, 0.078080,
		44.888306, 39.825603, 29.553053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.448978, 39.829529, 30.142414>,  <45.538986, 39.573360, 29.498396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.448978, 39.829529, 30.142414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.134239, 39.643284, 29.980387>,  <44.945396, 39.531536, 29.883171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.134239, 39.643284, 29.980387>,  <45.448978, 39.829529, 30.142414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.134239, 39.643284, 29.980387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037280, -0.691016, 0.721877,
		-0.616020, 0.552906, 0.561082,
		-0.786848, -0.465608, -0.405068,
		44.898186, 39.503601, 29.858866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.939320, 39.673515, 30.672800>,  <45.448978, 39.829529, 30.142414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.939320, 39.673515, 30.672800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.861443, 39.417866, 30.375177>,  <44.814716, 39.264477, 30.196604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.861443, 39.417866, 30.375177>,  <44.939320, 39.673515, 30.672800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.861443, 39.417866, 30.375177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033021, -0.762414, 0.646247,
		-0.980308, 0.101252, 0.169544,
		-0.194696, -0.639119, -0.744056,
		44.803032, 39.226131, 30.151960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.396404, 39.239067, 30.839649>,  <44.939320, 39.673515, 30.672800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.396404, 39.239067, 30.839649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.604721, 39.017822, 30.579544>,  <44.729713, 38.885075, 30.423481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.604721, 39.017822, 30.579544>,  <44.396404, 39.239067, 30.839649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.604721, 39.017822, 30.579544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044125, -0.743254, 0.667553,
		-0.852541, -0.376350, -0.362676,
		0.520794, -0.553113, -0.650261,
		44.760960, 38.851887, 30.384466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.106167, 38.591240, 30.754099>,  <44.396404, 39.239067, 30.839649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.106167, 38.591240, 30.754099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.463612, 38.504253, 30.597038>,  <44.678078, 38.452061, 30.502802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.463612, 38.504253, 30.597038>,  <44.106167, 38.591240, 30.754099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.463612, 38.504253, 30.597038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085854, -0.775827, 0.625078,
		-0.440562, -0.592285, -0.674614,
		0.893608, -0.217467, -0.392650,
		44.731693, 38.439014, 30.479244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.020733, 37.918419, 30.569124>,  <44.106167, 38.591240, 30.754099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.020733, 37.918419, 30.569124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.415287, 37.980247, 30.591564>,  <44.652020, 38.017345, 30.605028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.415287, 37.980247, 30.591564>,  <44.020733, 37.918419, 30.569124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.415287, 37.980247, 30.591564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114848, -0.891751, 0.437710,
		0.117686, -0.425308, -0.897364,
		0.986387, 0.154573, 0.056101,
		44.711205, 38.026619, 30.608395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.240360, 37.281738, 30.319075>,  <44.020733, 37.918419, 30.569124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.240360, 37.281738, 30.319075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.545624, 37.446857, 30.517944>,  <44.728783, 37.545929, 30.637266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.545624, 37.446857, 30.517944>,  <44.240360, 37.281738, 30.319075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.545624, 37.446857, 30.517944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095460, -0.832948, 0.545055,
		0.639117, -0.368505, -0.675080,
		0.763162, 0.412797, 0.497174,
		44.774574, 37.570698, 30.667097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.784554, 36.850964, 30.243206>,  <44.240360, 37.281738, 30.319075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.784554, 36.850964, 30.243206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.862663, 37.068287, 30.569809>,  <44.909531, 37.198681, 30.765772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.862663, 37.068287, 30.569809>,  <44.784554, 36.850964, 30.243206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.862663, 37.068287, 30.569809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293699, -0.826724, 0.479863,
		0.935740, 0.146102, -0.321006,
		0.195275, 0.543306, 0.816509,
		44.921246, 37.231277, 30.814762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.315941, 36.627464, 30.460974>,  <44.784554, 36.850964, 30.243206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.315941, 36.627464, 30.460974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.215225, 36.824883, 30.793962>,  <45.154797, 36.943333, 30.993755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.215225, 36.824883, 30.793962>,  <45.315941, 36.627464, 30.460974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.215225, 36.824883, 30.793962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383854, -0.738700, 0.554056,
		0.888401, 0.459055, -0.003452,
		-0.251793, 0.493549, 0.832472,
		45.139687, 36.972946, 31.043705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.892487, 36.654724, 30.989576>,  <45.315941, 36.627464, 30.460974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.892487, 36.654724, 30.989576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.557266, 36.725697, 31.195951>,  <45.356136, 36.768280, 31.319777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.557266, 36.725697, 31.195951>,  <45.892487, 36.654724, 30.989576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.557266, 36.725697, 31.195951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278001, -0.674805, 0.683633,
		0.469458, 0.716349, 0.516192,
		-0.838048, 0.177435, 0.515938,
		45.305851, 36.778927, 31.350733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.105247, 36.699760, 31.631824>,  <45.892487, 36.654724, 30.989576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.105247, 36.699760, 31.631824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.712814, 36.650673, 31.691725>,  <45.477356, 36.621220, 31.727665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.712814, 36.650673, 31.691725>,  <46.105247, 36.699760, 31.631824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.712814, 36.650673, 31.691725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192277, -0.526955, 0.827857,
		-0.022683, 0.840986, 0.540580,
		-0.981079, -0.122719, 0.149749,
		45.418491, 36.613857, 31.736650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.018913, 36.650589, 32.322170>,  <46.105247, 36.699760, 31.631824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.018913, 36.650589, 32.322170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.666672, 36.488979, 32.223137>,  <45.455326, 36.392014, 32.163719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.666672, 36.488979, 32.223137>,  <46.018913, 36.650589, 32.322170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.666672, 36.488979, 32.223137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046382, -0.593478, 0.803513,
		-0.471572, 0.696096, 0.541360,
		-0.880607, -0.404023, -0.247581,
		45.402489, 36.367771, 32.148861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.649963, 36.576786, 32.865040>,  <46.018913, 36.650589, 32.322170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.649963, 36.576786, 32.865040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.460320, 36.309425, 32.635796>,  <45.346535, 36.149010, 32.498249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.460320, 36.309425, 32.635796>,  <45.649963, 36.576786, 32.865040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.460320, 36.309425, 32.635796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042651, -0.632721, 0.773204,
		-0.879433, 0.391026, 0.271470,
		-0.474108, -0.668403, -0.573113,
		45.318089, 36.108906, 32.463863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.034309, 36.436600, 33.226398>,  <45.649963, 36.576786, 32.865040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.034309, 36.436600, 33.226398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.039322, 36.130909, 32.968472>,  <45.042332, 35.947495, 32.813713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.039322, 36.130909, 32.968472>,  <45.034309, 36.436600, 33.226398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.039322, 36.130909, 32.968472> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283641, -0.621100, 0.730604,
		-0.958849, 0.173741, -0.224552,
		0.012533, -0.764231, -0.644821,
		45.043083, 35.901638, 32.775024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.403652, 35.983761, 33.161655>,  <45.034309, 36.436600, 33.226398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.403652, 35.983761, 33.161655> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.697460, 35.748966, 33.025463>,  <44.873745, 35.608089, 32.943748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.697460, 35.748966, 33.025463>,  <44.403652, 35.983761, 33.161655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.697460, 35.748966, 33.025463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281820, -0.720306, 0.633827,
		-0.617300, -0.369603, -0.694503,
		0.734519, -0.586986, -0.340484,
		44.917816, 35.572868, 32.923317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.143238, 35.309643, 33.018326>,  <44.403652, 35.983761, 33.161655>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.143238, 35.309643, 33.018326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.529594, 35.209358, 33.044258>,  <44.761406, 35.149189, 33.059818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.529594, 35.209358, 33.044258>,  <44.143238, 35.309643, 33.018326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.529594, 35.209358, 33.044258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227287, -0.700792, 0.676189,
		-0.124095, -0.667858, -0.733870,
		0.965889, -0.250711, 0.064830,
		44.819363, 35.134144, 33.063705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.227444, 34.577324, 32.941814>,  <44.143238, 35.309643, 33.018326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.227444, 34.577324, 32.941814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.572426, 34.677437, 33.117779>,  <44.779415, 34.737503, 33.223358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.572426, 34.677437, 33.117779>,  <44.227444, 34.577324, 32.941814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.572426, 34.677437, 33.117779> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142173, -0.714377, 0.685166,
		0.485750, -0.653471, -0.580536,
		0.862458, 0.250283, 0.439915,
		44.831161, 34.752522, 33.249752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.613548, 33.938847, 33.063545>,  <44.227444, 34.577324, 32.941814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.613548, 33.938847, 33.063545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.744759, 34.196259, 33.340172>,  <44.823486, 34.350704, 33.506149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.744759, 34.196259, 33.340172>,  <44.613548, 33.938847, 33.063545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.744759, 34.196259, 33.340172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056216, -0.717481, 0.694306,
		0.942995, -0.266628, -0.199176,
		0.328026, 0.643530, 0.691570,
		44.843166, 34.389317, 33.547642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.122017, 33.637043, 33.472530>,  <44.613548, 33.938847, 33.063545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.122017, 33.637043, 33.472530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.023830, 33.940430, 33.714016>,  <44.964916, 34.122463, 33.858906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.023830, 33.940430, 33.714016>,  <45.122017, 33.637043, 33.472530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.023830, 33.940430, 33.714016> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067465, -0.607888, 0.791151,
		0.967054, 0.234933, 0.098048,
		-0.245469, 0.758471, 0.603710,
		44.950191, 34.167973, 33.895130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.638134, 33.589668, 34.075150>,  <45.122017, 33.637043, 33.472530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.638134, 33.589668, 34.075150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.329407, 33.796196, 34.223583>,  <45.144169, 33.920113, 34.312645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.329407, 33.796196, 34.223583>,  <45.638134, 33.589668, 34.075150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.329407, 33.796196, 34.223583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033723, -0.616030, 0.787001,
		0.634945, 0.594909, 0.492876,
		-0.771821, 0.516323, 0.371083,
		45.097862, 33.951092, 34.334908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.789452, 33.818195, 34.704525>,  <45.638134, 33.589668, 34.075150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.789452, 33.818195, 34.704525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.390724, 33.786819, 34.698921>,  <45.151485, 33.767994, 34.695560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.390724, 33.786819, 34.698921>,  <45.789452, 33.818195, 34.704525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.390724, 33.786819, 34.698921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034290, -0.580966, 0.813205,
		-0.071929, 0.810139, 0.581809,
		-0.996820, -0.078443, -0.014009,
		45.091679, 33.763287, 34.694717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.599579, 34.260227, 35.240540>,  <45.789452, 33.818195, 34.704525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.599579, 34.260227, 35.240540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.397148, 33.930500, 35.139050>,  <45.275688, 33.732662, 35.078156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.397148, 33.930500, 35.139050>,  <45.599579, 34.260227, 35.240540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.397148, 33.930500, 35.139050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418696, -0.491996, 0.763305,
		-0.754041, 0.280058, 0.594129,
		-0.506078, -0.824323, -0.253726,
		45.245323, 33.683205, 35.062931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.295506, 34.109776, 35.516953>,  <45.599579, 34.260227, 35.240540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.295506, 34.109776, 35.516953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.689545, 34.108471, 35.585735>,  <46.925968, 34.107689, 35.627003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.689545, 34.108471, 35.585735>,  <46.295506, 34.109776, 35.516953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.689545, 34.108471, 35.585735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120018, 0.729164, -0.673732,
		-0.123183, 0.684331, 0.718692,
		0.985100, -0.003264, 0.171953,
		46.985073, 34.107491, 35.637321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.462807, 34.750965, 35.310978>,  <46.295506, 34.109776, 35.516953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.462807, 34.750965, 35.310978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.821556, 34.574059, 35.308899>,  <47.036804, 34.467915, 35.307652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.821556, 34.574059, 35.308899>,  <46.462807, 34.750965, 35.310978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.821556, 34.574059, 35.308899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321782, 0.660509, -0.678369,
		0.303451, 0.606736, 0.734703,
		0.896869, -0.442266, -0.005196,
		47.090618, 34.441380, 35.307339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.123562, 35.227612, 35.461872>,  <46.462807, 34.750965, 35.310978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.123562, 35.227612, 35.461872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.255337, 34.918701, 35.244591>,  <47.334404, 34.733356, 35.114223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.255337, 34.918701, 35.244591>,  <47.123562, 35.227612, 35.461872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.255337, 34.918701, 35.244591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504731, 0.630258, -0.589933,
		0.797944, -0.079821, 0.597423,
		0.329442, -0.772271, -0.543199,
		47.354168, 34.687019, 35.081631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.730453, 35.497444, 35.047562>,  <47.123562, 35.227612, 35.461872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.730453, 35.497444, 35.047562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.665424, 35.127045, 34.911270>,  <47.626408, 34.904804, 34.829494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.665424, 35.127045, 34.911270>,  <47.730453, 35.497444, 35.047562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.665424, 35.127045, 34.911270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535521, 0.207225, -0.818703,
		0.828726, -0.315568, 0.462202,
		-0.162577, -0.925999, -0.340726,
		47.616650, 34.849243, 34.809052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<34.547577, 42.032200, 40.731266> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.192970, 41.850185, 40.697735>,  <33.980206, 41.740978, 40.677616>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.192970, 41.850185, 40.697735>,  <34.547577, 42.032200, 40.731266>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.192970, 41.850185, 40.697735> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304178, -0.436633, -0.846656,
		0.348657, -0.776075, 0.525495,
		-0.886518, -0.455037, -0.083830,
		33.927013, 41.713673, 40.672585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.628300, 41.345623, 40.700729>,  <34.547577, 42.032200, 40.731266>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.628300, 41.345623, 40.700729> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.262207, 41.370140, 40.541435>,  <34.042553, 41.384850, 40.445858>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.262207, 41.370140, 40.541435>,  <34.628300, 41.345623, 40.700729>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.262207, 41.370140, 40.541435> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263084, -0.657701, -0.705844,
		-0.305185, -0.750781, 0.585824,
		-0.915232, 0.061292, -0.398240,
		33.987637, 41.388527, 40.421963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.604618, 40.679394, 40.342731>,  <34.628300, 41.345623, 40.700729>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.604618, 40.679394, 40.342731> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.325443, 40.905308, 40.166595>,  <34.157940, 41.040855, 40.060913>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.325443, 40.905308, 40.166595>,  <34.604618, 40.679394, 40.342731>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.325443, 40.905308, 40.166595> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121062, -0.512970, -0.849827,
		-0.705855, -0.646432, 0.289645,
		-0.697934, 0.564789, -0.440341,
		34.116062, 41.074745, 40.034492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.036339, 40.238670, 40.098251>,  <34.604618, 40.679394, 40.342731>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.036339, 40.238670, 40.098251> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.014965, 40.564873, 39.867741>,  <34.002140, 40.760593, 39.729435>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.014965, 40.564873, 39.867741>,  <34.036339, 40.238670, 40.098251>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.014965, 40.564873, 39.867741> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028202, -0.575643, -0.817215,
		-0.998173, -0.059920, 0.007761,
		-0.053435, 0.815503, -0.576281,
		33.998936, 40.809525, 39.694855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.710255, 40.000626, 39.568466>,  <34.036339, 40.238670, 40.098251>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.710255, 40.000626, 39.568466> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.809834, 40.355518, 39.413109>,  <33.869583, 40.568455, 39.319893>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.809834, 40.355518, 39.413109>,  <33.710255, 40.000626, 39.568466>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.809834, 40.355518, 39.413109> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040445, -0.391147, -0.919439,
		-0.967672, 0.244602, -0.061492,
		0.248949, 0.887228, -0.388395,
		33.884518, 40.621685, 39.296589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.185364, 40.052753, 39.091167>,  <33.710255, 40.000626, 39.568466>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.185364, 40.052753, 39.091167> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.509697, 40.271324, 39.007301>,  <33.704296, 40.402466, 38.956982>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.509697, 40.271324, 39.007301>,  <33.185364, 40.052753, 39.091167>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.509697, 40.271324, 39.007301> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094236, -0.475444, -0.874685,
		-0.577636, 0.689469, -0.437000,
		0.810837, 0.546430, -0.209661,
		33.752949, 40.435253, 38.944405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.077271, 40.418400, 38.396675>,  <33.185364, 40.052753, 39.091167>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.077271, 40.418400, 38.396675> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.476463, 40.429585, 38.419464>,  <33.715981, 40.436295, 38.433140>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.476463, 40.429585, 38.419464>,  <33.077271, 40.418400, 38.396675>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.476463, 40.429585, 38.419464> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062550, -0.281316, -0.957574,
		-0.010744, 0.959208, -0.282498,
		0.997984, 0.027958, 0.056976,
		33.775860, 40.437973, 38.436558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.271835, 40.712387, 37.854748>,  <33.077271, 40.418400, 38.396675>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.271835, 40.712387, 37.854748> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.600899, 40.518173, 37.973068>,  <33.798336, 40.401646, 38.044060>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.600899, 40.518173, 37.973068>,  <33.271835, 40.712387, 37.854748>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.600899, 40.518173, 37.973068> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070282, -0.429438, -0.900357,
		0.564179, 0.761473, -0.319156,
		0.822655, -0.485532, 0.295798,
		33.847694, 40.372513, 38.061806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.778156, 40.765663, 37.412064>,  <33.271835, 40.712387, 37.854748>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.778156, 40.765663, 37.412064> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.951382, 40.455868, 37.596508>,  <34.055317, 40.269989, 37.707176>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.951382, 40.455868, 37.596508>,  <33.778156, 40.765663, 37.412064>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.951382, 40.455868, 37.596508> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182812, -0.425469, -0.886316,
		0.882631, 0.468126, -0.042668,
		0.433062, -0.774490, 0.461111,
		34.081299, 40.223522, 37.734840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.272717, 40.575943, 36.935188>,  <33.778156, 40.765663, 37.412064>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.272717, 40.575943, 36.935188> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.239723, 40.256332, 37.173431>,  <34.219929, 40.064564, 37.316376>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.239723, 40.256332, 37.173431>,  <34.272717, 40.575943, 36.935188>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.239723, 40.256332, 37.173431> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151987, -0.600739, -0.784864,
		0.984935, 0.025787, 0.170993,
		-0.082483, -0.799029, 0.595608,
		34.214977, 40.016624, 37.352116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.909470, 40.253407, 36.992573>,  <34.272717, 40.575943, 36.935188>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.909470, 40.253407, 36.992573> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.628433, 39.975487, 37.054047>,  <34.459812, 39.808735, 37.090931>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.628433, 39.975487, 37.054047>,  <34.909470, 40.253407, 36.992573>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.628433, 39.975487, 37.054047> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347458, -0.523441, -0.777999,
		0.620998, -0.493217, 0.609179,
		-0.702591, -0.694800, 0.153684,
		34.417656, 39.767048, 37.100151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.288937, 39.601574, 36.914074>,  <34.909470, 40.253407, 36.992573>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.288937, 39.601574, 36.914074> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.900185, 39.517384, 36.871819>,  <34.666935, 39.466869, 36.846466>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.900185, 39.517384, 36.871819>,  <35.288937, 39.601574, 36.914074>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.900185, 39.517384, 36.871819> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229772, -0.749227, -0.621179,
		0.051596, -0.627981, 0.776516,
		-0.971876, -0.210472, -0.105635,
		34.608624, 39.454243, 36.840126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.310730, 38.884727, 37.013023>,  <35.288937, 39.601574, 36.914074>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.310730, 38.884727, 37.013023> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.994629, 39.024323, 36.811546>,  <34.804970, 39.108082, 36.690659>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.994629, 39.024323, 36.811546>,  <35.310730, 38.884727, 37.013023>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.994629, 39.024323, 36.811546> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222260, -0.602761, -0.766342,
		-0.571049, -0.717556, 0.398769,
		-0.790255, 0.348989, -0.503690,
		34.757553, 39.129021, 36.660439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.860710, 38.300983, 36.833836>,  <35.310730, 38.884727, 37.013023>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.860710, 38.300983, 36.833836> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.774319, 38.607704, 36.592052>,  <34.722485, 38.791737, 36.446983>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.774319, 38.607704, 36.592052>,  <34.860710, 38.300983, 36.833836>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.774319, 38.607704, 36.592052> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210273, -0.568020, -0.795700,
		-0.953488, -0.298953, -0.038559,
		-0.215975, 0.766799, -0.604462,
		34.709526, 38.837746, 36.410713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.316414, 38.041847, 36.350712>,  <34.860710, 38.300983, 36.833836>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.316414, 38.041847, 36.350712> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.488110, 38.362724, 36.184704>,  <34.591125, 38.555252, 36.085098>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.488110, 38.362724, 36.184704>,  <34.316414, 38.041847, 36.350712>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.488110, 38.362724, 36.184704> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341197, -0.569476, -0.747851,
		-0.836266, 0.179400, -0.518145,
		0.429236, 0.802193, -0.415023,
		34.616879, 38.603382, 36.060196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.084358, 38.002464, 35.680046>,  <34.316414, 38.041847, 36.350712>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.084358, 38.002464, 35.680046> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.393143, 38.256405, 35.667198>,  <34.578415, 38.408772, 35.659489>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.393143, 38.256405, 35.667198>,  <34.084358, 38.002464, 35.680046>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.393143, 38.256405, 35.667198> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390941, -0.514007, -0.763519,
		-0.501234, 0.576851, -0.644986,
		0.771964, 0.634854, -0.032123,
		34.624733, 38.446861, 35.657562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.055889, 38.245911, 34.917595>,  <34.084358, 38.002464, 35.680046>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.055889, 38.245911, 34.917595> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.419567, 38.282814, 35.080002>,  <34.637775, 38.304958, 35.177444>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.419567, 38.282814, 35.080002>,  <34.055889, 38.245911, 34.917595>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.419567, 38.282814, 35.080002> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394664, -0.501681, -0.769777,
		0.132668, 0.860119, -0.492539,
		0.909197, 0.092263, 0.406015,
		34.692326, 38.310493, 35.201805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.390427, 38.272686, 34.340855>,  <34.055889, 38.245911, 34.917595>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.390427, 38.272686, 34.340855> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.689522, 38.238903, 34.604298>,  <34.868980, 38.218636, 34.762363>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.689522, 38.238903, 34.604298>,  <34.390427, 38.272686, 34.340855>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.689522, 38.238903, 34.604298> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536852, -0.506800, -0.674495,
		0.390743, 0.857917, -0.333614,
		0.747736, -0.084453, 0.658603,
		34.913841, 38.213566, 34.801880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.002377, 38.502876, 33.966156>,  <34.390427, 38.272686, 34.340855>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.002377, 38.502876, 33.966156> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.110264, 38.283527, 34.282772>,  <35.174995, 38.151917, 34.472744>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.110264, 38.283527, 34.282772>,  <35.002377, 38.502876, 33.966156>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.110264, 38.283527, 34.282772> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.678671, -0.474889, -0.560256,
		0.683123, 0.688308, 0.244078,
		0.269719, -0.548372, 0.791542,
		35.191181, 38.119015, 34.520233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.774929, 38.498508, 33.920555>,  <35.002377, 38.502876, 33.966156>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.774929, 38.498508, 33.920555> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.669685, 38.193993, 34.157608>,  <35.606541, 38.011284, 34.299839>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.669685, 38.193993, 34.157608>,  <35.774929, 38.498508, 33.920555>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.669685, 38.193993, 34.157608> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.640824, -0.597093, -0.482520,
		0.721193, 0.252817, 0.644953,
		-0.263108, -0.761291, 0.592630,
		35.590752, 37.965607, 34.335396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.509422, 38.065731, 34.088318>,  <35.774929, 38.498508, 33.920555>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.509422, 38.065731, 34.088318> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.207508, 37.824646, 34.191887>,  <36.026360, 37.679996, 34.254028>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.207508, 37.824646, 34.191887>,  <36.509422, 38.065731, 34.088318>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.207508, 37.824646, 34.191887> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424836, -0.749892, -0.507125,
		0.499816, -0.272769, 0.822059,
		-0.754784, -0.602710, 0.258926,
		35.981071, 37.643833, 34.269566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.767025, 37.407539, 34.423325>,  <36.509422, 38.065731, 34.088318>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.767025, 37.407539, 34.423325> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.405697, 37.318398, 34.276707>,  <36.188900, 37.264912, 34.188736>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.405697, 37.318398, 34.276707>,  <36.767025, 37.407539, 34.423325>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.405697, 37.318398, 34.276707> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372299, -0.831750, -0.411807,
		-0.213104, -0.508458, 0.834301,
		-0.903316, -0.222851, -0.366548,
		36.134701, 37.251541, 34.166744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.489014, 37.169113, 34.473202>,  <36.767025, 37.407539, 34.423325>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.489014, 37.169113, 34.473202> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.813793, 37.064762, 34.682079>,  <38.008659, 37.002151, 34.807404>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.813793, 37.064762, 34.682079>,  <37.489014, 37.169113, 34.473202>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.813793, 37.064762, 34.682079> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399019, 0.404892, 0.822707,
		-0.426055, -0.876360, 0.224657,
		0.811949, -0.260876, 0.522190,
		38.057377, 36.986500, 34.838737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.210949, 36.841465, 35.056637>,  <37.489014, 37.169113, 34.473202>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.210949, 36.841465, 35.056637> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.574398, 36.960491, 35.173843>,  <37.792465, 37.031906, 35.244167>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.574398, 36.960491, 35.173843>,  <37.210949, 36.841465, 35.056637>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.574398, 36.960491, 35.173843> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399679, 0.416148, 0.816748,
		0.121099, -0.859229, 0.497052,
		0.908621, 0.297569, 0.293021,
		37.846985, 37.049763, 35.261749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.213970, 36.657894, 35.745968>,  <37.210949, 36.841465, 35.056637>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.213970, 36.657894, 35.745968> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.495529, 36.932110, 35.671597>,  <37.664463, 37.096638, 35.626976>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.495529, 36.932110, 35.671597>,  <37.213970, 36.657894, 35.745968>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.495529, 36.932110, 35.671597> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342565, 0.556942, 0.756614,
		0.622237, -0.468886, 0.626871,
		0.703897, 0.685537, -0.185926,
		37.706699, 37.137772, 35.615818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.602001, 36.670517, 36.404293>,  <37.213970, 36.657894, 35.745968>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.602001, 36.670517, 36.404293> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.692024, 37.006092, 36.206089>,  <37.746040, 37.207436, 36.087166>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.692024, 37.006092, 36.206089>,  <37.602001, 36.670517, 36.404293>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.692024, 37.006092, 36.206089> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126162, 0.529367, 0.838960,
		0.966142, -0.126302, 0.224981,
		0.225060, 0.838939, -0.495510,
		37.759541, 37.257774, 36.057438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.195351, 36.996071, 36.743809>,  <37.602001, 36.670517, 36.404293>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.195351, 36.996071, 36.743809> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.006672, 37.279530, 36.533928>,  <37.893463, 37.449604, 36.407997>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.006672, 37.279530, 36.533928>,  <38.195351, 36.996071, 36.743809>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.006672, 37.279530, 36.533928> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132871, 0.645397, 0.752202,
		0.871691, 0.285095, -0.398593,
		-0.471700, 0.708649, -0.524706,
		37.865162, 37.492123, 36.376514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.605110, 37.514759, 36.971386>,  <38.195351, 36.996071, 36.743809>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.605110, 37.514759, 36.971386> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.279762, 37.672058, 36.799900>,  <38.084553, 37.766438, 36.697010>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.279762, 37.672058, 36.799900>,  <38.605110, 37.514759, 36.971386>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.279762, 37.672058, 36.799900> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059137, 0.677228, 0.733393,
		0.578740, 0.621869, -0.527579,
		-0.813365, 0.393244, -0.428715,
		38.035751, 37.790031, 36.671288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.718830, 38.226410, 36.873215>,  <38.605110, 37.514759, 36.971386>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.718830, 38.226410, 36.873215> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.320869, 38.188396, 36.886684>,  <38.082092, 38.165588, 36.894768>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.320869, 38.188396, 36.886684>,  <38.718830, 38.226410, 36.873215>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.320869, 38.188396, 36.886684> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043201, 0.703625, 0.709257,
		-0.091094, 0.704188, -0.704145,
		-0.994905, -0.095029, 0.033674,
		38.022400, 38.159889, 36.896786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.547585, 38.900833, 36.939854>,  <38.718830, 38.226410, 36.873215>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.547585, 38.900833, 36.939854> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.191364, 38.730663, 37.004276>,  <37.977634, 38.628559, 37.042931>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.191364, 38.730663, 37.004276>,  <38.547585, 38.900833, 36.939854>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.191364, 38.730663, 37.004276> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237227, 0.736436, 0.633550,
		-0.388139, 0.525998, -0.756752,
		-0.890546, -0.425427, 0.161058,
		37.924202, 38.603035, 37.052593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.022072, 39.437996, 36.814560>,  <38.547585, 38.900833, 36.939854>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.022072, 39.437996, 36.814560> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.870548, 39.163227, 37.062637>,  <37.779636, 38.998363, 37.211483>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.870548, 39.163227, 37.062637>,  <38.022072, 39.437996, 36.814560>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.870548, 39.163227, 37.062637> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345778, 0.726654, 0.593642,
		-0.858454, 0.010426, -0.512785,
		-0.378806, -0.686924, 0.620194,
		37.756905, 38.957150, 37.248695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.390095, 39.739086, 36.941700>,  <38.022072, 39.437996, 36.814560>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.390095, 39.739086, 36.941700> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.450123, 39.475807, 37.236794>,  <37.486141, 39.317841, 37.413849>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.450123, 39.475807, 37.236794>,  <37.390095, 39.739086, 36.941700>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.450123, 39.475807, 37.236794> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312439, 0.676376, 0.667006,
		-0.938009, -0.330595, -0.104143,
		0.150069, -0.658196, 0.737738,
		37.495144, 39.278347, 37.458115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.865673, 39.762234, 37.420574>,  <37.390095, 39.739086, 36.941700>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.865673, 39.762234, 37.420574> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.167095, 39.600315, 37.627766>,  <37.347946, 39.503166, 37.752079>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.167095, 39.600315, 37.627766>,  <36.865673, 39.762234, 37.420574>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.167095, 39.600315, 37.627766> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139954, 0.671086, 0.728050,
		-0.642316, -0.621118, 0.449047,
		0.753553, -0.404792, 0.517977,
		37.393162, 39.478878, 37.783157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.662788, 39.679466, 38.137611>,  <36.865673, 39.762234, 37.420574>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.662788, 39.679466, 38.137611> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.059967, 39.725243, 38.125214>,  <37.298275, 39.752708, 38.117775>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.059967, 39.725243, 38.125214>,  <36.662788, 39.679466, 38.137611>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.059967, 39.725243, 38.125214> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056099, 0.683792, 0.727517,
		0.104447, -0.720647, 0.685389,
		0.992947, 0.114437, -0.030992,
		37.357853, 39.759575, 38.115917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.882675, 39.451584, 38.781982>,  <36.662788, 39.679466, 38.137611>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.882675, 39.451584, 38.781982> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.124168, 39.727196, 38.621613>,  <37.269066, 39.892563, 38.525391>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.124168, 39.727196, 38.621613>,  <36.882675, 39.451584, 38.781982>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.124168, 39.727196, 38.621613> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236092, 0.634909, 0.735630,
		0.761425, -0.349467, 0.545989,
		0.603732, 0.689031, -0.400929,
		37.305286, 39.933907, 38.501335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.256001, 39.630058, 39.323399>,  <36.882675, 39.451584, 38.781982>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.256001, 39.630058, 39.323399> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.258080, 39.911491, 39.039162>,  <37.259327, 40.080349, 38.868618>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.258080, 39.911491, 39.039162>,  <37.256001, 39.630058, 39.323399>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.258080, 39.911491, 39.039162> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201094, 0.696824, 0.688474,
		0.979558, 0.139319, 0.145106,
		0.005196, 0.703581, -0.710596,
		37.259640, 40.122566, 38.825981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.570255, 40.105942, 39.694229>,  <37.256001, 39.630058, 39.323399>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.570255, 40.105942, 39.694229> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.374020, 40.267014, 39.385120>,  <37.256279, 40.363659, 39.199657>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.374020, 40.267014, 39.385120>,  <37.570255, 40.105942, 39.694229>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.374020, 40.267014, 39.385120> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343627, 0.725555, 0.596230,
		0.800776, 0.558048, -0.217577,
		-0.490589, 0.402682, -0.772767,
		37.226845, 40.387817, 39.153290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.853790, 40.802120, 39.650787>,  <37.570255, 40.105942, 39.694229>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.853790, 40.802120, 39.650787> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.498299, 40.780762, 39.468662>,  <37.285004, 40.767948, 39.359386>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.498299, 40.780762, 39.468662>,  <37.853790, 40.802120, 39.650787>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.498299, 40.780762, 39.468662> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351141, 0.717794, 0.601225,
		0.294719, 0.694205, -0.656673,
		-0.888730, -0.053392, -0.455311,
		37.231678, 40.764744, 39.332069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.661064, 41.509113, 39.553169>,  <37.853790, 40.802120, 39.650787>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.661064, 41.509113, 39.553169> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.322014, 41.300209, 39.515705>,  <37.118584, 41.174866, 39.493225>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.322014, 41.300209, 39.515705>,  <37.661064, 41.509113, 39.553169>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.322014, 41.300209, 39.515705> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469584, 0.656189, 0.590683,
		-0.247032, 0.544661, -0.801449,
		-0.847624, -0.522265, -0.093664,
		37.067726, 41.143528, 39.487606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.056225, 41.962574, 39.564152>,  <37.661064, 41.509113, 39.553169>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.056225, 41.962574, 39.564152> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.922810, 41.600975, 39.671143>,  <36.842762, 41.384014, 39.735336>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.922810, 41.600975, 39.671143>,  <37.056225, 41.962574, 39.564152>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.922810, 41.600975, 39.671143> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425553, 0.397541, 0.812937,
		-0.841224, 0.157321, -0.517293,
		-0.333537, -0.903998, 0.267473,
		36.822750, 41.329777, 39.751385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<36.244308, 42.064995, 39.699551> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.337376, 41.722065, 39.883232>,  <36.393215, 41.516308, 39.993439>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.337376, 41.722065, 39.883232>,  <36.244308, 42.064995, 39.699551>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.337376, 41.722065, 39.883232> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510477, 0.294236, 0.807985,
		-0.827816, -0.422402, -0.369184,
		0.232667, -0.857323, 0.459199,
		36.407177, 41.464867, 40.020992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.639450, 41.930637, 40.184238>,  <36.244308, 42.064995, 39.699551>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.639450, 41.930637, 40.184238> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.916660, 41.689468, 40.342327>,  <36.082985, 41.544765, 40.437180>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.916660, 41.689468, 40.342327>,  <35.639450, 41.930637, 40.184238>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.916660, 41.689468, 40.342327> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432676, 0.090649, 0.896981,
		-0.576637, -0.792633, -0.198049,
		0.693023, -0.602923, 0.395225,
		36.124569, 41.508591, 40.460896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.341213, 41.312260, 40.582958>,  <35.639450, 41.930637, 40.184238>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.341213, 41.312260, 40.582958> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.709377, 41.392651, 40.717094>,  <35.930275, 41.440884, 40.797577>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.709377, 41.392651, 40.717094>,  <35.341213, 41.312260, 40.582958>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.709377, 41.392651, 40.717094> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390952, 0.469062, 0.791920,
		0.001862, -0.859994, 0.510301,
		0.920409, 0.200978, 0.335343,
		35.985500, 41.452946, 40.817696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.342350, 41.117847, 41.217213>,  <35.341213, 41.312260, 40.582958>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.342350, 41.117847, 41.217213> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.663429, 41.353107, 41.256702>,  <35.856079, 41.494263, 41.280396>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.663429, 41.353107, 41.256702>,  <35.342350, 41.117847, 41.217213>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.663429, 41.353107, 41.256702> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291224, 0.242104, 0.925513,
		0.520440, -0.771663, 0.365621,
		0.802702, 0.588151, 0.098726,
		35.904240, 41.529552, 41.286320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.582935, 41.139545, 41.930847>,  <35.342350, 41.117847, 41.217213>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.582935, 41.139545, 41.930847> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.801861, 41.445129, 41.794140>,  <35.933216, 41.628479, 41.712116>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.801861, 41.445129, 41.794140>,  <35.582935, 41.139545, 41.930847>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.801861, 41.445129, 41.794140> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037029, 0.385859, 0.921814,
		0.836108, -0.517176, 0.182897,
		0.547313, 0.763964, -0.341771,
		35.966053, 41.674320, 41.691608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.046124, 41.247330, 42.433441>,  <35.582935, 41.139545, 41.930847>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.046124, 41.247330, 42.433441> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.041546, 41.593449, 42.232990>,  <36.038799, 41.801121, 42.112720>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.041546, 41.593449, 42.232990>,  <36.046124, 41.247330, 42.433441>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.041546, 41.593449, 42.232990> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043801, 0.500249, 0.864773,
		0.998975, 0.031849, 0.032175,
		-0.011446, 0.865296, -0.501131,
		36.038113, 41.853039, 42.082649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.507519, 41.692131, 42.756855>,  <36.046124, 41.247330, 42.433441>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.507519, 41.692131, 42.756855> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.248985, 41.931557, 42.567551>,  <36.093864, 42.075211, 42.453968>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.248985, 41.931557, 42.567551>,  <36.507519, 41.692131, 42.756855>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.248985, 41.931557, 42.567551> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115423, 0.536386, 0.836043,
		0.754275, 0.594987, -0.277596,
		-0.646333, 0.598565, -0.473258,
		36.055084, 42.111126, 42.425575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.705902, 42.464298, 42.833992>,  <36.507519, 41.692131, 42.756855>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.705902, 42.464298, 42.833992> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.316998, 42.445557, 42.742329>,  <36.083656, 42.434311, 42.687332>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.316998, 42.445557, 42.742329>,  <36.705902, 42.464298, 42.833992>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.316998, 42.445557, 42.742329> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225461, 0.448503, 0.864877,
		0.062254, 0.892552, -0.446626,
		-0.972261, -0.046855, -0.229157,
		36.025318, 42.431499, 42.673580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.486870, 43.090328, 42.938801>,  <36.705902, 42.464298, 42.833992>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.486870, 43.090328, 42.938801> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.137085, 42.896301, 42.937134>,  <35.927212, 42.779884, 42.936134>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.137085, 42.896301, 42.937134>,  <36.486870, 43.090328, 42.938801>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.137085, 42.896301, 42.937134> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325636, 0.580627, 0.746213,
		-0.359543, 0.653897, -0.665694,
		-0.874466, -0.485070, -0.004172,
		35.874744, 42.750782, 42.935883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.960022, 43.595421, 42.967743>,  <36.486870, 43.090328, 42.938801>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.960022, 43.595421, 42.967743> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.784546, 43.259777, 43.096394>,  <35.679260, 43.058392, 43.173584>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.784546, 43.259777, 43.096394>,  <35.960022, 43.595421, 42.967743>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.784546, 43.259777, 43.096394> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348250, 0.488680, 0.799946,
		-0.828415, 0.238925, -0.506600,
		-0.438693, -0.839111, 0.321624,
		35.652939, 43.008045, 43.192883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.344978, 43.772171, 42.989471>,  <35.960022, 43.595421, 42.967743>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.344978, 43.772171, 42.989471> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.377598, 43.449253, 43.223267>,  <35.397171, 43.255505, 43.363544>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.377598, 43.449253, 43.223267>,  <35.344978, 43.772171, 42.989471>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.377598, 43.449253, 43.223267> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370251, 0.519939, 0.769790,
		-0.925345, -0.279184, -0.256500,
		0.081549, -0.807291, 0.584492,
		35.402061, 43.207066, 43.398613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.654442, 43.697735, 43.313206>,  <35.344978, 43.772171, 42.989471>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.654442, 43.697735, 43.313206> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.940353, 43.536457, 43.541771>,  <35.111900, 43.439690, 43.678909>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.940353, 43.536457, 43.541771>,  <34.654442, 43.697735, 43.313206>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.940353, 43.536457, 43.541771> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255997, 0.609514, 0.750306,
		-0.650809, -0.682586, 0.332451,
		0.714782, -0.403199, 0.571417,
		35.154789, 43.415497, 43.713196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.338879, 43.731739, 43.912167>,  <34.654442, 43.697735, 43.313206>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.338879, 43.731739, 43.912167> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.724121, 43.671417, 44.001324>,  <34.955269, 43.635223, 44.054817>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.724121, 43.671417, 44.001324>,  <34.338879, 43.731739, 43.912167>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.724121, 43.671417, 44.001324> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165018, 0.323306, 0.931795,
		-0.212580, -0.934201, 0.286494,
		0.963109, -0.150804, 0.222888,
		35.013054, 43.626175, 44.068192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.357872, 43.429222, 44.637470>,  <34.338879, 43.731739, 43.912167>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.357872, 43.429222, 44.637470> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.735439, 43.542290, 44.569206>,  <34.961979, 43.610130, 44.528248>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.735439, 43.542290, 44.569206>,  <34.357872, 43.429222, 44.637470>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.735439, 43.542290, 44.569206> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110491, 0.216651, 0.969976,
		0.311159, -0.934430, 0.173267,
		0.943913, 0.282672, -0.170659,
		35.018612, 43.627090, 44.518009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.826843, 42.954277, 44.949078>,  <34.357872, 43.429222, 44.637470>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.826843, 42.954277, 44.949078> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.007183, 43.310436, 44.924007>,  <35.115387, 43.524132, 44.908966>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.007183, 43.310436, 44.924007>,  <34.826843, 42.954277, 44.949078>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.007183, 43.310436, 44.924007> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087890, 0.025589, 0.995801,
		0.888264, -0.454462, -0.066720,
		0.450847, 0.890399, -0.062673,
		35.142437, 43.577557, 44.905205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.331085, 42.989285, 45.443470>,  <34.826843, 42.954277, 44.949078>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.331085, 42.989285, 45.443470> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.320652, 43.381809, 45.367218>,  <35.314392, 43.617325, 45.321465>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.320652, 43.381809, 45.367218>,  <35.331085, 42.989285, 45.443470>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.320652, 43.381809, 45.367218> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168382, 0.192287, 0.966785,
		0.985377, -0.006881, -0.170252,
		-0.026085, 0.981314, -0.190634,
		35.312828, 43.676205, 45.310028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.872849, 43.276981, 45.786263>,  <35.331085, 42.989285, 45.443470>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.872849, 43.276981, 45.786263> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.626003, 43.587372, 45.734055>,  <35.477894, 43.773605, 45.702728>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.626003, 43.587372, 45.734055>,  <35.872849, 43.276981, 45.786263>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.626003, 43.587372, 45.734055> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095972, 0.238862, 0.966299,
		0.780998, 0.583791, -0.221877,
		-0.617115, 0.775972, -0.130523,
		35.440868, 43.820164, 45.694897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.227901, 43.777569, 46.134544>,  <35.872849, 43.276981, 45.786263>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.227901, 43.777569, 46.134544> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.869301, 43.945419, 46.077698>,  <35.654140, 44.046131, 46.043591>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.869301, 43.945419, 46.077698>,  <36.227901, 43.777569, 46.134544>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.869301, 43.945419, 46.077698> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014021, 0.347495, 0.937577,
		0.442822, 0.838545, -0.317413,
		-0.896500, 0.419630, -0.142121,
		35.600349, 44.071308, 46.035061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.331059, 44.403511, 46.352551>,  <36.227901, 43.777569, 46.134544>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.331059, 44.403511, 46.352551> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.936077, 44.340744, 46.359707>,  <35.699089, 44.303085, 46.364002>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.936077, 44.340744, 46.359707>,  <36.331059, 44.403511, 46.352551>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.936077, 44.340744, 46.359707> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071932, 0.547709, 0.833571,
		-0.140602, 0.821822, -0.552122,
		-0.987450, -0.156917, 0.017894,
		35.639843, 44.293671, 46.365074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.025982, 45.000904, 46.597126>,  <36.331059, 44.403511, 46.352551>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.025982, 45.000904, 46.597126> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.750290, 44.724380, 46.683899>,  <35.584877, 44.558468, 46.735962>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.750290, 44.724380, 46.683899>,  <36.025982, 45.000904, 46.597126>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.750290, 44.724380, 46.683899> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037305, 0.332868, 0.942235,
		-0.723586, 0.641320, -0.255210,
		-0.689226, -0.691309, 0.216934,
		35.543522, 44.516987, 46.748978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.463688, 45.395256, 46.966183>,  <36.025982, 45.000904, 46.597126>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.463688, 45.395256, 46.966183> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.441391, 45.008038, 47.063988>,  <35.428013, 44.775707, 47.122669>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.441391, 45.008038, 47.063988>,  <35.463688, 45.395256, 46.966183>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.441391, 45.008038, 47.063988> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089541, 0.248750, 0.964420,
		-0.994422, 0.031862, -0.100544,
		-0.055738, -0.968044, 0.244509,
		35.424671, 44.717625, 47.137341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.844131, 45.374245, 47.460022>,  <35.463688, 45.395256, 46.966183>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.844131, 45.374245, 47.460022> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.084366, 45.056835, 47.499233>,  <35.228508, 44.866390, 47.522762>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.084366, 45.056835, 47.499233>,  <34.844131, 45.374245, 47.460022>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.084366, 45.056835, 47.499233> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156131, 0.236639, 0.958971,
		-0.784165, -0.560643, 0.266017,
		0.600590, -0.793525, 0.098030,
		35.264542, 44.818779, 47.528641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.628536, 45.020275, 48.003647>,  <34.844131, 45.374245, 47.460022>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.628536, 45.020275, 48.003647> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.018005, 44.952858, 47.942257>,  <35.251686, 44.912407, 47.905422>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.018005, 44.952858, 47.942257>,  <34.628536, 45.020275, 48.003647>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.018005, 44.952858, 47.942257> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186269, 0.200151, 0.961896,
		-0.131405, -0.965159, 0.226276,
		0.973672, -0.168546, -0.153478,
		35.310108, 44.902294, 47.896214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.989826, 44.553875, 47.903080>,  <34.628536, 45.020275, 48.003647>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.989826, 44.553875, 47.903080> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.686760, 44.490623, 48.156361>,  <33.504921, 44.452671, 48.308327>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.686760, 44.490623, 48.156361>,  <33.989826, 44.553875, 47.903080>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.686760, 44.490623, 48.156361> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341982, -0.730152, -0.591546,
		0.555873, -0.664735, 0.499131,
		-0.757663, -0.158131, 0.633199,
		33.459461, 44.443184, 48.346321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.918270, 43.765228, 48.107613>,  <33.989826, 44.553875, 47.903080>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.918270, 43.765228, 48.107613> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.584892, 43.985111, 48.130230>,  <33.384865, 44.117039, 48.143799>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.584892, 43.985111, 48.130230>,  <33.918270, 43.765228, 48.107613>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.584892, 43.985111, 48.130230> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483443, -0.675739, -0.556471,
		-0.267686, -0.491122, 0.828941,
		-0.833443, 0.549705, 0.056544,
		33.334858, 44.150024, 48.147194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.373520, 43.294109, 48.329994>,  <33.918270, 43.765228, 48.107613>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.373520, 43.294109, 48.329994> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.157810, 43.588741, 48.166706>,  <33.028385, 43.765518, 48.068733>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.157810, 43.588741, 48.166706>,  <33.373520, 43.294109, 48.329994>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.157810, 43.588741, 48.166706> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363952, -0.640985, -0.675780,
		-0.759425, -0.215857, 0.613743,
		-0.539271, 0.736576, -0.408218,
		32.996029, 43.809715, 48.044239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.850552, 42.953819, 48.019421>,  <33.373520, 43.294109, 48.329994>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.850552, 42.953819, 48.019421> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.820583, 43.288773, 47.802837>,  <32.802601, 43.489746, 47.672890>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.820583, 43.288773, 47.802837>,  <32.850552, 42.953819, 48.019421>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.820583, 43.288773, 47.802837> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261215, -0.540503, -0.799765,
		-0.962369, 0.081516, 0.259233,
		-0.074922, 0.837384, -0.541456,
		32.798107, 43.539989, 47.640400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.286591, 42.797951, 47.590893>,  <32.850552, 42.953819, 48.019421>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.286591, 42.797951, 47.590893> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.464329, 43.096951, 47.393387>,  <32.570972, 43.276352, 47.274883>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.464329, 43.096951, 47.393387>,  <32.286591, 42.797951, 47.590893>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.464329, 43.096951, 47.393387> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356981, -0.357776, -0.862879,
		-0.821660, 0.559677, 0.107869,
		0.444341, 0.747501, -0.493765,
		32.597630, 43.321201, 47.245258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.857433, 43.035233, 46.998272>,  <32.286591, 42.797951, 47.590893>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.857433, 43.035233, 46.998272> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.208206, 43.195110, 46.891510>,  <32.418671, 43.291039, 46.827454>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.208206, 43.195110, 46.891510>,  <31.857433, 43.035233, 46.998272>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.208206, 43.195110, 46.891510> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161627, -0.277734, -0.946964,
		-0.452624, 0.873560, -0.178952,
		0.876931, 0.399695, -0.266900,
		32.471287, 43.315018, 46.811440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.687685, 43.322155, 46.353355>,  <31.857433, 43.035233, 46.998272>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.687685, 43.322155, 46.353355> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.086113, 43.288792, 46.365265>,  <32.325169, 43.268776, 46.372410>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.086113, 43.288792, 46.365265>,  <31.687685, 43.322155, 46.353355>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.086113, 43.288792, 46.365265> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010207, -0.225848, -0.974109,
		0.087971, 0.970585, -0.224109,
		0.996071, -0.083406, 0.029775,
		32.384933, 43.263771, 46.374199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.931463, 43.739090, 45.776772>,  <31.687685, 43.322155, 46.353355>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.931463, 43.739090, 45.776772> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.199753, 43.452660, 45.854088>,  <32.360725, 43.280800, 45.900478>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.199753, 43.452660, 45.854088>,  <31.931463, 43.739090, 45.776772>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.199753, 43.452660, 45.854088> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028067, -0.235917, -0.971368,
		0.741174, 0.656947, -0.138137,
		0.670726, -0.716076, 0.193294,
		32.400970, 43.237839, 45.912075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.360485, 43.824009, 45.206593>,  <31.931463, 43.739090, 45.776772>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.360485, 43.824009, 45.206593> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.420284, 43.454781, 45.348347>,  <32.456165, 43.233242, 45.433399>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.420284, 43.454781, 45.348347>,  <32.360485, 43.824009, 45.206593>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.420284, 43.454781, 45.348347> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073783, -0.346995, -0.934960,
		0.986005, 0.165924, 0.016231,
		0.149500, -0.923073, 0.354382,
		32.465134, 43.177860, 45.454662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.081425, 43.630951, 44.917873>,  <32.360485, 43.824009, 45.206593>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.081425, 43.630951, 44.917873> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.879669, 43.307652, 45.039421>,  <32.758617, 43.113674, 45.112350>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.879669, 43.307652, 45.039421>,  <33.081425, 43.630951, 44.917873>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.879669, 43.307652, 45.039421> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112946, -0.410640, -0.904775,
		0.856060, -0.422035, 0.298409,
		-0.504385, -0.808246, 0.303865,
		32.728352, 43.065178, 45.130581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.562428, 43.155025, 44.818726>,  <33.081425, 43.630951, 44.917873>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.562428, 43.155025, 44.818726> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.213570, 42.959396, 44.813526>,  <33.004253, 42.842018, 44.810406>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.213570, 42.959396, 44.813526>,  <33.562428, 43.155025, 44.818726>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.213570, 42.959396, 44.813526> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300333, -0.514227, -0.803350,
		0.386215, -0.704541, 0.595366,
		-0.872146, -0.489074, -0.012995,
		32.951927, 42.812675, 44.809628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.699883, 42.525318, 44.519737>,  <33.562428, 43.155025, 44.818726>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.699883, 42.525318, 44.519737> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.303101, 42.479500, 44.498173>,  <33.065033, 42.452011, 44.485233>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.303101, 42.479500, 44.498173>,  <33.699883, 42.525318, 44.519737>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.303101, 42.479500, 44.498173> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103645, -0.490271, -0.865386,
		0.072691, -0.864011, 0.498198,
		-0.991954, -0.114542, -0.053912,
		33.005516, 42.445137, 44.481998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.601894, 41.824532, 44.389996>,  <33.699883, 42.525318, 44.519737>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.601894, 41.824532, 44.389996> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.262825, 42.001450, 44.272812>,  <33.059383, 42.107601, 44.202503>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.262825, 42.001450, 44.272812>,  <33.601894, 41.824532, 44.389996>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.262825, 42.001450, 44.272812> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033099, -0.507041, -0.861287,
		-0.529485, -0.739786, 0.415165,
		-0.847673, 0.442297, -0.292957,
		33.008522, 42.134140, 44.184925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.148911, 41.287003, 44.160503>,  <33.601894, 41.824532, 44.389996>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.148911, 41.287003, 44.160503> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.001602, 41.620358, 43.995651>,  <32.913216, 41.820370, 43.896740>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.001602, 41.620358, 43.995651>,  <33.148911, 41.287003, 44.160503>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.001602, 41.620358, 43.995651> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020776, -0.450548, -0.892510,
		-0.929487, -0.320122, 0.183237,
		-0.368269, 0.833384, -0.412128,
		32.891121, 41.870373, 43.872013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.829155, 41.052475, 43.537888>,  <33.148911, 41.287003, 44.160503>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.829155, 41.052475, 43.537888> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.846977, 41.448799, 43.486809>,  <32.857670, 41.686592, 43.456161>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.846977, 41.448799, 43.486809>,  <32.829155, 41.052475, 43.537888>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.846977, 41.448799, 43.486809> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043161, -0.129617, -0.990624,
		-0.998074, 0.038624, -0.048539,
		0.044553, 0.990811, -0.127701,
		32.860344, 41.746044, 43.448498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.432056, 41.233227, 42.980453>,  <32.829155, 41.052475, 43.537888>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.432056, 41.233227, 42.980453> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.703533, 41.526535, 42.996887>,  <32.866421, 41.702522, 43.006748>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.703533, 41.526535, 42.996887>,  <32.432056, 41.233227, 42.980453>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.703533, 41.526535, 42.996887> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135622, -0.070152, -0.988274,
		-0.721793, 0.676305, -0.147059,
		0.678691, 0.733273, 0.041087,
		32.907139, 41.746517, 43.009212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.266796, 41.639645, 42.325619>,  <32.432056, 41.233227, 42.980453>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.266796, 41.639645, 42.325619> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.638405, 41.737488, 42.436680>,  <32.861370, 41.796196, 42.503315>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.638405, 41.737488, 42.436680>,  <32.266796, 41.639645, 42.325619>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.638405, 41.737488, 42.436680> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259821, 0.103046, -0.960143,
		-0.263471, 0.964131, 0.032177,
		0.929019, 0.244610, 0.277650,
		32.917110, 41.810871, 42.519974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.412739, 42.154518, 41.968506>,  <32.266796, 41.639645, 42.325619>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.412739, 42.154518, 41.968506> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.785435, 42.041416, 42.059639>,  <33.009052, 41.973553, 42.114319>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.785435, 42.041416, 42.059639>,  <32.412739, 42.154518, 41.968506>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.785435, 42.041416, 42.059639> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255883, 0.066082, -0.964446,
		0.257649, 0.956913, 0.133924,
		0.931741, -0.282757, 0.227832,
		33.064957, 41.956589, 42.127987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.743393, 42.677200, 41.671124>,  <32.412739, 42.154518, 41.968506>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.743393, 42.677200, 41.671124> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.978512, 42.357334, 41.720150>,  <33.119583, 42.165413, 41.749565>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.978512, 42.357334, 41.720150>,  <32.743393, 42.677200, 41.671124>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.978512, 42.357334, 41.720150> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312517, 0.084705, -0.946128,
		0.746206, 0.594438, 0.299699,
		0.587801, -0.799668, 0.122564,
		33.154854, 42.117435, 41.756920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.129051, 42.677017, 41.018539>,  <32.743393, 42.677200, 41.671124>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.129051, 42.677017, 41.018539> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.291138, 42.349941, 41.182095>,  <33.388390, 42.153694, 41.280228>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.291138, 42.349941, 41.182095>,  <33.129051, 42.677017, 41.018539>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.291138, 42.349941, 41.182095> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436060, -0.220227, -0.872555,
		0.803526, 0.531869, 0.267322,
		0.405213, -0.817689, 0.408885,
		33.412701, 42.104633, 41.304760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.842930, 42.672684, 40.941570>,  <33.129051, 42.677017, 41.018539>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.842930, 42.672684, 40.941570> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.691189, 42.302944, 40.957951>,  <33.600143, 42.081100, 40.967777>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.691189, 42.302944, 40.957951>,  <33.842930, 42.672684, 40.941570>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.691189, 42.302944, 40.957951> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425468, -0.213571, -0.879411,
		0.821626, -0.316183, 0.474298,
		-0.379351, -0.924346, 0.040949,
		33.577385, 42.025639, 40.970234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<43.858635, 36.734119, 26.457800> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.500256, 36.899574, 26.522522>,  <43.285229, 36.998848, 26.561356>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.500256, 36.899574, 26.522522>,  <43.858635, 36.734119, 26.457800>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.500256, 36.899574, 26.522522> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025017, -0.316723, 0.948188,
		0.443455, 0.853575, 0.273419,
		-0.895948, 0.413638, 0.161806,
		43.231472, 37.023666, 26.571064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.787918, 37.152042, 27.133099>,  <43.858635, 36.734119, 26.457800>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.787918, 37.152042, 27.133099> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.430332, 37.014599, 27.018023>,  <43.215782, 36.932133, 26.948977>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.430332, 37.014599, 27.018023>,  <43.787918, 37.152042, 27.133099>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.430332, 37.014599, 27.018023> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144728, -0.386203, 0.910989,
		-0.424133, 0.856025, 0.295520,
		-0.893960, -0.343611, -0.287692,
		43.162144, 36.911514, 26.931715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.457409, 37.168274, 27.683556>,  <43.787918, 37.152042, 27.133099>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.457409, 37.168274, 27.683556> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.219795, 36.923347, 27.474869>,  <43.077229, 36.776390, 27.349657>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.219795, 36.923347, 27.474869>,  <43.457409, 37.168274, 27.683556>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.219795, 36.923347, 27.474869> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234211, -0.488805, 0.840366,
		-0.769589, 0.621399, 0.146955,
		-0.594035, -0.612318, -0.521717,
		43.041584, 36.739651, 27.318354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.692471, 37.206295, 27.965147>,  <43.457409, 37.168274, 27.683556>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.692471, 37.206295, 27.965147> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.788200, 36.858856, 27.791592>,  <42.845638, 36.650391, 27.687458>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.788200, 36.858856, 27.791592>,  <42.692471, 37.206295, 27.965147>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.788200, 36.858856, 27.791592> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105080, -0.467422, 0.877767,
		-0.965237, -0.164477, -0.203138,
		0.239324, -0.868599, -0.433889,
		42.859997, 36.598278, 27.661425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.269733, 36.830757, 28.447042>,  <42.692471, 37.206295, 27.965147>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.269733, 36.830757, 28.447042> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.470512, 36.552128, 28.241972>,  <42.590981, 36.384949, 28.118931>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.470512, 36.552128, 28.241972>,  <42.269733, 36.830757, 28.447042>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.470512, 36.552128, 28.241972> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176581, -0.662807, 0.727672,
		-0.846681, -0.274723, -0.455695,
		0.501946, -0.696573, -0.512676,
		42.621098, 36.343155, 28.088169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.873848, 36.224499, 28.529652>,  <42.269733, 36.830757, 28.447042>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.873848, 36.224499, 28.529652> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.226242, 36.073277, 28.415850>,  <42.437679, 35.982544, 28.347569>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.226242, 36.073277, 28.415850>,  <41.873848, 36.224499, 28.529652>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.226242, 36.073277, 28.415850> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034490, -0.651009, 0.758286,
		-0.471890, -0.658224, -0.586567,
		0.880982, -0.378059, -0.284502,
		42.490536, 35.959858, 28.330500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.776035, 35.505066, 28.534639>,  <41.873848, 36.224499, 28.529652>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.776035, 35.505066, 28.534639> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.155094, 35.605175, 28.613964>,  <42.382530, 35.665241, 28.661558>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.155094, 35.605175, 28.613964>,  <41.776035, 35.505066, 28.534639>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.155094, 35.605175, 28.613964> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053447, -0.487962, 0.871227,
		0.314814, -0.836215, -0.449040,
		0.947647, 0.250275, 0.198310,
		42.439388, 35.680256, 28.673456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.912113, 34.917503, 28.844051>,  <41.776035, 35.505066, 28.534639>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.912113, 34.917503, 28.844051> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.195702, 35.189423, 28.919147>,  <42.365852, 35.352573, 28.964205>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.195702, 35.189423, 28.919147>,  <41.912113, 34.917503, 28.844051>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.195702, 35.189423, 28.919147> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119060, -0.377753, 0.918220,
		0.695119, -0.628635, -0.348751,
		0.708967, 0.679794, 0.187738,
		42.408390, 35.393360, 28.975470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.452934, 34.611744, 29.129904>,  <41.912113, 34.917503, 28.844051>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.452934, 34.611744, 29.129904> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.509953, 34.990646, 29.244719>,  <42.544163, 35.217987, 29.313608>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.509953, 34.990646, 29.244719>,  <42.452934, 34.611744, 29.129904>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.509953, 34.990646, 29.244719> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124320, -0.304836, 0.944256,
		0.981950, -0.098911, -0.161214,
		0.142541, 0.947255, 0.287037,
		42.552715, 35.274822, 29.330830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.012600, 34.614902, 29.469185>,  <42.452934, 34.611744, 29.129904>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.012600, 34.614902, 29.469185> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.834492, 34.951191, 29.592424>,  <42.727627, 35.152962, 29.666368>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.834492, 34.951191, 29.592424>,  <43.012600, 34.614902, 29.469185>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.834492, 34.951191, 29.592424> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275571, -0.198722, 0.940516,
		0.851936, 0.503687, -0.143193,
		-0.445271, 0.840719, 0.308100,
		42.700912, 35.203407, 29.684855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.454041, 34.853951, 29.934273>,  <43.012600, 34.614902, 29.469185>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.454041, 34.853951, 29.934273> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.125927, 35.061714, 30.030067>,  <42.929058, 35.186371, 30.087543>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.125927, 35.061714, 30.030067>,  <43.454041, 34.853951, 29.934273>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.125927, 35.061714, 30.030067> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190496, -0.146705, 0.970664,
		0.539305, 0.841839, 0.021394,
		-0.820281, 0.519408, 0.239486,
		42.879841, 35.217537, 30.101913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.637047, 35.287514, 30.417109>,  <43.454041, 34.853951, 29.934273>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.637047, 35.287514, 30.417109> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.240288, 35.242161, 30.440050>,  <43.002232, 35.214947, 30.453815>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.240288, 35.242161, 30.440050>,  <43.637047, 35.287514, 30.417109>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.240288, 35.242161, 30.440050> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087036, -0.277412, 0.956800,
		-0.092576, 0.954037, 0.285032,
		-0.991894, -0.113385, 0.057354,
		42.942719, 35.208145, 30.457256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.431267, 35.509182, 31.125189>,  <43.637047, 35.287514, 30.417109>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.431267, 35.509182, 31.125189> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.093262, 35.332199, 31.005068>,  <42.890457, 35.226009, 30.932995>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.093262, 35.332199, 31.005068>,  <43.431267, 35.509182, 31.125189>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.093262, 35.332199, 31.005068> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207009, -0.247125, 0.946613,
		-0.493051, 0.862066, 0.117231,
		-0.845013, -0.442461, -0.300301,
		42.839756, 35.199459, 30.914978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.985390, 35.764805, 31.569420>,  <43.431267, 35.509182, 31.125189>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.985390, 35.764805, 31.569420> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.840816, 35.418194, 31.431725>,  <42.754074, 35.210228, 31.349108>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.840816, 35.418194, 31.431725>,  <42.985390, 35.764805, 31.569420>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.840816, 35.418194, 31.431725> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302087, -0.240456, 0.922456,
		-0.882107, 0.437392, -0.174859,
		-0.361429, -0.866527, -0.344239,
		42.732388, 35.158237, 31.328453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.277565, 35.695847, 31.902584>,  <42.985390, 35.764805, 31.569420>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.277565, 35.695847, 31.902584> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.379276, 35.328651, 31.780840>,  <42.440304, 35.108334, 31.707794>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.379276, 35.328651, 31.780840>,  <42.277565, 35.695847, 31.902584>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.379276, 35.328651, 31.780840> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311966, -0.375734, 0.872640,
		-0.915435, -0.126940, -0.381922,
		0.254274, -0.917992, -0.304359,
		42.455559, 35.053253, 31.689531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.749786, 35.227928, 32.060379>,  <42.277565, 35.695847, 31.902584>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.749786, 35.227928, 32.060379> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.071602, 34.992882, 32.025921>,  <42.264690, 34.851852, 32.005245>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.071602, 34.992882, 32.025921>,  <41.749786, 35.227928, 32.060379>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.071602, 34.992882, 32.025921> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168644, -0.365119, 0.915558,
		-0.569455, -0.722073, -0.392851,
		0.804537, -0.587621, -0.086145,
		42.312962, 34.816597, 32.000076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.535004, 34.539066, 32.284447>,  <41.749786, 35.227928, 32.060379>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.535004, 34.539066, 32.284447> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.933853, 34.552608, 32.311550>,  <42.173164, 34.560734, 32.327812>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.933853, 34.552608, 32.311550>,  <41.535004, 34.539066, 32.284447>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.933853, 34.552608, 32.311550> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053185, -0.323952, 0.944577,
		0.053929, -0.945468, -0.321221,
		0.997127, 0.033856, 0.067755,
		42.232990, 34.562767, 32.331879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.611931, 33.972603, 32.579037>,  <41.535004, 34.539066, 32.284447>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.611931, 33.972603, 32.579037> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.968296, 34.148994, 32.622509>,  <42.182114, 34.254829, 32.648594>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.968296, 34.148994, 32.622509>,  <41.611931, 33.972603, 32.579037>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.968296, 34.148994, 32.622509> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029835, -0.181953, 0.982855,
		0.453193, -0.878881, -0.148948,
		0.890913, 0.440979, 0.108681,
		42.235569, 34.281288, 32.655113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.026176, 33.556969, 32.911457>,  <41.611931, 33.972603, 32.579037>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.026176, 33.556969, 32.911457> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.190250, 33.916660, 32.972305>,  <42.288696, 34.132473, 33.008816>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.190250, 33.916660, 32.972305>,  <42.026176, 33.556969, 32.911457>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.190250, 33.916660, 32.972305> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094251, -0.207702, 0.973641,
		0.907120, -0.385034, -0.169949,
		0.410183, 0.899227, 0.152121,
		42.313305, 34.186428, 33.017941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.629265, 33.378246, 33.380356>,  <42.026176, 33.556969, 32.911457>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.629265, 33.378246, 33.380356> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.562771, 33.767639, 33.443211>,  <42.522873, 34.001274, 33.480923>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.562771, 33.767639, 33.443211>,  <42.629265, 33.378246, 33.380356>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.562771, 33.767639, 33.443211> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159224, -0.130767, 0.978544,
		0.973146, 0.187691, -0.133264,
		-0.166237, 0.973485, 0.157140,
		42.512901, 34.059685, 33.490353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.097015, 33.499111, 33.871716>,  <42.629265, 33.378246, 33.380356>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.097015, 33.499111, 33.871716> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.807587, 33.774078, 33.896721>,  <42.633930, 33.939056, 33.911724>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.807587, 33.774078, 33.896721>,  <43.097015, 33.499111, 33.871716>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.807587, 33.774078, 33.896721> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122198, -0.216708, 0.968558,
		0.679348, 0.693181, 0.240804,
		-0.723570, 0.687414, 0.062515,
		42.590515, 33.980301, 33.915474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.164581, 34.019112, 34.516018>,  <43.097015, 33.499111, 33.871716>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.164581, 34.019112, 34.516018> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.791283, 33.928921, 34.404148>,  <42.567303, 33.874805, 34.337029>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.791283, 33.928921, 34.404148>,  <43.164581, 34.019112, 34.516018>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.791283, 33.928921, 34.404148> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205494, -0.303503, 0.930408,
		-0.294665, 0.925768, 0.236909,
		-0.933244, -0.225475, -0.279671,
		42.511311, 33.861279, 34.320248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.863609, 34.135006, 34.845524>,  <43.164581, 34.019112, 34.516018>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.863609, 34.135006, 34.845524> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.236538, 34.000401, 34.792557>,  <44.460297, 33.919640, 34.760777>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.236538, 34.000401, 34.792557>,  <43.863609, 34.135006, 34.845524>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.236538, 34.000401, 34.792557> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174017, 0.738469, -0.651446,
		0.317005, 0.584315, 0.747050,
		0.932323, -0.336511, -0.132418,
		44.516235, 33.899448, 34.752831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.146179, 34.671413, 34.837730>,  <43.863609, 34.135006, 34.845524>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.146179, 34.671413, 34.837730> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.442547, 34.454952, 34.678635>,  <44.620365, 34.325077, 34.583176>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.442547, 34.454952, 34.678635>,  <44.146179, 34.671413, 34.837730>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.442547, 34.454952, 34.678635> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216450, 0.753042, -0.621352,
		0.635760, 0.374279, 0.675073,
		0.740917, -0.541150, -0.397741,
		44.664822, 34.292606, 34.559311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.769249, 35.162430, 34.702702>,  <44.146179, 34.671413, 34.837730>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.769249, 35.162430, 34.702702> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.824509, 34.847836, 34.461918>,  <44.857662, 34.659081, 34.317448>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.824509, 34.847836, 34.461918>,  <44.769249, 35.162430, 34.702702>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.824509, 34.847836, 34.461918> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318945, 0.610741, -0.724755,
		0.937651, -0.091871, 0.335216,
		0.138146, -0.786483, -0.601964,
		44.865952, 34.611889, 34.281330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.417694, 35.165955, 34.407852>,  <44.769249, 35.162430, 34.702702>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.417694, 35.165955, 34.407852> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.204884, 34.952835, 34.144619>,  <45.077198, 34.824963, 33.986679>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.204884, 34.952835, 34.144619>,  <45.417694, 35.165955, 34.407852>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.204884, 34.952835, 34.144619> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372514, 0.550669, -0.746992,
		0.760380, -0.642567, -0.094497,
		-0.532029, -0.532797, -0.658083,
		45.045277, 34.792995, 33.947193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.916389, 35.179882, 33.856888>,  <45.417694, 35.165955, 34.407852>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.916389, 35.179882, 33.856888> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.585831, 35.048157, 33.674187>,  <45.387497, 34.969120, 33.564568>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.585831, 35.048157, 33.674187>,  <45.916389, 35.179882, 33.856888>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.585831, 35.048157, 33.674187> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156389, 0.645010, -0.748000,
		0.540941, -0.689574, -0.481530,
		-0.826393, -0.329318, -0.456754,
		45.337914, 34.949360, 33.537159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.104202, 35.185509, 33.204189>,  <45.916389, 35.179882, 33.856888>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.104202, 35.185509, 33.204189> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.710186, 35.152447, 33.143707>,  <45.473778, 35.132610, 33.107418>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.710186, 35.152447, 33.143707>,  <46.104202, 35.185509, 33.204189>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.710186, 35.152447, 33.143707> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079343, 0.561369, -0.823754,
		0.152966, -0.823428, -0.546413,
		-0.985041, -0.082652, -0.151203,
		45.414673, 35.127651, 33.098347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.946362, 35.051228, 32.470955>,  <46.104202, 35.185509, 33.204189>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.946362, 35.051228, 32.470955> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.599934, 35.188522, 32.616341>,  <45.392075, 35.270901, 32.703571>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.599934, 35.188522, 32.616341>,  <45.946362, 35.051228, 32.470955>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.599934, 35.188522, 32.616341> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158181, 0.501543, -0.850549,
		-0.474233, -0.794130, -0.380079,
		-0.866072, 0.343237, 0.363464,
		45.340111, 35.291492, 32.725380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.448433, 35.035175, 31.855310>,  <45.946362, 35.051228, 32.470955>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.448433, 35.035175, 31.855310> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.300232, 35.273430, 32.140392>,  <45.211311, 35.416382, 32.311443>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.300232, 35.273430, 32.140392>,  <45.448433, 35.035175, 31.855310>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.300232, 35.273430, 32.140392> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138580, 0.723276, -0.676511,
		-0.918436, -0.349415, -0.185431,
		-0.370500, 0.595635, 0.712705,
		45.189083, 35.452122, 32.354202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.814362, 35.319462, 31.596201>,  <45.448433, 35.035175, 31.855310>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.814362, 35.319462, 31.596201> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.967327, 35.564568, 31.872831>,  <45.059105, 35.711632, 32.038811>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.967327, 35.564568, 31.872831>,  <44.814362, 35.319462, 31.596201>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.967327, 35.564568, 31.872831> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054806, 0.762190, -0.645029,
		-0.922364, 0.208765, 0.325055,
		0.382414, 0.612767, 0.691575,
		45.082050, 35.748398, 32.080303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.326805, 35.881596, 31.553316>,  <44.814362, 35.319462, 31.596201>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.326805, 35.881596, 31.553316> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.654514, 36.025402, 31.731997>,  <44.851139, 36.111687, 31.839205>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.654514, 36.025402, 31.731997>,  <44.326805, 35.881596, 31.553316>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.654514, 36.025402, 31.731997> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173502, 0.897940, -0.404477,
		-0.546528, 0.253872, 0.798033,
		0.819271, 0.359518, 0.446701,
		44.900295, 36.133259, 31.866007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.151459, 36.445621, 32.013893>,  <44.326805, 35.881596, 31.553316>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.151459, 36.445621, 32.013893> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.528603, 36.508076, 31.896154>,  <44.754890, 36.545547, 31.825512>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.528603, 36.508076, 31.896154>,  <44.151459, 36.445621, 32.013893>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.528603, 36.508076, 31.896154> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275035, 0.863365, -0.423032,
		0.188077, 0.479814, 0.856974,
		0.942859, 0.156136, -0.294345,
		44.811459, 36.554916, 31.807850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.335442, 37.158005, 32.092964>,  <44.151459, 36.445621, 32.013893>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.335442, 37.158005, 32.092964> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.636467, 37.019638, 31.868824>,  <44.817081, 36.936619, 31.734341>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.636467, 37.019638, 31.868824>,  <44.335442, 37.158005, 32.092964>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.636467, 37.019638, 31.868824> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087024, 0.791220, -0.605308,
		0.652742, 0.504298, 0.565342,
		0.752565, -0.345912, -0.560349,
		44.862236, 36.915863, 31.700720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.676651, 37.746548, 32.003525>,  <44.335442, 37.158005, 32.092964>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.676651, 37.746548, 32.003525> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.792385, 37.488609, 31.720551>,  <44.861824, 37.333847, 31.550766>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.792385, 37.488609, 31.720551>,  <44.676651, 37.746548, 32.003525>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.792385, 37.488609, 31.720551> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088322, 0.753876, -0.651053,
		0.953144, 0.125891, 0.275077,
		0.289336, -0.644843, -0.707434,
		44.879185, 37.295158, 31.508320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.276432, 38.119305, 31.770893>,  <44.676651, 37.746548, 32.003525>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.276432, 38.119305, 31.770893> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.141785, 37.841225, 31.516844>,  <45.060997, 37.674377, 31.364414>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.141785, 37.841225, 31.516844>,  <45.276432, 38.119305, 31.770893>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.141785, 37.841225, 31.516844> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046068, 0.661519, -0.748512,
		0.940515, -0.281219, -0.190651,
		-0.336615, -0.695204, -0.635124,
		45.040802, 37.632664, 31.326307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.843067, 38.121861, 31.305422>,  <45.276432, 38.119305, 31.770893>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.843067, 38.121861, 31.305422> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.476646, 38.041222, 31.166739>,  <45.256794, 37.992840, 31.083529>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.476646, 38.041222, 31.166739>,  <45.843067, 38.121861, 31.305422>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.476646, 38.041222, 31.166739> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130751, 0.667134, -0.733373,
		0.379144, -0.717142, -0.584771,
		-0.916053, -0.201595, -0.346707,
		45.201832, 37.980743, 31.062727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.984375, 38.240189, 30.619610>,  <45.843067, 38.121861, 31.305422>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.984375, 38.240189, 30.619610> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.590431, 38.171028, 30.614603>,  <45.354065, 38.129532, 30.611599>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.590431, 38.171028, 30.614603>,  <45.984375, 38.240189, 30.619610>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.590431, 38.171028, 30.614603> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105780, 0.656606, -0.746779,
		0.137335, -0.734149, -0.664954,
		-0.984860, -0.172897, -0.012517,
		45.294971, 38.119160, 30.610847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.883118, 38.241600, 29.900745>,  <45.984375, 38.240189, 30.619610>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.883118, 38.241600, 29.900745> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.526398, 38.281330, 30.077299>,  <45.312366, 38.305168, 30.183231>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.526398, 38.281330, 30.077299>,  <45.883118, 38.241600, 29.900745>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.526398, 38.281330, 30.077299> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217952, 0.760617, -0.611521,
		-0.396463, -0.641558, -0.656674,
		-0.891804, 0.099322, 0.441385,
		45.258858, 38.311127, 30.209715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.310825, 38.207951, 29.367422>,  <45.883118, 38.241600, 29.900745>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.310825, 38.207951, 29.367422> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.147911, 38.389683, 29.684332>,  <45.050163, 38.498722, 29.874477>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.147911, 38.389683, 29.684332>,  <45.310825, 38.207951, 29.367422>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.147911, 38.389683, 29.684332> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433651, 0.667261, -0.605566,
		-0.803780, -0.590212, -0.074748,
		-0.407289, 0.454327, 0.792277,
		45.025726, 38.525982, 29.922014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.595284, 38.423004, 29.169790>,  <45.310825, 38.207951, 29.367422>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.595284, 38.423004, 29.169790> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.683128, 38.669834, 29.472046>,  <44.735836, 38.817932, 29.653399>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.683128, 38.669834, 29.472046>,  <44.595284, 38.423004, 29.169790>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.683128, 38.669834, 29.472046> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268910, 0.782829, -0.561130,
		-0.937795, -0.079969, 0.337854,
		0.219609, 0.617077, 0.755637,
		44.749012, 38.854958, 29.698736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.957325, 38.806023, 29.252956>,  <44.595284, 38.423004, 29.169790>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.957325, 38.806023, 29.252956> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.252598, 39.017433, 29.420645>,  <44.429760, 39.144279, 29.521257>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.252598, 39.017433, 29.420645>,  <43.957325, 38.806023, 29.252956>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.252598, 39.017433, 29.420645> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086257, 0.690282, -0.718380,
		-0.669065, 0.494134, 0.555143,
		0.738181, 0.528528, 0.419221,
		44.474052, 39.175991, 29.546412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<38.663818, 39.609417, 38.184532> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.267288, 39.658607, 38.166000>,  <38.029369, 39.688122, 38.154881>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.267288, 39.658607, 38.166000>,  <38.663818, 39.609417, 38.184532>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.267288, 39.658607, 38.166000> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095018, -0.914294, -0.393750,
		-0.090783, -0.385932, 0.918049,
		-0.991327, 0.122977, -0.046332,
		37.969891, 39.695499, 38.152100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.378281, 38.962708, 38.469193>,  <38.663818, 39.609417, 38.184532>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.378281, 38.962708, 38.469193> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.086987, 39.130428, 38.252361>,  <37.912209, 39.231060, 38.122261>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.086987, 39.130428, 38.252361>,  <38.378281, 38.962708, 38.469193>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.086987, 39.130428, 38.252361> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148294, -0.868658, -0.472697,
		-0.669086, -0.263849, 0.694771,
		-0.728239, 0.419305, -0.542080,
		37.868515, 39.256222, 38.089737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.761940, 38.497036, 38.498493>,  <38.378281, 38.962708, 38.469193>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.761940, 38.497036, 38.498493> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.709999, 38.732121, 38.179062>,  <37.678833, 38.873173, 37.987404>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.709999, 38.732121, 38.179062>,  <37.761940, 38.497036, 38.498493>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.709999, 38.732121, 38.179062> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175924, -0.806279, -0.564770,
		-0.975802, 0.067155, 0.208089,
		-0.129851, 0.587712, -0.798582,
		37.671043, 38.908436, 37.939487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.295555, 38.064423, 38.012482>,  <37.761940, 38.497036, 38.498493>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.295555, 38.064423, 38.012482> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.400162, 38.359974, 37.764072>,  <37.462925, 38.537304, 37.615025>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.400162, 38.359974, 37.764072>,  <37.295555, 38.064423, 38.012482>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.400162, 38.359974, 37.764072> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162575, -0.600506, -0.782919,
		-0.951410, 0.305707, -0.036918,
		0.261513, 0.738875, -0.621027,
		37.478615, 38.581635, 37.577763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.809353, 38.089485, 37.478752>,  <37.295555, 38.064423, 38.012482>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.809353, 38.089485, 37.478752> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.142036, 38.249905, 37.325169>,  <37.341648, 38.346157, 37.233021>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.142036, 38.249905, 37.325169>,  <36.809353, 38.089485, 37.478752>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.142036, 38.249905, 37.325169> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150443, -0.502889, -0.851158,
		-0.534439, 0.765680, -0.357923,
		0.831710, 0.401045, -0.383955,
		37.391548, 38.370216, 37.209984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.759182, 37.874763, 36.795624>,  <36.809353, 38.089485, 37.478752>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.759182, 37.874763, 36.795624> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.138649, 37.999813, 36.814754>,  <37.366329, 38.074844, 36.826233>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.138649, 37.999813, 36.814754>,  <36.759182, 37.874763, 36.795624>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.138649, 37.999813, 36.814754> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218815, -0.539632, -0.812968,
		-0.228346, 0.781705, -0.580341,
		0.948672, 0.312625, 0.047826,
		37.423252, 38.093601, 36.829102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.951916, 38.419704, 36.170830>,  <36.759182, 37.874763, 36.795624>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.951916, 38.419704, 36.170830> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.257236, 38.221546, 36.336700>,  <37.440430, 38.102650, 36.436222>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.257236, 38.221546, 36.336700>,  <36.951916, 38.419704, 36.170830>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.257236, 38.221546, 36.336700> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232572, -0.388125, -0.891779,
		0.602730, 0.777136, -0.181040,
		0.763300, -0.495397, 0.414675,
		37.486225, 38.072926, 36.461102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.442677, 38.556274, 35.760876>,  <36.951916, 38.419704, 36.170830>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.442677, 38.556274, 35.760876> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.575920, 38.230206, 35.950417>,  <37.655869, 38.034565, 36.064140>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.575920, 38.230206, 35.950417>,  <37.442677, 38.556274, 35.760876>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.575920, 38.230206, 35.950417> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435484, -0.312732, -0.844128,
		0.836296, 0.487545, 0.250818,
		0.333112, -0.815168, 0.473854,
		37.675854, 37.985657, 36.092571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.159580, 38.493790, 35.707989>,  <37.442677, 38.556274, 35.760876>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.159580, 38.493790, 35.707989> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.031734, 38.120583, 35.774109>,  <37.955029, 37.896660, 35.813782>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.031734, 38.120583, 35.774109>,  <38.159580, 38.493790, 35.707989>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.031734, 38.120583, 35.774109> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.632687, -0.340004, -0.695776,
		0.705376, -0.117793, 0.698978,
		-0.319612, -0.933018, 0.165304,
		37.935852, 37.840675, 35.823700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.572464, 38.118137, 35.500141>,  <38.159580, 38.493790, 35.707989>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.572464, 38.118137, 35.500141> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.328564, 37.805050, 35.550034>,  <38.182224, 37.617195, 35.579967>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.328564, 37.805050, 35.550034>,  <38.572464, 38.118137, 35.500141>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.328564, 37.805050, 35.550034> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.670513, -0.593314, -0.445411,
		0.422637, -0.187954, 0.886595,
		-0.609746, -0.782721, 0.124731,
		38.145641, 37.570232, 35.587452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.008324, 37.597992, 35.609287>,  <38.572464, 38.118137, 35.500141>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.008324, 37.597992, 35.609287> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.662186, 37.451427, 35.472519>,  <38.454502, 37.363487, 35.390457>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.662186, 37.451427, 35.472519>,  <39.008324, 37.597992, 35.609287>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.662186, 37.451427, 35.472519> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501099, -0.620919, -0.602793,
		0.008565, -0.692964, 0.720921,
		-0.865348, -0.366415, -0.341925,
		38.402580, 37.341503, 35.369942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.967705, 36.834312, 35.707363>,  <39.008324, 37.597992, 35.609287>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.967705, 36.834312, 35.707363> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.737583, 36.965786, 35.407764>,  <38.599510, 37.044670, 35.228004>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.737583, 36.965786, 35.407764>,  <38.967705, 36.834312, 35.707363>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.737583, 36.965786, 35.407764> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499424, -0.584045, -0.639897,
		-0.647771, -0.742200, 0.171849,
		-0.575299, 0.328681, -0.748999,
		38.564995, 37.064388, 35.183064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.499424, 36.312595, 35.347649>,  <38.967705, 36.834312, 35.707363>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.499424, 36.312595, 35.347649> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.640316, 36.593975, 35.100716>,  <38.724850, 36.762802, 34.952557>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.640316, 36.593975, 35.100716>,  <38.499424, 36.312595, 35.347649>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.640316, 36.593975, 35.100716> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412965, -0.708731, -0.571979,
		-0.839879, -0.053469, -0.540134,
		0.352226, 0.703449, -0.617329,
		38.745983, 36.805012, 34.915516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.021862, 35.827053, 35.144810>,  <38.499424, 36.312595, 35.347649>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.021862, 35.827053, 35.144810> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.804131, 35.708630, 34.830853>,  <38.673492, 35.637577, 34.642479>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.804131, 35.708630, 34.830853>,  <39.021862, 35.827053, 35.144810>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.804131, 35.708630, 34.830853> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.838812, 0.203161, 0.505094,
		0.009924, 0.933316, -0.358921,
		-0.544331, -0.296054, -0.784892,
		38.640831, 35.619812, 34.595387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.728512, 35.159710, 34.950035>,  <39.021862, 35.827053, 35.144810>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.728512, 35.159710, 34.950035> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.632252, 34.777493, 35.018181>,  <38.574497, 34.548161, 35.059067>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.632252, 34.777493, 35.018181>,  <38.728512, 35.159710, 34.950035>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.632252, 34.777493, 35.018181> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.726078, 0.293704, 0.621731,
		-0.644127, 0.025923, -0.764479,
		-0.240648, -0.955545, 0.170360,
		38.560059, 34.490829, 35.069290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.954521, 35.136532, 34.998138>,  <38.728512, 35.159710, 34.950035>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.954521, 35.136532, 34.998138> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.061821, 34.783741, 35.153137>,  <38.126202, 34.572067, 35.246136>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.061821, 34.783741, 35.153137>,  <37.954521, 35.136532, 34.998138>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.061821, 34.783741, 35.153137> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.632739, 0.142007, 0.761233,
		-0.726419, -0.449386, -0.519969,
		0.268248, -0.881979, 0.387500,
		38.142296, 34.519146, 35.269386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.347115, 34.956421, 35.398308>,  <37.954521, 35.136532, 34.998138>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.347115, 34.956421, 35.398308> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.598877, 34.689590, 35.557739>,  <37.749935, 34.529491, 35.653397>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.598877, 34.689590, 35.557739>,  <37.347115, 34.956421, 35.398308>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.598877, 34.689590, 35.557739> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.533132, 0.002479, 0.846029,
		-0.565350, -0.744989, -0.354077,
		0.629404, -0.667072, 0.398579,
		37.787697, 34.489468, 35.677315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.000969, 34.341946, 35.747768>,  <37.347115, 34.956421, 35.398308>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.000969, 34.341946, 35.747768> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.357231, 34.421055, 35.911533>,  <37.570988, 34.468521, 36.009792>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.357231, 34.421055, 35.911533>,  <37.000969, 34.341946, 35.747768>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.357231, 34.421055, 35.911533> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450234, 0.258084, 0.854799,
		0.063391, -0.945664, 0.318907,
		0.890658, 0.197769, 0.409410,
		37.624428, 34.480385, 36.034355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.903934, 34.281090, 36.465889>,  <37.000969, 34.341946, 35.747768>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.903934, 34.281090, 36.465889> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.252548, 34.474693, 36.434464>,  <37.461716, 34.590855, 36.415607>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.252548, 34.474693, 36.434464>,  <36.903934, 34.281090, 36.465889>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.252548, 34.474693, 36.434464> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149304, 0.414554, 0.897693,
		0.467061, -0.770636, 0.433560,
		0.871529, 0.484010, -0.078563,
		37.514008, 34.619896, 36.410896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.210140, 34.056347, 37.112053>,  <36.903934, 34.281090, 36.465889>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.210140, 34.056347, 37.112053> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.410931, 34.377274, 36.982864>,  <37.531403, 34.569832, 36.905354>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.410931, 34.377274, 36.982864>,  <37.210140, 34.056347, 37.112053>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.410931, 34.377274, 36.982864> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179038, 0.461730, 0.868764,
		0.846150, -0.378272, 0.375421,
		0.501972, 0.802319, -0.322968,
		37.561523, 34.617970, 36.885975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.744076, 34.169430, 37.689590>,  <37.210140, 34.056347, 37.112053>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.744076, 34.169430, 37.689590> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.671410, 34.498974, 37.474831>,  <37.627811, 34.696701, 37.345974>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.671410, 34.498974, 37.474831>,  <37.744076, 34.169430, 37.689590>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.671410, 34.498974, 37.474831> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199446, 0.503764, 0.840502,
		0.962923, 0.259768, 0.072801,
		-0.181661, 0.823858, -0.536895,
		37.616913, 34.746132, 37.313763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.262337, 34.615696, 37.836441>,  <37.744076, 34.169430, 37.689590>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.262337, 34.615696, 37.836441> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.958172, 34.837681, 37.701515>,  <37.775673, 34.970871, 37.620560>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.958172, 34.837681, 37.701515>,  <38.262337, 34.615696, 37.836441>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.958172, 34.837681, 37.701515> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110236, 0.401563, 0.909173,
		0.640014, 0.728533, -0.244177,
		-0.760414, 0.554966, -0.337316,
		37.730049, 35.004169, 37.600319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.441998, 35.342045, 37.751888>,  <38.262337, 34.615696, 37.836441>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.441998, 35.342045, 37.751888> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.043350, 35.362026, 37.777992>,  <37.804161, 35.374016, 37.793655>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.043350, 35.362026, 37.777992>,  <38.441998, 35.342045, 37.751888>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.043350, 35.362026, 37.777992> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082063, 0.562106, 0.822984,
		0.004429, 0.825555, -0.564304,
		-0.996617, 0.049954, 0.065258,
		37.744366, 35.377014, 37.797569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.330479, 35.951656, 38.034313>,  <38.441998, 35.342045, 37.751888>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.330479, 35.951656, 38.034313> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.957390, 35.816471, 38.084618>,  <37.733536, 35.735359, 38.114799>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.957390, 35.816471, 38.084618>,  <38.330479, 35.951656, 38.034313>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.957390, 35.816471, 38.084618> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107994, 0.594540, 0.796781,
		-0.344049, 0.729592, -0.591038,
		-0.932721, -0.337960, 0.125759,
		37.677574, 35.715084, 38.122345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.934265, 36.584450, 38.206482>,  <38.330479, 35.951656, 38.034313>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.934265, 36.584450, 38.206482> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.715630, 36.267479, 38.314777>,  <37.584446, 36.077297, 38.379753>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.715630, 36.267479, 38.314777>,  <37.934265, 36.584450, 38.206482>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.715630, 36.267479, 38.314777> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359191, 0.513919, 0.779018,
		-0.756451, 0.328559, -0.565536,
		-0.546594, -0.792424, 0.270739,
		37.551651, 36.029751, 38.396000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.223522, 36.839085, 38.354778>,  <37.934265, 36.584450, 38.206482>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.223522, 36.839085, 38.354778> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.268425, 36.506390, 38.572262>,  <37.295368, 36.306774, 38.702751>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.268425, 36.506390, 38.572262>,  <37.223522, 36.839085, 38.354778>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.268425, 36.506390, 38.572262> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430638, 0.452390, 0.780957,
		-0.895516, -0.321811, -0.307391,
		0.112260, -0.831734, 0.543706,
		37.302105, 36.256870, 38.735374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.586514, 36.784435, 38.634483>,  <37.223522, 36.839085, 38.354778>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.586514, 36.784435, 38.634483> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.839794, 36.561230, 38.849026>,  <36.991764, 36.427307, 38.977753>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.839794, 36.561230, 38.849026>,  <36.586514, 36.784435, 38.634483>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.839794, 36.561230, 38.849026> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375802, 0.384159, 0.843324,
		-0.676629, -0.735559, 0.033549,
		0.633203, -0.558010, 0.536358,
		37.029755, 36.393826, 39.009933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.227283, 36.517792, 39.293755>,  <36.586514, 36.784435, 38.634483>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.227283, 36.517792, 39.293755> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.616970, 36.516678, 39.383987>,  <36.850784, 36.516010, 39.438126>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.616970, 36.516678, 39.383987>,  <36.227283, 36.517792, 39.293755>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.616970, 36.516678, 39.383987> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195836, 0.485953, 0.851761,
		-0.111997, -0.873980, 0.472880,
		0.974220, -0.002788, 0.225583,
		36.909237, 36.515842, 39.451664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.005863, 35.847759, 39.465847>,  <36.227283, 36.517792, 39.293755>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.005863, 35.847759, 39.465847> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.736446, 35.563679, 39.547775>,  <35.574795, 35.393230, 39.596931>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.736446, 35.563679, 39.547775>,  <36.005863, 35.847759, 39.465847>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.736446, 35.563679, 39.547775> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133906, -0.389760, -0.911129,
		0.726917, -0.586258, 0.357621,
		-0.673544, -0.710203, 0.204820,
		35.534382, 35.350616, 39.609222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.232113, 35.226433, 39.204037>,  <36.005863, 35.847759, 39.465847>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.232113, 35.226433, 39.204037> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.842304, 35.158432, 39.262566>,  <35.608418, 35.117634, 39.297684>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.842304, 35.158432, 39.262566>,  <36.232113, 35.226433, 39.204037>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.842304, 35.158432, 39.262566> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037220, -0.520737, -0.852906,
		0.221188, -0.836620, 0.501142,
		-0.974521, -0.170000, 0.146319,
		35.549950, 35.107433, 39.306461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.042336, 34.409298, 39.029644>,  <36.232113, 35.226433, 39.204037>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.042336, 34.409298, 39.029644> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.709743, 34.630405, 39.007408>,  <35.510189, 34.763069, 38.994068>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.709743, 34.630405, 39.007408>,  <36.042336, 34.409298, 39.029644>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.709743, 34.630405, 39.007408> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102192, -0.250530, -0.962700,
		-0.546073, -0.794787, 0.264800,
		-0.831481, 0.552765, -0.055587,
		35.460300, 34.796234, 38.990730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.530754, 33.993164, 38.614403>,  <36.042336, 34.409298, 39.029644>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.530754, 33.993164, 38.614403> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.394047, 34.368935, 38.604099>,  <35.312023, 34.594398, 38.597916>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.394047, 34.368935, 38.604099>,  <35.530754, 33.993164, 38.614403>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.394047, 34.368935, 38.604099> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437517, -0.183308, -0.880328,
		-0.831729, -0.289599, 0.473666,
		-0.341769, 0.939431, -0.025758,
		35.291515, 34.650764, 38.596371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.958664, 33.855793, 38.240379>,  <35.530754, 33.993164, 38.614403>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.958664, 33.855793, 38.240379> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.977055, 34.254704, 38.217300>,  <34.988091, 34.494049, 38.203453>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.977055, 34.254704, 38.217300>,  <34.958664, 33.855793, 38.240379>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.977055, 34.254704, 38.217300> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431595, -0.032254, -0.901491,
		-0.900895, 0.066350, 0.428936,
		0.045980, 0.997275, -0.057694,
		34.990849, 34.553886, 38.199993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.263393, 34.030724, 38.023598>,  <34.958664, 33.855793, 38.240379>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.263393, 34.030724, 38.023598> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.487354, 34.349777, 37.933903>,  <34.621731, 34.541210, 37.880085>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.487354, 34.349777, 37.933903>,  <34.263393, 34.030724, 38.023598>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.487354, 34.349777, 37.933903> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496063, 0.105936, -0.861800,
		-0.663649, 0.593761, 0.454992,
		0.559903, 0.797638, -0.224238,
		34.655327, 34.589069, 37.866631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.759972, 34.563786, 37.750168>,  <34.263393, 34.030724, 38.023598>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.759972, 34.563786, 37.750168> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.119514, 34.672119, 37.612354>,  <34.335239, 34.737118, 37.529667>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.119514, 34.672119, 37.612354>,  <33.759972, 34.563786, 37.750168>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.119514, 34.672119, 37.612354> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389877, 0.135190, -0.910889,
		-0.200120, 0.953086, 0.227108,
		0.898859, 0.270832, -0.344532,
		34.389172, 34.753368, 37.508995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.713898, 35.185001, 37.297680>,  <33.759972, 34.563786, 37.750168>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.713898, 35.185001, 37.297680> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.054523, 35.004082, 37.191650>,  <34.258900, 34.895531, 37.128033>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.054523, 35.004082, 37.191650>,  <33.713898, 35.185001, 37.297680>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.054523, 35.004082, 37.191650> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305677, -0.017597, -0.951972,
		0.425912, 0.891692, -0.153242,
		0.851563, -0.452299, -0.265076,
		34.309994, 34.868393, 37.112129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.959522, 35.622959, 36.760765>,  <33.713898, 35.185001, 37.297680>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.959522, 35.622959, 36.760765> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.163574, 35.279877, 36.735161>,  <34.286007, 35.074028, 36.719799>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.163574, 35.279877, 36.735161>,  <33.959522, 35.622959, 36.760765>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.163574, 35.279877, 36.735161> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299481, -0.107369, -0.948042,
		0.806273, 0.502797, -0.311640,
		0.510133, -0.857710, -0.064010,
		34.316616, 35.022564, 36.715958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.197128, 35.569683, 36.053974>,  <33.959522, 35.622959, 36.760765>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.197128, 35.569683, 36.053974> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.224281, 35.198841, 36.201420>,  <34.240574, 34.976337, 36.289886>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.224281, 35.198841, 36.201420>,  <34.197128, 35.569683, 36.053974>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.224281, 35.198841, 36.201420> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236473, -0.373886, -0.896822,
		0.969264, -0.026287, -0.244616,
		0.067884, -0.927102, 0.368610,
		34.244648, 34.920712, 36.312004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.585964, 35.204559, 35.550678>,  <34.197128, 35.569683, 36.053974>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.585964, 35.204559, 35.550678> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.368309, 34.936417, 35.752483>,  <34.237717, 34.775532, 35.873566>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.368309, 34.936417, 35.752483>,  <34.585964, 35.204559, 35.550678>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.368309, 34.936417, 35.752483> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184807, -0.490794, -0.851450,
		0.818390, -0.556543, 0.143172,
		-0.544137, -0.670359, 0.504514,
		34.205067, 34.735310, 35.903839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.570427, 34.581635, 35.122189>,  <34.585964, 35.204559, 35.550678>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.570427, 34.581635, 35.122189> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.264778, 34.497581, 35.366146>,  <34.081390, 34.447151, 35.512520>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.264778, 34.497581, 35.366146>,  <34.570427, 34.581635, 35.122189>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.264778, 34.497581, 35.366146> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444601, -0.513478, -0.733941,
		0.467388, -0.831977, 0.298935,
		-0.764119, -0.210128, 0.609892,
		34.035542, 34.434544, 35.549114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<35.922615, 35.980358, 43.361393> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.540607, 36.069275, 43.282879>,  <35.311401, 36.122627, 43.235771>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.540607, 36.069275, 43.282879>,  <35.922615, 35.980358, 43.361393>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.540607, 36.069275, 43.282879> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027615, -0.592342, -0.805213,
		-0.295261, -0.774413, 0.559558,
		-0.955018, 0.222296, -0.196280,
		35.254101, 36.135963, 43.223995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.690075, 35.377747, 43.118275>,  <35.922615, 35.980358, 43.361393>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.690075, 35.377747, 43.118275> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.420071, 35.647449, 42.998451>,  <35.258068, 35.809269, 42.926556>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.420071, 35.647449, 42.998451>,  <35.690075, 35.377747, 43.118275>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.420071, 35.647449, 42.998451> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045804, -0.443526, -0.895090,
		-0.736381, -0.590479, 0.330270,
		-0.675015, 0.674255, -0.299558,
		35.217567, 35.849728, 42.908585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.195484, 34.954613, 42.750637>,  <35.690075, 35.377747, 43.118275>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.195484, 34.954613, 42.750637> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.174412, 35.325943, 42.603428>,  <35.161770, 35.548740, 42.515102>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.174412, 35.325943, 42.603428>,  <35.195484, 34.954613, 42.750637>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.174412, 35.325943, 42.603428> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009100, -0.368970, -0.929397,
		-0.998570, -0.045608, 0.027884,
		-0.052677, 0.928321, -0.368027,
		35.158607, 35.604439, 42.493019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.983948, 34.783119, 42.126801>,  <35.195484, 34.954613, 42.750637>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.983948, 34.783119, 42.126801> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.059315, 35.172539, 42.075092>,  <35.104534, 35.406189, 42.044067>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.059315, 35.172539, 42.075092>,  <34.983948, 34.783119, 42.126801>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.059315, 35.172539, 42.075092> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064269, -0.143570, -0.987551,
		-0.979984, 0.177762, -0.089620,
		0.188415, 0.973544, -0.129272,
		35.115841, 35.464603, 42.036312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.463997, 35.065414, 41.571793>,  <34.983948, 34.783119, 42.126801>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.463997, 35.065414, 41.571793> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.780361, 35.309727, 41.586784>,  <34.970181, 35.456314, 41.595779>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.780361, 35.309727, 41.586784>,  <34.463997, 35.065414, 41.571793>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.780361, 35.309727, 41.586784> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078868, -0.041009, -0.996041,
		-0.606822, 0.790740, -0.080605,
		0.790915, 0.610777, 0.037479,
		35.017635, 35.492958, 41.598026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.265709, 35.611683, 41.116627>,  <34.463997, 35.065414, 41.571793>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.265709, 35.611683, 41.116627> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.663406, 35.593948, 41.155651>,  <34.902023, 35.583305, 41.179066>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.663406, 35.593948, 41.155651>,  <34.265709, 35.611683, 41.116627>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.663406, 35.593948, 41.155651> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099357, 0.040166, -0.994241,
		0.040166, 0.998209, 0.044340,
		0.994241, -0.044340, 0.097565,
		34.961678, 35.580647, 41.184921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.419857, 36.022141, 40.562138>,  <34.265709, 35.611683, 41.116627>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.419857, 36.022141, 40.562138> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.748962, 35.813591, 40.652672>,  <34.946426, 35.688461, 40.706993>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.748962, 35.813591, 40.652672>,  <34.419857, 36.022141, 40.562138>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.748962, 35.813591, 40.652672> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178009, -0.141817, -0.973756,
		0.539788, 0.841462, -0.023873,
		0.822764, -0.521373, 0.226339,
		34.995792, 35.657181, 40.720573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.004593, 36.362736, 40.233799>,  <34.419857, 36.022141, 40.562138>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.004593, 36.362736, 40.233799> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.122704, 35.987434, 40.305897>,  <35.193569, 35.762253, 40.349155>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.122704, 35.987434, 40.305897>,  <35.004593, 36.362736, 40.233799>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.122704, 35.987434, 40.305897> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403623, -0.048497, -0.913639,
		0.865969, 0.342527, 0.364382,
		0.295274, -0.938256, 0.180249,
		35.211285, 35.705959, 40.359970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.593536, 36.290653, 39.901390>,  <35.004593, 36.362736, 40.233799>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.593536, 36.290653, 39.901390> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.490566, 35.908142, 39.956913>,  <35.428783, 35.678635, 39.990227>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.490566, 35.908142, 39.956913>,  <35.593536, 36.290653, 39.901390>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.490566, 35.908142, 39.956913> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343728, -0.224871, -0.911748,
		0.903096, -0.186999, 0.386587,
		-0.257428, -0.956276, 0.138804,
		35.413338, 35.621258, 39.998554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.347763, 36.319767, 40.070187>,  <35.593536, 36.290653, 39.901390>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.347763, 36.319767, 40.070187> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.696121, 36.478409, 39.954090>,  <36.905136, 36.573593, 39.884434>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.696121, 36.478409, 39.954090>,  <36.347763, 36.319767, 40.070187>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.696121, 36.478409, 39.954090> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183385, 0.285666, 0.940619,
		0.455965, -0.872411, 0.176056,
		0.870900, 0.396603, -0.290241,
		36.957390, 36.597389, 39.867020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.766010, 36.189259, 40.630241>,  <36.347763, 36.319767, 40.070187>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.766010, 36.189259, 40.630241> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.973263, 36.457489, 40.417877>,  <37.097614, 36.618427, 40.290459>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.973263, 36.457489, 40.417877>,  <36.766010, 36.189259, 40.630241>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.973263, 36.457489, 40.417877> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263740, 0.465216, 0.844994,
		0.813620, -0.577843, 0.064187,
		0.518135, 0.670576, -0.530909,
		37.128704, 36.658661, 40.258606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.500637, 36.105965, 40.743843>,  <36.766010, 36.189259, 40.630241>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.500637, 36.105965, 40.743843> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.389053, 36.479294, 40.653427>,  <37.322102, 36.703293, 40.599178>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.389053, 36.479294, 40.653427>,  <37.500637, 36.105965, 40.743843>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.389053, 36.479294, 40.653427> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339347, 0.316001, 0.885995,
		0.898346, 0.170452, -0.404872,
		-0.278960, 0.933321, -0.226036,
		37.305367, 36.759289, 40.585617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.003750, 36.507885, 40.876953>,  <37.500637, 36.105965, 40.743843>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.003750, 36.507885, 40.876953> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.705402, 36.774097, 40.866035>,  <37.526394, 36.933823, 40.859486>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.705402, 36.774097, 40.866035>,  <38.003750, 36.507885, 40.876953>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.705402, 36.774097, 40.866035> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407767, 0.488627, 0.771343,
		0.526687, 0.564194, -0.635835,
		-0.745873, 0.665529, -0.027294,
		37.481640, 36.973755, 40.857849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.296402, 37.065140, 41.191063>,  <38.003750, 36.507885, 40.876953>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.296402, 37.065140, 41.191063> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.915241, 37.185040, 41.209511>,  <37.686543, 37.256977, 41.220581>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.915241, 37.185040, 41.209511>,  <38.296402, 37.065140, 41.191063>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.915241, 37.185040, 41.209511> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202964, 0.517309, 0.831383,
		0.225345, 0.801588, -0.553783,
		-0.952904, 0.299746, 0.046121,
		37.629372, 37.274963, 41.223347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.135075, 37.885990, 41.017784>,  <38.296402, 37.065140, 41.191063>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.135075, 37.885990, 41.017784> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.821453, 37.760101, 41.231781>,  <37.633282, 37.684570, 41.360180>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.821453, 37.760101, 41.231781>,  <38.135075, 37.885990, 41.017784>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.821453, 37.760101, 41.231781> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042295, 0.832829, 0.551913,
		-0.619253, 0.455355, -0.639670,
		-0.784052, -0.314719, 0.534991,
		37.586239, 37.665684, 41.392277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.657707, 38.476768, 40.988918>,  <38.135075, 37.885990, 41.017784>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.657707, 38.476768, 40.988918> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.558704, 38.233765, 41.290825>,  <37.499302, 38.087963, 41.471970>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.558704, 38.233765, 41.290825>,  <37.657707, 38.476768, 40.988918>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.558704, 38.233765, 41.290825> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043292, 0.785160, 0.617778,
		-0.967919, 0.120227, -0.220630,
		-0.247504, -0.607510, 0.754767,
		37.484455, 38.051510, 41.517254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.133663, 38.809406, 41.302128>,  <37.657707, 38.476768, 40.988918>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.133663, 38.809406, 41.302128> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.261902, 38.560791, 41.588039>,  <37.338844, 38.411621, 41.759586>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.261902, 38.560791, 41.588039>,  <37.133663, 38.809406, 41.302128>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.261902, 38.560791, 41.588039> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091867, 0.730649, 0.676545,
		-0.942749, -0.282565, 0.177148,
		0.320601, -0.621538, 0.714776,
		37.358082, 38.374329, 41.802471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.679012, 39.009842, 41.916016>,  <37.133663, 38.809406, 41.302128>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.679012, 39.009842, 41.916016> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.006226, 38.821907, 42.048721>,  <37.202553, 38.709145, 42.128345>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.006226, 38.821907, 42.048721>,  <36.679012, 39.009842, 41.916016>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.006226, 38.821907, 42.048721> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028569, 0.609295, 0.792428,
		-0.574459, -0.638756, 0.511848,
		0.818035, -0.469840, 0.331766,
		37.251637, 38.680954, 42.148251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.609348, 38.640072, 42.585896>,  <36.679012, 39.009842, 41.916016>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.609348, 38.640072, 42.585896> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.006710, 38.685917, 42.587631>,  <37.245125, 38.713425, 42.588673>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.006710, 38.685917, 42.587631>,  <36.609348, 38.640072, 42.585896>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.006710, 38.685917, 42.587631> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041725, 0.325919, 0.944477,
		0.106836, -0.938425, 0.328550,
		0.993401, 0.114613, 0.004335,
		37.304729, 38.720299, 42.588932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.876419, 38.406162, 43.297649>,  <36.609348, 38.640072, 42.585896>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.876419, 38.406162, 43.297649> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.173492, 38.630802, 43.151760>,  <37.351738, 38.765587, 43.064228>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.173492, 38.630802, 43.151760>,  <36.876419, 38.406162, 43.297649>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.173492, 38.630802, 43.151760> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016315, 0.529313, 0.848270,
		0.669443, -0.635948, 0.383949,
		0.742684, 0.561604, -0.364720,
		37.396297, 38.799282, 43.042343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.391521, 38.431362, 43.773960>,  <36.876419, 38.406162, 43.297649>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.391521, 38.431362, 43.773960> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.481472, 38.747337, 43.545776>,  <37.535442, 38.936924, 43.408867>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.481472, 38.747337, 43.545776>,  <37.391521, 38.431362, 43.773960>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.481472, 38.747337, 43.545776> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249778, 0.519163, 0.817362,
		0.941829, -0.326293, -0.080563,
		0.224874, 0.789938, -0.570464,
		37.548935, 38.984318, 43.374638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.992626, 38.769680, 44.205719>,  <37.391521, 38.431362, 43.773960>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.992626, 38.769680, 44.205719> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.887356, 39.049171, 43.939632>,  <37.824192, 39.216866, 43.779980>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.887356, 39.049171, 43.939632>,  <37.992626, 38.769680, 44.205719>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.887356, 39.049171, 43.939632> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206399, 0.714338, 0.668671,
		0.942410, 0.038680, -0.332217,
		-0.263179, 0.698731, -0.665216,
		37.808403, 39.258789, 43.740067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.550026, 39.273605, 44.218937>,  <37.992626, 38.769680, 44.205719>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.550026, 39.273605, 44.218937> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.250751, 39.483498, 44.056515>,  <38.071186, 39.609432, 43.959061>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.250751, 39.483498, 44.056515>,  <38.550026, 39.273605, 44.218937>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.250751, 39.483498, 44.056515> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272758, 0.801140, 0.532708,
		0.604836, 0.287808, -0.742523,
		-0.748182, 0.524730, -0.406056,
		38.026299, 39.640915, 43.934696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<30.323648, 41.398399, 42.263958> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.518232, 41.108662, 42.459381>,  <30.634983, 40.934818, 42.576633>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.518232, 41.108662, 42.459381>,  <30.323648, 41.398399, 42.263958>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.518232, 41.108662, 42.459381> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331762, -0.364155, -0.870244,
		0.808265, 0.585421, 0.063164,
		0.486458, -0.724344, 0.488554,
		30.664169, 40.891357, 42.605946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.013756, 41.478489, 42.037956>,  <30.323648, 41.398399, 42.263958>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.013756, 41.478489, 42.037956> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.993919, 41.104588, 42.178688>,  <30.982018, 40.880249, 42.263126>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.993919, 41.104588, 42.178688>,  <31.013756, 41.478489, 42.037956>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.993919, 41.104588, 42.178688> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253997, -0.352484, -0.900689,
		0.965933, 0.044695, 0.254904,
		-0.049593, -0.934750, 0.351828,
		30.979042, 40.824162, 42.284237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.604998, 41.249416, 41.786079>,  <31.013756, 41.478489, 42.037956>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.604998, 41.249416, 41.786079> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.390751, 40.920849, 41.864452>,  <31.262203, 40.723709, 41.911476>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.390751, 40.920849, 41.864452>,  <31.604998, 41.249416, 41.786079>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.390751, 40.920849, 41.864452> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388240, -0.445578, -0.806679,
		0.749924, -0.355999, 0.557565,
		-0.535616, -0.821416, 0.195937,
		31.230066, 40.674423, 41.923233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.070560, 40.750443, 41.677845>,  <31.604998, 41.249416, 41.786079>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.070560, 40.750443, 41.677845> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.736856, 40.531666, 41.705723>,  <31.536633, 40.400398, 41.722450>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.736856, 40.531666, 41.705723>,  <32.070560, 40.750443, 41.677845>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.736856, 40.531666, 41.705723> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359339, -0.635216, -0.683649,
		0.418187, -0.545301, 0.726476,
		-0.834263, -0.546944, 0.069691,
		31.486578, 40.367584, 41.726631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.288803, 39.954437, 41.608051>,  <32.070560, 40.750443, 41.677845>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.288803, 39.954437, 41.608051> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.899099, 39.972237, 41.519646>,  <31.665277, 39.982918, 41.466602>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.899099, 39.972237, 41.519646>,  <32.288803, 39.954437, 41.608051>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.899099, 39.972237, 41.519646> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147979, -0.613352, -0.775823,
		-0.170083, -0.788555, 0.590977,
		-0.974255, 0.044502, -0.221010,
		31.606823, 39.985588, 41.453342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.036983, 39.273537, 41.636066>,  <32.288803, 39.954437, 41.608051>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.036983, 39.273537, 41.636066> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.775837, 39.473694, 41.408604>,  <31.619148, 39.593788, 41.272125>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.775837, 39.473694, 41.408604>,  <32.036983, 39.273537, 41.636066>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.775837, 39.473694, 41.408604> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271399, -0.546363, -0.792357,
		-0.707184, -0.671637, 0.220896,
		-0.652866, 0.500392, -0.568661,
		31.579977, 39.623810, 41.238007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.858757, 38.683277, 41.218410>,  <32.036983, 39.273537, 41.636066>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.858757, 38.683277, 41.218410> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.730698, 39.021919, 41.048344>,  <31.653862, 39.225105, 40.946304>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.730698, 39.021919, 41.048344>,  <31.858757, 38.683277, 41.218410>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.730698, 39.021919, 41.048344> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115783, -0.410458, -0.904499,
		-0.940265, -0.338803, 0.033386,
		-0.320150, 0.846604, -0.425166,
		31.634653, 39.275902, 40.920795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.247089, 38.575966, 40.688999>,  <31.858757, 38.683277, 41.218410>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.247089, 38.575966, 40.688999> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.445030, 38.904270, 40.574829>,  <31.563795, 39.101254, 40.506325>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.445030, 38.904270, 40.574829>,  <31.247089, 38.575966, 40.688999>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.445030, 38.904270, 40.574829> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235850, -0.442992, -0.864947,
		-0.836358, 0.360704, -0.412793,
		0.494854, 0.820762, -0.285428,
		31.593487, 39.150497, 40.489201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.870745, 38.680576, 40.053894>,  <31.247089, 38.575966, 40.688999>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.870745, 38.680576, 40.053894> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.225563, 38.865021, 40.063076>,  <31.438454, 38.975689, 40.068584>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.225563, 38.865021, 40.063076>,  <30.870745, 38.680576, 40.053894>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.225563, 38.865021, 40.063076> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204395, -0.347641, -0.915078,
		-0.413975, 0.816407, -0.402622,
		0.887044, 0.461114, 0.022955,
		31.491676, 39.003353, 40.069962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.960434, 38.959328, 39.364700>,  <30.870745, 38.680576, 40.053894>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.960434, 38.959328, 39.364700> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.333332, 38.981960, 39.507648>,  <31.557072, 38.995541, 39.593418>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.333332, 38.981960, 39.507648>,  <30.960434, 38.959328, 39.364700>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.333332, 38.981960, 39.507648> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358002, -0.287403, -0.888389,
		0.052443, 0.956137, -0.288187,
		0.932247, 0.056582, 0.357371,
		31.613007, 38.998936, 39.614861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.355358, 39.243771, 38.808788>,  <30.960434, 38.959328, 39.364700>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.355358, 39.243771, 38.808788> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.640713, 39.090996, 39.043804>,  <31.811926, 38.999332, 39.184814>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.640713, 39.090996, 39.043804>,  <31.355358, 39.243771, 38.808788>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.640713, 39.090996, 39.043804> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481643, -0.341774, -0.806976,
		0.509020, 0.858671, -0.059861,
		0.713386, -0.381935, 0.587542,
		31.854729, 38.976414, 39.220066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.917208, 39.431358, 38.519707>,  <31.355358, 39.243771, 38.808788>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.917208, 39.431358, 38.519707> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.051018, 39.146835, 38.766975>,  <32.131306, 38.976124, 38.915337>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.051018, 39.146835, 38.766975>,  <31.917208, 39.431358, 38.519707>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.051018, 39.146835, 38.766975> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521571, -0.406590, -0.750099,
		0.784892, 0.573349, 0.234981,
		0.334527, -0.711306, 0.618171,
		32.151375, 38.933445, 38.952427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.736523, 39.384159, 38.495010>,  <31.917208, 39.431358, 38.519707>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.736523, 39.384159, 38.495010> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.549580, 39.045895, 38.598103>,  <32.437412, 38.842934, 38.659958>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.549580, 39.045895, 38.598103>,  <32.736523, 39.384159, 38.495010>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.549580, 39.045895, 38.598103> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350127, -0.444744, -0.824386,
		0.811780, -0.295046, 0.503946,
		-0.467359, -0.845666, 0.257731,
		32.409370, 38.792194, 38.675423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.210598, 39.024399, 38.376457>,  <32.736523, 39.384159, 38.495010>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.210598, 39.024399, 38.376457> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.879673, 38.799816, 38.383675>,  <32.681118, 38.665066, 38.388004>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.879673, 38.799816, 38.383675>,  <33.210598, 39.024399, 38.376457>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.879673, 38.799816, 38.383675> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374130, -0.574682, -0.727851,
		0.419027, -0.595406, 0.685498,
		-0.827310, -0.561455, 0.018048,
		32.631481, 38.631378, 38.389088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.910103, 38.989456, 38.038704>,  <33.210598, 39.024399, 38.376457>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.910103, 38.989456, 38.038704> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.004848, 39.314671, 37.825962>,  <34.061695, 39.509800, 37.698318>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.004848, 39.314671, 37.825962>,  <33.910103, 38.989456, 38.038704>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.004848, 39.314671, 37.825962> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069158, 0.531934, 0.843957,
		0.969078, -0.236685, 0.069768,
		0.236864, 0.813035, -0.531855,
		34.075909, 39.558582, 37.666405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.601097, 39.239910, 38.305653>,  <33.910103, 38.989456, 38.038704>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.601097, 39.239910, 38.305653> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.440540, 39.553608, 38.116405>,  <34.344208, 39.741829, 38.002857>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.440540, 39.553608, 38.116405>,  <34.601097, 39.239910, 38.305653>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.440540, 39.553608, 38.116405> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143561, 0.564043, 0.813170,
		0.904585, 0.258480, -0.338990,
		-0.401394, 0.784247, -0.473117,
		34.320122, 39.788883, 37.974472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.017723, 39.765308, 38.483898>,  <34.601097, 39.239910, 38.305653>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.017723, 39.765308, 38.483898> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.685226, 39.947632, 38.356598>,  <34.485729, 40.057026, 38.280220>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.685226, 39.947632, 38.356598>,  <35.017723, 39.765308, 38.483898>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.685226, 39.947632, 38.356598> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109227, 0.695228, 0.710442,
		0.545081, 0.555785, -0.627686,
		-0.831238, 0.455808, -0.318249,
		34.435856, 40.084373, 38.261124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.076954, 40.487679, 38.473408>,  <35.017723, 39.765308, 38.483898>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.076954, 40.487679, 38.473408> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.681000, 40.433533, 38.490440>,  <34.443428, 40.401047, 38.500660>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.681000, 40.433533, 38.490440>,  <35.076954, 40.487679, 38.473408>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.681000, 40.433533, 38.490440> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056771, 0.652786, 0.755412,
		-0.130048, 0.745350, -0.653866,
		-0.989881, -0.135361, 0.042579,
		34.384037, 40.392925, 38.503216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.850845, 41.165005, 38.620037>,  <35.076954, 40.487679, 38.473408>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.850845, 41.165005, 38.620037> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.536812, 40.940285, 38.724365>,  <34.348392, 40.805450, 38.786961>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.536812, 40.940285, 38.724365>,  <34.850845, 41.165005, 38.620037>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.536812, 40.940285, 38.724365> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217307, 0.644148, 0.733383,
		-0.580024, 0.519086, -0.627791,
		-0.785079, -0.561803, 0.260821,
		34.301289, 40.771744, 38.802612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.379791, 41.648628, 38.690231>,  <34.850845, 41.165005, 38.620037>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.379791, 41.648628, 38.690231> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.247459, 41.331913, 38.895611>,  <34.168060, 41.141884, 39.018837>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.247459, 41.331913, 38.895611>,  <34.379791, 41.648628, 38.690231>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.247459, 41.331913, 38.895611> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353084, 0.608424, 0.710740,
		-0.875147, 0.053845, -0.480852,
		-0.330832, -0.791784, 0.513449,
		34.148209, 41.094379, 39.049644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.845123, 41.894878, 39.048054>,  <34.379791, 41.648628, 38.690231>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.845123, 41.894878, 39.048054> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.912937, 41.554852, 39.247509>,  <33.953625, 41.350834, 39.367180>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.912937, 41.554852, 39.247509>,  <33.845123, 41.894878, 39.048054>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.912937, 41.554852, 39.247509> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267709, 0.447211, 0.853425,
		-0.948467, -0.278174, -0.151755,
		0.169534, -0.850072, 0.498635,
		33.963799, 41.299831, 39.397099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.265457, 41.910336, 39.450630>,  <33.845123, 41.894878, 39.048054>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.265457, 41.910336, 39.450630> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.520889, 41.663689, 39.634804>,  <33.674149, 41.515701, 39.745308>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.520889, 41.663689, 39.634804>,  <33.265457, 41.910336, 39.450630>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.520889, 41.663689, 39.634804> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313964, 0.337499, 0.887424,
		-0.702597, -0.711250, 0.021924,
		0.638579, -0.616618, 0.460433,
		33.712463, 41.478703, 39.772934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.834953, 41.633839, 39.924358>,  <33.265457, 41.910336, 39.450630>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.834953, 41.633839, 39.924358> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.194965, 41.532913, 40.066502>,  <33.410973, 41.472359, 40.151787>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.194965, 41.532913, 40.066502>,  <32.834953, 41.633839, 39.924358>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.194965, 41.532913, 40.066502> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293820, 0.250937, 0.922334,
		-0.321895, -0.934541, 0.151714,
		0.900030, -0.252318, 0.355362,
		33.464973, 41.457218, 40.173111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.810474, 41.124664, 40.446369>,  <32.834953, 41.633839, 39.924358>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.810474, 41.124664, 40.446369> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.147991, 41.330502, 40.507294>,  <33.350502, 41.454006, 40.543846>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.147991, 41.330502, 40.507294>,  <32.810474, 41.124664, 40.446369>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.147991, 41.330502, 40.507294> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236079, 0.101052, 0.966465,
		0.481950, -0.851456, 0.206753,
		0.843795, 0.514598, 0.152309,
		33.401131, 41.484882, 40.552986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.126316, 40.831631, 41.047371>,  <32.810474, 41.124664, 40.446369>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.126316, 40.831631, 41.047371> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.301144, 41.190769, 41.026058>,  <33.406040, 41.406254, 41.013271>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.301144, 41.190769, 41.026058>,  <33.126316, 40.831631, 41.047371>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.301144, 41.190769, 41.026058> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010598, 0.064373, 0.997870,
		0.899365, -0.435574, 0.037651,
		0.437070, 0.897848, -0.053279,
		33.432266, 41.460125, 41.010075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.377041, 40.864632, 41.645786>,  <33.126316, 40.831631, 41.047371>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.377041, 40.864632, 41.645786> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.434669, 41.239479, 41.518627>,  <33.469246, 41.464386, 41.442329>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.434669, 41.239479, 41.518627>,  <33.377041, 40.864632, 41.645786>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.434669, 41.239479, 41.518627> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024090, 0.324479, 0.945586,
		0.989274, -0.128572, 0.069323,
		0.144070, 0.937114, -0.317901,
		33.477890, 41.520615, 41.423256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.019802, 41.128330, 41.853268>,  <33.377041, 40.864632, 41.645786>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.019802, 41.128330, 41.853268> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.758366, 41.428307, 41.812443>,  <33.601505, 41.608292, 41.787949>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.758366, 41.428307, 41.812443>,  <34.019802, 41.128330, 41.853268>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.758366, 41.428307, 41.812443> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101345, 0.220349, 0.970142,
		0.750035, 0.623729, -0.220020,
		-0.653587, 0.749939, -0.102058,
		33.562290, 41.653290, 41.781826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.257141, 41.603432, 42.387856>,  <34.019802, 41.128330, 41.853268>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.257141, 41.603432, 42.387856> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.885757, 41.729774, 42.309677>,  <33.662926, 41.805580, 42.262772>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.885757, 41.729774, 42.309677>,  <34.257141, 41.603432, 42.387856>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.885757, 41.729774, 42.309677> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106903, 0.276682, 0.954997,
		0.355713, 0.907571, -0.223123,
		-0.928461, 0.315852, -0.195442,
		33.607220, 41.824532, 42.251045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.768620, 42.235947, 42.344162>,  <34.257141, 41.603432, 42.387856>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.768620, 42.235947, 42.344162> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.145027, 42.297913, 42.464485>,  <35.370872, 42.335094, 42.536678>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.145027, 42.297913, 42.464485>,  <34.768620, 42.235947, 42.344162>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.145027, 42.297913, 42.464485> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338293, -0.413277, -0.845435,
		-0.006655, 0.897331, -0.441308,
		0.941017, 0.154918, 0.300810,
		35.427334, 42.344387, 42.554729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.141571, 42.725319, 41.803341>,  <34.768620, 42.235947, 42.344162>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.141571, 42.725319, 41.803341> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.413612, 42.526253, 42.018669>,  <35.576836, 42.406811, 42.147865>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.413612, 42.526253, 42.018669>,  <35.141571, 42.725319, 41.803341>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.413612, 42.526253, 42.018669> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554777, -0.130642, -0.821678,
		0.479251, 0.857471, 0.187245,
		0.680103, -0.497670, 0.538316,
		35.617645, 42.376953, 42.180164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.809837, 43.001854, 41.588795>,  <35.141571, 42.725319, 41.803341>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.809837, 43.001854, 41.588795> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.884502, 42.640121, 41.742332>,  <35.929302, 42.423080, 41.834454>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.884502, 42.640121, 41.742332>,  <35.809837, 43.001854, 41.588795>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.884502, 42.640121, 41.742332> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.685181, -0.160160, -0.710546,
		0.704048, 0.395635, 0.589737,
		0.186664, -0.904335, 0.383842,
		35.940502, 42.368820, 41.857487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.537949, 42.773594, 41.258144>,  <35.809837, 43.001854, 41.588795>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.537949, 42.773594, 41.258144> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.367653, 42.436279, 41.389362>,  <36.265476, 42.233891, 41.468094>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.367653, 42.436279, 41.389362>,  <36.537949, 42.773594, 41.258144>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.367653, 42.436279, 41.389362> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432135, -0.508015, -0.745104,
		0.794990, -0.175457, 0.580695,
		-0.425735, -0.843289, 0.328045,
		36.239933, 42.183292, 41.487778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.058208, 42.184189, 41.244568>,  <36.537949, 42.773594, 41.258144>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.058208, 42.184189, 41.244568> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.687702, 42.034035, 41.231228>,  <36.465397, 41.943943, 41.223225>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.687702, 42.034035, 41.231228>,  <37.058208, 42.184189, 41.244568>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.687702, 42.034035, 41.231228> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290724, -0.655426, -0.697063,
		0.239812, -0.655362, 0.716234,
		-0.926267, -0.375390, -0.033351,
		36.409821, 41.921417, 41.221222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.249874, 41.565693, 41.169029>,  <37.058208, 42.184189, 41.244568>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.249874, 41.565693, 41.169029> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.862110, 41.549419, 41.072205>,  <36.629452, 41.539658, 41.014111>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.862110, 41.549419, 41.072205>,  <37.249874, 41.565693, 41.169029>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.862110, 41.549419, 41.072205> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218664, -0.591168, -0.776342,
		-0.111520, -0.805522, 0.581978,
		-0.969406, -0.040680, -0.242066,
		36.571289, 41.537216, 40.999584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.089653, 40.801506, 40.946289>,  <37.249874, 41.565693, 41.169029>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.089653, 40.801506, 40.946289> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.800083, 41.026855, 40.787022>,  <36.626339, 41.162064, 40.691460>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.800083, 41.026855, 40.787022>,  <37.089653, 40.801506, 40.946289>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.800083, 41.026855, 40.787022> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142212, -0.442898, -0.885222,
		-0.675060, -0.697460, 0.240507,
		-0.723926, 0.563374, -0.398169,
		36.582905, 41.195869, 40.667572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.636761, 40.358295, 40.572277>,  <37.089653, 40.801506, 40.946289>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.636761, 40.358295, 40.572277> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.575054, 40.711967, 40.395897>,  <36.538033, 40.924171, 40.290070>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.575054, 40.711967, 40.395897>,  <36.636761, 40.358295, 40.572277>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.575054, 40.711967, 40.395897> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176716, -0.414401, -0.892773,
		-0.972098, -0.215643, -0.092322,
		-0.154262, 0.884177, -0.440946,
		36.528774, 40.977222, 40.263615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.245098, 40.223080, 39.907536>,  <36.636761, 40.358295, 40.572277>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.245098, 40.223080, 39.907536> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.411560, 40.583679, 39.860004>,  <36.511436, 40.800037, 39.831486>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.411560, 40.583679, 39.860004>,  <36.245098, 40.223080, 39.907536>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.411560, 40.583679, 39.860004> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340084, -0.275512, -0.899131,
		-0.843301, 0.333766, -0.421240,
		0.416156, 0.901495, -0.118831,
		36.536407, 40.854126, 39.824356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.015255, 40.398674, 39.291363>,  <36.245098, 40.223080, 39.907536>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.015255, 40.398674, 39.291363> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.321228, 40.651333, 39.341812>,  <36.504810, 40.802929, 39.372082>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.321228, 40.651333, 39.341812>,  <36.015255, 40.398674, 39.291363>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.321228, 40.651333, 39.341812> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404086, -0.318101, -0.857629,
		-0.501597, 0.706990, -0.498563,
		0.764928, 0.631646, 0.126126,
		36.550705, 40.840828, 39.379650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.088219, 40.877731, 38.680332>,  <36.015255, 40.398674, 39.291363>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.088219, 40.877731, 38.680332> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.455956, 40.880333, 38.837692>,  <36.676598, 40.881893, 38.932106>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.455956, 40.880333, 38.837692>,  <36.088219, 40.877731, 38.680332>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.455956, 40.880333, 38.837692> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378557, -0.287131, -0.879915,
		0.107234, 0.957869, -0.266434,
		0.919345, 0.006504, 0.393398,
		36.731758, 40.882282, 38.955711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.595131, 41.049538, 38.217838>,  <36.088219, 40.877731, 38.680332>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.595131, 41.049538, 38.217838> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.823357, 40.856548, 38.483677>,  <36.960293, 40.740757, 38.643181>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.823357, 40.856548, 38.483677>,  <36.595131, 41.049538, 38.217838>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.823357, 40.856548, 38.483677> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426304, -0.517680, -0.741804,
		0.701945, 0.706562, -0.089688,
		0.570560, -0.482471, 0.664593,
		36.994526, 40.711807, 38.683056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.247173, 41.120449, 38.061134>,  <36.595131, 41.049538, 38.217838>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.247173, 41.120449, 38.061134> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.287769, 40.795589, 38.290955>,  <37.312126, 40.600674, 38.428844>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.287769, 40.795589, 38.290955>,  <37.247173, 41.120449, 38.061134>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.287769, 40.795589, 38.290955> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537531, -0.441201, -0.718611,
		0.837114, 0.381769, 0.391781,
		0.101489, -0.812154, 0.574549,
		37.318214, 40.551945, 38.463318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.988892, 40.919224, 37.942463>,  <37.247173, 41.120449, 38.061134>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.988892, 40.919224, 37.942463> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.766262, 40.628162, 38.102833>,  <37.632683, 40.453526, 38.199055>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.766262, 40.628162, 38.102833>,  <37.988892, 40.919224, 37.942463>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.766262, 40.628162, 38.102833> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394133, -0.656082, -0.643596,
		0.731358, -0.200190, 0.651951,
		-0.556574, -0.727654, 0.400929,
		37.599289, 40.409866, 38.223110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<26.271696, 29.402536, 28.360096> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.133022, 29.053476, 28.497671>,  <26.049818, 28.844040, 28.580215>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.133022, 29.053476, 28.497671>,  <26.271696, 29.402536, 28.360096>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.133022, 29.053476, 28.497671> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269456, 0.443876, 0.854616,
		-0.898446, 0.203605, -0.389024,
		-0.346682, -0.872651, 0.343936,
		26.029018, 28.791681, 28.600851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.644119, 29.559687, 28.696226>,  <26.271696, 29.402536, 28.360096>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.644119, 29.559687, 28.696226> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.803852, 29.226095, 28.848549>,  <25.899693, 29.025940, 28.939941>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.803852, 29.226095, 28.848549>,  <25.644119, 29.559687, 28.696226>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.803852, 29.226095, 28.848549> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269383, 0.290292, 0.918239,
		-0.876337, -0.469264, -0.108737,
		0.399331, -0.833979, 0.380805,
		25.923651, 28.975901, 28.962791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.137455, 29.329264, 29.199066>,  <25.644119, 29.559687, 28.696226>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.137455, 29.329264, 29.199066> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.482325, 29.169235, 29.323385>,  <25.689247, 29.073217, 29.397976>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.482325, 29.169235, 29.323385>,  <25.137455, 29.329264, 29.199066>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.482325, 29.169235, 29.323385> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284030, 0.126271, 0.950464,
		-0.419498, -0.907744, -0.004764,
		0.862176, -0.400071, 0.310797,
		25.740978, 29.049213, 29.416624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.024492, 28.922338, 29.813530>,  <25.137455, 29.329264, 29.199066>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.024492, 28.922338, 29.813530> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.413809, 29.012815, 29.829216>,  <25.647400, 29.067102, 29.838627>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.413809, 29.012815, 29.829216>,  <25.024492, 28.922338, 29.813530>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.413809, 29.012815, 29.829216> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090733, 0.222114, 0.970790,
		0.210857, -0.948425, 0.236704,
		0.973297, 0.226174, 0.039219,
		25.705797, 29.080673, 29.840981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.170519, 28.885059, 30.434887>,  <25.024492, 28.922338, 29.813530>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.170519, 28.885059, 30.434887> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.511423, 29.065868, 30.329565>,  <25.715965, 29.174355, 30.266371>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.511423, 29.065868, 30.329565>,  <25.170519, 28.885059, 30.434887>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.511423, 29.065868, 30.329565> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116610, 0.326515, 0.937971,
		0.509958, -0.830098, 0.225564,
		0.852258, 0.452023, -0.263307,
		25.767101, 29.201475, 30.250572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.633459, 28.759708, 30.965227>,  <25.170519, 28.885059, 30.434887>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.633459, 28.759708, 30.965227> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.803665, 29.069988, 30.778797>,  <25.905788, 29.256157, 30.666939>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.803665, 29.069988, 30.778797>,  <25.633459, 28.759708, 30.965227>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.803665, 29.069988, 30.778797> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257260, 0.390088, 0.884109,
		0.867614, -0.496104, -0.033568,
		0.425515, 0.775701, -0.466073,
		25.931320, 29.302698, 30.638975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.396351, 28.881832, 31.272867>,  <25.633459, 28.759708, 30.965227>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.396351, 28.881832, 31.272867> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.255856, 29.215248, 31.102293>,  <26.171558, 29.415298, 30.999949>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.255856, 29.215248, 31.102293>,  <26.396351, 28.881832, 31.272867>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.255856, 29.215248, 31.102293> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225748, 0.517408, 0.825425,
		0.908664, 0.193653, -0.369902,
		-0.351236, 0.833539, -0.426433,
		26.150484, 29.465309, 30.974363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.908974, 29.414398, 31.304213>,  <26.396351, 28.881832, 31.272867>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.908974, 29.414398, 31.304213> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.569242, 29.617994, 31.248247>,  <26.365404, 29.740152, 31.214668>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.569242, 29.617994, 31.248247>,  <26.908974, 29.414398, 31.304213>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.569242, 29.617994, 31.248247> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304283, 0.688658, 0.658150,
		0.431342, 0.516411, -0.739772,
		-0.849326, 0.508988, -0.139912,
		26.314445, 29.770691, 31.206274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.170799, 30.092800, 31.224180>,  <26.908974, 29.414398, 31.304213>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.170799, 30.092800, 31.224180> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.784679, 30.122330, 31.324379>,  <26.553007, 30.140047, 31.384499>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.784679, 30.122330, 31.324379>,  <27.170799, 30.092800, 31.224180>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.784679, 30.122330, 31.324379> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221526, 0.739422, 0.635753,
		-0.138289, 0.669183, -0.730117,
		-0.965299, 0.073822, 0.250495,
		26.495090, 30.144476, 31.399527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.940235, 30.962606, 31.175955>,  <27.170799, 30.092800, 31.224180>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.940235, 30.962606, 31.175955> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.666742, 30.750893, 31.376902>,  <26.502647, 30.623865, 31.497469>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.666742, 30.750893, 31.376902>,  <26.940235, 30.962606, 31.175955>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.666742, 30.750893, 31.376902> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133881, 0.767722, 0.626641,
		-0.717349, 0.361196, -0.595775,
		-0.683730, -0.529283, 0.502367,
		26.461624, 30.592108, 31.527613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.367270, 31.413633, 31.335508>,  <26.940235, 30.962606, 31.175955>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.367270, 31.413633, 31.335508> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.285095, 31.127613, 31.602789>,  <26.235790, 30.956001, 31.763157>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.285095, 31.127613, 31.602789>,  <26.367270, 31.413633, 31.335508>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.285095, 31.127613, 31.602789> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308706, 0.695256, 0.649092,
		-0.928707, -0.072932, -0.363571,
		-0.205435, -0.715053, 0.668203,
		26.223465, 30.913097, 31.803249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.672401, 31.627594, 31.542736>,  <26.367270, 31.413633, 31.335508>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.672401, 31.627594, 31.542736> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.833319, 31.387259, 31.819040>,  <25.929869, 31.243057, 31.984823>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.833319, 31.387259, 31.819040>,  <25.672401, 31.627594, 31.542736>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.833319, 31.387259, 31.819040> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179855, 0.687939, 0.703130,
		-0.897669, -0.407103, 0.168690,
		0.402295, -0.600839, 0.690761,
		25.954008, 31.207006, 32.026268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.201220, 31.513348, 32.176212>,  <25.672401, 31.627594, 31.542736>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.201220, 31.513348, 32.176212> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.562801, 31.404600, 32.308247>,  <25.779751, 31.339352, 32.387466>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.562801, 31.404600, 32.308247>,  <25.201220, 31.513348, 32.176212>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.562801, 31.404600, 32.308247> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140805, 0.539613, 0.830055,
		-0.403782, -0.796809, 0.449505,
		0.903954, -0.271869, 0.330081,
		25.833988, 31.323040, 32.407272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.053898, 31.477816, 32.905830>,  <25.201220, 31.513348, 32.176212>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.053898, 31.477816, 32.905830> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.445745, 31.537716, 32.852280>,  <25.680855, 31.573656, 32.820148>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.445745, 31.537716, 32.852280>,  <25.053898, 31.477816, 32.905830>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.445745, 31.537716, 32.852280> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016623, 0.603760, 0.796993,
		0.200177, -0.782975, 0.588965,
		0.979619, 0.149750, -0.133874,
		25.739632, 31.582642, 32.812119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.372564, 31.213261, 33.479221>,  <25.053898, 31.477816, 32.905830>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.372564, 31.213261, 33.479221> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.580706, 31.507370, 33.305508>,  <25.705591, 31.683836, 33.201279>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.580706, 31.507370, 33.305508>,  <25.372564, 31.213261, 33.479221>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.580706, 31.507370, 33.305508> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145967, 0.577658, 0.803122,
		0.841384, -0.354515, 0.407912,
		0.520352, 0.735276, -0.434285,
		25.736811, 31.727953, 33.175220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.650848, 31.593195, 34.026344>,  <25.372564, 31.213261, 33.479221>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.650848, 31.593195, 34.026344> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.687374, 31.858891, 33.729576>,  <25.709290, 32.018307, 33.551514>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.687374, 31.858891, 33.729576>,  <25.650848, 31.593195, 34.026344>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.687374, 31.858891, 33.729576> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181906, 0.743627, 0.643373,
		0.979067, 0.076212, 0.188732,
		0.091314, 0.664237, -0.741924,
		25.714767, 32.058163, 33.507000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.097342, 32.115307, 34.317726>,  <25.650848, 31.593195, 34.026344>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.097342, 32.115307, 34.317726> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.910021, 32.298519, 34.015495>,  <25.797628, 32.408447, 33.834156>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.910021, 32.298519, 34.015495>,  <26.097342, 32.115307, 34.317726>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.910021, 32.298519, 34.015495> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229832, 0.762563, 0.604710,
		0.853152, 0.456845, -0.251842,
		-0.468304, 0.458028, -0.755580,
		25.769529, 32.435928, 33.788822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.283113, 32.803982, 34.368820>,  <26.097342, 32.115307, 34.317726>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.283113, 32.803982, 34.368820> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.944984, 32.796249, 34.155258>,  <25.742107, 32.791611, 34.027119>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.944984, 32.796249, 34.155258>,  <26.283113, 32.803982, 34.368820>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.944984, 32.796249, 34.155258> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267342, 0.880532, 0.391396,
		0.462557, 0.473592, -0.749501,
		-0.845322, -0.019330, -0.533908,
		25.691387, 32.790451, 33.995087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.127563, 33.494797, 34.305859>,  <26.283113, 32.803982, 34.368820>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.127563, 33.494797, 34.305859> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.778305, 33.325062, 34.209900>,  <25.568750, 33.223221, 34.152325>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.778305, 33.325062, 34.209900>,  <26.127563, 33.494797, 34.305859>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.778305, 33.325062, 34.209900> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486482, 0.789668, 0.373845,
		0.030801, 0.443127, -0.895929,
		-0.873148, -0.424339, -0.239896,
		25.516361, 33.197762, 34.137932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.870977, 33.862911, 33.735271>,  <26.127563, 33.494797, 34.305859>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.870977, 33.862911, 33.735271> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.579309, 33.689793, 33.947308>,  <25.404308, 33.585922, 34.074528>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.579309, 33.689793, 33.947308>,  <25.870977, 33.862911, 33.735271>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.579309, 33.689793, 33.947308> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412351, 0.896070, 0.164395,
		-0.546147, -0.098710, -0.831853,
		-0.729171, -0.432800, 0.530089,
		25.360558, 33.559952, 34.106335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.314293, 34.273674, 33.654686>,  <25.870977, 33.862911, 33.735271>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.314293, 34.273674, 33.654686> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.186319, 34.057598, 33.966026>,  <25.109535, 33.927952, 34.152832>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.186319, 34.057598, 33.966026>,  <25.314293, 34.273674, 33.654686>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.186319, 34.057598, 33.966026> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439882, 0.812312, 0.382953,
		-0.839134, -0.219864, -0.497508,
		-0.319935, -0.540194, 0.778352,
		25.090340, 33.895538, 34.199532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.019175, 34.674599, 33.577908>,  <25.314293, 34.273674, 33.654686>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.019175, 34.674599, 33.577908> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.223059, 34.984467, 33.428200>,  <26.345388, 35.170387, 33.338375>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.223059, 34.984467, 33.428200>,  <26.019175, 34.674599, 33.577908>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.223059, 34.984467, 33.428200> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099708, -0.378905, -0.920048,
		-0.854549, 0.506276, -0.115891,
		0.509710, 0.774671, -0.374273,
		26.375971, 35.216869, 33.315918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.694334, 34.881710, 32.980530>,  <26.019175, 34.674599, 33.577908>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.694334, 34.881710, 32.980530> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.074385, 35.003582, 32.953899>,  <26.302414, 35.076706, 32.937920>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.074385, 35.003582, 32.953899>,  <25.694334, 34.881710, 32.980530>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.074385, 35.003582, 32.953899> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111009, -0.529909, -0.840757,
		-0.291441, 0.791434, -0.537303,
		0.950126, 0.304677, -0.066581,
		26.359423, 35.094986, 32.933926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.752172, 35.321739, 32.342987>,  <25.694334, 34.881710, 32.980530>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.752172, 35.321739, 32.342987> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.130774, 35.214218, 32.414406>,  <26.357933, 35.149704, 32.457256>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.130774, 35.214218, 32.414406>,  <25.752172, 35.321739, 32.342987>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.130774, 35.214218, 32.414406> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098615, -0.285887, -0.953176,
		0.307263, 0.919789, -0.244084,
		0.946501, -0.268806, 0.178547,
		26.414724, 35.133575, 32.467972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.234348, 35.661148, 31.933132>,  <25.752172, 35.321739, 32.342987>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.234348, 35.661148, 31.933132> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.426041, 35.323528, 32.029396>,  <26.541056, 35.120956, 32.087154>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.426041, 35.323528, 32.029396>,  <26.234348, 35.661148, 31.933132>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.426041, 35.323528, 32.029396> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183063, -0.172042, -0.967931,
		0.858384, 0.507920, 0.072065,
		0.479233, -0.844049, 0.240660,
		26.569811, 35.070312, 32.101593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.801781, 35.686485, 31.436861>,  <26.234348, 35.661148, 31.933132>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.801781, 35.686485, 31.436861> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.827238, 35.313866, 31.580059>,  <26.842512, 35.090294, 31.665977>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.827238, 35.313866, 31.580059>,  <26.801781, 35.686485, 31.436861>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.827238, 35.313866, 31.580059> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224909, -0.336107, -0.914575,
		0.972299, 0.138723, 0.188124,
		0.063643, -0.931551, 0.357996,
		26.846331, 35.034401, 31.687458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.443657, 35.250587, 31.065935>,  <26.801781, 35.686485, 31.436861>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.443657, 35.250587, 31.065935> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.183052, 34.994442, 31.228647>,  <27.026690, 34.840755, 31.326275>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.183052, 34.994442, 31.228647>,  <27.443657, 35.250587, 31.065935>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.183052, 34.994442, 31.228647> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179436, -0.651054, -0.737517,
		0.737113, -0.407510, 0.539073,
		-0.651511, -0.640362, 0.406778,
		26.987598, 34.802334, 31.350681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.748295, 34.586231, 30.849737>,  <27.443657, 35.250587, 31.065935>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.748295, 34.586231, 30.849737> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.370365, 34.493542, 30.942356>,  <27.143608, 34.437927, 30.997927>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.370365, 34.493542, 30.942356>,  <27.748295, 34.586231, 30.849737>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.370365, 34.493542, 30.942356> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023171, -0.657796, -0.752840,
		0.326757, -0.716667, 0.616132,
		-0.944824, -0.231719, 0.231546,
		27.086918, 34.424026, 31.011820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.797070, 33.863033, 30.772396>,  <27.748295, 34.586231, 30.849737>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.797070, 33.863033, 30.772396> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.408728, 33.958366, 30.762241>,  <27.175722, 34.015564, 30.756147>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.408728, 33.958366, 30.762241>,  <27.797070, 33.863033, 30.772396>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.408728, 33.958366, 30.762241> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137502, -0.640603, -0.755460,
		-0.196311, -0.729950, 0.654702,
		-0.970853, 0.238328, -0.025388,
		27.117472, 34.029865, 30.754625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.405603, 33.261055, 30.883320>,  <27.797070, 33.863033, 30.772396>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.405603, 33.261055, 30.883320> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.167452, 33.517223, 30.689257>,  <27.024561, 33.670925, 30.572819>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.167452, 33.517223, 30.689257>,  <27.405603, 33.261055, 30.883320>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.167452, 33.517223, 30.689257> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212661, -0.707925, -0.673511,
		-0.774790, -0.297820, 0.557677,
		-0.595379, 0.640426, -0.485159,
		26.988838, 33.709351, 30.543709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.620445, 32.968182, 30.870367>,  <27.405603, 33.261055, 30.883320>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.620445, 32.968182, 30.870367> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.716335, 33.225239, 30.579290>,  <26.773869, 33.379475, 30.404644>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.716335, 33.225239, 30.579290>,  <26.620445, 32.968182, 30.870367>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.716335, 33.225239, 30.579290> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191205, -0.703615, -0.684373,
		-0.951826, 0.303200, -0.045797,
		0.239726, 0.642648, -0.727692,
		26.788254, 33.418034, 30.360983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.216543, 32.713165, 30.340431>,  <26.620445, 32.968182, 30.870367>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.216543, 32.713165, 30.340431> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.456011, 32.957245, 30.132874>,  <26.599691, 33.103691, 30.008339>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.456011, 32.957245, 30.132874>,  <26.216543, 32.713165, 30.340431>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.456011, 32.957245, 30.132874> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154436, -0.547726, -0.822281,
		-0.785968, 0.572409, -0.233669,
		0.598668, 0.610200, -0.518896,
		26.635611, 33.140305, 29.977205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.943274, 32.746006, 29.736521>,  <26.216543, 32.713165, 30.340431>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.943274, 32.746006, 29.736521> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.306452, 32.884998, 29.642807>,  <26.524359, 32.968395, 29.586578>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.306452, 32.884998, 29.642807>,  <25.943274, 32.746006, 29.736521>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.306452, 32.884998, 29.642807> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000976, -0.557288, -0.830319,
		-0.419084, 0.754114, -0.505649,
		0.907947, 0.347480, -0.234286,
		26.578836, 32.989243, 29.572521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.921108, 32.937740, 29.011499>,  <25.943274, 32.746006, 29.736521>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.921108, 32.937740, 29.011499> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.304003, 32.859070, 29.096369>,  <26.533739, 32.811867, 29.147291>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.304003, 32.859070, 29.096369>,  <25.921108, 32.937740, 29.011499>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.304003, 32.859070, 29.096369> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100793, -0.460722, -0.881803,
		0.271181, 0.865479, -0.421196,
		0.957237, -0.196675, 0.212173,
		26.591173, 32.800068, 29.160021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.193527, 32.943699, 28.342110>,  <25.921108, 32.937740, 29.011499>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.193527, 32.943699, 28.342110> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.480516, 32.763504, 28.554634>,  <26.652710, 32.655388, 28.682150>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.480516, 32.763504, 28.554634>,  <26.193527, 32.943699, 28.342110>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.480516, 32.763504, 28.554634> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284178, -0.507093, -0.813695,
		0.635981, 0.734794, -0.235809,
		0.717475, -0.450483, 0.531313,
		26.695759, 32.628361, 28.714027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.831005, 32.991577, 27.883274>,  <26.193527, 32.943699, 28.342110>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.831005, 32.991577, 27.883274> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.852705, 32.703949, 28.160398>,  <26.865725, 32.531372, 28.326674>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.852705, 32.703949, 28.160398>,  <26.831005, 32.991577, 27.883274>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.852705, 32.703949, 28.160398> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162794, -0.678181, -0.716637,
		0.985168, 0.151664, 0.080269,
		0.054251, -0.719074, 0.692812,
		26.868980, 32.488228, 28.368242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.423859, 32.555935, 27.694008>,  <26.831005, 32.991577, 27.883274>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.423859, 32.555935, 27.694008> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.211561, 32.314075, 27.931566>,  <27.084183, 32.168961, 28.074100>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.211561, 32.314075, 27.931566>,  <27.423859, 32.555935, 27.694008>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.211561, 32.314075, 27.931566> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090512, -0.737166, -0.669622,
		0.842685, -0.301644, 0.445975,
		-0.530745, -0.604646, 0.593896,
		27.052338, 32.132683, 28.109735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.765112, 31.876486, 27.582796>,  <27.423859, 32.555935, 27.694008>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.765112, 31.876486, 27.582796> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.398857, 31.794228, 27.720964>,  <27.179104, 31.744873, 27.803865>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.398857, 31.794228, 27.720964>,  <27.765112, 31.876486, 27.582796>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.398857, 31.794228, 27.720964> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125509, -0.670061, -0.731618,
		0.381907, -0.713251, 0.587724,
		-0.915639, -0.205646, 0.345421,
		27.124165, 31.732534, 27.824591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.622734, 31.125231, 27.608423>,  <27.765112, 31.876486, 27.582796>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.622734, 31.125231, 27.608423> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.254875, 31.279980, 27.581358>,  <27.034161, 31.372829, 27.565119>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.254875, 31.279980, 27.581358>,  <27.622734, 31.125231, 27.608423>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.254875, 31.279980, 27.581358> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248720, -0.707025, -0.662008,
		-0.303951, -0.591985, 0.746436,
		-0.919648, 0.386872, -0.067662,
		26.978981, 31.396042, 27.561060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.124098, 30.538776, 27.628466>,  <27.622734, 31.125231, 27.608423>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.124098, 30.538776, 27.628466> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.911150, 30.846016, 27.486137>,  <26.783381, 31.030359, 27.400740>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.911150, 30.846016, 27.486137>,  <27.124098, 30.538776, 27.628466>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.911150, 30.846016, 27.486137> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509273, -0.626374, -0.590167,
		-0.676182, -0.132979, 0.724634,
		-0.532372, 0.768097, -0.355820,
		26.751438, 31.076445, 27.379391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.490396, 30.304224, 27.721361>,  <27.124098, 30.538776, 27.628466>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.490396, 30.304224, 27.721361> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.445852, 30.591072, 27.446163>,  <26.419127, 30.763182, 27.281044>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.445852, 30.591072, 27.446163>,  <26.490396, 30.304224, 27.721361>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.445852, 30.591072, 27.446163> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.523230, -0.630884, -0.572902,
		-0.844884, 0.296180, 0.445475,
		-0.111361, 0.717121, -0.687994,
		26.412443, 30.806208, 27.239765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.698336, 30.432867, 27.492691>,  <26.490396, 30.304224, 27.721361>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.698336, 30.432867, 27.492691> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.916405, 30.562469, 27.183420>,  <26.047247, 30.640230, 26.997856>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.916405, 30.562469, 27.183420>,  <25.698336, 30.432867, 27.492691>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.916405, 30.562469, 27.183420> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424812, -0.688335, -0.587988,
		-0.722718, 0.649011, -0.237621,
		0.545173, 0.324006, -0.773180,
		26.079956, 30.659672, 26.951466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<38.661785, 40.815334, 43.682056> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.305309, 40.642361, 43.736881>,  <38.091423, 40.538578, 43.769775>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.305309, 40.642361, 43.736881>,  <38.661785, 40.815334, 43.682056>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.305309, 40.642361, 43.736881> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218023, 0.673259, 0.706533,
		-0.397804, 0.599772, -0.694281,
		-0.891189, -0.432430, 0.137062,
		38.037952, 40.512630, 43.778000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.207726, 41.347790, 43.847916>,  <38.661785, 40.815334, 43.682056>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.207726, 41.347790, 43.847916> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.041000, 41.013443, 43.990799>,  <37.940968, 40.812836, 44.076527>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.041000, 41.013443, 43.990799>,  <38.207726, 41.347790, 43.847916>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.041000, 41.013443, 43.990799> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354457, 0.511317, 0.782889,
		-0.837036, 0.199703, -0.509401,
		-0.416811, -0.835867, 0.357205,
		37.915958, 40.762684, 44.097961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.593342, 41.584248, 44.051765>,  <38.207726, 41.347790, 43.847916>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.593342, 41.584248, 44.051765> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.672943, 41.236134, 44.231991>,  <37.720703, 41.027267, 44.340126>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.672943, 41.236134, 44.231991>,  <37.593342, 41.584248, 44.051765>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.672943, 41.236134, 44.231991> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333378, 0.372216, 0.866207,
		-0.921550, -0.322588, -0.216059,
		0.199007, -0.870282, 0.450560,
		37.732647, 40.975048, 44.367157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.970310, 41.481602, 44.431553>,  <37.593342, 41.584248, 44.051765>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.970310, 41.481602, 44.431553> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.270832, 41.265892, 44.583725>,  <37.451145, 41.136467, 44.675026>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.270832, 41.265892, 44.583725>,  <36.970310, 41.481602, 44.431553>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.270832, 41.265892, 44.583725> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171074, 0.397599, 0.901470,
		-0.637396, -0.742361, 0.206463,
		0.751306, -0.539273, 0.380426,
		37.496223, 41.104111, 44.697853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.745148, 41.293877, 45.023640>,  <36.970310, 41.481602, 44.431553>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.745148, 41.293877, 45.023640> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.135864, 41.238136, 45.088715>,  <37.370293, 41.204693, 45.127762>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.135864, 41.238136, 45.088715>,  <36.745148, 41.293877, 45.023640>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.135864, 41.238136, 45.088715> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146668, 0.118467, 0.982066,
		-0.156126, -0.983131, 0.095279,
		0.976787, -0.139352, 0.162690,
		37.428902, 41.196331, 45.137520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.846825, 40.867611, 45.633911>,  <36.745148, 41.293877, 45.023640>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.846825, 40.867611, 45.633911> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.182686, 41.082241, 45.600262>,  <37.384201, 41.211018, 45.580070>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.182686, 41.082241, 45.600262>,  <36.846825, 40.867611, 45.633911>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.182686, 41.082241, 45.600262> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076947, 0.270844, 0.959543,
		0.537652, -0.799206, 0.268702,
		0.839649, 0.536576, -0.084123,
		37.434582, 41.243214, 45.575024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.214508, 40.669640, 46.160477>,  <36.846825, 40.867611, 45.633911>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.214508, 40.669640, 46.160477> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.394390, 41.015743, 46.071854>,  <37.502319, 41.223408, 46.018681>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.394390, 41.015743, 46.071854>,  <37.214508, 40.669640, 46.160477>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.394390, 41.015743, 46.071854> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062274, 0.217076, 0.974166,
		0.891003, -0.451885, 0.043737,
		0.449705, 0.865262, -0.221556,
		37.529301, 41.275322, 46.005386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.719734, 40.618011, 46.666168>,  <37.214508, 40.669640, 46.160477>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.719734, 40.618011, 46.666168> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.664688, 40.990803, 46.532013>,  <37.631660, 41.214478, 46.451519>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.664688, 40.990803, 46.532013>,  <37.719734, 40.618011, 46.666168>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.664688, 40.990803, 46.532013> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097694, 0.324188, 0.940935,
		0.985657, 0.162250, 0.046436,
		-0.137613, 0.931975, -0.335389,
		37.623405, 41.270393, 46.431396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.918571, 40.946163, 47.135563>,  <37.719734, 40.618011, 46.666168>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.918571, 40.946163, 47.135563> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.692299, 41.224640, 46.958782>,  <37.556538, 41.391727, 46.852715>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.692299, 41.224640, 46.958782>,  <37.918571, 40.946163, 47.135563>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.692299, 41.224640, 46.958782> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138953, 0.447803, 0.883269,
		0.812834, 0.561057, -0.156574,
		-0.565679, 0.696195, -0.441950,
		37.522594, 41.433498, 46.826199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.152985, 41.595898, 47.437374>,  <37.918571, 40.946163, 47.135563>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.152985, 41.595898, 47.437374> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.803474, 41.695446, 47.270241>,  <37.593769, 41.755177, 47.169960>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.803474, 41.695446, 47.270241>,  <38.152985, 41.595898, 47.437374>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.803474, 41.695446, 47.270241> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221138, 0.561876, 0.797115,
		0.433147, 0.788897, -0.435918,
		-0.873774, 0.248870, -0.417830,
		37.541344, 41.770107, 47.144890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.138428, 42.237709, 47.718975>,  <38.152985, 41.595898, 47.437374>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.138428, 42.237709, 47.718975> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.768299, 42.123356, 47.619335>,  <37.546223, 42.054745, 47.559551>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.768299, 42.123356, 47.619335>,  <38.138428, 42.237709, 47.718975>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.768299, 42.123356, 47.619335> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369131, 0.528849, 0.764239,
		-0.086747, 0.799117, -0.594884,
		-0.925320, -0.285886, -0.249102,
		37.490704, 42.037590, 47.544605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.628204, 42.812721, 47.489536>,  <38.138428, 42.237709, 47.718975>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.628204, 42.812721, 47.489536> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.402035, 42.508465, 47.617107>,  <37.266335, 42.325909, 47.693649>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.402035, 42.508465, 47.617107>,  <37.628204, 42.812721, 47.489536>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.402035, 42.508465, 47.617107> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368176, 0.578778, 0.727642,
		-0.738066, 0.294004, -0.607306,
		-0.565425, -0.760643, 0.318931,
		37.232407, 42.280273, 47.712788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.732517, 42.905674, 47.378586>,  <37.628204, 42.812721, 47.489536>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.732517, 42.905674, 47.378586> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.869591, 42.695660, 47.690201>,  <36.951836, 42.569653, 47.877171>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.869591, 42.695660, 47.690201>,  <36.732517, 42.905674, 47.378586>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.869591, 42.695660, 47.690201> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387443, 0.676462, 0.626328,
		-0.855835, -0.516470, 0.028395,
		0.342688, -0.525032, 0.779042,
		36.972397, 42.538151, 47.923912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.207291, 43.045918, 47.855244>,  <36.732517, 42.905674, 47.378586>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.207291, 43.045918, 47.855244> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.545105, 42.935440, 48.038754>,  <36.747795, 42.869156, 48.148857>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.545105, 42.935440, 48.038754>,  <36.207291, 43.045918, 47.855244>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.545105, 42.935440, 48.038754> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052006, 0.810374, 0.583601,
		-0.532962, -0.516733, 0.670029,
		0.844540, -0.276191, 0.458772,
		36.798466, 42.852581, 48.176384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.844238, 43.717087, 47.778717>,  <36.207291, 43.045918, 47.855244>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.844238, 43.717087, 47.778717> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.621967, 44.040550, 47.701481>,  <35.488605, 44.234631, 47.655140>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.621967, 44.040550, 47.701481>,  <35.844238, 43.717087, 47.778717>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.621967, 44.040550, 47.701481> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108893, -0.301040, -0.947374,
		-0.824234, -0.505411, 0.255340,
		-0.555681, 0.808662, -0.193092,
		35.455261, 44.283150, 47.643555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.202839, 43.530792, 47.506645>,  <35.844238, 43.717087, 47.778717>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.202839, 43.530792, 47.506645> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.278027, 43.901226, 47.375782>,  <35.323139, 44.123486, 47.297264>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.278027, 43.901226, 47.375782>,  <35.202839, 43.530792, 47.506645>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.278027, 43.901226, 47.375782> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145702, -0.303121, -0.941748,
		-0.971308, 0.224688, 0.077955,
		0.187969, 0.926085, -0.327161,
		35.334415, 44.179050, 47.277634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.585449, 43.697811, 47.022583>,  <35.202839, 43.530792, 47.506645>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.585449, 43.697811, 47.022583> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.876362, 43.956947, 46.931923>,  <35.050911, 44.112427, 46.877529>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.876362, 43.956947, 46.931923>,  <34.585449, 43.697811, 47.022583>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.876362, 43.956947, 46.931923> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314812, 0.021440, -0.948912,
		-0.609882, 0.761476, 0.219540,
		0.727280, 0.647839, -0.226646,
		35.094547, 44.151299, 46.863930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.339130, 43.965122, 46.580811>,  <34.585449, 43.697811, 47.022583>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.339130, 43.965122, 46.580811> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.720585, 44.067299, 46.517139>,  <34.949455, 44.128605, 46.478939>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.720585, 44.067299, 46.517139>,  <34.339130, 43.965122, 46.580811>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.720585, 44.067299, 46.517139> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106323, -0.208850, -0.972151,
		-0.281568, 0.943998, -0.172007,
		0.953632, 0.255439, -0.159174,
		35.006676, 44.143932, 46.469387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.389286, 44.502708, 45.937473>,  <34.339130, 43.965122, 46.580811>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.389286, 44.502708, 45.937473> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.765354, 44.371826, 45.975468>,  <34.990993, 44.293297, 45.998264>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.765354, 44.371826, 45.975468>,  <34.389286, 44.502708, 45.937473>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.765354, 44.371826, 45.975468> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071403, -0.083387, -0.993956,
		0.333151, 0.941266, -0.055034,
		0.940166, -0.327208, 0.094990,
		35.047405, 44.273663, 46.003963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.774529, 44.934696, 45.509716>,  <34.389286, 44.502708, 45.937473>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.774529, 44.934696, 45.509716> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.979984, 44.595959, 45.564899>,  <35.103260, 44.392715, 45.598011>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.979984, 44.595959, 45.564899>,  <34.774529, 44.934696, 45.509716>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.979984, 44.595959, 45.564899> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008087, -0.156010, -0.987722,
		0.857966, 0.508453, -0.073285,
		0.513644, -0.846839, 0.137963,
		35.134079, 44.341908, 45.606289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.280891, 44.902763, 44.944382>,  <34.774529, 44.934696, 45.509716>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.280891, 44.902763, 44.944382> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.300056, 44.526138, 45.077744>,  <35.311558, 44.300163, 45.157761>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.300056, 44.526138, 45.077744>,  <35.280891, 44.902763, 44.944382>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.300056, 44.526138, 45.077744> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264948, -0.309853, -0.913123,
		0.963071, 0.132090, 0.234619,
		0.047917, -0.941565, 0.333407,
		35.314430, 44.243668, 45.177765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.856770, 44.684307, 44.631245>,  <35.280891, 44.902763, 44.944382>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.856770, 44.684307, 44.631245> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.628826, 44.370544, 44.729202>,  <35.492062, 44.182285, 44.787975>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.628826, 44.370544, 44.729202>,  <35.856770, 44.684307, 44.631245>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.628826, 44.370544, 44.729202> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209816, -0.427025, -0.879560,
		0.794506, -0.449842, 0.407925,
		-0.569857, -0.784405, 0.244890,
		35.457870, 44.135223, 44.802670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.185421, 44.039761, 44.420490>,  <35.856770, 44.684307, 44.631245>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.185421, 44.039761, 44.420490> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.805851, 43.921227, 44.463810>,  <35.578110, 43.850105, 44.489799>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.805851, 43.921227, 44.463810>,  <36.185421, 44.039761, 44.420490>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.805851, 43.921227, 44.463810> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076877, -0.550071, -0.831572,
		0.305997, -0.780773, 0.544757,
		-0.948924, -0.296338, 0.108296,
		35.521175, 43.832325, 44.496300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.241577, 43.282829, 44.505142>,  <36.185421, 44.039761, 44.420490>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.241577, 43.282829, 44.505142> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.871223, 43.370392, 44.381973>,  <35.649010, 43.422932, 44.308071>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.871223, 43.370392, 44.381973>,  <36.241577, 43.282829, 44.505142>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.871223, 43.370392, 44.381973> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001067, -0.816535, -0.577295,
		-0.377804, -0.534181, 0.756251,
		-0.925885, 0.218911, -0.307920,
		35.593456, 43.436066, 44.289597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.954258, 42.694946, 44.435970>,  <36.241577, 43.282829, 44.505142>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.954258, 42.694946, 44.435970> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.688118, 42.909595, 44.228374>,  <35.528435, 43.038383, 44.103817>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.688118, 42.909595, 44.228374>,  <35.954258, 42.694946, 44.435970>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.688118, 42.909595, 44.228374> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079674, -0.742271, -0.665347,
		-0.742271, -0.401336, 0.536622,
		0.665347, -0.536622, 0.518990,
		35.488514, 43.070583, 44.072678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.445080, 42.193790, 44.191902>,  <35.954258, 42.694946, 44.435970>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.445080, 42.193790, 44.191902> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.466904, 42.502316, 43.938255>,  <35.479996, 42.687431, 43.786068>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.466904, 42.502316, 43.938255>,  <35.445080, 42.193790, 44.191902>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.466904, 42.502316, 43.938255> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053783, -0.636407, -0.769476,
		-0.997061, 0.007877, -0.076205,
		0.054558, 0.771313, -0.634113,
		35.483273, 42.733711, 43.748020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.007828, 42.019100, 43.691830>,  <35.445080, 42.193790, 44.191902>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.007828, 42.019100, 43.691830> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.209290, 42.319366, 43.520794>,  <35.330166, 42.499527, 43.418171>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.209290, 42.319366, 43.520794>,  <35.007828, 42.019100, 43.691830>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.209290, 42.319366, 43.520794> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169928, -0.571366, -0.802910,
		-0.847027, 0.331731, -0.415332,
		0.503657, 0.750663, -0.427592,
		35.360386, 42.544567, 43.392517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.759460, 41.993164, 43.004982>,  <35.007828, 42.019100, 43.691830>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.759460, 41.993164, 43.004982> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.060738, 42.252186, 42.958706>,  <35.241505, 42.407597, 42.930939>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.060738, 42.252186, 42.958706>,  <34.759460, 41.993164, 43.004982>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.060738, 42.252186, 42.958706> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296533, -0.491233, -0.818998,
		-0.587175, 0.582553, -0.562011,
		0.753189, 0.647550, -0.115694,
		35.286694, 42.446449, 42.923996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.109333, 42.278889, 42.762039>,  <34.759460, 41.993164, 43.004982>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.109333, 42.278889, 42.762039> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.739414, 42.136517, 42.708279>,  <33.517464, 42.051094, 42.676022>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.739414, 42.136517, 42.708279>,  <34.109333, 42.278889, 42.762039>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.739414, 42.136517, 42.708279> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223302, 0.221784, 0.949183,
		-0.308032, 0.907815, -0.284585,
		-0.924799, -0.355927, -0.134400,
		33.461975, 42.029739, 42.667957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.684856, 42.794266, 42.972054>,  <34.109333, 42.278889, 42.762039>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.684856, 42.794266, 42.972054> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.448067, 42.472702, 42.995010>,  <33.305992, 42.279762, 43.008785>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.448067, 42.472702, 42.995010>,  <33.684856, 42.794266, 42.972054>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.448067, 42.472702, 42.995010> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345748, 0.317631, 0.882932,
		-0.728025, 0.502833, -0.465980,
		-0.591977, -0.803908, 0.057390,
		33.270473, 42.231529, 43.012226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.206848, 42.989872, 43.341278>,  <33.684856, 42.794266, 42.972054>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.206848, 42.989872, 43.341278> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.081467, 42.610039, 43.343807>,  <33.006237, 42.382141, 43.345325>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.081467, 42.610039, 43.343807>,  <33.206848, 42.989872, 43.341278>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.081467, 42.610039, 43.343807> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446852, 0.153376, 0.881362,
		-0.837895, 0.273445, -0.472399,
		-0.313458, -0.949581, 0.006324,
		32.987431, 42.325165, 43.345703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.441341, 43.000053, 43.395424>,  <33.206848, 42.989872, 43.341278>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.441341, 43.000053, 43.395424> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.593876, 42.659424, 43.539318>,  <32.685398, 42.455048, 43.625652>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.593876, 42.659424, 43.539318>,  <32.441341, 43.000053, 43.395424>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.593876, 42.659424, 43.539318> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477018, 0.152065, 0.865638,
		-0.791856, -0.501700, -0.348227,
		0.381337, -0.851571, 0.359734,
		32.708279, 42.403954, 43.647240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.912577, 42.650417, 43.733765>,  <32.441341, 43.000053, 43.395424>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.912577, 42.650417, 43.733765> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.257137, 42.508564, 43.879215>,  <32.463875, 42.423450, 43.966484>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.257137, 42.508564, 43.879215>,  <31.912577, 42.650417, 43.733765>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.257137, 42.508564, 43.879215> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283161, 0.259037, 0.923428,
		-0.421669, -0.898407, 0.122717,
		0.861403, -0.354633, 0.363622,
		32.515556, 42.402176, 43.988300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.741787, 42.311470, 44.350052>,  <31.912577, 42.650417, 43.733765>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.741787, 42.311470, 44.350052> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.134899, 42.379959, 44.377831>,  <32.370766, 42.421055, 44.394497>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.134899, 42.379959, 44.377831>,  <31.741787, 42.311470, 44.350052>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.134899, 42.379959, 44.377831> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112210, 0.254454, 0.960553,
		0.146797, -0.951807, 0.269285,
		0.982782, 0.171223, 0.069449,
		32.429733, 42.431328, 44.398666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.933147, 42.007992, 44.894169>,  <31.741787, 42.311470, 44.350052>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.933147, 42.007992, 44.894169> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.231987, 42.272690, 44.869072>,  <32.411289, 42.431507, 44.854012>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.231987, 42.272690, 44.869072>,  <31.933147, 42.007992, 44.894169>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.231987, 42.272690, 44.869072> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092226, 0.196675, 0.976121,
		0.658284, -0.723472, 0.207966,
		0.747099, 0.661745, -0.062745,
		32.456116, 42.471214, 44.850250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.855705, 41.389137, 45.379890>,  <31.933147, 42.007992, 44.894169>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.855705, 41.389137, 45.379890> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.463961, 41.330143, 45.435173>,  <31.228914, 41.294746, 45.468342>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.463961, 41.330143, 45.435173>,  <31.855705, 41.389137, 45.379890>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.463961, 41.330143, 45.435173> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107385, -0.199622, -0.973971,
		0.171233, -0.968710, 0.179664,
		-0.979361, -0.147483, 0.138207,
		31.170153, 41.285900, 45.476635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.664932, 40.801025, 45.208805>,  <31.855705, 41.389137, 45.379890>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.664932, 40.801025, 45.208805> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.333899, 41.019730, 45.157951>,  <31.135279, 41.150951, 45.127441>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.333899, 41.019730, 45.157951>,  <31.664932, 40.801025, 45.208805>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.333899, 41.019730, 45.157951> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122153, -0.396460, -0.909889,
		-0.547893, -0.737478, 0.394892,
		-0.827582, 0.546759, -0.127132,
		31.085625, 41.183758, 45.119812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.149727, 40.278294, 44.936001>,  <31.664932, 40.801025, 45.208805>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.149727, 40.278294, 44.936001> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.019352, 40.644917, 44.843319>,  <30.941126, 40.864891, 44.787708>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.019352, 40.644917, 44.843319>,  <31.149727, 40.278294, 44.936001>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.019352, 40.644917, 44.843319> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180318, -0.300864, -0.936465,
		-0.928035, -0.263449, 0.263334,
		-0.325938, 0.916556, -0.231708,
		30.921570, 40.919884, 44.773808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.651945, 40.204491, 44.381710>,  <31.149727, 40.278294, 44.936001>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.651945, 40.204491, 44.381710> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.680765, 40.597660, 44.313980>,  <30.698057, 40.833561, 44.273342>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.680765, 40.597660, 44.313980>,  <30.651945, 40.204491, 44.381710>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.680765, 40.597660, 44.313980> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449968, -0.119473, -0.885017,
		-0.890134, 0.139953, 0.433676,
		0.072049, 0.982924, -0.169321,
		30.702379, 40.892536, 44.263184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.088114, 40.327381, 43.979893>,  <30.651945, 40.204491, 44.381710>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.088114, 40.327381, 43.979893> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.332882, 40.635906, 43.909882>,  <30.479742, 40.821022, 43.867874>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.332882, 40.635906, 43.909882>,  <30.088114, 40.327381, 43.979893>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.332882, 40.635906, 43.909882> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215306, -0.050493, -0.975241,
		-0.761051, 0.634453, 0.135170,
		0.611919, 0.771311, -0.175029,
		30.516457, 40.867298, 43.857372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.716467, 40.782017, 43.461857>,  <30.088114, 40.327381, 43.979893>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.716467, 40.782017, 43.461857> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.109451, 40.853668, 43.441143>,  <30.345242, 40.896660, 43.428715>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.109451, 40.853668, 43.441143>,  <29.716467, 40.782017, 43.461857>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.109451, 40.853668, 43.441143> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041840, -0.058838, -0.997390,
		-0.181707, 0.982065, -0.050311,
		0.982462, 0.179128, -0.051781,
		30.404190, 40.907406, 43.425610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.733902, 41.070381, 42.794189>,  <29.716467, 40.782017, 43.461857>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.733902, 41.070381, 42.794189> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.109985, 40.997360, 42.909206>,  <30.335636, 40.953548, 42.978214>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.109985, 40.997360, 42.909206>,  <29.733902, 41.070381, 42.794189>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.109985, 40.997360, 42.909206> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220535, -0.317052, -0.922411,
		0.259554, 0.930673, -0.257836,
		0.940211, -0.182554, 0.287538,
		30.392048, 40.942593, 42.995468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<34.631027, 39.712532, 48.094059> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.247009, 39.770485, 47.998299>,  <34.016598, 39.805256, 47.940842>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.247009, 39.770485, 47.998299>,  <34.631027, 39.712532, 48.094059>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.247009, 39.770485, 47.998299> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214076, -0.170710, -0.961784,
		-0.180218, -0.974611, 0.132873,
		-0.960048, 0.144886, -0.239406,
		33.958996, 39.813950, 47.926476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.038544, 40.250340, 48.089317>,  <34.631027, 39.712532, 48.094059>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.038544, 40.250340, 48.089317> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.300278, 40.326454, 47.796570>,  <35.457317, 40.372124, 47.620922>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.300278, 40.326454, 47.796570>,  <35.038544, 40.250340, 48.089317>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.300278, 40.326454, 47.796570> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111524, -0.932956, -0.342281,
		-0.747935, 0.305588, -0.589245,
		0.654337, 0.190289, -0.731870,
		35.496578, 40.383541, 47.577007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.690811, 40.156120, 47.463882>,  <35.038544, 40.250340, 48.089317>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.690811, 40.156120, 47.463882> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.079578, 40.076984, 47.412930>,  <35.312840, 40.029503, 47.382359>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.079578, 40.076984, 47.412930>,  <34.690811, 40.156120, 47.463882>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.079578, 40.076984, 47.412930> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232942, -0.732538, -0.639630,
		0.033227, 0.651344, -0.758055,
		0.971923, -0.197836, -0.127385,
		35.371155, 40.017635, 47.374714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.881706, 40.204967, 46.766678>,  <34.690811, 40.156120, 47.463882>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.881706, 40.204967, 46.766678> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.179829, 39.979691, 46.909412>,  <35.358704, 39.844524, 46.995052>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.179829, 39.979691, 46.909412>,  <34.881706, 40.204967, 46.766678>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.179829, 39.979691, 46.909412> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168618, -0.677035, -0.716374,
		0.645050, 0.473747, -0.599562,
		0.745305, -0.563194, 0.356839,
		35.403419, 39.810734, 47.016464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.103535, 39.881111, 46.183239>,  <34.881706, 40.204967, 46.766678>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.103535, 39.881111, 46.183239> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.258343, 39.671665, 46.486828>,  <35.351227, 39.545998, 46.668983>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.258343, 39.671665, 46.486828>,  <35.103535, 39.881111, 46.183239>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.258343, 39.671665, 46.486828> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011459, -0.820325, -0.571783,
		0.922001, 0.229987, -0.311479,
		0.387017, -0.523615, 0.758976,
		35.374447, 39.514580, 46.714520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.668865, 39.601479, 45.885456>,  <35.103535, 39.881111, 46.183239>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.668865, 39.601479, 45.885456> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.583359, 39.383766, 46.209942>,  <35.532055, 39.253139, 46.404633>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.583359, 39.383766, 46.209942>,  <35.668865, 39.601479, 45.885456>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.583359, 39.383766, 46.209942> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181677, -0.793771, -0.580449,
		0.959843, -0.271456, 0.070796,
		-0.213762, -0.544278, 0.811214,
		35.519230, 39.220482, 46.453304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.038555, 38.863575, 45.894222>,  <35.668865, 39.601479, 45.885456>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.038555, 38.863575, 45.894222> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.746265, 38.816868, 46.163269>,  <35.570892, 38.788845, 46.324696>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.746265, 38.816868, 46.163269>,  <36.038555, 38.863575, 45.894222>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.746265, 38.816868, 46.163269> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287583, -0.840927, -0.458408,
		0.619148, -0.528401, 0.580903,
		-0.730720, -0.116765, 0.672618,
		35.527050, 38.781837, 46.365055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.981728, 38.182526, 45.886101>,  <36.038555, 38.863575, 45.894222>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.981728, 38.182526, 45.886101> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.660572, 38.317070, 46.082970>,  <35.467880, 38.397797, 46.201092>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.660572, 38.317070, 46.082970>,  <35.981728, 38.182526, 45.886101>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.660572, 38.317070, 46.082970> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.570832, -0.671750, -0.472126,
		0.171809, -0.660011, 0.731346,
		-0.802890, 0.336361, 0.492168,
		35.419704, 38.417976, 46.230621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.685017, 37.599583, 46.183933>,  <35.981728, 38.182526, 45.886101>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.685017, 37.599583, 46.183933> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.408348, 37.884979, 46.139160>,  <35.242348, 38.056217, 46.112297>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.408348, 37.884979, 46.139160>,  <35.685017, 37.599583, 46.183933>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.408348, 37.884979, 46.139160> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.564257, -0.630598, -0.532879,
		-0.450786, -0.305419, 0.838756,
		-0.691669, 0.713488, -0.111930,
		35.200848, 38.099026, 46.105579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.986492, 37.262161, 46.119690>,  <35.685017, 37.599583, 46.183933>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.986492, 37.262161, 46.119690> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.926159, 37.622444, 45.956734>,  <34.889957, 37.838615, 45.858959>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.926159, 37.622444, 45.956734>,  <34.986492, 37.262161, 46.119690>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.926159, 37.622444, 45.956734> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496081, -0.425427, -0.756912,
		-0.855074, 0.087931, 0.510995,
		-0.150835, 0.900711, -0.407392,
		34.880909, 37.892658, 45.834515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.420666, 37.091003, 45.673626>,  <34.986492, 37.262161, 46.119690>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.420666, 37.091003, 45.673626> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.515186, 37.451591, 45.528568>,  <34.571899, 37.667946, 45.441532>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.515186, 37.451591, 45.528568>,  <34.420666, 37.091003, 45.673626>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.515186, 37.451591, 45.528568> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213734, -0.315852, -0.924421,
		-0.947882, 0.295949, 0.118040,
		0.236298, 0.901472, -0.362645,
		34.586075, 37.722034, 45.419773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.836987, 37.360615, 45.206818>,  <34.420666, 37.091003, 45.673626>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.836987, 37.360615, 45.206818> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.191856, 37.515152, 45.105888>,  <34.404778, 37.607872, 45.045330>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.191856, 37.515152, 45.105888>,  <33.836987, 37.360615, 45.206818>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.191856, 37.515152, 45.105888> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021033, -0.512388, -0.858497,
		-0.460958, 0.766942, -0.446451,
		0.887173, 0.386340, -0.252320,
		34.458008, 37.631054, 45.030193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.116825, 37.725182, 44.977272>,  <33.836987, 37.360615, 45.206818>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.116825, 37.725182, 44.977272> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.784237, 37.508846, 45.028107>,  <32.584682, 37.379047, 45.058605>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.784237, 37.508846, 45.028107>,  <33.116825, 37.725182, 44.977272>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.784237, 37.508846, 45.028107> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136463, 0.420559, 0.896944,
		-0.538544, 0.728443, -0.423487,
		-0.831474, -0.540834, 0.127084,
		32.534794, 37.346596, 45.066231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.600399, 38.227634, 45.315224>,  <33.116825, 37.725182, 44.977272>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.600399, 38.227634, 45.315224> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.454330, 37.869987, 45.418926>,  <32.366692, 37.655399, 45.481148>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.454330, 37.869987, 45.418926>,  <32.600399, 38.227634, 45.315224>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.454330, 37.869987, 45.418926> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241483, 0.359929, 0.901187,
		-0.899077, 0.266478, -0.347348,
		-0.365167, -0.894115, 0.259254,
		32.344780, 37.601753, 45.496704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.954973, 38.312561, 45.608131>,  <32.600399, 38.227634, 45.315224>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.954973, 38.312561, 45.608131> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.051781, 37.948414, 45.742386>,  <32.109867, 37.729927, 45.822941>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.051781, 37.948414, 45.742386>,  <31.954973, 38.312561, 45.608131>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.051781, 37.948414, 45.742386> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351528, 0.240151, 0.904851,
		-0.904353, -0.336979, -0.261899,
		0.242020, -0.910369, 0.335639,
		32.124386, 37.675304, 45.843079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.412392, 38.143204, 46.147717>,  <31.954973, 38.312561, 45.608131>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.412392, 38.143204, 46.147717> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.681055, 37.855091, 46.217083>,  <31.842253, 37.682224, 46.258701>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.681055, 37.855091, 46.217083>,  <31.412392, 38.143204, 46.147717>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.681055, 37.855091, 46.217083> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334839, -0.086331, 0.938312,
		-0.660877, -0.688290, -0.299163,
		0.671658, -0.720280, 0.173413,
		31.882553, 37.639008, 46.269108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.068041, 37.687992, 46.521015>,  <31.412392, 38.143204, 46.147717>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.068041, 37.687992, 46.521015> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.458063, 37.651958, 46.602158>,  <31.692078, 37.630341, 46.650841>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.458063, 37.651958, 46.602158>,  <31.068041, 37.687992, 46.521015>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.458063, 37.651958, 46.602158> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190297, 0.131126, 0.972930,
		-0.114243, -0.987265, 0.110713,
		0.975057, -0.090082, 0.202854,
		31.750580, 37.624935, 46.663013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.087378, 37.398739, 47.130013>,  <31.068041, 37.687992, 46.521015>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.087378, 37.398739, 47.130013> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.458284, 37.546947, 47.108482>,  <31.680828, 37.635872, 47.095566>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.458284, 37.546947, 47.108482>,  <31.087378, 37.398739, 47.130013>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.458284, 37.546947, 47.108482> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033952, 0.226377, 0.973448,
		0.372865, -0.900816, 0.222491,
		0.927264, 0.370519, -0.053824,
		31.736464, 37.658104, 47.092335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.372725, 37.282150, 47.758789>,  <31.087378, 37.398739, 47.130013>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.372725, 37.282150, 47.758789> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.592556, 37.584991, 47.617508>,  <31.724455, 37.766697, 47.532738>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.592556, 37.584991, 47.617508>,  <31.372725, 37.282150, 47.758789>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.592556, 37.584991, 47.617508> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016762, 0.432683, 0.901390,
		0.835273, -0.489465, 0.250485,
		0.549580, 0.757106, -0.353204,
		31.757429, 37.812122, 47.511547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.945589, 37.489521, 48.224773>,  <31.372725, 37.282150, 47.758789>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.945589, 37.489521, 48.224773> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.880264, 37.815552, 48.002430>,  <31.841068, 38.011169, 47.869022>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.880264, 37.815552, 48.002430>,  <31.945589, 37.489521, 48.224773>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.880264, 37.815552, 48.002430> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020920, 0.560439, 0.827932,
		0.986353, 0.146841, -0.074475,
		-0.163313, 0.815074, -0.555862,
		31.831270, 38.060074, 47.835670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.303040, 37.940346, 48.569660>,  <31.945589, 37.489521, 48.224773>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.303040, 37.940346, 48.569660> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.154861, 38.226315, 48.332455>,  <32.065952, 38.397896, 48.190132>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.154861, 38.226315, 48.332455>,  <32.303040, 37.940346, 48.569660>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.154861, 38.226315, 48.332455> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116195, 0.597749, 0.793218,
		0.921557, 0.362750, -0.138365,
		-0.370447, 0.714918, -0.593010,
		32.043728, 38.440788, 48.154552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.621826, 38.530724, 48.694626>,  <32.303040, 37.940346, 48.569660>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.621826, 38.530724, 48.694626> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.284729, 38.658154, 48.521053>,  <32.082470, 38.734612, 48.416908>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.284729, 38.658154, 48.521053>,  <32.621826, 38.530724, 48.694626>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.284729, 38.658154, 48.521053> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028305, 0.778747, 0.626700,
		0.537576, 0.540427, -0.647264,
		-0.842740, 0.318577, -0.433932,
		32.031906, 38.753727, 48.390873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.752285, 39.100056, 48.278114>,  <32.621826, 38.530724, 48.694626>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.752285, 39.100056, 48.278114> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.371025, 39.134571, 48.394081>,  <32.142269, 39.155281, 48.463661>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.371025, 39.134571, 48.394081>,  <32.752285, 39.100056, 48.278114>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.371025, 39.134571, 48.394081> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269823, 0.675751, 0.685971,
		-0.136720, 0.732062, -0.667378,
		-0.953154, 0.086288, 0.289915,
		32.085079, 39.160458, 48.481056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.587555, 39.784595, 48.433407>,  <32.752285, 39.100056, 48.278114>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.587555, 39.784595, 48.433407> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.277691, 39.607224, 48.613754>,  <32.091774, 39.500801, 48.721962>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.277691, 39.607224, 48.613754>,  <32.587555, 39.784595, 48.433407>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.277691, 39.607224, 48.613754> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032329, 0.739803, 0.672047,
		-0.631556, 0.506029, -0.587428,
		-0.774656, -0.443426, 0.450867,
		32.045296, 39.474197, 48.749016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.027142, 40.307968, 48.453545>,  <32.587555, 39.784595, 48.433407>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.027142, 40.307968, 48.453545> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.987585, 40.048241, 48.755169>,  <31.963852, 39.892406, 48.936146>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.987585, 40.048241, 48.755169>,  <32.027142, 40.307968, 48.453545>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.987585, 40.048241, 48.755169> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029337, 0.755546, 0.654438,
		-0.994666, 0.086838, -0.055666,
		-0.098888, -0.649315, 0.754063,
		31.957918, 39.853447, 48.981388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.388941, 40.495262, 48.810345>,  <32.027142, 40.307968, 48.453545>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.388941, 40.495262, 48.810345> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.635159, 40.291363, 49.050766>,  <31.782890, 40.169022, 49.195019>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.635159, 40.291363, 49.050766>,  <31.388941, 40.495262, 48.810345>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.635159, 40.291363, 49.050766> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137946, 0.681193, 0.718991,
		-0.775935, -0.525484, 0.348987,
		0.615546, -0.509748, 0.601050,
		31.819822, 40.138439, 49.231079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.753189, 40.779327, 48.291332>,  <31.388941, 40.495262, 48.810345>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.753189, 40.779327, 48.291332> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.804932, 41.173931, 48.251213>,  <30.835978, 41.410694, 48.227142>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.804932, 41.173931, 48.251213>,  <30.753189, 40.779327, 48.291332>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.804932, 41.173931, 48.251213> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242188, -0.066656, -0.967937,
		-0.961568, 0.149499, 0.230299,
		0.129355, 0.986513, -0.100301,
		30.843739, 41.469887, 48.221123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.276810, 41.014206, 47.891418>,  <30.753189, 40.779327, 48.291332>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.276810, 41.014206, 47.891418> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.523798, 41.328175, 47.870926>,  <30.671991, 41.516556, 47.858631>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.523798, 41.328175, 47.870926>,  <30.276810, 41.014206, 47.891418>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.523798, 41.328175, 47.870926> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194303, 0.089090, -0.976887,
		-0.762219, 0.613152, 0.207524,
		0.617469, 0.784925, -0.051231,
		30.709040, 41.563652, 47.855556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.980841, 41.463459, 47.447853>,  <30.276810, 41.014206, 47.891418>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.980841, 41.463459, 47.447853> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.364206, 41.577496, 47.452950>,  <30.594227, 41.645916, 47.456009>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.364206, 41.577496, 47.452950>,  <29.980841, 41.463459, 47.447853>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.364206, 41.577496, 47.452950> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027067, 0.135271, -0.990439,
		-0.284091, 0.948907, 0.137362,
		0.958415, 0.285093, 0.012745,
		30.651731, 41.663025, 47.456772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.059128, 42.084026, 47.014366>,  <29.980841, 41.463459, 47.447853>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.059128, 42.084026, 47.014366> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.427435, 41.929108, 47.033077>,  <30.648420, 41.836159, 47.044304>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.427435, 41.929108, 47.033077>,  <30.059128, 42.084026, 47.014366>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.427435, 41.929108, 47.033077> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090511, 0.095464, -0.991309,
		0.379463, 0.917000, 0.122955,
		0.920769, -0.387294, 0.046774,
		30.703665, 41.812920, 47.047108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.432018, 42.490017, 46.517773>,  <30.059128, 42.084026, 47.014366>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.432018, 42.490017, 46.517773> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.645754, 42.154621, 46.560505>,  <30.773994, 41.953384, 46.586143>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.645754, 42.154621, 46.560505>,  <30.432018, 42.490017, 46.517773>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.645754, 42.154621, 46.560505> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068146, -0.083246, -0.994196,
		0.842520, 0.538517, 0.012659,
		0.534337, -0.838493, 0.106834,
		30.806055, 41.903072, 46.592556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.050455, 42.500217, 46.091717>,  <30.432018, 42.490017, 46.517773>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.050455, 42.500217, 46.091717> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.988567, 42.108818, 46.146275>,  <30.951435, 41.873978, 46.179008>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.988567, 42.108818, 46.146275>,  <31.050455, 42.500217, 46.091717>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.988567, 42.108818, 46.146275> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009970, -0.139592, -0.990159,
		0.987908, -0.151835, 0.031353,
		-0.154718, -0.978499, 0.136390,
		30.942152, 41.815269, 46.187191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.650629, 42.134064, 45.703888>,  <31.050455, 42.500217, 46.091717>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.650629, 42.134064, 45.703888> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.367947, 41.859798, 45.773666>,  <31.198338, 41.695240, 45.815533>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.367947, 41.859798, 45.773666>,  <31.650629, 42.134064, 45.703888>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.367947, 41.859798, 45.773666> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169938, -0.403848, -0.898904,
		0.686796, -0.605615, 0.401922,
		-0.706705, -0.685665, 0.174445,
		31.155935, 41.654099, 45.826000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.347572, 41.868038, 45.569607>,  <31.650629, 42.134064, 45.703888>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.347572, 41.868038, 45.569607> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.458023, 42.229717, 45.439266>,  <32.524292, 42.446724, 45.361061>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.458023, 42.229717, 45.439266>,  <32.347572, 41.868038, 45.569607>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.458023, 42.229717, 45.439266> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190565, 0.280801, 0.940657,
		0.942041, -0.321833, -0.094773,
		0.276123, 0.904198, -0.325856,
		32.540859, 42.500977, 45.341511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.914967, 42.075039, 45.941906>,  <32.347572, 41.868038, 45.569607>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.914967, 42.075039, 45.941906> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.776836, 42.413921, 45.780415>,  <32.693958, 42.617252, 45.683521>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.776836, 42.413921, 45.780415>,  <32.914967, 42.075039, 45.941906>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.776836, 42.413921, 45.780415> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251163, 0.497927, 0.830052,
		0.904251, 0.185234, -0.384731,
		-0.345322, 0.847206, -0.403727,
		32.673241, 42.668083, 45.659298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.443779, 42.553959, 45.919811>,  <32.914967, 42.075039, 45.941906>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.443779, 42.553959, 45.919811> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.102577, 42.760006, 45.953358>,  <32.897858, 42.883636, 45.973484>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.102577, 42.760006, 45.953358>,  <33.443779, 42.553959, 45.919811>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.102577, 42.760006, 45.953358> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297164, 0.347276, 0.889434,
		0.429040, 0.783614, -0.449303,
		-0.853005, 0.515119, 0.083867,
		32.846676, 42.914543, 45.978519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.687061, 43.099007, 46.382832>,  <33.443779, 42.553959, 45.919811>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.687061, 43.099007, 46.382832> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.293575, 43.168804, 46.365627>,  <33.057484, 43.210682, 46.355305>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.293575, 43.168804, 46.365627>,  <33.687061, 43.099007, 46.382832>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.293575, 43.168804, 46.365627> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063674, 0.562186, 0.824556,
		0.168060, 0.808392, -0.564144,
		-0.983718, 0.174496, -0.043007,
		32.998459, 43.221153, 46.352726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.625298, 43.790581, 46.551178>,  <33.687061, 43.099007, 46.382832>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.625298, 43.790581, 46.551178> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.265594, 43.633839, 46.628925>,  <33.049770, 43.539791, 46.675575>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.265594, 43.633839, 46.628925>,  <33.625298, 43.790581, 46.551178>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.265594, 43.633839, 46.628925> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033353, 0.504494, 0.862771,
		-0.436142, 0.769373, -0.466740,
		-0.899260, -0.391857, 0.194370,
		32.995815, 43.516281, 46.687237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.185478, 44.315975, 46.660778>,  <33.625298, 43.790581, 46.551178>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.185478, 44.315975, 46.660778> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.972687, 44.028965, 46.840626>,  <32.845013, 43.856758, 46.948536>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.972687, 44.028965, 46.840626>,  <33.185478, 44.315975, 46.660778>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.972687, 44.028965, 46.840626> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228670, 0.632995, 0.739613,
		-0.815300, 0.290641, -0.500814,
		-0.531974, -0.717527, 0.449620,
		32.813095, 43.813705, 46.975513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.452274, 44.458771, 46.839939>,  <33.185478, 44.315975, 46.660778>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.452274, 44.458771, 46.839939> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.548874, 44.174877, 47.104652>,  <32.606834, 44.004543, 47.263481>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.548874, 44.174877, 47.104652>,  <32.452274, 44.458771, 46.839939>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.548874, 44.174877, 47.104652> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105929, 0.658616, 0.744986,
		-0.964602, -0.250016, 0.083874,
		0.241499, -0.709730, 0.661787,
		32.621323, 43.961960, 47.303188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.321850, 44.734524, 47.490360>,  <32.452274, 44.458771, 46.839939>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.321850, 44.734524, 47.490360> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.537739, 44.438763, 47.651348>,  <32.667271, 44.261307, 47.747940>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.537739, 44.438763, 47.651348>,  <32.321850, 44.734524, 47.490360>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.537739, 44.438763, 47.651348> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101288, 0.531643, 0.840890,
		-0.835728, -0.413082, 0.361832,
		0.539722, -0.739405, 0.402469,
		32.699654, 44.216942, 47.772087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.306587, 44.906631, 48.124535>,  <32.321850, 44.734524, 47.490360>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.306587, 44.906631, 48.124535> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.624046, 44.663284, 48.123714>,  <32.814522, 44.517277, 48.123222>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.624046, 44.663284, 48.123714>,  <32.306587, 44.906631, 48.124535>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.624046, 44.663284, 48.123714> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368783, 0.478410, 0.796946,
		-0.483860, -0.633251, 0.604047,
		0.793649, -0.608373, -0.002049,
		32.862141, 44.480774, 48.123100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<34.909752, 37.020840, 33.766243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.274277, 37.066204, 33.924561>,  <35.492992, 37.093422, 34.019550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.274277, 37.066204, 33.924561>,  <34.909752, 37.020840, 33.766243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.274277, 37.066204, 33.924561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352058, 0.713075, 0.606283,
		-0.213470, -0.691853, 0.689760,
		0.911310, 0.113412, 0.395793,
		35.547668, 37.100227, 34.043297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.869602, 36.966694, 34.436771>,  <34.909752, 37.020840, 33.766243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.869602, 36.966694, 34.436771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.212498, 37.170750, 34.408787>,  <35.418236, 37.293182, 34.391994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.212498, 37.170750, 34.408787>,  <34.869602, 36.966694, 34.436771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.212498, 37.170750, 34.408787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355505, 0.684661, 0.636283,
		0.372492, -0.520577, 0.768277,
		0.857243, 0.510136, -0.069963,
		35.469669, 37.323792, 34.387798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.070732, 37.057941, 35.112225>,  <34.869602, 36.966694, 34.436771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.070732, 37.057941, 35.112225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.248657, 37.324806, 34.873219>,  <35.355412, 37.484924, 34.729813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.248657, 37.324806, 34.873219>,  <35.070732, 37.057941, 35.112225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.248657, 37.324806, 34.873219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356215, 0.743904, 0.565436,
		0.821736, -0.038670, 0.568555,
		0.444816, 0.667166, -0.597518,
		35.382103, 37.524956, 34.693962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.594498, 37.379272, 35.452568>,  <35.070732, 37.057941, 35.112225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.594498, 37.379272, 35.452568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.461357, 37.621609, 35.163521>,  <35.381474, 37.767010, 34.990093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.461357, 37.621609, 35.163521>,  <35.594498, 37.379272, 35.452568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.461357, 37.621609, 35.163521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244622, 0.684602, 0.686644,
		0.910698, 0.405317, -0.079670,
		-0.332851, 0.605836, -0.722615,
		35.361504, 37.803360, 34.946735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.753052, 37.936134, 35.798943>,  <35.594498, 37.379272, 35.452568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.753052, 37.936134, 35.798943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.517742, 38.024643, 35.487820>,  <35.376556, 38.077747, 35.301147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.517742, 38.024643, 35.487820>,  <35.753052, 37.936134, 35.798943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.517742, 38.024643, 35.487820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255161, 0.861911, 0.438180,
		0.767353, 0.456233, -0.450577,
		-0.588270, 0.221269, -0.777804,
		35.341263, 38.091022, 35.254478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.892429, 38.597889, 35.669315>,  <35.753052, 37.936134, 35.798943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.892429, 38.597889, 35.669315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.525776, 38.507824, 35.537201>,  <35.305786, 38.453785, 35.457932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.525776, 38.507824, 35.537201>,  <35.892429, 38.597889, 35.669315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.525776, 38.507824, 35.537201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371134, 0.786314, 0.493933,
		0.148493, 0.575335, -0.804325,
		-0.916629, -0.225167, -0.330289,
		35.250786, 38.440273, 35.438114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.607510, 39.235176, 35.542305>,  <35.892429, 38.597889, 35.669315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.607510, 39.235176, 35.542305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.296539, 38.984619, 35.565079>,  <35.109959, 38.834286, 35.578743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.296539, 38.984619, 35.565079>,  <35.607510, 39.235176, 35.542305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.296539, 38.984619, 35.565079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497804, 0.668101, 0.553021,
		-0.384447, 0.401590, -0.831219,
		-0.777426, -0.626392, 0.056936,
		35.063313, 38.796703, 35.582161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.957977, 39.741978, 35.617294>,  <35.607510, 39.235176, 35.542305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.957977, 39.741978, 35.617294> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.817833, 39.382977, 35.724438>,  <34.733746, 39.167576, 35.788723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.817833, 39.382977, 35.724438>,  <34.957977, 39.741978, 35.617294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.817833, 39.382977, 35.724438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443923, 0.410942, 0.796278,
		-0.824732, 0.160074, -0.542396,
		-0.350356, -0.897498, 0.267856,
		34.712727, 39.113728, 35.804794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.218536, 39.768806, 35.638775>,  <34.957977, 39.741978, 35.617294>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.218536, 39.768806, 35.638775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.375736, 39.486958, 35.875099>,  <34.470055, 39.317848, 36.016895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.375736, 39.486958, 35.875099>,  <34.218536, 39.768806, 35.638775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.375736, 39.486958, 35.875099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370704, 0.466579, 0.803046,
		-0.841506, -0.534610, -0.077844,
		0.392996, -0.704625, 0.590811,
		34.493633, 39.275570, 36.052341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.680729, 39.650108, 36.088608>,  <34.218536, 39.768806, 35.638775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.680729, 39.650108, 36.088608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.002571, 39.490849, 36.264832>,  <34.195675, 39.395294, 36.370564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.002571, 39.490849, 36.264832>,  <33.680729, 39.650108, 36.088608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.002571, 39.490849, 36.264832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335696, 0.306999, 0.890539,
		-0.489818, -0.864424, 0.113355,
		0.804603, -0.398149, 0.440557,
		34.243954, 39.371403, 36.396999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.348763, 39.282288, 36.741341>,  <33.680729, 39.650108, 36.088608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.348763, 39.282288, 36.741341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.745815, 39.298374, 36.787064>,  <33.984047, 39.308025, 36.814499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.745815, 39.298374, 36.787064>,  <33.348763, 39.282288, 36.741341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.745815, 39.298374, 36.787064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121173, 0.336797, 0.933748,
		-0.000945, -0.940718, 0.339188,
		0.992631, 0.040218, 0.114308,
		34.043606, 39.310440, 36.821358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.534939, 38.885353, 37.376755>,  <33.348763, 39.282288, 36.741341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.534939, 38.885353, 37.376755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.808685, 39.166027, 37.297485>,  <33.972935, 39.334431, 37.249924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.808685, 39.166027, 37.297485>,  <33.534939, 38.885353, 37.376755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.808685, 39.166027, 37.297485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203734, 0.444991, 0.872052,
		0.700094, -0.556432, 0.447496,
		0.684369, 0.701689, -0.198172,
		34.013996, 39.376534, 37.238033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.434654, 38.408371, 38.027092>,  <33.534939, 38.885353, 37.376755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.434654, 38.408371, 38.027092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.035702, 38.395615, 38.001148>,  <32.796329, 38.387962, 37.985584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.035702, 38.395615, 38.001148>,  <33.434654, 38.408371, 38.027092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.035702, 38.395615, 38.001148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072270, -0.433339, -0.898328,
		0.000543, -0.900667, 0.434511,
		-0.997385, -0.031890, -0.064856,
		32.736485, 38.386047, 37.981689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.266655, 37.636284, 37.751465>,  <33.434654, 38.408371, 38.027092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.266655, 37.636284, 37.751465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.962353, 37.885201, 37.677700>,  <32.779770, 38.034550, 37.633442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.962353, 37.885201, 37.677700>,  <33.266655, 37.636284, 37.751465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.962353, 37.885201, 37.677700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184977, -0.480232, -0.857415,
		-0.622122, -0.618170, 0.480448,
		-0.760754, 0.622289, -0.184416,
		32.734127, 38.071888, 37.622375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.777592, 37.231937, 37.362324>,  <33.266655, 37.636284, 37.751465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.777592, 37.231937, 37.362324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.643467, 37.598248, 37.273846>,  <32.562992, 37.818031, 37.220760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.643467, 37.598248, 37.273846>,  <32.777592, 37.231937, 37.362324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.643467, 37.598248, 37.273846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312319, -0.329563, -0.890980,
		-0.888831, -0.229678, 0.396520,
		-0.335316, 0.915771, -0.221193,
		32.542873, 37.872978, 37.207489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.025085, 37.112015, 37.155434>,  <32.777592, 37.231937, 37.362324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.025085, 37.112015, 37.155434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.106277, 37.471451, 36.999825>,  <32.154991, 37.687111, 36.906460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.106277, 37.471451, 36.999825>,  <32.025085, 37.112015, 37.155434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.106277, 37.471451, 36.999825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443861, -0.269698, -0.854547,
		-0.872804, 0.346131, 0.344104,
		0.202981, 0.898586, -0.389027,
		32.167171, 37.741028, 36.883118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.436878, 37.375397, 36.840664>,  <32.025085, 37.112015, 37.155434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.436878, 37.375397, 36.840664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.720161, 37.603558, 36.674252>,  <31.890131, 37.740456, 36.574402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.720161, 37.603558, 36.674252>,  <31.436878, 37.375397, 36.840664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.720161, 37.603558, 36.674252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392880, -0.171198, -0.903514,
		-0.586591, 0.803325, 0.102857,
		0.708206, 0.570404, -0.416033,
		31.932623, 37.774677, 36.549442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.102850, 37.751175, 36.263363>,  <31.436878, 37.375397, 36.840664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.102850, 37.751175, 36.263363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.493399, 37.772865, 36.179691>,  <31.727728, 37.785881, 36.129490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.493399, 37.772865, 36.179691>,  <31.102850, 37.751175, 36.263363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.493399, 37.772865, 36.179691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207327, -0.037842, -0.977539,
		-0.060927, 0.997811, -0.025704,
		0.976372, 0.054229, -0.209179,
		31.786310, 37.789135, 36.116936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.237625, 38.273182, 35.732288>,  <31.102850, 37.751175, 36.263363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.237625, 38.273182, 35.732288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.522390, 37.992283, 35.730141>,  <31.693249, 37.823742, 35.728851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.522390, 37.992283, 35.730141>,  <31.237625, 38.273182, 35.732288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.522390, 37.992283, 35.730141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281083, -0.277922, -0.918560,
		0.643565, 0.655443, -0.395246,
		0.711911, -0.702249, -0.005373,
		31.735964, 37.781609, 35.728527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.337395, 38.238880, 35.086468>,  <31.237625, 38.273182, 35.732288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.337395, 38.238880, 35.086468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.536444, 37.917107, 35.216240>,  <31.655872, 37.724041, 35.294106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.536444, 37.917107, 35.216240>,  <31.337395, 38.238880, 35.086468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.536444, 37.917107, 35.216240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096230, -0.422924, -0.901041,
		0.862039, 0.417157, -0.287868,
		0.497622, -0.804434, 0.324434,
		31.685730, 37.675777, 35.313572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.966875, 38.136326, 34.587975>,  <31.337395, 38.238880, 35.086468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.966875, 38.136326, 34.587975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.852629, 37.798084, 34.768364>,  <31.784081, 37.595139, 34.876598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.852629, 37.798084, 34.768364>,  <31.966875, 38.136326, 34.587975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.852629, 37.798084, 34.768364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103092, -0.440737, -0.891696,
		0.952783, -0.301174, 0.038706,
		-0.285615, -0.845603, 0.450976,
		31.766945, 37.544403, 34.903656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.246056, 37.638161, 34.168865>,  <31.966875, 38.136326, 34.587975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.246056, 37.638161, 34.168865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.020168, 37.403091, 34.400635>,  <31.884636, 37.262051, 34.539696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.020168, 37.403091, 34.400635>,  <32.246056, 37.638161, 34.168865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.020168, 37.403091, 34.400635> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129577, -0.630247, -0.765506,
		0.815048, -0.507375, 0.279763,
		-0.564718, -0.587673, 0.579426,
		31.850754, 37.226788, 34.574463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.464565, 36.808582, 34.058025>,  <32.246056, 37.638161, 34.168865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.464565, 36.808582, 34.058025> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.089317, 36.858585, 34.187206>,  <31.864168, 36.888588, 34.264713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.089317, 36.858585, 34.187206>,  <32.464565, 36.808582, 34.058025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.089317, 36.858585, 34.187206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322060, -0.657705, -0.680957,
		0.127285, -0.742832, 0.657267,
		-0.938124, 0.125004, 0.322952,
		31.807880, 36.896088, 34.284092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.142410, 36.194527, 34.275471>,  <32.464565, 36.808582, 34.058025>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.142410, 36.194527, 34.275471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.823204, 36.418800, 34.187096>,  <31.631681, 36.553364, 34.134071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.823204, 36.418800, 34.187096>,  <32.142410, 36.194527, 34.275471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.823204, 36.418800, 34.187096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380358, -0.752962, -0.537007,
		-0.467446, -0.344504, 0.814132,
		-0.798011, 0.560683, -0.220935,
		31.583801, 36.587006, 34.120815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.698275, 35.643734, 33.988117>,  <32.142410, 36.194527, 34.275471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.698275, 35.643734, 33.988117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.493271, 35.978710, 33.912201>,  <31.370268, 36.179695, 33.866650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.493271, 35.978710, 33.912201>,  <31.698275, 35.643734, 33.988117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.493271, 35.978710, 33.912201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454659, -0.452156, -0.767359,
		-0.728437, -0.306987, 0.612486,
		-0.512509, 0.837444, -0.189793,
		31.339518, 36.229942, 33.855263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.005245, 35.428673, 34.075256>,  <31.698275, 35.643734, 33.988117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.005245, 35.428673, 34.075256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.991390, 35.760254, 33.851959>,  <30.983076, 35.959202, 33.717983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.991390, 35.760254, 33.851959>,  <31.005245, 35.428673, 34.075256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.991390, 35.760254, 33.851959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.627352, -0.452850, -0.633528,
		-0.777965, 0.328268, 0.535733,
		-0.034640, 0.828956, -0.558241,
		30.980999, 36.008942, 33.684486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.501465, 35.089058, 34.449585>,  <31.005245, 35.428673, 34.075256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.501465, 35.089058, 34.449585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.608210, 34.724922, 34.576122>,  <31.672256, 34.506443, 34.652046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.608210, 34.724922, 34.576122>,  <31.501465, 35.089058, 34.449585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.608210, 34.724922, 34.576122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091977, 0.350805, 0.931921,
		-0.959336, -0.219596, 0.177346,
		0.266861, -0.910337, 0.316342,
		31.688269, 34.451820, 34.671024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.292274, 35.034657, 35.051212>,  <31.501465, 35.089058, 34.449585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.292274, 35.034657, 35.051212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.516058, 34.703178, 35.044674>,  <31.650328, 34.504292, 35.040752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.516058, 34.703178, 35.044674>,  <31.292274, 35.034657, 35.051212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.516058, 34.703178, 35.044674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037559, 0.005645, 0.999278,
		-0.828007, -0.559669, 0.034284,
		0.559458, -0.828697, -0.016346,
		31.683895, 34.454571, 35.039768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.008162, 34.446800, 35.337151>,  <31.292274, 35.034657, 35.051212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.008162, 34.446800, 35.337151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.406918, 34.452892, 35.368073>,  <31.646172, 34.456547, 35.386623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.406918, 34.452892, 35.368073>,  <31.008162, 34.446800, 35.337151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.406918, 34.452892, 35.368073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076736, -0.034836, 0.996443,
		0.017872, -0.999277, -0.033559,
		0.996891, 0.015233, 0.077303,
		31.705984, 34.457462, 35.391262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.218081, 34.030640, 35.879601>,  <31.008162, 34.446800, 35.337151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.218081, 34.030640, 35.879601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.523172, 34.283318, 35.824173>,  <31.706228, 34.434925, 35.790916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.523172, 34.283318, 35.824173>,  <31.218081, 34.030640, 35.879601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.523172, 34.283318, 35.824173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141846, 0.045639, 0.988836,
		0.630968, -0.773871, -0.054794,
		0.762731, 0.631696, -0.138567,
		31.751991, 34.472828, 35.782604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.717060, 33.720833, 36.310928>,  <31.218081, 34.030640, 35.879601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.717060, 33.720833, 36.310928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.795982, 34.107231, 36.244083>,  <31.843336, 34.339069, 36.203976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.795982, 34.107231, 36.244083>,  <31.717060, 33.720833, 36.310928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.795982, 34.107231, 36.244083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061666, 0.157901, 0.985528,
		0.978401, -0.204753, -0.028415,
		0.197303, 0.965993, -0.167117,
		31.855173, 34.397030, 36.193947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.372890, 33.966450, 36.704399>,  <31.717060, 33.720833, 36.310928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.372890, 33.966450, 36.704399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.132217, 34.277042, 36.629509>,  <31.987814, 34.463398, 36.584576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.132217, 34.277042, 36.629509>,  <32.372890, 33.966450, 36.704399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.132217, 34.277042, 36.629509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015376, 0.223102, 0.974674,
		0.798587, 0.589323, -0.122298,
		-0.601683, 0.776481, -0.187228,
		31.951712, 34.509987, 36.573341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.697819, 34.599579, 36.958733>,  <32.372890, 33.966450, 36.704399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.697819, 34.599579, 36.958733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.305943, 34.679745, 36.956142>,  <32.070816, 34.727844, 36.954590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.305943, 34.679745, 36.956142>,  <32.697819, 34.599579, 36.958733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.305943, 34.679745, 36.956142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056681, 0.307745, 0.949779,
		0.192339, 0.930123, -0.312854,
		-0.979690, 0.200412, -0.006471,
		32.012035, 34.739868, 36.954201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.632805, 35.062260, 37.435043>,  <32.697819, 34.599579, 36.958733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.632805, 35.062260, 37.435043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.238728, 35.016846, 37.383667>,  <32.002281, 34.989597, 37.352840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.238728, 35.016846, 37.383667>,  <32.632805, 35.062260, 37.435043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.238728, 35.016846, 37.383667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150276, 0.211510, 0.965754,
		-0.082482, 0.970759, -0.225441,
		-0.985197, -0.113536, -0.128436,
		31.943169, 34.982784, 37.345135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.313637, 35.580055, 37.650421>,  <32.632805, 35.062260, 37.435043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.313637, 35.580055, 37.650421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.023083, 35.305603, 37.666409>,  <31.848751, 35.140934, 37.676003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.023083, 35.305603, 37.666409>,  <32.313637, 35.580055, 37.650421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.023083, 35.305603, 37.666409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118731, 0.182554, 0.976000,
		-0.676956, 0.704205, -0.214069,
		-0.726384, -0.686126, 0.039970,
		31.805168, 35.099766, 37.678398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.757515, 35.927097, 38.016666>,  <32.313637, 35.580055, 37.650421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.757515, 35.927097, 38.016666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.620270, 35.551407, 38.012314>,  <31.537922, 35.325993, 38.009705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.620270, 35.551407, 38.012314>,  <31.757515, 35.927097, 38.016666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.620270, 35.551407, 38.012314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394035, 0.133415, 0.909361,
		-0.852648, 0.316302, -0.415866,
		-0.343115, -0.939231, -0.010878,
		31.517336, 35.269638, 38.009048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.058502, 35.821629, 38.275543>,  <31.757515, 35.927097, 38.016666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.058502, 35.821629, 38.275543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.214657, 35.460159, 38.345947>,  <31.308350, 35.243279, 38.388191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.214657, 35.460159, 38.345947>,  <31.058502, 35.821629, 38.275543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.214657, 35.460159, 38.345947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321714, 0.045226, 0.945756,
		-0.862610, -0.425837, -0.273067,
		0.390389, -0.903669, 0.176010,
		31.331774, 35.189060, 38.398750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.586245, 35.593983, 38.632416>,  <31.058502, 35.821629, 38.275543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.586245, 35.593983, 38.632416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.914373, 35.385262, 38.726051>,  <31.111250, 35.260029, 38.782234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.914373, 35.385262, 38.726051>,  <30.586245, 35.593983, 38.632416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.914373, 35.385262, 38.726051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248673, 0.043164, 0.967625,
		-0.515012, -0.851975, -0.094349,
		0.820320, -0.521801, 0.234093,
		31.160469, 35.228722, 38.796280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.371952, 35.194176, 39.177395>,  <30.586245, 35.593983, 38.632416>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.371952, 35.194176, 39.177395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.771252, 35.185623, 39.199471>,  <31.010832, 35.180492, 39.212715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.771252, 35.185623, 39.199471>,  <30.371952, 35.194176, 39.177395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.771252, 35.185623, 39.199471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051774, 0.136462, 0.989291,
		-0.028682, -0.990414, 0.135116,
		0.998247, -0.021380, 0.055192,
		31.070726, 35.179211, 39.216026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.560205, 34.803093, 39.696712>,  <30.371952, 35.194176, 39.177395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.560205, 34.803093, 39.696712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.908030, 34.995667, 39.652740>,  <31.116724, 35.111210, 39.626358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.908030, 34.995667, 39.652740>,  <30.560205, 34.803093, 39.696712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.908030, 34.995667, 39.652740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014098, 0.246721, 0.968984,
		0.493621, -0.841042, 0.221327,
		0.869562, 0.481431, -0.109930,
		31.168898, 35.140095, 39.619762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.930294, 34.767300, 40.285995>,  <30.560205, 34.803093, 39.696712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.930294, 34.767300, 40.285995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.170124, 35.052174, 40.139957>,  <31.314022, 35.223099, 40.052334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.170124, 35.052174, 40.139957>,  <30.930294, 34.767300, 40.285995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.170124, 35.052174, 40.139957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051248, 0.421086, 0.905572,
		0.798675, -0.561670, 0.215975,
		0.599577, 0.712189, -0.365096,
		31.349997, 35.265831, 40.030430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.514891, 34.724010, 40.734562>,  <30.930294, 34.767300, 40.285995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.514891, 34.724010, 40.734562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.550386, 35.092594, 40.583279>,  <31.571684, 35.313744, 40.492508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.550386, 35.092594, 40.583279>,  <31.514891, 34.724010, 40.734562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.550386, 35.092594, 40.583279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342029, 0.328426, 0.880428,
		0.935490, -0.207485, -0.286021,
		0.088739, 0.921459, -0.378205,
		31.577007, 35.369030, 40.469818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.160595, 34.997906, 40.977551>,  <31.514891, 34.724010, 40.734562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.160595, 34.997906, 40.977551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.947109, 35.317329, 40.866234>,  <31.819017, 35.508984, 40.799442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.947109, 35.317329, 40.866234>,  <32.160595, 34.997906, 40.977551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.947109, 35.317329, 40.866234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255436, 0.465946, 0.847140,
		0.806163, 0.381046, -0.452664,
		-0.533716, 0.798560, -0.278295,
		31.786995, 35.556896, 40.782745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.624752, 35.629166, 40.937138>,  <32.160595, 34.997906, 40.977551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.624752, 35.629166, 40.937138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.238922, 35.704231, 41.011303>,  <32.007423, 35.749271, 41.055801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.238922, 35.704231, 41.011303>,  <32.624752, 35.629166, 40.937138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.238922, 35.704231, 41.011303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243326, 0.361384, 0.900108,
		0.101911, 0.913337, -0.394245,
		-0.964576, 0.187661, 0.185409,
		31.949549, 35.760529, 41.066925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.588192, 36.351894, 41.356865>,  <32.624752, 35.629166, 40.937138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.588192, 36.351894, 41.356865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.223682, 36.191730, 41.395325>,  <32.004974, 36.095631, 41.418400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.223682, 36.191730, 41.395325>,  <32.588192, 36.351894, 41.356865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.223682, 36.191730, 41.395325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064465, 0.369325, 0.927062,
		-0.406716, 0.838612, -0.362370,
		-0.911277, -0.400411, 0.096149,
		31.950298, 36.071606, 41.424168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.167259, 36.950241, 41.537655>,  <32.588192, 36.351894, 41.356865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.167259, 36.950241, 41.537655> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.977222, 36.613144, 41.638905>,  <31.863201, 36.410885, 41.699654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.977222, 36.613144, 41.638905>,  <32.167259, 36.950241, 41.537655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.977222, 36.613144, 41.638905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108047, 0.341354, 0.933704,
		-0.873279, 0.416244, -0.253230,
		-0.475090, -0.842744, 0.253124,
		31.834696, 36.360321, 41.714840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.575405, 37.099052, 42.002438>,  <32.167259, 36.950241, 41.537655>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.575405, 37.099052, 42.002438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.690397, 36.721664, 42.068436>,  <31.759392, 36.495232, 42.108036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.690397, 36.721664, 42.068436>,  <31.575405, 37.099052, 42.002438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.690397, 36.721664, 42.068436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085460, 0.146317, 0.985539,
		-0.953967, -0.297423, -0.038566,
		0.287479, -0.943468, 0.164999,
		31.776642, 36.438625, 42.117935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.106937, 36.831810, 42.431824>,  <31.575405, 37.099052, 42.002438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.106937, 36.831810, 42.431824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.442839, 36.620041, 42.480045>,  <31.644379, 36.492981, 42.508980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.442839, 36.620041, 42.480045>,  <31.106937, 36.831810, 42.431824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.442839, 36.620041, 42.480045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050448, 0.144993, 0.988146,
		-0.540623, -0.835878, 0.095050,
		0.839751, -0.529419, 0.120555,
		31.694763, 36.461216, 42.516212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.935360, 36.581196, 43.026997>,  <31.106937, 36.831810, 42.431824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.935360, 36.581196, 43.026997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.328426, 36.516037, 42.991596>,  <31.564266, 36.476944, 42.970356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.328426, 36.516037, 42.991596>,  <30.935360, 36.581196, 43.026997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.328426, 36.516037, 42.991596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096027, 0.038896, 0.994618,
		-0.158575, -0.985877, 0.053864,
		0.982666, -0.162894, -0.088502,
		31.623226, 36.467171, 42.965046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.031992, 36.210861, 43.540497>,  <30.935360, 36.581196, 43.026997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.031992, 36.210861, 43.540497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.373135, 36.396996, 43.445759>,  <31.577820, 36.508678, 43.388916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.373135, 36.396996, 43.445759>,  <31.031992, 36.210861, 43.540497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.373135, 36.396996, 43.445759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246537, 0.040974, 0.968267,
		0.460278, -0.884183, -0.079778,
		0.852856, 0.465340, -0.236844,
		31.628992, 36.536598, 43.374706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.666889, 35.946644, 43.886242>,  <31.031992, 36.210861, 43.540497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.666889, 35.946644, 43.886242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.794504, 36.312420, 43.786640>,  <31.871073, 36.531887, 43.726879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.794504, 36.312420, 43.786640>,  <31.666889, 35.946644, 43.886242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.794504, 36.312420, 43.786640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258217, 0.168929, 0.951203,
		0.911887, -0.367768, -0.182231,
		0.319038, 0.914445, -0.249008,
		31.890215, 36.586754, 43.711937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.288849, 35.951534, 44.127190>,  <31.666889, 35.946644, 43.886242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.288849, 35.951534, 44.127190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.224277, 36.342117, 44.069954>,  <32.185535, 36.576466, 44.035614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.224277, 36.342117, 44.069954>,  <32.288849, 35.951534, 44.127190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.224277, 36.342117, 44.069954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231737, 0.178440, 0.956272,
		0.959291, 0.121212, -0.255087,
		-0.161429, 0.976456, -0.143087,
		32.175850, 36.635056, 44.027027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.862404, 36.348461, 44.461632>,  <32.288849, 35.951534, 44.127190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.862404, 36.348461, 44.461632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.570370, 36.621136, 44.442558>,  <32.395149, 36.784740, 44.431114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.570370, 36.621136, 44.442558>,  <32.862404, 36.348461, 44.461632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.570370, 36.621136, 44.442558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155562, 0.233745, 0.959773,
		0.665412, 0.693299, -0.276699,
		-0.730087, 0.681688, -0.047686,
		32.351345, 36.825642, 44.428253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.221321, 36.997154, 44.686367>,  <32.862404, 36.348461, 44.461632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.221321, 36.997154, 44.686367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.823822, 37.012405, 44.728355>,  <32.585323, 37.021557, 44.753548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.823822, 37.012405, 44.728355>,  <33.221321, 36.997154, 44.686367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.823822, 37.012405, 44.728355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111203, 0.250899, 0.961605,
		0.010329, 0.967262, -0.253570,
		-0.993744, 0.038130, 0.104971,
		32.525700, 37.023846, 44.759846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.743187, 37.593189, 44.522720>,  <33.221321, 36.997154, 44.686367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.743187, 37.593189, 44.522720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.141525, 37.574532, 44.554016>,  <34.380527, 37.563335, 44.572792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.141525, 37.574532, 44.554016>,  <33.743187, 37.593189, 44.522720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.141525, 37.574532, 44.554016> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050562, -0.431349, -0.900767,
		0.075767, 0.900978, -0.427198,
		0.995843, -0.046648, 0.078237,
		34.440277, 37.560535, 44.577488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.075615, 37.759029, 43.797604>,  <33.743187, 37.593189, 44.522720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.075615, 37.759029, 43.797604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.369400, 37.575169, 43.997314>,  <34.545673, 37.464851, 44.117142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.369400, 37.575169, 43.997314>,  <34.075615, 37.759029, 43.797604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.369400, 37.575169, 43.997314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179583, -0.577833, -0.796153,
		0.654453, 0.674409, -0.341853,
		0.734467, -0.459654, 0.499277,
		34.589741, 37.437271, 44.147099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.690105, 37.813297, 43.362705>,  <34.075615, 37.759029, 43.797604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.690105, 37.813297, 43.362705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.767071, 37.513477, 43.616055>,  <34.813248, 37.333588, 43.768063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.767071, 37.513477, 43.616055>,  <34.690105, 37.813297, 43.362705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.767071, 37.513477, 43.616055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421322, -0.519816, -0.743155,
		0.886265, 0.409845, 0.215781,
		0.192412, -0.749546, 0.633372,
		34.824795, 37.288612, 43.806065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.391312, 37.482567, 43.301422>,  <34.690105, 37.813297, 43.362705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.391312, 37.482567, 43.301422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.184994, 37.181213, 43.464573>,  <35.061203, 37.000401, 43.562466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.184994, 37.181213, 43.464573>,  <35.391312, 37.482567, 43.301422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.184994, 37.181213, 43.464573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316775, -0.610073, -0.726267,
		0.795997, -0.245398, 0.553326,
		-0.515793, -0.753386, 0.407880,
		35.030254, 36.955196, 43.586937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.825294, 36.901218, 43.374969>,  <35.391312, 37.482567, 43.301422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.825294, 36.901218, 43.374969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.490681, 36.687950, 43.425480>,  <35.289913, 36.559990, 43.455784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.490681, 36.687950, 43.425480>,  <35.825294, 36.901218, 43.374969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.490681, 36.687950, 43.425480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272775, -0.605116, -0.747949,
		0.475196, -0.591238, 0.651634,
		-0.836530, -0.533172, 0.126274,
		35.239723, 36.528000, 43.463364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// box output
cylinder {
	<0.000000, 0.000000, 0.000000>,  <70.000000, 0.000000, 0.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 70.000000, 0.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 0.000000, 70.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<70.000000, 70.000000, 70.000000>,  <0.000000, 70.000000, 70.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<70.000000, 70.000000, 70.000000>,  <70.000000, 0.000000, 70.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<70.000000, 70.000000, 70.000000>,  <70.000000, 70.000000, 0.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 70.000000>,  <0.000000, 70.000000, 70.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 70.000000>,  <70.000000, 0.000000, 70.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<70.000000, 70.000000, 0.000000>,  <0.000000, 70.000000, 0.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<70.000000, 70.000000, 0.000000>,  <70.000000, 0.000000, 0.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<70.000000, 0.000000, 70.000000>,  <70.000000, 0.000000, 0.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 70.000000, 0.000000>,  <0.000000, 70.000000, 70.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
// end of box output
