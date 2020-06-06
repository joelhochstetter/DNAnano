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
	location <18.5, 18.5, 82.5562>
	look_at <18.5, 18.5, 18.5>
	direction <0, 0, -64.0562>
	angle 67.0682
}


# declare cpy_camera_pos = <18.5, 18.5, 82.5562>;
# if (DRAW_FOG = 1)
fog {
	fog_type 2
	up vnormalize(cpy_camera_pos)
	color rgbt<1,1,1,0.3>
	distance 1e-5
	fog_alt 3e-3
	fog_offset 29.6
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
	<22.908836, 16.715900, -2.006454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.019958, 16.938919, -2.319367>,  <23.086632, 17.072729, -2.507115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.019958, 16.938919, -2.319367>,  <22.908836, 16.715900, -2.006454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.019958, 16.938919, -2.319367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.567698, 0.752212, 0.334510,
		0.774947, 0.351172, 0.525485,
		0.277805, 0.557545, -0.782284,
		23.103300, 17.106182, -2.554052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.308737, 17.301289, -1.770810>,  <22.908836, 16.715900, -2.006454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.308737, 17.301289, -1.770810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.104790, 17.372433, -2.107477>,  <22.982422, 17.415119, -2.309477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.104790, 17.372433, -2.107477>,  <23.308737, 17.301289, -1.770810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.104790, 17.372433, -2.107477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451659, 0.777348, 0.437875,
		0.732148, 0.603404, -0.316011,
		-0.509866, 0.177860, -0.841667,
		22.951830, 17.425791, -2.359977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.353163, 18.071846, -2.145420>,  <23.308737, 17.301289, -1.770810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.353163, 18.071846, -2.145420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.009598, 17.873985, -2.198475>,  <22.803459, 17.755268, -2.230308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.009598, 17.873985, -2.198475>,  <23.353163, 18.071846, -2.145420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.009598, 17.873985, -2.198475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510117, 0.803438, 0.307029,
		-0.045306, 0.331372, -0.942412,
		-0.858911, -0.494651, -0.132638,
		22.751925, 17.725590, -2.238266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.597355, 17.981390, -1.398325>,  <23.353163, 18.071846, -2.145420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.597355, 17.981390, -1.398325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.249226, 18.075279, -1.225148>,  <23.040348, 18.131613, -1.121243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.249226, 18.075279, -1.225148>,  <23.597355, 17.981390, -1.398325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.249226, 18.075279, -1.225148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491437, 0.471026, 0.732546,
		-0.031980, 0.850317, -0.525298,
		-0.870326, 0.234725, 0.432941,
		22.988129, 18.145697, -1.095266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.769939, 18.645199, -1.134854>,  <23.597355, 17.981390, -1.398325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.769939, 18.645199, -1.134854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.448421, 18.470695, -0.973068>,  <23.255510, 18.365993, -0.875997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.448421, 18.470695, -0.973068>,  <23.769939, 18.645199, -1.134854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.448421, 18.470695, -0.973068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269064, 0.339777, 0.901197,
		-0.530581, 0.833206, -0.155730,
		-0.803796, -0.436257, 0.404464,
		23.207283, 18.339819, -0.851729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.460585, 19.174639, -0.609217>,  <23.769939, 18.645199, -1.134854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.460585, 19.174639, -0.609217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.382450, 18.789894, -0.532624>,  <23.335569, 18.559048, -0.486667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.382450, 18.789894, -0.532624>,  <23.460585, 19.174639, -0.609217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.382450, 18.789894, -0.532624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155171, 0.162476, 0.974435,
		-0.968383, 0.220054, 0.117516,
		-0.195335, -0.961862, 0.191485,
		23.323849, 18.501335, -0.475178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.049219, 19.187801, -0.053969>,  <23.460585, 19.174639, -0.609217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.049219, 19.187801, -0.053969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.229038, 18.830509, -0.051251>,  <23.336929, 18.616135, -0.049620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.229038, 18.830509, -0.051251>,  <23.049219, 19.187801, -0.053969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.229038, 18.830509, -0.051251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232721, 0.124463, 0.964547,
		-0.862407, -0.432031, 0.263826,
		0.449550, -0.893229, 0.006795,
		23.363903, 18.562540, -0.049213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.809793, 18.732641, 0.574726>,  <23.049219, 19.187801, -0.053969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.809793, 18.732641, 0.574726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.186329, 18.650566, 0.467560>,  <23.412251, 18.601322, 0.403260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.186329, 18.650566, 0.467560>,  <22.809793, 18.732641, 0.574726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.186329, 18.650566, 0.467560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315527, 0.253603, 0.914400,
		-0.119679, -0.945295, 0.303469,
		0.941339, -0.205187, -0.267916,
		23.468731, 18.589010, 0.387185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.019812, 18.182056, 1.032267>,  <22.809793, 18.732641, 0.574726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.019812, 18.182056, 1.032267> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.313011, 18.425995, 0.911735>,  <23.488932, 18.572357, 0.839415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.313011, 18.425995, 0.911735>,  <23.019812, 18.182056, 1.032267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.313011, 18.425995, 0.911735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300357, 0.107292, 0.947773,
		0.610326, -0.785223, -0.104527,
		0.732999, 0.609847, -0.301331,
		23.532911, 18.608950, 0.821335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.602015, 17.897074, 1.277884>,  <23.019812, 18.182056, 1.032267>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.602015, 17.897074, 1.277884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.690273, 18.283382, 1.223330>,  <23.743229, 18.515167, 1.190598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.690273, 18.283382, 1.223330>,  <23.602015, 17.897074, 1.277884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.690273, 18.283382, 1.223330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285666, 0.069710, 0.955790,
		0.932583, -0.249851, -0.260507,
		0.220645, 0.965772, -0.136384,
		23.756466, 18.573114, 1.182415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.220766, 17.983030, 1.585694>,  <23.602015, 17.897074, 1.277884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.220766, 17.983030, 1.585694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.020920, 18.329479, 1.579892>,  <23.901012, 18.537350, 1.576410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.020920, 18.329479, 1.579892>,  <24.220766, 17.983030, 1.585694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.020920, 18.329479, 1.579892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381600, 0.235096, 0.893930,
		0.777665, 0.441088, -0.447971,
		-0.499618, 0.866125, -0.014506,
		23.871035, 18.589317, 1.575540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.693802, 18.657795, 1.571090>,  <24.220766, 17.983030, 1.585694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.693802, 18.657795, 1.571090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.334724, 18.694378, 1.743499>,  <24.119278, 18.716328, 1.846944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.334724, 18.694378, 1.743499>,  <24.693802, 18.657795, 1.571090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.334724, 18.694378, 1.743499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436740, 0.314214, 0.842928,
		-0.058341, 0.944936, -0.322012,
		-0.897694, 0.091458, 0.431023,
		24.065416, 18.721815, 1.872806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.640556, 19.370182, 1.895397>,  <24.693802, 18.657795, 1.571090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.640556, 19.370182, 1.895397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.429100, 19.079872, 2.071485>,  <24.302227, 18.905685, 2.177137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.429100, 19.079872, 2.071485>,  <24.640556, 19.370182, 1.895397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.429100, 19.079872, 2.071485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353394, 0.283352, 0.891529,
		-0.771786, 0.626868, 0.106693,
		-0.528639, -0.725775, 0.440218,
		24.270508, 18.862141, 2.203550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.179623, 19.767242, 2.387250>,  <24.640556, 19.370182, 1.895397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.179623, 19.767242, 2.387250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.274647, 19.388962, 2.475989>,  <24.331661, 19.161993, 2.529232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.274647, 19.388962, 2.475989>,  <24.179623, 19.767242, 2.387250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.274647, 19.388962, 2.475989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453365, 0.309931, 0.835705,
		-0.859083, -0.097953, 0.502375,
		0.237562, -0.945700, 0.221848,
		24.345915, 19.105251, 2.542543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.772774, 19.475597, 3.148039>,  <24.179623, 19.767242, 2.387250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.772774, 19.475597, 3.148039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.133820, 19.341179, 3.040441>,  <24.350447, 19.260529, 2.975881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.133820, 19.341179, 3.040441>,  <23.772774, 19.475597, 3.148039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.133820, 19.341179, 3.040441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375713, 0.310095, 0.873316,
		-0.210059, -0.889334, 0.406153,
		0.902616, -0.336045, -0.268996,
		24.404604, 19.240366, 2.959742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.097466, 18.905127, 3.611475>,  <23.772774, 19.475597, 3.148039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.097466, 18.905127, 3.611475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.377937, 19.145035, 3.457269>,  <24.546221, 19.288979, 3.364745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.377937, 19.145035, 3.457269>,  <24.097466, 18.905127, 3.611475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.377937, 19.145035, 3.457269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390114, 0.129856, 0.911564,
		0.596790, -0.789565, -0.142926,
		0.701180, 0.599770, -0.385517,
		24.588291, 19.324966, 3.341614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.763103, 18.677744, 3.656832>,  <24.097466, 18.905127, 3.611475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.763103, 18.677744, 3.656832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.786991, 19.076897, 3.667115>,  <24.801325, 19.316389, 3.673285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.786991, 19.076897, 3.667115>,  <24.763103, 18.677744, 3.656832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.786991, 19.076897, 3.667115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261642, -0.040501, 0.964315,
		0.963315, -0.050863, -0.263508,
		0.059720, 0.997884, 0.025707,
		24.804907, 19.376263, 3.674827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.247585, 18.529655, 4.121519>,  <24.763103, 18.677744, 3.656832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.247585, 18.529655, 4.121519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.085812, 18.895386, 4.129955>,  <24.988749, 19.114824, 4.135016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.085812, 18.895386, 4.129955>,  <25.247585, 18.529655, 4.121519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.085812, 18.895386, 4.129955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064787, -0.051643, 0.996562,
		0.912270, 0.401676, 0.080123,
		-0.404433, 0.914324, 0.021089,
		24.964481, 19.169683, 4.136281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.650019, 19.208673, 4.582209>,  <25.247585, 18.529655, 4.121519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.650019, 19.208673, 4.582209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.253117, 19.166054, 4.556661>,  <25.014977, 19.140482, 4.541332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.253117, 19.166054, 4.556661>,  <25.650019, 19.208673, 4.582209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.253117, 19.166054, 4.556661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058027, -0.057074, 0.996682,
		-0.109843, 0.992668, 0.050449,
		-0.992254, -0.106551, -0.063871,
		24.955441, 19.134089, 4.537499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.184198, 19.663006, 5.052551>,  <25.650019, 19.208673, 4.582209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.184198, 19.663006, 5.052551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.053108, 19.286041, 5.025856>,  <24.974453, 19.059862, 5.009839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.053108, 19.286041, 5.025856>,  <25.184198, 19.663006, 5.052551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.053108, 19.286041, 5.025856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082505, -0.098917, 0.991669,
		-0.941163, 0.319491, 0.110172,
		-0.327727, -0.942412, -0.066737,
		24.954790, 19.003317, 5.005835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.538462, 19.545254, 5.410179>,  <25.184198, 19.663006, 5.052551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.538462, 19.545254, 5.410179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.748688, 19.204964, 5.412962>,  <24.874825, 19.000790, 5.414632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.748688, 19.204964, 5.412962>,  <24.538462, 19.545254, 5.410179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.748688, 19.204964, 5.412962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006268, 0.012050, 0.999908,
		-0.850730, -0.525474, 0.011666,
		0.525566, -0.850725, 0.006958,
		24.906357, 18.949747, 5.415049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.310356, 18.826780, 5.603020>,  <24.538462, 19.545254, 5.410179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.310356, 18.826780, 5.603020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.702538, 18.823174, 5.681637>,  <24.937847, 18.821011, 5.728807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.702538, 18.823174, 5.681637>,  <24.310356, 18.826780, 5.603020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.702538, 18.823174, 5.681637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193667, 0.131917, 0.972158,
		-0.034692, -0.991220, 0.127592,
		0.980454, -0.009016, 0.196543,
		24.996674, 18.820469, 5.740600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.303675, 18.256165, 5.975544>,  <24.310356, 18.826780, 5.603020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.303675, 18.256165, 5.975544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.568359, 18.551163, 6.029566>,  <24.727169, 18.728161, 6.061979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.568359, 18.551163, 6.029566>,  <24.303675, 18.256165, 5.975544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.568359, 18.551163, 6.029566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310766, 0.105857, 0.944573,
		0.682322, -0.667004, 0.299235,
		0.661711, 0.737496, 0.135053,
		24.766872, 18.772411, 6.070082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.609404, 17.972183, 6.525836>,  <24.303675, 18.256165, 5.975544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.609404, 17.972183, 6.525836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.635052, 18.370922, 6.507136>,  <24.650440, 18.610165, 6.495916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.635052, 18.370922, 6.507136>,  <24.609404, 17.972183, 6.525836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.635052, 18.370922, 6.507136> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255967, 0.061707, 0.964714,
		0.964557, -0.049894, 0.259117,
		0.064122, 0.996847, -0.046749,
		24.654289, 18.669975, 6.493112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.062258, 18.287737, 7.094304>,  <24.609404, 17.972183, 6.525836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.062258, 18.287737, 7.094304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.807579, 18.570900, 6.972003>,  <24.654772, 18.740799, 6.898623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.807579, 18.570900, 6.972003>,  <25.062258, 18.287737, 7.094304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.807579, 18.570900, 6.972003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313991, 0.124141, 0.941275,
		0.704293, 0.695309, 0.143237,
		-0.636695, 0.707909, -0.305753,
		24.616570, 18.783272, 6.880277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.416714, 18.776146, 7.474005>,  <25.062258, 18.287737, 7.094304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.416714, 18.776146, 7.474005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.037510, 18.830704, 7.358994>,  <24.809988, 18.863438, 7.289989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.037510, 18.830704, 7.358994>,  <25.416714, 18.776146, 7.474005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.037510, 18.830704, 7.358994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272231, 0.120355, 0.954675,
		0.164818, 0.983316, -0.076967,
		-0.948011, 0.136395, -0.287526,
		24.753107, 18.871622, 7.272737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.109770, 19.303322, 7.862876>,  <25.416714, 18.776146, 7.474005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.109770, 19.303322, 7.862876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.829979, 19.035892, 7.761890>,  <24.662104, 18.875435, 7.701299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.829979, 19.035892, 7.761890>,  <25.109770, 19.303322, 7.862876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.829979, 19.035892, 7.761890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343133, 0.004309, 0.939277,
		-0.626889, 0.743632, -0.232424,
		-0.699478, -0.668575, -0.252464,
		24.620136, 18.835320, 7.686152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.449636, 19.559908, 7.774320>,  <25.109770, 19.303322, 7.862876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.449636, 19.559908, 7.774320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.213497, 19.514984, 8.094039>,  <24.071814, 19.488029, 8.285871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.213497, 19.514984, 8.094039>,  <24.449636, 19.559908, 7.774320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.213497, 19.514984, 8.094039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.601729, 0.721260, -0.343083,
		-0.537971, -0.683499, -0.493372,
		-0.590346, -0.112308, 0.799298,
		24.036394, 19.481293, 8.333829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.738344, 19.624155, 7.567820>,  <24.449636, 19.559908, 7.774320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.738344, 19.624155, 7.567820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.769119, 19.746971, 7.947252>,  <23.787584, 19.820662, 8.174911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.769119, 19.746971, 7.947252>,  <23.738344, 19.624155, 7.567820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.769119, 19.746971, 7.947252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.637872, 0.746375, -0.189852,
		-0.766289, -0.590467, 0.253278,
		0.076940, 0.307041, 0.948581,
		23.792202, 19.839083, 8.231827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.351612, 20.203590, 7.573165>,  <23.738344, 19.624155, 7.567820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.351612, 20.203590, 7.573165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.454288, 20.250378, 7.956922>,  <23.515894, 20.278450, 8.187175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.454288, 20.250378, 7.956922>,  <23.351612, 20.203590, 7.573165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.454288, 20.250378, 7.956922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486031, 0.873625, 0.023528,
		-0.835395, -0.472333, 0.281100,
		0.256689, 0.116969, 0.959390,
		23.531296, 20.285469, 8.244739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.015493, 19.760590, 8.070114>,  <23.351612, 20.203590, 7.573165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.015493, 19.760590, 8.070114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.657406, 19.599419, 7.993974>,  <22.442554, 19.502716, 7.948290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.657406, 19.599419, 7.993974>,  <23.015493, 19.760590, 8.070114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.657406, 19.599419, 7.993974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224662, 0.039180, 0.973649,
		-0.384853, 0.914392, -0.125597,
		-0.895218, -0.402929, -0.190350,
		22.388840, 19.478540, 7.936869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.350048, 20.149353, 8.164819>,  <23.015493, 19.760590, 8.070114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.350048, 20.149353, 8.164819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.299847, 19.763042, 8.255614>,  <22.269726, 19.531256, 8.310091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.299847, 19.763042, 8.255614>,  <22.350048, 20.149353, 8.164819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.299847, 19.763042, 8.255614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322896, 0.256104, 0.911125,
		-0.938076, 0.041056, -0.343988,
		-0.125503, -0.965777, 0.226988,
		22.262196, 19.473309, 8.323710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.811167, 20.111565, 8.771260>,  <22.350048, 20.149353, 8.164819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.811167, 20.111565, 8.771260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.968948, 19.744011, 8.774368>,  <22.063618, 19.523479, 8.776234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.968948, 19.744011, 8.774368>,  <21.811167, 20.111565, 8.771260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.968948, 19.744011, 8.774368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264602, -0.105480, 0.958572,
		-0.879996, -0.380167, -0.284745,
		0.394452, -0.918884, 0.007771,
		22.087284, 19.468346, 8.776699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.371649, 19.724880, 9.042101>,  <21.811167, 20.111565, 8.771260>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.371649, 19.724880, 9.042101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.714340, 19.526112, 9.097365>,  <21.919954, 19.406851, 9.130525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.714340, 19.526112, 9.097365>,  <21.371649, 19.724880, 9.042101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.714340, 19.526112, 9.097365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261992, -0.188538, 0.946474,
		-0.444276, -0.847066, -0.291715,
		0.856726, -0.496923, 0.138162,
		21.971357, 19.377035, 9.138814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.230434, 19.092451, 9.440852>,  <21.371649, 19.724880, 9.042101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.230434, 19.092451, 9.440852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.608330, 19.211323, 9.496218>,  <21.835066, 19.282646, 9.529437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.608330, 19.211323, 9.496218>,  <21.230434, 19.092451, 9.440852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.608330, 19.211323, 9.496218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046839, -0.295522, 0.954187,
		0.324468, -0.907938, -0.265271,
		0.944736, 0.297178, 0.138415,
		21.891750, 19.300476, 9.537742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.698780, 18.570869, 9.882131>,  <21.230434, 19.092451, 9.440852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.698780, 18.570869, 9.882131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.851906, 18.937469, 9.928569>,  <21.943781, 19.157431, 9.956431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.851906, 18.937469, 9.928569>,  <21.698780, 18.570869, 9.882131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.851906, 18.937469, 9.928569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027286, -0.136830, 0.990219,
		0.923423, -0.375901, -0.077388,
		0.382814, 0.916502, 0.116095,
		21.966749, 19.212420, 9.963397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.364605, 18.629391, 10.304003>,  <21.698780, 18.570869, 9.882131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.364605, 18.629391, 10.304003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.165638, 18.972248, 10.357492>,  <22.046257, 19.177961, 10.389586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.165638, 18.972248, 10.357492>,  <22.364605, 18.629391, 10.304003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.165638, 18.972248, 10.357492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088722, -0.103074, 0.990709,
		0.862962, 0.504662, -0.024777,
		-0.497419, 0.857142, 0.133724,
		22.016413, 19.229391, 10.397610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.828650, 18.966139, 10.659479>,  <22.364605, 18.629391, 10.304003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.828650, 18.966139, 10.659479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.477913, 19.144230, 10.732050>,  <22.267471, 19.251085, 10.775593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.477913, 19.144230, 10.732050>,  <22.828650, 18.966139, 10.659479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.477913, 19.144230, 10.732050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105385, -0.190196, 0.976074,
		0.469084, 0.874983, 0.119851,
		-0.876843, 0.445230, 0.181428,
		22.214859, 19.277800, 10.786478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.931414, 19.437494, 11.186914>,  <22.828650, 18.966139, 10.659479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.931414, 19.437494, 11.186914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.535583, 19.390804, 11.220659>,  <22.298086, 19.362789, 11.240907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.535583, 19.390804, 11.220659>,  <22.931414, 19.437494, 11.186914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.535583, 19.390804, 11.220659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102518, -0.159485, 0.981863,
		-0.101155, 0.980275, 0.169789,
		-0.989574, -0.116727, 0.084363,
		22.238710, 19.355785, 11.245968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.833193, 19.691891, 11.879933>,  <22.931414, 19.437494, 11.186914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.833193, 19.691891, 11.879933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.488445, 19.501499, 11.809929>,  <22.281597, 19.387264, 11.767926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.488445, 19.501499, 11.809929>,  <22.833193, 19.691891, 11.879933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.488445, 19.501499, 11.809929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093361, -0.190280, 0.977280,
		-0.498467, 0.858625, 0.119558,
		-0.861867, -0.475980, -0.175010,
		22.229885, 19.358706, 11.757426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.515797, 19.807032, 12.454518>,  <22.833193, 19.691891, 11.879933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.515797, 19.807032, 12.454518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.306641, 19.507038, 12.292476>,  <22.181147, 19.327042, 12.195251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.306641, 19.507038, 12.292476>,  <22.515797, 19.807032, 12.454518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.306641, 19.507038, 12.292476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147408, -0.388533, 0.909567,
		-0.839556, 0.535322, 0.092607,
		-0.522892, -0.749982, -0.405106,
		22.149773, 19.282043, 12.170944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.872131, 19.783602, 12.786122>,  <22.515797, 19.807032, 12.454518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.872131, 19.783602, 12.786122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.940899, 19.417049, 12.641519>,  <21.982159, 19.197119, 12.554756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.940899, 19.417049, 12.641519>,  <21.872131, 19.783602, 12.786122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.940899, 19.417049, 12.641519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197811, -0.391612, 0.898616,
		-0.965047, -0.082977, -0.248595,
		0.171918, -0.916382, -0.361510,
		21.992474, 19.142136, 12.533066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.350395, 19.421856, 13.096853>,  <21.872131, 19.783602, 12.786122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.350395, 19.421856, 13.096853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.620522, 19.147217, 12.989124>,  <21.782597, 18.982433, 12.924487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.620522, 19.147217, 12.989124>,  <21.350395, 19.421856, 13.096853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.620522, 19.147217, 12.989124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189605, -0.514516, 0.836255,
		-0.712741, -0.513670, -0.477643,
		0.675315, -0.686597, -0.269322,
		21.823116, 18.941238, 12.908328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.033079, 18.747931, 13.064751>,  <21.350395, 19.421856, 13.096853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.033079, 18.747931, 13.064751> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.424469, 18.676830, 13.106691>,  <21.659302, 18.634171, 13.131856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.424469, 18.676830, 13.106691>,  <21.033079, 18.747931, 13.064751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.424469, 18.676830, 13.106691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170209, -0.407798, 0.897067,
		-0.116696, -0.895603, -0.429274,
		0.978474, -0.177750, 0.104851,
		21.718012, 18.623505, 13.138146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.999605, 18.168137, 13.492802>,  <21.033079, 18.747931, 13.064751>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.999605, 18.168137, 13.492802> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.374382, 18.303265, 13.528618>,  <21.599249, 18.384340, 13.550108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.374382, 18.303265, 13.528618>,  <20.999605, 18.168137, 13.492802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.374382, 18.303265, 13.528618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040524, -0.359495, 0.932267,
		0.347126, -0.869852, -0.350515,
		0.936943, 0.337818, 0.089540,
		21.655464, 18.404610, 13.555480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.338821, 17.498768, 13.713151>,  <20.999605, 18.168137, 13.492802>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.338821, 17.498768, 13.713151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.597355, 17.793308, 13.793194>,  <21.752476, 17.970032, 13.841219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.597355, 17.793308, 13.793194>,  <21.338821, 17.498768, 13.713151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.597355, 17.793308, 13.793194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045289, -0.224762, 0.973361,
		0.761710, -0.638178, -0.111923,
		0.646334, 0.736350, 0.200106,
		21.791254, 18.014214, 13.853226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.780897, 17.190691, 14.089425>,  <21.338821, 17.498768, 13.713151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.780897, 17.190691, 14.089425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.766647, 17.580647, 14.177359>,  <21.758097, 17.814619, 14.230119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.766647, 17.580647, 14.177359>,  <21.780897, 17.190691, 14.089425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.766647, 17.580647, 14.177359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040394, -0.221199, 0.974392,
		0.998549, 0.025833, 0.047260,
		-0.035626, 0.974887, 0.219834,
		21.755960, 17.873112, 14.243309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.182392, 17.237633, 14.650272>,  <21.780897, 17.190691, 14.089425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.182392, 17.237633, 14.650272> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.988422, 17.585835, 14.683903>,  <21.872040, 17.794756, 14.704082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.988422, 17.585835, 14.683903>,  <22.182392, 17.237633, 14.650272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.988422, 17.585835, 14.683903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004827, -0.093471, 0.995610,
		0.874543, 0.483202, 0.041124,
		-0.484925, 0.870505, 0.084076,
		21.842945, 17.846987, 14.709126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.594193, 17.675264, 15.189448>,  <22.182392, 17.237633, 14.650272>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.594193, 17.675264, 15.189448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.224602, 17.826233, 15.164711>,  <22.002848, 17.916813, 15.149869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.224602, 17.826233, 15.164711>,  <22.594193, 17.675264, 15.189448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.224602, 17.826233, 15.164711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000147, 0.161352, 0.986897,
		0.382453, 0.911877, -0.149030,
		-0.923975, 0.377420, -0.061843,
		21.947409, 17.939459, 15.146158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.572388, 18.458336, 15.450191>,  <22.594193, 17.675264, 15.189448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.572388, 18.458336, 15.450191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.198700, 18.316555, 15.466190>,  <21.974487, 18.231487, 15.475790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.198700, 18.316555, 15.466190>,  <22.572388, 18.458336, 15.450191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.198700, 18.316555, 15.466190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057569, 0.260488, 0.963759,
		-0.352023, 0.898060, -0.263759,
		-0.934219, -0.354450, 0.039997,
		21.918434, 18.210220, 15.478189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.231352, 18.871233, 15.933751>,  <22.572388, 18.458336, 15.450191>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.231352, 18.871233, 15.933751> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.975769, 18.563896, 15.918869>,  <21.822420, 18.379494, 15.909940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.975769, 18.563896, 15.918869>,  <22.231352, 18.871233, 15.933751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.975769, 18.563896, 15.918869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162341, 0.087410, 0.982855,
		-0.751918, 0.634041, -0.180585,
		-0.638956, -0.768343, -0.037206,
		21.784082, 18.333393, 15.907707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.794891, 19.085487, 16.419720>,  <22.231352, 18.871233, 15.933751>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.794891, 19.085487, 16.419720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.672550, 18.706787, 16.379488>,  <21.599146, 18.479567, 16.355349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.672550, 18.706787, 16.379488>,  <21.794891, 19.085487, 16.419720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.672550, 18.706787, 16.379488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114537, -0.068284, 0.991069,
		-0.945163, 0.314643, -0.087553,
		-0.305855, -0.946751, -0.100578,
		21.580793, 18.422762, 16.349314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.095131, 18.983528, 16.782631>,  <21.794891, 19.085487, 16.419720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.095131, 18.983528, 16.782631> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.260937, 18.619637, 16.773067>,  <21.360420, 18.401302, 16.767328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.260937, 18.619637, 16.773067>,  <21.095131, 18.983528, 16.782631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.260937, 18.619637, 16.773067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087939, -0.066192, 0.993924,
		-0.905783, -0.409895, -0.107438,
		0.414517, -0.909728, -0.023910,
		21.385292, 18.346718, 16.765894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.680729, 18.553379, 17.242655>,  <21.095131, 18.983528, 16.782631>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.680729, 18.553379, 17.242655> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.027737, 18.359665, 17.197258>,  <21.235941, 18.243437, 17.170019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.027737, 18.359665, 17.197258>,  <20.680729, 18.553379, 17.242655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.027737, 18.359665, 17.197258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061895, -0.121295, 0.990685,
		-0.493541, -0.866461, -0.075251,
		0.867517, -0.484286, -0.113493,
		21.287992, 18.214378, 17.163210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.664211, 17.879810, 17.615034>,  <20.680729, 18.553379, 17.242655>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.664211, 17.879810, 17.615034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.056679, 17.956261, 17.626181>,  <21.292160, 18.002131, 17.632868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.056679, 17.956261, 17.626181>,  <20.664211, 17.879810, 17.615034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.056679, 17.956261, 17.626181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001096, -0.138758, 0.990326,
		0.193145, -0.971708, -0.135936,
		0.981169, 0.191128, 0.027865,
		21.351030, 18.013599, 17.634541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.051706, 17.355247, 18.054062>,  <20.664211, 17.879810, 17.615034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.051706, 17.355247, 18.054062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.315163, 17.655960, 18.041328>,  <21.473236, 17.836388, 18.033689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.315163, 17.655960, 18.041328>,  <21.051706, 17.355247, 18.054062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.315163, 17.655960, 18.041328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265935, -0.192997, 0.944474,
		0.703896, -0.630535, -0.327041,
		0.658642, 0.751783, -0.031831,
		21.512754, 17.881495, 18.031778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.619463, 17.109392, 18.448820>,  <21.051706, 17.355247, 18.054062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.619463, 17.109392, 18.448820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.671364, 17.505711, 18.464266>,  <21.702503, 17.743502, 18.473534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.671364, 17.505711, 18.464266>,  <21.619463, 17.109392, 18.448820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.671364, 17.505711, 18.464266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150874, -0.058217, 0.986837,
		0.980001, -0.122217, -0.157038,
		0.129750, 0.990795, 0.038613,
		21.710289, 17.802950, 18.475849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.083696, 17.185686, 18.979660>,  <21.619463, 17.109392, 18.448820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.083696, 17.185686, 18.979660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.939476, 17.558090, 18.956947>,  <21.852943, 17.781532, 18.943319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.939476, 17.558090, 18.956947>,  <22.083696, 17.185686, 18.979660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.939476, 17.558090, 18.956947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111713, 0.103539, 0.988332,
		0.926025, 0.350002, -0.141337,
		-0.360552, 0.931009, -0.056780,
		21.831310, 17.837393, 18.939913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.417078, 17.553410, 19.514956>,  <22.083696, 17.185686, 18.979660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.417078, 17.553410, 19.514956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.136208, 17.824139, 19.426540>,  <21.967686, 17.986576, 19.373491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.136208, 17.824139, 19.426540>,  <22.417078, 17.553410, 19.514956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.136208, 17.824139, 19.426540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151886, 0.160911, 0.975212,
		0.695614, 0.718344, -0.010189,
		-0.702177, 0.676823, -0.221038,
		21.925554, 18.027185, 19.360229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.518263, 18.236994, 19.890669>,  <22.417078, 17.553410, 19.514956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.518263, 18.236994, 19.890669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.130581, 18.224861, 19.792913>,  <21.897972, 18.217581, 19.734261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.130581, 18.224861, 19.792913>,  <22.518263, 18.236994, 19.890669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.130581, 18.224861, 19.792913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244624, 0.232920, 0.941227,
		0.028372, 0.972023, -0.233167,
		-0.969203, -0.030334, -0.244388,
		21.839821, 18.215761, 19.719597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.259388, 18.924486, 20.170202>,  <22.518263, 18.236994, 19.890669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.259388, 18.924486, 20.170202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.957527, 18.665775, 20.126053>,  <21.776411, 18.510550, 20.099564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.957527, 18.665775, 20.126053>,  <22.259388, 18.924486, 20.170202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.957527, 18.665775, 20.126053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378716, 0.292010, 0.878239,
		-0.535794, 0.704565, -0.465310,
		-0.754652, -0.646776, -0.110373,
		21.731133, 18.471743, 20.092941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.626862, 19.384069, 20.402210>,  <22.259388, 18.924486, 20.170202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.626862, 19.384069, 20.402210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.502960, 19.004112, 20.418961>,  <21.428619, 18.776138, 20.429010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.502960, 19.004112, 20.418961>,  <21.626862, 19.384069, 20.402210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.502960, 19.004112, 20.418961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.532251, 0.209719, 0.820200,
		-0.787885, 0.231770, -0.570543,
		-0.309751, -0.949895, 0.041874,
		21.410034, 18.719143, 20.431522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.838940, 19.336458, 20.448673>,  <21.626862, 19.384069, 20.402210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.838940, 19.336458, 20.448673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.026772, 19.028866, 20.622185>,  <21.139471, 18.844311, 20.726292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.026772, 19.028866, 20.622185>,  <20.838940, 19.336458, 20.448673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.026772, 19.028866, 20.622185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485386, 0.185555, 0.854383,
		-0.737492, -0.611752, -0.286119,
		0.469580, -0.768979, 0.433781,
		21.167646, 18.798172, 20.752319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.362419, 19.020235, 20.835812>,  <20.838940, 19.336458, 20.448673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.362419, 19.020235, 20.835812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.701870, 18.872177, 20.986979>,  <20.905540, 18.783342, 21.077679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.701870, 18.872177, 20.986979>,  <20.362419, 19.020235, 20.835812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.701870, 18.872177, 20.986979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421986, -0.042881, 0.905588,
		-0.318995, -0.927983, -0.192587,
		0.848629, -0.370146, 0.377917,
		20.956459, 18.761133, 21.100353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.206991, 18.371735, 21.194242>,  <20.362419, 19.020235, 20.835812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.206991, 18.371735, 21.194242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.562065, 18.494186, 21.331823>,  <20.775108, 18.567657, 21.414371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.562065, 18.494186, 21.331823>,  <20.206991, 18.371735, 21.194242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.562065, 18.494186, 21.331823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396709, 0.129259, 0.908798,
		0.233752, -0.943173, 0.236186,
		0.887683, 0.306131, 0.343951,
		20.828369, 18.586025, 21.435009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.296192, 17.919420, 21.790693>,  <20.206991, 18.371735, 21.194242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.296192, 17.919420, 21.790693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.539917, 18.232826, 21.839426>,  <20.686152, 18.420870, 21.868666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.539917, 18.232826, 21.839426>,  <20.296192, 17.919420, 21.790693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.539917, 18.232826, 21.839426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226001, 0.024331, 0.973823,
		0.760040, -0.620898, 0.191900,
		0.609314, 0.783514, 0.121831,
		20.722712, 18.467880, 21.875975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.671926, 17.778639, 22.345869>,  <20.296192, 17.919420, 21.790693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.671926, 17.778639, 22.345869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.703091, 18.176010, 22.312323>,  <20.721788, 18.414433, 22.292194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.703091, 18.176010, 22.312323>,  <20.671926, 17.778639, 22.345869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.703091, 18.176010, 22.312323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012384, 0.085077, 0.996297,
		0.996883, -0.076583, 0.018931,
		0.077910, 0.993427, -0.083864,
		20.726463, 18.474039, 22.287163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.099382, 17.918966, 22.884163>,  <20.671926, 17.778639, 22.345869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.099382, 17.918966, 22.884163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.934040, 18.267807, 22.779413>,  <20.834835, 18.477112, 22.716564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.934040, 18.267807, 22.779413>,  <21.099382, 17.918966, 22.884163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.934040, 18.267807, 22.779413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171216, 0.208021, 0.963022,
		0.894328, 0.442908, 0.063331,
		-0.413356, 0.872101, -0.261872,
		20.810034, 18.529438, 22.700851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.441090, 18.445431, 23.372505>,  <21.099382, 17.918966, 22.884163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.441090, 18.445431, 23.372505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.083916, 18.580215, 23.253090>,  <20.869612, 18.661087, 23.181440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.083916, 18.580215, 23.253090>,  <21.441090, 18.445431, 23.372505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.083916, 18.580215, 23.253090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183689, 0.332722, 0.924962,
		0.411008, 0.880768, -0.235203,
		-0.892934, 0.336962, -0.298539,
		20.816036, 18.681305, 23.163528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.368158, 19.112535, 23.699989>,  <21.441090, 18.445431, 23.372505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.368158, 19.112535, 23.699989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.991074, 19.004753, 23.621311>,  <20.764822, 18.940083, 23.574104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.991074, 19.004753, 23.621311>,  <21.368158, 19.112535, 23.699989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.991074, 19.004753, 23.621311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277970, 0.308428, 0.909728,
		-0.184467, 0.912285, -0.365660,
		-0.942711, -0.269457, -0.196693,
		20.708260, 18.923916, 23.562304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.004581, 19.568995, 24.085190>,  <21.368158, 19.112535, 23.699989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.004581, 19.568995, 24.085190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.748554, 19.270908, 24.010393>,  <20.594938, 19.092056, 23.965515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.748554, 19.270908, 24.010393>,  <21.004581, 19.568995, 24.085190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.748554, 19.270908, 24.010393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405858, 0.121290, 0.905852,
		-0.652376, 0.655699, -0.380086,
		-0.640067, -0.745217, -0.186994,
		20.556534, 19.047344, 23.954294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.342957, 19.737289, 24.171261>,  <21.004581, 19.568995, 24.085190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.342957, 19.737289, 24.171261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.280434, 19.344784, 24.216311>,  <20.242920, 19.109280, 24.243340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.280434, 19.344784, 24.216311>,  <20.342957, 19.737289, 24.171261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.280434, 19.344784, 24.216311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357518, 0.162502, 0.919660,
		-0.920732, 0.103486, -0.376221,
		-0.156309, -0.981266, 0.112622,
		20.233541, 19.050404, 24.250097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.698400, 19.708719, 24.512318>,  <20.342957, 19.737289, 24.171261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.698400, 19.708719, 24.512318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.892227, 19.366638, 24.585886>,  <20.008522, 19.161390, 24.630028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.892227, 19.366638, 24.585886>,  <19.698400, 19.708719, 24.512318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.892227, 19.366638, 24.585886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282657, 0.045900, 0.958122,
		-0.827830, -0.516259, -0.219487,
		0.484565, -0.855202, 0.183922,
		20.037596, 19.110077, 24.641062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.238453, 19.412392, 24.958296>,  <19.698400, 19.708719, 24.512318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.238453, 19.412392, 24.958296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.576809, 19.201653, 24.991528>,  <19.779821, 19.075209, 25.011467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.576809, 19.201653, 24.991528>,  <19.238453, 19.412392, 24.958296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.576809, 19.201653, 24.991528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232644, -0.224296, 0.946345,
		-0.479947, -0.819830, -0.312298,
		0.845889, -0.526850, 0.083078,
		19.830576, 19.043598, 25.016451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.004606, 18.806593, 25.256714>,  <19.238453, 19.412392, 24.958296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.004606, 18.806593, 25.256714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.389286, 18.868813, 25.346992>,  <19.620094, 18.906143, 25.401159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.389286, 18.868813, 25.346992>,  <19.004606, 18.806593, 25.256714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.389286, 18.868813, 25.346992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249762, 0.158025, 0.955325,
		0.112934, -0.975106, 0.190823,
		0.961699, 0.155549, 0.225698,
		19.677795, 18.915478, 25.414701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.028522, 18.418926, 25.851053>,  <19.004606, 18.806593, 25.256714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.028522, 18.418926, 25.851053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.357250, 18.646805, 25.854136>,  <19.554487, 18.783531, 25.855986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.357250, 18.646805, 25.854136>,  <19.028522, 18.418926, 25.851053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.357250, 18.646805, 25.854136> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093323, 0.121258, 0.988224,
		0.562054, -0.812860, 0.152818,
		0.821819, 0.569697, 0.007705,
		19.603796, 18.817715, 25.856447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.476240, 18.063848, 26.405588>,  <19.028522, 18.418926, 25.851053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.476240, 18.063848, 26.405588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.555962, 18.447514, 26.325304>,  <19.603794, 18.677713, 26.277134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.555962, 18.447514, 26.325304>,  <19.476240, 18.063848, 26.405588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.555962, 18.447514, 26.325304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033437, 0.211357, 0.976837,
		0.979367, -0.187974, 0.074196,
		0.199302, 0.959163, -0.200711,
		19.615751, 18.735262, 26.265091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.144072, 18.356932, 26.786963>,  <19.476240, 18.063848, 26.405588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.144072, 18.356932, 26.786963> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.876873, 18.645622, 26.714418>,  <19.716555, 18.818836, 26.670891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.876873, 18.645622, 26.714418>,  <20.144072, 18.356932, 26.786963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.876873, 18.645622, 26.714418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218119, 0.422899, 0.879534,
		0.711481, 0.547967, -0.439917,
		-0.667996, 0.721726, -0.181362,
		19.676474, 18.862141, 26.660009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.375689, 19.068562, 26.711615>,  <20.144072, 18.356932, 26.786963>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.375689, 19.068562, 26.711615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.006618, 19.068726, 26.865847>,  <19.785177, 19.068825, 26.958385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.006618, 19.068726, 26.865847>,  <20.375689, 19.068562, 26.711615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.006618, 19.068726, 26.865847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330551, 0.515692, 0.790441,
		-0.198517, 0.856774, -0.475952,
		-0.922674, 0.000410, 0.385581,
		19.729816, 19.068850, 26.981522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.017958, 19.806158, 26.862579>,  <20.375689, 19.068562, 26.711615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.017958, 19.806158, 26.862579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.934399, 19.505219, 27.112486>,  <19.884264, 19.324656, 27.262430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.934399, 19.505219, 27.112486>,  <20.017958, 19.806158, 26.862579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.934399, 19.505219, 27.112486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543371, 0.441875, 0.713789,
		-0.813087, 0.488589, 0.316498,
		-0.208896, -0.752348, 0.624768,
		19.871729, 19.279514, 27.299915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.559469, 19.886009, 27.454418>,  <20.017958, 19.806158, 26.862579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.559469, 19.886009, 27.454418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.844391, 19.612602, 27.518200>,  <20.015345, 19.448559, 27.556469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.844391, 19.612602, 27.518200>,  <19.559469, 19.886009, 27.454418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.844391, 19.612602, 27.518200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308612, 0.509055, 0.803506,
		-0.630380, -0.523133, 0.573544,
		0.712306, -0.683517, 0.159453,
		20.058083, 19.407547, 27.566036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.586008, 19.811897, 28.053867>,  <19.559469, 19.886009, 27.454418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.586008, 19.811897, 28.053867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.936226, 19.634388, 27.977463>,  <20.146357, 19.527884, 27.931620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.936226, 19.634388, 27.977463>,  <19.586008, 19.811897, 28.053867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.936226, 19.634388, 27.977463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444087, 0.583509, 0.679929,
		-0.190277, -0.680135, 0.707963,
		0.875546, -0.443772, -0.191010,
		20.198891, 19.501257, 27.920160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.805513, 20.038319, 28.054893>,  <19.586008, 19.811897, 28.053867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.805513, 20.038319, 28.054893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.538071, 20.335674, 28.047533>,  <18.377605, 20.514088, 28.043116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.538071, 20.335674, 28.047533>,  <18.805513, 20.038319, 28.054893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.538071, 20.335674, 28.047533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548592, 0.476396, -0.687090,
		-0.502009, -0.469488, -0.726339,
		-0.668605, 0.743389, -0.018402,
		18.337488, 20.558691, 28.042013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.392990, 20.055027, 27.362373>,  <18.805513, 20.038319, 28.054893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.392990, 20.055027, 27.362373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.462566, 20.387020, 27.574364>,  <18.504313, 20.586216, 27.701557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.462566, 20.387020, 27.574364>,  <18.392990, 20.055027, 27.362373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.462566, 20.387020, 27.574364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.620394, 0.325590, -0.713514,
		-0.764759, 0.452902, -0.458283,
		0.173939, 0.829983, 0.529976,
		18.514748, 20.636015, 27.733356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.144810, 20.665545, 27.014170>,  <18.392990, 20.055027, 27.362373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.144810, 20.665545, 27.014170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.489082, 20.717899, 27.210981>,  <18.695646, 20.749311, 27.329069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.489082, 20.717899, 27.210981>,  <18.144810, 20.665545, 27.014170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.489082, 20.717899, 27.210981> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435620, 0.310940, -0.844720,
		-0.263553, 0.941374, 0.210605,
		0.860683, 0.130885, 0.492031,
		18.747288, 20.757164, 27.358591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.424812, 21.375240, 26.918795>,  <18.144810, 20.665545, 27.014170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.424812, 21.375240, 26.918795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.681274, 21.075104, 26.983179>,  <18.835152, 20.895021, 27.021811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.681274, 21.075104, 26.983179>,  <18.424812, 21.375240, 26.918795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.681274, 21.075104, 26.983179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325610, 0.076059, -0.942440,
		0.694908, 0.656662, 0.293084,
		0.641157, -0.750340, 0.160961,
		18.873621, 20.850002, 27.031467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.384350, 21.807407, 26.385185>,  <18.424812, 21.375240, 26.918795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.384350, 21.807407, 26.385185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.782501, 21.799225, 26.422718>,  <19.021393, 21.794315, 26.445238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.782501, 21.799225, 26.422718>,  <18.384350, 21.807407, 26.385185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.782501, 21.799225, 26.422718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093772, -0.003797, -0.995586,
		0.020721, 0.999784, -0.001861,
		0.995378, -0.020455, 0.093831,
		19.081114, 21.793089, 26.450867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.682707, 22.373730, 25.898985>,  <18.384350, 21.807407, 26.385185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.682707, 22.373730, 25.898985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.949173, 22.084286, 25.971222>,  <19.109053, 21.910620, 26.014565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.949173, 22.084286, 25.971222>,  <18.682707, 22.373730, 25.898985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.949173, 22.084286, 25.971222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086351, -0.165683, -0.982391,
		0.740790, 0.670028, -0.047887,
		0.666163, -0.723611, 0.180594,
		19.149021, 21.867203, 26.025400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.279921, 22.597700, 25.459602>,  <18.682707, 22.373730, 25.898985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.279921, 22.597700, 25.459602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.294529, 22.209061, 25.553123>,  <19.303295, 21.975878, 25.609236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.294529, 22.209061, 25.553123>,  <19.279921, 22.597700, 25.459602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.294529, 22.209061, 25.553123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286791, -0.213929, -0.933801,
		0.957297, 0.101159, 0.270832,
		0.036523, -0.971597, 0.233805,
		19.305487, 21.917582, 25.623264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.968483, 22.452753, 25.265667>,  <19.279921, 22.597700, 25.459602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.968483, 22.452753, 25.265667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.730415, 22.131317, 25.263838>,  <19.587574, 21.938456, 25.262741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.730415, 22.131317, 25.263838>,  <19.968483, 22.452753, 25.265667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.730415, 22.131317, 25.263838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005551, 0.001579, -0.999983,
		0.803582, -0.595184, 0.003521,
		-0.595168, -0.803588, -0.004572,
		19.551865, 21.890242, 25.262466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.255133, 22.025984, 24.850580>,  <19.968483, 22.452753, 25.265667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.255133, 22.025984, 24.850580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.906883, 21.829433, 24.841125>,  <19.697933, 21.711502, 24.835453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.906883, 21.829433, 24.841125>,  <20.255133, 22.025984, 24.850580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.906883, 21.829433, 24.841125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064320, -0.066062, -0.995740,
		0.487723, -0.868438, 0.089120,
		-0.870626, -0.491378, -0.023638,
		19.645695, 21.682020, 24.834034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.432442, 21.468752, 24.439293>,  <20.255133, 22.025984, 24.850580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.432442, 21.468752, 24.439293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.034069, 21.492332, 24.412041>,  <19.795046, 21.506481, 24.395689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.034069, 21.492332, 24.412041>,  <20.432442, 21.468752, 24.439293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.034069, 21.492332, 24.412041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056427, -0.181347, -0.981799,
		-0.070233, -0.981651, 0.177284,
		-0.995933, 0.058951, -0.068129,
		19.735289, 21.510017, 24.391602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.176250, 20.873098, 23.939291>,  <20.432442, 21.468752, 24.439293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.176250, 20.873098, 23.939291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.884605, 21.146626, 23.950523>,  <19.709618, 21.310741, 23.957262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.884605, 21.146626, 23.950523>,  <20.176250, 20.873098, 23.939291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.884605, 21.146626, 23.950523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110025, -0.076620, -0.990971,
		-0.675492, -0.725619, 0.131102,
		-0.729112, 0.683818, 0.028080,
		19.665873, 21.351770, 23.958948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.695774, 20.699614, 23.480789>,  <20.176250, 20.873098, 23.939291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.695774, 20.699614, 23.480789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.584007, 21.081211, 23.524275>,  <19.516947, 21.310169, 23.550365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.584007, 21.081211, 23.524275>,  <19.695774, 20.699614, 23.480789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.584007, 21.081211, 23.524275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080962, 0.089411, -0.992699,
		-0.956750, -0.286179, 0.052254,
		-0.279418, 0.953995, 0.108713,
		19.500181, 21.367409, 23.556889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.112576, 20.813805, 23.080645>,  <19.695774, 20.699614, 23.480789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.112576, 20.813805, 23.080645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.262299, 21.181541, 23.129150>,  <19.352133, 21.402184, 23.158255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.262299, 21.181541, 23.129150>,  <19.112576, 20.813805, 23.080645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.262299, 21.181541, 23.129150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004110, 0.129125, -0.991620,
		-0.927295, 0.371671, 0.044554,
		0.374309, 0.919341, 0.121264,
		19.374592, 21.457344, 23.165529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.725225, 21.208139, 22.631207>,  <19.112576, 20.813805, 23.080645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.725225, 21.208139, 22.631207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.069546, 21.399193, 22.701500>,  <19.276138, 21.513824, 22.743675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.069546, 21.399193, 22.701500>,  <18.725225, 21.208139, 22.631207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.069546, 21.399193, 22.701500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213454, -0.025367, -0.976624,
		-0.462012, 0.878192, -0.123790,
		0.860803, 0.477636, 0.175734,
		19.327787, 21.542484, 22.754221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.761564, 21.752161, 22.207550>,  <18.725225, 21.208139, 22.631207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.761564, 21.752161, 22.207550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.152557, 21.722252, 22.286482>,  <19.387154, 21.704308, 22.333841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.152557, 21.722252, 22.286482>,  <18.761564, 21.752161, 22.207550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.152557, 21.722252, 22.286482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196067, -0.023940, -0.980298,
		0.078022, 0.996913, -0.008741,
		0.977482, -0.074771, 0.197329,
		19.445803, 21.699821, 22.345680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.004078, 22.252138, 21.834291>,  <18.761564, 21.752161, 22.207550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.004078, 22.252138, 21.834291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.326462, 22.026352, 21.905626>,  <19.519892, 21.890881, 21.948427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.326462, 22.026352, 21.905626>,  <19.004078, 22.252138, 21.834291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.326462, 22.026352, 21.905626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212994, -0.004569, -0.977043,
		0.552323, 0.825443, 0.116545,
		0.805961, -0.564467, 0.178338,
		19.568251, 21.857012, 21.959127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.390501, 22.428406, 21.323215>,  <19.004078, 22.252138, 21.834291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.390501, 22.428406, 21.323215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.597145, 22.106316, 21.439650>,  <19.721130, 21.913061, 21.509510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.597145, 22.106316, 21.439650>,  <19.390501, 22.428406, 21.323215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.597145, 22.106316, 21.439650> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215438, -0.206782, -0.954373,
		0.828675, 0.555748, 0.066650,
		0.516609, -0.805224, 0.291084,
		19.752129, 21.864748, 21.526976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.053978, 22.458471, 21.114332>,  <19.390501, 22.428406, 21.323215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.053978, 22.458471, 21.114332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.019184, 22.061977, 21.154104>,  <19.998308, 21.824081, 21.177967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.019184, 22.061977, 21.154104>,  <20.053978, 22.458471, 21.114332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.019184, 22.061977, 21.154104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261445, -0.119026, -0.957851,
		0.961291, -0.057323, 0.269507,
		-0.086986, -0.991235, 0.099431,
		19.993088, 21.764606, 21.183933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.789001, 22.088118, 20.884420>,  <20.053978, 22.458471, 21.114332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.789001, 22.088118, 20.884420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.483597, 21.835217, 20.831800>,  <20.300354, 21.683475, 20.800228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.483597, 21.835217, 20.831800>,  <20.789001, 22.088118, 20.884420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.483597, 21.835217, 20.831800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375105, -0.268370, -0.887284,
		0.525684, -0.726798, 0.442065,
		-0.763513, -0.632252, -0.131548,
		20.254543, 21.645540, 20.792336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.110840, 21.503284, 20.587446>,  <20.789001, 22.088118, 20.884420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.110840, 21.503284, 20.587446> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.724575, 21.467770, 20.489780>,  <20.492817, 21.446461, 20.431181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.724575, 21.467770, 20.489780>,  <21.110840, 21.503284, 20.587446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.724575, 21.467770, 20.489780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254000, -0.125023, -0.959090,
		0.054631, -0.988173, 0.143282,
		-0.965660, -0.088790, -0.244166,
		20.434877, 21.441133, 20.416531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.026423, 20.848684, 20.191944>,  <21.110840, 21.503284, 20.587446>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.026423, 20.848684, 20.191944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.741581, 21.115021, 20.102894>,  <20.570677, 21.274822, 20.049463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.741581, 21.115021, 20.102894>,  <21.026423, 20.848684, 20.191944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.741581, 21.115021, 20.102894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217445, -0.092337, -0.971695,
		-0.667554, -0.740356, -0.079031,
		-0.712103, 0.665843, -0.222626,
		20.527950, 21.314774, 20.036106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.761478, 20.577633, 19.479364>,  <21.026423, 20.848684, 20.191944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.761478, 20.577633, 19.479364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.617733, 20.950413, 19.498648>,  <20.531485, 21.174082, 19.510218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.617733, 20.950413, 19.498648>,  <20.761478, 20.577633, 19.479364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.617733, 20.950413, 19.498648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105909, 0.092055, -0.990106,
		-0.927168, -0.350704, -0.131784,
		-0.359365, 0.931951, 0.048207,
		20.509924, 21.229998, 19.513109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.351940, 20.602919, 18.805803>,  <20.761478, 20.577633, 19.479364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.351940, 20.602919, 18.805803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.337101, 20.987560, 18.914570>,  <20.328197, 21.218346, 18.979830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.337101, 20.987560, 18.914570>,  <20.351940, 20.602919, 18.805803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.337101, 20.987560, 18.914570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116656, 0.274411, -0.954510,
		-0.992479, -0.003688, -0.122357,
		-0.037096, 0.961605, 0.271917,
		20.325972, 21.276041, 18.996145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.742540, 20.964956, 18.406433>,  <20.351940, 20.602919, 18.805803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.742540, 20.964956, 18.406433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.982273, 21.264206, 18.520355>,  <20.126112, 21.443756, 18.588709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.982273, 21.264206, 18.520355>,  <19.742540, 20.964956, 18.406433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.982273, 21.264206, 18.520355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003500, 0.358227, -0.933628,
		-0.800493, 0.558556, 0.217316,
		0.599332, 0.748123, 0.284803,
		20.162073, 21.488644, 18.605797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.589546, 21.567703, 17.901445>,  <19.742540, 20.964956, 18.406433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.589546, 21.567703, 17.901445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.940006, 21.647781, 18.076847>,  <20.150282, 21.695829, 18.182087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.940006, 21.647781, 18.076847>,  <19.589546, 21.567703, 17.901445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.940006, 21.647781, 18.076847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241507, 0.604970, -0.758739,
		-0.417178, 0.770670, 0.481695,
		0.876149, 0.200197, 0.438503,
		20.202850, 21.707840, 18.208399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.613907, 22.260826, 17.772745>,  <19.589546, 21.567703, 17.901445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.613907, 22.260826, 17.772745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.986397, 22.131916, 17.840820>,  <20.209890, 22.054571, 17.881666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.986397, 22.131916, 17.840820>,  <19.613907, 22.260826, 17.772745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.986397, 22.131916, 17.840820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313859, 0.471786, -0.823960,
		0.185249, 0.820705, 0.540487,
		0.931222, -0.322274, 0.170188,
		20.265764, 22.035234, 17.891876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.089249, 22.779364, 17.810835>,  <19.613907, 22.260826, 17.772745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.089249, 22.779364, 17.810835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.311813, 22.467396, 17.696201>,  <20.445353, 22.280214, 17.627422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.311813, 22.467396, 17.696201>,  <20.089249, 22.779364, 17.810835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.311813, 22.467396, 17.696201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252227, 0.487167, -0.836092,
		0.791699, 0.392927, 0.467783,
		0.556412, -0.779921, -0.286582,
		20.478737, 22.233419, 17.610226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.725109, 23.132071, 17.697853>,  <20.089249, 22.779364, 17.810835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.725109, 23.132071, 17.697853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.744164, 22.769012, 17.531042>,  <20.755596, 22.551178, 17.430956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.744164, 22.769012, 17.531042>,  <20.725109, 23.132071, 17.697853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.744164, 22.769012, 17.531042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461320, 0.390300, -0.796775,
		0.885954, -0.154430, 0.437306,
		0.047635, -0.907644, -0.417030,
		20.758453, 22.496719, 17.405933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.365778, 23.193415, 17.411283>,  <20.725109, 23.132071, 17.697853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.365778, 23.193415, 17.411283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.167362, 22.897068, 17.230148>,  <21.048313, 22.719261, 17.121468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.167362, 22.897068, 17.230148>,  <21.365778, 23.193415, 17.411283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.167362, 22.897068, 17.230148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409059, 0.260634, -0.874495,
		0.765908, -0.619022, 0.173772,
		-0.496041, -0.740865, -0.452838,
		21.018551, 22.674809, 17.094297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.830250, 22.885208, 16.877718>,  <21.365778, 23.193415, 17.411283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.830250, 22.885208, 16.877718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.469971, 22.764267, 16.752930>,  <21.253803, 22.691702, 16.678057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.469971, 22.764267, 16.752930>,  <21.830250, 22.885208, 16.877718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.469971, 22.764267, 16.752930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244662, 0.240388, -0.939337,
		0.359005, -0.922386, -0.142543,
		-0.900697, -0.302352, -0.311973,
		21.199760, 22.673561, 16.659338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.955025, 22.565622, 16.197981>,  <21.830250, 22.885208, 16.877718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.955025, 22.565622, 16.197981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.562527, 22.642574, 16.202833>,  <21.327028, 22.688745, 16.205744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.562527, 22.642574, 16.202833>,  <21.955025, 22.565622, 16.197981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.562527, 22.642574, 16.202833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032300, 0.226133, -0.973561,
		-0.190036, -0.954911, -0.228106,
		-0.981246, 0.192379, 0.012130,
		21.268152, 22.700289, 16.206472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.660183, 22.153862, 15.576049>,  <21.955025, 22.565622, 16.197981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.660183, 22.153862, 15.576049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.387447, 22.432388, 15.665703>,  <21.223806, 22.599504, 15.719495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.387447, 22.432388, 15.665703>,  <21.660183, 22.153862, 15.576049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.387447, 22.432388, 15.665703> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073249, 0.239872, -0.968037,
		-0.727825, -0.676463, -0.112549,
		-0.681839, 0.696318, 0.224135,
		21.182896, 22.641283, 15.732944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.077978, 21.994114, 15.173254>,  <21.660183, 22.153862, 15.576049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.077978, 21.994114, 15.173254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.038509, 22.383759, 15.254616>,  <21.014828, 22.617544, 15.303432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.038509, 22.383759, 15.254616>,  <21.077978, 21.994114, 15.173254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.038509, 22.383759, 15.254616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143640, 0.188318, -0.971547,
		-0.984699, -0.125081, 0.121339,
		-0.098671, 0.974110, 0.203403,
		21.008907, 22.675991, 15.315637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.542078, 22.203411, 14.814056>,  <21.077978, 21.994114, 15.173254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.542078, 22.203411, 14.814056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.729328, 22.547401, 14.895348>,  <20.841679, 22.753796, 14.944122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.729328, 22.547401, 14.895348>,  <20.542078, 22.203411, 14.814056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.729328, 22.547401, 14.895348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036858, 0.248785, -0.967857,
		-0.882894, 0.445586, 0.148159,
		0.468123, 0.859976, 0.203228,
		20.869764, 22.805395, 14.956316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.193029, 22.710497, 14.517816>,  <20.542078, 22.203411, 14.814056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.193029, 22.710497, 14.517816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.560455, 22.866772, 14.541830>,  <20.780910, 22.960537, 14.556239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.560455, 22.866772, 14.541830>,  <20.193029, 22.710497, 14.517816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.560455, 22.866772, 14.541830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019402, 0.196268, -0.980358,
		-0.394797, 0.899357, 0.187865,
		0.918564, 0.390687, 0.060037,
		20.836025, 22.983978, 14.559841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.173071, 23.270493, 14.202448>,  <20.193029, 22.710497, 14.517816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.173071, 23.270493, 14.202448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.567329, 23.205254, 14.184994>,  <20.803885, 23.166109, 14.174521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.567329, 23.205254, 14.184994>,  <20.173071, 23.270493, 14.202448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.567329, 23.205254, 14.184994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022096, 0.131614, -0.991055,
		0.167383, 0.977791, 0.126121,
		0.985644, -0.163099, -0.043635,
		20.863022, 23.156324, 14.171903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.322330, 23.507895, 13.566659>,  <20.173071, 23.270493, 14.202448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.322330, 23.507895, 13.566659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.665775, 23.322056, 13.653313>,  <20.871843, 23.210552, 13.705305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.665775, 23.322056, 13.653313>,  <20.322330, 23.507895, 13.566659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.665775, 23.322056, 13.653313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153051, -0.170990, -0.973313,
		0.489242, 0.868856, -0.075707,
		0.858614, -0.464598, 0.216635,
		20.923359, 23.182676, 13.718303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.865618, 23.748116, 13.071494>,  <20.322330, 23.507895, 13.566659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.865618, 23.748116, 13.071494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.997715, 23.400452, 13.218735>,  <21.076973, 23.191853, 13.307079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.997715, 23.400452, 13.218735>,  <20.865618, 23.748116, 13.071494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.997715, 23.400452, 13.218735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164876, -0.330868, -0.929162,
		0.929385, 0.367539, 0.034038,
		0.330241, -0.869161, 0.368102,
		21.096786, 23.139704, 13.329165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.529110, 23.658108, 12.865302>,  <20.865618, 23.748116, 13.071494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.529110, 23.658108, 12.865302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.375278, 23.300167, 12.955933>,  <21.282980, 23.085403, 13.010311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.375278, 23.300167, 12.955933>,  <21.529110, 23.658108, 12.865302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.375278, 23.300167, 12.955933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184451, -0.315000, -0.930996,
		0.904475, -0.316250, 0.286199,
		-0.384580, -0.894852, 0.226577,
		21.259905, 23.031712, 13.023906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.887648, 23.283506, 12.397040>,  <21.529110, 23.658108, 12.865302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.887648, 23.283506, 12.397040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.639175, 22.999603, 12.529931>,  <21.490091, 22.829262, 12.609666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.639175, 22.999603, 12.529931>,  <21.887648, 23.283506, 12.397040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.639175, 22.999603, 12.529931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151101, -0.524462, -0.837919,
		0.768961, -0.470301, 0.433032,
		-0.621182, -0.709759, 0.332228,
		21.452820, 22.786676, 12.629600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.243925, 22.622824, 12.401168>,  <21.887648, 23.283506, 12.397040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.243925, 22.622824, 12.401168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.851009, 22.552975, 12.374002>,  <21.615259, 22.511065, 12.357702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.851009, 22.552975, 12.374002>,  <22.243925, 22.622824, 12.401168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.851009, 22.552975, 12.374002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155284, -0.555906, -0.816612,
		0.104845, -0.812696, 0.573177,
		-0.982290, -0.174623, -0.067915,
		21.556322, 22.500587, 12.353627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.125597, 21.801992, 12.366553>,  <22.243925, 22.622824, 12.401168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.125597, 21.801992, 12.366553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.802299, 21.975811, 12.207599>,  <21.608322, 22.080101, 12.112226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.802299, 21.975811, 12.207599>,  <22.125597, 21.801992, 12.366553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.802299, 21.975811, 12.207599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034680, -0.638552, -0.768797,
		-0.587826, -0.635157, 0.501036,
		-0.808244, 0.434542, -0.397385,
		21.559828, 22.106174, 12.088383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.614504, 21.214479, 12.145369>,  <22.125597, 21.801992, 12.366553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.614504, 21.214479, 12.145369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.516357, 21.553226, 11.956644>,  <21.457470, 21.756475, 11.843410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.516357, 21.553226, 11.956644>,  <21.614504, 21.214479, 12.145369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.516357, 21.553226, 11.956644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098203, -0.505900, -0.856984,
		-0.964443, -0.163942, 0.207296,
		-0.245367, 0.846869, -0.471812,
		21.442747, 21.807287, 11.815101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.164572, 20.984245, 11.648735>,  <21.614504, 21.214479, 12.145369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.164572, 20.984245, 11.648735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.231354, 21.359386, 11.527040>,  <21.271423, 21.584471, 11.454023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.231354, 21.359386, 11.527040>,  <21.164572, 20.984245, 11.648735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.231354, 21.359386, 11.527040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050668, -0.300000, -0.952593,
		-0.984662, 0.174455, -0.002567,
		0.166954, 0.937852, -0.304237,
		21.281441, 21.640741, 11.435769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.726959, 21.086142, 11.165945>,  <21.164572, 20.984245, 11.648735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.726959, 21.086142, 11.165945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.020679, 21.345848, 11.086690>,  <21.196911, 21.501673, 11.039137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.020679, 21.345848, 11.086690>,  <20.726959, 21.086142, 11.165945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.020679, 21.345848, 11.086690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052209, -0.237001, -0.970106,
		-0.676815, 0.722693, -0.140133,
		0.734300, 0.649265, -0.198137,
		21.240969, 21.540628, 11.027249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.183016, 21.609821, 11.123625>,  <20.726959, 21.086142, 11.165945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.183016, 21.609821, 11.123625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.812717, 21.655312, 10.979366>,  <19.590538, 21.682606, 10.892812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.812717, 21.655312, 10.979366>,  <20.183016, 21.609821, 11.123625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.812717, 21.655312, 10.979366> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321407, 0.265851, 0.908857,
		0.199237, 0.957283, -0.209557,
		-0.925744, 0.113725, -0.360645,
		19.534994, 21.689428, 10.871173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.837151, 22.230782, 11.348104>,  <20.183016, 21.609821, 11.123625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.837151, 22.230782, 11.348104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.547279, 21.971443, 11.254732>,  <19.373356, 21.815840, 11.198709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.547279, 21.971443, 11.254732>,  <19.837151, 22.230782, 11.348104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.547279, 21.971443, 11.254732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404528, 0.126036, 0.905799,
		-0.557850, 0.750842, -0.353609,
		-0.724680, -0.648344, -0.233428,
		19.329876, 21.776939, 11.184704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.204138, 22.529455, 11.647943>,  <19.837151, 22.230782, 11.348104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.204138, 22.529455, 11.647943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.093182, 22.149151, 11.592645>,  <19.026608, 21.920969, 11.559465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.093182, 22.149151, 11.592645>,  <19.204138, 22.529455, 11.647943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.093182, 22.149151, 11.592645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.651521, 0.080396, 0.754359,
		-0.706099, 0.299322, -0.641740,
		-0.277389, -0.950759, -0.138247,
		19.009964, 21.863922, 11.551170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.497581, 22.533600, 11.888909>,  <19.204138, 22.529455, 11.647943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.497581, 22.533600, 11.888909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.631302, 22.156624, 11.886129>,  <18.711535, 21.930439, 11.884461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.631302, 22.156624, 11.886129>,  <18.497581, 22.533600, 11.888909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.631302, 22.156624, 11.886129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412851, -0.153068, 0.897844,
		-0.847229, -0.297281, -0.440258,
		0.334302, -0.942441, -0.006951,
		18.731592, 21.873892, 11.884044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.956657, 22.017733, 12.232425>,  <18.497581, 22.533600, 11.888909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.956657, 22.017733, 12.232425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.316406, 21.843376, 12.245840>,  <18.532255, 21.738762, 12.253889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.316406, 21.843376, 12.245840>,  <17.956657, 22.017733, 12.232425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.316406, 21.843376, 12.245840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064116, -0.055624, 0.996391,
		-0.432455, -0.898278, -0.077974,
		0.899373, -0.435894, 0.033539,
		18.586218, 21.712608, 12.255901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.866213, 21.455698, 12.667797>,  <17.956657, 22.017733, 12.232425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.866213, 21.455698, 12.667797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.258789, 21.530849, 12.683187>,  <18.494335, 21.575939, 12.692422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.258789, 21.530849, 12.683187>,  <17.866213, 21.455698, 12.667797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.258789, 21.530849, 12.683187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048158, 0.047245, 0.997722,
		0.185632, -0.981055, 0.055416,
		0.981439, 0.187878, 0.038476,
		18.553221, 21.587212, 12.694730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.184975, 20.935722, 13.139462>,  <17.866213, 21.455698, 12.667797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.184975, 20.935722, 13.139462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.440720, 21.240730, 13.099907>,  <18.594166, 21.423735, 13.076174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.440720, 21.240730, 13.099907>,  <18.184975, 20.935722, 13.139462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.440720, 21.240730, 13.099907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062966, 0.180099, 0.981631,
		0.766325, -0.621389, 0.163161,
		0.639360, 0.762522, -0.098888,
		18.632528, 21.469486, 13.070241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.661865, 20.798952, 13.623592>,  <18.184975, 20.935722, 13.139462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.661865, 20.798952, 13.623592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.660568, 21.189259, 13.536072>,  <18.659790, 21.423443, 13.483560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.660568, 21.189259, 13.536072>,  <18.661865, 20.798952, 13.623592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.660568, 21.189259, 13.536072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002050, 0.218808, 0.975766,
		0.999993, 0.002717, -0.002710,
		-0.003244, 0.975764, -0.218801,
		18.659595, 21.481987, 13.470431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.893929, 21.052687, 14.167496>,  <18.661865, 20.798952, 13.623592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.893929, 21.052687, 14.167496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.791409, 21.408577, 14.016396>,  <18.729897, 21.622112, 13.925735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.791409, 21.408577, 14.016396>,  <18.893929, 21.052687, 14.167496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.791409, 21.408577, 14.016396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118074, 0.359060, 0.925816,
		0.959359, 0.281888, 0.013027,
		-0.256299, 0.889728, -0.377751,
		18.714520, 21.675495, 13.903070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.362751, 21.550070, 14.460981>,  <18.893929, 21.052687, 14.167496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.362751, 21.550070, 14.460981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.027405, 21.730438, 14.338467>,  <18.826197, 21.838659, 14.264958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.027405, 21.730438, 14.338467>,  <19.362751, 21.550070, 14.460981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.027405, 21.730438, 14.338467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113979, 0.404453, 0.907428,
		0.533057, 0.795668, -0.287685,
		-0.838367, 0.450921, -0.306286,
		18.775894, 21.865715, 14.246581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.363567, 22.224470, 14.813097>,  <19.362751, 21.550070, 14.460981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.363567, 22.224470, 14.813097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.978096, 22.165478, 14.724041>,  <18.746813, 22.130081, 14.670608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.978096, 22.165478, 14.724041>,  <19.363567, 22.224470, 14.813097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.978096, 22.165478, 14.724041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263671, 0.393070, 0.880894,
		-0.042404, 0.907604, -0.417681,
		-0.963680, -0.147483, -0.222641,
		18.688992, 22.121233, 14.657248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.044855, 22.697010, 15.228679>,  <19.363567, 22.224470, 14.813097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.044855, 22.697010, 15.228679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.746506, 22.456203, 15.114658>,  <18.567497, 22.311720, 15.046247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.746506, 22.456203, 15.114658>,  <19.044855, 22.697010, 15.228679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.746506, 22.456203, 15.114658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438805, 0.122135, 0.890244,
		-0.501125, 0.789088, -0.355265,
		-0.745871, -0.602015, -0.285051,
		18.522745, 22.275599, 15.029143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.402649, 23.067783, 15.225282>,  <19.044855, 22.697010, 15.228679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.402649, 23.067783, 15.225282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.325890, 22.680569, 15.289881>,  <18.279833, 22.448240, 15.328640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.325890, 22.680569, 15.289881>,  <18.402649, 23.067783, 15.225282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.325890, 22.680569, 15.289881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415619, 0.229232, 0.880178,
		-0.889064, 0.101785, -0.446323,
		-0.191901, -0.968035, 0.161498,
		18.268320, 22.390158, 15.338330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.831333, 23.140011, 15.653903>,  <18.402649, 23.067783, 15.225282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.831333, 23.140011, 15.653903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.936764, 22.759384, 15.717215>,  <18.000021, 22.531008, 15.755201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.936764, 22.759384, 15.717215>,  <17.831333, 23.140011, 15.653903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.936764, 22.759384, 15.717215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357077, 0.056180, 0.932384,
		-0.896116, -0.302271, -0.324974,
		0.263575, -0.951565, 0.158278,
		18.015837, 22.473915, 15.764698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.243551, 22.841776, 16.074207>,  <17.831333, 23.140011, 15.653903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.243551, 22.841776, 16.074207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.560261, 22.606464, 16.139959>,  <17.750286, 22.465277, 16.179411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.560261, 22.606464, 16.139959>,  <17.243551, 22.841776, 16.074207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.560261, 22.606464, 16.139959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264085, -0.087032, 0.960565,
		-0.550774, -0.803961, -0.224265,
		0.791775, -0.588279, 0.164379,
		17.797794, 22.429981, 16.189274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.058054, 22.278666, 16.595480>,  <17.243551, 22.841776, 16.074207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.058054, 22.278666, 16.595480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.457710, 22.295219, 16.595963>,  <17.697504, 22.305151, 16.596252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.457710, 22.295219, 16.595963>,  <17.058054, 22.278666, 16.595480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.457710, 22.295219, 16.595963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006011, -0.173841, 0.984756,
		0.040966, -0.983904, -0.173940,
		0.999143, 0.041386, 0.001208,
		17.757454, 22.307634, 16.596325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.313557, 21.700466, 16.878910>,  <17.058054, 22.278666, 16.595480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.313557, 21.700466, 16.878910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.638103, 21.931225, 16.916588>,  <17.832832, 22.069679, 16.939194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.638103, 21.931225, 16.916588>,  <17.313557, 21.700466, 16.878910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.638103, 21.931225, 16.916588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126743, -0.330936, 0.935103,
		0.570628, -0.746776, -0.341628,
		0.811369, 0.576895, 0.094193,
		17.881514, 22.104294, 16.944845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.666624, 21.327930, 17.304729>,  <17.313557, 21.700466, 16.878910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.666624, 21.327930, 17.304729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.842480, 21.687077, 17.314161>,  <17.947994, 21.902563, 17.319820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.842480, 21.687077, 17.314161>,  <17.666624, 21.327930, 17.304729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.842480, 21.687077, 17.314161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179151, -0.113387, 0.977266,
		0.880125, -0.425422, -0.210703,
		0.439641, 0.897864, 0.023580,
		17.974373, 21.956436, 17.321236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.391512, 21.302839, 17.543425>,  <17.666624, 21.327930, 17.304729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.391512, 21.302839, 17.543425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.274323, 21.674286, 17.634497>,  <18.204008, 21.897154, 17.689140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.274323, 21.674286, 17.634497>,  <18.391512, 21.302839, 17.543425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.274323, 21.674286, 17.634497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267963, -0.148840, 0.951863,
		0.917803, 0.339880, -0.205229,
		-0.292973, 0.928616, 0.227681,
		18.186430, 21.952871, 17.702801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.890333, 21.661303, 17.811373>,  <18.391512, 21.302839, 17.543425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.890333, 21.661303, 17.811373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.569553, 21.854252, 17.952339>,  <18.377085, 21.970020, 18.036919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.569553, 21.854252, 17.952339>,  <18.890333, 21.661303, 17.811373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.569553, 21.854252, 17.952339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308486, -0.170800, 0.935769,
		0.511580, 0.859154, -0.011832,
		-0.801949, 0.482371, 0.352415,
		18.328968, 21.998962, 18.058064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.047171, 21.660742, 18.454592>,  <18.890333, 21.661303, 17.811373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.047171, 21.660742, 18.454592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.665924, 21.781208, 18.442797>,  <18.437176, 21.853487, 18.435720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.665924, 21.781208, 18.442797>,  <19.047171, 21.660742, 18.454592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.665924, 21.781208, 18.442797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126380, -0.307622, 0.943079,
		0.274952, 0.902590, 0.331260,
		-0.953116, 0.301166, -0.029488,
		18.379990, 21.871557, 18.433950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.022923, 21.983118, 19.070831>,  <19.047171, 21.660742, 18.454592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.022923, 21.983118, 19.070831> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.652832, 21.886703, 18.953627>,  <18.430777, 21.828856, 18.883305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.652832, 21.886703, 18.953627>,  <19.022923, 21.983118, 19.070831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.652832, 21.886703, 18.953627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179654, -0.401891, 0.897891,
		-0.334183, 0.883394, 0.328538,
		-0.925228, -0.241036, -0.293011,
		18.375263, 21.814392, 18.865723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.605242, 22.222351, 19.647707>,  <19.022923, 21.983118, 19.070831>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.605242, 22.222351, 19.647707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.357620, 21.974403, 19.454821>,  <18.209047, 21.825636, 19.339088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.357620, 21.974403, 19.454821>,  <18.605242, 22.222351, 19.647707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.357620, 21.974403, 19.454821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323899, -0.357846, 0.875806,
		-0.715444, 0.698362, 0.020752,
		-0.619056, -0.619868, -0.482218,
		18.171904, 21.788443, 19.310156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.862942, 22.338198, 19.887304>,  <18.605242, 22.222351, 19.647707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.862942, 22.338198, 19.887304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.911083, 21.974903, 19.726995>,  <17.939968, 21.756926, 19.630810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.911083, 21.974903, 19.726995>,  <17.862942, 22.338198, 19.887304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.911083, 21.974903, 19.726995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377855, -0.415229, 0.827533,
		-0.918009, 0.051836, -0.393157,
		0.120355, -0.908239, -0.400771,
		17.947189, 21.702431, 19.606764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.226057, 21.943621, 20.172056>,  <17.862942, 22.338198, 19.887304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.226057, 21.943621, 20.172056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.459839, 21.650089, 20.033546>,  <17.600107, 21.473970, 19.950441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.459839, 21.650089, 20.033546>,  <17.226057, 21.943621, 20.172056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.459839, 21.650089, 20.033546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329487, -0.604611, 0.725178,
		-0.741520, -0.309741, -0.595155,
		0.584454, -0.733830, -0.346276,
		17.635176, 21.429941, 19.929665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.870234, 21.370331, 20.294754>,  <17.226057, 21.943621, 20.172056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.870234, 21.370331, 20.294754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.221924, 21.192455, 20.226381>,  <17.432938, 21.085730, 20.185358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.221924, 21.192455, 20.226381>,  <16.870234, 21.370331, 20.294754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.221924, 21.192455, 20.226381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182880, -0.646343, 0.740807,
		-0.439908, -0.620076, -0.649605,
		0.879225, -0.444686, -0.170932,
		17.485691, 21.059050, 20.175102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.762215, 20.631735, 20.165773>,  <16.870234, 21.370331, 20.294754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.762215, 20.631735, 20.165773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.139229, 20.680126, 20.290346>,  <17.365437, 20.709162, 20.365089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.139229, 20.680126, 20.290346>,  <16.762215, 20.631735, 20.165773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.139229, 20.680126, 20.290346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158763, -0.657999, 0.736092,
		0.293974, -0.743237, -0.600981,
		0.942536, 0.120978, 0.311433,
		17.421989, 20.716419, 20.383776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.928541, 19.992094, 20.596197>,  <16.762215, 20.631735, 20.165773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.928541, 19.992094, 20.596197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.236301, 20.233143, 20.680925>,  <17.420958, 20.377771, 20.731762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.236301, 20.233143, 20.680925>,  <16.928541, 19.992094, 20.596197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.236301, 20.233143, 20.680925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193547, -0.535962, 0.821757,
		0.608736, -0.591264, -0.529006,
		0.769403, 0.602620, 0.211822,
		17.467123, 20.413929, 20.744473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.444822, 19.495785, 20.819645>,  <16.928541, 19.992094, 20.596197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.444822, 19.495785, 20.819645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.535942, 19.860710, 20.955759>,  <17.590614, 20.079664, 21.037428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.535942, 19.860710, 20.955759>,  <17.444822, 19.495785, 20.819645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.535942, 19.860710, 20.955759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001435, -0.349789, 0.936828,
		0.973706, -0.212922, -0.080991,
		0.227801, 0.912311, 0.340286,
		17.604282, 20.134403, 21.057844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.932318, 19.335640, 21.289743>,  <17.444822, 19.495785, 20.819645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.932318, 19.335640, 21.289743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.751999, 19.676437, 21.396244>,  <17.643808, 19.880917, 21.460144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.751999, 19.676437, 21.396244>,  <17.932318, 19.335640, 21.289743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.751999, 19.676437, 21.396244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004798, -0.300586, 0.953743,
		0.892615, 0.428665, 0.139591,
		-0.450795, 0.851995, 0.266250,
		17.616760, 19.932035, 21.476120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.390135, 19.666243, 21.780231>,  <17.932318, 19.335640, 21.289743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.390135, 19.666243, 21.780231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.024281, 19.813061, 21.848021>,  <17.804768, 19.901152, 21.888695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.024281, 19.813061, 21.848021>,  <18.390135, 19.666243, 21.780231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.024281, 19.813061, 21.848021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170798, -0.029133, 0.984875,
		0.366430, 0.929747, -0.036045,
		-0.914635, 0.367044, 0.169474,
		17.749889, 19.923174, 21.898863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.449768, 20.049679, 22.412325>,  <18.390135, 19.666243, 21.780231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.449768, 20.049679, 22.412325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.054989, 19.991955, 22.383739>,  <17.818121, 19.957319, 22.366589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.054989, 19.991955, 22.383739>,  <18.449768, 20.049679, 22.412325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.054989, 19.991955, 22.383739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057458, -0.099004, 0.993427,
		-0.150438, 0.984567, 0.089420,
		-0.986948, -0.144311, -0.071465,
		17.758904, 19.948662, 22.362299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.220953, 20.456026, 23.005030>,  <18.449768, 20.049679, 22.412325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.220953, 20.456026, 23.005030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.931332, 20.201797, 22.897846>,  <17.757559, 20.049261, 22.833536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.931332, 20.201797, 22.897846>,  <18.220953, 20.456026, 23.005030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.931332, 20.201797, 22.897846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198857, -0.179641, 0.963424,
		-0.660459, 0.750853, 0.003682,
		-0.724051, -0.635569, -0.267958,
		17.714117, 20.011127, 22.817459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.736713, 20.656179, 23.436674>,  <18.220953, 20.456026, 23.005030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.736713, 20.656179, 23.436674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.633018, 20.286999, 23.322861>,  <17.570801, 20.065491, 23.254574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.633018, 20.286999, 23.322861>,  <17.736713, 20.656179, 23.436674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.633018, 20.286999, 23.322861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262431, -0.216205, 0.940417,
		-0.929476, 0.318463, -0.186162,
		-0.259239, -0.922950, -0.284532,
		17.555246, 20.010113, 23.237501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.141020, 20.599312, 23.836313>,  <17.736713, 20.656179, 23.436674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.141020, 20.599312, 23.836313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.229465, 20.227711, 23.717611>,  <17.282532, 20.004749, 23.646391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.229465, 20.227711, 23.717611>,  <17.141020, 20.599312, 23.836313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.229465, 20.227711, 23.717611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280893, -0.352058, 0.892835,
		-0.933921, -0.114061, -0.338795,
		0.221113, -0.929002, -0.296755,
		17.295799, 19.949011, 23.628584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.543005, 20.165920, 24.079817>,  <17.141020, 20.599312, 23.836313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.543005, 20.165920, 24.079817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.854073, 19.923595, 24.012611>,  <17.040712, 19.778200, 23.972288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.854073, 19.923595, 24.012611>,  <16.543005, 20.165920, 24.079817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.854073, 19.923595, 24.012611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179780, -0.470385, 0.863954,
		-0.602425, -0.641662, -0.474715,
		0.777665, -0.605812, -0.168013,
		17.087372, 19.741852, 23.962208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.343290, 19.446121, 24.289579>,  <16.543005, 20.165920, 24.079817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.343290, 19.446121, 24.289579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.742897, 19.450859, 24.306688>,  <16.982660, 19.453701, 24.316954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.742897, 19.450859, 24.306688>,  <16.343290, 19.446121, 24.289579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.742897, 19.450859, 24.306688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029540, -0.541812, 0.839981,
		0.033123, -0.840416, -0.540928,
		0.999014, 0.011844, 0.042772,
		17.042601, 19.454412, 24.319519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.428101, 18.975115, 24.680349>,  <16.343290, 19.446121, 24.289579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.428101, 18.975115, 24.680349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.806141, 19.103462, 24.705091>,  <17.032965, 19.180471, 24.719936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.806141, 19.103462, 24.705091>,  <16.428101, 18.975115, 24.680349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.806141, 19.103462, 24.705091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069482, -0.382287, 0.921427,
		0.319304, -0.866545, -0.383595,
		0.945101, 0.320868, 0.061856,
		17.089672, 19.199722, 24.723648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.008795, 18.412180, 24.756907>,  <16.428101, 18.975115, 24.680349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.008795, 18.412180, 24.756907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.704812, 18.180008, 24.639898>,  <15.522423, 18.040705, 24.569693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.704812, 18.180008, 24.639898>,  <16.008795, 18.412180, 24.756907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.704812, 18.180008, 24.639898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244509, 0.161698, -0.956070,
		0.602232, -0.798095, 0.019037,
		-0.759956, -0.580430, -0.292521,
		15.476826, 18.005878, 24.552143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.224676, 18.051504, 24.100174>,  <16.008795, 18.412180, 24.756907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.224676, 18.051504, 24.100174> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.826854, 18.021317, 24.071442>,  <15.588160, 18.003204, 24.054203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.826854, 18.021317, 24.071442>,  <16.224676, 18.051504, 24.100174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.826854, 18.021317, 24.071442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064374, 0.096967, -0.993204,
		0.081906, -0.992423, -0.091582,
		-0.994559, -0.075454, -0.071828,
		15.528486, 17.998674, 24.049892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.153887, 17.627264, 23.555586>,  <16.224676, 18.051504, 24.100174>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.153887, 17.627264, 23.555586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.796266, 17.794014, 23.621166>,  <15.581693, 17.894064, 23.660515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.796266, 17.794014, 23.621166>,  <16.153887, 17.627264, 23.555586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.796266, 17.794014, 23.621166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177623, 0.006082, -0.984080,
		-0.411238, -0.908942, 0.068609,
		-0.894055, 0.416877, 0.163951,
		15.528049, 17.919077, 23.670351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.725823, 17.229113, 23.245789>,  <16.153887, 17.627264, 23.555586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.725823, 17.229113, 23.245789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.561631, 17.593044, 23.270182>,  <15.463116, 17.811403, 23.284817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.561631, 17.593044, 23.270182>,  <15.725823, 17.229113, 23.245789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.561631, 17.593044, 23.270182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003849, 0.068604, -0.997637,
		-0.911861, -0.409277, -0.031663,
		-0.410482, 0.909828, 0.060982,
		15.438487, 17.865993, 23.288477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.168885, 17.164824, 22.779602>,  <15.725823, 17.229113, 23.245789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.168885, 17.164824, 22.779602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.274068, 17.544662, 22.847860>,  <15.337177, 17.772566, 22.888815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.274068, 17.544662, 22.847860>,  <15.168885, 17.164824, 22.779602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.274068, 17.544662, 22.847860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002094, 0.176306, -0.984333,
		-0.964805, 0.259195, 0.044372,
		0.262958, 0.949597, 0.170644,
		15.352955, 17.829542, 22.899054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.765786, 17.639820, 22.282858>,  <15.168885, 17.164824, 22.779602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.765786, 17.639820, 22.282858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.055886, 17.882347, 22.413330>,  <15.229946, 18.027863, 22.491613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.055886, 17.882347, 22.413330>,  <14.765786, 17.639820, 22.282858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.055886, 17.882347, 22.413330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084094, 0.392204, -0.916026,
		-0.683332, 0.691777, 0.233458,
		0.725249, 0.606317, 0.326180,
		15.273461, 18.064241, 22.511185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.591705, 18.301577, 21.923101>,  <14.765786, 17.639820, 22.282858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.591705, 18.301577, 21.923101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.971942, 18.279945, 22.045380>,  <15.200084, 18.266966, 22.118746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.971942, 18.279945, 22.045380>,  <14.591705, 18.301577, 21.923101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.971942, 18.279945, 22.045380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302545, 0.382060, -0.873211,
		-0.069573, 0.922554, 0.379544,
		0.950592, -0.054077, 0.305695,
		15.257120, 18.263721, 22.137089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.849162, 18.955612, 21.750362>,  <14.591705, 18.301577, 21.923101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.849162, 18.955612, 21.750362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.186702, 18.746304, 21.797869>,  <15.389225, 18.620718, 21.826372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.186702, 18.746304, 21.797869>,  <14.849162, 18.955612, 21.750362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.186702, 18.746304, 21.797869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392583, 0.451189, -0.801441,
		0.365785, 0.722920, 0.586163,
		0.843848, -0.523273, 0.118768,
		15.439857, 18.589321, 21.833500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.497204, 19.375984, 21.699385>,  <14.849162, 18.955612, 21.750362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.497204, 19.375984, 21.699385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.609714, 19.005100, 21.600458>,  <15.677219, 18.782570, 21.541103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.609714, 19.005100, 21.600458>,  <15.497204, 19.375984, 21.699385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.609714, 19.005100, 21.600458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331457, 0.335730, -0.881715,
		0.900567, 0.166030, 0.401763,
		0.281275, -0.927211, -0.247315,
		15.694096, 18.726936, 21.526264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.143162, 19.569153, 21.366388>,  <15.497204, 19.375984, 21.699385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.143162, 19.569153, 21.366388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.037323, 19.196102, 21.268251>,  <15.973820, 18.972271, 21.209370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.037323, 19.196102, 21.268251>,  <16.143162, 19.569153, 21.366388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.037323, 19.196102, 21.268251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329455, 0.151683, -0.931908,
		0.906338, -0.327409, 0.267124,
		-0.264597, -0.932629, -0.245343,
		15.957944, 18.916313, 21.194649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.760273, 19.214298, 21.122065>,  <16.143162, 19.569153, 21.366388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.760273, 19.214298, 21.122065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.433117, 19.034969, 20.977810>,  <16.236822, 18.927372, 20.891258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.433117, 19.034969, 20.977810>,  <16.760273, 19.214298, 21.122065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.433117, 19.034969, 20.977810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427145, -0.053180, -0.902618,
		0.385487, -0.892288, 0.234995,
		-0.817892, -0.448325, -0.360636,
		16.187750, 18.900473, 20.869619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.081894, 18.930641, 20.495710>,  <16.760273, 19.214298, 21.122065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.081894, 18.930641, 20.495710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.684650, 18.885868, 20.481794>,  <16.446304, 18.859005, 20.473446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.684650, 18.885868, 20.481794>,  <17.081894, 18.930641, 20.495710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.684650, 18.885868, 20.481794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043042, -0.072188, -0.996462,
		0.109024, -0.991090, 0.076508,
		-0.993107, -0.111932, -0.034788,
		16.386719, 18.852289, 20.471357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.897816, 18.313150, 20.007265>,  <17.081894, 18.930641, 20.495710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.897816, 18.313150, 20.007265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.606342, 18.586983, 20.015009>,  <16.431459, 18.751282, 20.019655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.606342, 18.586983, 20.015009>,  <16.897816, 18.313150, 20.007265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.606342, 18.586983, 20.015009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024033, 0.053809, -0.998262,
		-0.684431, -0.726949, -0.055662,
		-0.728681, 0.684580, 0.019358,
		16.387737, 18.792356, 20.020817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.394598, 18.149597, 19.486397>,  <16.897816, 18.313150, 20.007265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.394598, 18.149597, 19.486397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.280983, 18.529369, 19.539921>,  <16.212814, 18.757233, 19.572035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.280983, 18.529369, 19.539921>,  <16.394598, 18.149597, 19.486397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.280983, 18.529369, 19.539921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168884, 0.087838, -0.981714,
		-0.943822, -0.301443, 0.135394,
		-0.284038, 0.949430, 0.133812,
		16.195772, 18.814198, 19.580065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.741267, 18.278351, 19.080931>,  <16.394598, 18.149597, 19.486397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.741267, 18.278351, 19.080931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.929664, 18.627155, 19.134239>,  <16.042702, 18.836439, 19.166225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.929664, 18.627155, 19.134239>,  <15.741267, 18.278351, 19.080931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.929664, 18.627155, 19.134239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110636, 0.208278, -0.971792,
		-0.875173, 0.442960, 0.194573,
		0.470991, 0.872013, 0.133272,
		16.070961, 18.888760, 19.174221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.337841, 18.735371, 18.748795>,  <15.741267, 18.278351, 19.080931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.337841, 18.735371, 18.748795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.698291, 18.905521, 18.782331>,  <15.914560, 19.007612, 18.802454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.698291, 18.905521, 18.782331>,  <15.337841, 18.735371, 18.748795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.698291, 18.905521, 18.782331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001074, 0.191188, -0.981553,
		-0.433561, 0.884590, 0.171827,
		0.901123, 0.425379, 0.083842,
		15.968628, 19.033134, 18.807484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.198365, 19.322641, 18.292282>,  <15.337841, 18.735371, 18.748795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.198365, 19.322641, 18.292282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.590964, 19.337986, 18.367321>,  <15.826524, 19.347193, 18.412344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.590964, 19.337986, 18.367321>,  <15.198365, 19.322641, 18.292282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.590964, 19.337986, 18.367321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161442, 0.361003, -0.918484,
		-0.102959, 0.931775, 0.348129,
		0.981497, 0.038363, 0.187596,
		15.885413, 19.349495, 18.423599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.449446, 19.945065, 18.018251>,  <15.198365, 19.322641, 18.292282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.449446, 19.945065, 18.018251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.786088, 19.730450, 18.043007>,  <15.988073, 19.601681, 18.057859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.786088, 19.730450, 18.043007>,  <15.449446, 19.945065, 18.018251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.786088, 19.730450, 18.043007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285806, 0.345198, -0.893954,
		0.458275, 0.770044, 0.443865,
		0.841605, -0.536536, 0.061887,
		16.038570, 19.569489, 18.061573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.938685, 20.422052, 17.822289>,  <15.449446, 19.945065, 18.018251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.938685, 20.422052, 17.822289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.125668, 20.072025, 17.772099>,  <16.237856, 19.862009, 17.741985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.125668, 20.072025, 17.772099>,  <15.938685, 20.422052, 17.822289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.125668, 20.072025, 17.772099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429824, 0.349012, -0.832731,
		0.772488, 0.335333, 0.539273,
		0.467455, -0.875067, -0.125473,
		16.265903, 19.809505, 17.734457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.634407, 20.602600, 17.529053>,  <15.938685, 20.422052, 17.822289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.634407, 20.602600, 17.529053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.580212, 20.218243, 17.432451>,  <16.547695, 19.987627, 17.374491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.580212, 20.218243, 17.432451>,  <16.634407, 20.602600, 17.529053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.580212, 20.218243, 17.432451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412324, 0.166957, -0.895609,
		0.900906, -0.220923, 0.373579,
		-0.135489, -0.960895, -0.241504,
		16.539564, 19.929974, 17.360001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.157530, 20.533693, 17.020639>,  <16.634407, 20.602600, 17.529053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.157530, 20.533693, 17.020639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.943352, 20.198532, 16.978271>,  <16.814844, 19.997437, 16.952850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.943352, 20.198532, 16.978271>,  <17.157530, 20.533693, 17.020639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.943352, 20.198532, 16.978271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248282, -0.036293, -0.968008,
		0.807251, -0.544613, 0.227469,
		-0.535445, -0.837902, -0.105920,
		16.782719, 19.947161, 16.946495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.638638, 19.992149, 16.647697>,  <17.157530, 20.533693, 17.020639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.638638, 19.992149, 16.647697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.247055, 19.922306, 16.605452>,  <17.012106, 19.880400, 16.580105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.247055, 19.922306, 16.605452>,  <17.638638, 19.992149, 16.647697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.247055, 19.922306, 16.605452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122405, -0.088351, -0.988540,
		0.163275, -0.980666, 0.107864,
		-0.978958, -0.174607, -0.105613,
		16.953367, 19.869925, 16.573767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.663721, 19.652466, 16.155993>,  <17.638638, 19.992149, 16.647697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.663721, 19.652466, 16.155993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.272369, 19.735065, 16.151329>,  <17.037560, 19.784624, 16.148531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.272369, 19.735065, 16.151329>,  <17.663721, 19.652466, 16.155993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.272369, 19.735065, 16.151329> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021756, 0.046696, -0.998672,
		-0.205679, -0.977332, -0.050179,
		-0.978377, 0.206497, -0.011659,
		16.978855, 19.797014, 16.147831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.279360, 19.235754, 15.644163>,  <17.663721, 19.652466, 16.155993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.279360, 19.235754, 15.644163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.009399, 19.527077, 15.691618>,  <16.847424, 19.701870, 15.720091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.009399, 19.527077, 15.691618>,  <17.279360, 19.235754, 15.644163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.009399, 19.527077, 15.691618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041414, 0.123138, -0.991525,
		-0.736745, -0.674095, -0.052944,
		-0.674902, 0.728308, 0.118638,
		16.806929, 19.745569, 15.727209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.661068, 19.133736, 15.175760>,  <17.279360, 19.235754, 15.644163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.661068, 19.133736, 15.175760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.687012, 19.517971, 15.283882>,  <16.702578, 19.748512, 15.348755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.687012, 19.517971, 15.283882>,  <16.661068, 19.133736, 15.175760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.687012, 19.517971, 15.283882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005346, 0.271206, -0.962507,
		-0.997880, 0.060981, 0.022725,
		0.064858, 0.960588, 0.270305,
		16.706469, 19.806147, 15.364974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.030539, 19.509592, 14.855493>,  <16.661068, 19.133736, 15.175760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.030539, 19.509592, 14.855493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.246155, 19.826252, 14.970541>,  <16.375525, 20.016249, 15.039570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.246155, 19.826252, 14.970541>,  <16.030539, 19.509592, 14.855493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.246155, 19.826252, 14.970541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121276, 0.410868, -0.903592,
		-0.833504, 0.452189, 0.317482,
		0.539038, 0.791651, 0.287621,
		16.407866, 20.063747, 15.056828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.622094, 20.097782, 14.733296>,  <16.030539, 19.509592, 14.855493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.622094, 20.097782, 14.733296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.007500, 20.204674, 14.739357>,  <16.238743, 20.268808, 14.742993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.007500, 20.204674, 14.739357>,  <15.622094, 20.097782, 14.733296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.007500, 20.204674, 14.739357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084061, 0.355860, -0.930751,
		-0.254115, 0.895518, 0.365340,
		0.963514, 0.267228, 0.015151,
		16.296555, 20.284842, 14.743902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.647395, 20.749575, 14.456804>,  <15.622094, 20.097782, 14.733296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.647395, 20.749575, 14.456804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.001606, 20.574722, 14.393864>,  <16.214132, 20.469810, 14.356099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.001606, 20.574722, 14.393864>,  <15.647395, 20.749575, 14.456804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.001606, 20.574722, 14.393864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039901, 0.265877, -0.963181,
		0.462873, 0.859200, 0.217999,
		0.885526, -0.437132, -0.157351,
		16.267263, 20.443583, 14.346659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.843768, 21.147743, 13.932765>,  <15.647395, 20.749575, 14.456804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.843768, 21.147743, 13.932765> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.103008, 20.843147, 13.936697>,  <16.258553, 20.660389, 13.939056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.103008, 20.843147, 13.936697>,  <15.843768, 21.147743, 13.932765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.103008, 20.843147, 13.936697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126225, 0.094684, -0.987473,
		0.751021, 0.641222, 0.157484,
		0.648101, -0.761491, 0.009829,
		16.297438, 20.614700, 13.939646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.343309, 21.408764, 13.571909>,  <15.843768, 21.147743, 13.932765>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.343309, 21.408764, 13.571909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.412933, 21.014954, 13.563822>,  <16.454708, 20.778667, 13.558969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.412933, 21.014954, 13.563822>,  <16.343309, 21.408764, 13.571909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.412933, 21.014954, 13.563822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108482, 0.039576, -0.993310,
		0.978741, 0.170702, 0.113692,
		0.174060, -0.984528, -0.020217,
		16.465151, 20.719595, 13.557756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.846931, 21.306023, 13.139819>,  <16.343309, 21.408764, 13.571909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.846931, 21.306023, 13.139819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.668247, 20.949688, 13.172949>,  <16.561037, 20.735888, 13.192826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.668247, 20.949688, 13.172949>,  <16.846931, 21.306023, 13.139819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.668247, 20.949688, 13.172949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110640, -0.146868, -0.982949,
		0.887811, -0.429931, 0.164170,
		-0.446711, -0.890837, 0.082824,
		16.534233, 20.682438, 13.197796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.184532, 20.948931, 12.682191>,  <16.846931, 21.306023, 13.139819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.184532, 20.948931, 12.682191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.843643, 20.751427, 12.751371>,  <16.639109, 20.632923, 12.792879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.843643, 20.751427, 12.751371>,  <17.184532, 20.948931, 12.682191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.843643, 20.751427, 12.751371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152674, -0.081474, -0.984913,
		0.500403, -0.865772, -0.005950,
		-0.852225, -0.493762, 0.172951,
		16.587976, 20.603298, 12.803257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.280588, 20.404737, 12.237679>,  <17.184532, 20.948931, 12.682191>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.280588, 20.404737, 12.237679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.893414, 20.436939, 12.332853>,  <16.661108, 20.456261, 12.389958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.893414, 20.436939, 12.332853>,  <17.280588, 20.404737, 12.237679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.893414, 20.436939, 12.332853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249166, -0.187774, -0.950083,
		-0.031807, -0.978907, 0.201812,
		-0.967938, 0.080504, 0.237937,
		16.603031, 20.461092, 12.404235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.920597, 19.827425, 11.947681>,  <17.280588, 20.404737, 12.237679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.920597, 19.827425, 11.947681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.651493, 20.114258, 12.020549>,  <16.490030, 20.286358, 12.064269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.651493, 20.114258, 12.020549>,  <16.920597, 19.827425, 11.947681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.651493, 20.114258, 12.020549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496745, -0.255317, -0.829492,
		-0.548304, -0.648541, 0.527975,
		-0.672761, 0.717082, 0.182169,
		16.449665, 20.329382, 12.075199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.272230, 19.491690, 11.748780>,  <16.920597, 19.827425, 11.947681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.272230, 19.491690, 11.748780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.207943, 19.885902, 11.727250>,  <16.169371, 20.122431, 11.714332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.207943, 19.885902, 11.727250>,  <16.272230, 19.491690, 11.748780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.207943, 19.885902, 11.727250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429217, -0.118894, -0.895342,
		-0.888787, -0.120793, 0.442116,
		-0.160716, 0.985532, -0.053825,
		16.159727, 20.181562, 11.711102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.603726, 19.561575, 11.629156>,  <16.272230, 19.491690, 11.748780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.603726, 19.561575, 11.629156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.708503, 19.935272, 11.532342>,  <15.771368, 20.159491, 11.474254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.708503, 19.935272, 11.532342>,  <15.603726, 19.561575, 11.629156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.708503, 19.935272, 11.532342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435809, -0.109259, -0.893383,
		-0.861080, 0.339494, 0.378531,
		0.261940, 0.934241, -0.242035,
		15.787085, 20.215544, 11.459731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.000862, 19.846407, 11.403339>,  <15.603726, 19.561575, 11.629156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.000862, 19.846407, 11.403339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.294248, 20.068012, 11.245809>,  <15.470279, 20.200975, 11.151290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.294248, 20.068012, 11.245809>,  <15.000862, 19.846407, 11.403339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.294248, 20.068012, 11.245809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466384, -0.011312, -0.884510,
		-0.494485, 0.832431, 0.250086,
		0.733465, 0.554013, -0.393826,
		15.514287, 20.234217, 11.127661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.601963, 20.280897, 11.111795>,  <15.000862, 19.846407, 11.403339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.601963, 20.280897, 11.111795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.964271, 20.328568, 10.949127>,  <15.181655, 20.357170, 10.851526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.964271, 20.328568, 10.949127>,  <14.601963, 20.280897, 11.111795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.964271, 20.328568, 10.949127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423578, 0.283645, -0.860306,
		0.012824, 0.951495, 0.307396,
		0.905769, 0.119174, -0.406670,
		15.236001, 20.364319, 10.827127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.649177, 20.929541, 10.612599>,  <14.601963, 20.280897, 11.111795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.649177, 20.929541, 10.612599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.931691, 20.664040, 10.514139>,  <15.101200, 20.504738, 10.455063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.931691, 20.664040, 10.514139>,  <14.649177, 20.929541, 10.612599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.931691, 20.664040, 10.514139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294431, 0.040786, -0.954802,
		0.643793, 0.746838, -0.166623,
		0.706287, -0.663754, -0.246150,
		15.143578, 20.464914, 10.440294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.840364, 21.122087, 9.889142>,  <14.649177, 20.929541, 10.612599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.840364, 21.122087, 9.889142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.961528, 20.742126, 9.919941>,  <15.034226, 20.514149, 9.938420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.961528, 20.742126, 9.919941>,  <14.840364, 21.122087, 9.889142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.961528, 20.742126, 9.919941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115068, -0.116655, -0.986484,
		0.946047, 0.289957, -0.144639,
		0.302911, -0.949903, 0.076996,
		15.052402, 20.457155, 9.943040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.220801, 20.885088, 9.384854>,  <14.840364, 21.122087, 9.889142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.220801, 20.885088, 9.384854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.109506, 20.512970, 9.480463>,  <15.042728, 20.289700, 9.537828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.109506, 20.512970, 9.480463>,  <15.220801, 20.885088, 9.384854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.109506, 20.512970, 9.480463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030816, -0.240073, -0.970266,
		0.960017, -0.277331, 0.038129,
		-0.278239, -0.930297, 0.239021,
		15.026033, 20.233881, 9.552169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.716683, 20.335567, 9.148227>,  <15.220801, 20.885088, 9.384854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.716683, 20.335567, 9.148227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.336106, 20.213009, 9.160090>,  <15.107760, 20.139473, 9.167209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.336106, 20.213009, 9.160090>,  <15.716683, 20.335567, 9.148227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.336106, 20.213009, 9.160090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003716, -0.084907, -0.996382,
		0.307806, -0.948110, 0.079645,
		-0.951442, -0.306397, 0.029658,
		15.050673, 20.121090, 9.168988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.634262, 19.786654, 8.689229>,  <15.716683, 20.335567, 9.148227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.634262, 19.786654, 8.689229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.281028, 19.974331, 8.690967>,  <15.069087, 20.086937, 8.692009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.281028, 19.974331, 8.690967>,  <15.634262, 19.786654, 8.689229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.281028, 19.974331, 8.690967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146524, -0.266958, -0.952504,
		-0.445749, -0.841779, 0.304495,
		-0.883085, 0.469193, 0.004345,
		15.016102, 20.115089, 8.692270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.093155, 19.356359, 8.464611>,  <15.634262, 19.786654, 8.689229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.093155, 19.356359, 8.464611> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.968003, 19.729473, 8.393037>,  <14.892913, 19.953342, 8.350092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.968003, 19.729473, 8.393037>,  <15.093155, 19.356359, 8.464611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.968003, 19.729473, 8.393037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367871, -0.292702, -0.882608,
		-0.875659, -0.210323, 0.434725,
		-0.312878, 0.932786, -0.178935,
		14.874140, 20.009310, 8.339356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.302361, 19.228159, 8.397126>,  <15.093155, 19.356359, 8.464611>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.302361, 19.228159, 8.397126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.434775, 19.553604, 8.205942>,  <14.514224, 19.748871, 8.091231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.434775, 19.553604, 8.205942>,  <14.302361, 19.228159, 8.397126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.434775, 19.553604, 8.205942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280189, -0.398922, -0.873129,
		-0.901060, 0.422957, 0.095907,
		0.331037, 0.813614, -0.477961,
		14.534086, 19.797688, 8.062554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.846176, 19.673302, 8.161900>,  <14.302361, 19.228159, 8.397126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.846176, 19.673302, 8.161900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.190660, 19.621300, 7.965362>,  <14.397349, 19.590097, 7.847439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.190660, 19.621300, 7.965362>,  <13.846176, 19.673302, 8.161900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.190660, 19.621300, 7.965362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475566, -0.547210, -0.688766,
		-0.179324, 0.826837, -0.533088,
		0.861208, -0.130006, -0.491344,
		14.449022, 19.582298, 7.817958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.944785, 19.938854, 8.909098>,  <13.846176, 19.673302, 8.161900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.944785, 19.938854, 8.909098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.045770, 20.248184, 8.676468>,  <14.106360, 20.433783, 8.536890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.045770, 20.248184, 8.676468>,  <13.944785, 19.938854, 8.909098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.045770, 20.248184, 8.676468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267966, -0.521659, -0.809979,
		-0.929762, 0.360331, 0.075526,
		0.252462, 0.773326, -0.581576,
		14.121509, 20.480183, 8.501995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.434068, 20.237507, 8.515515>,  <13.944785, 19.938854, 8.909098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.434068, 20.237507, 8.515515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.762094, 20.347969, 8.315022>,  <13.958909, 20.414246, 8.194727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.762094, 20.347969, 8.315022>,  <13.434068, 20.237507, 8.515515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.762094, 20.347969, 8.315022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340402, -0.468678, -0.815148,
		-0.460024, 0.839094, -0.290343,
		0.820064, 0.276154, -0.501233,
		14.008113, 20.430815, 8.164653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.276952, 20.632998, 7.927959>,  <13.434068, 20.237507, 8.515515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.276952, 20.632998, 7.927959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.597835, 20.401279, 7.870162>,  <13.790364, 20.262249, 7.835484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.597835, 20.401279, 7.870162>,  <13.276952, 20.632998, 7.927959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.597835, 20.401279, 7.870162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474143, -0.471057, -0.743837,
		0.362837, 0.665222, -0.652555,
		0.802208, -0.579296, -0.144494,
		13.838497, 20.227491, 7.826814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.479150, 20.553059, 7.163870>,  <13.276952, 20.632998, 7.927959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.479150, 20.553059, 7.163870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.567510, 20.225067, 7.375092>,  <13.620525, 20.028273, 7.501824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.567510, 20.225067, 7.375092>,  <13.479150, 20.553059, 7.163870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.567510, 20.225067, 7.375092> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476621, -0.563133, -0.675066,
		0.850903, -0.102559, -0.515215,
		0.220900, -0.819978, 0.528053,
		13.633780, 19.979074, 7.533507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.854960, 20.062630, 6.801248>,  <13.479150, 20.553059, 7.163870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.854960, 20.062630, 6.801248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.621909, 19.884140, 7.072963>,  <13.482079, 19.777046, 7.235991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.621909, 19.884140, 7.072963>,  <13.854960, 20.062630, 6.801248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.621909, 19.884140, 7.072963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475599, -0.490563, -0.730173,
		0.659053, -0.748488, 0.073592,
		-0.582627, -0.446222, 0.679287,
		13.447121, 19.750273, 7.276749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.947402, 19.350193, 6.970048>,  <13.854960, 20.062630, 6.801248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.947402, 19.350193, 6.970048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.561399, 19.437096, 7.028780>,  <13.329797, 19.489237, 7.064019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.561399, 19.437096, 7.028780>,  <13.947402, 19.350193, 6.970048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.561399, 19.437096, 7.028780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238867, -0.497324, -0.834033,
		-0.108178, -0.839921, 0.531817,
		-0.965008, 0.217258, 0.146830,
		13.271896, 19.502274, 7.072829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.361305, 18.918365, 6.967730>,  <13.947402, 19.350193, 6.970048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.361305, 18.918365, 6.967730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.247882, 19.234158, 6.749990>,  <13.179828, 19.423632, 6.619345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.247882, 19.234158, 6.749990>,  <13.361305, 18.918365, 6.967730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.247882, 19.234158, 6.749990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025099, -0.561346, -0.827200,
		-0.958627, -0.248222, 0.139359,
		-0.283558, 0.789478, -0.544352,
		13.162814, 19.471001, 6.586684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.611245, 18.442499, 7.458859>,  <13.361305, 18.918365, 6.967730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.611245, 18.442499, 7.458859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.709556, 18.078812, 7.324448>,  <13.768541, 17.860600, 7.243801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.709556, 18.078812, 7.324448>,  <13.611245, 18.442499, 7.458859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.709556, 18.078812, 7.324448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179288, -0.383320, 0.906047,
		-0.952602, -0.162438, -0.257223,
		0.245776, -0.909219, -0.336028,
		13.783288, 17.806046, 7.223639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.213450, 18.070515, 7.839414>,  <13.611245, 18.442499, 7.458859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.213450, 18.070515, 7.839414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.494645, 17.808384, 7.728884>,  <13.663362, 17.651106, 7.662565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.494645, 17.808384, 7.728884>,  <13.213450, 18.070515, 7.839414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.494645, 17.808384, 7.728884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108975, -0.483199, 0.868702,
		-0.702804, -0.580573, -0.411097,
		0.702986, -0.655327, -0.276326,
		13.705542, 17.611786, 7.645986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.063445, 17.268881, 7.943889>,  <13.213450, 18.070515, 7.839414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.063445, 17.268881, 7.943889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.454761, 17.341190, 7.984427>,  <13.689550, 17.384577, 8.008751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.454761, 17.341190, 7.984427>,  <13.063445, 17.268881, 7.943889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.454761, 17.341190, 7.984427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085121, -0.095377, 0.991795,
		0.188957, -0.978889, -0.077919,
		0.978289, 0.180774, 0.101346,
		13.748247, 17.395422, 8.014832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.943598, 17.116026, 8.638783>,  <13.063445, 17.268881, 7.943889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.943598, 17.116026, 8.638783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.029153, 16.777313, 8.443964>,  <13.080485, 16.574085, 8.327072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.029153, 16.777313, 8.443964>,  <12.943598, 17.116026, 8.638783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.029153, 16.777313, 8.443964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377173, -0.531510, 0.758444,
		-0.901107, 0.021481, -0.433065,
		0.213886, -0.846780, -0.487049,
		13.093319, 16.523279, 8.297850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.533880, 17.260601, 9.258644>,  <12.943598, 17.116026, 8.638783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.533880, 17.260601, 9.258644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.757396, 17.470882, 9.002085>,  <12.891505, 17.597052, 8.848149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.757396, 17.470882, 9.002085>,  <12.533880, 17.260601, 9.258644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.757396, 17.470882, 9.002085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.645960, 0.760937, 0.060913,
		0.520086, 0.380280, 0.764786,
		0.558789, 0.525701, -0.641399,
		12.925033, 17.628593, 8.809665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.878474, 17.993319, 9.564181>,  <12.533880, 17.260601, 9.258644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.878474, 17.993319, 9.564181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.728770, 17.895535, 9.206372>,  <12.638947, 17.836864, 8.991687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.728770, 17.895535, 9.206372>,  <12.878474, 17.993319, 9.564181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.728770, 17.895535, 9.206372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.769403, 0.620320, 0.152388,
		0.517637, 0.745280, -0.420249,
		-0.374261, -0.244459, -0.894522,
		12.616492, 17.822197, 8.938016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.786845, 18.613697, 9.045723>,  <12.878474, 17.993319, 9.564181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.786845, 18.613697, 9.045723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.501348, 18.334648, 9.020754>,  <12.330050, 18.167219, 9.005773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.501348, 18.334648, 9.020754>,  <12.786845, 18.613697, 9.045723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.501348, 18.334648, 9.020754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.686654, 0.679368, 0.258776,
		-0.138118, 0.227563, -0.963918,
		-0.713743, -0.697620, -0.062424,
		12.287225, 18.125362, 9.002027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.134165, 18.870434, 8.679482>,  <12.786845, 18.613697, 9.045723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.134165, 18.870434, 8.679482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.103629, 18.604267, 8.976504>,  <12.085308, 18.444567, 9.154718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.103629, 18.604267, 8.976504>,  <12.134165, 18.870434, 8.679482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.103629, 18.604267, 8.976504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.655143, 0.594880, 0.465730,
		-0.751638, -0.450928, -0.481357,
		-0.076339, -0.665418, 0.742557,
		12.080728, 18.404642, 9.199271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.377538, 18.737621, 8.984262>,  <12.134165, 18.870434, 8.679482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.377538, 18.737621, 8.984262> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.570008, 18.617470, 9.313683>,  <11.685491, 18.545380, 9.511335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.570008, 18.617470, 9.313683>,  <11.377538, 18.737621, 8.984262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.570008, 18.617470, 9.313683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.853555, 0.053563, 0.518242,
		-0.199781, -0.952315, -0.230617,
		0.481178, -0.300379, 0.823554,
		11.714361, 18.527355, 9.560749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.986942, 18.093225, 9.211159>,  <11.377538, 18.737621, 8.984262>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.986942, 18.093225, 9.211159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.195512, 18.315746, 9.469971>,  <11.320653, 18.449259, 9.625258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.195512, 18.315746, 9.469971>,  <10.986942, 18.093225, 9.211159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.195512, 18.315746, 9.469971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.720892, -0.118512, 0.682839,
		0.456544, -0.822487, 0.339238,
		0.521423, 0.556300, 0.647030,
		11.351938, 18.482635, 9.664080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.160146, 17.744333, 9.933020>,  <10.986942, 18.093225, 9.211159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.160146, 17.744333, 9.933020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.146924, 18.140808, 9.984326>,  <11.138991, 18.378693, 10.015111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.146924, 18.140808, 9.984326>,  <11.160146, 17.744333, 9.933020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.146924, 18.140808, 9.984326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.645879, -0.119124, 0.754089,
		0.762724, -0.057920, 0.644126,
		-0.033054, 0.991189, 0.128268,
		11.137008, 18.438164, 10.022807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.208229, 18.007927, 10.705563>,  <11.160146, 17.744333, 9.933020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.208229, 18.007927, 10.705563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.036988, 18.308899, 10.505332>,  <10.934244, 18.489483, 10.385194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.036988, 18.308899, 10.505332>,  <11.208229, 18.007927, 10.705563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.036988, 18.308899, 10.505332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.682350, 0.094064, 0.724948,
		0.592560, 0.651921, 0.473151,
		-0.428102, 0.752430, -0.500577,
		10.908558, 18.534628, 10.355159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.988082, 18.644527, 11.137217>,  <11.208229, 18.007927, 10.705563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.988082, 18.644527, 11.137217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.731595, 18.622768, 10.831045>,  <10.577703, 18.609713, 10.647343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.731595, 18.622768, 10.831045>,  <10.988082, 18.644527, 11.137217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.731595, 18.622768, 10.831045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.766895, 0.080096, 0.636755,
		0.026670, 0.995302, -0.093075,
		-0.641218, -0.054396, -0.765428,
		10.539229, 18.606449, 10.601417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.524244, 19.099331, 11.212526>,  <10.988082, 18.644527, 11.137217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.524244, 19.099331, 11.212526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.336722, 18.797535, 11.028800>,  <10.224210, 18.616457, 10.918564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.336722, 18.797535, 11.028800>,  <10.524244, 19.099331, 11.212526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.336722, 18.797535, 11.028800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.749812, 0.065052, 0.658445,
		-0.466909, 0.653082, -0.596221,
		-0.468804, -0.754488, -0.459316,
		10.196081, 18.571188, 10.891006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.861056, 19.294418, 11.258737>,  <10.524244, 19.099331, 11.212526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.861056, 19.294418, 11.258737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.819308, 18.905365, 11.175701>,  <9.794259, 18.671932, 11.125880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.819308, 18.905365, 11.175701>,  <9.861056, 19.294418, 11.258737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.819308, 18.905365, 11.175701> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.797474, -0.042874, 0.601828,
		-0.594257, 0.228359, -0.771175,
		-0.104370, -0.972633, -0.207588,
		9.787997, 18.613575, 11.113424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.062264, 19.149763, 11.465242>,  <9.861056, 19.294418, 11.258737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.062264, 19.149763, 11.465242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.236989, 18.790604, 11.443414>,  <9.341824, 18.575108, 11.430317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.236989, 18.790604, 11.443414>,  <9.062264, 19.149763, 11.465242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.236989, 18.790604, 11.443414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.652861, -0.358171, 0.667448,
		-0.618845, -0.255921, -0.742654,
		0.436811, -0.897897, -0.054571,
		9.368032, 18.521235, 11.427043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.591949, 18.671761, 11.261236>,  <9.062264, 19.149763, 11.465242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.591949, 18.671761, 11.261236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.862647, 18.462090, 11.468022>,  <9.025066, 18.336287, 11.592093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.862647, 18.462090, 11.468022>,  <8.591949, 18.671761, 11.261236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.862647, 18.462090, 11.468022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.736002, -0.498629, 0.457899,
		0.017754, -0.690369, -0.723240,
		0.676747, -0.524176, 0.516965,
		9.065671, 18.304836, 11.623112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.441136, 17.883608, 11.257078>,  <8.591949, 18.671761, 11.261236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.441136, 17.883608, 11.257078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.631522, 17.979477, 11.595549>,  <8.745753, 18.036999, 11.798631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.631522, 17.979477, 11.595549>,  <8.441136, 17.883608, 11.257078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.631522, 17.979477, 11.595549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.661014, -0.537148, 0.523958,
		0.580102, -0.808720, -0.097235,
		0.475964, 0.239675, 0.846176,
		8.774311, 18.051380, 11.849401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.584221, 17.267445, 11.655293>,  <8.441136, 17.883608, 11.257078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.584221, 17.267445, 11.655293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.561334, 17.592239, 11.887639>,  <8.547601, 17.787117, 12.027046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.561334, 17.592239, 11.887639>,  <8.584221, 17.267445, 11.655293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.561334, 17.592239, 11.887639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.795121, -0.388910, 0.465330,
		0.603745, -0.435232, 0.667881,
		-0.057219, 0.811987, 0.580864,
		8.544168, 17.835835, 12.061898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.419877, 17.031822, 12.375710>,  <8.584221, 17.267445, 11.655293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.419877, 17.031822, 12.375710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.267451, 17.385731, 12.268403>,  <8.175996, 17.598076, 12.204019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.267451, 17.385731, 12.268403>,  <8.419877, 17.031822, 12.375710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.267451, 17.385731, 12.268403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.919701, -0.333087, 0.207853,
		0.094546, 0.325932, 0.940653,
		-0.381065, 0.884772, -0.268268,
		8.153131, 17.651163, 12.187922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.141495, 17.407787, 12.979136>,  <8.419877, 17.031822, 12.375710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.141495, 17.407787, 12.979136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.945273, 17.520691, 12.649364>,  <7.827540, 17.588434, 12.451500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.945273, 17.520691, 12.649364>,  <8.141495, 17.407787, 12.979136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.945273, 17.520691, 12.649364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.856277, -0.331692, 0.395941,
		-0.161699, 0.900172, 0.404406,
		-0.490553, 0.282261, -0.824431,
		7.798108, 17.605370, 12.402034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.594982, 17.731775, 13.182726>,  <8.141495, 17.407787, 12.979136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.594982, 17.731775, 13.182726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.500314, 17.599945, 12.817132>,  <7.443513, 17.520847, 12.597775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.500314, 17.599945, 12.817132>,  <7.594982, 17.731775, 13.182726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.500314, 17.599945, 12.817132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.838656, -0.405664, 0.363445,
		-0.490554, 0.852535, -0.180394,
		-0.236669, -0.329578, -0.913984,
		7.429313, 17.501072, 12.542937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<18.883257, 15.927857, 18.669476> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.155571, 16.220837, 18.666697>,  <19.318960, 16.396624, 18.665030>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.155571, 16.220837, 18.666697>,  <18.883257, 15.927857, 18.669476>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.155571, 16.220837, 18.666697> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196863, 0.173827, -0.964899,
		-0.705531, 0.658258, 0.262531,
		0.680787, 0.732449, -0.006946,
		19.359808, 16.440571, 18.664612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.567341, 16.469255, 18.309168>,  <18.883257, 15.927857, 18.669476>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.567341, 16.469255, 18.309168> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.964500, 16.512989, 18.290400>,  <19.202795, 16.539228, 18.279139>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.964500, 16.512989, 18.290400>,  <18.567341, 16.469255, 18.309168>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.964500, 16.512989, 18.290400> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074414, 0.262989, -0.961925,
		-0.092830, 0.958584, 0.269257,
		0.992897, 0.109332, -0.046919,
		19.262369, 16.545788, 18.276323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.658018, 17.164900, 17.972963>,  <18.567341, 16.469255, 18.309168>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.658018, 17.164900, 17.972963> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.995872, 16.951653, 17.953472>,  <19.198586, 16.823704, 17.941776>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.995872, 16.951653, 17.953472>,  <18.658018, 17.164900, 17.972963>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.995872, 16.951653, 17.953472> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107113, 0.257482, -0.960328,
		0.524513, 0.805909, 0.274583,
		0.844638, -0.533116, -0.048729,
		19.249264, 16.791718, 17.938854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.180599, 17.602705, 17.558020>,  <18.658018, 17.164900, 17.972963>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.180599, 17.602705, 17.558020> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.309582, 17.224106, 17.552851>,  <19.386972, 16.996946, 17.549749>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.309582, 17.224106, 17.552851>,  <19.180599, 17.602705, 17.558020>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.309582, 17.224106, 17.552851> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179888, 0.074676, -0.980849,
		0.929334, 0.313957, 0.194343,
		0.322457, -0.946496, -0.012922,
		19.406319, 16.940157, 17.548975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.713230, 17.661039, 17.158731>,  <19.180599, 17.602705, 17.558020>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.713230, 17.661039, 17.158731> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.664749, 17.264191, 17.146084>,  <19.635660, 17.026081, 17.138494>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.664749, 17.264191, 17.146084>,  <19.713230, 17.661039, 17.158731>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.664749, 17.264191, 17.146084> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137539, 0.014763, -0.990386,
		0.983053, -0.124387, 0.134666,
		-0.121203, -0.992124, -0.031621,
		19.628387, 16.966553, 17.136597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.310656, 17.422119, 16.861982>,  <19.713230, 17.661039, 17.158731>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.310656, 17.422119, 16.861982> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.035267, 17.140137, 16.793814>,  <19.870033, 16.970947, 16.752913>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.035267, 17.140137, 16.793814>,  <20.310656, 17.422119, 16.861982>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.035267, 17.140137, 16.793814> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182713, 0.058810, -0.981406,
		0.701873, -0.706806, 0.088316,
		-0.688470, -0.704958, -0.170420,
		19.828726, 16.928650, 16.742687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.673979, 16.926537, 16.403864>,  <20.310656, 17.422119, 16.861982>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.673979, 16.926537, 16.403864> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.280266, 16.869926, 16.361610>,  <20.044039, 16.835960, 16.336258>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.280266, 16.869926, 16.361610>,  <20.673979, 16.926537, 16.403864>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.280266, 16.869926, 16.361610> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083239, 0.155753, -0.984283,
		0.155753, -0.977605, -0.141525,
		0.984283, 0.141525, 0.105634,
		19.984982, 16.827469, 16.329920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.625439, 16.539804, 15.740216>,  <20.673979, 16.926537, 16.403864>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.625439, 16.539804, 15.740216> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.253242, 16.679989, 15.782860>,  <20.029924, 16.764099, 15.808446>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.253242, 16.679989, 15.782860>,  <20.625439, 16.539804, 15.740216>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.253242, 16.679989, 15.782860> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000772, 0.292901, -0.956142,
		-0.366317, -0.889598, -0.272812,
		-0.930490, 0.350461, 0.106608,
		19.974096, 16.785128, 15.814842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.139442, 16.227011, 15.197096>,  <20.625439, 16.539804, 15.740216>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.139442, 16.227011, 15.197096> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.009594, 16.583401, 15.324081>,  <19.931684, 16.797235, 15.400272>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.009594, 16.583401, 15.324081>,  <20.139442, 16.227011, 15.197096>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.009594, 16.583401, 15.324081> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185475, 0.269159, -0.945067,
		-0.927480, -0.365672, 0.077878,
		-0.324623, 0.890975, 0.317463,
		19.912207, 16.850693, 15.419320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.511641, 16.338867, 14.732908>,  <20.139442, 16.227011, 15.197096>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.511641, 16.338867, 14.732908> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.620483, 16.707085, 14.845022>,  <19.685789, 16.928015, 14.912291>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.620483, 16.707085, 14.845022>,  <19.511641, 16.338867, 14.732908>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.620483, 16.707085, 14.845022> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105379, 0.318029, -0.942206,
		-0.956480, 0.226843, 0.183544,
		0.272105, 0.920543, 0.280284,
		19.702114, 16.983248, 14.929108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.004213, 16.840828, 14.563830>,  <19.511641, 16.338867, 14.732908>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.004213, 16.840828, 14.563830> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.343781, 17.052231, 14.565424>,  <19.547522, 17.179073, 14.566381>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.343781, 17.052231, 14.565424>,  <19.004213, 16.840828, 14.563830>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.343781, 17.052231, 14.565424> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243205, 0.397322, -0.884866,
		-0.469241, 0.750211, 0.465830,
		0.848920, 0.528507, 0.003984,
		19.598457, 17.210783, 14.566619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.762604, 17.482786, 14.484467>,  <19.004213, 16.840828, 14.563830>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.762604, 17.482786, 14.484467> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.145744, 17.485397, 14.369587>,  <19.375628, 17.486965, 14.300659>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.145744, 17.485397, 14.369587>,  <18.762604, 17.482786, 14.484467>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.145744, 17.485397, 14.369587> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269991, 0.361982, -0.892230,
		0.098135, 0.932163, 0.348487,
		0.957849, 0.006530, -0.287198,
		19.433100, 17.487356, 14.283427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.746759, 18.098761, 14.087685>,  <18.762604, 17.482786, 14.484467>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.746759, 18.098761, 14.087685> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.088963, 17.913208, 13.995668>,  <19.294285, 17.801876, 13.940458>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.088963, 17.913208, 13.995668>,  <18.746759, 18.098761, 14.087685>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.088963, 17.913208, 13.995668> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013731, 0.423795, -0.905654,
		0.517606, 0.777954, 0.356191,
		0.855509, -0.463881, -0.230041,
		19.345615, 17.774044, 13.926657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.105375, 18.512125, 13.788415>,  <18.746759, 18.098761, 14.087685>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.105375, 18.512125, 13.788415> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.278797, 18.179516, 13.649506>,  <19.382851, 17.979950, 13.566160>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.278797, 18.179516, 13.649506>,  <19.105375, 18.512125, 13.788415>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.278797, 18.179516, 13.649506> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152727, 0.311995, -0.937728,
		0.888090, 0.459594, 0.008271,
		0.433555, -0.831524, -0.347272,
		19.408863, 17.930059, 13.545324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.522078, 18.749069, 13.266369>,  <19.105375, 18.512125, 13.788415>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.522078, 18.749069, 13.266369> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.464283, 18.356964, 13.212387>,  <19.429605, 18.121702, 13.179997>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.464283, 18.356964, 13.212387>,  <19.522078, 18.749069, 13.266369>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.464283, 18.356964, 13.212387> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295272, 0.172885, -0.939641,
		0.944425, -0.095916, -0.314423,
		-0.144486, -0.980261, -0.134955,
		19.420937, 18.062885, 13.171901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.924406, 18.464344, 12.642381>,  <19.522078, 18.749069, 13.266369>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.924406, 18.464344, 12.642381> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.611019, 18.224270, 12.706822>,  <19.422987, 18.080225, 12.745487>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.611019, 18.224270, 12.706822>,  <19.924406, 18.464344, 12.642381>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.611019, 18.224270, 12.706822> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366652, 0.237140, -0.899628,
		0.501740, -0.763899, -0.405851,
		-0.783469, -0.600185, 0.161103,
		19.375978, 18.044214, 12.755154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.937735, 18.174824, 12.098003>,  <19.924406, 18.464344, 12.642381>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.937735, 18.174824, 12.098003> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.575928, 18.077217, 12.237891>,  <19.358843, 18.018652, 12.321824>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.575928, 18.077217, 12.237891>,  <19.937735, 18.174824, 12.098003>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.575928, 18.077217, 12.237891> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409339, 0.266938, -0.872460,
		0.119541, -0.932309, -0.341335,
		-0.904517, -0.244016, 0.349720,
		19.304573, 18.004011, 12.342807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.551785, 17.801571, 11.532735>,  <19.937735, 18.174824, 12.098003>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.551785, 17.801571, 11.532735> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.251530, 17.893894, 11.780372>,  <19.071377, 17.949287, 11.928953>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.251530, 17.893894, 11.780372>,  <19.551785, 17.801571, 11.532735>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.251530, 17.893894, 11.780372> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.605834, 0.133459, -0.784317,
		-0.263650, -0.963803, 0.039652,
		-0.750635, 0.230808, 0.619091,
		19.026339, 17.963137, 11.966099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.953150, 17.447824, 11.212915>,  <19.551785, 17.801571, 11.532735>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.953150, 17.447824, 11.212915> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.799885, 17.730213, 11.451171>,  <18.707926, 17.899647, 11.594125>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.799885, 17.730213, 11.451171>,  <18.953150, 17.447824, 11.212915>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.799885, 17.730213, 11.451171> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.620920, 0.280553, -0.731948,
		-0.683845, -0.650301, 0.330855,
		-0.383164, 0.705974, 0.595640,
		18.684935, 17.942005, 11.629863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.288456, 17.352238, 11.101761>,  <18.953150, 17.447824, 11.212915>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.288456, 17.352238, 11.101761> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.317638, 17.722157, 11.251120>,  <18.335148, 17.944109, 11.340735>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.317638, 17.722157, 11.251120>,  <18.288456, 17.352238, 11.101761>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.317638, 17.722157, 11.251120> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.613065, 0.336892, -0.714602,
		-0.786657, -0.176783, 0.591540,
		0.072956, 0.924798, 0.373397,
		18.339525, 17.999596, 11.363139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.567823, 17.646915, 11.048809>,  <18.288456, 17.352238, 11.101761>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.567823, 17.646915, 11.048809> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.792797, 17.972633, 11.106215>,  <17.927780, 18.168064, 11.140659>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.792797, 17.972633, 11.106215>,  <17.567823, 17.646915, 11.048809>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.792797, 17.972633, 11.106215> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429274, 0.435914, -0.791013,
		-0.706677, 0.383283, 0.594728,
		0.562432, 0.814292, 0.143517,
		17.961527, 18.216921, 11.149271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.154930, 18.163975, 11.077333>,  <17.567823, 17.646915, 11.048809>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.154930, 18.163975, 11.077333> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.505550, 18.319256, 10.963520>,  <17.715921, 18.412424, 10.895232>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.505550, 18.319256, 10.963520>,  <17.154930, 18.163975, 11.077333>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.505550, 18.319256, 10.963520> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475388, 0.605824, -0.637952,
		-0.075278, 0.694460, 0.715582,
		0.876549, 0.388203, -0.284533,
		17.768515, 18.435717, 10.878160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.478851, 18.426697, 11.366830>,  <17.154930, 18.163975, 11.077333>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.478851, 18.426697, 11.366830> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.257072, 18.198441, 11.124522>,  <16.124004, 18.061487, 10.979137>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.257072, 18.198441, 11.124522>,  <16.478851, 18.426697, 11.366830>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.257072, 18.198441, 11.124522> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394619, -0.460589, 0.795068,
		-0.732710, 0.679871, 0.030186,
		-0.554447, -0.570643, -0.605769,
		16.090738, 18.027248, 10.942792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.811954, 18.334818, 11.622500>,  <16.478851, 18.426697, 11.366830>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.811954, 18.334818, 11.622500> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.819005, 18.018456, 11.377827>,  <15.823236, 17.828638, 11.231022>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.819005, 18.018456, 11.377827>,  <15.811954, 18.334818, 11.622500>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.819005, 18.018456, 11.377827> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387443, -0.569383, 0.725045,
		-0.921725, 0.224214, -0.316466,
		0.017626, -0.790905, -0.611685,
		15.824293, 17.781183, 11.194321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.240376, 17.968454, 11.811004>,  <15.811954, 18.334818, 11.622500>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.240376, 17.968454, 11.811004> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.470098, 17.699223, 11.624610>,  <15.607930, 17.537683, 11.512774>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.470098, 17.699223, 11.624610>,  <15.240376, 17.968454, 11.811004>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.470098, 17.699223, 11.624610> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232585, -0.679913, 0.695430,
		-0.784907, -0.291007, -0.547025,
		0.574304, -0.673077, -0.465985,
		15.642388, 17.497299, 11.484815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.805360, 17.403603, 11.661504>,  <15.240376, 17.968454, 11.811004>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.805360, 17.403603, 11.661504> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.187963, 17.291931, 11.695341>,  <15.417524, 17.224928, 11.715644>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.187963, 17.291931, 11.695341>,  <14.805360, 17.403603, 11.661504>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.187963, 17.291931, 11.695341> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276313, -0.774109, 0.569567,
		-0.093524, -0.568169, -0.817580,
		0.956506, -0.279176, 0.084594,
		15.474915, 17.208178, 11.720719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.762997, 16.670160, 11.744558>,  <14.805360, 17.403603, 11.661504>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.762997, 16.670160, 11.744558> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.139976, 16.768414, 11.835296>,  <15.366163, 16.827366, 11.889738>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.139976, 16.768414, 11.835296>,  <14.762997, 16.670160, 11.744558>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.139976, 16.768414, 11.835296> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057612, -0.549007, 0.833830,
		0.329354, -0.798910, -0.503259,
		0.942447, 0.245631, 0.226844,
		15.422709, 16.842102, 11.903349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.905084, 16.142210, 12.149578>,  <14.762997, 16.670160, 11.744558>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.905084, 16.142210, 12.149578> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.201678, 16.402866, 12.213528>,  <15.379635, 16.559261, 12.251898>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.201678, 16.402866, 12.213528>,  <14.905084, 16.142210, 12.149578>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.201678, 16.402866, 12.213528> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111862, -0.354997, 0.928151,
		0.661577, -0.670328, -0.336120,
		0.741487, 0.651642, 0.159874,
		15.424125, 16.598358, 12.261490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.348536, 15.773031, 12.627887>,  <14.905084, 16.142210, 12.149578>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.348536, 15.773031, 12.627887> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.441546, 16.158791, 12.678278>,  <15.497353, 16.390245, 12.708512>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.441546, 16.158791, 12.678278>,  <15.348536, 15.773031, 12.627887>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.441546, 16.158791, 12.678278> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078222, -0.147651, 0.985941,
		0.969440, -0.219401, -0.109770,
		0.232524, 0.964398, 0.125977,
		15.511304, 16.448111, 12.716071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.876439, 15.759861, 13.096809>,  <15.348536, 15.773031, 12.627887>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.876439, 15.759861, 13.096809> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.760541, 16.141785, 13.123297>,  <15.691002, 16.370939, 13.139190>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.760541, 16.141785, 13.123297>,  <15.876439, 15.759861, 13.096809>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.760541, 16.141785, 13.123297> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320623, 0.031641, 0.946678,
		0.901803, 0.295528, -0.315302,
		-0.289746, 0.954810, 0.066219,
		15.673617, 16.428228, 13.143163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.396397, 16.182499, 13.350005>,  <15.876439, 15.759861, 13.096809>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.396397, 16.182499, 13.350005> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.056179, 16.364216, 13.455982>,  <15.852049, 16.473248, 13.519568>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.056179, 16.364216, 13.455982>,  <16.396397, 16.182499, 13.350005>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.056179, 16.364216, 13.455982> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368567, 0.155546, 0.916495,
		0.375148, 0.877167, -0.299737,
		-0.850542, 0.454295, 0.264942,
		15.801016, 16.500504, 13.535464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.614845, 16.683512, 13.776982>,  <16.396397, 16.182499, 13.350005>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.614845, 16.683512, 13.776982> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.221062, 16.675247, 13.846741>,  <15.984792, 16.670288, 13.888596>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.221062, 16.675247, 13.846741>,  <16.614845, 16.683512, 13.776982>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.221062, 16.675247, 13.846741> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164571, 0.238074, 0.957203,
		-0.061296, 0.971027, -0.230973,
		-0.984459, -0.020662, 0.174396,
		15.925724, 16.669048, 13.899059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.514477, 17.203444, 14.223779>,  <16.614845, 16.683512, 13.776982>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.514477, 17.203444, 14.223779> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.181293, 16.984032, 14.252882>,  <15.981383, 16.852385, 14.270344>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.181293, 16.984032, 14.252882>,  <16.514477, 17.203444, 14.223779>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.181293, 16.984032, 14.252882> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056824, 0.215591, 0.974829,
		-0.550411, 0.807857, -0.210748,
		-0.832958, -0.548532, 0.072758,
		15.931406, 16.819471, 14.274710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.950164, 17.592253, 14.534686>,  <16.514477, 17.203444, 14.223779>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.950164, 17.592253, 14.534686> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.866860, 17.206161, 14.597885>,  <15.816878, 16.974506, 14.635805>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.866860, 17.206161, 14.597885>,  <15.950164, 17.592253, 14.534686>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.866860, 17.206161, 14.597885> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019484, 0.157414, 0.987340,
		-0.977879, 0.208701, -0.013976,
		-0.208259, -0.965228, 0.157998,
		15.804382, 16.916594, 14.645285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.440403, 17.505735, 15.166554>,  <15.950164, 17.592253, 14.534686>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.440403, 17.505735, 15.166554> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.648236, 17.168877, 15.108837>,  <15.772936, 16.966761, 15.074206>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.648236, 17.168877, 15.108837>,  <15.440403, 17.505735, 15.166554>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.648236, 17.168877, 15.108837> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176173, -0.059657, 0.982550,
		-0.836060, -0.535937, 0.117367,
		0.519583, -0.842148, -0.144294,
		15.804111, 16.916233, 15.065549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.286490, 17.202597, 15.721058>,  <15.440403, 17.505735, 15.166554>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.286490, 17.202597, 15.721058> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.595418, 16.993160, 15.577183>,  <15.780775, 16.867498, 15.490858>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.595418, 16.993160, 15.577183>,  <15.286490, 17.202597, 15.721058>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.595418, 16.993160, 15.577183> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261468, -0.254016, 0.931188,
		-0.578928, -0.813221, -0.059279,
		0.772319, -0.523591, -0.359688,
		15.827114, 16.836082, 15.469276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.317726, 16.595993, 16.112206>,  <15.286490, 17.202597, 15.721058>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.317726, 16.595993, 16.112206> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.677636, 16.639687, 15.943220>,  <15.893582, 16.665903, 15.841829>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.677636, 16.639687, 15.943220>,  <15.317726, 16.595993, 16.112206>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.677636, 16.639687, 15.943220> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435254, -0.293394, 0.851160,
		-0.030970, -0.949730, -0.311534,
		0.899775, 0.109236, -0.422461,
		15.947569, 16.672457, 15.816482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.691308, 16.001032, 16.262724>,  <15.317726, 16.595993, 16.112206>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.691308, 16.001032, 16.262724> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.973214, 16.275326, 16.189978>,  <16.142359, 16.439901, 16.146330>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.973214, 16.275326, 16.189978>,  <15.691308, 16.001032, 16.262724>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.973214, 16.275326, 16.189978> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487703, -0.282128, 0.826166,
		0.515220, -0.670950, -0.533268,
		0.704765, 0.685734, -0.181866,
		16.184645, 16.481047, 16.135418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.231173, 15.634295, 16.321093>,  <15.691308, 16.001032, 16.262724>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.231173, 15.634295, 16.321093> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.359821, 16.007576, 16.385208>,  <16.437012, 16.231544, 16.423677>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.359821, 16.007576, 16.385208>,  <16.231173, 15.634295, 16.321093>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.359821, 16.007576, 16.385208> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349775, -0.274402, 0.895746,
		0.879896, -0.232028, -0.414665,
		0.321623, 0.933202, 0.160288,
		16.456308, 16.287537, 16.433294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.908552, 15.620937, 16.567080>,  <16.231173, 15.634295, 16.321093>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.908552, 15.620937, 16.567080> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.798943, 15.988350, 16.681068>,  <16.733177, 16.208797, 16.749462>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.798943, 15.988350, 16.681068>,  <16.908552, 15.620937, 16.567080>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.798943, 15.988350, 16.681068> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474973, -0.128398, 0.870583,
		0.836248, 0.373916, -0.401093,
		-0.274025, 0.918532, 0.284973,
		16.716736, 16.263910, 16.766560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<17.493282, 15.725179, 17.047447> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.204636, 15.991901, 17.121895>,  <17.031448, 16.151936, 17.166563>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.204636, 15.991901, 17.121895>,  <17.493282, 15.725179, 17.047447>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.204636, 15.991901, 17.121895> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111660, -0.153219, 0.981864,
		0.683230, 0.729310, 0.036110,
		-0.721616, 0.666806, 0.186119,
		16.988152, 16.191944, 17.177731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.796741, 16.208992, 17.456158>,  <17.493282, 15.725179, 17.047447>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.796741, 16.208992, 17.456158> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.406563, 16.218937, 17.543688>,  <17.172455, 16.224905, 17.596207>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.406563, 16.218937, 17.543688>,  <17.796741, 16.208992, 17.456158>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.406563, 16.218937, 17.543688> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213663, -0.134065, 0.967665,
		0.053397, 0.990660, 0.125461,
		-0.975447, 0.024864, 0.218826,
		17.113928, 16.226397, 17.609335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.760309, 16.589443, 18.036659>,  <17.796741, 16.208992, 17.456158>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.760309, 16.589443, 18.036659> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.401478, 16.412704, 18.034830>,  <17.186178, 16.306662, 18.033733>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.401478, 16.412704, 18.034830>,  <17.760309, 16.589443, 18.036659>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.401478, 16.412704, 18.034830> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115727, -0.244917, 0.962613,
		-0.426448, 0.863010, 0.270844,
		-0.897079, -0.441848, -0.004571,
		17.132355, 16.280149, 18.033459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.577515, 16.779211, 18.629122>,  <17.760309, 16.589443, 18.036659>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.577515, 16.779211, 18.629122> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.312458, 16.488781, 18.555674>,  <17.153423, 16.314522, 18.511604>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.312458, 16.488781, 18.555674>,  <17.577515, 16.779211, 18.629122>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.312458, 16.488781, 18.555674> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007878, -0.238406, 0.971134,
		-0.748894, 0.644962, 0.152258,
		-0.662643, -0.726076, -0.183622,
		17.113665, 16.270958, 18.500587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.046227, 16.962719, 18.998146>,  <17.577515, 16.779211, 18.629122>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.046227, 16.962719, 18.998146> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.055199, 16.568851, 18.928953>,  <17.060581, 16.332531, 18.887438>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.055199, 16.568851, 18.928953>,  <17.046227, 16.962719, 18.998146>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.055199, 16.568851, 18.928953> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085248, -0.170511, 0.981661,
		-0.996107, -0.036766, 0.080117,
		0.022431, -0.984670, -0.172981,
		17.061928, 16.273451, 18.877058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.571268, 16.720011, 19.437128>,  <17.046227, 16.962719, 18.998146>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.571268, 16.720011, 19.437128> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.760231, 16.384121, 19.330027>,  <16.873608, 16.182587, 19.265766>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.760231, 16.384121, 19.330027>,  <16.571268, 16.720011, 19.437128>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.760231, 16.384121, 19.330027> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147362, -0.374765, 0.915334,
		-0.868976, -0.392951, -0.300784,
		0.472405, -0.839727, -0.267756,
		16.901953, 16.132202, 19.249701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.140537, 16.089619, 19.596357>,  <16.571268, 16.720011, 19.437128>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.140537, 16.089619, 19.596357> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.519016, 15.960918, 19.582571>,  <16.746103, 15.883698, 19.574299>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.519016, 15.960918, 19.582571>,  <16.140537, 16.089619, 19.596357>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.519016, 15.960918, 19.582571> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143225, -0.511924, 0.847007,
		-0.290166, -0.796499, -0.530464,
		0.946198, -0.321749, -0.034464,
		16.802876, 15.864393, 19.572231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.152575, 15.388842, 19.748978>,  <16.140537, 16.089619, 19.596357>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.152575, 15.388842, 19.748978> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.540684, 15.470284, 19.801308>,  <16.773550, 15.519149, 19.832705>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.540684, 15.470284, 19.801308>,  <16.152575, 15.388842, 19.748978>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.540684, 15.470284, 19.801308> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022457, -0.462487, 0.886342,
		0.240968, -0.862932, -0.444166,
		0.970273, 0.203605, 0.130823,
		16.831766, 15.531364, 19.840555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.609728, 14.799486, 19.889830>,  <16.152575, 15.388842, 19.748978>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.609728, 14.799486, 19.889830> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.811119, 15.108925, 20.043741>,  <16.931953, 15.294588, 20.136089>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.811119, 15.108925, 20.043741>,  <16.609728, 14.799486, 19.889830>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.811119, 15.108925, 20.043741> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064372, -0.410521, 0.909576,
		0.861606, -0.482722, -0.156891,
		0.503480, 0.773596, 0.384781,
		16.962164, 15.341003, 20.159176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.048052, 14.445335, 20.327845>,  <16.609728, 14.799486, 19.889830>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.048052, 14.445335, 20.327845> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.055000, 14.822426, 20.461090>,  <17.059170, 15.048680, 20.541037>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.055000, 14.822426, 20.461090>,  <17.048052, 14.445335, 20.327845>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.055000, 14.822426, 20.461090> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058938, -0.333551, 0.940888,
		0.998110, 0.003291, -0.061356,
		0.017369, 0.942726, 0.333114,
		17.060211, 15.105244, 20.561024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.356203, 14.393155, 20.912891>,  <17.048052, 14.445335, 20.327845>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.356203, 14.393155, 20.912891> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.198452, 14.753128, 20.987282>,  <17.103802, 14.969112, 21.031916>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.198452, 14.753128, 20.987282>,  <17.356203, 14.393155, 20.912891>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.198452, 14.753128, 20.987282> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128034, -0.254215, 0.958635,
		0.909985, 0.354253, 0.215479,
		-0.394378, 0.899933, 0.185975,
		17.080139, 15.023108, 21.043074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.657625, 14.597603, 21.602875>,  <17.356203, 14.393155, 20.912891>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.657625, 14.597603, 21.602875> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.363930, 14.863762, 21.548998>,  <17.187714, 15.023458, 21.516672>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.363930, 14.863762, 21.548998>,  <17.657625, 14.597603, 21.602875>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.363930, 14.863762, 21.548998> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130318, 0.056572, 0.989857,
		0.666268, 0.744342, 0.045176,
		-0.734237, 0.665398, -0.134693,
		17.143660, 15.063381, 21.508591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.842712, 15.198850, 21.975840>,  <17.657625, 14.597603, 21.602875>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.842712, 15.198850, 21.975840> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.443878, 15.202862, 21.945599>,  <17.204576, 15.205269, 21.927454>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.443878, 15.202862, 21.945599>,  <17.842712, 15.198850, 21.975840>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.443878, 15.202862, 21.945599> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074784, 0.065766, 0.995029,
		0.014951, 0.997785, -0.064824,
		-0.997088, 0.010029, -0.075601,
		17.144753, 15.205871, 21.922918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.655638, 15.648381, 22.393475>,  <17.842712, 15.198850, 21.975840>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.655638, 15.648381, 22.393475> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.314472, 15.445816, 22.342741>,  <17.109774, 15.324277, 22.312300>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.314472, 15.445816, 22.342741>,  <17.655638, 15.648381, 22.393475>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.314472, 15.445816, 22.342741> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207937, 0.106689, 0.972306,
		-0.478856, 0.855666, -0.196298,
		-0.852912, -0.506412, -0.126836,
		17.058599, 15.293892, 22.304689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.146883, 16.127096, 22.597311>,  <17.655638, 15.648381, 22.393475>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.146883, 16.127096, 22.597311> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.004406, 15.757771, 22.654749>,  <16.918921, 15.536176, 22.689213>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.004406, 15.757771, 22.654749>,  <17.146883, 16.127096, 22.597311>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.004406, 15.757771, 22.654749> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305565, 0.260323, 0.915894,
		-0.883039, 0.282356, -0.374857,
		-0.356192, -0.923313, 0.143597,
		16.897549, 15.480777, 22.697828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.559385, 16.236652, 23.035128>,  <17.146883, 16.127096, 22.597311>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.559385, 16.236652, 23.035128> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.615868, 15.841431, 23.059828>,  <16.649757, 15.604299, 23.074648>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.615868, 15.841431, 23.059828>,  <16.559385, 16.236652, 23.035128>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.615868, 15.841431, 23.059828> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327447, 0.012251, 0.944790,
		-0.934258, -0.153633, -0.321805,
		0.141208, -0.988052, 0.061753,
		16.658230, 15.545015, 23.078354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.941502, 15.913589, 23.344883>,  <16.559385, 16.236652, 23.035128>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.941502, 15.913589, 23.344883> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.248741, 15.667870, 23.417175>,  <16.433084, 15.520438, 23.460550>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.248741, 15.667870, 23.417175>,  <15.941502, 15.913589, 23.344883>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.248741, 15.667870, 23.417175> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362133, -0.183959, 0.913794,
		-0.528094, -0.767332, -0.363756,
		0.768099, -0.614297, 0.180729,
		16.479172, 15.483581, 23.471394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.691112, 15.322446, 23.520899>,  <15.941502, 15.913589, 23.344883>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.691112, 15.322446, 23.520899> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.065971, 15.297428, 23.658209>,  <16.290888, 15.282417, 23.740595>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.065971, 15.297428, 23.658209>,  <15.691112, 15.322446, 23.520899>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.065971, 15.297428, 23.658209> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348636, -0.127711, 0.928516,
		-0.014231, -0.989838, -0.141489,
		0.937150, -0.062542, 0.343276,
		16.347116, 15.278665, 23.761190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.576385, 15.025408, 24.073135>,  <15.691112, 15.322446, 23.520899>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.576385, 15.025408, 24.073135> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.943833, 15.164780, 24.147686>,  <16.164303, 15.248403, 24.192415>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.943833, 15.164780, 24.147686>,  <15.576385, 15.025408, 24.073135>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.943833, 15.164780, 24.147686> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271580, 0.214113, 0.938296,
		0.287026, -0.912552, 0.291315,
		0.918619, 0.348431, 0.186375,
		16.219419, 15.269308, 24.203598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.775008, 14.788376, 24.820751>,  <15.576385, 15.025408, 24.073135>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.775008, 14.788376, 24.820751> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.040283, 15.077457, 24.742897>,  <16.199448, 15.250906, 24.696184>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.040283, 15.077457, 24.742897>,  <15.775008, 14.788376, 24.820751>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.040283, 15.077457, 24.742897> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050758, 0.302880, 0.951676,
		0.746731, -0.621260, 0.237549,
		0.663186, 0.722703, -0.194636,
		16.239239, 15.294269, 24.684505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.437891, 14.624878, 25.323086>,  <15.775008, 14.788376, 24.820751>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.437891, 14.624878, 25.323086> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.427296, 15.006683, 25.204290>,  <16.420938, 15.235766, 25.133013>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.427296, 15.006683, 25.204290>,  <16.437891, 14.624878, 25.323086>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.427296, 15.006683, 25.204290> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000455, 0.297106, 0.954845,
		0.999649, 0.025158, -0.008305,
		-0.026490, 0.954513, -0.296990,
		16.419350, 15.293037, 25.115194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.051914, 14.889615, 25.701796>,  <16.437891, 14.624878, 25.323086>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.051914, 14.889615, 25.701796> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.801678, 15.184319, 25.599171>,  <16.651535, 15.361140, 25.537596>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.801678, 15.184319, 25.599171>,  <17.051914, 14.889615, 25.701796>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.801678, 15.184319, 25.599171> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093920, 0.255347, 0.962277,
		0.774477, 0.626088, -0.090547,
		-0.625591, 0.736758, -0.256562,
		16.614000, 15.405346, 25.522202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.123604, 15.489667, 26.153015>,  <17.051914, 14.889615, 25.701796>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.123604, 15.489667, 26.153015> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.759689, 15.507900, 25.987991>,  <16.541340, 15.518840, 25.888977>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.759689, 15.507900, 25.987991>,  <17.123604, 15.489667, 26.153015>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.759689, 15.507900, 25.987991> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354885, 0.430073, 0.830117,
		0.215271, 0.901642, -0.375099,
		-0.909789, 0.045583, -0.412561,
		16.486753, 15.521575, 25.864223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.951101, 16.201679, 26.069624>,  <17.123604, 15.489667, 26.153015>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.951101, 16.201679, 26.069624> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.630398, 15.967175, 26.116060>,  <16.437975, 15.826471, 26.143921>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.630398, 15.967175, 26.116060>,  <16.951101, 16.201679, 26.069624>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.630398, 15.967175, 26.116060> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238710, 0.492213, 0.837104,
		-0.547904, 0.643445, -0.534584,
		-0.801759, -0.586264, 0.116089,
		16.389870, 15.791295, 26.150887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.667652, 16.352684, 26.275200>,  <16.951101, 16.201679, 26.069624>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.667652, 16.352684, 26.275200> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.943920, 16.583492, 26.449566>,  <18.109682, 16.721977, 26.554186>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.943920, 16.583492, 26.449566>,  <17.667652, 16.352684, 26.275200>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.943920, 16.583492, 26.449566> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421947, 0.167997, -0.890919,
		-0.587311, 0.799265, -0.127441,
		0.690671, 0.577020, 0.435914,
		18.151121, 16.756598, 26.580339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.672775, 16.925362, 25.917957>,  <17.667652, 16.352684, 26.275200>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.672775, 16.925362, 25.917957> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.039825, 16.909515, 26.076143>,  <18.260056, 16.900007, 26.171055>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.039825, 16.909515, 26.076143>,  <17.672775, 16.925362, 25.917957>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.039825, 16.909515, 26.076143> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395960, 0.176987, -0.901050,
		-0.034295, 0.983416, 0.178095,
		0.917627, -0.039617, 0.395463,
		18.315113, 16.897631, 26.194782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.063051, 17.456078, 25.650654>,  <17.672775, 16.925362, 25.917957>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.063051, 17.456078, 25.650654> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.315784, 17.169388, 25.768702>,  <18.467424, 16.997374, 25.839529>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.315784, 17.169388, 25.768702>,  <18.063051, 17.456078, 25.650654>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.315784, 17.169388, 25.768702> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484382, 0.067866, -0.872221,
		0.605112, 0.694048, 0.390048,
		0.631834, -0.716723, 0.295117,
		18.505335, 16.954370, 25.857237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.627184, 17.776770, 25.624510>,  <18.063051, 17.456078, 25.650654>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.627184, 17.776770, 25.624510> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.725136, 17.389462, 25.604553>,  <18.783907, 17.157078, 25.592579>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.725136, 17.389462, 25.604553>,  <18.627184, 17.776770, 25.624510>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.725136, 17.389462, 25.604553> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.592017, 0.190080, -0.783189,
		0.767822, 0.162248, 0.619778,
		0.244879, -0.968269, -0.049894,
		18.798599, 17.098980, 25.589584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.413996, 17.737316, 25.374504>,  <18.627184, 17.776770, 25.624510>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.413996, 17.737316, 25.374504> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.251812, 17.377575, 25.309055>,  <19.154503, 17.161730, 25.269787>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.251812, 17.377575, 25.309055>,  <19.413996, 17.737316, 25.374504>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.251812, 17.377575, 25.309055> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499938, -0.068317, -0.863362,
		0.765288, -0.431857, 0.477320,
		-0.405458, -0.899351, -0.163619,
		19.130175, 17.107769, 25.259970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.992950, 17.310539, 25.059490>,  <19.413996, 17.737316, 25.374504>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.992950, 17.310539, 25.059490> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.661041, 17.127598, 24.931551>,  <19.461895, 17.017832, 24.854788>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.661041, 17.127598, 24.931551>,  <19.992950, 17.310539, 25.059490>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.661041, 17.127598, 24.931551> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404839, -0.098768, -0.909038,
		0.384163, -0.883782, 0.267111,
		-0.829773, -0.457356, -0.319847,
		19.412109, 16.990391, 24.835596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.261185, 16.917185, 24.484932>,  <19.992950, 17.310539, 25.059490>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.261185, 16.917185, 24.484932> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.863438, 16.891743, 24.451023>,  <19.624790, 16.876478, 24.430677>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.863438, 16.891743, 24.451023>,  <20.261185, 16.917185, 24.484932>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.863438, 16.891743, 24.451023> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100762, -0.319489, -0.942217,
		0.032846, -0.945453, 0.324099,
		-0.994368, -0.063605, -0.084772,
		19.565126, 16.872662, 24.425591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.118776, 16.327242, 23.991957>,  <20.261185, 16.917185, 24.484932>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.118776, 16.327242, 23.991957> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.795071, 16.561337, 24.012323>,  <19.600847, 16.701794, 24.024544>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.795071, 16.561337, 24.012323>,  <20.118776, 16.327242, 23.991957>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.795071, 16.561337, 24.012323> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194052, -0.184510, -0.963483,
		-0.554470, -0.789592, 0.262883,
		-0.809264, 0.585235, 0.050916,
		19.552292, 16.736906, 24.027597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.649881, 15.976436, 23.632017>,  <20.118776, 16.327242, 23.991957>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.649881, 15.976436, 23.632017> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.538380, 16.358299, 23.590214>,  <19.471479, 16.587418, 23.565132>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.538380, 16.358299, 23.590214>,  <19.649881, 15.976436, 23.632017>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.538380, 16.358299, 23.590214> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231442, -0.172394, -0.957452,
		-0.932057, -0.242706, 0.269004,
		-0.278755, 0.954659, -0.104509,
		19.454754, 16.644697, 23.558861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.045004, 15.893115, 23.331432>,  <19.649881, 15.976436, 23.632017>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.045004, 15.893115, 23.331432> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.207241, 16.251259, 23.257866>,  <19.304583, 16.466145, 23.213726>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.207241, 16.251259, 23.257866>,  <19.045004, 15.893115, 23.331432>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.207241, 16.251259, 23.257866> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132521, -0.141481, -0.981031,
		-0.904396, 0.422272, 0.061270,
		0.405594, 0.895360, -0.183915,
		19.328918, 16.519867, 23.202692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.572083, 16.128714, 22.767378>,  <19.045004, 15.893115, 23.331432>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.572083, 16.128714, 22.767378> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.855999, 16.410473, 22.765377>,  <19.026348, 16.579529, 22.764177>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.855999, 16.410473, 22.765377>,  <18.572083, 16.128714, 22.767378>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.855999, 16.410473, 22.765377> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017957, 0.010996, -0.999778,
		-0.704185, 0.709722, 0.020454,
		0.709790, 0.704396, -0.005001,
		19.068935, 16.621792, 22.763876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.375250, 16.689573, 22.413973>,  <18.572083, 16.128714, 22.767378>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.375250, 16.689573, 22.413973> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.773312, 16.728302, 22.407164>,  <19.012150, 16.751539, 22.403078>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.773312, 16.728302, 22.407164>,  <18.375250, 16.689573, 22.413973>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.773312, 16.728302, 22.407164> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037795, 0.216944, -0.975452,
		-0.090752, 0.971370, 0.219553,
		0.995156, 0.096822, -0.017025,
		19.071859, 16.757349, 22.402056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.459873, 17.273949, 22.020418>,  <18.375250, 16.689573, 22.413973>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.459873, 17.273949, 22.020418> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.812588, 17.086681, 21.997534>,  <19.024216, 16.974321, 21.983803>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.812588, 17.086681, 21.997534>,  <18.459873, 17.273949, 22.020418>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.812588, 17.086681, 21.997534> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009500, 0.103645, -0.994569,
		0.471555, 0.877540, 0.086945,
		0.881785, -0.468168, -0.057211,
		19.077124, 16.946232, 21.980370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.953169, 17.733507, 21.559975>,  <18.459873, 17.273949, 22.020418>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.953169, 17.733507, 21.559975> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.081982, 17.354820, 21.561712>,  <19.159269, 17.127607, 21.562756>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.081982, 17.354820, 21.561712>,  <18.953169, 17.733507, 21.559975>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.081982, 17.354820, 21.561712> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146941, 0.045447, -0.988101,
		0.935256, 0.318840, 0.153747,
		0.322033, -0.946718, 0.004346,
		19.178591, 17.070805, 21.563017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.446182, 17.761848, 21.075109>,  <18.953169, 17.733507, 21.559975>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.446182, 17.761848, 21.075109> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.399216, 17.365784, 21.105555>,  <19.371037, 17.128145, 21.123821>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.399216, 17.365784, 21.105555>,  <19.446182, 17.761848, 21.075109>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.399216, 17.365784, 21.105555> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250690, -0.103713, -0.962496,
		0.960921, -0.093930, 0.260401,
		-0.117414, -0.990162, 0.076113,
		19.363991, 17.068735, 21.128387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.090569, 17.469271, 20.842388>,  <19.446182, 17.761848, 21.075109>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.090569, 17.469271, 20.842388> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.798286, 17.204670, 20.774874>,  <19.622917, 17.045910, 20.734365>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.798286, 17.204670, 20.774874>,  <20.090569, 17.469271, 20.842388>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.798286, 17.204670, 20.774874> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335695, -0.132867, -0.932553,
		0.594459, -0.738080, 0.319149,
		-0.730703, -0.661501, -0.168786,
		19.579075, 17.006220, 20.724237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.359547, 16.985611, 20.367931>,  <20.090569, 17.469271, 20.842388>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.359547, 16.985611, 20.367931> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.967564, 16.925976, 20.315081>,  <19.732374, 16.890194, 20.283371>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.967564, 16.925976, 20.315081>,  <20.359547, 16.985611, 20.367931>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.967564, 16.925976, 20.315081> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163828, -0.225787, -0.960302,
		0.113339, -0.962701, 0.245686,
		-0.979957, -0.149090, -0.132127,
		19.673576, 16.881248, 20.275442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.297346, 16.307211, 20.017012>,  <20.359547, 16.985611, 20.367931>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.297346, 16.307211, 20.017012> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.950333, 16.488010, 19.933987>,  <19.742125, 16.596489, 19.884171>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.950333, 16.488010, 19.933987>,  <20.297346, 16.307211, 20.017012>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.950333, 16.488010, 19.933987> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051209, -0.333930, -0.941206,
		-0.494735, -0.827157, 0.266549,
		-0.867534, 0.451998, -0.207564,
		19.690073, 16.623610, 19.871717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.957794, 15.821898, 19.659197>,  <20.297346, 16.307211, 20.017012>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.957794, 15.821898, 19.659197> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.787392, 16.167595, 19.552164>,  <19.685150, 16.375013, 19.487944>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.787392, 16.167595, 19.552164>,  <19.957794, 15.821898, 19.659197>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.787392, 16.167595, 19.552164> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038882, -0.278001, -0.959793,
		-0.903884, -0.419283, 0.084827,
		-0.426007, 0.864244, -0.267583,
		19.659590, 16.426868, 19.471889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.440990, 15.692441, 19.065449>,  <19.957794, 15.821898, 19.659197>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.440990, 15.692441, 19.065449> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.518623, 16.084740, 19.056816>,  <19.565203, 16.320120, 19.051636>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.518623, 16.084740, 19.056816>,  <19.440990, 15.692441, 19.065449>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.518623, 16.084740, 19.056816> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193109, 0.016626, -0.981036,
		-0.961790, 0.194570, 0.192618,
		0.194083, 0.980748, -0.021582,
		19.576849, 16.378963, 19.050341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<15.478662, 15.678461, 14.750698> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.582358, 16.064289, 14.731104>,  <15.644577, 16.295786, 14.719347>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.582358, 16.064289, 14.731104>,  <15.478662, 15.678461, 14.750698>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.582358, 16.064289, 14.731104> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333445, 0.041787, -0.941843,
		-0.906426, 0.260500, 0.332464,
		0.259243, 0.964569, -0.048985,
		15.660131, 16.353661, 14.716409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.839711, 16.090391, 14.592664>,  <15.478662, 15.678461, 14.750698>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.839711, 16.090391, 14.592664> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.168527, 16.292824, 14.488255>,  <15.365816, 16.414284, 14.425609>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.168527, 16.292824, 14.488255>,  <14.839711, 16.090391, 14.592664>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.168527, 16.292824, 14.488255> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337829, 0.064432, -0.938999,
		-0.458393, 0.860075, 0.223935,
		0.822038, 0.506082, -0.261023,
		15.415138, 16.444649, 14.409947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.668594, 16.684456, 14.182427>,  <14.839711, 16.090391, 14.592664>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.668594, 16.684456, 14.182427> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.056355, 16.662186, 14.086796>,  <15.289012, 16.648825, 14.029417>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.056355, 16.662186, 14.086796>,  <14.668594, 16.684456, 14.182427>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.056355, 16.662186, 14.086796> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223650, 0.201158, -0.953685,
		0.101187, 0.977975, 0.182552,
		0.969403, -0.055673, -0.239079,
		15.347177, 16.645483, 14.015072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.745090, 17.223282, 13.753331>,  <14.668594, 16.684456, 14.182427>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.745090, 17.223282, 13.753331> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.070848, 16.999401, 13.692017>,  <15.266302, 16.865072, 13.655228>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.070848, 16.999401, 13.692017>,  <14.745090, 17.223282, 13.753331>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.070848, 16.999401, 13.692017> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020295, 0.236513, -0.971417,
		0.579957, 0.794227, 0.181255,
		0.814394, -0.559701, -0.153286,
		15.315166, 16.831491, 13.646030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.128993, 17.587275, 13.281753>,  <14.745090, 17.223282, 13.753331>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.128993, 17.587275, 13.281753> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.338971, 17.250187, 13.233990>,  <15.464958, 17.047934, 13.205332>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.338971, 17.250187, 13.233990>,  <15.128993, 17.587275, 13.281753>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.338971, 17.250187, 13.233990> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241138, 0.281796, -0.928678,
		0.816263, 0.458711, 0.351139,
		0.524945, -0.842719, -0.119407,
		15.496454, 16.997372, 13.198168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.784895, 17.662729, 12.892466>,  <15.128993, 17.587275, 13.281753>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.784895, 17.662729, 12.892466> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.686194, 17.281078, 12.824633>,  <15.626974, 17.052088, 12.783933>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.686194, 17.281078, 12.824633>,  <15.784895, 17.662729, 12.892466>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.686194, 17.281078, 12.824633> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228620, 0.112740, -0.966966,
		0.941725, -0.277371, 0.190313,
		-0.246752, -0.954125, -0.169583,
		15.612168, 16.994841, 12.773758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.322361, 17.474289, 12.525401>,  <15.784895, 17.662729, 12.892466>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.322361, 17.474289, 12.525401> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.037674, 17.207306, 12.437800>,  <15.866862, 17.047115, 12.385241>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.037674, 17.207306, 12.437800>,  <16.322361, 17.474289, 12.525401>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.037674, 17.207306, 12.437800> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244481, 0.056914, -0.967982,
		0.658551, -0.742470, 0.122674,
		-0.711716, -0.667458, -0.219001,
		15.824160, 17.007069, 12.372100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.669512, 17.000820, 12.231247>,  <16.322361, 17.474289, 12.525401>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.669512, 17.000820, 12.231247> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.288540, 16.955902, 12.117924>,  <16.059956, 16.928951, 12.049930>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.288540, 16.955902, 12.117924>,  <16.669512, 17.000820, 12.231247>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.288540, 16.955902, 12.117924> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238287, 0.305120, -0.922020,
		0.189978, -0.945670, -0.263849,
		-0.952433, -0.112292, -0.283307,
		16.002810, 16.922215, 12.032931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.642731, 16.612598, 11.586770>,  <16.669512, 17.000820, 12.231247>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.642731, 16.612598, 11.586770> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.296738, 16.812927, 11.599300>,  <16.089142, 16.933125, 11.606819>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.296738, 16.812927, 11.599300>,  <16.642731, 16.612598, 11.586770>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.296738, 16.812927, 11.599300> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144995, 0.309214, -0.939874,
		-0.480398, -0.808432, -0.340082,
		-0.864982, 0.500824, 0.031327,
		16.037243, 16.963175, 11.608699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.329073, 16.557022, 10.977361>,  <16.642731, 16.612598, 11.586770>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.329073, 16.557022, 10.977361> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.119694, 16.868820, 11.114992>,  <15.994066, 17.055899, 11.197571>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.119694, 16.868820, 11.114992>,  <16.329073, 16.557022, 10.977361>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.119694, 16.868820, 11.114992> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047915, 0.430113, -0.901503,
		-0.850708, -0.455405, -0.262492,
		-0.523450, 0.779493, 0.344080,
		15.962659, 17.102669, 11.218216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.015898, 16.780886, 10.423148>,  <16.329073, 16.557022, 10.977361>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.015898, 16.780886, 10.423148> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.979875, 17.107632, 10.651050>,  <15.958261, 17.303680, 10.787790>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.979875, 17.107632, 10.651050>,  <16.015898, 16.780886, 10.423148>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.979875, 17.107632, 10.651050> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022096, 0.570297, -0.821141,
		-0.995691, -0.086537, -0.033309,
		-0.090056, 0.816867, 0.569752,
		15.952858, 17.352692, 10.821976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.486955, 17.173277, 10.147750>,  <16.015898, 16.780886, 10.423148>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.486955, 17.173277, 10.147750> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.710719, 17.419174, 10.370155>,  <15.844978, 17.566711, 10.503598>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.710719, 17.419174, 10.370155>,  <15.486955, 17.173277, 10.147750>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.710719, 17.419174, 10.370155> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024292, 0.682663, -0.730330,
		-0.828534, 0.395048, 0.396823,
		0.559412, 0.614742, 0.556013,
		15.878543, 17.603598, 10.536959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.240348, 17.979465, 10.102884>,  <15.486955, 17.173277, 10.147750>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.240348, 17.979465, 10.102884> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.631186, 17.976402, 10.187949>,  <15.865689, 17.974564, 10.238988>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.631186, 17.976402, 10.187949>,  <15.240348, 17.979465, 10.102884>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.631186, 17.976402, 10.187949> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128714, 0.817091, -0.561957,
		-0.169461, 0.576458, 0.799361,
		0.977095, -0.007659, 0.212663,
		15.924315, 17.974104, 10.251748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.422260, 18.719534, 10.342916>,  <15.240348, 17.979465, 10.102884>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.422260, 18.719534, 10.342916> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.734582, 18.517628, 10.195642>,  <15.921975, 18.396484, 10.107279>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.734582, 18.517628, 10.195642>,  <15.422260, 18.719534, 10.342916>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.734582, 18.517628, 10.195642> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179215, 0.745487, -0.641974,
		0.598520, 0.435272, 0.672541,
		0.780805, -0.504764, -0.368182,
		15.968823, 18.366199, 10.085188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.562543, 19.302111, 9.919909>,  <15.422260, 18.719534, 10.342916>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.562543, 19.302111, 9.919909> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.401656, 19.668327, 9.919316>,  <15.305124, 19.888058, 9.918961>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.401656, 19.668327, 9.919316>,  <15.562543, 19.302111, 9.919909>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.401656, 19.668327, 9.919316> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.742756, 0.327254, 0.584139,
		0.535289, 0.233849, -0.811653,
		-0.402217, 0.915543, -0.001482,
		15.280992, 19.942991, 9.918872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.094801, 19.859283, 9.844434>,  <15.562543, 19.302111, 9.919909>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.094801, 19.859283, 9.844434> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.817739, 20.088661, 10.019426>,  <15.651502, 20.226288, 10.124422>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.817739, 20.088661, 10.019426>,  <16.094801, 19.859283, 9.844434>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.817739, 20.088661, 10.019426> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.588853, 0.099335, 0.802113,
		0.416511, 0.813199, -0.406480,
		-0.692655, 0.573446, 0.437481,
		15.609942, 20.260695, 10.150671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.427589, 20.368208, 10.212098>,  <16.094801, 19.859283, 9.844434>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.427589, 20.368208, 10.212098> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.063087, 20.370304, 10.376824>,  <15.844387, 20.371561, 10.475660>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.063087, 20.370304, 10.376824>,  <16.427589, 20.368208, 10.212098>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.063087, 20.370304, 10.376824> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397504, 0.272791, 0.876114,
		-0.107748, 0.962059, -0.250665,
		-0.911252, 0.005240, 0.411815,
		15.789712, 20.371876, 10.500369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.396053, 20.995222, 10.522344>,  <16.427589, 20.368208, 10.212098>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.396053, 20.995222, 10.522344> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.142483, 20.744030, 10.702910>,  <15.990340, 20.593315, 10.811251>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.142483, 20.744030, 10.702910>,  <16.396053, 20.995222, 10.522344>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.142483, 20.744030, 10.702910> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454941, 0.169228, 0.874295,
		-0.625434, 0.759605, 0.178416,
		-0.633926, -0.627982, 0.451416,
		15.952305, 20.555635, 10.838335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.262747, 21.372221, 11.150600>,  <16.396053, 20.995222, 10.522344>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.262747, 21.372221, 11.150600> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.133545, 21.000767, 11.223594>,  <16.056023, 20.777893, 11.267389>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.133545, 21.000767, 11.223594>,  <16.262747, 21.372221, 11.150600>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.133545, 21.000767, 11.223594> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240266, 0.106037, 0.964898,
		-0.915390, 0.355513, 0.188869,
		-0.323007, -0.928637, 0.182483,
		16.036642, 20.722176, 11.278338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.864072, 21.428339, 11.742583>,  <16.262747, 21.372221, 11.150600>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.864072, 21.428339, 11.742583> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.965724, 21.042965, 11.708626>,  <16.026714, 20.811741, 11.688251>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.965724, 21.042965, 11.708626>,  <15.864072, 21.428339, 11.742583>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.965724, 21.042965, 11.708626> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120449, -0.055565, 0.991163,
		-0.959641, -0.262109, 0.101925,
		0.254130, -0.963437, -0.084893,
		16.041964, 20.753933, 11.683158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.468541, 21.127747, 12.308813>,  <15.864072, 21.428339, 11.742583>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.468541, 21.127747, 12.308813> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.763717, 20.873787, 12.217295>,  <15.940823, 20.721411, 12.162383>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.763717, 20.873787, 12.217295>,  <15.468541, 21.127747, 12.308813>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.763717, 20.873787, 12.217295> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108698, -0.222781, 0.968790,
		-0.666056, -0.739778, -0.095387,
		0.737939, -0.634899, -0.228797,
		15.985099, 20.683317, 12.148656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.329276, 20.623642, 12.711396>,  <15.468541, 21.127747, 12.308813>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.329276, 20.623642, 12.711396> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.707746, 20.539852, 12.612705>,  <15.934828, 20.489578, 12.553491>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.707746, 20.539852, 12.612705>,  <15.329276, 20.623642, 12.711396>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.707746, 20.539852, 12.612705> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207178, -0.193671, 0.958941,
		-0.248659, -0.958442, -0.139848,
		0.946175, -0.209476, -0.246727,
		15.991598, 20.477009, 12.538688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.428227, 20.001171, 12.966758>,  <15.329276, 20.623642, 12.711396>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.428227, 20.001171, 12.966758> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.792951, 20.159443, 12.922857>,  <16.011784, 20.254406, 12.896517>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.792951, 20.159443, 12.922857>,  <15.428227, 20.001171, 12.966758>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.792951, 20.159443, 12.922857> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222074, -0.250369, 0.942337,
		0.345384, -0.883603, -0.316158,
		0.911808, 0.395678, -0.109752,
		16.066492, 20.278147, 12.889932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.889259, 19.524677, 13.286506>,  <15.428227, 20.001171, 12.966758>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.889259, 19.524677, 13.286506> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.081200, 19.874775, 13.262203>,  <16.196363, 20.084833, 13.247622>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.081200, 19.874775, 13.262203>,  <15.889259, 19.524677, 13.286506>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.081200, 19.874775, 13.262203> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375892, -0.142522, 0.915638,
		0.792748, -0.462207, -0.397387,
		0.479850, 0.875244, -0.060756,
		16.225155, 20.137348, 13.243977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.568012, 19.438221, 13.504476>,  <15.889259, 19.524677, 13.286506>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.568012, 19.438221, 13.504476> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.561504, 19.837883, 13.519567>,  <16.557600, 20.077681, 13.528623>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.561504, 19.837883, 13.519567>,  <16.568012, 19.438221, 13.504476>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.561504, 19.837883, 13.519567> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286091, -0.031505, 0.957684,
		0.958064, 0.026374, -0.285337,
		-0.016268, 0.999156, 0.037729,
		16.556623, 20.137630, 13.530887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.133024, 19.600101, 13.960325>,  <16.568012, 19.438221, 13.504476>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.133024, 19.600101, 13.960325> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.886917, 19.914959, 13.977549>,  <16.739254, 20.103872, 13.987883>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.886917, 19.914959, 13.977549>,  <17.133024, 19.600101, 13.960325>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.886917, 19.914959, 13.977549> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179703, 0.086862, 0.979879,
		0.767563, 0.610625, -0.194895,
		-0.615267, 0.787142, 0.043059,
		16.702337, 20.151102, 13.990466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.516777, 20.037193, 14.331667>,  <17.133024, 19.600101, 13.960325>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.516777, 20.037193, 14.331667> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.145283, 20.185471, 14.333986>,  <16.922386, 20.274437, 14.335378>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.145283, 20.185471, 14.333986>,  <17.516777, 20.037193, 14.331667>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.145283, 20.185471, 14.333986> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021862, 0.039145, 0.998994,
		0.370094, 0.927930, -0.044460,
		-0.928737, 0.370694, 0.005799,
		16.866661, 20.296679, 14.335726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.483904, 20.676216, 14.703324>,  <17.516777, 20.037193, 14.331667>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.483904, 20.676216, 14.703324> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.113216, 20.526108, 14.710972>,  <16.890804, 20.436043, 14.715560>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.113216, 20.526108, 14.710972>,  <17.483904, 20.676216, 14.703324>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.113216, 20.526108, 14.710972> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102672, -0.203945, 0.973584,
		-0.361459, 0.904200, 0.227529,
		-0.926718, -0.375272, 0.019118,
		16.835201, 20.413527, 14.716707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.663656, 21.369272, 14.709636>,  <17.483904, 20.676216, 14.703324>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.663656, 21.369272, 14.709636> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.916397, 21.662575, 14.810114>,  <18.068041, 21.838556, 14.870400>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.916397, 21.662575, 14.810114>,  <17.663656, 21.369272, 14.709636>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.916397, 21.662575, 14.810114> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270665, 0.094947, -0.957980,
		-0.726296, 0.673289, -0.138475,
		0.631850, 0.733257, 0.251196,
		18.105951, 21.882551, 14.885472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.425053, 22.012630, 14.337601>,  <17.663656, 21.369272, 14.709636>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.425053, 22.012630, 14.337601> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.815392, 22.016918, 14.424881>,  <18.049595, 22.019491, 14.477249>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.815392, 22.016918, 14.424881>,  <17.425053, 22.012630, 14.337601>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.815392, 22.016918, 14.424881> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216885, 0.072350, -0.973512,
		-0.026222, 0.997322, 0.068278,
		0.975845, 0.010719, 0.218201,
		18.108145, 22.020134, 14.490341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.698645, 22.415125, 13.850086>,  <17.425053, 22.012630, 14.337601>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.698645, 22.415125, 13.850086> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.025177, 22.233356, 13.992693>,  <18.221096, 22.124296, 14.078257>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.025177, 22.233356, 13.992693>,  <17.698645, 22.415125, 13.850086>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.025177, 22.233356, 13.992693> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350888, -0.100115, -0.931050,
		0.458781, 0.885144, 0.077723,
		0.816332, -0.454420, 0.356517,
		18.270077, 22.097031, 14.099648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.236591, 22.743969, 13.375703>,  <17.698645, 22.415125, 13.850086>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.236591, 22.743969, 13.375703> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.423328, 22.428642, 13.536009>,  <18.535370, 22.239447, 13.632193>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.423328, 22.428642, 13.536009>,  <18.236591, 22.743969, 13.375703>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.423328, 22.428642, 13.536009> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393529, -0.220649, -0.892440,
		0.791955, 0.574341, 0.207218,
		0.466843, -0.788319, 0.400764,
		18.563381, 22.192146, 13.656238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.980394, 22.755417, 13.256823>,  <18.236591, 22.743969, 13.375703>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.980394, 22.755417, 13.256823> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.869228, 22.374500, 13.307274>,  <18.802528, 22.145950, 13.337544>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.869228, 22.374500, 13.307274>,  <18.980394, 22.755417, 13.256823>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.869228, 22.374500, 13.307274> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548385, -0.265084, -0.793098,
		0.788694, -0.151245, 0.595892,
		-0.277914, -0.952289, 0.126129,
		18.785854, 22.088814, 13.345113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.523214, 22.420286, 12.959286>,  <18.980394, 22.755417, 13.256823>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.523214, 22.420286, 12.959286> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.246895, 22.136509, 13.015121>,  <19.081102, 21.966242, 13.048623>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.246895, 22.136509, 13.015121>,  <19.523214, 22.420286, 12.959286>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.246895, 22.136509, 13.015121> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138920, -0.319687, -0.937284,
		0.709575, -0.628084, 0.319396,
		-0.690800, -0.709444, 0.139588,
		19.039656, 21.923676, 13.056998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.834833, 21.781221, 12.690011>,  <19.523214, 22.420286, 12.959286>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.834833, 21.781221, 12.690011> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.435154, 21.767384, 12.681962>,  <19.195347, 21.759081, 12.677133>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.435154, 21.767384, 12.681962>,  <19.834833, 21.781221, 12.690011>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.435154, 21.767384, 12.681962> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025070, -0.149116, -0.988502,
		0.031197, -0.988214, 0.149863,
		-0.999199, -0.034596, -0.020123,
		19.135395, 21.757006, 12.675925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.735678, 21.163647, 12.336489>,  <19.834833, 21.781221, 12.690011>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.735678, 21.163647, 12.336489> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.364700, 21.313065, 12.329388>,  <19.142115, 21.402716, 12.325127>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.364700, 21.313065, 12.329388>,  <19.735678, 21.163647, 12.336489>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.364700, 21.313065, 12.329388> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026980, -0.114186, -0.993093,
		-0.372993, -0.920557, 0.115979,
		-0.927441, 0.373546, -0.017754,
		19.086468, 21.425129, 12.324061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.334932, 20.723980, 11.814095>,  <19.735678, 21.163647, 12.336489>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.334932, 20.723980, 11.814095> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.105072, 21.050053, 11.843089>,  <18.967155, 21.245697, 11.860486>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.105072, 21.050053, 11.843089>,  <19.334932, 20.723980, 11.814095>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.105072, 21.050053, 11.843089> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048054, 0.122028, -0.991363,
		-0.816987, -0.566204, -0.109297,
		-0.574650, 0.815183, 0.072487,
		18.932676, 21.294607, 11.864835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.804487, 20.599760, 11.398776>,  <19.334932, 20.723980, 11.814095>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.804487, 20.599760, 11.398776> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.866760, 20.993614, 11.430409>,  <18.904123, 21.229927, 11.449389>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.866760, 20.993614, 11.430409>,  <18.804487, 20.599760, 11.398776>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.866760, 20.993614, 11.430409> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257713, 0.036800, -0.965520,
		-0.953597, 0.170696, -0.248025,
		0.155683, 0.984636, 0.079083,
		18.913465, 21.289005, 11.454134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.442501, 20.864851, 10.877358>,  <18.804487, 20.599760, 11.398776>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.442501, 20.864851, 10.877358> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.717945, 21.140751, 10.966855>,  <18.883211, 21.306292, 11.020554>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.717945, 21.140751, 10.966855>,  <18.442501, 20.864851, 10.877358>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.717945, 21.140751, 10.966855> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312195, -0.003512, -0.950012,
		-0.654486, 0.724038, -0.217755,
		0.688609, 0.689751, 0.223742,
		18.924528, 21.347675, 11.033978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.190474, 21.423462, 11.290551>,  <18.442501, 20.864851, 10.877358>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.190474, 21.423462, 11.290551> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.266460, 21.187218, 11.604261>,  <18.312052, 21.045471, 11.792488>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.266460, 21.187218, 11.604261>,  <18.190474, 21.423462, 11.290551>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.266460, 21.187218, 11.604261> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.975503, 0.203808, -0.082804,
		-0.110936, 0.780794, 0.614861,
		0.189966, -0.590613, 0.784276,
		18.323450, 21.010035, 11.839544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<17.194479, 22.336987, 18.628571> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.562397, 22.190662, 18.571781>,  <17.783148, 22.102867, 18.537706>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.562397, 22.190662, 18.571781>,  <17.194479, 22.336987, 18.628571>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.562397, 22.190662, 18.571781> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013986, 0.392147, -0.919796,
		0.392147, 0.844040, 0.365812,
		0.919796, -0.365812, -0.141974,
		17.838335, 22.080919, 18.529188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.478668, 22.874311, 18.441471>,  <17.194479, 22.336987, 18.628571>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.478668, 22.874311, 18.441471> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.717983, 22.580608, 18.313148>,  <17.861572, 22.404387, 18.236155>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.717983, 22.580608, 18.313148>,  <17.478668, 22.874311, 18.441471>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.717983, 22.580608, 18.313148> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100883, 0.466208, -0.878904,
		0.794905, 0.493474, 0.353001,
		0.598288, -0.734257, -0.320808,
		17.897470, 22.360331, 18.216906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.873039, 23.179680, 17.895205>,  <17.478668, 22.874311, 18.441471>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.873039, 23.179680, 17.895205> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.975323, 22.798672, 17.829090>,  <18.036694, 22.570066, 17.789421>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.975323, 22.798672, 17.829090>,  <17.873039, 23.179680, 17.895205>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.975323, 22.798672, 17.829090> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229668, 0.225927, -0.946683,
		0.939077, 0.204116, 0.276536,
		0.255710, -0.952520, -0.165284,
		18.052036, 22.512917, 17.779505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.501217, 23.191277, 17.517946>,  <17.873039, 23.179680, 17.895205>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.501217, 23.191277, 17.517946> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.325439, 22.840523, 17.440008>,  <18.219973, 22.630070, 17.393246>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.325439, 22.840523, 17.440008>,  <18.501217, 23.191277, 17.517946>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.325439, 22.840523, 17.440008> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133023, 0.150995, -0.979544,
		0.888367, -0.456372, 0.050292,
		-0.439442, -0.876884, -0.194847,
		18.193607, 22.577457, 17.381554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.812166, 23.008768, 16.905348>,  <18.501217, 23.191277, 17.517946>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.812166, 23.008768, 16.905348> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.518837, 22.738903, 16.938978>,  <18.342840, 22.576984, 16.959156>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.518837, 22.738903, 16.938978>,  <18.812166, 23.008768, 16.905348>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.518837, 22.738903, 16.938978> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144620, -0.275625, -0.950324,
		0.664322, -0.684734, 0.299691,
		-0.733322, -0.674663, 0.084077,
		18.298840, 22.536505, 16.964201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.042147, 22.166637, 16.751913>,  <18.812166, 23.008768, 16.905348>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.042147, 22.166637, 16.751913> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.648846, 22.214687, 16.697088>,  <18.412865, 22.243517, 16.664194>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.648846, 22.214687, 16.697088>,  <19.042147, 22.166637, 16.751913>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.648846, 22.214687, 16.697088> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093450, -0.313365, -0.945024,
		-0.156471, -0.942005, 0.296891,
		-0.983252, 0.120125, -0.137063,
		18.353870, 22.250725, 16.655970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.793329, 21.589125, 16.318808>,  <19.042147, 22.166637, 16.751913>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.793329, 21.589125, 16.318808> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.500263, 21.859215, 16.284697>,  <18.324423, 22.021269, 16.264231>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.500263, 21.859215, 16.284697>,  <18.793329, 21.589125, 16.318808>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.500263, 21.859215, 16.284697> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051313, -0.179748, -0.982374,
		-0.678652, -0.715375, 0.166343,
		-0.732665, 0.675226, -0.085278,
		18.280464, 22.061783, 16.259113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.354048, 21.243944, 15.938303>,  <18.793329, 21.589125, 16.318808>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.354048, 21.243944, 15.938303> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.262306, 21.630203, 15.889448>,  <18.207262, 21.861959, 15.860135>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.262306, 21.630203, 15.889448>,  <18.354048, 21.243944, 15.938303>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.262306, 21.630203, 15.889448> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101981, -0.148631, -0.983620,
		-0.967986, -0.213141, 0.132567,
		-0.229353, 0.965650, -0.122137,
		18.193501, 21.919899, 15.852807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.887808, 21.144985, 15.361782>,  <18.354048, 21.243944, 15.938303>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.887808, 21.144985, 15.361782> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.018143, 21.523132, 15.357624>,  <18.096344, 21.750021, 15.355129>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.018143, 21.523132, 15.357624>,  <17.887808, 21.144985, 15.361782>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.018143, 21.523132, 15.357624> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127654, -0.054887, -0.990299,
		-0.936767, 0.321351, -0.138565,
		0.325839, 0.945368, -0.010394,
		18.115894, 21.806744, 15.354506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.142000, 21.103411, 15.333157>,  <17.887808, 21.144985, 15.361782>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.142000, 21.103411, 15.333157> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.909901, 20.789490, 15.246075>,  <16.770641, 20.601137, 15.193826>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.909901, 20.789490, 15.246075>,  <17.142000, 21.103411, 15.333157>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.909901, 20.789490, 15.246075> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118312, -0.183246, 0.975922,
		-0.805799, 0.592036, 0.013477,
		-0.580250, -0.784802, -0.217704,
		16.735825, 20.554049, 15.180763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.560360, 21.039967, 15.764808>,  <17.142000, 21.103411, 15.333157>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.560360, 21.039967, 15.764808> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.584000, 20.660503, 15.640514>,  <16.598183, 20.432825, 15.565938>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.584000, 20.660503, 15.640514>,  <16.560360, 21.039967, 15.764808>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.584000, 20.660503, 15.640514> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139186, -0.316069, 0.938471,
		-0.988501, -0.012211, -0.150718,
		0.059097, -0.948658, -0.310735,
		16.601728, 20.375906, 15.547294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.039337, 20.747190, 16.013674>,  <16.560360, 21.039967, 15.764808>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.039337, 20.747190, 16.013674> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.286850, 20.445637, 15.925341>,  <16.435358, 20.264704, 15.872340>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.286850, 20.445637, 15.925341>,  <16.039337, 20.747190, 16.013674>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.286850, 20.445637, 15.925341> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236525, -0.446867, 0.862767,
		-0.749111, -0.481630, -0.454825,
		0.618780, -0.753886, -0.220835,
		16.472485, 20.219471, 15.859090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.710630, 20.103767, 16.027620>,  <16.039337, 20.747190, 16.013674>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.710630, 20.103767, 16.027620> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.094788, 20.007229, 16.083328>,  <16.325281, 19.949306, 16.116753>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.094788, 20.007229, 16.083328>,  <15.710630, 20.103767, 16.027620>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.094788, 20.007229, 16.083328> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256067, -0.567324, 0.782671,
		-0.109882, -0.787335, -0.606655,
		0.960394, -0.241346, 0.139272,
		16.382906, 19.934826, 16.125111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.684134, 19.560930, 16.465689>,  <15.710630, 20.103767, 16.027620>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.684134, 19.560930, 16.465689> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.070240, 19.658501, 16.503138>,  <16.301903, 19.717043, 16.525606>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.070240, 19.658501, 16.503138>,  <15.684134, 19.560930, 16.465689>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.070240, 19.658501, 16.503138> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030157, -0.459947, 0.887434,
		0.259529, -0.853785, -0.451327,
		0.965265, 0.243925, 0.093623,
		16.359819, 19.731678, 16.531225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.961476, 18.938238, 16.642643>,  <15.684134, 19.560930, 16.465689>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.961476, 18.938238, 16.642643> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.195641, 19.241692, 16.757025>,  <16.336140, 19.423763, 16.825653>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.195641, 19.241692, 16.757025>,  <15.961476, 18.938238, 16.642643>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.195641, 19.241692, 16.757025> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044944, -0.382532, 0.922848,
		0.809490, -0.527393, -0.258034,
		0.585410, 0.758634, 0.285953,
		16.371264, 19.469282, 16.842812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.391676, 18.652214, 17.080431>,  <15.961476, 18.938238, 16.642643>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.391676, 18.652214, 17.080431> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.431698, 19.039452, 17.172329>,  <16.455711, 19.271793, 17.227468>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.431698, 19.039452, 17.172329>,  <16.391676, 18.652214, 17.080431>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.431698, 19.039452, 17.172329> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059635, -0.224656, 0.972612,
		0.993193, -0.111013, 0.035255,
		0.100052, 0.968094, 0.229747,
		16.461714, 19.329880, 17.241253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.926065, 18.666929, 17.591257>,  <16.391676, 18.652214, 17.080431>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.926065, 18.666929, 17.591257> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.731495, 19.012508, 17.643389>,  <16.614752, 19.219856, 17.674667>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.731495, 19.012508, 17.643389>,  <16.926065, 18.666929, 17.591257>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.731495, 19.012508, 17.643389> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163513, -0.236546, 0.957763,
		0.858284, 0.444572, 0.256329,
		-0.486428, 0.863946, 0.130330,
		16.585567, 19.271692, 17.682487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.196007, 18.901281, 18.128769>,  <16.926065, 18.666929, 17.591257>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.196007, 18.901281, 18.128769> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.845509, 19.093277, 18.111794>,  <16.635210, 19.208475, 18.101608>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.845509, 19.093277, 18.111794>,  <17.196007, 18.901281, 18.128769>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.845509, 19.093277, 18.111794> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113808, -0.120570, 0.986160,
		0.468230, 0.868949, 0.160276,
		-0.876247, 0.479990, -0.042439,
		16.582634, 19.237274, 18.099062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.195000, 19.357153, 18.674625>,  <17.196007, 18.901281, 18.128769>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.195000, 19.357153, 18.674625> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.805939, 19.349216, 18.582056>,  <16.572502, 19.344454, 18.526514>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.805939, 19.349216, 18.582056>,  <17.195000, 19.357153, 18.674625>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.805939, 19.349216, 18.582056> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229603, -0.068552, 0.970867,
		-0.035127, 0.997450, 0.062122,
		-0.972650, -0.019840, -0.231425,
		16.514143, 19.343264, 18.512629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.860901, 19.845444, 19.092901>,  <17.195000, 19.357153, 18.674625>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.860901, 19.845444, 19.092901> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.589886, 19.564678, 19.005024>,  <16.427277, 19.396219, 18.952297>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.589886, 19.564678, 19.005024>,  <16.860901, 19.845444, 19.092901>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.589886, 19.564678, 19.005024> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373061, 0.070553, 0.925120,
		-0.633853, 0.708761, -0.309658,
		-0.677536, -0.701912, -0.219691,
		16.386625, 19.354105, 18.939117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.475508, 20.114584, 19.492508>,  <16.860901, 19.845444, 19.092901>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.475508, 20.114584, 19.492508> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.357452, 19.743412, 19.401438>,  <16.286619, 19.520708, 19.346796>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.357452, 19.743412, 19.401438>,  <16.475508, 20.114584, 19.492508>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.357452, 19.743412, 19.401438> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300841, -0.135919, 0.943939,
		-0.906857, 0.347085, -0.239045,
		-0.295137, -0.927932, -0.227676,
		16.268911, 19.465033, 19.333136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.976555, 20.022644, 19.885559>,  <16.475508, 20.114584, 19.492508>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.976555, 20.022644, 19.885559> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.074203, 19.648220, 19.784214>,  <16.132793, 19.423565, 19.723406>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.074203, 19.648220, 19.784214>,  <15.976555, 20.022644, 19.885559>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.074203, 19.648220, 19.784214> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252005, -0.313529, 0.915529,
		-0.936429, -0.159651, -0.312431,
		0.244121, -0.936062, -0.253365,
		16.147440, 19.367401, 19.708204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.379052, 19.642035, 20.079285>,  <15.976555, 20.022644, 19.885559>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.379052, 19.642035, 20.079285> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.686282, 19.386181, 20.067078>,  <15.870620, 19.232668, 20.059753>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.686282, 19.386181, 20.067078>,  <15.379052, 19.642035, 20.079285>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.686282, 19.386181, 20.067078> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376366, -0.489468, 0.786619,
		-0.518086, -0.592695, -0.616684,
		0.768073, -0.639635, -0.030516,
		15.916704, 19.194290, 20.057922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<21.783081, 17.822662, 21.274557> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.566299, 18.110302, 21.100574>,  <21.436232, 18.282885, 20.996185>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.566299, 18.110302, 21.100574>,  <21.783081, 17.822662, 21.274557>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.566299, 18.110302, 21.100574> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207817, -0.386808, -0.898438,
		-0.814309, -0.577301, 0.060191,
		-0.541952, 0.719098, -0.434955,
		21.403713, 18.326031, 20.970089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.215405, 17.469004, 20.840469>,  <21.783081, 17.822662, 21.274557>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.215405, 17.469004, 20.840469> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.280918, 17.840263, 20.706774>,  <21.320227, 18.063019, 20.626556>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.280918, 17.840263, 20.706774>,  <21.215405, 17.469004, 20.840469>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.280918, 17.840263, 20.706774> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065769, -0.348332, -0.935061,
		-0.984301, 0.131167, -0.118095,
		0.163785, 0.928149, -0.334237,
		21.330053, 18.118708, 20.606503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.814686, 17.603405, 20.160963>,  <21.215405, 17.469004, 20.840469>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.814686, 17.603405, 20.160963> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.095036, 17.888214, 20.144012>,  <21.263247, 18.059099, 20.133842>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.095036, 17.888214, 20.144012>,  <20.814686, 17.603405, 20.160963>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.095036, 17.888214, 20.144012> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033537, -0.092240, -0.995172,
		-0.712495, 0.696070, -0.088527,
		0.700876, 0.712023, -0.042377,
		21.305298, 18.101822, 20.131300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.557241, 18.137131, 19.577408>,  <20.814686, 17.603405, 20.160963>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.557241, 18.137131, 19.577408> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.955574, 18.167183, 19.598097>,  <21.194574, 18.185215, 19.610510>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.955574, 18.167183, 19.598097>,  <20.557241, 18.137131, 19.577408>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.955574, 18.167183, 19.598097> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041623, 0.130291, -0.990602,
		-0.081163, 0.988625, 0.126621,
		0.995831, 0.075130, 0.051725,
		21.254324, 18.189722, 19.613615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.787954, 18.671347, 19.070122>,  <20.557241, 18.137131, 19.577408>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.787954, 18.671347, 19.070122> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.129204, 18.479340, 19.151867>,  <21.333954, 18.364136, 19.200914>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.129204, 18.479340, 19.151867>,  <20.787954, 18.671347, 19.070122>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.129204, 18.479340, 19.151867> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220660, -0.022963, -0.975080,
		0.472748, 0.876959, 0.086330,
		0.853123, -0.480017, 0.204365,
		21.385141, 18.335335, 19.213177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.359213, 19.021336, 18.734413>,  <20.787954, 18.671347, 19.070122>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.359213, 19.021336, 18.734413> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.512661, 18.660889, 18.815233>,  <21.604731, 18.444620, 18.863726>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.512661, 18.660889, 18.815233>,  <21.359213, 19.021336, 18.734413>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.512661, 18.660889, 18.815233> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259599, -0.104741, -0.960019,
		0.886252, 0.420735, 0.193749,
		0.383621, -0.901117, 0.202049,
		21.627747, 18.390554, 18.875849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.957016, 19.042376, 18.367325>,  <21.359213, 19.021336, 18.734413>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.957016, 19.042376, 18.367325> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.895855, 18.649132, 18.407555>,  <21.859158, 18.413185, 18.431692>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.895855, 18.649132, 18.407555>,  <21.957016, 19.042376, 18.367325>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.895855, 18.649132, 18.407555> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155241, -0.124402, -0.980012,
		0.975972, -0.134234, 0.171640,
		-0.152904, -0.983110, 0.100574,
		21.849983, 18.354198, 18.437727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.510319, 18.705074, 17.928936>,  <21.957016, 19.042376, 18.367325>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.510319, 18.705074, 17.928936> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.183918, 18.474831, 17.950153>,  <21.988077, 18.336685, 17.962883>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.183918, 18.474831, 17.950153>,  <22.510319, 18.705074, 17.928936>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.183918, 18.474831, 17.950153> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016642, -0.115120, -0.993212,
		0.577808, -0.809582, 0.103517,
		-0.816004, -0.575608, 0.053044,
		21.939117, 18.302149, 17.966066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.630493, 18.122185, 17.501074>,  <22.510319, 18.705074, 17.928936>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.630493, 18.122185, 17.501074> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.234238, 18.093067, 17.547260>,  <21.996485, 18.075598, 17.574972>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.234238, 18.093067, 17.547260>,  <22.630493, 18.122185, 17.501074>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.234238, 18.093067, 17.547260> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087126, -0.313944, -0.945435,
		0.105070, -0.946647, 0.304664,
		-0.990641, -0.072793, 0.115464,
		21.937046, 18.071230, 17.581900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.392452, 17.550583, 17.116659>,  <22.630493, 18.122185, 17.501074>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.392452, 17.550583, 17.116659> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.051132, 17.758957, 17.125698>,  <21.846340, 17.883982, 17.131121>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.051132, 17.758957, 17.125698>,  <22.392452, 17.550583, 17.116659>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.051132, 17.758957, 17.125698> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129544, -0.169821, -0.976923,
		-0.505076, -0.836534, 0.212392,
		-0.853298, 0.520934, 0.022596,
		21.795143, 17.915237, 17.132477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.909328, 17.204472, 16.649696>,  <22.392452, 17.550583, 17.116659>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.909328, 17.204472, 16.649696> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.744320, 17.567074, 16.685633>,  <21.645315, 17.784636, 16.707195>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.744320, 17.567074, 16.685633>,  <21.909328, 17.204472, 16.649696>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.744320, 17.567074, 16.685633> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274431, -0.029627, -0.961150,
		-0.868628, -0.421149, 0.260995,
		-0.412520, 0.906508, 0.089842,
		21.620564, 17.839025, 16.712585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.404985, 17.178480, 16.217461>,  <21.909328, 17.204472, 16.649696>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.404985, 17.178480, 16.217461> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.436745, 17.570591, 16.289850>,  <21.455799, 17.805859, 16.333284>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.436745, 17.570591, 16.289850>,  <21.404985, 17.178480, 16.217461>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.436745, 17.570591, 16.289850> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003479, 0.181273, -0.983427,
		-0.996837, 0.078711, 0.010982,
		0.079397, 0.980278, 0.180974,
		21.460564, 17.864674, 16.344143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.842127, 17.440054, 15.887064>,  <21.404985, 17.178480, 16.217461>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.842127, 17.440054, 15.887064> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.126633, 17.721188, 15.891541>,  <21.297337, 17.889868, 15.894227>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.126633, 17.721188, 15.891541>,  <20.842127, 17.440054, 15.887064>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.126633, 17.721188, 15.891541> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085676, 0.102486, -0.991038,
		-0.697683, 0.703932, 0.133111,
		0.711265, 0.702835, 0.011193,
		21.340012, 17.932037, 15.894898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.650341, 18.000792, 15.516355>,  <20.842127, 17.440054, 15.887064>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.650341, 18.000792, 15.516355> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.045418, 18.063255, 15.512711>,  <21.282463, 18.100733, 15.510524>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.045418, 18.063255, 15.512711>,  <20.650341, 18.000792, 15.516355>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.045418, 18.063255, 15.512711> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032831, 0.150006, -0.988140,
		-0.152941, 0.976275, 0.153287,
		0.987690, 0.156160, -0.009110,
		21.341724, 18.110104, 15.509977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.931170, 18.118988, 15.449380>,  <20.650341, 18.000792, 15.516355>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.931170, 18.118988, 15.449380> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.875324, 17.762913, 15.275909>,  <19.841816, 17.549269, 15.171827>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.875324, 17.762913, 15.275909>,  <19.931170, 18.118988, 15.449380>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.875324, 17.762913, 15.275909> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104768, -0.448787, 0.887476,
		-0.984648, 0.078470, 0.155921,
		-0.139615, -0.890187, -0.433676,
		19.833439, 17.495857, 15.145806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.302465, 17.935110, 15.853170>,  <19.931170, 18.118988, 15.449380>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.302465, 17.935110, 15.853170> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.497807, 17.620235, 15.702520>,  <19.615011, 17.431311, 15.612130>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.497807, 17.620235, 15.702520>,  <19.302465, 17.935110, 15.853170>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.497807, 17.620235, 15.702520> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162730, -0.506168, 0.846943,
		-0.857338, -0.352321, -0.375288,
		0.488354, -0.787188, -0.376624,
		19.644314, 17.384079, 15.589533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.860981, 17.408340, 15.972646>,  <19.302465, 17.935110, 15.853170>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.860981, 17.408340, 15.972646> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.205238, 17.213676, 15.912699>,  <19.411793, 17.096878, 15.876731>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.205238, 17.213676, 15.912699>,  <18.860981, 17.408340, 15.972646>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.205238, 17.213676, 15.912699> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111900, -0.467868, 0.876686,
		-0.496767, -0.737741, -0.457123,
		0.860640, -0.486660, -0.149869,
		19.463430, 17.067678, 15.867739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.747282, 16.681141, 16.068705>,  <18.860981, 17.408340, 15.972646>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.747282, 16.681141, 16.068705> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.130432, 16.738544, 16.168211>,  <19.360321, 16.772987, 16.227915>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.130432, 16.738544, 16.168211>,  <18.747282, 16.681141, 16.068705>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.130432, 16.738544, 16.168211> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146225, -0.501808, 0.852530,
		0.247180, -0.852991, -0.459683,
		0.957873, 0.143511, 0.248765,
		19.417793, 16.781597, 16.242840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.035139, 16.024769, 16.372501>,  <18.747282, 16.681141, 16.068705>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.035139, 16.024769, 16.372501> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.264534, 16.321362, 16.511824>,  <19.402172, 16.499317, 16.595417>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.264534, 16.321362, 16.511824>,  <19.035139, 16.024769, 16.372501>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.264534, 16.321362, 16.511824> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066800, -0.381431, 0.921981,
		0.816485, -0.552012, -0.169216,
		0.573489, 0.741480, 0.348307,
		19.436581, 16.543806, 16.616316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.276316, 15.732044, 17.027523>,  <19.035139, 16.024769, 16.372501>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.276316, 15.732044, 17.027523> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.388500, 16.114498, 17.061344>,  <19.455811, 16.343971, 17.081636>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.388500, 16.114498, 17.061344>,  <19.276316, 15.732044, 17.027523>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.388500, 16.114498, 17.061344> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205801, -0.145937, 0.967651,
		0.937544, -0.253987, -0.237703,
		0.280461, 0.956134, 0.084551,
		19.472639, 16.401339, 17.086710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.928780, 15.792343, 17.360670>,  <19.276316, 15.732044, 17.027523>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.928780, 15.792343, 17.360670> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.767384, 16.153282, 17.421289>,  <19.670546, 16.369846, 17.457661>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.767384, 16.153282, 17.421289>,  <19.928780, 15.792343, 17.360670>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.767384, 16.153282, 17.421289> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095399, -0.123238, 0.987781,
		0.909998, 0.413016, -0.036358,
		-0.403488, 0.902347, 0.151547,
		19.646338, 16.423986, 17.466753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.419607, 16.187733, 17.841242>,  <19.928780, 15.792343, 17.360670>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.419607, 16.187733, 17.841242> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.064774, 16.370998, 17.863735>,  <19.851873, 16.480959, 17.877232>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.064774, 16.370998, 17.863735>,  <20.419607, 16.187733, 17.841242>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.064774, 16.370998, 17.863735> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110914, 0.093306, 0.989440,
		0.448081, 0.883956, -0.133587,
		-0.887086, 0.458166, 0.056235,
		19.798647, 16.508448, 17.880606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.497822, 16.814274, 18.336397>,  <20.419607, 16.187733, 17.841242>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.497822, 16.814274, 18.336397> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.108044, 16.729549, 18.306486>,  <19.874176, 16.678715, 18.288540>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.108044, 16.729549, 18.306486>,  <20.497822, 16.814274, 18.336397>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.108044, 16.729549, 18.306486> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131434, 0.267694, 0.954497,
		-0.182155, 0.939934, -0.288692,
		-0.974446, -0.211810, -0.074778,
		19.815710, 16.666006, 18.284052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.204086, 17.422504, 18.657944>,  <20.497822, 16.814274, 18.336397>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.204086, 17.422504, 18.657944> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.948303, 17.115036, 18.664133>,  <19.794834, 16.930555, 18.667847>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.948303, 17.115036, 18.664133>,  <20.204086, 17.422504, 18.657944>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.948303, 17.115036, 18.664133> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199506, 0.185335, 0.962210,
		-0.742491, 0.612205, -0.271868,
		-0.639457, -0.768671, 0.015471,
		19.756466, 16.884434, 18.668774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.964203, 17.628260, 19.141134>,  <20.204086, 17.422504, 18.657944>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.964203, 17.628260, 19.141134> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.819008, 17.256378, 19.116179>,  <19.731892, 17.033249, 19.101206>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.819008, 17.256378, 19.116179>,  <19.964203, 17.628260, 19.141134>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.819008, 17.256378, 19.116179> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.514955, 0.144353, 0.844975,
		-0.776570, 0.338844, -0.531154,
		-0.362988, -0.929703, -0.062389,
		19.710112, 16.977467, 19.097462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.120077, 17.554293, 19.254923>,  <19.964203, 17.628260, 19.141134>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.120077, 17.554293, 19.254923> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.317566, 17.216297, 19.337124>,  <19.436060, 17.013500, 19.386444>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.317566, 17.216297, 19.337124>,  <19.120077, 17.554293, 19.254923>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.317566, 17.216297, 19.337124> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395651, -0.007830, 0.918367,
		-0.774402, -0.534726, -0.338187,
		0.493723, -0.844989, 0.205501,
		19.465683, 16.962801, 19.398775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.555592, 17.200504, 19.680632>,  <19.120077, 17.554293, 19.254923>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.555592, 17.200504, 19.680632> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.910419, 17.028316, 19.747334>,  <19.123316, 16.925003, 19.787355>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.910419, 17.028316, 19.747334>,  <18.555592, 17.200504, 19.680632>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.910419, 17.028316, 19.747334> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220036, -0.076707, 0.972471,
		-0.405828, -0.899340, -0.162763,
		0.887067, -0.430470, 0.166757,
		19.176540, 16.899176, 19.797361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.408205, 16.585100, 20.222740>,  <18.555592, 17.200504, 19.680632>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.408205, 16.585100, 20.222740> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.795456, 16.683792, 20.239983>,  <19.027805, 16.743008, 20.250328>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.795456, 16.683792, 20.239983>,  <18.408205, 16.585100, 20.222740>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.795456, 16.683792, 20.239983> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041890, -0.010180, 0.999070,
		0.246939, -0.969031, 0.000480,
		0.968125, 0.246729, 0.043107,
		19.085894, 16.757811, 20.252914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.039209, 15.922491, 19.878395>,  <18.408205, 16.585100, 20.222740>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.039209, 15.922491, 19.878395> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.663433, 15.786175, 19.892870>,  <17.437967, 15.704385, 19.901554>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.663433, 15.786175, 19.892870>,  <18.039209, 15.922491, 19.878395>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.663433, 15.786175, 19.892870> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076960, 0.106895, -0.991287,
		0.333955, -0.934042, -0.126649,
		-0.939442, -0.340793, 0.036186,
		17.381601, 15.683937, 19.903727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.017572, 15.421015, 19.313631>,  <18.039209, 15.922491, 19.878395>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.017572, 15.421015, 19.313631> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.646965, 15.546329, 19.396976>,  <17.424601, 15.621518, 19.446983>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.646965, 15.546329, 19.396976>,  <18.017572, 15.421015, 19.313631>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.646965, 15.546329, 19.396976> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153596, 0.190607, -0.969576,
		-0.343470, -0.930334, -0.128481,
		-0.926519, 0.313286, 0.208364,
		17.369009, 15.640315, 19.459486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.589687, 15.096769, 18.901054>,  <18.017572, 15.421015, 19.313631>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.589687, 15.096769, 18.901054> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.348961, 15.394917, 19.015766>,  <17.204525, 15.573805, 19.084593>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.348961, 15.394917, 19.015766>,  <17.589687, 15.096769, 18.901054>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.348961, 15.394917, 19.015766> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175969, 0.226503, -0.957983,
		-0.779006, -0.626995, -0.005152,
		-0.601817, 0.745368, 0.286779,
		17.168415, 15.618527, 19.101799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.023531, 14.999010, 18.520157>,  <17.589687, 15.096769, 18.901054>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.023531, 14.999010, 18.520157> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.023159, 15.381077, 18.638582>,  <17.022936, 15.610317, 18.709637>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.023159, 15.381077, 18.638582>,  <17.023531, 14.999010, 18.520157>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.023159, 15.381077, 18.638582> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306818, 0.281512, -0.909183,
		-0.951768, -0.091683, 0.292801,
		-0.000930, 0.955168, 0.296064,
		17.022881, 15.667627, 18.727402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.523214, 15.215347, 18.200178>,  <17.023531, 14.999010, 18.520157>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.523214, 15.215347, 18.200178> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.706821, 15.554356, 18.306768>,  <16.816986, 15.757761, 18.370724>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.706821, 15.554356, 18.306768>,  <16.523214, 15.215347, 18.200178>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.706821, 15.554356, 18.306768> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312119, 0.434659, -0.844780,
		-0.831796, 0.304596, 0.464044,
		0.459017, 0.847522, 0.266477,
		16.844526, 15.808612, 18.386711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.018404, 15.727685, 18.160980>,  <16.523214, 15.215347, 18.200178>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.018404, 15.727685, 18.160980> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.377796, 15.893635, 18.103556>,  <16.593431, 15.993205, 18.069101>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.377796, 15.893635, 18.103556>,  <16.018404, 15.727685, 18.160980>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.377796, 15.893635, 18.103556> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329956, 0.422452, -0.844194,
		-0.289586, 0.805862, 0.516456,
		0.898481, 0.414875, -0.143563,
		16.647341, 16.018097, 18.060488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.849753, 16.348577, 17.846771>,  <16.018404, 15.727685, 18.160980>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.849753, 16.348577, 17.846771> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.239353, 16.298622, 17.771166>,  <16.473114, 16.268650, 17.725803>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.239353, 16.298622, 17.771166>,  <15.849753, 16.348577, 17.846771>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.239353, 16.298622, 17.771166> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136042, 0.344715, -0.928797,
		0.181151, 0.930363, 0.318763,
		0.974001, -0.124887, -0.189013,
		16.531553, 16.261156, 17.714462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.961277, 16.951027, 17.316315>,  <15.849753, 16.348577, 17.846771>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.961277, 16.951027, 17.316315> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.297565, 16.735767, 17.292372>,  <16.499338, 16.606611, 17.278006>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.297565, 16.735767, 17.292372>,  <15.961277, 16.951027, 17.316315>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.297565, 16.735767, 17.292372> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118192, 0.290269, -0.949618,
		0.528411, 0.791290, 0.307640,
		0.840721, -0.538149, -0.059857,
		16.549782, 16.574322, 17.274414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.462008, 17.447535, 17.163904>,  <15.961277, 16.951027, 17.316315>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.462008, 17.447535, 17.163904> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.512337, 17.075775, 17.025114>,  <16.542534, 16.852720, 16.941841>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.512337, 17.075775, 17.025114>,  <16.462008, 17.447535, 17.163904>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.512337, 17.075775, 17.025114> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046396, 0.354884, -0.933758,
		0.990967, 0.101389, 0.087773,
		0.125822, -0.929396, -0.346974,
		16.550083, 16.796957, 16.921022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.945486, 17.524307, 16.608685>,  <16.462008, 17.447535, 17.163904>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.945486, 17.524307, 16.608685> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.765995, 17.169762, 16.563074>,  <16.658300, 16.957033, 16.535707>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.765995, 17.169762, 16.563074>,  <16.945486, 17.524307, 16.608685>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.765995, 17.169762, 16.563074> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044631, 0.149658, -0.987730,
		0.892554, -0.438131, -0.106715,
		-0.448726, -0.886365, -0.114024,
		16.631376, 16.903852, 16.528868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.123230, 17.368277, 15.955742>,  <16.945486, 17.524307, 16.608685>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.123230, 17.368277, 15.955742> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.836838, 17.094349, 16.009995>,  <16.665003, 16.929993, 16.042545>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.836838, 17.094349, 16.009995>,  <17.123230, 17.368277, 15.955742>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.836838, 17.094349, 16.009995> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330593, 0.161475, -0.929857,
		0.614881, -0.710599, -0.342009,
		-0.715981, -0.684817, 0.135631,
		16.622044, 16.888905, 16.050684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.180586, 16.855194, 15.389945>,  <17.123230, 17.368277, 15.955742>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.180586, 16.855194, 15.389945> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.805130, 16.804279, 15.518167>,  <16.579857, 16.773731, 15.595101>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.805130, 16.804279, 15.518167>,  <17.180586, 16.855194, 15.389945>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.805130, 16.804279, 15.518167> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282098, -0.251411, -0.925858,
		0.198442, -0.959474, 0.200076,
		-0.938638, -0.127288, 0.320556,
		16.523539, 16.766092, 15.614334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.955656, 16.204939, 15.063114>,  <17.180586, 16.855194, 15.389945>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.955656, 16.204939, 15.063114> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.618103, 16.386280, 15.177889>,  <16.415571, 16.495085, 15.246754>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.618103, 16.386280, 15.177889>,  <16.955656, 16.204939, 15.063114>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.618103, 16.386280, 15.177889> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422488, -0.231858, -0.876211,
		-0.330709, -0.860644, 0.387199,
		-0.843881, 0.453358, 0.286935,
		16.364939, 16.522285, 15.263969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.344240, 15.753279, 14.910176>,  <16.955656, 16.204939, 15.063114>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.344240, 15.753279, 14.910176> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.198895, 16.124126, 14.946873>,  <16.111687, 16.346636, 14.968890>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.198895, 16.124126, 14.946873>,  <16.344240, 15.753279, 14.910176>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.198895, 16.124126, 14.946873> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.613472, -0.163996, -0.772501,
		-0.701155, -0.336980, 0.628352,
		-0.363364, 0.927119, 0.091741,
		16.089886, 16.402262, 14.974395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<15.069736, 18.963846, 20.347151> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.465817, 18.933826, 20.394243>,  <15.703466, 18.915813, 20.422499>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.465817, 18.933826, 20.394243>,  <15.069736, 18.963846, 20.347151>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.465817, 18.933826, 20.394243> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137126, -0.364226, 0.921160,
		-0.026254, -0.928282, -0.370950,
		0.990205, -0.075051, 0.117729,
		15.762879, 18.911310, 20.429562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.122207, 18.309029, 20.447041>,  <15.069736, 18.963846, 20.347151>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.122207, 18.309029, 20.447041> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.453258, 18.491913, 20.577265>,  <15.651888, 18.601645, 20.655399>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.453258, 18.491913, 20.577265>,  <15.122207, 18.309029, 20.447041>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.453258, 18.491913, 20.577265> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022062, -0.553086, 0.832832,
		0.560843, -0.696458, -0.447663,
		0.827628, 0.457212, 0.325559,
		15.701546, 18.629076, 20.674932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.615309, 17.774813, 20.689867>,  <15.122207, 18.309029, 20.447041>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.615309, 17.774813, 20.689867> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.714646, 18.127453, 20.850418>,  <15.774249, 18.339037, 20.946749>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.714646, 18.127453, 20.850418>,  <15.615309, 17.774813, 20.689867>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.714646, 18.127453, 20.850418> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054131, -0.401081, 0.914442,
		0.967158, -0.248822, -0.051884,
		0.248343, 0.881602, 0.401377,
		15.789149, 18.391933, 20.970831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.058746, 17.544605, 21.193075>,  <15.615309, 17.774813, 20.689867>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.058746, 17.544605, 21.193075> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.947497, 17.913944, 21.298964>,  <15.880749, 18.135548, 21.362497>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.947497, 17.913944, 21.298964>,  <16.058746, 17.544605, 21.193075>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.947497, 17.913944, 21.298964> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192809, -0.323650, 0.926324,
		0.940996, 0.206589, 0.268044,
		-0.278120, 0.923348, 0.264721,
		15.864061, 18.190948, 21.378380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.346579, 17.732285, 21.855558>,  <16.058746, 17.544605, 21.193075>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.346579, 17.732285, 21.855558> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.079865, 18.030094, 21.868729>,  <15.919836, 18.208780, 21.876631>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.079865, 18.030094, 21.868729>,  <16.346579, 17.732285, 21.855558>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.079865, 18.030094, 21.868729> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142241, -0.170506, 0.975036,
		0.731550, 0.645457, 0.219593,
		-0.666785, 0.744522, 0.032923,
		15.879828, 18.253450, 21.878605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.499622, 18.320719, 22.351288>,  <16.346579, 17.732285, 21.855558>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.499622, 18.320719, 22.351288> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.102158, 18.294537, 22.314743>,  <15.863678, 18.278828, 22.292816>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.102158, 18.294537, 22.314743>,  <16.499622, 18.320719, 22.351288>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.102158, 18.294537, 22.314743> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085373, -0.089072, 0.992360,
		-0.073095, 0.993872, 0.082920,
		-0.993664, -0.065457, -0.091360,
		15.804058, 18.274899, 22.287334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.254200, 18.804190, 22.849861>,  <16.499622, 18.320719, 22.351288>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.254200, 18.804190, 22.849861> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.933442, 18.595676, 22.733082>,  <15.740988, 18.470570, 22.663015>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.933442, 18.595676, 22.733082>,  <16.254200, 18.804190, 22.849861>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.933442, 18.595676, 22.733082> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280578, -0.102847, 0.954305,
		-0.527487, 0.847165, -0.063788,
		-0.801893, -0.521281, -0.291946,
		15.692874, 18.439293, 22.645498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.609179, 19.117767, 23.146530>,  <16.254200, 18.804190, 22.849861>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.609179, 19.117767, 23.146530> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.516238, 18.736309, 23.070038>,  <15.460474, 18.507433, 23.024143>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.516238, 18.736309, 23.070038>,  <15.609179, 19.117767, 23.146530>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.516238, 18.736309, 23.070038> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264947, -0.127118, 0.955847,
		-0.935850, 0.272759, -0.223130,
		-0.232352, -0.953647, -0.191230,
		15.446532, 18.450214, 23.012669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.955186, 19.071268, 23.394024>,  <15.609179, 19.117767, 23.146530>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.955186, 19.071268, 23.394024> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.101470, 18.699783, 23.369535>,  <15.189240, 18.476892, 23.354843>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.101470, 18.699783, 23.369535>,  <14.955186, 19.071268, 23.394024>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.101470, 18.699783, 23.369535> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239000, -0.157278, 0.958198,
		-0.899519, -0.335792, -0.279480,
		0.365711, -0.928713, -0.061220,
		15.211184, 18.421169, 23.351170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.553724, 18.682850, 23.838987>,  <14.955186, 19.071268, 23.394024>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.553724, 18.682850, 23.838987> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.840337, 18.413612, 23.765747>,  <15.012304, 18.252069, 23.721804>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.840337, 18.413612, 23.765747>,  <14.553724, 18.682850, 23.838987>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.840337, 18.413612, 23.765747> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149023, -0.404138, 0.902477,
		-0.681452, -0.619366, -0.389884,
		0.716530, -0.673096, -0.183100,
		15.055296, 18.211683, 23.710817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.236619, 18.051105, 23.929464>,  <14.553724, 18.682850, 23.838987>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.236619, 18.051105, 23.929464> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.632087, 18.037743, 23.988003>,  <14.869368, 18.029724, 24.023127>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.632087, 18.037743, 23.988003>,  <14.236619, 18.051105, 23.929464>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.632087, 18.037743, 23.988003> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143595, -0.494608, 0.857172,
		0.043750, -0.868474, -0.493801,
		0.988669, -0.033406, 0.146348,
		14.928687, 18.027721, 24.031906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.411371, 17.330349, 24.222183>,  <14.236619, 18.051105, 23.929464>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.411371, 17.330349, 24.222183> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.701295, 17.581741, 24.335083>,  <14.875249, 17.732576, 24.402822>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.701295, 17.581741, 24.335083>,  <14.411371, 17.330349, 24.222183>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.701295, 17.581741, 24.335083> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099148, -0.310264, 0.945466,
		0.681779, -0.713267, -0.162570,
		0.724809, 0.628480, 0.282250,
		14.918737, 17.770285, 24.419758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.865129, 17.030924, 24.708960>,  <14.411371, 17.330349, 24.222183>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.865129, 17.030924, 24.708960> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.961041, 17.410702, 24.790009>,  <15.018589, 17.638569, 24.838638>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.961041, 17.410702, 24.790009>,  <14.865129, 17.030924, 24.708960>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.961041, 17.410702, 24.790009> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202103, -0.155323, 0.966969,
		0.949558, -0.272811, 0.154643,
		0.239780, 0.949446, 0.202625,
		15.032975, 17.695536, 24.850796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.383410, 17.006584, 25.282476>,  <14.865129, 17.030924, 24.708960>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.383410, 17.006584, 25.282476> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.170077, 17.344261, 25.260935>,  <15.042078, 17.546867, 25.248009>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.170077, 17.344261, 25.260935>,  <15.383410, 17.006584, 25.282476>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.170077, 17.344261, 25.260935> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175258, -0.047988, 0.983352,
		0.827553, 0.533890, 0.173545,
		-0.533330, 0.844191, -0.053855,
		15.010078, 17.597519, 25.244778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.824265, 16.382790, 25.233158>,  <15.383410, 17.006584, 25.282476>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.824265, 16.382790, 25.233158> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.091190, 16.096901, 25.316933>,  <16.251345, 15.925367, 25.367197>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.091190, 16.096901, 25.316933>,  <15.824265, 16.382790, 25.233158>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.091190, 16.096901, 25.316933> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267234, -0.032704, -0.963077,
		0.695183, 0.698642, 0.169174,
		0.667313, -0.714723, 0.209436,
		16.291384, 15.882484, 25.379763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.435583, 16.575634, 24.916653>,  <15.824265, 16.382790, 25.233158>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.435583, 16.575634, 24.916653> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.413345, 16.179722, 24.969175>,  <16.400003, 15.942174, 25.000689>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.413345, 16.179722, 24.969175>,  <16.435583, 16.575634, 24.916653>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.413345, 16.179722, 24.969175> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226806, -0.140589, -0.963740,
		0.972352, -0.023797, 0.232304,
		-0.055593, -0.989782, 0.131305,
		16.396667, 15.882787, 25.008566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.901510, 16.358389, 24.484400>,  <16.435583, 16.575634, 24.916653>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.901510, 16.358389, 24.484400> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.719791, 16.010780, 24.562805>,  <16.610760, 15.802216, 24.609848>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.719791, 16.010780, 24.562805>,  <16.901510, 16.358389, 24.484400>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.719791, 16.010780, 24.562805> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261971, -0.340619, -0.902967,
		0.851461, -0.358865, 0.382400,
		-0.454296, -0.869019, 0.196012,
		16.583502, 15.750074, 24.621609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.375095, 15.902859, 24.387020>,  <16.901510, 16.358389, 24.484400>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.375095, 15.902859, 24.387020> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.030815, 15.706562, 24.332806>,  <16.824247, 15.588784, 24.300276>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.030815, 15.706562, 24.332806>,  <17.375095, 15.902859, 24.387020>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.030815, 15.706562, 24.332806> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360998, -0.400547, -0.842165,
		0.358996, -0.773779, 0.521907,
		-0.860698, -0.490742, -0.135538,
		16.772606, 15.559340, 24.292145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.633297, 15.226916, 24.036646>,  <17.375095, 15.902859, 24.387020>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.633297, 15.226916, 24.036646> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.238171, 15.255478, 23.981335>,  <17.001095, 15.272615, 23.948149>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.238171, 15.255478, 23.981335>,  <17.633297, 15.226916, 24.036646>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.238171, 15.255478, 23.981335> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106760, -0.335571, -0.935946,
		-0.113233, -0.939305, 0.323859,
		-0.987816, 0.071405, -0.138278,
		16.941826, 15.276899, 23.939852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.374268, 14.584427, 23.706995>,  <17.633297, 15.226916, 24.036646>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.374268, 14.584427, 23.706995> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.096298, 14.860569, 23.626507>,  <16.929516, 15.026255, 23.578215>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.096298, 14.860569, 23.626507>,  <17.374268, 14.584427, 23.706995>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.096298, 14.860569, 23.626507> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154397, -0.130053, -0.979412,
		-0.702312, -0.711685, -0.016212,
		-0.694924, 0.690356, -0.201220,
		16.887821, 15.067676, 23.566141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.940168, 14.263279, 23.194120>,  <17.374268, 14.584427, 23.706995>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.940168, 14.263279, 23.194120> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.859810, 14.653740, 23.161213>,  <16.811594, 14.888017, 23.141468>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.859810, 14.653740, 23.161213>,  <16.940168, 14.263279, 23.194120>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.859810, 14.653740, 23.161213> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081509, -0.100348, -0.991608,
		-0.976215, -0.192507, 0.099725,
		-0.200898, 0.976151, -0.082271,
		16.799540, 14.946586, 23.136532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.277191, 14.313900, 22.785618>,  <16.940168, 14.263279, 23.194120>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.277191, 14.313900, 22.785618> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.471371, 14.662766, 22.761381>,  <16.587879, 14.872085, 22.746840>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.471371, 14.662766, 22.761381>,  <16.277191, 14.313900, 22.785618>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.471371, 14.662766, 22.761381> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138964, 0.008549, -0.990260,
		-0.863150, 0.489141, 0.125349,
		0.485449, 0.872163, -0.060594,
		16.617004, 14.924415, 22.743202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.951055, 14.664917, 22.076611>,  <16.277191, 14.313900, 22.785618>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.951055, 14.664917, 22.076611> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.278172, 14.878513, 22.162468>,  <16.474442, 15.006671, 22.213982>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.278172, 14.878513, 22.162468>,  <15.951055, 14.664917, 22.076611>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.278172, 14.878513, 22.162468> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089499, 0.250421, -0.963992,
		-0.568512, 0.807555, 0.157001,
		0.817792, 0.533990, 0.214642,
		16.523510, 15.038711, 22.226860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.874014, 15.298273, 21.786215>,  <15.951055, 14.664917, 22.076611>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.874014, 15.298273, 21.786215> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.268322, 15.257309, 21.839537>,  <16.504908, 15.232731, 21.871531>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.268322, 15.257309, 21.839537>,  <15.874014, 15.298273, 21.786215>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.268322, 15.257309, 21.839537> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155983, 0.261627, -0.952481,
		0.062667, 0.959721, 0.273879,
		0.985770, -0.102410, 0.133305,
		16.564053, 15.226586, 21.879528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.154655, 15.889359, 21.441769>,  <15.874014, 15.298273, 21.786215>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.154655, 15.889359, 21.441769> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.474506, 15.650211, 21.464216>,  <16.666416, 15.506722, 21.477684>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.474506, 15.650211, 21.464216>,  <16.154655, 15.889359, 21.441769>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.474506, 15.650211, 21.464216> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315260, 0.338429, -0.886609,
		0.511086, 0.726648, 0.459102,
		0.799626, -0.597870, 0.056117,
		16.714394, 15.470850, 21.481050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.747847, 16.265427, 21.190386>,  <16.154655, 15.889359, 21.441769>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.747847, 16.265427, 21.190386> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.842300, 15.879753, 21.142073>,  <16.898973, 15.648349, 21.113085>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.842300, 15.879753, 21.142073>,  <16.747847, 16.265427, 21.190386>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.842300, 15.879753, 21.142073> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383291, 0.206640, -0.900216,
		0.892932, 0.166278, 0.418358,
		0.236136, -0.964184, -0.120783,
		16.913141, 15.590498, 21.105839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.338114, 16.288256, 20.999088>,  <16.747847, 16.265427, 21.190386>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.338114, 16.288256, 20.999088> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.246628, 15.921978, 20.866913>,  <17.191736, 15.702211, 20.787607>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.246628, 15.921978, 20.866913>,  <17.338114, 16.288256, 20.999088>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.246628, 15.921978, 20.866913> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268985, 0.266779, -0.925460,
		0.935594, -0.300551, 0.185292,
		-0.228716, -0.915695, -0.330441,
		17.178013, 15.647269, 20.767780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.907919, 16.092939, 20.570675>,  <17.338114, 16.288256, 20.999088>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.907919, 16.092939, 20.570675> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.601208, 15.865257, 20.451975>,  <17.417181, 15.728648, 20.380754>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.601208, 15.865257, 20.451975>,  <17.907919, 16.092939, 20.570675>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.601208, 15.865257, 20.451975> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204049, 0.222176, -0.953416,
		0.608620, -0.791608, -0.054213,
		-0.766777, -0.569205, -0.296748,
		17.371174, 15.694496, 20.362951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.701067, 16.098333, 20.698404>,  <17.907919, 16.092939, 20.570675>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.701067, 16.098333, 20.698404> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.971592, 16.392921, 20.704227>,  <19.133907, 16.569675, 20.707722>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.971592, 16.392921, 20.704227>,  <18.701067, 16.098333, 20.698404>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.971592, 16.392921, 20.704227> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033844, 0.011323, 0.999363,
		0.735838, -0.676373, 0.032583,
		0.676311, 0.736472, 0.014560,
		19.174486, 16.613863, 20.708595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.207952, 15.803632, 21.142262>,  <18.701067, 16.098333, 20.698404>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.207952, 15.803632, 21.142262> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.250095, 16.201405, 21.143192>,  <19.275381, 16.440067, 21.143751>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.250095, 16.201405, 21.143192>,  <19.207952, 15.803632, 21.142262>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.250095, 16.201405, 21.143192> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083018, 0.006462, 0.996527,
		0.990963, -0.105183, 0.083237,
		0.105356, 0.994432, 0.002328,
		19.281702, 16.499735, 21.143890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.822874, 15.976170, 21.526859>,  <19.207952, 15.803632, 21.142262>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.822874, 15.976170, 21.526859> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.599655, 16.308052, 21.532085>,  <19.465723, 16.507181, 21.535221>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.599655, 16.308052, 21.532085>,  <19.822874, 15.976170, 21.526859>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.599655, 16.308052, 21.532085> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018124, -0.003556, 0.999830,
		0.829611, 0.558189, -0.013053,
		-0.558047, 0.829706, 0.013067,
		19.432241, 16.556965, 21.536005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.196007, 16.277433, 21.916481>,  <19.822874, 15.976170, 21.526859>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.196007, 16.277433, 21.916481> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.855560, 16.486988, 21.930008>,  <19.651293, 16.612720, 21.938124>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.855560, 16.486988, 21.930008>,  <20.196007, 16.277433, 21.916481>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.855560, 16.486988, 21.930008> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142366, 0.168330, 0.975396,
		0.505304, 0.834990, -0.217852,
		-0.851117, 0.523886, 0.033816,
		19.600225, 16.644154, 21.940153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.359909, 16.560450, 22.407438>,  <20.196007, 16.277433, 21.916481>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.359909, 16.560450, 22.407438> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.968140, 16.634392, 22.375038>,  <19.733078, 16.678757, 22.355598>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.968140, 16.634392, 22.375038>,  <20.359909, 16.560450, 22.407438>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.968140, 16.634392, 22.375038> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065524, 0.088352, 0.993932,
		0.190891, 0.978786, -0.074422,
		-0.979422, 0.184856, -0.081000,
		19.674313, 16.689848, 22.350739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.092148, 17.335630, 22.577110>,  <20.359909, 16.560450, 22.407438>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.092148, 17.335630, 22.577110> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.768173, 17.109512, 22.639645>,  <19.573788, 16.973841, 22.677166>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.768173, 17.109512, 22.639645>,  <20.092148, 17.335630, 22.577110>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.768173, 17.109512, 22.639645> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086198, 0.378384, 0.921626,
		-0.580147, 0.732984, -0.355195,
		-0.809938, -0.565296, 0.156337,
		19.525192, 16.939924, 22.686546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.589716, 17.793537, 22.961771>,  <20.092148, 17.335630, 22.577110>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.589716, 17.793537, 22.961771> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.530872, 17.408978, 23.054787>,  <19.495565, 17.178242, 23.110596>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.530872, 17.408978, 23.054787>,  <19.589716, 17.793537, 22.961771>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.530872, 17.408978, 23.054787> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170277, 0.256202, 0.951507,
		-0.974353, 0.100380, -0.201393,
		-0.147110, -0.961397, 0.232539,
		19.486740, 17.120558, 23.124548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.515835, 18.561357, 23.156992>,  <19.589716, 17.793537, 22.961771>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.515835, 18.561357, 23.156992> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.874657, 18.671196, 23.295490>,  <20.089951, 18.737099, 23.378590>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.874657, 18.671196, 23.295490>,  <19.515835, 18.561357, 23.156992>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.874657, 18.671196, 23.295490> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300594, 0.195171, -0.933569,
		-0.323933, 0.941543, 0.092537,
		0.897057, 0.274598, 0.346245,
		20.143774, 18.753576, 23.399364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.659615, 19.248573, 22.889885>,  <19.515835, 18.561357, 23.156992>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.659615, 19.248573, 22.889885> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.998837, 19.048862, 22.960913>,  <20.202370, 18.929037, 23.003529>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.998837, 19.048862, 22.960913>,  <19.659615, 19.248573, 22.889885>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.998837, 19.048862, 22.960913> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300668, 0.177430, -0.937079,
		0.436354, 0.848082, 0.300586,
		0.848053, -0.499275, 0.177568,
		20.253252, 18.899080, 23.014183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.107641, 19.574135, 22.416956>,  <19.659615, 19.248573, 22.889885>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.107641, 19.574135, 22.416956> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.301838, 19.237465, 22.511515>,  <20.418356, 19.035463, 22.568251>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.301838, 19.237465, 22.511515>,  <20.107641, 19.574135, 22.416956>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.301838, 19.237465, 22.511515> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240601, -0.131326, -0.961699,
		0.840481, 0.523775, 0.138749,
		0.485493, -0.841673, 0.236398,
		20.447485, 18.984962, 22.582434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.713579, 19.763134, 22.118767>,  <20.107641, 19.574135, 22.416956>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.713579, 19.763134, 22.118767> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.738106, 19.368679, 22.180441>,  <20.752821, 19.132006, 22.217445>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.738106, 19.368679, 22.180441>,  <20.713579, 19.763134, 22.118767>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.738106, 19.368679, 22.180441> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.650569, -0.077666, -0.755466,
		0.756968, 0.146630, 0.636788,
		0.061317, -0.986138, 0.154184,
		20.756500, 19.072838, 22.226696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.382278, 19.532154, 22.136883>,  <20.713579, 19.763134, 22.118767>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.382278, 19.532154, 22.136883> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.211258, 19.180939, 22.050865>,  <21.108646, 18.970209, 21.999254>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.211258, 19.180939, 22.050865>,  <21.382278, 19.532154, 22.136883>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.211258, 19.180939, 22.050865> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.597719, -0.096118, -0.795923,
		0.678183, -0.468835, 0.565917,
		-0.427551, -0.878040, -0.215046,
		21.082993, 18.917526, 21.986351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.951126, 19.000151, 22.019161>,  <21.382278, 19.532154, 22.136883>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.951126, 19.000151, 22.019161> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.609753, 18.911793, 21.830332>,  <21.404928, 18.858778, 21.717033>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.609753, 18.911793, 21.830332>,  <21.951126, 19.000151, 22.019161>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.609753, 18.911793, 21.830332> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520198, -0.304875, -0.797775,
		0.032301, -0.926422, 0.375100,
		-0.853435, -0.220895, -0.472075,
		21.353722, 18.845524, 21.688709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.154825, 18.447159, 21.516752>,  <21.951126, 19.000151, 22.019161>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.154825, 18.447159, 21.516752> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.777092, 18.532524, 21.416599>,  <21.550451, 18.583742, 21.356508>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.777092, 18.532524, 21.416599>,  <22.154825, 18.447159, 21.516752>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.777092, 18.532524, 21.416599> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214747, -0.176712, -0.960550,
		-0.249240, -0.960847, 0.121045,
		-0.944332, 0.213414, -0.250382,
		21.493792, 18.596548, 21.341484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<18.205387, 19.938540, 24.766134> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.881638, 19.704182, 24.749922>,  <17.687387, 19.563568, 24.740194>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.881638, 19.704182, 24.749922>,  <18.205387, 19.938540, 24.766134>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.881638, 19.704182, 24.749922> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003833, 0.074282, -0.997230,
		0.587281, -0.806977, -0.062368,
		-0.809374, -0.585894, -0.040532,
		17.638824, 19.528414, 24.737762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.302780, 19.323238, 24.375303>,  <18.205387, 19.938540, 24.766134>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.302780, 19.323238, 24.375303> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.904156, 19.352779, 24.360268>,  <17.664982, 19.370504, 24.351246>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.904156, 19.352779, 24.360268>,  <18.302780, 19.323238, 24.375303>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.904156, 19.352779, 24.360268> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056795, 0.278377, -0.958791,
		-0.060346, -0.957628, -0.281614,
		-0.996561, 0.073853, -0.037590,
		17.605188, 19.374935, 24.348991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.106764, 18.990355, 23.833450>,  <18.302780, 19.323238, 24.375303>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.106764, 18.990355, 23.833450> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.792133, 19.233639, 23.876114>,  <17.603355, 19.379608, 23.901712>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.792133, 19.233639, 23.876114>,  <18.106764, 18.990355, 23.833450>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.792133, 19.233639, 23.876114> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063754, 0.251795, -0.965678,
		-0.614191, -0.752782, -0.236832,
		-0.786578, 0.608209, 0.106657,
		17.556160, 19.416101, 23.908112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.737799, 18.816095, 23.208513>,  <18.106764, 18.990355, 23.833450>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.737799, 18.816095, 23.208513> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.578178, 19.153522, 23.352262>,  <17.482407, 19.355980, 23.438513>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.578178, 19.153522, 23.352262>,  <17.737799, 18.816095, 23.208513>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.578178, 19.153522, 23.352262> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086184, 0.355691, -0.930622,
		-0.912870, -0.402337, -0.069237,
		-0.399051, 0.843569, 0.359374,
		17.458464, 19.406593, 23.460075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.073025, 18.906218, 22.910681>,  <17.737799, 18.816095, 23.208513>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.073025, 18.906218, 22.910681> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.218472, 19.264458, 23.013193>,  <17.305740, 19.479403, 23.074701>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.218472, 19.264458, 23.013193>,  <17.073025, 18.906218, 22.910681>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.218472, 19.264458, 23.013193> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088733, 0.307162, -0.947511,
		-0.927312, 0.321791, 0.191160,
		0.363618, 0.895601, 0.256282,
		17.327557, 19.533138, 23.090078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.642006, 19.296780, 22.510988>,  <17.073025, 18.906218, 22.910681>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.642006, 19.296780, 22.510988> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<16.966373, 19.516212, 22.592442>,  <17.160994, 19.647873, 22.641314>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<16.966373, 19.516212, 22.592442>,  <16.642006, 19.296780, 22.510988>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.966373, 19.516212, 22.592442> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054867, 0.417746, -0.906906,
		-0.582579, 0.724255, 0.368858,
		0.810920, 0.548583, 0.203633,
		17.209650, 19.680788, 22.653532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.475592, 19.911261, 22.205809>,  <16.642006, 19.296780, 22.510988>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.475592, 19.911261, 22.205809> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<16.869938, 19.915825, 22.272673>,  <17.106544, 19.918564, 22.312792>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<16.869938, 19.915825, 22.272673>,  <16.475592, 19.911261, 22.205809>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.869938, 19.915825, 22.272673> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137528, 0.514752, -0.846237,
		-0.095704, 0.857263, 0.505905,
		0.985864, 0.011413, 0.167161,
		17.165697, 19.919249, 22.322821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.667820, 20.602079, 22.223415>,  <16.475592, 19.911261, 22.205809>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.667820, 20.602079, 22.223415> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<16.985813, 20.381660, 22.121946>,  <17.176609, 20.249409, 22.061066>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<16.985813, 20.381660, 22.121946>,  <16.667820, 20.602079, 22.223415>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.985813, 20.381660, 22.121946> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067943, 0.496415, -0.865422,
		0.602815, 0.670761, 0.432081,
		0.794983, -0.551046, -0.253673,
		17.224308, 20.216347, 22.045845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.080967, 21.027735, 21.908157>,  <16.667820, 20.602079, 22.223415>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.080967, 21.027735, 21.908157> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.253059, 20.689365, 21.782099>,  <17.356314, 20.486343, 21.706463>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.253059, 20.689365, 21.782099>,  <17.080967, 21.027735, 21.908157>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.253059, 20.689365, 21.782099> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069520, 0.379120, -0.922732,
		0.900038, 0.375078, 0.221917,
		0.430230, -0.845922, -0.315147,
		17.382128, 20.435589, 21.687555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.743811, 21.301872, 21.624249>,  <17.080967, 21.027735, 21.908157>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.743811, 21.301872, 21.624249> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.671944, 20.945484, 21.457447>,  <17.628822, 20.731651, 21.357367>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.671944, 20.945484, 21.457447>,  <17.743811, 21.301872, 21.624249>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.671944, 20.945484, 21.457447> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189757, 0.384553, -0.903388,
		0.965252, -0.241440, 0.099975,
		-0.179668, -0.890969, -0.417006,
		17.618044, 20.678194, 21.332346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.361572, 21.166288, 21.168245>,  <17.743811, 21.301872, 21.624249>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.361572, 21.166288, 21.168245> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.058884, 20.941753, 21.034220>,  <17.877270, 20.807032, 20.953804>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.058884, 20.941753, 21.034220>,  <18.361572, 21.166288, 21.168245>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.058884, 20.941753, 21.034220> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184538, 0.308276, -0.933226,
		0.627149, -0.768026, -0.129691,
		-0.756723, -0.561339, -0.335066,
		17.831867, 20.773352, 20.933701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.658327, 20.878170, 20.667276>,  <18.361572, 21.166288, 21.168245>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.658327, 20.878170, 20.667276> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.267204, 20.835861, 20.594934>,  <18.032532, 20.810476, 20.551529>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.267204, 20.835861, 20.594934>,  <18.658327, 20.878170, 20.667276>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.267204, 20.835861, 20.594934> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116772, 0.441570, -0.889595,
		0.173951, -0.890970, -0.419419,
		-0.977806, -0.105770, -0.180852,
		17.973862, 20.804131, 20.540678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.429193, 20.637590, 20.700159>,  <18.658327, 20.878170, 20.667276>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.429193, 20.637590, 20.700159> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.673931, 20.953346, 20.720207>,  <19.820774, 21.142799, 20.732237>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.673931, 20.953346, 20.720207>,  <19.429193, 20.637590, 20.700159>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.673931, 20.953346, 20.720207> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142515, 0.047687, 0.988643,
		0.778035, -0.612037, 0.141677,
		0.611842, 0.789391, 0.050122,
		19.857483, 21.190163, 20.735245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.683144, 20.556206, 21.416265>,  <19.429193, 20.637590, 20.700159>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.683144, 20.556206, 21.416265> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.790276, 20.929459, 21.320324>,  <19.854555, 21.153410, 21.262758>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.790276, 20.929459, 21.320324>,  <19.683144, 20.556206, 21.416265>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.790276, 20.929459, 21.320324> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036956, 0.238817, 0.970361,
		0.962757, -0.268756, 0.029477,
		0.267830, 0.933133, -0.239855,
		19.870625, 21.209398, 21.248367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.317911, 20.737150, 21.873096>,  <19.683144, 20.556206, 21.416265>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.317911, 20.737150, 21.873096> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.146812, 21.081711, 21.763538>,  <20.044153, 21.288448, 21.697803>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.146812, 21.081711, 21.763538>,  <20.317911, 20.737150, 21.873096>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.146812, 21.081711, 21.763538> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156646, 0.227788, 0.961028,
		0.890223, 0.453979, 0.037499,
		-0.427745, 0.861403, -0.273896,
		20.018490, 21.340132, 21.681370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.613440, 21.124821, 22.258595>,  <20.317911, 20.737150, 21.873096>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.613440, 21.124821, 22.258595> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.296810, 21.348869, 22.160879>,  <20.106833, 21.483297, 22.102249>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.296810, 21.348869, 22.160879>,  <20.613440, 21.124821, 22.258595>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.296810, 21.348869, 22.160879> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160349, 0.195368, 0.967533,
		0.589660, 0.805045, -0.064834,
		-0.791574, 0.560120, -0.244289,
		20.059338, 21.516905, 22.087593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.658510, 21.695496, 22.736002>,  <20.613440, 21.124821, 22.258595>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.658510, 21.695496, 22.736002> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.281631, 21.688232, 22.602177>,  <20.055504, 21.683874, 22.521881>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.281631, 21.688232, 22.602177>,  <20.658510, 21.695496, 22.736002>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.281631, 21.688232, 22.602177> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333425, 0.149239, 0.930890,
		0.033029, 0.988634, -0.146667,
		-0.942198, -0.018156, -0.334565,
		19.998972, 21.682785, 22.501806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.332975, 22.387375, 22.929800>,  <20.658510, 21.695496, 22.736002>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.332975, 22.387375, 22.929800> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.023163, 22.139870, 22.877293>,  <19.837275, 21.991365, 22.845789>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.023163, 22.139870, 22.877293>,  <20.332975, 22.387375, 22.929800>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.023163, 22.139870, 22.877293> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284401, 0.155299, 0.946043,
		-0.564993, 0.770073, -0.296262,
		-0.774531, -0.618765, -0.131267,
		19.790804, 21.954241, 22.837914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.737665, 22.675833, 23.335190>,  <20.332975, 22.387375, 22.929800>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.737665, 22.675833, 23.335190> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.617199, 22.299347, 23.273981>,  <19.544918, 22.073456, 23.237257>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.617199, 22.299347, 23.273981>,  <19.737665, 22.675833, 23.335190>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.617199, 22.299347, 23.273981> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285759, -0.064014, 0.956161,
		-0.909747, 0.331692, -0.249681,
		-0.301168, -0.941213, -0.153021,
		19.526848, 22.016983, 23.228075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.148733, 22.611940, 23.651285>,  <19.737665, 22.675833, 23.335190>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.148733, 22.611940, 23.651285> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.249546, 22.225674, 23.626081>,  <19.310034, 21.993914, 23.610958>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.249546, 22.225674, 23.626081>,  <19.148733, 22.611940, 23.651285>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.249546, 22.225674, 23.626081> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183749, -0.111682, 0.976608,
		-0.950113, -0.234560, -0.205588,
		0.252033, -0.965665, -0.063010,
		19.325155, 21.935974, 23.607178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.644665, 22.243000, 24.053196>,  <19.148733, 22.611940, 23.651285>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.644665, 22.243000, 24.053196> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.948627, 21.983955, 24.030771>,  <19.131004, 21.828529, 24.017317>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.948627, 21.983955, 24.030771>,  <18.644665, 22.243000, 24.053196>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.948627, 21.983955, 24.030771> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042702, -0.135794, 0.989816,
		-0.648630, -0.749772, -0.130845,
		0.759905, -0.647612, -0.056064,
		19.176600, 21.789671, 24.013952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.409033, 21.675188, 24.440567>,  <18.644665, 22.243000, 24.053196>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.409033, 21.675188, 24.440567> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.806530, 21.634945, 24.421162>,  <19.045029, 21.610800, 24.409519>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.806530, 21.634945, 24.421162>,  <18.409033, 21.675188, 24.440567>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.806530, 21.634945, 24.421162> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016566, -0.296761, 0.954808,
		-0.110456, -0.949637, -0.293237,
		0.993743, -0.100607, -0.048511,
		19.104652, 21.604763, 24.406609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.489887, 21.154387, 24.858889>,  <18.409033, 21.675188, 24.440567>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.489887, 21.154387, 24.858889> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.852356, 21.322765, 24.842623>,  <19.069838, 21.423794, 24.832863>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.852356, 21.322765, 24.842623>,  <18.489887, 21.154387, 24.858889>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.852356, 21.322765, 24.842623> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074261, -0.063720, 0.995201,
		0.416338, -0.904843, -0.089002,
		0.906172, 0.420949, -0.040666,
		19.124208, 21.449049, 24.830423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.795788, 20.827173, 25.384501>,  <18.489887, 21.154387, 24.858889>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.795788, 20.827173, 25.384501> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.030632, 21.148830, 25.347279>,  <19.171539, 21.341824, 25.324945>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.030632, 21.148830, 25.347279>,  <18.795788, 20.827173, 25.384501>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.030632, 21.148830, 25.347279> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081996, 0.055286, 0.995098,
		0.805344, -0.591862, -0.033477,
		0.587110, 0.804141, -0.093055,
		19.206764, 21.390072, 25.319363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.362160, 20.633759, 25.772051>,  <18.795788, 20.827173, 25.384501>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.362160, 20.633759, 25.772051> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.378857, 21.031433, 25.732349>,  <19.388874, 21.270039, 25.708529>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.378857, 21.031433, 25.732349>,  <19.362160, 20.633759, 25.772051>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.378857, 21.031433, 25.732349> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082746, 0.095558, 0.991979,
		0.995696, -0.049619, -0.078277,
		0.041741, 0.994186, -0.099252,
		19.391378, 21.329689, 25.702574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.889198, 20.792831, 26.214878>,  <19.362160, 20.633759, 25.772051>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.889198, 20.792831, 26.214878> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.663311, 21.118134, 26.158726>,  <19.527779, 21.313316, 26.125034>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.663311, 21.118134, 26.158726>,  <19.889198, 20.792831, 26.214878>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.663311, 21.118134, 26.158726> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004329, 0.167180, 0.985917,
		0.825274, 0.557371, -0.090889,
		-0.564717, 0.813258, -0.140382,
		19.493896, 21.362110, 26.116611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.041063, 19.970840, 26.059736>,  <19.889198, 20.792831, 26.214878>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.041063, 19.970840, 26.059736> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.906494, 19.599739, 26.124350>,  <19.825752, 19.377079, 26.163118>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.906494, 19.599739, 26.124350>,  <20.041063, 19.970840, 26.059736>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.906494, 19.599739, 26.124350> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511466, -0.324039, -0.795865,
		0.790711, -0.185127, 0.583528,
		-0.336422, -0.927754, 0.161535,
		19.805567, 19.321413, 26.172810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.635334, 19.544321, 25.948055>,  <20.041063, 19.970840, 26.059736>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.635334, 19.544321, 25.948055> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.308289, 19.315838, 25.919132>,  <20.112061, 19.178747, 25.901779>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.308289, 19.315838, 25.919132>,  <20.635334, 19.544321, 25.948055>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.308289, 19.315838, 25.919132> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347964, -0.390158, -0.852466,
		0.458726, -0.722148, 0.517758,
		-0.817614, -0.571209, -0.072306,
		20.063004, 19.144476, 25.897440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.933622, 18.921965, 25.737103>,  <20.635334, 19.544321, 25.948055>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.933622, 18.921965, 25.737103> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.549511, 18.911133, 25.626011>,  <20.319044, 18.904634, 25.559355>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.549511, 18.911133, 25.626011>,  <20.933622, 18.921965, 25.737103>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.549511, 18.911133, 25.626011> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276640, -0.222849, -0.934777,
		-0.036578, -0.974477, 0.221488,
		-0.960277, -0.027081, -0.277731,
		20.261427, 18.903009, 25.542692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.890863, 18.364393, 25.266359>,  <20.933622, 18.921965, 25.737103>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.890863, 18.364393, 25.266359> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.561264, 18.578159, 25.191074>,  <20.363504, 18.706419, 25.145903>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.561264, 18.578159, 25.191074>,  <20.890863, 18.364393, 25.266359>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.561264, 18.578159, 25.191074> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079052, -0.220497, -0.972179,
		-0.561049, -0.815954, 0.139442,
		-0.824000, 0.534416, -0.188213,
		20.314064, 18.738483, 25.134611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.453144, 17.944181, 24.879719>,  <20.890863, 18.364393, 25.266359>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.453144, 17.944181, 24.879719> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.307384, 18.306816, 24.794573>,  <20.219929, 18.524397, 24.743484>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.307384, 18.306816, 24.794573>,  <20.453144, 17.944181, 24.879719>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.307384, 18.306816, 24.794573> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072084, -0.255358, -0.964155,
		-0.928448, -0.335995, 0.158404,
		-0.364401, 0.906587, -0.212867,
		20.198065, 18.578793, 24.730713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.014975, 17.779247, 24.345341>,  <20.453144, 17.944181, 24.879719>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.014975, 17.779247, 24.345341> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.083591, 18.171932, 24.312319>,  <20.124762, 18.407543, 24.292505>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.083591, 18.171932, 24.312319>,  <20.014975, 17.779247, 24.345341>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.083591, 18.171932, 24.312319> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016547, -0.080912, -0.996584,
		-0.985038, 0.172324, 0.002365,
		0.171544, 0.981712, -0.082553,
		20.135056, 18.466446, 24.287554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.551771, 18.120100, 23.759146>,  <20.014975, 17.779247, 24.345341>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.551771, 18.120100, 23.759146> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.859188, 18.373135, 23.797468>,  <20.043638, 18.524956, 23.820461>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.859188, 18.373135, 23.797468>,  <19.551771, 18.120100, 23.759146>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.859188, 18.373135, 23.797468> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041065, 0.100664, -0.994073,
		-0.638480, 0.767921, 0.051388,
		0.768542, 0.632586, 0.095806,
		20.089750, 18.562910, 23.826210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.973871, 17.793877, 23.409292>,  <19.551771, 18.120100, 23.759146>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.973871, 17.793877, 23.409292> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.130199, 17.430607, 23.469269>,  <19.223995, 17.212645, 23.505255>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.130199, 17.430607, 23.469269>,  <18.973871, 17.793877, 23.409292>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.130199, 17.430607, 23.469269> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267673, 0.043725, 0.962517,
		-0.880688, -0.416306, -0.226004,
		0.390820, -0.908173, 0.149942,
		19.247446, 17.158155, 23.514252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.569843, 17.556833, 23.907717>,  <18.973871, 17.793877, 23.409292>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.569843, 17.556833, 23.907717> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.845230, 17.270599, 23.954962>,  <19.010462, 17.098860, 23.983309>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.845230, 17.270599, 23.954962>,  <18.569843, 17.556833, 23.907717>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.845230, 17.270599, 23.954962> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234698, -0.065722, 0.969844,
		-0.686244, -0.695426, -0.213194,
		0.688466, -0.715586, 0.118114,
		19.051769, 17.055923, 23.990396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.281929, 16.836315, 24.160423>,  <18.569843, 17.556833, 23.907717>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.281929, 16.836315, 24.160423> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.666069, 16.872982, 24.265739>,  <18.896553, 16.894981, 24.328928>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.666069, 16.872982, 24.265739>,  <18.281929, 16.836315, 24.160423>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.666069, 16.872982, 24.265739> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252942, -0.110641, 0.961134,
		0.117237, -0.989624, -0.083068,
		0.960352, 0.091669, 0.263289,
		18.954174, 16.900482, 24.344727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.351137, 16.238317, 24.561926>,  <18.281929, 16.836315, 24.160423>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.351137, 16.238317, 24.561926> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.668011, 16.472622, 24.630434>,  <18.858135, 16.613205, 24.671539>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.668011, 16.472622, 24.630434>,  <18.351137, 16.238317, 24.561926>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.668011, 16.472622, 24.630434> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112400, -0.135798, 0.984340,
		0.599844, -0.799027, -0.041737,
		0.792183, 0.585759, 0.171268,
		18.905666, 16.648350, 24.681814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.714701, 15.921222, 25.036791>,  <18.351137, 16.238317, 24.561926>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.714701, 15.921222, 25.036791> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.855938, 16.287540, 25.113359>,  <18.940681, 16.507332, 25.159300>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.855938, 16.287540, 25.113359>,  <18.714701, 15.921222, 25.036791>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.855938, 16.287540, 25.113359> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155511, -0.144303, 0.977237,
		0.922572, -0.374825, 0.091464,
		0.353095, 0.915796, 0.191420,
		18.961866, 16.562279, 25.170786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.167416, 15.871537, 25.585115>,  <18.714701, 15.921222, 25.036791>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.167416, 15.871537, 25.585115> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.047924, 16.253258, 25.588486>,  <18.976229, 16.482290, 25.590508>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.047924, 16.253258, 25.588486>,  <19.167416, 15.871537, 25.585115>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.047924, 16.253258, 25.588486> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215882, -0.076173, 0.973444,
		0.929601, 0.288975, 0.228771,
		-0.298727, 0.954302, 0.008426,
		18.958305, 16.539549, 25.591013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.468979, 16.131599, 26.206947>,  <19.167416, 15.871537, 25.585115>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.468979, 16.131599, 26.206947> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.174599, 16.387386, 26.117989>,  <18.997971, 16.540857, 26.064613>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.174599, 16.387386, 26.117989>,  <19.468979, 16.131599, 26.206947>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.174599, 16.387386, 26.117989> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215708, 0.089902, 0.972310,
		0.641753, 0.763545, 0.071774,
		-0.735950, 0.639465, -0.222398,
		18.953814, 16.579226, 26.051270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.501781, 16.697830, 26.723719>,  <19.468979, 16.131599, 26.206947>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.501781, 16.697830, 26.723719> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.141991, 16.757610, 26.559473>,  <18.926117, 16.793478, 26.460926>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.141991, 16.757610, 26.559473>,  <19.501781, 16.697830, 26.723719>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.141991, 16.757610, 26.559473> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390803, 0.145237, 0.908944,
		0.195480, 0.978044, -0.072231,
		-0.899478, 0.149452, -0.410614,
		18.872147, 16.802446, 26.436289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.271742, 17.242987, 26.978472>,  <19.501781, 16.697830, 26.723719>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.271742, 17.242987, 26.978472> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.928158, 17.064629, 26.877779>,  <18.722008, 16.957615, 26.817364>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.928158, 17.064629, 26.877779>,  <19.271742, 17.242987, 26.978472>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.928158, 17.064629, 26.877779> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368519, 0.197009, 0.908505,
		-0.355503, 0.873136, -0.333543,
		-0.858959, -0.445894, -0.251730,
		18.670469, 16.930861, 26.802259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<18.978504, 18.834068, 10.635090> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.605766, 18.712780, 10.714814>,  <18.382124, 18.640007, 10.762649>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.605766, 18.712780, 10.714814>,  <18.978504, 18.834068, 10.635090>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.605766, 18.712780, 10.714814> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301414, -0.341005, 0.890430,
		-0.202029, 0.889817, 0.409158,
		-0.931844, -0.303219, 0.199311,
		18.326214, 18.621815, 10.774608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.816801, 19.180359, 11.283781>,  <18.978504, 18.834068, 10.635090>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.816801, 19.180359, 11.283781> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.578140, 18.863079, 11.235056>,  <18.434944, 18.672710, 11.205821>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.578140, 18.863079, 11.235056>,  <18.816801, 19.180359, 11.283781>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.578140, 18.863079, 11.235056> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215691, -0.304712, 0.927700,
		-0.772971, 0.527240, 0.352894,
		-0.596652, -0.793201, -0.121813,
		18.399145, 18.625118, 11.198512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.316046, 19.187536, 11.796429>,  <18.816801, 19.180359, 11.283781>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.316046, 19.187536, 11.796429> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.345100, 18.808994, 11.670482>,  <18.362534, 18.581869, 11.594913>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.345100, 18.808994, 11.670482>,  <18.316046, 19.187536, 11.796429>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.345100, 18.808994, 11.670482> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157514, -0.300854, 0.940572,
		-0.984842, -0.117914, 0.127212,
		0.072634, -0.946352, -0.314867,
		18.366890, 18.525089, 11.576021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.202482, 18.863445, 12.420884>,  <18.316046, 19.187536, 11.796429>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.202482, 18.863445, 12.420884> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.338501, 18.589291, 12.163323>,  <18.420113, 18.424797, 12.008787>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.338501, 18.589291, 12.163323>,  <18.202482, 18.863445, 12.420884>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.338501, 18.589291, 12.163323> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258494, -0.590207, 0.764746,
		-0.904184, -0.426495, -0.023530,
		0.340048, -0.685389, -0.643902,
		18.440516, 18.383675, 11.970153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.098345, 18.273239, 12.774038>,  <18.202482, 18.863445, 12.420884>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.098345, 18.273239, 12.774038> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.374500, 18.158836, 12.508238>,  <18.540194, 18.090195, 12.348758>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.374500, 18.158836, 12.508238>,  <18.098345, 18.273239, 12.774038>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.374500, 18.158836, 12.508238> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431087, -0.575000, 0.695370,
		-0.580966, -0.766535, -0.273683,
		0.690393, -0.286005, -0.664499,
		18.581617, 18.073034, 12.308887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.122259, 17.549274, 12.720212>,  <18.098345, 18.273239, 12.774038>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.122259, 17.549274, 12.720212> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.476574, 17.704872, 12.618969>,  <18.689163, 17.798231, 12.558223>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.476574, 17.704872, 12.618969>,  <18.122259, 17.549274, 12.720212>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.476574, 17.704872, 12.618969> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433196, -0.497365, 0.751644,
		0.166499, -0.775442, -0.609071,
		0.885787, 0.388995, -0.253108,
		18.742310, 17.821571, 12.543036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.543135, 17.078543, 12.974927>,  <18.122259, 17.549274, 12.720212>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.543135, 17.078543, 12.974927> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.790222, 17.386841, 12.912481>,  <18.938475, 17.571819, 12.875013>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.790222, 17.386841, 12.912481>,  <18.543135, 17.078543, 12.974927>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.790222, 17.386841, 12.912481> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582138, -0.314704, 0.749718,
		0.528712, -0.553997, -0.643080,
		0.617721, 0.770746, -0.156115,
		18.975538, 17.618065, 12.865646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.219423, 16.765839, 12.950965>,  <18.543135, 17.078543, 12.974927>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.219423, 16.765839, 12.950965> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.291348, 17.153301, 13.019520>,  <19.334501, 17.385778, 13.060653>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.291348, 17.153301, 13.019520>,  <19.219423, 16.765839, 12.950965>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.291348, 17.153301, 13.019520> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.639180, -0.247483, 0.728149,
		0.747742, -0.021379, -0.663646,
		0.179809, 0.968656, 0.171388,
		19.345289, 17.443897, 13.070936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.912352, 16.785900, 13.124393>,  <19.219423, 16.765839, 12.950965>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.912352, 16.785900, 13.124393> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.747723, 17.128372, 13.249336>,  <19.648945, 17.333855, 13.324302>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.747723, 17.128372, 13.249336>,  <19.912352, 16.785900, 13.124393>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.747723, 17.128372, 13.249336> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537729, -0.048591, 0.841716,
		0.735837, 0.514390, -0.440393,
		-0.411571, 0.856178, 0.312358,
		19.624250, 17.385225, 13.343043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.365946, 17.079037, 13.521386>,  <19.912352, 16.785900, 13.124393>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.365946, 17.079037, 13.521386> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.057735, 17.293327, 13.659534>,  <19.872808, 17.421902, 13.742424>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.057735, 17.293327, 13.659534>,  <20.365946, 17.079037, 13.521386>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.057735, 17.293327, 13.659534> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509762, 0.192637, 0.838471,
		0.382662, 0.822123, -0.421526,
		-0.770528, 0.535729, 0.345372,
		19.826576, 17.454046, 13.763146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.616268, 17.658615, 13.891316>,  <20.365946, 17.079037, 13.521386>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.616268, 17.658615, 13.891316> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.249626, 17.584827, 14.033194>,  <20.029640, 17.540556, 14.118320>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.249626, 17.584827, 14.033194>,  <20.616268, 17.658615, 13.891316>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.249626, 17.584827, 14.033194> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357475, 0.019099, 0.933727,
		-0.179017, 0.982653, 0.048436,
		-0.916605, -0.184468, 0.354693,
		19.974646, 17.529488, 14.139602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.654116, 17.895424, 14.481675>,  <20.616268, 17.658615, 13.891316>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.654116, 17.895424, 14.481675> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.312408, 17.691875, 14.524145>,  <20.107384, 17.569746, 14.549627>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.312408, 17.691875, 14.524145>,  <20.654116, 17.895424, 14.481675>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.312408, 17.691875, 14.524145> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220741, -0.170192, 0.960369,
		-0.470634, 0.843851, 0.257718,
		-0.854270, -0.508871, 0.106174,
		20.056128, 17.539213, 14.555998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.750431, 18.493937, 14.958287>,  <20.654116, 17.895424, 14.481675>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.750431, 18.493937, 14.958287> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.117008, 18.354744, 15.037325>,  <21.336954, 18.271229, 15.084747>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.117008, 18.354744, 15.037325>,  <20.750431, 18.493937, 14.958287>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<21.117008, 18.354744, 15.037325> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246003, 0.100452, -0.964050,
		0.315624, 0.932103, 0.177664,
		0.916441, -0.347983, 0.197595,
		21.391941, 18.250349, 15.096603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.250551, 18.975798, 14.834535>,  <20.750431, 18.493937, 14.958287>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.250551, 18.975798, 14.834535> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.430023, 18.622433, 14.780466>,  <21.537706, 18.410414, 14.748025>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.430023, 18.622433, 14.780466>,  <21.250551, 18.975798, 14.834535>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<21.430023, 18.622433, 14.780466> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252677, 0.270478, -0.928976,
		0.857228, 0.382658, 0.344576,
		0.448680, -0.883411, -0.135172,
		21.564627, 18.357410, 14.739915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.845671, 19.131880, 14.513989>,  <21.250551, 18.975798, 14.834535>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.845671, 19.131880, 14.513989> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.836193, 18.740452, 14.432169>,  <21.830507, 18.505596, 14.383077>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.836193, 18.740452, 14.432169>,  <21.845671, 19.131880, 14.513989>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<21.836193, 18.740452, 14.432169> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219030, 0.194557, -0.956124,
		0.975430, -0.067457, 0.209726,
		-0.023693, -0.978569, -0.204552,
		21.829084, 18.446880, 14.370803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.446453, 19.080467, 14.169687>,  <21.845671, 19.131880, 14.513989>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.446453, 19.080467, 14.169687> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.244572, 18.750511, 14.067835>,  <22.123444, 18.552538, 14.006723>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.244572, 18.750511, 14.067835>,  <22.446453, 19.080467, 14.169687>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<22.244572, 18.750511, 14.067835> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266520, 0.131663, -0.954794,
		0.821123, -0.549750, 0.153399,
		-0.504701, -0.824888, -0.254631,
		22.093161, 18.503044, 13.991446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.880667, 18.629679, 13.743758>,  <22.446453, 19.080467, 14.169687>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.880667, 18.629679, 13.743758> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.491837, 18.570633, 13.670792>,  <22.258537, 18.535206, 13.627012>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.491837, 18.570633, 13.670792>,  <22.880667, 18.629679, 13.743758>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<22.491837, 18.570633, 13.670792> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155764, 0.175507, -0.972078,
		0.175507, -0.973348, -0.147614,
		0.972078, 0.147614, 0.182415,
		22.200212, 18.526348, 13.616067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.944679, 18.330238, 13.226598>,  <22.880667, 18.629679, 13.743758>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.944679, 18.330238, 13.226598> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.556187, 18.418491, 13.190750>,  <22.323092, 18.471443, 13.169242>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.556187, 18.418491, 13.190750>,  <22.944679, 18.330238, 13.226598>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<22.556187, 18.418491, 13.190750> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135746, 0.203727, -0.969571,
		-0.195664, -0.953842, -0.227816,
		-0.971231, 0.220635, -0.089618,
		22.264818, 18.484682, 13.163865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.697538, 18.016518, 12.569675>,  <22.944679, 18.330238, 13.226598>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.697538, 18.016518, 12.569675> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.443508, 18.307793, 12.672767>,  <22.291090, 18.482557, 12.734622>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.443508, 18.307793, 12.672767>,  <22.697538, 18.016518, 12.569675>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<22.443508, 18.307793, 12.672767> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037476, 0.362303, -0.931307,
		-0.771542, -0.581790, -0.257378,
		-0.635074, 0.728188, 0.257729,
		22.252987, 18.526249, 12.750085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.195339, 17.982542, 11.984516>,  <22.697538, 18.016518, 12.569675>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.195339, 17.982542, 11.984516> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.138248, 18.336231, 12.162405>,  <22.103994, 18.548445, 12.269138>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.138248, 18.336231, 12.162405>,  <22.195339, 17.982542, 11.984516>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<22.138248, 18.336231, 12.162405> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149313, 0.424944, -0.892820,
		-0.978435, -0.193831, 0.071376,
		-0.142726, 0.884224, 0.444721,
		22.095430, 18.601498, 12.295821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.538910, 18.191038, 11.638533>,  <22.195339, 17.982542, 11.984516>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.538910, 18.191038, 11.638533> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.693287, 18.523769, 11.798088>,  <21.785913, 18.723408, 11.893822>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.693287, 18.523769, 11.798088>,  <21.538910, 18.191038, 11.638533>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<21.693287, 18.523769, 11.798088> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219001, 0.502643, -0.836295,
		-0.896151, 0.235406, 0.376162,
		0.385944, 0.831826, 0.398890,
		21.809071, 18.773317, 11.917755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.122461, 18.684921, 11.571221>,  <21.538910, 18.191038, 11.638533>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.122461, 18.684921, 11.571221> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.433372, 18.929195, 11.631753>,  <21.619919, 19.075760, 11.668072>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.433372, 18.929195, 11.631753>,  <21.122461, 18.684921, 11.571221>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<21.433372, 18.929195, 11.631753> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164388, 0.429297, -0.888077,
		-0.607302, 0.665407, 0.434072,
		0.777278, 0.610687, 0.151328,
		21.666555, 19.112402, 11.677152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.941061, 19.231993, 11.338966>,  <21.122461, 18.684921, 11.571221>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.941061, 19.231993, 11.338966> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.339886, 19.253838, 11.317495>,  <21.579182, 19.266945, 11.304613>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.339886, 19.253838, 11.317495>,  <20.941061, 19.231993, 11.338966>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<21.339886, 19.253838, 11.317495> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074024, 0.507978, -0.858183,
		-0.019601, 0.859637, 0.510529,
		0.997064, 0.054613, -0.053677,
		21.639006, 19.270222, 11.301393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.100286, 19.885149, 11.011256>,  <20.941061, 19.231993, 11.338966>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.100286, 19.885149, 11.011256> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.448700, 19.698536, 10.949743>,  <21.657747, 19.586569, 10.912835>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.448700, 19.698536, 10.949743>,  <21.100286, 19.885149, 11.011256>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<21.448700, 19.698536, 10.949743> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066154, 0.421617, -0.904358,
		0.486748, 0.777553, 0.398105,
		0.871034, -0.466531, -0.153783,
		21.710011, 19.558577, 10.903608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.521523, 20.363268, 10.623850>,  <21.100286, 19.885149, 11.011256>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.521523, 20.363268, 10.623850> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.663227, 19.998142, 10.542592>,  <21.748251, 19.779066, 10.493837>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.663227, 19.998142, 10.542592>,  <21.521523, 20.363268, 10.623850>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<21.663227, 19.998142, 10.542592> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201782, 0.286732, -0.936520,
		0.913116, 0.290783, 0.285768,
		0.354263, -0.912814, -0.203144,
		21.769506, 19.724298, 10.481648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.224531, 20.403452, 10.218337>,  <21.521523, 20.363268, 10.623850>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.224531, 20.403452, 10.218337> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.114445, 20.032059, 10.118594>,  <22.048393, 19.809223, 10.058748>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.114445, 20.032059, 10.118594>,  <22.224531, 20.403452, 10.218337>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<22.114445, 20.032059, 10.118594> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188619, 0.202186, -0.961012,
		0.942698, -0.311519, 0.119485,
		-0.275215, -0.928481, -0.249358,
		22.031879, 19.753515, 10.043787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.159386, 21.154501, 10.453833>,  <22.224531, 20.403452, 10.218337>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.159386, 21.154501, 10.453833> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.990089, 21.483204, 10.301210>,  <21.888512, 21.680426, 10.209637>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.990089, 21.483204, 10.301210>,  <22.159386, 21.154501, 10.453833>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<21.990089, 21.483204, 10.301210> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353540, 0.237956, 0.904647,
		0.834193, 0.517779, 0.189811,
		-0.423240, 0.821756, -0.381556,
		21.863117, 21.729731, 10.186744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.383482, 21.664869, 10.806263>,  <22.159386, 21.154501, 10.453833>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.383482, 21.664869, 10.806263> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.019146, 21.753956, 10.667255>,  <21.800545, 21.807407, 10.583851>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.019146, 21.753956, 10.667255>,  <22.383482, 21.664869, 10.806263>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<22.019146, 21.753956, 10.667255> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276346, 0.296361, 0.914223,
		0.306603, 0.928745, -0.208391,
		-0.910839, 0.222716, -0.347520,
		21.745893, 21.820770, 10.563000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.245155, 22.378941, 10.955244>,  <22.383482, 21.664869, 10.806263>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.245155, 22.378941, 10.955244> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.925056, 22.139835, 10.936141>,  <21.732996, 21.996372, 10.924679>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.925056, 22.139835, 10.936141>,  <22.245155, 22.378941, 10.955244>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<21.925056, 22.139835, 10.936141> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339715, 0.386275, 0.857546,
		-0.494162, 0.702474, -0.512186,
		-0.800248, -0.597764, -0.047758,
		21.684982, 21.960506, 10.921814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.711874, 22.857975, 11.007926>,  <22.245155, 22.378941, 10.955244>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.711874, 22.857975, 11.007926> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.591358, 22.497402, 11.132276>,  <21.519049, 22.281057, 11.206885>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.591358, 22.497402, 11.132276>,  <21.711874, 22.857975, 11.007926>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<21.591358, 22.497402, 11.132276> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341990, 0.406487, 0.847237,
		-0.890094, 0.148947, -0.430751,
		-0.301288, -0.901434, 0.310873,
		21.500971, 22.226973, 11.225537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.112211, 22.985224, 11.340900>,  <21.711874, 22.857975, 11.007926>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.112211, 22.985224, 11.340900> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.213493, 22.627968, 11.489594>,  <21.274263, 22.413614, 11.578810>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.213493, 22.627968, 11.489594>,  <21.112211, 22.985224, 11.340900>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<21.213493, 22.627968, 11.489594> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298601, 0.293339, 0.908179,
		-0.920176, -0.340956, -0.192417,
		0.253206, -0.893141, 0.371734,
		21.289455, 22.360025, 11.601113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.522957, 22.726675, 11.703470>,  <21.112211, 22.985224, 11.340900>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.522957, 22.726675, 11.703470> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.848404, 22.546230, 11.850180>,  <21.043673, 22.437963, 11.938205>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.848404, 22.546230, 11.850180>,  <20.522957, 22.726675, 11.703470>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.848404, 22.546230, 11.850180> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299555, 0.215404, 0.929445,
		-0.498288, -0.866082, 0.040124,
		0.813619, -0.451112, 0.366773,
		21.092489, 22.410896, 11.960212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.265829, 22.423590, 12.301465>,  <20.522957, 22.726675, 11.703470>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.265829, 22.423590, 12.301465> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.665604, 22.423035, 12.314857>,  <20.905468, 22.422701, 12.322891>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.665604, 22.423035, 12.314857>,  <20.265829, 22.423590, 12.301465>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.665604, 22.423035, 12.314857> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032082, 0.248656, 0.968060,
		-0.009668, -0.968591, 0.248472,
		0.999438, -0.001387, 0.033478,
		20.965435, 22.422619, 12.324900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.535362, 21.900972, 12.824432>,  <20.265829, 22.423590, 12.301465>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.535362, 21.900972, 12.824432> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.813824, 22.184082, 12.776393>,  <20.980902, 22.353949, 12.747569>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.813824, 22.184082, 12.776393>,  <20.535362, 21.900972, 12.824432>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.813824, 22.184082, 12.776393> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016232, 0.182769, 0.983022,
		0.717707, -0.682387, 0.138724,
		0.696156, 0.707774, -0.120098,
		21.022671, 22.396414, 12.740363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.970507, 21.839708, 13.367794>,  <20.535362, 21.900972, 12.824432>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.970507, 21.839708, 13.367794> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.052639, 22.213089, 13.250147>,  <21.101917, 22.437119, 13.179559>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.052639, 22.213089, 13.250147>,  <20.970507, 21.839708, 13.367794>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<21.052639, 22.213089, 13.250147> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038645, 0.308021, 0.950595,
		0.977930, -0.183819, 0.099319,
		0.205330, 0.933453, -0.294119,
		21.114239, 22.493124, 13.161911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.492260, 21.994913, 13.753766>,  <20.970507, 21.839708, 13.367794>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.492260, 21.994913, 13.753766> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.357601, 22.351864, 13.633547>,  <21.276806, 22.566034, 13.561415>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.357601, 22.351864, 13.633547>,  <21.492260, 21.994913, 13.753766>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<21.357601, 22.351864, 13.633547> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086986, 0.347286, 0.933716,
		0.937605, 0.288188, -0.194536,
		-0.336646, 0.892379, -0.300549,
		21.256607, 22.619577, 13.543383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.968746, 22.431351, 13.980038>,  <21.492260, 21.994913, 13.753766>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.968746, 22.431351, 13.980038> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.650322, 22.664833, 13.916075>,  <21.459267, 22.804922, 13.877697>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.650322, 22.664833, 13.916075>,  <21.968746, 22.431351, 13.980038>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<21.650322, 22.664833, 13.916075> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047919, 0.324177, 0.944782,
		0.603315, 0.744443, -0.286036,
		-0.796062, 0.583708, -0.159907,
		21.411503, 22.839945, 13.868103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.142618, 23.069622, 14.227055>,  <21.968746, 22.431351, 13.980038>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.142618, 23.069622, 14.227055> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.743259, 23.064499, 14.205004>,  <21.503645, 23.061426, 14.191773>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.743259, 23.064499, 14.205004>,  <22.142618, 23.069622, 14.227055>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<21.743259, 23.064499, 14.205004> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056277, 0.327790, 0.943073,
		0.005994, 0.944664, -0.327986,
		-0.998397, -0.012806, -0.055128,
		21.443741, 23.060658, 14.188465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.001995, 23.546242, 14.765833>,  <22.142618, 23.069622, 14.227055>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.001995, 23.546242, 14.765833> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.651436, 23.365368, 14.699551>,  <21.441101, 23.256844, 14.659781>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.651436, 23.365368, 14.699551>,  <22.001995, 23.546242, 14.765833>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<21.651436, 23.365368, 14.699551> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210292, 0.049778, 0.976371,
		-0.433252, 0.890534, -0.138716,
		-0.876396, -0.452186, -0.165705,
		21.388517, 23.229712, 14.649839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.487211, 23.877977, 15.170070>,  <22.001995, 23.546242, 14.765833>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.487211, 23.877977, 15.170070> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.309109, 23.527603, 15.095793>,  <21.202248, 23.317379, 15.051227>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.309109, 23.527603, 15.095793>,  <21.487211, 23.877977, 15.170070>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<21.309109, 23.527603, 15.095793> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239974, -0.083059, 0.967220,
		-0.862646, 0.475223, -0.173219,
		-0.445257, -0.875936, -0.185691,
		21.175531, 23.264822, 15.040086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.857817, 23.956903, 15.490385>,  <21.487211, 23.877977, 15.170070>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.857817, 23.956903, 15.490385> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.923481, 23.565807, 15.438114>,  <20.962879, 23.331150, 15.406752>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.923481, 23.565807, 15.438114>,  <20.857817, 23.956903, 15.490385>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.923481, 23.565807, 15.438114> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141116, -0.154390, 0.977881,
		-0.976288, -0.142087, -0.163319,
		0.164159, -0.977740, -0.130678,
		20.972729, 23.272486, 15.398911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.412008, 23.674883, 16.003799>,  <20.857817, 23.956903, 15.490385>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.412008, 23.674883, 16.003799> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.647858, 23.362953, 15.919687>,  <20.789368, 23.175795, 15.869220>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.647858, 23.362953, 15.919687>,  <20.412008, 23.674883, 16.003799>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.647858, 23.362953, 15.919687> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127051, -0.346665, 0.929345,
		-0.797623, -0.521247, -0.303479,
		0.589624, -0.779824, -0.210283,
		20.824745, 23.129005, 15.856603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.029871, 23.025391, 16.082491>,  <20.412008, 23.674883, 16.003799>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.029871, 23.025391, 16.082491> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.412384, 22.918354, 16.129686>,  <20.641891, 22.854132, 16.158003>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.412384, 22.918354, 16.129686>,  <20.029871, 23.025391, 16.082491>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.412384, 22.918354, 16.129686> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216323, -0.375738, 0.901124,
		-0.196801, -0.887252, -0.417197,
		0.956281, -0.267592, 0.117988,
		20.699268, 22.838076, 16.165083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.974962, 22.399508, 16.433983>,  <20.029871, 23.025391, 16.082491>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.974962, 22.399508, 16.433983> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.364182, 22.476002, 16.485527>,  <20.597713, 22.521898, 16.516455>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.364182, 22.476002, 16.485527>,  <19.974962, 22.399508, 16.433983>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.364182, 22.476002, 16.485527> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038896, -0.414694, 0.909129,
		0.227298, -0.889639, -0.396079,
		0.973049, 0.191237, 0.128862,
		20.656096, 22.533373, 16.524185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.395006, 21.775043, 16.460825>,  <19.974962, 22.399508, 16.433983>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.395006, 21.775043, 16.460825> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.588512, 22.057747, 16.667303>,  <20.704617, 22.227369, 16.791191>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.588512, 22.057747, 16.667303>,  <20.395006, 21.775043, 16.460825>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.588512, 22.057747, 16.667303> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106677, -0.537791, 0.836302,
		0.868671, -0.459641, -0.184770,
		0.483767, 0.706760, 0.516197,
		20.733643, 22.269775, 16.822163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.859543, 21.391396, 16.798903>,  <20.395006, 21.775043, 16.460825>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.859543, 21.391396, 16.798903> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.816010, 21.745556, 16.979668>,  <20.789890, 21.958052, 17.088127>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.816010, 21.745556, 16.979668>,  <20.859543, 21.391396, 16.798903>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.816010, 21.745556, 16.979668> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033140, -0.457592, 0.888545,
		0.993508, 0.081726, 0.079142,
		-0.108832, 0.885398, 0.451912,
		20.783360, 22.011175, 17.115242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.214279, 21.193680, 17.412165>,  <20.859543, 21.391396, 16.798903>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.214279, 21.193680, 17.412165> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.997181, 21.525345, 17.465700>,  <20.866922, 21.724344, 17.497822>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.997181, 21.525345, 17.465700>,  <21.214279, 21.193680, 17.412165>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.997181, 21.525345, 17.465700> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287957, -0.333396, 0.897735,
		0.788992, 0.448701, 0.419713,
		-0.542745, 0.829165, 0.133840,
		20.834358, 21.774094, 17.505852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.378119, 21.380154, 18.089445>,  <21.214279, 21.193680, 17.412165>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.378119, 21.380154, 18.089445> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.045715, 21.591160, 18.018839>,  <20.846273, 21.717764, 17.976475>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.045715, 21.591160, 18.018839>,  <21.378119, 21.380154, 18.089445>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<21.045715, 21.591160, 18.018839> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343611, -0.237248, 0.908650,
		0.437448, 0.815746, 0.378414,
		-0.831006, 0.527514, -0.176515,
		20.796413, 21.749414, 17.965885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.413782, 21.860725, 18.568161>,  <21.378119, 21.380154, 18.089445>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.413782, 21.860725, 18.568161> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.029167, 21.828011, 18.463276>,  <20.798399, 21.808382, 18.400345>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.029167, 21.828011, 18.463276>,  <21.413782, 21.860725, 18.568161>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<21.029167, 21.828011, 18.463276> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251190, -0.124384, 0.959912,
		-0.111121, 0.988858, 0.099057,
		-0.961538, -0.081785, -0.262213,
		20.740705, 21.803474, 18.384611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.071266, 22.372978, 18.988077>,  <21.413782, 21.860725, 18.568161>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.071266, 22.372978, 18.988077> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.811981, 22.093395, 18.867226>,  <20.656410, 21.925646, 18.794716>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.811981, 22.093395, 18.867226>,  <21.071266, 22.372978, 18.988077>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.811981, 22.093395, 18.867226> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251231, -0.178245, 0.951374,
		-0.718823, 0.692594, -0.060060,
		-0.648210, -0.698958, -0.302128,
		20.617517, 21.883707, 18.776587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.532434, 22.485538, 19.468428>,  <21.071266, 22.372978, 18.988077>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.532434, 22.485538, 19.468428> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.479153, 22.114704, 19.328272>,  <20.447184, 21.892204, 19.244179>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.479153, 22.114704, 19.328272>,  <20.532434, 22.485538, 19.468428>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.479153, 22.114704, 19.328272> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444685, -0.260048, 0.857106,
		-0.885727, 0.269981, -0.377622,
		-0.133202, -0.927084, -0.350388,
		20.439192, 21.836578, 19.223156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.870598, 22.325367, 19.660358>,  <20.532434, 22.485538, 19.468428>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.870598, 22.325367, 19.660358> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.072441, 21.985786, 19.597548>,  <20.193546, 21.782038, 19.559862>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.072441, 21.985786, 19.597548>,  <19.870598, 22.325367, 19.660358>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.072441, 21.985786, 19.597548> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298536, -0.342237, 0.890926,
		-0.810091, -0.402690, -0.426137,
		0.504607, -0.848949, -0.157026,
		20.223824, 21.731102, 19.550440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.376017, 21.913105, 19.766302>,  <19.870598, 22.325367, 19.660358>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.376017, 21.913105, 19.766302> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.715256, 21.714802, 19.841089>,  <19.918798, 21.595819, 19.885962>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.715256, 21.714802, 19.841089>,  <19.376017, 21.913105, 19.766302>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.715256, 21.714802, 19.841089> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323161, -0.204360, 0.924015,
		-0.419880, -0.844074, -0.333527,
		0.848096, -0.495759, 0.186965,
		19.969685, 21.566074, 19.897179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.203999, 21.188267, 20.065638>,  <19.376017, 21.913105, 19.766302>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.203999, 21.188267, 20.065638> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.574490, 21.288124, 20.178619>,  <19.796785, 21.348038, 20.246408>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.574490, 21.288124, 20.178619>,  <19.203999, 21.188267, 20.065638>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.574490, 21.288124, 20.178619> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230844, -0.216731, 0.948546,
		0.298013, -0.943772, -0.143114,
		0.926228, 0.249642, 0.282452,
		19.852358, 21.363016, 20.263355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.707987, 20.577110, 20.027584>,  <19.203999, 21.188267, 20.065638>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.707987, 20.577110, 20.027584> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.339233, 20.727024, 20.066912>,  <18.117981, 20.816973, 20.090508>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.339233, 20.727024, 20.066912>,  <18.707987, 20.577110, 20.027584>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.339233, 20.727024, 20.066912> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074172, 0.419753, -0.904603,
		-0.380301, -0.826646, -0.414762,
		-0.921884, 0.374785, 0.098319,
		18.062668, 20.839460, 20.096407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.438152, 20.539959, 19.397369>,  <18.707987, 20.577110, 20.027584>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.438152, 20.539959, 19.397369> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.182831, 20.804523, 19.554903>,  <18.029638, 20.963263, 19.649424>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.182831, 20.804523, 19.554903>,  <18.438152, 20.539959, 19.397369>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.182831, 20.804523, 19.554903> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014622, 0.501104, -0.865264,
		-0.769647, -0.558059, -0.310185,
		-0.638303, 0.661412, 0.393833,
		17.991341, 21.002947, 19.673054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.982807, 20.580160, 18.935194>,  <18.438152, 20.539959, 19.397369>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.982807, 20.580160, 18.935194> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.953781, 20.916409, 19.149889>,  <17.936365, 21.118158, 19.278706>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.953781, 20.916409, 19.149889>,  <17.982807, 20.580160, 18.935194>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.953781, 20.916409, 19.149889> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020106, 0.539281, -0.841886,
		-0.997161, -0.050298, -0.056033,
		-0.072563, 0.840622, 0.536739,
		17.932013, 21.168594, 19.310911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.484638, 20.933466, 18.581301>,  <17.982807, 20.580160, 18.935194>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.484638, 20.933466, 18.581301> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.682343, 21.197594, 18.807463>,  <17.800964, 21.356071, 18.943159>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.682343, 21.197594, 18.807463>,  <17.484638, 20.933466, 18.581301>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.682343, 21.197594, 18.807463> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035776, 0.665302, -0.745716,
		-0.868577, 0.348351, 0.352456,
		0.494261, 0.660321, 0.565404,
		17.830622, 21.395691, 18.977083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.078320, 21.505228, 18.600021>,  <17.484638, 20.933466, 18.581301>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.078320, 21.505228, 18.600021> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.454765, 21.611298, 18.683912>,  <17.680634, 21.674940, 18.734247>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.454765, 21.611298, 18.683912>,  <17.078320, 21.505228, 18.600021>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.454765, 21.611298, 18.683912> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008587, 0.638884, -0.769255,
		-0.337981, 0.722155, 0.603540,
		0.941114, 0.265176, 0.209729,
		17.737099, 21.690851, 18.746832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// box output
cylinder {
	<0.000000, 0.000000, 0.000000>,  <37.000000, 0.000000, 0.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 37.000000, 0.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 0.000000, 37.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<37.000000, 37.000000, 37.000000>,  <0.000000, 37.000000, 37.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<37.000000, 37.000000, 37.000000>,  <37.000000, 0.000000, 37.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<37.000000, 37.000000, 37.000000>,  <37.000000, 37.000000, 0.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 37.000000>,  <0.000000, 37.000000, 37.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 37.000000>,  <37.000000, 0.000000, 37.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<37.000000, 37.000000, 0.000000>,  <0.000000, 37.000000, 0.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<37.000000, 37.000000, 0.000000>,  <37.000000, 0.000000, 0.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<37.000000, 0.000000, 37.000000>,  <37.000000, 0.000000, 0.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 37.000000, 0.000000>,  <0.000000, 37.000000, 37.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
// end of box output
