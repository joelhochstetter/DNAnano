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
	<22.220579, 16.868837, -2.218451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.520630, 17.042282, -2.018735>,  <22.700661, 17.146349, -1.898906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.520630, 17.042282, -2.018735>,  <22.220579, 16.868837, -2.218451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.520630, 17.042282, -2.018735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468680, 0.881247, -0.061180,
		-0.466525, -0.188114, 0.864273,
		0.750129, 0.433610, 0.499289,
		22.745668, 17.172365, -1.868949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.855217, 16.877642, -2.532375>,  <22.220579, 16.868837, -2.218451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.855217, 16.877642, -2.532375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.054501, 17.221306, -2.579078>,  <23.174070, 17.427504, -2.607100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.054501, 17.221306, -2.579078>,  <22.855217, 16.877642, -2.532375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.054501, 17.221306, -2.579078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.703176, -0.479147, -0.525321,
		-0.507279, 0.179619, -0.842856,
		0.498209, 0.859160, -0.116757,
		23.203964, 17.479053, -2.614105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.038397, 17.064266, -3.312639>,  <22.855217, 16.877642, -2.532375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.038397, 17.064266, -3.312639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.297413, 17.173824, -3.028196>,  <23.452822, 17.239559, -2.857530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.297413, 17.173824, -3.028196>,  <23.038397, 17.064266, -3.312639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.297413, 17.173824, -3.028196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.711639, -0.551067, -0.435771,
		0.272513, 0.788230, -0.551751,
		0.647539, 0.273894, 0.711108,
		23.491674, 17.255993, -2.814863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.204283, 16.375731, -3.464399>,  <23.038397, 17.064266, -3.312639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.204283, 16.375731, -3.464399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.963074, 16.362476, -3.783214>,  <22.818348, 16.354525, -3.974503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.963074, 16.362476, -3.783214>,  <23.204283, 16.375731, -3.464399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.963074, 16.362476, -3.783214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343911, 0.912316, 0.222271,
		0.719785, 0.408144, -0.561541,
		-0.603021, -0.033133, -0.797037,
		22.782167, 16.352537, -4.022325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.478838, 16.940073, -3.921816>,  <23.204283, 16.375731, -3.464399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.478838, 16.940073, -3.921816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.097904, 16.819721, -3.941928>,  <22.869343, 16.747511, -3.953996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.097904, 16.819721, -3.941928>,  <23.478838, 16.940073, -3.921816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.097904, 16.819721, -3.941928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294827, 0.865517, 0.404917,
		-0.078311, 0.400442, -0.912970,
		-0.952336, -0.300878, -0.050281,
		22.812202, 16.729458, -3.957013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.968252, 17.403244, -4.283085>,  <23.478838, 16.940073, -3.921816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.968252, 17.403244, -4.283085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.767433, 17.193684, -4.007847>,  <22.646942, 17.067947, -3.842704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.767433, 17.193684, -4.007847>,  <22.968252, 17.403244, -4.283085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.767433, 17.193684, -4.007847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293904, 0.851634, 0.433981,
		-0.813369, 0.015645, -0.581537,
		-0.502047, -0.523903, 0.688095,
		22.616819, 17.036512, -3.801418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.291735, 17.639673, -4.365700>,  <22.968252, 17.403244, -4.283085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.291735, 17.639673, -4.365700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.362648, 17.495083, -3.999551>,  <22.405195, 17.408329, -3.779862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.362648, 17.495083, -3.999551>,  <22.291735, 17.639673, -4.365700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.362648, 17.495083, -3.999551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202151, 0.896897, 0.393333,
		-0.963175, -0.254774, 0.085930,
		0.177281, -0.361478, 0.915372,
		22.415833, 17.386639, -3.724940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.695822, 18.020134, -4.014713>,  <22.291735, 17.639673, -4.365700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.695822, 18.020134, -4.014713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.953453, 17.932140, -3.721655>,  <22.108032, 17.879345, -3.545821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.953453, 17.932140, -3.721655>,  <21.695822, 18.020134, -4.014713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.953453, 17.932140, -3.721655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440715, 0.676119, 0.590452,
		-0.625246, -0.703185, 0.338524,
		0.644079, -0.219985, 0.732645,
		22.146677, 17.866144, -3.501862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.411146, 17.725590, -3.319639>,  <21.695822, 18.020134, -4.014713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.411146, 17.725590, -3.319639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.740997, 17.933140, -3.229526>,  <21.938908, 18.057671, -3.175458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.740997, 17.933140, -3.229526>,  <21.411146, 17.725590, -3.319639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.740997, 17.933140, -3.229526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496295, 0.472536, 0.728286,
		0.271435, -0.712375, 0.647183,
		0.824630, 0.518876, 0.225285,
		21.988386, 18.088802, -3.161941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.993717, 17.498442, -2.788191>,  <21.411146, 17.725590, -3.319639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.993717, 17.498442, -2.788191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.855316, 17.870193, -2.839631>,  <21.772276, 18.093245, -2.870495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.855316, 17.870193, -2.839631>,  <21.993717, 17.498442, -2.788191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.855316, 17.870193, -2.839631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465289, -0.050946, 0.883691,
		0.814732, 0.365597, 0.450057,
		-0.346003, 0.929378, -0.128601,
		21.751514, 18.149008, -2.878211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.199102, 17.740597, -2.052952>,  <21.993717, 17.498442, -2.788191>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.199102, 17.740597, -2.052952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.924641, 17.928253, -2.275338>,  <21.759964, 18.040848, -2.408769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.924641, 17.928253, -2.275338>,  <22.199102, 17.740597, -2.052952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.924641, 17.928253, -2.275338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339900, 0.468943, 0.815206,
		0.643163, 0.748330, -0.162307,
		-0.686156, 0.469142, -0.555964,
		21.718794, 18.068996, -2.442127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.357731, 18.510984, -2.150376>,  <22.199102, 17.740597, -2.052952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.357731, 18.510984, -2.150376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.964504, 18.445454, -2.183214>,  <21.728567, 18.406136, -2.202917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.964504, 18.445454, -2.183214>,  <22.357731, 18.510984, -2.150376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.964504, 18.445454, -2.183214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151031, 0.470689, 0.869277,
		-0.103768, 0.866956, -0.487461,
		-0.983068, -0.163825, -0.082095,
		21.669584, 18.396307, -2.207843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.904488, 19.163750, -2.298752>,  <22.357731, 18.510984, -2.150376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.904488, 19.163750, -2.298752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.755733, 18.859776, -2.085510>,  <21.666481, 18.677391, -1.957564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.755733, 18.859776, -2.085510>,  <21.904488, 19.163750, -2.298752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.755733, 18.859776, -2.085510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004943, 0.572665, 0.819775,
		-0.928266, 0.307496, -0.209209,
		-0.371884, -0.759935, 0.533105,
		21.644169, 18.631796, -1.925578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.561226, 19.345072, -1.771905>,  <21.904488, 19.163750, -2.298752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.561226, 19.345072, -1.771905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.644821, 18.998035, -1.591411>,  <21.694979, 18.789814, -1.483115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.644821, 18.998035, -1.591411>,  <21.561226, 19.345072, -1.771905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.644821, 18.998035, -1.591411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309038, 0.496371, 0.811241,
		-0.927803, -0.030092, 0.371854,
		0.208989, -0.867589, 0.451235,
		21.707518, 18.737759, -1.456041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.400505, 19.304483, -1.074367>,  <21.561226, 19.345072, -1.771905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.400505, 19.304483, -1.074367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.727474, 19.076611, -1.108490>,  <21.923656, 18.939886, -1.128963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.727474, 19.076611, -1.108490>,  <21.400505, 19.304483, -1.074367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.727474, 19.076611, -1.108490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355062, 0.381682, 0.853375,
		-0.453594, -0.727860, 0.514269,
		0.817425, -0.569683, -0.085307,
		21.972702, 18.905706, -1.134082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.439981, 18.881908, -0.463174>,  <21.400505, 19.304483, -1.074367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.439981, 18.881908, -0.463174> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.795670, 18.957287, -0.629920>,  <22.009083, 19.002514, -0.729968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.795670, 18.957287, -0.629920>,  <21.439981, 18.881908, -0.463174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.795670, 18.957287, -0.629920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349967, 0.306666, 0.885144,
		0.294626, -0.932979, 0.206750,
		0.889224, 0.188431, -0.416863,
		22.062435, 19.013821, -0.754980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.041470, 18.734011, 0.015525>,  <21.439981, 18.881908, -0.463174>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.041470, 18.734011, 0.015525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.084087, 19.059669, -0.212795>,  <22.109657, 19.255064, -0.349787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.084087, 19.059669, -0.212795>,  <22.041470, 18.734011, 0.015525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.084087, 19.059669, -0.212795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061804, 0.567536, 0.821026,
		0.992385, -0.122754, 0.010150,
		0.106545, 0.814147, -0.570801,
		22.116051, 19.303913, -0.384035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.638531, 19.214710, 0.175326>,  <22.041470, 18.734011, 0.015525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.638531, 19.214710, 0.175326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.360470, 19.455044, 0.017458>,  <22.193634, 19.599243, -0.077263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.360470, 19.455044, 0.017458>,  <22.638531, 19.214710, 0.175326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.360470, 19.455044, 0.017458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051336, 0.589109, 0.806421,
		0.717029, 0.540323, -0.440364,
		-0.695150, 0.600834, -0.394670,
		22.151924, 19.635294, -0.100943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.930275, 19.880562, 0.022149>,  <22.638531, 19.214710, 0.175326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.930275, 19.880562, 0.022149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.558292, 19.866798, 0.168571>,  <22.335102, 19.858540, 0.256425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.558292, 19.866798, 0.168571>,  <22.930275, 19.880562, 0.022149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.558292, 19.866798, 0.168571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321034, 0.409304, 0.854053,
		-0.179215, 0.911749, -0.369589,
		-0.929957, -0.034409, 0.366055,
		22.279305, 19.856476, 0.278388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.893137, 20.499821, 0.343805>,  <22.930275, 19.880562, 0.022149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.893137, 20.499821, 0.343805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.628769, 20.235962, 0.486941>,  <22.470148, 20.077646, 0.572823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.628769, 20.235962, 0.486941>,  <22.893137, 20.499821, 0.343805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.628769, 20.235962, 0.486941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310335, 0.193913, 0.930640,
		-0.683286, 0.726127, 0.076552,
		-0.660918, -0.659649, 0.357841,
		22.430494, 20.038067, 0.594293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.413818, 20.778372, 0.958851>,  <22.893137, 20.499821, 0.343805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.413818, 20.778372, 0.958851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.440189, 20.380375, 0.988910>,  <22.456013, 20.141577, 1.006945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.440189, 20.380375, 0.988910>,  <22.413818, 20.778372, 0.958851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.440189, 20.380375, 0.988910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316214, 0.092264, 0.944191,
		-0.946394, -0.038487, 0.320713,
		0.065929, -0.994991, 0.075148,
		22.459969, 20.081879, 1.011454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.869917, 20.532808, 1.442105>,  <22.413818, 20.778372, 0.958851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.869917, 20.532808, 1.442105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.170254, 20.269024, 1.427423>,  <22.350456, 20.110754, 1.418614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.170254, 20.269024, 1.427423>,  <21.869917, 20.532808, 1.442105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.170254, 20.269024, 1.427423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083670, 0.039844, 0.995697,
		-0.655160, -0.750683, 0.085094,
		0.750843, -0.659460, -0.036706,
		22.395506, 20.071186, 1.416411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.809166, 19.805853, 1.856080>,  <21.869917, 20.532808, 1.442105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.809166, 19.805853, 1.856080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.175777, 19.964291, 1.833862>,  <22.395744, 20.059353, 1.820531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.175777, 19.964291, 1.833862>,  <21.809166, 19.805853, 1.856080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.175777, 19.964291, 1.833862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051396, 0.021091, 0.998456,
		0.396655, -0.917967, -0.001027,
		0.916528, 0.396096, -0.055545,
		22.450735, 20.083118, 1.817198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.224842, 19.452663, 2.382276>,  <21.809166, 19.805853, 1.856080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.224842, 19.452663, 2.382276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.359505, 19.823349, 2.315506>,  <22.440302, 20.045761, 2.275444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.359505, 19.823349, 2.315506>,  <22.224842, 19.452663, 2.382276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.359505, 19.823349, 2.315506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028629, 0.187265, 0.981892,
		0.941193, -0.325781, 0.089575,
		0.336656, 0.926714, -0.166926,
		22.460501, 20.101364, 2.265428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.837614, 19.646425, 2.951143>,  <22.224842, 19.452663, 2.382276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.837614, 19.646425, 2.951143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.582054, 19.915096, 2.801127>,  <22.428719, 20.076300, 2.711118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.582054, 19.915096, 2.801127>,  <22.837614, 19.646425, 2.951143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.582054, 19.915096, 2.801127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133855, 0.383015, 0.913992,
		0.757554, 0.634151, -0.154801,
		-0.638901, 0.671678, -0.375039,
		22.390385, 20.116600, 2.688615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.124554, 20.324587, 3.130394>,  <22.837614, 19.646425, 2.951143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.124554, 20.324587, 3.130394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.730267, 20.274139, 3.085760>,  <22.493694, 20.243872, 3.058979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.730267, 20.274139, 3.085760>,  <23.124554, 20.324587, 3.130394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.730267, 20.274139, 3.085760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145739, 0.306921, 0.940510,
		-0.084367, 0.943342, -0.320919,
		-0.985719, -0.126118, -0.111587,
		22.434551, 20.236303, 3.052284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.860043, 21.024792, 3.239857>,  <23.124554, 20.324587, 3.130394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.860043, 21.024792, 3.239857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.581917, 20.752953, 3.333401>,  <22.415041, 20.589849, 3.389527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.581917, 20.752953, 3.333401>,  <22.860043, 21.024792, 3.239857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.581917, 20.752953, 3.333401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061048, 0.268365, 0.961381,
		-0.716110, 0.682737, -0.145110,
		-0.695313, -0.679596, 0.233859,
		22.373323, 20.549074, 3.403558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.263855, 21.349205, 3.628108>,  <22.860043, 21.024792, 3.239857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.263855, 21.349205, 3.628108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.300205, 20.964252, 3.730526>,  <22.322016, 20.733280, 3.791977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.300205, 20.964252, 3.730526>,  <22.263855, 21.349205, 3.628108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.300205, 20.964252, 3.730526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025719, 0.259292, 0.965456,
		-0.995530, -0.081150, 0.048315,
		0.090875, -0.962384, 0.256046,
		22.327467, 20.675537, 3.807340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.620897, 21.091818, 3.844254>,  <22.263855, 21.349205, 3.628108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.620897, 21.091818, 3.844254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.955524, 20.942970, 4.005095>,  <22.156300, 20.853662, 4.101599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.955524, 20.942970, 4.005095>,  <21.620897, 21.091818, 3.844254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.955524, 20.942970, 4.005095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297877, 0.307045, 0.903876,
		-0.459812, -0.875929, 0.146018,
		0.836566, -0.372117, 0.402102,
		22.206493, 20.831335, 4.125725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.212587, 20.497124, 4.030964>,  <21.620897, 21.091818, 3.844254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.212587, 20.497124, 4.030964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.994556, 20.163601, 4.065958>,  <20.863737, 19.963488, 4.086954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.994556, 20.163601, 4.065958>,  <21.212587, 20.497124, 4.030964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.994556, 20.163601, 4.065958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258286, -0.067736, 0.963691,
		-0.797608, 0.547882, 0.252282,
		-0.545078, -0.833809, 0.087484,
		20.831034, 19.913458, 4.092203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.693676, 20.622377, 4.599585>,  <21.212587, 20.497124, 4.030964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.693676, 20.622377, 4.599585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.783424, 20.236237, 4.546282>,  <20.837273, 20.004553, 4.514301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.783424, 20.236237, 4.546282>,  <20.693676, 20.622377, 4.599585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.783424, 20.236237, 4.546282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116287, -0.109243, 0.987190,
		-0.967541, -0.236992, 0.087747,
		0.224370, -0.965350, -0.133256,
		20.850735, 19.946632, 4.506306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.228327, 20.217354, 5.118537>,  <20.693676, 20.622377, 4.599585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.228327, 20.217354, 5.118537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.564896, 20.035114, 5.002305>,  <20.766838, 19.925770, 4.932566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.564896, 20.035114, 5.002305>,  <20.228327, 20.217354, 5.118537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.564896, 20.035114, 5.002305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305144, -0.043199, 0.951326,
		-0.445975, -0.889137, 0.102675,
		0.841423, -0.455598, -0.290580,
		20.817322, 19.898436, 4.915131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.245575, 19.579779, 5.437582>,  <20.228327, 20.217354, 5.118537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.245575, 19.579779, 5.437582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.621044, 19.691540, 5.356757>,  <20.846325, 19.758596, 5.308262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.621044, 19.691540, 5.356757>,  <20.245575, 19.579779, 5.437582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.621044, 19.691540, 5.356757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236527, -0.095341, 0.966936,
		0.250902, -0.955428, -0.155581,
		0.938671, 0.279405, -0.202063,
		20.902645, 19.775362, 5.296138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.753544, 19.112463, 5.807783>,  <20.245575, 19.579779, 5.437582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.753544, 19.112463, 5.807783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.946838, 19.451508, 5.720112>,  <21.062817, 19.654934, 5.667509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.946838, 19.451508, 5.720112>,  <20.753544, 19.112463, 5.807783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.946838, 19.451508, 5.720112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213709, 0.128573, 0.968400,
		0.849005, -0.514808, -0.119010,
		0.483239, 0.847609, -0.219178,
		21.091810, 19.705790, 5.654358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.438852, 19.131439, 6.178371>,  <20.753544, 19.112463, 5.807783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.438852, 19.131439, 6.178371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.287205, 19.498608, 6.131567>,  <21.196217, 19.718908, 6.103485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.287205, 19.498608, 6.131567>,  <21.438852, 19.131439, 6.178371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.287205, 19.498608, 6.131567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133117, 0.179236, 0.974759,
		0.915723, 0.353973, -0.190143,
		-0.379119, 0.917920, -0.117011,
		21.173470, 19.773983, 6.096464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.976995, 19.528185, 6.535880>,  <21.438852, 19.131439, 6.178371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.976995, 19.528185, 6.535880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.607529, 19.680904, 6.548992>,  <21.385849, 19.772535, 6.556859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.607529, 19.680904, 6.548992>,  <21.976995, 19.528185, 6.535880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.607529, 19.680904, 6.548992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018345, -0.129504, 0.991409,
		0.382762, 0.915128, 0.126623,
		-0.923665, 0.381796, 0.032781,
		21.330429, 19.795443, 6.558826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.956112, 20.102169, 7.040740>,  <21.976995, 19.528185, 6.535880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.956112, 20.102169, 7.040740> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.586075, 19.950794, 7.028178>,  <21.364052, 19.859970, 7.020641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.586075, 19.950794, 7.028178>,  <21.956112, 20.102169, 7.040740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.586075, 19.950794, 7.028178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038565, 0.011355, 0.999192,
		-0.377774, 0.925558, -0.025099,
		-0.925094, -0.378437, -0.031405,
		21.308546, 19.837263, 7.018757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.704037, 20.371290, 7.628478>,  <21.956112, 20.102169, 7.040740>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.704037, 20.371290, 7.628478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.460045, 20.069252, 7.532343>,  <21.313650, 19.888029, 7.474662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.460045, 20.069252, 7.532343>,  <21.704037, 20.371290, 7.628478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.460045, 20.069252, 7.532343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172172, -0.169761, 0.970329,
		-0.773489, 0.633258, -0.026455,
		-0.609977, -0.755093, -0.240337,
		21.277052, 19.842724, 7.460242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.203293, 20.460705, 8.057164>,  <21.704037, 20.371290, 7.628478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.203293, 20.460705, 8.057164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.152122, 20.077137, 7.955884>,  <21.121420, 19.846996, 7.895116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.152122, 20.077137, 7.955884>,  <21.203293, 20.460705, 8.057164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.152122, 20.077137, 7.955884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351645, -0.194859, 0.915629,
		-0.927352, 0.206167, -0.312271,
		-0.127924, -0.958919, -0.253200,
		21.113745, 19.789461, 7.879924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.549274, 20.313322, 8.123822>,  <21.203293, 20.460705, 8.057164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.549274, 20.313322, 8.123822> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.726376, 19.954754, 8.131843>,  <20.832636, 19.739613, 8.136655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.726376, 19.954754, 8.131843>,  <20.549274, 20.313322, 8.123822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.726376, 19.954754, 8.131843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489627, -0.222980, 0.842939,
		-0.751155, -0.383031, -0.537636,
		0.442754, -0.896419, 0.020050,
		20.859201, 19.685827, 8.137857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.086296, 19.957466, 8.494725>,  <20.549274, 20.313322, 8.123822>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.086296, 19.957466, 8.494725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.389759, 19.697308, 8.509795>,  <20.571836, 19.541212, 8.518837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.389759, 19.697308, 8.509795>,  <20.086296, 19.957466, 8.494725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.389759, 19.697308, 8.509795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379554, -0.394251, 0.836962,
		-0.529505, -0.649268, -0.545963,
		0.758659, -0.650398, 0.037675,
		20.617357, 19.502188, 8.521097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.781572, 19.239777, 8.521267>,  <20.086296, 19.957466, 8.494725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.781572, 19.239777, 8.521267> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.141266, 19.287624, 8.689585>,  <20.357082, 19.316332, 8.790575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.141266, 19.287624, 8.689585>,  <19.781572, 19.239777, 8.521267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.141266, 19.287624, 8.689585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357226, -0.354454, 0.864148,
		0.252521, -0.927391, -0.276006,
		0.899234, 0.119618, 0.420795,
		20.411036, 19.323509, 8.815824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.804636, 18.706690, 8.960492>,  <19.781572, 19.239777, 8.521267>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.804636, 18.706690, 8.960492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.090885, 18.942356, 9.110566>,  <20.262634, 19.083755, 9.200610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.090885, 18.942356, 9.110566>,  <19.804636, 18.706690, 8.960492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.090885, 18.942356, 9.110566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127513, -0.417919, 0.899491,
		0.686747, -0.691539, -0.223947,
		0.715625, 0.589167, 0.375185,
		20.305573, 19.119106, 9.223122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.123903, 18.188921, 9.477686>,  <19.804636, 18.706690, 8.960492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.123903, 18.188921, 9.477686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.243019, 18.561447, 9.561563>,  <20.314489, 18.784964, 9.611890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.243019, 18.561447, 9.561563>,  <20.123903, 18.188921, 9.477686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.243019, 18.561447, 9.561563> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011463, -0.216156, 0.976292,
		0.954562, -0.293134, -0.053693,
		0.297790, 0.931316, 0.209695,
		20.332355, 18.840841, 9.624472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.510897, 18.159729, 10.116170>,  <20.123903, 18.188921, 9.477686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.510897, 18.159729, 10.116170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.439762, 18.553307, 10.122238>,  <20.397081, 18.789454, 10.125879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.439762, 18.553307, 10.122238>,  <20.510897, 18.159729, 10.116170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.439762, 18.553307, 10.122238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000969, -0.015242, 0.999884,
		0.984060, 0.177828, 0.001757,
		-0.177834, 0.983944, 0.015171,
		20.386412, 18.848490, 10.126789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.956472, 18.456591, 10.612035>,  <20.510897, 18.159729, 10.116170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.956472, 18.456591, 10.612035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.691296, 18.752323, 10.564881>,  <20.532188, 18.929762, 10.536590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.691296, 18.752323, 10.564881>,  <20.956472, 18.456591, 10.612035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.691296, 18.752323, 10.564881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054187, 0.204428, 0.977381,
		0.746706, 0.641560, -0.175586,
		-0.662943, 0.739331, -0.117883,
		20.492413, 18.974123, 10.529516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.144444, 18.915253, 11.076180>,  <20.956472, 18.456591, 10.612035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.144444, 18.915253, 11.076180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.760902, 18.974674, 10.979403>,  <20.530779, 19.010326, 10.921336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.760902, 18.974674, 10.979403>,  <21.144444, 18.915253, 11.076180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.760902, 18.974674, 10.979403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224910, 0.122615, 0.966634,
		0.173264, 0.981273, -0.084158,
		-0.958851, 0.148555, -0.241943,
		20.473248, 19.019241, 10.906819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.904814, 19.643452, 11.263032>,  <21.144444, 18.915253, 11.076180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.904814, 19.643452, 11.263032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.585102, 19.403526, 11.277902>,  <20.393276, 19.259571, 11.286823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.585102, 19.403526, 11.277902>,  <20.904814, 19.643452, 11.263032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.585102, 19.403526, 11.277902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243761, 0.380121, 0.892238,
		-0.549305, 0.704084, -0.450032,
		-0.799278, -0.599811, 0.037174,
		20.345318, 19.223583, 11.289054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.385235, 19.997429, 11.664912>,  <20.904814, 19.643452, 11.263032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.385235, 19.997429, 11.664912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.222069, 19.634155, 11.627377>,  <20.124168, 19.416191, 11.604856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.222069, 19.634155, 11.627377>,  <20.385235, 19.997429, 11.664912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.222069, 19.634155, 11.627377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.513697, 0.143325, 0.845915,
		-0.754797, 0.393268, -0.524996,
		-0.407916, -0.908184, -0.093839,
		20.099693, 19.361700, 11.599225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.703560, 20.166859, 11.578315>,  <20.385235, 19.997429, 11.664912>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.703560, 20.166859, 11.578315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.717072, 19.788258, 11.706686>,  <19.725180, 19.561098, 11.783709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.717072, 19.788258, 11.706686>,  <19.703560, 20.166859, 11.578315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.717072, 19.788258, 11.706686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.584357, 0.241798, 0.774636,
		-0.810794, -0.213703, -0.544927,
		0.033780, -0.946502, 0.320927,
		19.727205, 19.504307, 11.802964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.969019, 20.005243, 11.767799>,  <19.703560, 20.166859, 11.578315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.969019, 20.005243, 11.767799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.239792, 19.777748, 11.954689>,  <19.402256, 19.641251, 12.066823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.239792, 19.777748, 11.954689>,  <18.969019, 20.005243, 11.767799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.239792, 19.777748, 11.954689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361836, 0.295644, 0.884121,
		-0.640965, -0.767549, -0.005658,
		0.676933, -0.568738, 0.467224,
		19.442871, 19.607126, 12.094856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.726439, 19.806005, 12.479591>,  <18.969019, 20.005243, 11.767799>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.726439, 19.806005, 12.479591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.106361, 19.715427, 12.565933>,  <19.334314, 19.661081, 12.617738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.106361, 19.715427, 12.565933>,  <18.726439, 19.806005, 12.479591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.106361, 19.715427, 12.565933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101035, 0.430970, 0.896692,
		-0.296077, -0.873492, 0.386459,
		0.949805, -0.226444, 0.215854,
		19.391302, 19.647493, 12.630690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.729626, 19.445036, 13.163006>,  <18.726439, 19.806005, 12.479591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.729626, 19.445036, 13.163006> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.101391, 19.578609, 13.100170>,  <19.324450, 19.658754, 13.062469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.101391, 19.578609, 13.100170>,  <18.729626, 19.445036, 13.163006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.101391, 19.578609, 13.100170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022892, 0.372682, 0.927677,
		0.368332, -0.865790, 0.338731,
		0.929412, 0.333939, -0.157090,
		19.380215, 19.678789, 13.053043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.098940, 19.171322, 13.756291>,  <18.729626, 19.445036, 13.163006>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.098940, 19.171322, 13.756291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.320881, 19.472618, 13.615000>,  <19.454044, 19.653395, 13.530225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.320881, 19.472618, 13.615000>,  <19.098940, 19.171322, 13.756291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.320881, 19.472618, 13.615000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125229, 0.344127, 0.930535,
		0.822470, -0.560543, 0.096612,
		0.554851, 0.753238, -0.353230,
		19.487337, 19.698589, 13.509030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.774918, 19.213629, 14.156778>,  <19.098940, 19.171322, 13.756291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.774918, 19.213629, 14.156778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.719318, 19.568512, 13.980806>,  <19.685959, 19.781443, 13.875223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.719318, 19.568512, 13.980806>,  <19.774918, 19.213629, 14.156778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.719318, 19.568512, 13.980806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329464, 0.460366, 0.824328,
		0.933881, -0.030361, -0.356293,
		-0.138998, 0.887210, -0.439930,
		19.677618, 19.834675, 13.848827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.359276, 19.501917, 14.368957>,  <19.774918, 19.213629, 14.156778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.359276, 19.501917, 14.368957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.099415, 19.785255, 14.258545>,  <19.943499, 19.955259, 14.192298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.099415, 19.785255, 14.258545>,  <20.359276, 19.501917, 14.368957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.099415, 19.785255, 14.258545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184070, 0.498845, 0.846919,
		0.737610, 0.499395, -0.454462,
		-0.649654, 0.708349, -0.276029,
		19.904518, 19.997761, 14.175736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.569773, 20.088041, 14.739827>,  <20.359276, 19.501917, 14.368957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.569773, 20.088041, 14.739827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.198647, 20.181767, 14.623722>,  <19.975971, 20.238001, 14.554059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.198647, 20.181767, 14.623722>,  <20.569773, 20.088041, 14.739827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.198647, 20.181767, 14.623722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185597, 0.385014, 0.904056,
		0.323587, 0.892671, -0.313734,
		-0.927817, 0.234313, -0.290263,
		19.920301, 20.252060, 14.536643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.478159, 20.808525, 14.994131>,  <20.569773, 20.088041, 14.739827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.478159, 20.808525, 14.994131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.115070, 20.649841, 14.939480>,  <19.897217, 20.554632, 14.906689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.115070, 20.649841, 14.939480>,  <20.478159, 20.808525, 14.994131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.115070, 20.649841, 14.939480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264395, 0.287976, 0.920416,
		-0.325791, 0.871603, -0.366290,
		-0.907720, -0.396708, -0.136628,
		19.842754, 20.530828, 14.898492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.006750, 21.296627, 15.174892>,  <20.478159, 20.808525, 14.994131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.006750, 21.296627, 15.174892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.782890, 20.965469, 15.189779>,  <19.648575, 20.766775, 15.198711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.782890, 20.965469, 15.189779>,  <20.006750, 21.296627, 15.174892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.782890, 20.965469, 15.189779> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328696, 0.262972, 0.907086,
		-0.760757, 0.495418, -0.419297,
		-0.559650, -0.827893, 0.037216,
		19.614996, 20.717102, 15.200944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.319658, 21.526974, 15.383891>,  <20.006750, 21.296627, 15.174892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.319658, 21.526974, 15.383891> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.359314, 21.136868, 15.462917>,  <19.383108, 20.902803, 15.510333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.359314, 21.136868, 15.462917>,  <19.319658, 21.526974, 15.383891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.359314, 21.136868, 15.462917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230131, 0.170690, 0.958073,
		-0.968096, -0.140449, -0.207516,
		0.099139, -0.975263, 0.197566,
		19.389055, 20.844288, 15.522187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.895103, 21.424852, 15.870201>,  <19.319658, 21.526974, 15.383891>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.895103, 21.424852, 15.870201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.086227, 21.076012, 15.912422>,  <19.200901, 20.866707, 15.937755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.086227, 21.076012, 15.912422>,  <18.895103, 21.424852, 15.870201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.086227, 21.076012, 15.912422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136522, 0.044978, 0.989615,
		-0.867791, -0.487256, -0.097570,
		0.477808, -0.872100, 0.105553,
		19.229570, 20.814383, 15.944088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.544218, 21.001568, 16.291397>,  <18.895103, 21.424852, 15.870201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.544218, 21.001568, 16.291397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.921055, 20.868187, 16.305662>,  <19.147158, 20.788158, 16.314222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.921055, 20.868187, 16.305662>,  <18.544218, 21.001568, 16.291397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.921055, 20.868187, 16.305662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061486, -0.067203, 0.995843,
		-0.329669, -0.940369, -0.083814,
		0.942092, -0.333452, 0.035665,
		19.203682, 20.768152, 16.316362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.562090, 20.336536, 16.743715>,  <18.544218, 21.001568, 16.291397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.562090, 20.336536, 16.743715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.935966, 20.478027, 16.729677>,  <19.160292, 20.562922, 16.721254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.935966, 20.478027, 16.729677>,  <18.562090, 20.336536, 16.743715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.935966, 20.478027, 16.729677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007935, 0.077936, 0.996927,
		0.355376, -0.932096, 0.070039,
		0.934690, 0.353728, -0.035093,
		19.216373, 20.584146, 16.719149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.896389, 19.941542, 17.211918>,  <18.562090, 20.336536, 16.743715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.896389, 19.941542, 17.211918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.150661, 20.246441, 17.163103>,  <19.303225, 20.429380, 17.133814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.150661, 20.246441, 17.163103>,  <18.896389, 19.941542, 17.211918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.150661, 20.246441, 17.163103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227201, -0.033655, 0.973266,
		0.737761, -0.646412, -0.194577,
		0.635679, 0.762246, -0.122036,
		19.341366, 20.475115, 17.126492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.550467, 19.741848, 17.586950>,  <18.896389, 19.941542, 17.211918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.550467, 19.741848, 17.586950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.549385, 20.139919, 17.547722>,  <19.548737, 20.378761, 17.524185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.549385, 20.139919, 17.547722>,  <19.550467, 19.741848, 17.586950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.549385, 20.139919, 17.547722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370867, 0.092074, 0.924110,
		0.928682, -0.033873, -0.369327,
		-0.002703, 0.995176, -0.098070,
		19.548574, 20.438473, 17.518301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.152592, 19.980236, 17.898493>,  <19.550467, 19.741848, 17.586950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.152592, 19.980236, 17.898493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.907379, 20.295807, 17.915401>,  <19.760252, 20.485149, 17.925547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.907379, 20.295807, 17.915401>,  <20.152592, 19.980236, 17.898493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.907379, 20.295807, 17.915401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286753, 0.172327, 0.942378,
		0.736182, 0.589830, -0.331869,
		-0.613033, 0.788926, 0.042271,
		19.723469, 20.532484, 17.928083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.497824, 20.330673, 18.366598>,  <20.152592, 19.980236, 17.898493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.497824, 20.330673, 18.366598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.143936, 20.516125, 18.347313>,  <19.931604, 20.627396, 18.335741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.143936, 20.516125, 18.347313>,  <20.497824, 20.330673, 18.366598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.143936, 20.516125, 18.347313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145002, 0.372044, 0.916819,
		0.443000, 0.804135, -0.396381,
		-0.884718, 0.463627, -0.048214,
		19.878521, 20.655212, 18.332850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.624174, 20.898670, 18.789558>,  <20.497824, 20.330673, 18.366598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.624174, 20.898670, 18.789558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.229622, 20.839626, 18.760542>,  <19.992889, 20.804199, 18.743132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.229622, 20.839626, 18.760542>,  <20.624174, 20.898670, 18.789558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.229622, 20.839626, 18.760542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140835, 0.530245, 0.836066,
		-0.084947, 0.834897, -0.543812,
		-0.986382, -0.147610, -0.072540,
		19.933708, 20.795343, 18.738779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.352667, 21.521484, 18.914833>,  <20.624174, 20.898670, 18.789558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.352667, 21.521484, 18.914833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.044685, 21.274632, 18.979723>,  <19.859896, 21.126520, 19.018658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.044685, 21.274632, 18.979723>,  <20.352667, 21.521484, 18.914833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.044685, 21.274632, 18.979723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289552, 0.564456, 0.773013,
		-0.568621, 0.548212, -0.613298,
		-0.769954, -0.617133, 0.162226,
		19.813700, 21.089491, 19.028391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.814684, 21.929853, 19.160028>,  <20.352667, 21.521484, 18.914833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.814684, 21.929853, 19.160028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.693363, 21.572872, 19.293615>,  <19.620571, 21.358683, 19.373768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.693363, 21.572872, 19.293615>,  <19.814684, 21.929853, 19.160028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.693363, 21.572872, 19.293615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388047, 0.435777, 0.812107,
		-0.870303, 0.116720, -0.478487,
		-0.303303, -0.892454, 0.333965,
		19.602373, 21.305136, 19.393805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.094658, 21.916416, 19.448715>,  <19.814684, 21.929853, 19.160028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.094658, 21.916416, 19.448715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.269234, 21.602791, 19.625244>,  <19.373980, 21.414616, 19.731161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.269234, 21.602791, 19.625244>,  <19.094658, 21.916416, 19.448715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.269234, 21.602791, 19.625244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386569, 0.279514, 0.878883,
		-0.812457, -0.554180, -0.181105,
		0.436438, -0.784064, 0.441322,
		19.400166, 21.367571, 19.757641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.605530, 21.667505, 20.025688>,  <19.094658, 21.916416, 19.448715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.605530, 21.667505, 20.025688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.952389, 21.490513, 20.117138>,  <19.160503, 21.384317, 20.172009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.952389, 21.490513, 20.117138>,  <18.605530, 21.667505, 20.025688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.952389, 21.490513, 20.117138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206217, 0.098862, 0.973499,
		-0.453356, -0.891313, -0.005520,
		0.867147, -0.442480, 0.228624,
		19.212532, 21.357769, 20.185724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.428417, 21.298725, 20.532604>,  <18.605530, 21.667505, 20.025688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.428417, 21.298725, 20.532604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.821690, 21.360840, 20.571062>,  <19.057653, 21.398109, 20.594137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.821690, 21.360840, 20.571062>,  <18.428417, 21.298725, 20.532604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.821690, 21.360840, 20.571062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137792, 0.285144, 0.948528,
		0.119878, -0.945822, 0.301745,
		0.983180, 0.155286, 0.096144,
		19.116644, 21.407427, 20.599905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.624174, 21.057280, 21.221918>,  <18.428417, 21.298725, 20.532604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.624174, 21.057280, 21.221918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.909904, 21.311169, 21.104023>,  <19.081343, 21.463501, 21.033285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.909904, 21.311169, 21.104023>,  <18.624174, 21.057280, 21.221918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.909904, 21.311169, 21.104023> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054269, 0.369657, 0.927582,
		0.697708, -0.678589, 0.229609,
		0.714324, 0.634721, -0.294739,
		19.124201, 21.501585, 21.015602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.225241, 21.099812, 21.688910>,  <18.624174, 21.057280, 21.221918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.225241, 21.099812, 21.688910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.200150, 21.454197, 21.505114>,  <19.185095, 21.666828, 21.394836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.200150, 21.454197, 21.505114>,  <19.225241, 21.099812, 21.688910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.200150, 21.454197, 21.505114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097488, 0.463633, 0.880647,
		0.993258, 0.010447, -0.115455,
		-0.062729, 0.885966, -0.459489,
		19.181332, 21.719986, 21.367268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.546343, 21.462410, 22.145254>,  <19.225241, 21.099812, 21.688910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.546343, 21.462410, 22.145254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.420757, 21.749088, 21.896168>,  <19.345406, 21.921095, 21.746716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.420757, 21.749088, 21.896168>,  <19.546343, 21.462410, 22.145254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.420757, 21.749088, 21.896168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136967, 0.614828, 0.776676,
		0.939504, 0.329139, -0.094869,
		-0.313962, 0.716697, -0.622715,
		19.326569, 21.964098, 21.709352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.997328, 22.019518, 22.200176>,  <19.546343, 21.462410, 22.145254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.997328, 22.019518, 22.200176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.640358, 22.155994, 22.082081>,  <19.426176, 22.237881, 22.011223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.640358, 22.155994, 22.082081>,  <19.997328, 22.019518, 22.200176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.640358, 22.155994, 22.082081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002489, 0.658062, 0.752960,
		0.451189, 0.671225, -0.588120,
		-0.892425, 0.341191, -0.295240,
		19.372631, 22.258352, 21.993509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.075682, 22.597803, 22.355869>,  <19.997328, 22.019518, 22.200176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.075682, 22.597803, 22.355869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.679478, 22.562912, 22.313375>,  <19.441755, 22.541977, 22.287880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.679478, 22.562912, 22.313375>,  <20.075682, 22.597803, 22.355869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.679478, 22.562912, 22.313375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137261, 0.586715, 0.798076,
		-0.007285, 0.805082, -0.593119,
		-0.990508, -0.087226, -0.106232,
		19.382326, 22.536745, 22.281506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.856728, 23.066509, 22.944334>,  <20.075682, 22.597803, 22.355869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.856728, 23.066509, 22.944334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.536827, 22.935593, 22.743027>,  <19.344887, 22.857042, 22.622242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.536827, 22.935593, 22.743027>,  <19.856728, 23.066509, 22.944334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.536827, 22.935593, 22.743027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.579618, 0.639284, 0.505331,
		0.156338, 0.695842, -0.700973,
		-0.799751, -0.327294, -0.503267,
		19.296902, 22.837404, 22.592047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.645922, 23.015379, 23.628395>,  <19.856728, 23.066509, 22.944334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.645922, 23.015379, 23.628395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.446472, 23.204468, 23.337767>,  <19.326801, 23.317921, 23.163389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.446472, 23.204468, 23.337767>,  <19.645922, 23.015379, 23.628395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.446472, 23.204468, 23.337767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.801170, -0.571317, 0.178109,
		-0.330906, 0.670917, 0.663605,
		-0.498626, 0.472723, -0.726571,
		19.296885, 23.346285, 23.119795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.953178, 23.196352, 23.803995>,  <19.645922, 23.015379, 23.628395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.953178, 23.196352, 23.803995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.953331, 23.146725, 23.407085>,  <18.953423, 23.116949, 23.168940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.953331, 23.146725, 23.407085>,  <18.953178, 23.196352, 23.803995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.953331, 23.146725, 23.407085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.832933, -0.549137, 0.068343,
		-0.553374, 0.826472, -0.103549,
		0.000379, -0.124068, -0.992274,
		18.953445, 23.109505, 23.109404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.278179, 23.383120, 23.740107>,  <18.953178, 23.196352, 23.803995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.278179, 23.383120, 23.740107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.406761, 23.128704, 23.459501>,  <18.483910, 22.976055, 23.291138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.406761, 23.128704, 23.459501>,  <18.278179, 23.383120, 23.740107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.406761, 23.128704, 23.459501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.821150, -0.556175, 0.127991,
		-0.471572, 0.534906, -0.701068,
		0.321453, -0.636039, -0.701515,
		18.503197, 22.937893, 23.249046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.913164, 23.414227, 23.158054>,  <18.278179, 23.383120, 23.740107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.913164, 23.414227, 23.158054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.048141, 23.048157, 23.246229>,  <18.129128, 22.828516, 23.299133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.048141, 23.048157, 23.246229>,  <17.913164, 23.414227, 23.158054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.048141, 23.048157, 23.246229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.940967, -0.321284, 0.106577,
		-0.026714, -0.243385, -0.969562,
		0.337443, -0.915172, 0.220435,
		18.149374, 22.773605, 23.312359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.482023, 23.330925, 23.892458>,  <17.913164, 23.414227, 23.158054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.482023, 23.330925, 23.892458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.438438, 23.710861, 23.775202>,  <17.412289, 23.938824, 23.704847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.438438, 23.710861, 23.775202>,  <17.482023, 23.330925, 23.892458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.438438, 23.710861, 23.775202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143793, -0.306856, -0.940831,
		-0.983591, -0.060362, 0.170016,
		-0.108961, 0.949840, -0.293142,
		17.405750, 23.995813, 23.687260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.898781, 23.146105, 23.502975>,  <17.482023, 23.330925, 23.892458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.898781, 23.146105, 23.502975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.025478, 23.514858, 23.413708>,  <17.101498, 23.736111, 23.360147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.025478, 23.514858, 23.413708>,  <16.898781, 23.146105, 23.502975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.025478, 23.514858, 23.413708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187374, -0.169833, -0.967496,
		-0.929819, 0.348265, 0.118944,
		0.316744, 0.921883, -0.223170,
		17.120501, 23.791424, 23.346756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.535786, 23.378880, 22.966829>,  <16.898781, 23.146105, 23.502975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.535786, 23.378880, 22.966829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.845840, 23.630901, 22.948071>,  <17.031874, 23.782114, 22.936815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.845840, 23.630901, 22.948071>,  <16.535786, 23.378880, 22.966829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.845840, 23.630901, 22.948071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033213, -0.114761, -0.992838,
		-0.630923, 0.768025, -0.109881,
		0.775135, 0.630053, -0.046897,
		17.078381, 23.819918, 22.934002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.351639, 23.773554, 22.412268>,  <16.535786, 23.378880, 22.966829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.351639, 23.773554, 22.412268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.751621, 23.774704, 22.408810>,  <16.991611, 23.775394, 22.406734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.751621, 23.774704, 22.408810>,  <16.351639, 23.773554, 22.412268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.751621, 23.774704, 22.408810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008996, 0.162866, -0.986607,
		-0.001429, 0.986644, 0.162885,
		0.999959, 0.002876, -0.008643,
		17.051609, 23.775566, 22.406218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.589489, 24.324579, 22.023232>,  <16.351639, 23.773554, 22.412268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.589489, 24.324579, 22.023232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.882725, 24.052731, 22.012707>,  <17.058666, 23.889622, 22.006392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.882725, 24.052731, 22.012707>,  <16.589489, 24.324579, 22.023232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.882725, 24.052731, 22.012707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091006, 0.136359, -0.986471,
		0.674015, 0.720778, 0.161813,
		0.733091, -0.679622, -0.026313,
		17.102652, 23.848845, 22.004812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.078123, 24.569914, 21.573872>,  <16.589489, 24.324579, 22.023232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.078123, 24.569914, 21.573872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.156246, 24.177624, 21.571592>,  <17.203119, 23.942249, 21.570225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.156246, 24.177624, 21.571592>,  <17.078123, 24.569914, 21.573872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.156246, 24.177624, 21.571592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108165, 0.027316, -0.993758,
		0.974759, 0.193472, 0.111415,
		0.195308, -0.980726, -0.005699,
		17.214838, 23.883406, 21.569883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.725563, 24.404560, 21.168940>,  <17.078123, 24.569914, 21.573872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.725563, 24.404560, 21.168940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.539734, 24.050430, 21.176699>,  <17.428236, 23.837954, 21.181355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.539734, 24.050430, 21.176699>,  <17.725563, 24.404560, 21.168940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.539734, 24.050430, 21.176699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173846, -0.112661, -0.978307,
		0.868304, -0.451120, 0.206249,
		-0.464571, -0.885324, 0.019399,
		17.400362, 23.784834, 21.182518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.180088, 23.934679, 20.840338>,  <17.725563, 24.404560, 21.168940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.180088, 23.934679, 20.840338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.814411, 23.774582, 20.814857>,  <17.595005, 23.678524, 20.799568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.814411, 23.774582, 20.814857>,  <18.180088, 23.934679, 20.840338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.814411, 23.774582, 20.814857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171214, -0.238943, -0.955820,
		0.367340, -0.884710, 0.286968,
		-0.914192, -0.400244, -0.063701,
		17.540154, 23.654509, 20.795748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.310255, 23.441971, 20.384922>,  <18.180088, 23.934679, 20.840338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.310255, 23.441971, 20.384922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.913380, 23.491837, 20.386826>,  <17.675255, 23.521757, 20.387968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.913380, 23.491837, 20.386826>,  <18.310255, 23.441971, 20.384922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.913380, 23.491837, 20.386826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046409, -0.333392, -0.941645,
		-0.115804, -0.934509, 0.336573,
		-0.992187, 0.124666, 0.004761,
		17.615723, 23.529236, 20.388254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.883856, 22.855776, 20.320669>,  <18.310255, 23.441971, 20.384922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.883856, 22.855776, 20.320669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.632004, 23.135471, 20.185242>,  <17.480892, 23.303289, 20.103985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.632004, 23.135471, 20.185242>,  <17.883856, 22.855776, 20.320669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.632004, 23.135471, 20.185242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006875, -0.430765, -0.902438,
		-0.776865, -0.570529, 0.266415,
		-0.629629, 0.699241, -0.338569,
		17.443115, 23.345243, 20.083672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.330648, 22.555099, 20.021975>,  <17.883856, 22.855776, 20.320669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.330648, 22.555099, 20.021975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.289013, 22.925327, 19.876377>,  <17.264032, 23.147463, 19.789019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.289013, 22.925327, 19.876377>,  <17.330648, 22.555099, 20.021975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.289013, 22.925327, 19.876377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158889, -0.376755, -0.912584,
		-0.981795, -0.037153, 0.186277,
		-0.104086, 0.925568, -0.363993,
		17.257788, 23.202997, 19.767179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.713146, 22.559170, 19.495455>,  <17.330648, 22.555099, 20.021975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.713146, 22.559170, 19.495455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.928185, 22.891987, 19.440760>,  <17.057207, 23.091677, 19.407944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.928185, 22.891987, 19.440760>,  <16.713146, 22.559170, 19.495455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.928185, 22.891987, 19.440760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128398, -0.079493, -0.988532,
		-0.833368, 0.548989, 0.064097,
		0.537598, 0.832041, -0.136736,
		17.089464, 23.141600, 19.399738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.319973, 22.981951, 19.135773>,  <16.713146, 22.559170, 19.495455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.319973, 22.981951, 19.135773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.696873, 23.085339, 19.050583>,  <16.923014, 23.147371, 18.999470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.696873, 23.085339, 19.050583>,  <16.319973, 22.981951, 19.135773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.696873, 23.085339, 19.050583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185163, -0.127842, -0.974357,
		-0.279068, 0.957523, -0.072600,
		0.942250, 0.258469, -0.212974,
		16.979548, 23.162880, 18.986691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.097067, 23.395882, 18.554739>,  <16.319973, 22.981951, 19.135773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.097067, 23.395882, 18.554739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.488400, 23.313072, 18.553682>,  <16.723200, 23.263386, 18.553049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.488400, 23.313072, 18.553682>,  <16.097067, 23.395882, 18.554739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.488400, 23.313072, 18.553682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002880, 0.026363, -0.999648,
		0.207020, 0.977981, 0.026388,
		0.978332, -0.207024, -0.002641,
		16.781898, 23.250965, 18.552891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.351311, 23.862194, 18.083509>,  <16.097067, 23.395882, 18.554739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.351311, 23.862194, 18.083509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.610283, 23.558964, 18.114891>,  <16.765665, 23.377026, 18.133720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.610283, 23.558964, 18.114891>,  <16.351311, 23.862194, 18.083509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.610283, 23.558964, 18.114891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168457, 0.041948, -0.984816,
		0.743276, 0.650814, 0.154862,
		0.647428, -0.758078, 0.078455,
		16.804512, 23.331541, 18.138428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.887802, 24.043333, 17.699177>,  <16.351311, 23.862194, 18.083509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.887802, 24.043333, 17.699177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.949177, 23.649376, 17.731277>,  <16.986002, 23.413002, 17.750538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.949177, 23.649376, 17.731277>,  <16.887802, 24.043333, 17.699177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.949177, 23.649376, 17.731277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048651, -0.073587, -0.996101,
		0.986960, 0.156744, 0.036626,
		0.153437, -0.984894, 0.080253,
		16.995209, 23.353909, 17.755354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.330006, 23.954554, 17.118126>,  <16.887802, 24.043333, 17.699177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.330006, 23.954554, 17.118126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.212864, 23.594849, 17.248087>,  <17.142580, 23.379025, 17.326063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.212864, 23.594849, 17.248087>,  <17.330006, 23.954554, 17.118126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.212864, 23.594849, 17.248087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058910, -0.356123, -0.932580,
		0.954341, -0.253968, 0.157267,
		-0.292852, -0.899265, 0.324901,
		17.125008, 23.325069, 17.345558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.866354, 23.522570, 16.971493>,  <17.330006, 23.954554, 17.118126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.866354, 23.522570, 16.971493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.517803, 23.328171, 16.998369>,  <17.308674, 23.211533, 17.014496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.517803, 23.328171, 16.998369>,  <17.866354, 23.522570, 16.971493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.517803, 23.328171, 16.998369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053014, -0.229420, -0.971883,
		0.487745, -0.843312, 0.225676,
		-0.871375, -0.485995, 0.067191,
		17.256392, 23.182373, 17.018526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.907295, 23.013533, 16.415287>,  <17.866354, 23.522570, 16.971493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.907295, 23.013533, 16.415287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.519558, 22.991390, 16.511045>,  <17.286915, 22.978106, 16.568501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.519558, 22.991390, 16.511045>,  <17.907295, 23.013533, 16.415287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.519558, 22.991390, 16.511045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213773, -0.290361, -0.932733,
		0.121144, -0.955315, 0.269626,
		-0.969343, -0.055356, 0.239396,
		17.228756, 22.974783, 16.582865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.636074, 22.322290, 16.266855>,  <17.907295, 23.013533, 16.415287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.636074, 22.322290, 16.266855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.340916, 22.591686, 16.249321>,  <17.163820, 22.753323, 16.238800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.340916, 22.591686, 16.249321>,  <17.636074, 22.322290, 16.266855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.340916, 22.591686, 16.249321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141439, -0.217821, -0.965686,
		-0.659926, -0.706377, 0.255987,
		-0.737897, 0.673488, -0.043837,
		17.119547, 22.793732, 16.236170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.329523, 22.235729, 15.690397>,  <17.636074, 22.322290, 16.266855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.329523, 22.235729, 15.690397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.115456, 22.569187, 15.744999>,  <16.987015, 22.769262, 15.777760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.115456, 22.569187, 15.744999>,  <17.329523, 22.235729, 15.690397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.115456, 22.569187, 15.744999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073285, 0.115164, -0.990639,
		-0.841560, -0.540163, -0.000539,
		-0.535169, 0.833643, 0.136503,
		16.954905, 22.819281, 15.785950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.649212, 22.188326, 15.339047>,  <17.329523, 22.235729, 15.690397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.649212, 22.188326, 15.339047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.773724, 22.566936, 15.372963>,  <16.848431, 22.794104, 15.393312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.773724, 22.566936, 15.372963>,  <16.649212, 22.188326, 15.339047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.773724, 22.566936, 15.372963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014907, 0.094075, -0.995454,
		-0.950202, 0.308600, 0.043393,
		0.311279, 0.946529, 0.084790,
		16.867107, 22.850895, 15.398400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.261345, 22.568745, 14.879087>,  <16.649212, 22.188326, 15.339047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.261345, 22.568745, 14.879087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.559746, 22.829556, 14.933254>,  <16.738787, 22.986042, 14.965755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.559746, 22.829556, 14.933254>,  <16.261345, 22.568745, 14.879087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.559746, 22.829556, 14.933254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066504, 0.275271, -0.959064,
		-0.662613, 0.706459, 0.248716,
		0.746004, 0.652029, 0.135416,
		16.783546, 23.025164, 14.973879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.052103, 23.302916, 14.672251>,  <16.261345, 22.568745, 14.879087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.052103, 23.302916, 14.672251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.448784, 23.270348, 14.632462>,  <16.686792, 23.250807, 14.608588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.448784, 23.270348, 14.632462>,  <16.052103, 23.302916, 14.672251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.448784, 23.270348, 14.632462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091607, 0.095229, -0.991231,
		0.090177, 0.992120, 0.086981,
		0.991704, -0.081419, -0.099473,
		16.746296, 23.245922, 14.602620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.329493, 23.880251, 14.289684>,  <16.052103, 23.302916, 14.672251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.329493, 23.880251, 14.289684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.622173, 23.610332, 14.251190>,  <16.797781, 23.448381, 14.228094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.622173, 23.610332, 14.251190>,  <16.329493, 23.880251, 14.289684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.622173, 23.610332, 14.251190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121433, 0.009877, -0.992550,
		0.670722, 0.737936, -0.074716,
		0.731701, -0.674798, -0.096235,
		16.841684, 23.407892, 14.222320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.806631, 24.127871, 13.646523>,  <16.329493, 23.880251, 14.289684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.806631, 24.127871, 13.646523> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.902805, 23.745781, 13.715500>,  <16.960510, 23.516527, 13.756886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.902805, 23.745781, 13.715500>,  <16.806631, 24.127871, 13.646523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.902805, 23.745781, 13.715500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020468, -0.182602, -0.982974,
		0.970449, 0.232812, -0.063456,
		0.240435, -0.955225, 0.172441,
		16.974936, 23.459213, 13.767232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.401834, 24.199537, 13.233162>,  <16.806631, 24.127871, 13.646523>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.401834, 24.199537, 13.233162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.292698, 23.822369, 13.309542>,  <17.227217, 23.596067, 13.355370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.292698, 23.822369, 13.309542>,  <17.401834, 24.199537, 13.233162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.292698, 23.822369, 13.309542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288359, -0.269506, -0.918812,
		0.917828, -0.195626, 0.345431,
		-0.272839, -0.942919, 0.190950,
		17.210846, 23.539494, 13.366827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.016741, 23.837559, 13.183086>,  <17.401834, 24.199537, 13.233162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.016741, 23.837559, 13.183086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.718021, 23.580486, 13.114674>,  <17.538790, 23.426243, 13.073626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.718021, 23.580486, 13.114674>,  <18.016741, 23.837559, 13.183086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.718021, 23.580486, 13.114674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360650, -0.175284, -0.916083,
		0.558772, -0.745811, 0.362685,
		-0.746797, -0.642683, -0.171033,
		17.493982, 23.387682, 13.063364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.263165, 23.396280, 12.775969>,  <18.016741, 23.837559, 13.183086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.263165, 23.396280, 12.775969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.885853, 23.272812, 12.727070>,  <17.659466, 23.198730, 12.697730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.885853, 23.272812, 12.727070>,  <18.263165, 23.396280, 12.775969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.885853, 23.272812, 12.727070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252231, -0.426870, -0.868425,
		0.215874, -0.850003, 0.480514,
		-0.943280, -0.308671, -0.122247,
		17.602869, 23.180210, 12.690395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.296406, 22.677404, 12.676292>,  <18.263165, 23.396280, 12.775969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.296406, 22.677404, 12.676292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.969227, 22.833572, 12.507280>,  <17.772919, 22.927273, 12.405873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.969227, 22.833572, 12.507280>,  <18.296406, 22.677404, 12.676292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.969227, 22.833572, 12.507280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291903, -0.351238, -0.889620,
		-0.495736, -0.851001, 0.173329,
		-0.817948, 0.390422, -0.422531,
		17.723843, 22.950699, 12.380521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.074207, 22.148762, 12.214273>,  <18.296406, 22.677404, 12.676292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.074207, 22.148762, 12.214273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.857155, 22.460903, 12.089952>,  <17.726923, 22.648188, 12.015358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.857155, 22.460903, 12.089952>,  <18.074207, 22.148762, 12.214273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.857155, 22.460903, 12.089952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235555, -0.213801, -0.948052,
		-0.806266, -0.587655, -0.067801,
		-0.542631, 0.780353, -0.310806,
		17.694365, 22.695009, 11.996710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.772846, 21.879461, 11.591175>,  <18.074207, 22.148762, 12.214273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.772846, 21.879461, 11.591175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.764149, 22.279350, 11.587649>,  <17.758930, 22.519283, 11.585534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.764149, 22.279350, 11.587649>,  <17.772846, 21.879461, 11.591175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.764149, 22.279350, 11.587649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306042, -0.001738, -0.952017,
		-0.951770, -0.023398, -0.305920,
		-0.021744, 0.999725, -0.008815,
		17.757626, 22.579268, 11.585005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.316011, 22.153784, 10.961906>,  <17.772846, 21.879461, 11.591175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.316011, 22.153784, 10.961906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.588627, 22.428596, 11.062697>,  <17.752195, 22.593485, 11.123172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.588627, 22.428596, 11.062697>,  <17.316011, 22.153784, 10.961906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.588627, 22.428596, 11.062697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331330, 0.017306, -0.943356,
		-0.652475, 0.726422, -0.215840,
		0.681539, 0.687031, 0.251977,
		17.793089, 22.634706, 11.138290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.322285, 22.591932, 10.464400>,  <17.316011, 22.153784, 10.961906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.322285, 22.591932, 10.464400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.679436, 22.687908, 10.616818>,  <17.893726, 22.745493, 10.708269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.679436, 22.687908, 10.616818>,  <17.322285, 22.591932, 10.464400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.679436, 22.687908, 10.616818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406321, -0.064575, -0.911446,
		-0.194086, 0.968638, -0.155150,
		0.892880, 0.239940, 0.381044,
		17.947300, 22.759890, 10.731132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.569069, 23.175264, 10.033402>,  <17.322285, 22.591932, 10.464400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.569069, 23.175264, 10.033402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.872692, 22.975750, 10.200756>,  <18.054865, 22.856041, 10.301168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.872692, 22.975750, 10.200756>,  <17.569069, 23.175264, 10.033402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.872692, 22.975750, 10.200756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407717, -0.136807, -0.902802,
		0.507544, 0.855859, 0.099521,
		0.759056, -0.498788, 0.418384,
		18.100409, 22.826113, 10.326271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.268957, 23.500782, 9.916188>,  <17.569069, 23.175264, 10.033402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.268957, 23.500782, 9.916188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.340706, 23.117268, 10.004325>,  <18.383755, 22.887159, 10.057207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.340706, 23.117268, 10.004325>,  <18.268957, 23.500782, 9.916188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.340706, 23.117268, 10.004325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421611, -0.127444, -0.897776,
		0.888858, 0.253936, 0.381376,
		0.179374, -0.958788, 0.220342,
		18.394518, 22.829632, 10.070428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.826963, 23.388268, 9.531364>,  <18.268957, 23.500782, 9.916188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.826963, 23.388268, 9.531364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.712578, 23.013313, 9.610895>,  <18.643946, 22.788342, 9.658614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.712578, 23.013313, 9.610895>,  <18.826963, 23.388268, 9.531364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.712578, 23.013313, 9.610895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462288, -0.316706, -0.828243,
		0.839353, -0.144934, 0.523909,
		-0.285966, -0.937385, 0.198827,
		18.626787, 22.732098, 9.670544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.422178, 22.906778, 9.408082>,  <18.826963, 23.388268, 9.531364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.422178, 22.906778, 9.408082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.114540, 22.651169, 9.412834>,  <18.929956, 22.497803, 9.415686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.114540, 22.651169, 9.412834>,  <19.422178, 22.906778, 9.408082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.114540, 22.651169, 9.412834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416510, -0.515216, -0.749048,
		0.484779, -0.571141, 0.662410,
		-0.769096, -0.639023, 0.011880,
		18.883812, 22.459461, 9.416398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.757498, 22.353052, 9.418479>,  <19.422178, 22.906778, 9.408082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.757498, 22.353052, 9.418479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.383007, 22.279781, 9.298530>,  <19.158312, 22.235819, 9.226561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.383007, 22.279781, 9.298530>,  <19.757498, 22.353052, 9.418479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.383007, 22.279781, 9.298530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350036, -0.561116, -0.750083,
		-0.030865, -0.807214, 0.589451,
		-0.936228, -0.183177, -0.299873,
		19.102139, 22.224829, 9.208568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.829149, 21.693302, 9.221125>,  <19.757498, 22.353052, 9.418479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.829149, 21.693302, 9.221125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.487377, 21.813568, 9.051631>,  <19.282314, 21.885729, 8.949935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.487377, 21.813568, 9.051631>,  <19.829149, 21.693302, 9.221125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.487377, 21.813568, 9.051631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247809, -0.480983, -0.840979,
		-0.456653, -0.823566, 0.336463,
		-0.854434, 0.300657, -0.423730,
		19.231049, 21.903769, 8.924511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.583267, 21.175825, 8.871307>,  <19.829149, 21.693302, 9.221125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.583267, 21.175825, 8.871307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.404270, 21.472012, 8.670724>,  <19.296871, 21.649723, 8.550374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.404270, 21.472012, 8.670724>,  <19.583267, 21.175825, 8.871307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.404270, 21.472012, 8.670724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266129, -0.425069, -0.865154,
		-0.853771, -0.520604, -0.006843,
		-0.447494, 0.740464, -0.501459,
		19.270021, 21.694151, 8.520286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.041067, 20.853701, 8.392136>,  <19.583267, 21.175825, 8.871307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.041067, 20.853701, 8.392136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.170937, 21.200169, 8.240169>,  <19.248857, 21.408049, 8.148989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.170937, 21.200169, 8.240169>,  <19.041067, 20.853701, 8.392136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.170937, 21.200169, 8.240169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174680, -0.449680, -0.875943,
		-0.929557, 0.218030, -0.297301,
		0.324672, 0.866171, -0.379917,
		19.268337, 21.460020, 8.126193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.737162, 20.960505, 7.772438>,  <19.041067, 20.853701, 8.392136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.737162, 20.960505, 7.772438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.042446, 21.217525, 7.745200>,  <19.225616, 21.371738, 7.728858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.042446, 21.217525, 7.745200>,  <18.737162, 20.960505, 7.772438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.042446, 21.217525, 7.745200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099952, -0.221520, -0.970020,
		-0.638371, 0.733525, -0.233290,
		0.763212, 0.642550, -0.068095,
		19.271410, 21.410290, 7.724771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.820826, 20.957792, 7.072165>,  <18.737162, 20.960505, 7.772438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.820826, 20.957792, 7.072165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.158913, 21.156998, 7.149720>,  <19.361765, 21.276520, 7.196253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.158913, 21.156998, 7.149720>,  <18.820826, 20.957792, 7.072165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.158913, 21.156998, 7.149720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391091, -0.329133, -0.859488,
		-0.364220, 0.802282, -0.472957,
		0.845217, 0.498012, 0.193888,
		19.412477, 21.306402, 7.207887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.035898, 20.241959, 7.217572>,  <18.820826, 20.957792, 7.072165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.035898, 20.241959, 7.217572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.782608, 19.935646, 7.262483>,  <18.630634, 19.751858, 7.289429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.782608, 19.935646, 7.262483>,  <19.035898, 20.241959, 7.217572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.782608, 19.935646, 7.262483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.644699, 0.602148, 0.470937,
		-0.428243, 0.225823, -0.874993,
		-0.633223, -0.765782, 0.112278,
		18.592642, 19.705912, 7.296166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.204626, 20.367970, 7.017788>,  <19.035898, 20.241959, 7.217572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.204626, 20.367970, 7.017788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.252861, 20.063946, 7.273214>,  <18.281803, 19.881531, 7.426470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.252861, 20.063946, 7.273214>,  <18.204626, 20.367970, 7.017788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.252861, 20.063946, 7.273214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.737584, 0.361923, 0.570071,
		-0.664400, -0.539741, -0.516965,
		0.120589, -0.760060, 0.638566,
		18.289038, 19.835928, 7.464784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.492184, 20.254101, 7.216172>,  <18.204626, 20.367970, 7.017788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.492184, 20.254101, 7.216172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.669994, 20.022217, 7.489326>,  <17.776682, 19.883087, 7.653218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.669994, 20.022217, 7.489326>,  <17.492184, 20.254101, 7.216172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.669994, 20.022217, 7.489326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.790458, 0.104764, 0.603490,
		-0.421391, -0.808060, -0.411666,
		0.444528, -0.579710, 0.682884,
		17.803352, 19.848305, 7.694191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.983280, 19.690731, 7.462060>,  <17.492184, 20.254101, 7.216172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.983280, 19.690731, 7.462060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.275452, 19.719124, 7.733776>,  <17.450754, 19.736160, 7.896806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.275452, 19.719124, 7.733776>,  <16.983280, 19.690731, 7.462060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.275452, 19.719124, 7.733776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.671062, 0.259640, 0.694451,
		-0.127075, -0.963093, 0.237284,
		0.730429, 0.070984, 0.679289,
		17.494581, 19.740419, 7.937563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.653330, 19.433105, 8.014685>,  <16.983280, 19.690731, 7.462060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.653330, 19.433105, 8.014685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.988861, 19.575783, 8.179188>,  <17.190180, 19.661388, 8.277890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.988861, 19.575783, 8.179188>,  <16.653330, 19.433105, 8.014685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.988861, 19.575783, 8.179188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518588, 0.293728, 0.802988,
		0.165622, -0.886845, 0.431365,
		0.838830, 0.356693, 0.411259,
		17.240511, 19.682791, 8.302566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.590445, 19.122494, 8.587211>,  <16.653330, 19.433105, 8.014685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.590445, 19.122494, 8.587211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.820023, 19.438938, 8.671810>,  <16.957769, 19.628805, 8.722570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.820023, 19.438938, 8.671810>,  <16.590445, 19.122494, 8.587211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.820023, 19.438938, 8.671810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.596032, 0.226465, 0.770363,
		0.561544, -0.568207, 0.601505,
		0.573946, 0.791110, 0.211499,
		16.992207, 19.676271, 8.735260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.810249, 18.992958, 9.331891>,  <16.590445, 19.122494, 8.587211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.810249, 18.992958, 9.331891> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.812195, 19.380054, 9.231133>,  <16.813362, 19.612312, 9.170677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.812195, 19.380054, 9.231133>,  <16.810249, 18.992958, 9.331891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.812195, 19.380054, 9.231133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.595999, 0.205077, 0.776356,
		0.802970, 0.146353, 0.577771,
		0.004866, 0.967742, -0.251897,
		16.813654, 19.670378, 9.155563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.962717, 19.431942, 9.975256>,  <16.810249, 18.992958, 9.331891>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.962717, 19.431942, 9.975256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.780643, 19.686779, 9.726445>,  <16.671398, 19.839682, 9.577159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.780643, 19.686779, 9.726445>,  <16.962717, 19.431942, 9.975256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.780643, 19.686779, 9.726445> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339925, 0.521344, 0.782721,
		0.822956, 0.567726, -0.020745,
		-0.455186, 0.637093, -0.622027,
		16.644087, 19.877907, 9.539837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.143709, 20.121519, 10.171062>,  <16.962717, 19.431942, 9.975256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.143709, 20.121519, 10.171062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.810051, 20.168182, 9.955435>,  <16.609856, 20.196180, 9.826059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.810051, 20.168182, 9.955435>,  <17.143709, 20.121519, 10.171062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.810051, 20.168182, 9.955435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433459, 0.465703, 0.771514,
		0.341050, 0.877218, -0.337896,
		-0.834145, 0.116661, -0.539066,
		16.559807, 20.203180, 9.793715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.028484, 20.802597, 10.335418>,  <17.143709, 20.121519, 10.171062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.028484, 20.802597, 10.335418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.677013, 20.652100, 10.217868>,  <16.466131, 20.561800, 10.147338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.677013, 20.652100, 10.217868>,  <17.028484, 20.802597, 10.335418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.677013, 20.652100, 10.217868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450855, 0.451510, 0.769980,
		-0.157013, 0.809060, -0.566364,
		-0.878679, -0.376244, -0.293876,
		16.413410, 20.539227, 10.129705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.554838, 21.401562, 10.301487>,  <17.028484, 20.802597, 10.335418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.554838, 21.401562, 10.301487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.293171, 21.099453, 10.317610>,  <16.136171, 20.918188, 10.327284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.293171, 21.099453, 10.317610>,  <16.554838, 21.401562, 10.301487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.293171, 21.099453, 10.317610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493177, 0.466349, 0.734368,
		-0.573446, 0.460522, -0.677554,
		-0.654169, -0.755274, 0.040307,
		16.096920, 20.872871, 10.329702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.923965, 21.759249, 10.467172>,  <16.554838, 21.401562, 10.301487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.923965, 21.759249, 10.467172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.835130, 21.376766, 10.543432>,  <15.781829, 21.147276, 10.589189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.835130, 21.376766, 10.543432>,  <15.923965, 21.759249, 10.467172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.835130, 21.376766, 10.543432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510067, 0.280583, 0.813083,
		-0.830969, 0.083330, -0.550043,
		-0.222087, -0.956206, 0.190652,
		15.768504, 21.089905, 10.600628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.205945, 21.688957, 10.576497>,  <15.923965, 21.759249, 10.467172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.205945, 21.688957, 10.576497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.382926, 21.386276, 10.769011>,  <15.489115, 21.204668, 10.884521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.382926, 21.386276, 10.769011>,  <15.205945, 21.688957, 10.576497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.382926, 21.386276, 10.769011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274380, 0.396715, 0.875975,
		-0.853786, -0.519633, -0.032096,
		0.442453, -0.756702, 0.481287,
		15.515662, 21.159266, 10.913398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.695913, 21.455084, 11.050979>,  <15.205945, 21.688957, 10.576497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.695913, 21.455084, 11.050979> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.042523, 21.322887, 11.200596>,  <15.250489, 21.243568, 11.290366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.042523, 21.322887, 11.200596>,  <14.695913, 21.455084, 11.050979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.042523, 21.322887, 11.200596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305300, 0.241912, 0.921016,
		-0.394874, -0.912279, 0.108724,
		0.866526, -0.330492, 0.374044,
		15.302481, 21.223740, 11.312809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.455960, 20.964630, 11.623430>,  <14.695913, 21.455084, 11.050979>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.455960, 20.964630, 11.623430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.829627, 21.096882, 11.677119>,  <15.053827, 21.176233, 11.709332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.829627, 21.096882, 11.677119>,  <14.455960, 20.964630, 11.623430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.829627, 21.096882, 11.677119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220795, 0.240076, 0.945311,
		0.280322, -0.912715, 0.297272,
		0.934168, 0.330627, 0.134224,
		15.109878, 21.196072, 11.717386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.664289, 20.580534, 12.184164>,  <14.455960, 20.964630, 11.623430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.664289, 20.580534, 12.184164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.913682, 20.892677, 12.203394>,  <15.063318, 21.079964, 12.214931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.913682, 20.892677, 12.203394>,  <14.664289, 20.580534, 12.184164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.913682, 20.892677, 12.203394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128863, 0.041920, 0.990776,
		0.771143, -0.623928, 0.126696,
		0.623484, 0.780357, 0.048075,
		15.100727, 21.126783, 12.217816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.101600, 20.526749, 12.762712>,  <14.664289, 20.580534, 12.184164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.101600, 20.526749, 12.762712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.135880, 20.918301, 12.688470>,  <15.156448, 21.153233, 12.643925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.135880, 20.918301, 12.688470>,  <15.101600, 20.526749, 12.762712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.135880, 20.918301, 12.688470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211092, 0.199900, 0.956808,
		0.973702, -0.042820, 0.223765,
		0.085701, 0.978880, -0.185604,
		15.161591, 21.211966, 12.632789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.651044, 20.680197, 13.319538>,  <15.101600, 20.526749, 12.762712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.651044, 20.680197, 13.319538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.459016, 21.010082, 13.199951>,  <15.343799, 21.208014, 13.128200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.459016, 21.010082, 13.199951>,  <15.651044, 20.680197, 13.319538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.459016, 21.010082, 13.199951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019201, 0.330847, 0.943489,
		0.877019, 0.458683, -0.142995,
		-0.480071, 0.824712, -0.298966,
		15.314995, 21.257496, 13.110261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.132603, 21.144329, 13.538676>,  <15.651044, 20.680197, 13.319538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.132603, 21.144329, 13.538676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.772433, 21.315643, 13.508179>,  <15.556333, 21.418432, 13.489881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.772433, 21.315643, 13.508179>,  <16.132603, 21.144329, 13.538676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.772433, 21.315643, 13.508179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030755, 0.237500, 0.970901,
		0.433930, 0.871875, -0.227022,
		-0.900421, 0.428285, -0.076244,
		15.502307, 21.444128, 13.485306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.170681, 21.689318, 14.001982>,  <16.132603, 21.144329, 13.538676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.170681, 21.689318, 14.001982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.774709, 21.660065, 13.953499>,  <15.537126, 21.642513, 13.924409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.774709, 21.660065, 13.953499>,  <16.170681, 21.689318, 14.001982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.774709, 21.660065, 13.953499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136438, 0.264681, 0.954635,
		-0.037734, 0.961559, -0.271994,
		-0.989930, -0.073133, -0.121206,
		15.477730, 21.638124, 13.917137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.840766, 22.312010, 14.225529>,  <16.170681, 21.689318, 14.001982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.840766, 22.312010, 14.225529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.569930, 22.018066, 14.241201>,  <15.407429, 21.841702, 14.250606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.569930, 22.018066, 14.241201>,  <15.840766, 22.312010, 14.225529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.569930, 22.018066, 14.241201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183382, 0.220052, 0.958096,
		-0.712686, 0.641531, -0.283755,
		-0.677089, -0.734857, 0.039182,
		15.366803, 21.797609, 14.252956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.349016, 22.586609, 14.677702>,  <15.840766, 22.312010, 14.225529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.349016, 22.586609, 14.677702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.293200, 22.190536, 14.681015>,  <15.259711, 21.952892, 14.683002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.293200, 22.190536, 14.681015>,  <15.349016, 22.586609, 14.677702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.293200, 22.190536, 14.681015> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302500, 0.050591, 0.951806,
		-0.942880, 0.130308, -0.306590,
		-0.139539, -0.990182, 0.008283,
		15.251339, 21.893482, 14.683500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.780124, 22.564764, 15.063419>,  <15.349016, 22.586609, 14.677702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.780124, 22.564764, 15.063419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.920247, 22.190201, 15.055149>,  <15.004321, 21.965464, 15.050187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.920247, 22.190201, 15.055149>,  <14.780124, 22.564764, 15.063419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.920247, 22.190201, 15.055149> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221285, -0.104191, 0.969627,
		-0.910119, -0.335094, -0.243711,
		0.350309, -0.936406, -0.020675,
		15.025340, 21.909279, 15.048946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.292661, 22.105501, 15.401403>,  <14.780124, 22.564764, 15.063419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.292661, 22.105501, 15.401403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.644149, 21.915730, 15.422441>,  <14.855042, 21.801867, 15.435064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.644149, 21.915730, 15.422441>,  <14.292661, 22.105501, 15.401403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.644149, 21.915730, 15.422441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164032, -0.196651, 0.966655,
		-0.448269, -0.858046, -0.250623,
		0.878720, -0.474431, 0.052594,
		14.907764, 21.773399, 15.438220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.237972, 21.458559, 15.793413>,  <14.292661, 22.105501, 15.401403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.237972, 21.458559, 15.793413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.627938, 21.547447, 15.798485>,  <14.861917, 21.600780, 15.801528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.627938, 21.547447, 15.798485>,  <14.237972, 21.458559, 15.793413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.627938, 21.547447, 15.798485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016120, -0.127309, 0.991732,
		0.221997, -0.966649, -0.127697,
		0.974914, 0.222220, 0.012680,
		14.920413, 21.614113, 15.802289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.500777, 20.916206, 16.260078>,  <14.237972, 21.458559, 15.793413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.500777, 20.916206, 16.260078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.787719, 21.194885, 16.261736>,  <14.959884, 21.362093, 16.262732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.787719, 21.194885, 16.261736>,  <14.500777, 20.916206, 16.260078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.787719, 21.194885, 16.261736> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199212, -0.210812, 0.957012,
		0.667622, -0.685690, -0.290018,
		0.717353, 0.696698, 0.004145,
		15.002925, 21.403894, 16.262980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.894441, 20.579887, 16.624748>,  <14.500777, 20.916206, 16.260078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.894441, 20.579887, 16.624748> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.003875, 20.963234, 16.657455>,  <15.069535, 21.193241, 16.677080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.003875, 20.963234, 16.657455>,  <14.894441, 20.579887, 16.624748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.003875, 20.963234, 16.657455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341155, -0.176169, 0.923352,
		0.899313, -0.224721, -0.375148,
		0.273586, 0.958366, 0.081766,
		15.085951, 21.250744, 16.681986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.593813, 20.601208, 17.024998>,  <14.894441, 20.579887, 16.624748>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.593813, 20.601208, 17.024998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.483298, 20.985271, 17.041765>,  <15.416989, 21.215710, 17.051825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.483298, 20.985271, 17.041765>,  <15.593813, 20.601208, 17.024998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.483298, 20.985271, 17.041765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273816, 0.036834, 0.961076,
		0.921244, 0.277010, -0.273084,
		-0.276287, 0.960161, 0.041917,
		15.400413, 21.273319, 17.054340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.081070, 20.916828, 17.335520>,  <15.593813, 20.601208, 17.024998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.081070, 20.916828, 17.335520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.766656, 21.155102, 17.401625>,  <15.578008, 21.298067, 17.441288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.766656, 21.155102, 17.401625>,  <16.081070, 20.916828, 17.335520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.766656, 21.155102, 17.401625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122282, -0.112224, 0.986130,
		0.605969, 0.795340, 0.015370,
		-0.786033, 0.595685, 0.165261,
		15.530846, 21.333807, 17.451202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.304527, 21.412806, 17.919130>,  <16.081070, 20.916828, 17.335520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.304527, 21.412806, 17.919130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.904939, 21.429317, 17.911654>,  <15.665185, 21.439224, 17.907167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.904939, 21.429317, 17.911654>,  <16.304527, 21.412806, 17.919130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.904939, 21.429317, 17.911654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023993, -0.131906, 0.990972,
		0.038443, 0.990402, 0.132761,
		-0.998973, 0.041281, -0.018691,
		15.605247, 21.441702, 17.906046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.107971, 21.932070, 18.361172>,  <16.304527, 21.412806, 17.919130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.107971, 21.932070, 18.361172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.778203, 21.707649, 18.331356>,  <15.580342, 21.572996, 18.313467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.778203, 21.707649, 18.331356>,  <16.107971, 21.932070, 18.361172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.778203, 21.707649, 18.331356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029460, -0.088981, 0.995597,
		-0.565214, 0.822985, 0.056829,
		-0.824418, -0.561051, -0.074538,
		15.530877, 21.539333, 18.308994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.621913, 22.247538, 18.804508>,  <16.107971, 21.932070, 18.361172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.621913, 22.247538, 18.804508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.472772, 21.880833, 18.747196>,  <15.383287, 21.660810, 18.712809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.472772, 21.880833, 18.747196>,  <15.621913, 22.247538, 18.804508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.472772, 21.880833, 18.747196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076486, -0.123526, 0.989389,
		-0.924733, 0.379855, -0.024062,
		-0.372853, -0.916761, -0.143282,
		15.360916, 21.605804, 18.704212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.991590, 22.194969, 19.178165>,  <15.621913, 22.247538, 18.804508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.991590, 22.194969, 19.178165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.065572, 21.804562, 19.132240>,  <15.109962, 21.570318, 19.104685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.065572, 21.804562, 19.132240>,  <14.991590, 22.194969, 19.178165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.065572, 21.804562, 19.132240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018127, -0.113423, 0.993381,
		-0.982580, -0.185813, -0.003286,
		0.184956, -0.976017, -0.114815,
		15.121058, 21.511757, 19.097795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.603215, 21.879606, 19.656603>,  <14.991590, 22.194969, 19.178165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.603215, 21.879606, 19.656603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.890788, 21.612720, 19.578669>,  <15.063332, 21.452589, 19.531908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.890788, 21.612720, 19.578669>,  <14.603215, 21.879606, 19.656603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.890788, 21.612720, 19.578669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094118, -0.184282, 0.978357,
		-0.688679, -0.721709, -0.069689,
		0.718932, -0.667215, -0.194837,
		15.106467, 21.412556, 19.520218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.451345, 21.364672, 20.082155>,  <14.603215, 21.879606, 19.656603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.451345, 21.364672, 20.082155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.840245, 21.319477, 20.000216>,  <15.073586, 21.292360, 19.951052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.840245, 21.319477, 20.000216>,  <14.451345, 21.364672, 20.082155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.840245, 21.319477, 20.000216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201388, -0.041380, 0.978637,
		-0.119050, -0.992734, -0.017478,
		0.972250, -0.112987, -0.204851,
		15.131920, 21.285582, 19.938761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.649411, 20.934170, 20.671331>,  <14.451345, 21.364672, 20.082155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.649411, 20.934170, 20.671331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.996264, 21.063553, 20.519829>,  <15.204376, 21.141182, 20.428926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.996264, 21.063553, 20.519829>,  <14.649411, 20.934170, 20.671331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.996264, 21.063553, 20.519829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354079, 0.134494, 0.925494,
		0.350297, -0.936636, 0.002095,
		0.867133, 0.323456, -0.378756,
		15.256405, 21.160589, 20.406202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.192009, 20.689688, 21.096579>,  <14.649411, 20.934170, 20.671331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.192009, 20.689688, 21.096579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.370820, 20.993843, 20.908123>,  <15.478106, 21.176336, 20.795050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.370820, 20.993843, 20.908123>,  <15.192009, 20.689688, 21.096579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.370820, 20.993843, 20.908123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479965, 0.240566, 0.843660,
		0.754851, -0.603270, -0.257421,
		0.447028, 0.760391, -0.471140,
		15.504929, 21.221960, 20.766781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.918328, 20.686941, 21.298666>,  <15.192009, 20.689688, 21.096579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.918328, 20.686941, 21.298666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.772511, 21.041489, 21.184500>,  <15.685021, 21.254217, 21.115999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.772511, 21.041489, 21.184500>,  <15.918328, 20.686941, 21.298666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.772511, 21.041489, 21.184500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277207, 0.395908, 0.875450,
		0.888969, 0.240019, -0.390032,
		-0.364541, 0.886368, -0.285415,
		15.663149, 21.307400, 21.098875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.433241, 20.051563, 21.404678>,  <15.918328, 20.686941, 21.298666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.433241, 20.051563, 21.404678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.465870, 19.667461, 21.511457>,  <16.485447, 19.437000, 21.575525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.465870, 19.667461, 21.511457>,  <16.433241, 20.051563, 21.404678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.465870, 19.667461, 21.511457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343695, -0.278512, -0.896830,
		0.935532, -0.018589, -0.352753,
		0.081575, -0.960253, 0.266946,
		16.490343, 19.379385, 21.591541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.925810, 19.689411, 20.908609>,  <16.433241, 20.051563, 21.404678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.925810, 19.689411, 20.908609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.709629, 19.397057, 21.075327>,  <16.579920, 19.221643, 21.175358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.709629, 19.397057, 21.075327>,  <16.925810, 19.689411, 20.908609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.709629, 19.397057, 21.075327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166167, -0.392896, -0.904445,
		0.824803, -0.558066, 0.090892,
		-0.540451, -0.730886, 0.416795,
		16.547493, 19.177792, 21.200365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.183657, 19.098949, 20.586950>,  <16.925810, 19.689411, 20.908609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.183657, 19.098949, 20.586950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.827621, 18.989105, 20.732460>,  <16.614000, 18.923199, 20.819765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.827621, 18.989105, 20.732460>,  <17.183657, 19.098949, 20.586950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.827621, 18.989105, 20.732460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143771, -0.588212, -0.795824,
		0.432519, -0.760654, 0.484080,
		-0.890088, -0.274612, 0.363773,
		16.560595, 18.906721, 20.841593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.129250, 18.366724, 20.387274>,  <17.183657, 19.098949, 20.586950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.129250, 18.366724, 20.387274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.758747, 18.491924, 20.471258>,  <16.536446, 18.567043, 20.521648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.758747, 18.491924, 20.471258>,  <17.129250, 18.366724, 20.387274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.758747, 18.491924, 20.471258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331169, -0.409920, -0.849878,
		-0.179942, -0.856737, 0.483346,
		-0.926255, 0.312998, 0.209963,
		16.480871, 18.585825, 20.534246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.738550, 17.744049, 20.179298>,  <17.129250, 18.366724, 20.387274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.738550, 17.744049, 20.179298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.497471, 18.063206, 20.183701>,  <16.352823, 18.254700, 20.186342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.497471, 18.063206, 20.183701>,  <16.738550, 17.744049, 20.179298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.497471, 18.063206, 20.183701> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389513, -0.282130, -0.876745,
		-0.696444, -0.532700, 0.480830,
		-0.602698, 0.797893, 0.011006,
		16.316662, 18.302574, 20.187002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.064554, 17.497789, 20.085976>,  <16.738550, 17.744049, 20.179298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.064554, 17.497789, 20.085976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.096424, 17.874676, 19.955820>,  <16.115545, 18.100807, 19.877728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.096424, 17.874676, 19.955820>,  <16.064554, 17.497789, 20.085976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.096424, 17.874676, 19.955820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370433, -0.275063, -0.887198,
		-0.925436, 0.191221, 0.327113,
		0.079673, 0.942218, -0.325388,
		16.120327, 18.157341, 19.858204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.551188, 17.494707, 19.578587>,  <16.064554, 17.497789, 20.085976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.551188, 17.494707, 19.578587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.765889, 17.822105, 19.496645>,  <15.894710, 18.018543, 19.447479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.765889, 17.822105, 19.496645>,  <15.551188, 17.494707, 19.578587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.765889, 17.822105, 19.496645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179554, -0.126425, -0.975590,
		-0.824413, 0.560433, 0.079105,
		0.536752, 0.818493, -0.204855,
		15.926915, 18.067654, 19.435188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.195644, 17.754856, 19.078535>,  <15.551188, 17.494707, 19.578587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.195644, 17.754856, 19.078535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.539237, 17.956673, 19.043695>,  <15.745393, 18.077763, 19.022793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.539237, 17.956673, 19.043695>,  <15.195644, 17.754856, 19.078535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.539237, 17.956673, 19.043695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087913, -0.022245, -0.995880,
		-0.504401, 0.863100, 0.025248,
		0.858983, 0.504542, -0.087098,
		15.796932, 18.108036, 19.017567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.027251, 18.243967, 18.595499>,  <15.195644, 17.754856, 19.078535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.027251, 18.243967, 18.595499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.426274, 18.216858, 18.602257>,  <15.665689, 18.200592, 18.606312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.426274, 18.216858, 18.602257>,  <15.027251, 18.243967, 18.595499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.426274, 18.216858, 18.602257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008866, -0.117043, -0.993087,
		0.069284, 0.990812, -0.116157,
		0.997558, -0.067775, 0.016893,
		15.725542, 18.196526, 18.607325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.201332, 18.699867, 17.965384>,  <15.027251, 18.243967, 18.595499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.201332, 18.699867, 17.965384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.496934, 18.448620, 18.062822>,  <15.674294, 18.297871, 18.121286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.496934, 18.448620, 18.062822>,  <15.201332, 18.699867, 17.965384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.496934, 18.448620, 18.062822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189430, -0.153260, -0.969860,
		0.646521, 0.762874, 0.005724,
		0.739004, -0.628119, 0.243597,
		15.718636, 18.260183, 18.135902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.741586, 18.985798, 17.638062>,  <15.201332, 18.699867, 17.965384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.741586, 18.985798, 17.638062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.830426, 18.600376, 17.697701>,  <15.883731, 18.369123, 17.733484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.830426, 18.600376, 17.697701>,  <15.741586, 18.985798, 17.638062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.830426, 18.600376, 17.697701> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020708, -0.148222, -0.988737,
		0.974804, 0.222688, -0.012967,
		0.222102, -0.963556, 0.149099,
		15.897057, 18.311310, 17.742430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.348701, 18.768854, 17.134865>,  <15.741586, 18.985798, 17.638062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.348701, 18.768854, 17.134865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.159763, 18.442005, 17.267048>,  <16.046400, 18.245895, 17.346357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.159763, 18.442005, 17.267048>,  <16.348701, 18.768854, 17.134865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.159763, 18.442005, 17.267048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080402, -0.333409, -0.939348,
		0.877740, -0.470264, 0.091785,
		-0.472343, -0.817124, 0.330456,
		16.018061, 18.196869, 17.366184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.621119, 18.028198, 16.887861>,  <16.348701, 18.768854, 17.134865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.621119, 18.028198, 16.887861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.228699, 18.020344, 16.964960>,  <15.993246, 18.015631, 17.011219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.228699, 18.020344, 16.964960>,  <16.621119, 18.028198, 16.887861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.228699, 18.020344, 16.964960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189176, -0.117699, -0.974864,
		0.041829, -0.992855, 0.111754,
		-0.981052, -0.019637, 0.192748,
		15.934383, 18.014454, 17.022785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.320925, 17.391716, 16.577318>,  <16.621119, 18.028198, 16.887861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.320925, 17.391716, 16.577318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.051388, 17.687038, 16.588911>,  <15.889666, 17.864231, 16.595867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.051388, 17.687038, 16.588911>,  <16.320925, 17.391716, 16.577318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.051388, 17.687038, 16.588911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046883, -0.003581, -0.998894,
		-0.737386, -0.674455, 0.037027,
		-0.673842, 0.738306, 0.028980,
		15.849236, 17.908531, 16.597605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.883395, 17.197157, 16.080233>,  <16.320925, 17.391716, 16.577318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.883395, 17.197157, 16.080233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.820601, 17.587109, 16.143435>,  <15.782925, 17.821079, 16.181356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.820601, 17.587109, 16.143435>,  <15.883395, 17.197157, 16.080233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.820601, 17.587109, 16.143435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212898, 0.122821, -0.969324,
		-0.964381, -0.185809, 0.188269,
		-0.156985, 0.974880, 0.158005,
		15.773506, 17.879572, 16.190836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.189589, 17.320114, 15.799975>,  <15.883395, 17.197157, 16.080233>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.189589, 17.320114, 15.799975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.362908, 17.679977, 15.821383>,  <15.466901, 17.895895, 15.834227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.362908, 17.679977, 15.821383>,  <15.189589, 17.320114, 15.799975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.362908, 17.679977, 15.821383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309881, 0.204482, -0.928526,
		-0.846300, 0.385747, 0.367389,
		0.433301, 0.899659, 0.053518,
		15.492899, 17.949875, 15.837438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.705611, 17.710815, 15.615934>,  <15.189589, 17.320114, 15.799975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.705611, 17.710815, 15.615934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.036860, 17.926365, 15.554192>,  <15.235610, 18.055695, 15.517146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.036860, 17.926365, 15.554192>,  <14.705611, 17.710815, 15.615934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.036860, 17.926365, 15.554192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345221, 0.273344, -0.897834,
		-0.441627, 0.796805, 0.412393,
		0.828123, 0.538874, -0.154358,
		15.285297, 18.088028, 15.507884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.518181, 18.233418, 15.062337>,  <14.705611, 17.710815, 15.615934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.518181, 18.233418, 15.062337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.917830, 18.217346, 15.067036>,  <15.157620, 18.207705, 15.069855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.917830, 18.217346, 15.067036>,  <14.518181, 18.233418, 15.062337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.917830, 18.217346, 15.067036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014959, 0.080604, -0.996634,
		0.039094, 0.995936, 0.081134,
		0.999124, -0.040176, 0.011747,
		15.217567, 18.205294, 15.070560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.786486, 18.810387, 14.746784>,  <14.518181, 18.233418, 15.062337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.786486, 18.810387, 14.746784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.099971, 18.566387, 14.699976>,  <15.288062, 18.419987, 14.671891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.099971, 18.566387, 14.699976>,  <14.786486, 18.810387, 14.746784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.099971, 18.566387, 14.699976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030529, 0.226003, -0.973648,
		0.620373, 0.759488, 0.195744,
		0.783713, -0.610001, -0.117020,
		15.335085, 18.383387, 14.664870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.098502, 19.220884, 14.262523>,  <14.786486, 18.810387, 14.746784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.098502, 19.220884, 14.262523> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.282844, 18.866337, 14.244783>,  <15.393449, 18.653608, 14.234140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.282844, 18.866337, 14.244783>,  <15.098502, 19.220884, 14.262523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.282844, 18.866337, 14.244783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257100, 0.181169, -0.949251,
		0.849419, 0.426065, 0.311377,
		0.460855, -0.886367, -0.044347,
		15.421100, 18.600428, 14.231480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.735594, 19.399500, 13.828487>,  <15.098502, 19.220884, 14.262523>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.735594, 19.399500, 13.828487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.664649, 19.006195, 13.811806>,  <15.622082, 18.770212, 13.801797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.664649, 19.006195, 13.811806>,  <15.735594, 19.399500, 13.828487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.664649, 19.006195, 13.811806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158258, 0.013328, -0.987308,
		0.971337, -0.181712, 0.153246,
		-0.177363, -0.983261, -0.041704,
		15.611440, 18.711216, 13.799294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.348633, 19.081017, 13.385445>,  <15.735594, 19.399500, 13.828487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.348633, 19.081017, 13.385445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.045952, 18.819969, 13.369995>,  <15.864344, 18.663342, 13.360725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.045952, 18.819969, 13.369995>,  <16.348633, 19.081017, 13.385445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.045952, 18.819969, 13.369995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132604, -0.095362, -0.986571,
		0.640172, -0.751661, 0.158701,
		-0.756701, -0.652619, -0.038625,
		15.818941, 18.624184, 13.358408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.513691, 18.428867, 13.043344>,  <16.348633, 19.081017, 13.385445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.513691, 18.428867, 13.043344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.123215, 18.478642, 12.972275>,  <15.888929, 18.508507, 12.929633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.123215, 18.478642, 12.972275>,  <16.513691, 18.428867, 13.043344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.123215, 18.478642, 12.972275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147334, -0.220798, -0.964127,
		-0.159199, -0.967350, 0.197208,
		-0.976191, 0.124432, -0.177674,
		15.830358, 18.515972, 12.918972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.536839, 18.120100, 12.488530>,  <16.513691, 18.428867, 13.043344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.536839, 18.120100, 12.488530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.150612, 18.223450, 12.500660>,  <15.918876, 18.285460, 12.507937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.150612, 18.223450, 12.500660>,  <16.536839, 18.120100, 12.488530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.150612, 18.223450, 12.500660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084186, -0.200040, -0.976164,
		-0.246155, -0.945105, 0.214904,
		-0.965567, 0.258379, 0.030323,
		15.860941, 18.300962, 12.509757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.097023, 17.531357, 12.315159>,  <16.536839, 18.120100, 12.488530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.097023, 17.531357, 12.315159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.896644, 17.866684, 12.229116>,  <15.776416, 18.067881, 12.177491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.896644, 17.866684, 12.229116>,  <16.097023, 17.531357, 12.315159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.896644, 17.866684, 12.229116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072160, -0.288131, -0.954868,
		-0.862463, -0.462819, 0.204832,
		-0.500950, 0.838319, -0.215105,
		15.746359, 18.118179, 12.164585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.639609, 17.317751, 11.746654>,  <16.097023, 17.531357, 12.315159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.639609, 17.317751, 11.746654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.601623, 17.714954, 11.718601>,  <15.578831, 17.953276, 11.701770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.601623, 17.714954, 11.718601>,  <15.639609, 17.317751, 11.746654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.601623, 17.714954, 11.718601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323470, -0.097408, -0.941211,
		-0.941461, -0.066699, 0.330459,
		-0.094967, 0.993007, -0.070131,
		15.573133, 18.012856, 11.697562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.052756, 17.485155, 11.453401>,  <15.639609, 17.317751, 11.746654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.052756, 17.485155, 11.453401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.249021, 17.823460, 11.369551>,  <15.366779, 18.026442, 11.319241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.249021, 17.823460, 11.369551>,  <15.052756, 17.485155, 11.453401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.249021, 17.823460, 11.369551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300062, -0.061856, -0.951912,
		-0.818056, 0.529966, 0.223430,
		0.490660, 0.845760, -0.209624,
		15.396218, 18.077188, 11.306664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.754144, 17.742443, 10.913396>,  <15.052756, 17.485155, 11.453401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.754144, 17.742443, 10.913396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.090211, 17.957249, 10.883107>,  <15.291851, 18.086132, 10.864934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.090211, 17.957249, 10.883107>,  <14.754144, 17.742443, 10.913396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.090211, 17.957249, 10.883107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039178, -0.199361, -0.979143,
		-0.540908, 0.819679, -0.188536,
		0.840169, 0.537012, -0.075722,
		15.342261, 18.118353, 10.860391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.643862, 18.109528, 10.328800>,  <14.754144, 17.742443, 10.913396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.643862, 18.109528, 10.328800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.038402, 18.106453, 10.394594>,  <15.275126, 18.104609, 10.434071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.038402, 18.106453, 10.394594>,  <14.643862, 18.109528, 10.328800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.038402, 18.106453, 10.394594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158354, -0.229615, -0.960313,
		0.045149, 0.973251, -0.225264,
		0.986350, -0.007685, 0.164485,
		15.334307, 18.104147, 10.443940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.968353, 18.477179, 9.778954>,  <14.643862, 18.109528, 10.328800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.968353, 18.477179, 9.778954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.258510, 18.236809, 9.913236>,  <15.432603, 18.092587, 9.993805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.258510, 18.236809, 9.913236>,  <14.968353, 18.477179, 9.778954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.258510, 18.236809, 9.913236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310684, -0.149370, -0.938703,
		0.614235, 0.785224, 0.078347,
		0.725390, -0.600926, 0.335705,
		15.476127, 18.056532, 10.013947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.553094, 18.574183, 9.305933>,  <14.968353, 18.477179, 9.778954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.553094, 18.574183, 9.305933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.651116, 18.232010, 9.488441>,  <15.709929, 18.026707, 9.597945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.651116, 18.232010, 9.488441>,  <15.553094, 18.574183, 9.305933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.651116, 18.232010, 9.488441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324204, -0.371220, -0.870108,
		0.913695, 0.361149, 0.186365,
		0.245056, -0.855434, 0.456268,
		15.724633, 17.975380, 9.625321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.019110, 18.252985, 8.839686>,  <15.553094, 18.574183, 9.305933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.019110, 18.252985, 8.839686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.944558, 17.925797, 9.057378>,  <15.899827, 17.729483, 9.187992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.944558, 17.925797, 9.057378>,  <16.019110, 18.252985, 8.839686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.944558, 17.925797, 9.057378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496426, -0.556426, -0.666297,
		0.847835, 0.145985, 0.509769,
		-0.186380, -0.817972, 0.544228,
		15.888644, 17.680405, 9.220646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.647322, 17.751574, 8.879945>,  <16.019110, 18.252985, 8.839686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.647322, 17.751574, 8.879945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.307537, 17.552425, 8.949849>,  <16.103666, 17.432938, 8.991792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.307537, 17.552425, 8.949849>,  <16.647322, 17.751574, 8.879945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.307537, 17.552425, 8.949849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254813, -0.677094, -0.690373,
		0.462044, -0.541914, 0.702029,
		-0.849462, -0.497868, 0.174760,
		16.052698, 17.403065, 9.002277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.894268, 17.029421, 8.983932>,  <16.647322, 17.751574, 8.879945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.894268, 17.029421, 8.983932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.502277, 16.996628, 8.911349>,  <16.267084, 16.976952, 8.867800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.502277, 16.996628, 8.911349>,  <16.894268, 17.029421, 8.983932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.502277, 16.996628, 8.911349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184187, -0.719474, -0.669651,
		-0.075653, -0.689664, 0.720167,
		-0.979975, -0.081984, -0.181458,
		16.208284, 16.972033, 8.856912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.658379, 16.312027, 8.889720>,  <16.894268, 17.029421, 8.983932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.658379, 16.312027, 8.889720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.376225, 16.513618, 8.690346>,  <16.206932, 16.634573, 8.570722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.376225, 16.513618, 8.690346>,  <16.658379, 16.312027, 8.889720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.376225, 16.513618, 8.690346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085476, -0.637573, -0.765633,
		-0.703653, -0.582670, 0.406656,
		-0.705384, 0.503980, -0.498435,
		16.164610, 16.664812, 8.540815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.115231, 15.846470, 8.672327>,  <16.658379, 16.312027, 8.889720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.115231, 15.846470, 8.672327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.983342, 16.135494, 8.429284>,  <15.904209, 16.308908, 8.283458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.983342, 16.135494, 8.429284>,  <16.115231, 15.846470, 8.672327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.983342, 16.135494, 8.429284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000031, -0.643608, -0.765356,
		-0.944078, -0.252336, 0.212234,
		-0.329722, 0.722562, -0.607608,
		15.884425, 16.352262, 8.247002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.548983, 15.567105, 8.209514>,  <16.115231, 15.846470, 8.672327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.548983, 15.567105, 8.209514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.712893, 15.884125, 8.028870>,  <15.811240, 16.074337, 7.920483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.712893, 15.884125, 8.028870>,  <15.548983, 15.567105, 8.209514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.712893, 15.884125, 8.028870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221720, -0.566776, -0.793476,
		-0.884829, 0.225017, -0.407975,
		0.409776, 0.792548, -0.451610,
		15.835827, 16.121889, 7.893387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.490927, 15.367151, 7.580148>,  <15.548983, 15.567105, 8.209514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.490927, 15.367151, 7.580148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.757930, 15.661781, 7.536529>,  <15.918132, 15.838559, 7.510357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.757930, 15.661781, 7.536529>,  <15.490927, 15.367151, 7.580148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.757930, 15.661781, 7.536529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339355, -0.431297, -0.835955,
		-0.662775, 0.521000, -0.537855,
		0.667508, 0.736574, -0.109049,
		15.958182, 15.882753, 7.503814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.356041, 15.595929, 6.932173>,  <15.490927, 15.367151, 7.580148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.356041, 15.595929, 6.932173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.729348, 15.704464, 7.026311>,  <15.953333, 15.769585, 7.082794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.729348, 15.704464, 7.026311>,  <15.356041, 15.595929, 6.932173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.729348, 15.704464, 7.026311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317855, -0.318762, -0.892950,
		-0.167272, 0.908167, -0.383736,
		0.933268, 0.271338, 0.235345,
		16.009329, 15.785865, 7.096914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.669763, 16.012667, 6.402225>,  <15.356041, 15.595929, 6.932173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.669763, 16.012667, 6.402225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.973823, 15.852985, 6.607285>,  <16.156258, 15.757176, 6.730320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.973823, 15.852985, 6.607285>,  <15.669763, 16.012667, 6.402225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.973823, 15.852985, 6.607285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404657, -0.326439, -0.854219,
		0.508355, 0.856782, -0.086603,
		0.760150, -0.399202, 0.512650,
		16.201868, 15.733225, 6.761079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.377783, 16.303766, 6.334093>,  <15.669763, 16.012667, 6.402225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.377783, 16.303766, 6.334093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.385235, 15.910709, 6.407924>,  <16.389706, 15.674875, 6.452222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.385235, 15.910709, 6.407924>,  <16.377783, 16.303766, 6.334093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.385235, 15.910709, 6.407924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344799, -0.166970, -0.923707,
		0.938492, 0.080849, 0.335703,
		0.018629, -0.982642, 0.184577,
		16.390823, 15.615917, 6.463297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.132227, 16.005184, 6.287979>,  <16.377783, 16.303766, 6.334093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.132227, 16.005184, 6.287979> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.828941, 15.755196, 6.213660>,  <16.646969, 15.605203, 6.169069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.828941, 15.755196, 6.213660>,  <17.132227, 16.005184, 6.287979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.828941, 15.755196, 6.213660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233064, 0.006342, -0.972441,
		0.608926, -0.780622, 0.140850,
		-0.758215, -0.624972, -0.185796,
		16.601477, 15.567704, 6.157921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.382877, 15.587722, 5.880955>,  <17.132227, 16.005184, 6.287979>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.382877, 15.587722, 5.880955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.993343, 15.550117, 5.798197>,  <16.759623, 15.527555, 5.748542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.993343, 15.550117, 5.798197>,  <17.382877, 15.587722, 5.880955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.993343, 15.550117, 5.798197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197917, 0.096562, -0.975451,
		0.111691, -0.990876, -0.075427,
		-0.973835, -0.094021, -0.206897,
		16.701193, 15.521914, 5.736128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.359533, 15.061777, 5.417381>,  <17.382877, 15.587722, 5.880955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.359533, 15.061777, 5.417381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.029606, 15.284054, 5.375656>,  <16.831650, 15.417420, 5.350621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.029606, 15.284054, 5.375656>,  <17.359533, 15.061777, 5.417381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.029606, 15.284054, 5.375656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146276, 0.031519, -0.988742,
		-0.546149, -0.830790, -0.107282,
		-0.824818, 0.555693, -0.104311,
		16.782160, 15.450762, 5.344363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.088678, 14.797612, 4.891726>,  <17.359533, 15.061777, 5.417381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.088678, 14.797612, 4.891726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.889683, 15.144241, 4.907526>,  <16.770287, 15.352219, 4.917006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.889683, 15.144241, 4.907526>,  <17.088678, 14.797612, 4.891726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.889683, 15.144241, 4.907526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074450, 0.002716, -0.997221,
		-0.864271, -0.499045, 0.063165,
		-0.497487, 0.866572, 0.039501,
		16.740437, 15.404213, 4.919376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.628723, 14.681870, 4.379018>,  <17.088678, 14.797612, 4.891726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.628723, 14.681870, 4.379018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.599693, 15.076508, 4.437487>,  <16.582275, 15.313290, 4.472568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.599693, 15.076508, 4.437487>,  <16.628723, 14.681870, 4.379018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.599693, 15.076508, 4.437487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008289, 0.147150, -0.989080,
		-0.997329, -0.070570, -0.018857,
		-0.072574, 0.986594, 0.146172,
		16.577921, 15.372486, 4.481338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.091240, 14.960577, 3.994011>,  <16.628723, 14.681870, 4.379018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.091240, 14.960577, 3.994011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.411530, 15.198368, 4.023500>,  <16.603704, 15.341043, 4.041193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.411530, 15.198368, 4.023500>,  <16.091240, 14.960577, 3.994011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.411530, 15.198368, 4.023500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067070, 0.033325, -0.997192,
		-0.595264, 0.803422, -0.013187,
		0.800726, 0.594476, 0.073723,
		16.651747, 15.376711, 4.045617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.063490, 15.171773, 3.317454>,  <16.091240, 14.960577, 3.994011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.063490, 15.171773, 3.317454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.404621, 15.329830, 3.454010>,  <16.609299, 15.424664, 3.535944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.404621, 15.329830, 3.454010>,  <16.063490, 15.171773, 3.317454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.404621, 15.329830, 3.454010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282390, 0.200943, -0.938018,
		-0.439252, 0.896373, 0.059785,
		0.852827, 0.395143, 0.341392,
		16.660469, 15.448373, 3.556428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.098536, 15.843574, 3.060431>,  <16.063490, 15.171773, 3.317454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.098536, 15.843574, 3.060431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.453915, 15.684589, 3.152246>,  <16.667141, 15.589199, 3.207335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.453915, 15.684589, 3.152246>,  <16.098536, 15.843574, 3.060431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.453915, 15.684589, 3.152246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300635, 0.126048, -0.945373,
		0.346816, 0.908921, 0.231478,
		0.888447, -0.397461, 0.229538,
		16.720449, 15.565351, 3.221108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.554537, 16.370106, 2.891096>,  <16.098536, 15.843574, 3.060431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.554537, 16.370106, 2.891096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.714729, 16.003883, 2.876261>,  <16.810844, 15.784150, 2.867360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.714729, 16.003883, 2.876261>,  <16.554537, 16.370106, 2.891096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.714729, 16.003883, 2.876261> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274834, 0.158633, -0.948315,
		0.874117, 0.369590, 0.315155,
		0.400482, -0.915554, -0.037088,
		16.834873, 15.729218, 2.865135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.285055, 16.438377, 2.597339>,  <16.554537, 16.370106, 2.891096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.285055, 16.438377, 2.597339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.129299, 16.073376, 2.547194>,  <17.035847, 15.854375, 2.517106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.129299, 16.073376, 2.547194>,  <17.285055, 16.438377, 2.597339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.129299, 16.073376, 2.547194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291935, 0.006820, -0.956414,
		0.873585, -0.409015, 0.263736,
		-0.389389, -0.912502, -0.125364,
		17.012482, 15.799625, 2.509584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.782080, 15.998902, 2.374422>,  <17.285055, 16.438377, 2.597339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.782080, 15.998902, 2.374422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.421997, 15.878304, 2.248739>,  <17.205948, 15.805944, 2.173330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.421997, 15.878304, 2.248739>,  <17.782080, 15.998902, 2.374422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.421997, 15.878304, 2.248739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307838, 0.069741, -0.948879,
		0.307998, -0.950913, 0.030031,
		-0.900207, -0.301498, -0.314207,
		17.151936, 15.787854, 2.154477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.807241, 15.248504, 2.092089>,  <17.782080, 15.998902, 2.374422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.807241, 15.248504, 2.092089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.565834, 15.524395, 1.932067>,  <17.420990, 15.689930, 1.836055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.565834, 15.524395, 1.932067>,  <17.807241, 15.248504, 2.092089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.565834, 15.524395, 1.932067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548869, -0.004569, -0.835896,
		-0.578369, -0.724054, -0.375813,
		-0.603516, 0.689729, -0.400053,
		17.384779, 15.731314, 1.812051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.620104, 14.913580, 1.561620>,  <17.807241, 15.248504, 2.092089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.620104, 14.913580, 1.561620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.647076, 15.311947, 1.585628>,  <17.663260, 15.550967, 1.600032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.647076, 15.311947, 1.585628>,  <17.620104, 14.913580, 1.561620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.647076, 15.311947, 1.585628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360497, 0.031772, -0.932219,
		-0.930320, 0.084497, -0.356883,
		0.067430, 0.995917, 0.060019,
		17.667305, 15.610722, 1.603633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.182224, 15.216339, 1.011633>,  <17.620104, 14.913580, 1.561620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.182224, 15.216339, 1.011633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.526115, 15.372272, 1.143632>,  <17.732450, 15.465833, 1.222831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.526115, 15.372272, 1.143632>,  <17.182224, 15.216339, 1.011633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.526115, 15.372272, 1.143632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431602, -0.209019, -0.877514,
		-0.273108, 0.896851, -0.347952,
		0.859728, 0.389833, 0.329998,
		17.784033, 15.489223, 1.242631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.344553, 15.786629, 0.565673>,  <17.182224, 15.216339, 1.011633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.344553, 15.786629, 0.565673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.672604, 15.634949, 0.737067>,  <17.869434, 15.543941, 0.839903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.672604, 15.634949, 0.737067>,  <17.344553, 15.786629, 0.565673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.672604, 15.634949, 0.737067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390758, -0.175851, -0.903540,
		0.417972, 0.908451, 0.003955,
		0.820127, -0.379200, 0.428485,
		17.918642, 15.521189, 0.865612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.048599, 16.153633, 0.305330>,  <17.344553, 15.786629, 0.565673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.048599, 16.153633, 0.305330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.061954, 15.773178, 0.428112>,  <18.069967, 15.544905, 0.501781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.061954, 15.773178, 0.428112>,  <18.048599, 16.153633, 0.305330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.061954, 15.773178, 0.428112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553706, -0.238082, -0.797951,
		0.832043, 0.196604, 0.518702,
		0.033387, -0.951138, 0.306955,
		18.071970, 15.487837, 0.520198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.769835, 15.894938, 0.132858>,  <18.048599, 16.153633, 0.305330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.769835, 15.894938, 0.132858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.492535, 15.606701, 0.127895>,  <18.326155, 15.433759, 0.124917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.492535, 15.606701, 0.127895>,  <18.769835, 15.894938, 0.132858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.492535, 15.606701, 0.127895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402963, -0.373285, -0.835631,
		0.597518, -0.584299, 0.549151,
		-0.693249, -0.720592, -0.012407,
		18.284559, 15.390523, 0.124173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.503479, 15.783478, 0.375917>,  <18.769835, 15.894938, 0.132858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.503479, 15.783478, 0.375917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.449604, 15.516708, 0.669058>,  <19.417278, 15.356647, 0.844943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.449604, 15.516708, 0.669058>,  <19.503479, 15.783478, 0.375917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.449604, 15.516708, 0.669058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.803140, 0.506657, 0.313473,
		-0.580368, -0.546362, -0.603873,
		-0.134687, -0.666924, 0.732852,
		19.409199, 15.316631, 0.888914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.404757, 15.817259, -0.410022>,  <19.503479, 15.783478, 0.375917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.404757, 15.817259, -0.410022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.735546, 16.042141, -0.412431>,  <19.934021, 16.177071, -0.413877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.735546, 16.042141, -0.412431>,  <19.404757, 15.817259, -0.410022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.735546, 16.042141, -0.412431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423581, -0.630037, -0.650871,
		-0.369718, 0.535703, -0.759165,
		0.826975, 0.562206, -0.006022,
		19.983639, 16.210802, -0.414238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.649717, 15.923030, -1.154690>,  <19.404757, 15.817259, -0.410022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.649717, 15.923030, -1.154690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.935154, 15.926319, -0.874485>,  <20.106417, 15.928292, -0.706361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.935154, 15.926319, -0.874485>,  <19.649717, 15.923030, -1.154690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.935154, 15.926319, -0.874485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526024, -0.666705, -0.528018,
		0.462694, 0.745276, -0.480081,
		0.713591, 0.008223, 0.700514,
		20.149231, 15.928786, -0.664331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.305859, 16.186205, -1.404730>,  <19.649717, 15.923030, -1.154690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.305859, 16.186205, -1.404730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.367847, 15.912418, -1.119777>,  <20.405041, 15.748146, -0.948806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.367847, 15.912418, -1.119777>,  <20.305859, 16.186205, -1.404730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.367847, 15.912418, -1.119777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535718, -0.547643, -0.642723,
		0.830054, 0.481239, 0.281813,
		0.154970, -0.684468, 0.712382,
		20.414339, 15.707078, -0.906063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.047491, 16.109818, -1.265861>,  <20.305859, 16.186205, -1.404730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.047491, 16.109818, -1.265861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.839645, 15.776886, -1.188682>,  <20.714937, 15.577127, -1.142375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.839645, 15.776886, -1.188682>,  <21.047491, 16.109818, -1.265861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.839645, 15.776886, -1.188682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.602616, -0.517111, -0.607825,
		0.605685, -0.199562, 0.770273,
		-0.519615, -0.832329, 0.192947,
		20.683762, 15.527187, -1.130798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.464657, 15.534845, -1.022697>,  <21.047491, 16.109818, -1.265861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.464657, 15.534845, -1.022697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.154930, 15.377274, -1.220788>,  <20.969093, 15.282730, -1.339643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.154930, 15.377274, -1.220788>,  <21.464657, 15.534845, -1.022697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.154930, 15.377274, -1.220788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.632765, -0.474211, -0.612154,
		0.006304, -0.787365, 0.616455,
		-0.774318, -0.393930, -0.495227,
		20.922634, 15.259094, -1.369356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.744169, 14.968174, -1.190610>,  <21.464657, 15.534845, -1.022697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.744169, 14.968174, -1.190610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.443119, 15.043510, -1.442985>,  <21.262489, 15.088712, -1.594410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.443119, 15.043510, -1.442985>,  <21.744169, 14.968174, -1.190610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.443119, 15.043510, -1.442985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.561212, -0.317673, -0.764281,
		-0.344384, -0.929305, 0.133383,
		-0.752622, 0.188350, -0.630939,
		21.217331, 15.100013, -1.632266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.781094, 14.347027, -1.516245>,  <21.744169, 14.968174, -1.190610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.781094, 14.347027, -1.516245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.610439, 14.615242, -1.759016>,  <21.508047, 14.776171, -1.904679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.610439, 14.615242, -1.759016>,  <21.781094, 14.347027, -1.516245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.610439, 14.615242, -1.759016> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.593233, -0.299067, -0.747418,
		-0.682684, -0.678925, -0.270193,
		-0.426635, 0.670538, -0.606928,
		21.482449, 14.816403, -1.941095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.359821, 14.014276, -2.109106>,  <21.781094, 14.347027, -1.516245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.359821, 14.014276, -2.109106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.547562, 14.363461, -2.162240>,  <21.660206, 14.572971, -2.194120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.547562, 14.363461, -2.162240>,  <21.359821, 14.014276, -2.109106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.547562, 14.363461, -2.162240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.619990, -0.432914, -0.654369,
		-0.628745, 0.224774, -0.744417,
		0.469353, 0.872962, -0.132835,
		21.688368, 14.625349, -2.202090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.505148, 14.185276, -2.888075>,  <21.359821, 14.014276, -2.109106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.505148, 14.185276, -2.888075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.769081, 14.358452, -2.642414>,  <21.927441, 14.462358, -2.495017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.769081, 14.358452, -2.642414>,  <21.505148, 14.185276, -2.888075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.769081, 14.358452, -2.642414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.749545, -0.321637, -0.578560,
		-0.052947, 0.842089, -0.536733,
		0.659832, 0.432939, 0.614154,
		21.967031, 14.488334, -2.458167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.087976, 14.502430, -3.306904>,  <21.505148, 14.185276, -2.888075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.087976, 14.502430, -3.306904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.204075, 14.429752, -2.931086>,  <22.273733, 14.386146, -2.705595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.204075, 14.429752, -2.931086>,  <22.087976, 14.502430, -3.306904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.204075, 14.429752, -2.931086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.773902, -0.532935, -0.342135,
		0.562880, 0.826419, -0.014067,
		0.290244, -0.181695, 0.939545,
		22.291147, 14.375244, -2.649222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.771929, 14.225050, -3.421100>,  <22.087976, 14.502430, -3.306904>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.771929, 14.225050, -3.421100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.677139, 14.140018, -3.041910>,  <22.620266, 14.089000, -2.814396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.677139, 14.140018, -3.041910>,  <22.771929, 14.225050, -3.421100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.677139, 14.140018, -3.041910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578396, -0.814864, -0.038143,
		0.780578, 0.539266, 0.316054,
		-0.236972, -0.212578, 0.947974,
		22.606047, 14.076245, -2.757518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.360792, 14.156788, -2.859847>,  <22.771929, 14.225050, -3.421100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.360792, 14.156788, -2.859847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.038288, 13.925076, -2.811878>,  <22.844786, 13.786048, -2.783097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.038288, 13.925076, -2.811878>,  <23.360792, 14.156788, -2.859847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.038288, 13.925076, -2.811878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.585275, -0.810605, 0.019312,
		0.086022, 0.085757, 0.992596,
		-0.806259, -0.579280, 0.119921,
		22.796410, 13.751291, -2.775902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.516354, 13.643324, -2.399535>,  <23.360792, 14.156788, -2.859847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.516354, 13.643324, -2.399535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.206226, 13.502647, -2.609370>,  <23.020149, 13.418242, -2.735271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.206226, 13.502647, -2.609370>,  <23.516354, 13.643324, -2.399535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.206226, 13.502647, -2.609370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522500, -0.823778, -0.219963,
		-0.354785, -0.444639, 0.822450,
		-0.775320, -0.351691, -0.524588,
		22.973631, 13.397141, -2.766746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.774851, 12.994834, -2.411304>,  <23.516354, 13.643324, -2.399535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.774851, 12.994834, -2.411304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.446041, 12.959103, -2.636266>,  <23.248756, 12.937664, -2.771243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.446041, 12.959103, -2.636266>,  <23.774851, 12.994834, -2.411304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.446041, 12.959103, -2.636266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430702, -0.743606, -0.511416,
		-0.372523, -0.662624, 0.649735,
		-0.822023, -0.089328, -0.562404,
		23.199434, 12.932304, -2.804987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.552170, 12.230165, -2.508905>,  <23.774851, 12.994834, -2.411304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.552170, 12.230165, -2.508905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.304642, 12.071182, -2.237882>,  <23.156124, 11.975792, -2.075268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.304642, 12.071182, -2.237882>,  <23.552170, 12.230165, -2.508905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.304642, 12.071182, -2.237882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.757774, -0.529308, 0.381591,
		0.206971, 0.749574, 0.628731,
		-0.618823, -0.397458, 0.677559,
		23.118996, 11.951945, -2.034614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.957239, 12.295733, -1.945260>,  <23.552170, 12.230165, -2.508905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.957239, 12.295733, -1.945260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.680908, 12.012005, -1.889233>,  <23.515110, 11.841768, -1.855617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.680908, 12.012005, -1.889233>,  <23.957239, 12.295733, -1.945260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.680908, 12.012005, -1.889233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.720489, -0.659183, 0.215347,
		-0.060421, 0.249684, 0.966440,
		-0.690830, -0.709321, 0.140066,
		23.473660, 11.799209, -1.847213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<20.364796, 16.442274, 16.007347> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.396770, 16.840786, 15.994453>,  <20.415955, 17.079893, 15.986716>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.396770, 16.840786, 15.994453>,  <20.364796, 16.442274, 16.007347>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.396770, 16.840786, 15.994453> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065473, -0.037518, -0.997149,
		-0.994647, 0.077599, -0.068228,
		0.079937, 0.996278, -0.032236,
		20.420752, 17.139669, 15.984782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.872190, 16.657507, 15.483914>,  <20.364796, 16.442274, 16.007347>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.872190, 16.657507, 15.483914> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.114624, 16.974804, 15.507318>,  <20.260084, 17.165182, 15.521361>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.114624, 16.974804, 15.507318>,  <19.872190, 16.657507, 15.483914>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.114624, 16.974804, 15.507318> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053490, 0.032747, -0.998031,
		-0.793599, 0.608022, -0.022583,
		0.606085, 0.793245, 0.058511,
		20.296450, 17.212778, 15.524872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.602444, 17.255663, 15.071108>,  <19.872190, 16.657507, 15.483914>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.602444, 17.255663, 15.071108> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.994503, 17.321899, 15.114721>,  <20.229738, 17.361641, 15.140889>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.994503, 17.321899, 15.114721>,  <19.602444, 17.255663, 15.071108>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.994503, 17.321899, 15.114721> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095478, 0.087745, -0.991557,
		-0.173760, 0.982283, 0.070192,
		0.980149, 0.165591, 0.109033,
		20.288548, 17.371576, 15.147431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.723299, 17.926693, 14.805201>,  <19.602444, 17.255663, 15.071108>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.723299, 17.926693, 14.805201> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.081566, 17.748981, 14.797216>,  <20.296526, 17.642355, 14.792426>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.081566, 17.748981, 14.797216>,  <19.723299, 17.926693, 14.805201>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.081566, 17.748981, 14.797216> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088571, 0.222180, -0.970974,
		0.435820, 0.867900, 0.238350,
		0.895665, -0.444281, -0.019960,
		20.350266, 17.615698, 14.791228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.199907, 18.320894, 14.246631>,  <19.723299, 17.926693, 14.805201>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.199907, 18.320894, 14.246631> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.360355, 17.958824, 14.302864>,  <20.456623, 17.741583, 14.336604>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.360355, 17.958824, 14.302864>,  <20.199907, 18.320894, 14.246631>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.360355, 17.958824, 14.302864> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296641, -0.016844, -0.954840,
		0.866665, 0.424707, 0.261755,
		0.401119, -0.905174, 0.140584,
		20.480692, 17.687271, 14.345039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.650158, 18.201694, 13.702374>,  <20.199907, 18.320894, 14.246631>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.650158, 18.201694, 13.702374> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.636196, 17.819889, 13.820822>,  <20.627819, 17.590805, 13.891891>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.636196, 17.819889, 13.820822>,  <20.650158, 18.201694, 13.702374>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.636196, 17.819889, 13.820822> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214376, -0.296553, -0.930644,
		0.976127, 0.030998, 0.214976,
		-0.034903, -0.954513, 0.296119,
		20.625725, 17.533535, 13.909657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.349920, 17.940998, 13.487288>,  <20.650158, 18.201694, 13.702374>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.349920, 17.940998, 13.487288> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.080063, 17.651985, 13.547688>,  <20.918148, 17.478577, 13.583927>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.080063, 17.651985, 13.547688>,  <21.349920, 17.940998, 13.487288>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.080063, 17.651985, 13.547688> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126510, -0.314722, -0.940715,
		0.727222, -0.615544, 0.303732,
		-0.674643, -0.722534, 0.151000,
		20.877670, 17.435225, 13.592987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.495638, 17.463058, 13.008306>,  <21.349920, 17.940998, 13.487288>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.495638, 17.463058, 13.008306> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.123943, 17.338688, 13.088152>,  <20.900927, 17.264065, 13.136060>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.123943, 17.338688, 13.088152>,  <21.495638, 17.463058, 13.008306>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.123943, 17.338688, 13.088152> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043595, -0.444216, -0.894858,
		0.366909, -0.840236, 0.399226,
		-0.929235, -0.310928, 0.199617,
		20.845173, 17.245409, 13.148037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.457335, 16.967113, 12.500906>,  <21.495638, 17.463058, 13.008306>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.457335, 16.967113, 12.500906> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.072609, 16.983097, 12.609217>,  <20.841774, 16.992687, 12.674203>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.072609, 16.983097, 12.609217>,  <21.457335, 16.967113, 12.500906>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.072609, 16.983097, 12.609217> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263142, -0.407230, -0.874597,
		0.075322, -0.912451, 0.402194,
		-0.961812, 0.039958, 0.270777,
		20.784065, 16.995085, 12.690450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.110199, 16.269026, 12.579974>,  <21.457335, 16.967113, 12.500906>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.110199, 16.269026, 12.579974> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.833157, 16.540966, 12.483558>,  <20.666931, 16.704130, 12.425708>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.833157, 16.540966, 12.483558>,  <21.110199, 16.269026, 12.579974>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.833157, 16.540966, 12.483558> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187981, -0.492744, -0.849627,
		-0.696392, -0.543145, 0.469076,
		-0.692605, 0.679851, -0.241042,
		20.625376, 16.744921, 12.411245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.771875, 15.934186, 12.145920>,  <21.110199, 16.269026, 12.579974>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.771875, 15.934186, 12.145920> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.618328, 16.297737, 12.080698>,  <20.526199, 16.515867, 12.041565>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.618328, 16.297737, 12.080698>,  <20.771875, 15.934186, 12.145920>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.618328, 16.297737, 12.080698> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294053, -0.287711, -0.911458,
		-0.875316, -0.301933, 0.377701,
		-0.383868, 0.908878, -0.163054,
		20.503168, 16.570400, 12.031782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.067371, 15.865108, 12.021736>,  <20.771875, 15.934186, 12.145920>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.067371, 15.865108, 12.021736> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.130730, 16.222836, 11.854353>,  <20.168745, 16.437471, 11.753923>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.130730, 16.222836, 11.854353>,  <20.067371, 15.865108, 12.021736>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.130730, 16.222836, 11.854353> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274482, -0.367220, -0.888712,
		-0.948457, 0.255627, 0.187308,
		0.158396, 0.894318, -0.418457,
		20.178249, 16.491131, 11.728816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.514233, 15.983233, 11.660674>,  <20.067371, 15.865108, 12.021736>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.514233, 15.983233, 11.660674> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.798035, 16.210705, 11.494202>,  <19.968317, 16.347187, 11.394318>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.798035, 16.210705, 11.494202>,  <19.514233, 15.983233, 11.660674>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.798035, 16.210705, 11.494202> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267030, -0.329582, -0.905578,
		-0.652148, 0.753646, -0.081987,
		0.709506, 0.568677, -0.416182,
		20.010887, 16.381308, 11.369347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.216215, 16.237873, 11.020517>,  <19.514233, 15.983233, 11.660674>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.216215, 16.237873, 11.020517> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.608429, 16.312664, 10.996547>,  <19.843758, 16.357538, 10.982164>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.608429, 16.312664, 10.996547>,  <19.216215, 16.237873, 11.020517>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.608429, 16.312664, 10.996547> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021203, -0.202598, -0.979032,
		-0.195197, 0.961246, -0.194690,
		0.980535, 0.186976, -0.059927,
		19.902590, 16.368757, 10.978568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.380587, 16.712498, 10.383606>,  <19.216215, 16.237873, 11.020517>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.380587, 16.712498, 10.383606> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.705105, 16.502800, 10.487118>,  <19.899817, 16.376982, 10.549225>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.705105, 16.502800, 10.487118>,  <19.380587, 16.712498, 10.383606>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.705105, 16.502800, 10.487118> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131663, -0.267431, -0.954540,
		0.569617, 0.808486, -0.147942,
		0.811296, -0.524243, 0.258781,
		19.948494, 16.345528, 10.564752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.812052, 16.948626, 9.912374>,  <19.380587, 16.712498, 10.383606>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.812052, 16.948626, 9.912374> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.933674, 16.599781, 10.065720>,  <20.006647, 16.390474, 10.157727>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.933674, 16.599781, 10.065720>,  <19.812052, 16.948626, 9.912374>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.933674, 16.599781, 10.065720> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042174, -0.389701, -0.919975,
		0.951720, 0.295892, -0.081711,
		0.304056, -0.872113, 0.383365,
		20.024891, 16.338146, 10.180729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.534773, 16.849476, 9.649269>,  <19.812052, 16.948626, 9.912374>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.534773, 16.849476, 9.649269> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.375881, 16.499939, 9.761419>,  <20.280546, 16.290216, 9.828710>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.375881, 16.499939, 9.761419>,  <20.534773, 16.849476, 9.649269>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.375881, 16.499939, 9.761419> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099041, -0.344550, -0.933529,
		0.912359, -0.343058, 0.223412,
		-0.397231, -0.873840, 0.280377,
		20.256712, 16.237787, 9.845532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.007992, 16.381420, 9.275912>,  <20.534773, 16.849476, 9.649269>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.007992, 16.381420, 9.275912> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.652016, 16.223877, 9.367899>,  <20.438431, 16.129351, 9.423091>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.652016, 16.223877, 9.367899>,  <21.007992, 16.381420, 9.275912>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.652016, 16.223877, 9.367899> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063982, -0.391422, -0.917984,
		0.451570, -0.831663, 0.323142,
		-0.889939, -0.393859, 0.229966,
		20.385035, 16.105719, 9.436889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.002342, 15.766774, 8.868075>,  <21.007992, 16.381420, 9.275912>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.002342, 15.766774, 8.868075> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.622654, 15.807835, 8.987033>,  <20.394840, 15.832471, 9.058407>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.622654, 15.807835, 8.987033>,  <21.002342, 15.766774, 8.868075>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.622654, 15.807835, 8.987033> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314361, -0.347098, -0.883573,
		0.012525, -0.932194, 0.361742,
		-0.949220, 0.102650, 0.297393,
		20.337887, 15.838630, 9.076251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.655533, 15.234609, 8.642454>,  <21.002342, 15.766774, 8.868075>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.655533, 15.234609, 8.642454> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.370579, 15.511318, 8.689710>,  <20.199606, 15.677344, 8.718063>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.370579, 15.511318, 8.689710>,  <20.655533, 15.234609, 8.642454>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.370579, 15.511318, 8.689710> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368876, -0.225892, -0.901611,
		-0.597025, -0.685873, 0.416101,
		-0.712384, 0.691774, 0.118139,
		20.156864, 15.718850, 8.725152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.173063, 14.829087, 8.428005>,  <20.655533, 15.234609, 8.642454>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.173063, 14.829087, 8.428005> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.989891, 15.183861, 8.403849>,  <19.879988, 15.396725, 8.389355>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.989891, 15.183861, 8.403849>,  <20.173063, 14.829087, 8.428005>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.989891, 15.183861, 8.403849> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226543, -0.182117, -0.956824,
		-0.859637, -0.424480, 0.284326,
		-0.457933, 0.886933, -0.060391,
		19.852510, 15.449941, 8.385732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.492170, 14.740849, 8.103086>,  <20.173063, 14.829087, 8.428005>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.492170, 14.740849, 8.103086> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.614841, 15.118736, 8.056680>,  <19.688444, 15.345469, 8.028835>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.614841, 15.118736, 8.056680>,  <19.492170, 14.740849, 8.103086>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.614841, 15.118736, 8.056680> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093436, -0.091421, -0.991419,
		-0.947217, 0.314885, 0.060234,
		0.306676, 0.944717, -0.116017,
		19.706844, 15.402151, 8.021874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.782108, 14.433167, 8.326861>,  <19.492170, 14.740849, 8.103086>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.782108, 14.433167, 8.326861> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.416878, 14.272049, 8.352309>,  <18.197739, 14.175378, 8.367578>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.416878, 14.272049, 8.352309>,  <18.782108, 14.433167, 8.326861>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.416878, 14.272049, 8.352309> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003144, 0.162958, 0.986628,
		-0.407777, 0.900666, -0.150059,
		-0.913076, -0.402796, 0.063618,
		18.142956, 14.151210, 8.371395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.387234, 14.883460, 8.735159>,  <18.782108, 14.433167, 8.326861>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.387234, 14.883460, 8.735159> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.201462, 14.530716, 8.767716>,  <18.089998, 14.319069, 8.787251>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.201462, 14.530716, 8.767716>,  <18.387234, 14.883460, 8.735159>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.201462, 14.530716, 8.767716> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021610, 0.103163, 0.994430,
		-0.885345, 0.460086, -0.066969,
		-0.464432, -0.881861, 0.081393,
		18.062132, 14.266158, 8.792134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.948959, 14.946116, 9.309586>,  <18.387234, 14.883460, 8.735159>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.948959, 14.946116, 9.309586> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.944347, 14.549473, 9.258085>,  <17.941580, 14.311486, 9.227185>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.944347, 14.549473, 9.258085>,  <17.948959, 14.946116, 9.309586>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.944347, 14.549473, 9.258085> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146592, -0.125691, 0.981179,
		-0.989130, 0.030189, -0.143912,
		-0.011532, -0.991610, -0.128751,
		17.940887, 14.251989, 9.219460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.435905, 14.717119, 9.804725>,  <17.948959, 14.946116, 9.309586>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.435905, 14.717119, 9.804725> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.626961, 14.376583, 9.717933>,  <17.741594, 14.172261, 9.665857>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.626961, 14.376583, 9.717933>,  <17.435905, 14.717119, 9.804725>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.626961, 14.376583, 9.717933> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182122, -0.337553, 0.923520,
		-0.859473, -0.401591, -0.316276,
		0.477637, -0.851342, -0.216980,
		17.770252, 14.121181, 9.652839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.035067, 14.215775, 10.017491>,  <17.435905, 14.717119, 9.804725>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.035067, 14.215775, 10.017491> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.409706, 14.075916, 10.026726>,  <17.634489, 13.992001, 10.032267>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.409706, 14.075916, 10.026726>,  <17.035067, 14.215775, 10.017491>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.409706, 14.075916, 10.026726> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136222, -0.302612, 0.943329,
		-0.322850, -0.886663, -0.331055,
		0.936596, -0.349651, 0.023084,
		17.690685, 13.971022, 10.033651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.984133, 13.613267, 10.349293>,  <17.035067, 14.215775, 10.017491>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.984133, 13.613267, 10.349293> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.376133, 13.682858, 10.387935>,  <17.611334, 13.724611, 10.411119>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.376133, 13.682858, 10.387935>,  <16.984133, 13.613267, 10.349293>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.376133, 13.682858, 10.387935> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043812, -0.284915, 0.957551,
		0.194115, -0.942632, -0.271595,
		0.980000, 0.173975, 0.096605,
		17.670134, 13.735050, 10.416916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.214243, 13.110075, 10.829877>,  <16.984133, 13.613267, 10.349293>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.214243, 13.110075, 10.829877> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.522236, 13.365253, 10.824923>,  <17.707031, 13.518360, 10.821950>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.522236, 13.365253, 10.824923>,  <17.214243, 13.110075, 10.829877>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.522236, 13.365253, 10.824923> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157532, -0.171255, 0.972551,
		0.618313, -0.750798, -0.232360,
		0.769982, 0.637945, -0.012386,
		17.753231, 13.556637, 10.821207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.715645, 12.757770, 11.254272>,  <17.214243, 13.110075, 10.829877>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.715645, 12.757770, 11.254272> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.826050, 13.142223, 11.251822>,  <17.892292, 13.372896, 11.250353>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.826050, 13.142223, 11.251822>,  <17.715645, 12.757770, 11.254272>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.826050, 13.142223, 11.251822> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196312, -0.050137, 0.979259,
		0.940893, -0.271487, -0.202520,
		0.276010, 0.961135, -0.006123,
		17.908854, 13.430564, 11.249986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.294197, 12.796039, 11.647598>,  <17.715645, 12.757770, 11.254272>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.294197, 12.796039, 11.647598> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.172962, 13.177200, 11.643342>,  <18.100222, 13.405897, 11.640788>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.172962, 13.177200, 11.643342>,  <18.294197, 12.796039, 11.647598>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.172962, 13.177200, 11.643342> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258004, 0.092800, 0.961677,
		0.917373, 0.288725, -0.273979,
		-0.303085, 0.952904, -0.010640,
		18.082037, 13.463072, 11.640150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.845388, 13.142284, 11.839900>,  <18.294197, 12.796039, 11.647598>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.845388, 13.142284, 11.839900> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.518894, 13.354221, 11.932013>,  <18.322998, 13.481383, 11.987280>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.518894, 13.354221, 11.932013>,  <18.845388, 13.142284, 11.839900>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.518894, 13.354221, 11.932013> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360470, 0.155588, 0.919703,
		0.451469, 0.833702, -0.317988,
		-0.816234, 0.529842, 0.230281,
		18.274025, 13.513174, 12.001097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.065540, 13.828721, 12.186611>,  <18.845388, 13.142284, 11.839900>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.065540, 13.828721, 12.186611> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.688068, 13.725788, 12.269798>,  <18.461586, 13.664028, 12.319711>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.688068, 13.725788, 12.269798>,  <19.065540, 13.828721, 12.186611>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.688068, 13.725788, 12.269798> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114591, 0.335463, 0.935058,
		-0.310386, 0.906226, -0.287081,
		-0.943679, -0.257332, 0.207968,
		18.404964, 13.648588, 12.332189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.877403, 14.331245, 12.657476>,  <19.065540, 13.828721, 12.186611>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.877403, 14.331245, 12.657476> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.563385, 14.108509, 12.766016>,  <18.374973, 13.974867, 12.831140>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.563385, 14.108509, 12.766016>,  <18.877403, 14.331245, 12.657476>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.563385, 14.108509, 12.766016> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010471, 0.426064, 0.904632,
		-0.619349, 0.713019, -0.328649,
		-0.785046, -0.556842, 0.271348,
		18.327871, 13.941457, 12.847421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.487476, 14.779411, 13.088273>,  <18.877403, 14.331245, 12.657476>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.487476, 14.779411, 13.088273> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.318085, 14.424187, 13.159840>,  <18.216450, 14.211052, 13.202780>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.318085, 14.424187, 13.159840>,  <18.487476, 14.779411, 13.088273>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.318085, 14.424187, 13.159840> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174522, 0.273777, 0.945827,
		-0.888935, 0.369315, -0.270926,
		-0.423481, -0.888061, 0.178916,
		18.191040, 14.157768, 13.213514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.915220, 15.000103, 13.443192>,  <18.487476, 14.779411, 13.088273>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.915220, 15.000103, 13.443192> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.046280, 14.626842, 13.502350>,  <18.124916, 14.402885, 13.537845>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.046280, 14.626842, 13.502350>,  <17.915220, 15.000103, 13.443192>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.046280, 14.626842, 13.502350> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212187, 0.225216, 0.950923,
		-0.920665, -0.280186, 0.271794,
		0.327648, -0.933152, 0.147896,
		18.144575, 14.346897, 13.546719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.555450, 14.792873, 14.017770>,  <17.915220, 15.000103, 13.443192>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.555450, 14.792873, 14.017770> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.865959, 14.540821, 14.025139>,  <18.052263, 14.389589, 14.029560>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.865959, 14.540821, 14.025139>,  <17.555450, 14.792873, 14.017770>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.865959, 14.540821, 14.025139> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084459, 0.132919, 0.987522,
		-0.624718, -0.765027, 0.156402,
		0.776269, -0.630132, 0.018424,
		18.098841, 14.351782, 14.030666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.411030, 14.278152, 14.635326>,  <17.555450, 14.792873, 14.017770>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.411030, 14.278152, 14.635326> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.804138, 14.275368, 14.561443>,  <18.040003, 14.273697, 14.517114>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.804138, 14.275368, 14.561443>,  <17.411030, 14.278152, 14.635326>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.804138, 14.275368, 14.561443> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179591, 0.272385, 0.945280,
		0.043731, -0.962163, 0.268942,
		0.982769, -0.006961, -0.184708,
		18.098969, 14.273280, 14.506031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.761488, 14.090065, 15.313825>,  <17.411030, 14.278152, 14.635326>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.761488, 14.090065, 15.313825> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.065994, 14.229832, 15.095327>,  <18.248699, 14.313691, 14.964230>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.065994, 14.229832, 15.095327>,  <17.761488, 14.090065, 15.313825>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.065994, 14.229832, 15.095327> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340553, 0.501427, 0.795358,
		0.551812, -0.791504, 0.262725,
		0.761267, 0.349416, -0.546243,
		18.294374, 14.334657, 14.931455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.362574, 13.855531, 15.600125>,  <17.761488, 14.090065, 15.313825>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.362574, 13.855531, 15.600125> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.434429, 14.190666, 15.393919>,  <18.477543, 14.391747, 15.270195>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.434429, 14.190666, 15.393919>,  <18.362574, 13.855531, 15.600125>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.434429, 14.190666, 15.393919> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246587, 0.468960, 0.848099,
		0.952326, -0.279472, -0.122356,
		0.179640, 0.837838, -0.515517,
		18.488321, 14.442018, 15.239264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<18.996347, 14.092178, 15.860949> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.842594, 14.419361, 15.689743>,  <18.750341, 14.615670, 15.587020>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.842594, 14.419361, 15.689743>,  <18.996347, 14.092178, 15.860949>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.842594, 14.419361, 15.689743> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252997, 0.539218, 0.803266,
		0.887829, 0.200477, -0.414208,
		-0.384385, 0.817956, -0.428014,
		18.727278, 14.664748, 15.561339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.474445, 14.783068, 16.008230>,  <18.996347, 14.092178, 15.860949>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.474445, 14.783068, 16.008230> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.125141, 14.959042, 15.924450>,  <18.915558, 15.064626, 15.874182>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.125141, 14.959042, 15.924450>,  <19.474445, 14.783068, 16.008230>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.125141, 14.959042, 15.924450> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086478, 0.562977, 0.821936,
		0.479515, 0.699653, -0.529671,
		-0.873262, 0.439935, -0.209451,
		18.863163, 15.091022, 15.861614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.575613, 15.498227, 16.220764>,  <19.474445, 14.783068, 16.008230>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.575613, 15.498227, 16.220764> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.181267, 15.443272, 16.182405>,  <18.944660, 15.410298, 16.159389>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.181267, 15.443272, 16.182405>,  <19.575613, 15.498227, 16.220764>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.181267, 15.443272, 16.182405> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141368, 0.374887, 0.916229,
		-0.089928, 0.916834, -0.389010,
		-0.985864, -0.137388, -0.095898,
		18.885508, 15.402055, 16.153637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.176535, 16.226351, 16.157221>,  <19.575613, 15.498227, 16.220764>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.176535, 16.226351, 16.157221> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.902447, 15.966419, 16.288794>,  <18.737993, 15.810460, 16.367737>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.902447, 15.966419, 16.288794>,  <19.176535, 16.226351, 16.157221>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.902447, 15.966419, 16.288794> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093454, 0.369445, 0.924541,
		-0.722316, 0.664254, -0.192422,
		-0.685220, -0.649828, 0.328933,
		18.696880, 15.771471, 16.387474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.731920, 16.614063, 16.622202>,  <19.176535, 16.226351, 16.157221>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.731920, 16.614063, 16.622202> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.679508, 16.226780, 16.707439>,  <18.648060, 15.994411, 16.758581>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.679508, 16.226780, 16.707439>,  <18.731920, 16.614063, 16.622202>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.679508, 16.226780, 16.707439> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069760, 0.223417, 0.972223,
		-0.988921, 0.112526, -0.096817,
		-0.131031, -0.968206, 0.213092,
		18.640200, 15.936318, 16.771366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.172617, 16.523380, 17.005835>,  <18.731920, 16.614063, 16.622202>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.172617, 16.523380, 17.005835> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.382797, 16.191319, 17.080399>,  <18.508905, 15.992082, 17.125137>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.382797, 16.191319, 17.080399>,  <18.172617, 16.523380, 17.005835>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.382797, 16.191319, 17.080399> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230635, 0.071914, 0.970379,
		-0.818969, -0.552877, -0.153676,
		0.525449, -0.830154, 0.186408,
		18.540432, 15.942272, 17.136320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.669456, 16.107216, 17.410181>,  <18.172617, 16.523380, 17.005835>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.669456, 16.107216, 17.410181> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.033352, 15.970833, 17.504944>,  <18.251688, 15.889003, 17.561802>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.033352, 15.970833, 17.504944>,  <17.669456, 16.107216, 17.410181>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.033352, 15.970833, 17.504944> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222650, 0.080979, 0.971529,
		-0.350437, -0.936584, -0.002245,
		0.909737, -0.340960, 0.236908,
		18.306273, 15.868546, 17.576015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.656202, 15.636450, 18.004446>,  <17.669456, 16.107216, 17.410181>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.656202, 15.636450, 18.004446> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.047138, 15.720940, 17.998894>,  <18.281700, 15.771634, 17.995564>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.047138, 15.720940, 17.998894>,  <17.656202, 15.636450, 18.004446>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.047138, 15.720940, 17.998894> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022701, -0.039399, 0.998966,
		0.210460, -0.976643, -0.043301,
		0.977339, 0.211226, -0.013879,
		18.340340, 15.784307, 17.994730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.002281, 15.088403, 18.413544>,  <17.656202, 15.636450, 18.004446>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.002281, 15.088403, 18.413544> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.215748, 15.425629, 18.386879>,  <18.343828, 15.627964, 18.370880>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.215748, 15.425629, 18.386879>,  <18.002281, 15.088403, 18.413544>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.215748, 15.425629, 18.386879> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173157, -0.031773, 0.984382,
		0.827780, -0.536872, -0.162938,
		0.533664, 0.843065, -0.066662,
		18.375847, 15.678548, 18.366880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.481390, 14.895392, 18.847097>,  <18.002281, 15.088403, 18.413544>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.481390, 14.895392, 18.847097> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.542324, 15.289730, 18.819084>,  <18.578884, 15.526333, 18.802277>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.542324, 15.289730, 18.819084>,  <18.481390, 14.895392, 18.847097>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.542324, 15.289730, 18.819084> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003276, 0.070355, 0.997516,
		0.988324, -0.152184, 0.007488,
		0.152333, 0.985845, -0.070032,
		18.588024, 15.585484, 18.798075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.117119, 15.030525, 19.234646>,  <18.481390, 14.895392, 18.847097>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.117119, 15.030525, 19.234646> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.909225, 15.371616, 19.213749>,  <18.784489, 15.576271, 19.201210>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.909225, 15.371616, 19.213749>,  <19.117119, 15.030525, 19.234646>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.909225, 15.371616, 19.213749> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318194, 0.249963, 0.914479,
		0.792861, 0.458663, -0.401247,
		-0.519734, 0.852729, -0.052243,
		18.753305, 15.627435, 19.198076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.494553, 15.598504, 19.448332>,  <19.117119, 15.030525, 19.234646>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.494553, 15.598504, 19.448332> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.127514, 15.753719, 19.482830>,  <18.907290, 15.846848, 19.503529>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.127514, 15.753719, 19.482830>,  <19.494553, 15.598504, 19.448332>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.127514, 15.753719, 19.482830> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157555, 0.155844, 0.975135,
		0.364950, 0.908371, -0.204139,
		-0.917599, 0.388039, 0.086244,
		18.852234, 15.870131, 19.508703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.625523, 16.186541, 19.852440>,  <19.494553, 15.598504, 19.448332>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.625523, 16.186541, 19.852440> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.234116, 16.121517, 19.903158>,  <18.999271, 16.082502, 19.933588>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.234116, 16.121517, 19.903158>,  <19.625523, 16.186541, 19.852440>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.234116, 16.121517, 19.903158> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057415, 0.375817, 0.924914,
		-0.198006, 0.912324, -0.358410,
		-0.978518, -0.162560, 0.126795,
		18.940559, 16.072748, 19.941196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.458853, 16.771936, 20.266247>,  <19.625523, 16.186541, 19.852440>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.458853, 16.771936, 20.266247> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.161697, 16.505478, 20.292685>,  <18.983404, 16.345602, 20.308548>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.161697, 16.505478, 20.292685>,  <19.458853, 16.771936, 20.266247>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.161697, 16.505478, 20.292685> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157199, 0.269574, 0.950063,
		-0.650699, 0.695398, -0.304980,
		-0.742886, -0.666147, 0.066096,
		18.938831, 16.305634, 20.312513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.905733, 17.077147, 20.432274>,  <19.458853, 16.771936, 20.266247>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.905733, 17.077147, 20.432274> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.837585, 16.706856, 20.567329>,  <18.796696, 16.484680, 20.648363>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.837585, 16.706856, 20.567329>,  <18.905733, 17.077147, 20.432274>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.837585, 16.706856, 20.567329> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131701, 0.360967, 0.923232,
		-0.976539, 0.112824, -0.183418,
		-0.170370, -0.925728, 0.337640,
		18.786474, 16.429136, 20.668621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.407478, 17.158997, 20.976858>,  <18.905733, 17.077147, 20.432274>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.407478, 17.158997, 20.976858> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.556061, 16.796494, 21.057571>,  <18.645210, 16.578991, 21.105999>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.556061, 16.796494, 21.057571>,  <18.407478, 17.158997, 20.976858>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.556061, 16.796494, 21.057571> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092528, 0.252387, 0.963192,
		-0.923829, -0.339112, 0.177605,
		0.371455, -0.906258, 0.201785,
		18.667498, 16.524616, 21.118107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.938240, 16.863312, 21.495697>,  <18.407478, 17.158997, 20.976858>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.938240, 16.863312, 21.495697> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.265263, 16.643993, 21.566095>,  <18.461475, 16.512402, 21.608335>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.265263, 16.643993, 21.566095>,  <17.938240, 16.863312, 21.495697>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.265263, 16.643993, 21.566095> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113473, 0.453032, 0.884243,
		-0.564559, -0.702947, 0.432596,
		0.817556, -0.548295, 0.175997,
		18.510529, 16.479506, 21.618895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.918690, 16.626341, 22.175917>,  <17.938240, 16.863312, 21.495697>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.918690, 16.626341, 22.175917> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.304333, 16.615158, 22.070301>,  <18.535719, 16.608448, 22.006931>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.304333, 16.615158, 22.070301>,  <17.918690, 16.626341, 22.175917>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.304333, 16.615158, 22.070301> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253902, 0.387947, 0.886020,
		0.077661, -0.921257, 0.381121,
		0.964107, -0.027958, -0.264037,
		18.593565, 16.606771, 21.991089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.313227, 16.171368, 22.734175>,  <17.918690, 16.626341, 22.175917>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.313227, 16.171368, 22.734175> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.531368, 16.459064, 22.561996>,  <18.662252, 16.631681, 22.458691>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.531368, 16.459064, 22.561996>,  <18.313227, 16.171368, 22.734175>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.531368, 16.459064, 22.561996> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297224, 0.314227, 0.901620,
		0.783740, -0.619640, -0.042411,
		0.545353, 0.719241, -0.430444,
		18.694975, 16.674837, 22.432863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.718220, 16.301275, 23.214565>,  <18.313227, 16.171368, 22.734175>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.718220, 16.301275, 23.214565> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.851128, 16.587082, 22.968292>,  <18.930872, 16.758566, 22.820528>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.851128, 16.587082, 22.968292>,  <18.718220, 16.301275, 23.214565>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.851128, 16.587082, 22.968292> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330863, 0.522991, 0.785500,
		0.883248, -0.464704, -0.062633,
		0.332269, 0.714514, -0.615684,
		18.950808, 16.801435, 22.783587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.417980, 16.496435, 23.522224>,  <18.718220, 16.301275, 23.214565>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.417980, 16.496435, 23.522224> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.273148, 16.794411, 23.298094>,  <19.186249, 16.973196, 23.163616>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.273148, 16.794411, 23.298094>,  <19.417980, 16.496435, 23.522224>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.273148, 16.794411, 23.298094> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425556, 0.666916, 0.611658,
		0.829337, -0.016981, -0.558490,
		-0.362079, 0.744940, -0.560324,
		19.164524, 17.017893, 23.129997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.983517, 17.058743, 23.491814>,  <19.417980, 16.496435, 23.522224>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.983517, 17.058743, 23.491814> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.632545, 17.226376, 23.398443>,  <19.421963, 17.326956, 23.342421>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.632545, 17.226376, 23.398443>,  <19.983517, 17.058743, 23.491814>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.632545, 17.226376, 23.398443> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162187, 0.717110, 0.677827,
		0.451457, 0.556887, -0.697183,
		-0.877429, 0.419083, -0.233425,
		19.369316, 17.352100, 23.328415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.192739, 17.782444, 23.428274>,  <19.983517, 17.058743, 23.491814>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.192739, 17.782444, 23.428274> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.801144, 17.752438, 23.504116>,  <19.566185, 17.734434, 23.549622>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.801144, 17.752438, 23.504116>,  <20.192739, 17.782444, 23.428274>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.801144, 17.752438, 23.504116> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091775, 0.668254, 0.738251,
		-0.182084, 0.740142, -0.647329,
		-0.978991, -0.075016, 0.189605,
		19.507446, 17.729933, 23.560997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.834457, 18.418148, 23.487591>,  <20.192739, 17.782444, 23.428274>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.834457, 18.418148, 23.487591> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.620739, 18.163406, 23.709923>,  <19.492508, 18.010561, 23.843323>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.620739, 18.163406, 23.709923>,  <19.834457, 18.418148, 23.487591>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.620739, 18.163406, 23.709923> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031992, 0.641850, 0.766162,
		-0.844692, 0.427139, -0.322563,
		-0.534295, -0.636852, 0.555831,
		19.460451, 17.972351, 23.876673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.218361, 19.079611, 23.516733>,  <19.834457, 18.418148, 23.487591>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.218361, 19.079611, 23.516733> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.501160, 19.356052, 23.456690>,  <20.670839, 19.521917, 23.420664>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.501160, 19.356052, 23.456690>,  <20.218361, 19.079611, 23.516733>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.501160, 19.356052, 23.456690> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050215, -0.162657, -0.985404,
		-0.705433, 0.704214, -0.080294,
		0.706996, 0.691104, -0.150106,
		20.713259, 19.563383, 23.411657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.937769, 19.589176, 23.130138>,  <20.218361, 19.079611, 23.516733>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.937769, 19.589176, 23.130138> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.332268, 19.627346, 23.076153>,  <20.568966, 19.650248, 23.043762>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.332268, 19.627346, 23.076153>,  <19.937769, 19.589176, 23.130138>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.332268, 19.627346, 23.076153> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120148, -0.146878, -0.981831,
		-0.113513, 0.984541, -0.133393,
		0.986245, 0.095424, -0.134963,
		20.628141, 19.655973, 23.035664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.944176, 20.104181, 22.567339>,  <19.937769, 19.589176, 23.130138>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.944176, 20.104181, 22.567339> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.295044, 19.912655, 22.581795>,  <20.505566, 19.797739, 22.590467>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.295044, 19.912655, 22.581795>,  <19.944176, 20.104181, 22.567339>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.295044, 19.912655, 22.581795> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000800, -0.073803, -0.997273,
		0.480178, 0.874807, -0.064354,
		0.877171, -0.478817, 0.036139,
		20.558195, 19.769011, 22.592636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.226845, 20.268648, 21.994564>,  <19.944176, 20.104181, 22.567339>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.226845, 20.268648, 21.994564> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.501751, 19.986900, 22.065594>,  <20.666695, 19.817852, 22.108212>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.501751, 19.986900, 22.065594>,  <20.226845, 20.268648, 21.994564>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.501751, 19.986900, 22.065594> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030122, -0.216608, -0.975794,
		0.725783, 0.675976, -0.127650,
		0.687263, -0.704370, 0.177573,
		20.707930, 19.775589, 22.118866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.968420, 20.504751, 21.748274>,  <20.226845, 20.268648, 21.994564>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.968420, 20.504751, 21.748274> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.897335, 20.112186, 21.777254>,  <20.854685, 19.876648, 21.794643>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.897335, 20.112186, 21.777254>,  <20.968420, 20.504751, 21.748274>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.897335, 20.112186, 21.777254> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047250, -0.065029, -0.996764,
		0.982948, -0.180559, -0.034816,
		-0.177711, -0.981412, 0.072452,
		20.844023, 19.817762, 21.798990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.145298, 20.279806, 21.081360>,  <20.968420, 20.504751, 21.748274>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.145298, 20.279806, 21.081360> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.969902, 19.953625, 21.232496>,  <20.864664, 19.757915, 21.323177>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.969902, 19.953625, 21.232496>,  <21.145298, 20.279806, 21.081360>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.969902, 19.953625, 21.232496> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253513, -0.291114, -0.922488,
		0.862239, -0.500291, -0.079077,
		-0.438492, -0.815452, 0.377840,
		20.838354, 19.708990, 21.345848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.400093, 19.678743, 20.699781>,  <21.145298, 20.279806, 21.081360>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.400093, 19.678743, 20.699781> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.051792, 19.575802, 20.867380>,  <20.842812, 19.514038, 20.967939>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.051792, 19.575802, 20.867380>,  <21.400093, 19.678743, 20.699781>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.051792, 19.575802, 20.867380> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318096, -0.354977, -0.879094,
		0.374971, -0.898755, 0.227234,
		-0.870753, -0.257353, 0.418996,
		20.790565, 19.498596, 20.993078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.326721, 19.068354, 20.427002>,  <21.400093, 19.678743, 20.699781>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.326721, 19.068354, 20.427002> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.962620, 19.127151, 20.581833>,  <20.744158, 19.162430, 20.674730>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.962620, 19.127151, 20.581833>,  <21.326721, 19.068354, 20.427002>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.962620, 19.127151, 20.581833> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394553, -0.591413, -0.703249,
		0.125549, -0.792858, 0.596333,
		-0.910255, 0.146993, 0.387076,
		20.689543, 19.171249, 20.697956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.092724, 18.418970, 20.371641>,  <21.326721, 19.068354, 20.427002>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.092724, 18.418970, 20.371641> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.767704, 18.648407, 20.413122>,  <20.572693, 18.786070, 20.438011>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.767704, 18.648407, 20.413122>,  <21.092724, 18.418970, 20.371641>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.767704, 18.648407, 20.413122> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422844, -0.457586, -0.782188,
		-0.401205, -0.679416, 0.614352,
		-0.812550, 0.573593, 0.103701,
		20.523939, 18.820484, 20.444233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.432125, 17.981155, 20.287430>,  <21.092724, 18.418970, 20.371641>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.432125, 17.981155, 20.287430> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.362347, 18.362366, 20.188385>,  <20.320480, 18.591091, 20.128958>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.362347, 18.362366, 20.188385>,  <20.432125, 17.981155, 20.287430>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.362347, 18.362366, 20.188385> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318751, -0.292581, -0.901551,
		-0.931647, -0.078345, 0.354817,
		-0.174445, 0.953026, -0.247610,
		20.310013, 18.648273, 20.114101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.686193, 18.025625, 20.071896>,  <20.432125, 17.981155, 20.287430>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.686193, 18.025625, 20.071896> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.902832, 18.322857, 19.914667>,  <20.032816, 18.501196, 19.820330>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.902832, 18.322857, 19.914667>,  <19.686193, 18.025625, 20.071896>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.902832, 18.322857, 19.914667> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388928, -0.193035, -0.900818,
		-0.745256, 0.640757, 0.184457,
		0.541598, 0.743080, -0.393069,
		20.065311, 18.545780, 19.796747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.182482, 18.230274, 19.673496>,  <19.686193, 18.025625, 20.071896>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.182482, 18.230274, 19.673496> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.527672, 18.377102, 19.534626>,  <19.734787, 18.465199, 19.451303>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.527672, 18.377102, 19.534626>,  <19.182482, 18.230274, 19.673496>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.527672, 18.377102, 19.534626> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185838, -0.408363, -0.893702,
		-0.469825, 0.835763, -0.284193,
		0.862977, 0.367069, -0.347176,
		19.786566, 18.487223, 19.430473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.097548, 18.607719, 19.105747>,  <19.182482, 18.230274, 19.673496>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.097548, 18.607719, 19.105747> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.486290, 18.521713, 19.067244>,  <19.719536, 18.470110, 19.044142>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.486290, 18.521713, 19.067244>,  <19.097548, 18.607719, 19.105747>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.486290, 18.521713, 19.067244> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172831, -0.373103, -0.911550,
		0.160082, 0.902531, -0.399764,
		0.971856, -0.215014, -0.096258,
		19.777847, 18.457209, 19.038366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.294979, 18.618479, 18.479420>,  <19.097548, 18.607719, 19.105747>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.294979, 18.618479, 18.479420> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.635395, 18.438187, 18.587173>,  <19.839645, 18.330011, 18.651825>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.635395, 18.438187, 18.587173>,  <19.294979, 18.618479, 18.479420>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.635395, 18.438187, 18.587173> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043394, -0.450895, -0.891522,
		0.523302, 0.770412, -0.364172,
		0.851042, -0.450732, 0.269385,
		19.890707, 18.302967, 18.667990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.728273, 18.675211, 17.827293>,  <19.294979, 18.618479, 18.479420>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.728273, 18.675211, 17.827293> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.903732, 18.366356, 18.011204>,  <20.009008, 18.181044, 18.121550>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.903732, 18.366356, 18.011204>,  <19.728273, 18.675211, 17.827293>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.903732, 18.366356, 18.011204> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215484, -0.406328, -0.887955,
		0.872442, 0.488574, -0.011852,
		0.438648, -0.772135, 0.459777,
		20.035326, 18.134716, 18.149137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.363836, 18.620071, 17.395567>,  <19.728273, 18.675211, 17.827293>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.363836, 18.620071, 17.395567> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.325558, 18.279221, 17.601370>,  <20.302591, 18.074709, 17.724852>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.325558, 18.279221, 17.601370>,  <20.363836, 18.620071, 17.395567>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.325558, 18.279221, 17.601370> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207376, -0.522605, -0.826970,
		0.973570, 0.027561, 0.226722,
		-0.095694, -0.852129, 0.514508,
		20.296850, 18.023582, 17.755722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.942400, 18.268745, 17.336243>,  <20.363836, 18.620071, 17.395567>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.942400, 18.268745, 17.336243> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.675789, 17.989059, 17.439655>,  <20.515823, 17.821247, 17.501703>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.675789, 17.989059, 17.439655>,  <20.942400, 18.268745, 17.336243>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.675789, 17.989059, 17.439655> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270958, -0.550304, -0.789777,
		0.694495, -0.456357, 0.556251,
		-0.666527, -0.699217, 0.258530,
		20.475830, 17.779295, 17.517214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.342030, 17.698261, 17.358063>,  <20.942400, 18.268745, 17.336243>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.342030, 17.698261, 17.358063> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.957981, 17.616596, 17.281658>,  <20.727552, 17.567598, 17.235815>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.957981, 17.616596, 17.281658>,  <21.342030, 17.698261, 17.358063>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.957981, 17.616596, 17.281658> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251329, -0.330954, -0.909562,
		0.122481, -0.921297, 0.369068,
		-0.960121, -0.204162, -0.191013,
		20.669945, 17.555347, 17.224354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.378254, 17.037853, 16.997431>,  <21.342030, 17.698261, 17.358063>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.378254, 17.037853, 16.997431> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.014519, 17.188805, 16.927361>,  <20.796278, 17.279375, 16.885319>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.014519, 17.188805, 16.927361>,  <21.378254, 17.037853, 16.997431>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.014519, 17.188805, 16.927361> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154223, -0.085302, -0.984347,
		-0.386415, -0.922122, 0.019368,
		-0.909340, 0.377380, -0.175175,
		20.741716, 17.302019, 16.874807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.942320, 16.528111, 16.473173>,  <21.378254, 17.037853, 16.997431>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.942320, 16.528111, 16.473173> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.759487, 16.882984, 16.447947>,  <20.649788, 17.095909, 16.432812>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.759487, 16.882984, 16.447947>,  <20.942320, 16.528111, 16.473173>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.759487, 16.882984, 16.447947> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195797, -0.169534, -0.965879,
		-0.867605, -0.429140, 0.251199,
		-0.457084, 0.887185, -0.063065,
		20.622362, 17.149139, 16.429028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<17.304388, 13.219503, 13.086760> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.631123, 13.438019, 13.012627>,  <17.827164, 13.569128, 12.968147>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.631123, 13.438019, 13.012627>,  <17.304388, 13.219503, 13.086760>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.631123, 13.438019, 13.012627> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156584, -0.099244, -0.982666,
		-0.555212, 0.831697, 0.004474,
		0.816836, 0.546288, -0.185332,
		17.876173, 13.601905, 12.957027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.112484, 13.555755, 12.522966>,  <17.304388, 13.219503, 13.086760>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.112484, 13.555755, 12.522966> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.504929, 13.626358, 12.491305>,  <17.740395, 13.668720, 12.472308>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.504929, 13.626358, 12.491305>,  <17.112484, 13.555755, 12.522966>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.504929, 13.626358, 12.491305> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082877, 0.013815, -0.996464,
		-0.174790, 0.984202, 0.028182,
		0.981112, 0.176508, -0.079153,
		17.799263, 13.679311, 12.467559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.281013, 14.271605, 12.201985>,  <17.112484, 13.555755, 12.522966>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.281013, 14.271605, 12.201985> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.587196, 14.025288, 12.127291>,  <17.770906, 13.877497, 12.082474>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.587196, 14.025288, 12.127291>,  <17.281013, 14.271605, 12.201985>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.587196, 14.025288, 12.127291> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052559, 0.229394, -0.971913,
		0.641336, 0.753773, 0.143226,
		0.765457, -0.615796, -0.186736,
		17.816833, 13.840549, 12.071270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.817062, 14.693748, 11.798478>,  <17.281013, 14.271605, 12.201985>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.817062, 14.693748, 11.798478> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.881741, 14.304298, 11.734092>,  <17.920547, 14.070628, 11.695460>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.881741, 14.304298, 11.734092>,  <17.817062, 14.693748, 11.798478>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.881741, 14.304298, 11.734092> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247498, 0.197909, -0.948460,
		0.955300, 0.113524, 0.272972,
		0.161696, -0.973624, -0.160966,
		17.930250, 14.012211, 11.685802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.201351, 14.665854, 11.224474>,  <17.817062, 14.693748, 11.798478>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.201351, 14.665854, 11.224474> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.165779, 14.267582, 11.235169>,  <18.144436, 14.028619, 11.241587>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.165779, 14.267582, 11.235169>,  <18.201351, 14.665854, 11.224474>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.165779, 14.267582, 11.235169> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117538, -0.037149, -0.992373,
		0.989079, -0.085108, 0.120333,
		-0.088929, -0.995679, 0.026739,
		18.139101, 13.968878, 11.243192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.670015, 14.451370, 10.810377>,  <18.201351, 14.665854, 11.224474>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.670015, 14.451370, 10.810377> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.415131, 14.143101, 10.808374>,  <18.262199, 13.958139, 10.807173>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.415131, 14.143101, 10.808374>,  <18.670015, 14.451370, 10.810377>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.415131, 14.143101, 10.808374> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164372, -0.129553, -0.977854,
		0.752957, -0.623922, 0.209230,
		-0.637211, -0.770673, -0.005008,
		18.223967, 13.911899, 10.806872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.984085, 13.995477, 10.499590>,  <18.670015, 14.451370, 10.810377>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.984085, 13.995477, 10.499590> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.596363, 13.902340, 10.468008>,  <18.363729, 13.846458, 10.449059>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.596363, 13.902340, 10.468008>,  <18.984085, 13.995477, 10.499590>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.596363, 13.902340, 10.468008> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105328, -0.103086, -0.989080,
		0.222160, -0.967036, 0.124446,
		-0.969305, -0.232841, -0.078954,
		18.305573, 13.832488, 10.444322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.940100, 13.477654, 10.000314>,  <18.984085, 13.995477, 10.499590>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.940100, 13.477654, 10.000314> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.562019, 13.607704, 10.012248>,  <18.335171, 13.685734, 10.019409>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.562019, 13.607704, 10.012248>,  <18.940100, 13.477654, 10.000314>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.562019, 13.607704, 10.012248> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004203, 0.079263, -0.996845,
		-0.326464, -0.942343, -0.073553,
		-0.945200, 0.325125, 0.029837,
		18.278460, 13.705241, 10.021199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.672770, 13.220458, 9.441561>,  <18.940100, 13.477654, 10.000314>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.672770, 13.220458, 9.441561> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.365414, 13.464344, 9.519353>,  <18.181000, 13.610676, 9.566029>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.365414, 13.464344, 9.519353>,  <18.672770, 13.220458, 9.441561>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.365414, 13.464344, 9.519353> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134434, 0.143332, -0.980502,
		-0.625703, -0.779553, -0.028168,
		-0.768390, 0.609716, 0.194481,
		18.134897, 13.647259, 9.577697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.087399, 12.995287, 9.059181>,  <18.672770, 13.220458, 9.441561>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.087399, 12.995287, 9.059181> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.059834, 13.389198, 9.123011>,  <18.043295, 13.625545, 9.161308>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.059834, 13.389198, 9.123011>,  <18.087399, 12.995287, 9.059181>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.059834, 13.389198, 9.123011> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277647, 0.134704, -0.951192,
		-0.958208, -0.109853, 0.264138,
		-0.068911, 0.984778, 0.159575,
		18.039160, 13.684631, 9.170883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.504511, 13.117105, 8.710139>,  <18.087399, 12.995287, 9.059181>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.504511, 13.117105, 8.710139> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.665966, 13.480873, 8.750196>,  <17.762838, 13.699135, 8.774229>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.665966, 13.480873, 8.750196>,  <17.504511, 13.117105, 8.710139>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.665966, 13.480873, 8.750196> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093349, 0.149818, -0.984297,
		-0.910145, 0.387950, 0.145365,
		0.403637, 0.909422, 0.100141,
		17.787058, 13.753700, 8.780238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.033304, 13.435210, 8.431090>,  <17.504511, 13.117105, 8.710139>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.033304, 13.435210, 8.431090> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.373219, 13.644634, 8.406592>,  <17.577168, 13.770288, 8.391893>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.373219, 13.644634, 8.406592>,  <17.033304, 13.435210, 8.431090>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.373219, 13.644634, 8.406592> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146266, 0.122577, -0.981622,
		-0.506430, 0.843126, 0.180743,
		0.849785, 0.523559, -0.061244,
		17.628155, 13.801702, 8.388219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.843950, 13.877815, 7.877814>,  <17.033304, 13.435210, 8.431090>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.843950, 13.877815, 7.877814> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.241291, 13.908623, 7.912029>,  <17.479696, 13.927108, 7.932559>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.241291, 13.908623, 7.912029>,  <16.843950, 13.877815, 7.877814>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.241291, 13.908623, 7.912029> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069743, 0.188442, -0.979605,
		-0.091568, 0.979060, 0.181818,
		0.993354, 0.077020, 0.085538,
		17.539297, 13.931728, 7.937691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.047791, 14.520422, 7.542037>,  <16.843950, 13.877815, 7.877814>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.047791, 14.520422, 7.542037> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.297764, 14.212933, 7.487596>,  <17.447748, 14.028439, 7.454930>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.297764, 14.212933, 7.487596>,  <17.047791, 14.520422, 7.542037>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.297764, 14.212933, 7.487596> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105236, 0.255700, -0.961011,
		0.773554, 0.586243, 0.240692,
		0.624931, -0.768724, -0.136104,
		17.485243, 13.982315, 7.446764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.237730, 15.253769, 7.321779>,  <17.047791, 14.520422, 7.542037>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.237730, 15.253769, 7.321779> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.922852, 15.427605, 7.146756>,  <16.733925, 15.531906, 7.041742>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.922852, 15.427605, 7.146756>,  <17.237730, 15.253769, 7.321779>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.922852, 15.427605, 7.146756> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097153, 0.613259, 0.783884,
		0.609005, 0.659579, -0.440532,
		-0.787194, 0.434590, -0.437558,
		16.686693, 15.557981, 7.015489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.276239, 16.023907, 7.338023>,  <17.237730, 15.253769, 7.321779>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.276239, 16.023907, 7.338023> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.888630, 15.939793, 7.286213>,  <16.656065, 15.889324, 7.255127>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.888630, 15.939793, 7.286213>,  <17.276239, 16.023907, 7.338023>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.888630, 15.939793, 7.286213> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237480, 0.649332, 0.722476,
		-0.067822, 0.730855, -0.679155,
		-0.969022, -0.210286, -0.129524,
		16.597923, 15.876707, 7.247355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.918343, 16.716383, 7.344043>,  <17.276239, 16.023907, 7.338023>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.918343, 16.716383, 7.344043> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.633118, 16.446762, 7.421189>,  <16.461983, 16.284990, 7.467477>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.633118, 16.446762, 7.421189>,  <16.918343, 16.716383, 7.344043>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.633118, 16.446762, 7.421189> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440630, 0.644827, 0.624535,
		-0.545335, 0.360348, -0.756808,
		-0.713060, -0.674053, 0.192867,
		16.419199, 16.244547, 7.479049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.381275, 17.141134, 7.275624>,  <16.918343, 16.716383, 7.344043>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.381275, 17.141134, 7.275624> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.238590, 16.826710, 7.477561>,  <16.152979, 16.638056, 7.598723>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.238590, 16.826710, 7.477561>,  <16.381275, 17.141134, 7.275624>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.238590, 16.826710, 7.477561> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402207, 0.616966, 0.676449,
		-0.843201, 0.038245, -0.536237,
		-0.356710, -0.786060, 0.504844,
		16.131577, 16.590891, 7.629014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.077095, 17.477945, 7.762043>,  <16.381275, 17.141134, 7.275624>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.077095, 17.477945, 7.762043> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.999528, 17.093899, 7.842609>,  <15.952988, 16.863470, 7.890949>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.999528, 17.093899, 7.842609>,  <16.077095, 17.477945, 7.762043>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.999528, 17.093899, 7.842609> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442373, 0.268836, 0.855590,
		-0.875615, 0.076813, -0.476862,
		-0.193918, -0.960118, 0.201417,
		15.941353, 16.805862, 7.903034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.253291, 17.271097, 7.874486>,  <16.077095, 17.477945, 7.762043>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.253291, 17.271097, 7.874486> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.526587, 17.064533, 8.080981>,  <15.690565, 16.940596, 8.204878>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.526587, 17.064533, 8.080981>,  <15.253291, 17.271097, 7.874486>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.526587, 17.064533, 8.080981> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424240, 0.294680, 0.856261,
		-0.594308, -0.804042, -0.017744,
		0.683242, -0.516411, 0.516238,
		15.731560, 16.909611, 8.235852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.945606, 16.852554, 8.439248>,  <15.253291, 17.271097, 7.874486>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.945606, 16.852554, 8.439248> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.322845, 16.894421, 8.565497>,  <15.549188, 16.919540, 8.641247>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.322845, 16.894421, 8.565497>,  <14.945606, 16.852554, 8.439248>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.322845, 16.894421, 8.565497> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330964, 0.387306, 0.860498,
		-0.032178, -0.915991, 0.399906,
		0.943094, 0.104665, 0.315623,
		15.605773, 16.925821, 8.660184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.962052, 16.752676, 9.174322>,  <14.945606, 16.852554, 8.439248>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.962052, 16.752676, 9.174322> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.291244, 16.961117, 9.083846>,  <15.488758, 17.086182, 9.029561>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.291244, 16.961117, 9.083846>,  <14.962052, 16.752676, 9.174322>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.291244, 16.961117, 9.083846> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105067, 0.530924, 0.840881,
		0.558278, -0.668258, 0.491688,
		0.822975, 0.521105, -0.226192,
		15.538136, 17.117447, 9.015989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.401495, 16.645388, 9.742602>,  <14.962052, 16.752676, 9.174322>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.401495, 16.645388, 9.742602> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.543994, 16.983246, 9.582769>,  <15.629494, 17.185961, 9.486870>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.543994, 16.983246, 9.582769>,  <15.401495, 16.645388, 9.742602>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.543994, 16.983246, 9.582769> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162769, 0.477197, 0.863591,
		0.920106, -0.242612, 0.307482,
		0.356247, 0.844643, -0.399582,
		15.650868, 17.236639, 9.462894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.956081, 16.851582, 10.156796>,  <15.401495, 16.645388, 9.742602>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.956081, 16.851582, 10.156796> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.901076, 17.202751, 9.973344>,  <15.868073, 17.413452, 9.863272>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.901076, 17.202751, 9.973344>,  <15.956081, 16.851582, 10.156796>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.901076, 17.202751, 9.973344> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066421, 0.453816, 0.888617,
		0.988270, 0.152660, -0.004093,
		-0.137514, 0.877922, -0.458632,
		15.859822, 17.466127, 9.835754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.415428, 17.315739, 10.539439>,  <15.956081, 16.851582, 10.156796>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.415428, 17.315739, 10.539439> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.147423, 17.562611, 10.374432>,  <15.986620, 17.710733, 10.275427>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.147423, 17.562611, 10.374432>,  <16.415428, 17.315739, 10.539439>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.147423, 17.562611, 10.374432> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121541, 0.456996, 0.881126,
		0.732332, 0.640504, -0.231181,
		-0.670014, 0.617179, -0.412520,
		15.946419, 17.747765, 10.250675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.547260, 18.027176, 10.688342>,  <16.415428, 17.315739, 10.539439>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.547260, 18.027176, 10.688342> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.159309, 18.063114, 10.597776>,  <15.926538, 18.084677, 10.543437>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.159309, 18.063114, 10.597776>,  <16.547260, 18.027176, 10.688342>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.159309, 18.063114, 10.597776> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116163, 0.646398, 0.754106,
		0.214108, 0.757692, -0.616491,
		-0.969878, 0.089847, -0.226415,
		15.868346, 18.090069, 10.529852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.459856, 18.768417, 10.695570>,  <16.547260, 18.027176, 10.688342>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.459856, 18.768417, 10.695570> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.122734, 18.562279, 10.757661>,  <15.920461, 18.438595, 10.794915>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.122734, 18.562279, 10.757661>,  <16.459856, 18.768417, 10.695570>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.122734, 18.562279, 10.757661> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183388, 0.546119, 0.817387,
		-0.506009, 0.660433, -0.554781,
		-0.842807, -0.515346, 0.155226,
		15.869892, 18.407675, 10.804229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.011944, 19.196102, 11.062469>,  <16.459856, 18.768417, 10.695570>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.011944, 19.196102, 11.062469> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.845300, 18.838829, 11.130186>,  <15.745313, 18.624466, 11.170816>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.845300, 18.838829, 11.130186>,  <16.011944, 19.196102, 11.062469>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.845300, 18.838829, 11.130186> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038280, 0.203295, 0.978369,
		-0.908279, 0.401119, -0.118886,
		-0.416611, -0.893183, 0.169294,
		15.720317, 18.570875, 11.180974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.595459, 19.827963, 10.969765>,  <16.011944, 19.196102, 11.062469>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.595459, 19.827963, 10.969765> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.663508, 20.208149, 10.865708>,  <15.704338, 20.436260, 10.803274>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.663508, 20.208149, 10.865708>,  <15.595459, 19.827963, 10.969765>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.663508, 20.208149, 10.865708> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294327, -0.300950, -0.907084,
		-0.940441, 0.077749, -0.330946,
		0.170123, 0.950465, -0.260142,
		15.714545, 20.493288, 10.787665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.350408, 19.833179, 10.305731>,  <15.595459, 19.827963, 10.969765>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.350408, 19.833179, 10.305731> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.565263, 20.170456, 10.314748>,  <15.694176, 20.372822, 10.320158>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.565263, 20.170456, 10.314748>,  <15.350408, 19.833179, 10.305731>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.565263, 20.170456, 10.314748> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336592, -0.189760, -0.922333,
		-0.773426, 0.503008, -0.385739,
		0.537139, 0.843193, 0.022543,
		15.726404, 20.423414, 10.321510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.326771, 20.031223, 9.603099>,  <15.350408, 19.833179, 10.305731>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.326771, 20.031223, 9.603099> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.650926, 20.199673, 9.766037>,  <15.845418, 20.300743, 9.863800>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.650926, 20.199673, 9.766037>,  <15.326771, 20.031223, 9.603099>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.650926, 20.199673, 9.766037> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547629, -0.297292, -0.782125,
		-0.208270, 0.856898, -0.471540,
		0.810386, 0.421123, 0.407345,
		15.894041, 20.326010, 9.888241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.542573, 20.556236, 9.086802>,  <15.326771, 20.031223, 9.603099>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.542573, 20.556236, 9.086802> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.854047, 20.434307, 9.306160>,  <16.040932, 20.361151, 9.437775>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.854047, 20.434307, 9.306160>,  <15.542573, 20.556236, 9.086802>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.854047, 20.434307, 9.306160> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515456, -0.187521, -0.836146,
		0.357711, 0.933767, 0.011102,
		0.778684, -0.304821, 0.548394,
		16.087652, 20.342861, 9.470678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.081602, 20.818663, 8.748558>,  <15.542573, 20.556236, 9.086802>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.081602, 20.818663, 8.748558> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.257748, 20.551434, 8.988479>,  <16.363436, 20.391096, 9.132431>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.257748, 20.551434, 8.988479>,  <16.081602, 20.818663, 8.748558>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.257748, 20.551434, 8.988479> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.685268, -0.181531, -0.705304,
		0.580076, 0.721615, 0.377868,
		0.440363, -0.668071, 0.599801,
		16.389856, 20.351013, 9.168419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.794338, 20.945242, 8.821544>,  <16.081602, 20.818663, 8.748558>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.794338, 20.945242, 8.821544> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.805275, 20.555313, 8.910069>,  <16.811836, 20.321356, 8.963183>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.805275, 20.555313, 8.910069>,  <16.794338, 20.945242, 8.821544>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.805275, 20.555313, 8.910069> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.763048, -0.122670, -0.634594,
		0.645763, 0.186221, 0.740481,
		0.027340, -0.974820, 0.221312,
		16.813477, 20.262867, 8.976462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.554617, 20.782173, 9.002064>,  <16.794338, 20.945242, 8.821544>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.554617, 20.782173, 9.002064> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.381618, 20.433960, 8.908155>,  <17.277821, 20.225031, 8.851810>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.381618, 20.433960, 8.908155>,  <17.554617, 20.782173, 9.002064>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.381618, 20.433960, 8.908155> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.820743, -0.272316, -0.502220,
		0.373269, -0.409894, 0.832261,
		-0.432494, -0.870535, -0.234770,
		17.251871, 20.172800, 8.837725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.163660, 20.438549, 8.878977>,  <17.554617, 20.782173, 9.002064>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.163660, 20.438549, 8.878977> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.877270, 20.211830, 8.715947>,  <17.705435, 20.075798, 8.618130>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.877270, 20.211830, 8.715947>,  <18.163660, 20.438549, 8.878977>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.877270, 20.211830, 8.715947> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.651420, -0.332458, -0.681999,
		0.251055, -0.753798, 0.607256,
		-0.715977, -0.566799, -0.407574,
		17.662477, 20.041790, 8.593675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.366116, 19.859291, 8.883217>,  <18.163660, 20.438549, 8.878977>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.366116, 19.859291, 8.883217> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.097500, 19.808441, 8.591224>,  <17.936331, 19.777931, 8.416028>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.097500, 19.808441, 8.591224>,  <18.366116, 19.859291, 8.883217>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.097500, 19.808441, 8.591224> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.660712, -0.548679, -0.512261,
		-0.335404, -0.826311, 0.452453,
		-0.671538, -0.127127, -0.729983,
		17.896038, 19.770304, 8.372229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.357126, 19.190542, 8.678439>,  <18.366116, 19.859291, 8.883217>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.357126, 19.190542, 8.678439> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.227592, 19.416485, 8.374843>,  <18.149872, 19.552052, 8.192685>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.227592, 19.416485, 8.374843>,  <18.357126, 19.190542, 8.678439>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.227592, 19.416485, 8.374843> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.695477, -0.401760, -0.595735,
		-0.641438, -0.720780, -0.262741,
		-0.323835, 0.564858, -0.758990,
		18.130442, 19.585941, 8.147145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.219738, 18.734428, 8.147824>,  <18.357126, 19.190542, 8.678439>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.219738, 18.734428, 8.147824> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.232845, 19.077156, 7.941994>,  <18.240709, 19.282793, 7.818495>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.232845, 19.077156, 7.941994>,  <18.219738, 18.734428, 8.147824>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.232845, 19.077156, 7.941994> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.627936, -0.418202, -0.656356,
		-0.777574, -0.301613, -0.551731,
		0.032770, 0.856818, -0.514577,
		18.242676, 19.334202, 7.787621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.212963, 18.567930, 7.379854>,  <18.219738, 18.734428, 8.147824>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.212963, 18.567930, 7.379854> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.401192, 18.908848, 7.471203>,  <18.514130, 19.113400, 7.526012>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.401192, 18.908848, 7.471203>,  <18.212963, 18.567930, 7.379854>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.401192, 18.908848, 7.471203> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.822257, -0.329685, -0.463899,
		-0.320088, 0.406078, -0.855946,
		0.470572, 0.852296, 0.228372,
		18.542364, 19.164537, 7.539714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<14.390481, 20.933508, 14.313533> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.687802, 21.200565, 14.296801>,  <14.866196, 21.360800, 14.286761>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.687802, 21.200565, 14.296801>,  <14.390481, 20.933508, 14.313533>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.687802, 21.200565, 14.296801> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013796, -0.047218, -0.998789,
		-0.668811, 0.742981, -0.025887,
		0.743304, 0.667645, -0.041830,
		14.910793, 21.400858, 14.284252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.208554, 21.486303, 13.793339>,  <14.390481, 20.933508, 14.313533>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.208554, 21.486303, 13.793339> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.603644, 21.529263, 13.838707>,  <14.840698, 21.555038, 13.865928>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.603644, 21.529263, 13.838707>,  <14.208554, 21.486303, 13.793339>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.603644, 21.529263, 13.838707> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088499, 0.213556, -0.972914,
		-0.128713, 0.971009, 0.201430,
		0.987725, 0.107400, 0.113421,
		14.899961, 21.561483, 13.872733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.365546, 22.105772, 13.499233>,  <14.208554, 21.486303, 13.793339>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.365546, 22.105772, 13.499233> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.691766, 21.876019, 13.471046>,  <14.887497, 21.738167, 13.454135>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.691766, 21.876019, 13.471046>,  <14.365546, 22.105772, 13.499233>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.691766, 21.876019, 13.471046> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080884, 0.233715, -0.968935,
		0.573008, 0.784514, 0.237064,
		0.815548, -0.574382, -0.070466,
		14.936430, 21.703703, 13.449906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.637038, 22.254482, 12.679608>,  <14.365546, 22.105772, 13.499233>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.637038, 22.254482, 12.679608> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.883246, 21.979504, 12.833777>,  <15.030972, 21.814516, 12.926279>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.883246, 21.979504, 12.833777>,  <14.637038, 22.254482, 12.679608>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.883246, 21.979504, 12.833777> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408553, -0.139879, -0.901952,
		0.673957, 0.712636, 0.194761,
		0.615520, -0.687448, 0.385423,
		15.067903, 21.773270, 12.949404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.278565, 22.445787, 12.532924>,  <14.637038, 22.254482, 12.679608>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.278565, 22.445787, 12.532924> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.274623, 22.048981, 12.583219>,  <15.272257, 21.810898, 12.613396>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.274623, 22.048981, 12.583219>,  <15.278565, 22.445787, 12.532924>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.274623, 22.048981, 12.583219> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353072, -0.121097, -0.927726,
		0.935544, 0.035250, 0.351446,
		-0.009857, -0.992014, 0.125737,
		15.271666, 21.751377, 12.620940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.970170, 22.161413, 12.230616>,  <15.278565, 22.445787, 12.532924>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.970170, 22.161413, 12.230616> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.687465, 21.880249, 12.198606>,  <15.517841, 21.711552, 12.179399>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.687465, 21.880249, 12.198606>,  <15.970170, 22.161413, 12.230616>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.687465, 21.880249, 12.198606> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355992, -0.255611, -0.898851,
		0.611355, -0.663764, 0.430887,
		-0.706764, -0.702909, -0.080026,
		15.475435, 21.669376, 12.174598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.334080, 21.566046, 11.840120>,  <15.970170, 22.161413, 12.230616>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.334080, 21.566046, 11.840120> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.957541, 21.433678, 11.813710>,  <15.731618, 21.354258, 11.797864>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.957541, 21.433678, 11.813710>,  <16.334080, 21.566046, 11.840120>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.957541, 21.433678, 11.813710> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210851, -0.424073, -0.880741,
		0.263454, -0.843004, 0.468974,
		-0.941347, -0.330919, -0.066025,
		15.675138, 21.334402, 11.793902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.387730, 20.799065, 11.824280>,  <16.334080, 21.566046, 11.840120>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.387730, 20.799065, 11.824280> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.044712, 20.928799, 11.664566>,  <15.838902, 21.006638, 11.568738>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.044712, 20.928799, 11.664566>,  <16.387730, 20.799065, 11.824280>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.044712, 20.928799, 11.664566> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128540, -0.616471, -0.776815,
		-0.498093, -0.717477, 0.486961,
		-0.857543, 0.324332, -0.399284,
		15.787449, 21.026098, 11.544781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.960358, 20.111876, 11.586661>,  <16.387730, 20.799065, 11.824280>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.960358, 20.111876, 11.586661> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.797330, 20.405029, 11.368756>,  <15.699513, 20.580921, 11.238013>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.797330, 20.405029, 11.368756>,  <15.960358, 20.111876, 11.586661>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.797330, 20.405029, 11.368756> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159805, -0.530112, -0.832733,
		-0.899083, -0.426452, 0.098938,
		-0.407569, 0.732885, -0.544764,
		15.675059, 20.624895, 11.205327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.816517, 19.343403, 11.728421>,  <15.960358, 20.111876, 11.586661>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.816517, 19.343403, 11.728421> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.720099, 18.956245, 11.699908>,  <15.662249, 18.723951, 11.682800>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.720099, 18.956245, 11.699908>,  <15.816517, 19.343403, 11.728421>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.720099, 18.956245, 11.699908> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341593, 0.015862, 0.939714,
		-0.908412, 0.250863, -0.334449,
		-0.241044, -0.967893, -0.071284,
		15.647786, 18.665878, 11.678523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.074555, 19.231087, 11.938207>,  <15.816517, 19.343403, 11.728421>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.074555, 19.231087, 11.938207> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.268254, 18.887817, 12.006372>,  <15.384474, 18.681856, 12.047272>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.268254, 18.887817, 12.006372>,  <15.074555, 19.231087, 11.938207>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.268254, 18.887817, 12.006372> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375240, -0.027754, 0.926512,
		-0.790379, -0.512608, -0.335461,
		0.484248, -0.858174, 0.170415,
		15.413528, 18.630365, 12.057497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.658161, 18.768782, 12.343121>,  <15.074555, 19.231087, 11.938207>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.658161, 18.768782, 12.343121> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.017058, 18.599602, 12.393823>,  <15.232397, 18.498095, 12.424244>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.017058, 18.599602, 12.393823>,  <14.658161, 18.768782, 12.343121>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.017058, 18.599602, 12.393823> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214144, -0.165792, 0.962629,
		-0.386130, -0.890857, -0.239328,
		0.897243, -0.422951, 0.126754,
		15.286231, 18.472717, 12.431849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.685046, 18.147247, 12.640270>,  <14.658161, 18.768782, 12.343121>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.685046, 18.147247, 12.640270> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.040490, 18.299679, 12.742368>,  <15.253757, 18.391138, 12.803626>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.040490, 18.299679, 12.742368>,  <14.685046, 18.147247, 12.640270>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.040490, 18.299679, 12.742368> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195357, -0.189033, 0.962342,
		0.414978, -0.905011, -0.093531,
		0.888611, 0.381079, 0.255245,
		15.307074, 18.414001, 12.818941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.814088, 17.858225, 13.249623>,  <14.685046, 18.147247, 12.640270>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.814088, 17.858225, 13.249623> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.138568, 18.091118, 13.271383>,  <15.333256, 18.230854, 13.284439>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.138568, 18.091118, 13.271383>,  <14.814088, 17.858225, 13.249623>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.138568, 18.091118, 13.271383> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037968, -0.145276, 0.988662,
		0.583536, -0.799937, -0.139954,
		0.811199, 0.582233, 0.054401,
		15.381927, 18.265787, 13.287704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.241748, 17.496283, 13.652408>,  <14.814088, 17.858225, 13.249623>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.241748, 17.496283, 13.652408> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.367095, 17.874241, 13.690304>,  <15.442304, 18.101015, 13.713041>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.367095, 17.874241, 13.690304>,  <15.241748, 17.496283, 13.652408>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.367095, 17.874241, 13.690304> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193732, -0.161278, 0.967707,
		0.929661, -0.284894, -0.233596,
		0.313367, 0.944894, 0.094740,
		15.461105, 18.157709, 13.718726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.899509, 17.413866, 13.970126>,  <15.241748, 17.496283, 13.652408>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.899509, 17.413866, 13.970126> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.754855, 17.774490, 14.065130>,  <15.668063, 17.990864, 14.122132>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.754855, 17.774490, 14.065130>,  <15.899509, 17.413866, 13.970126>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.754855, 17.774490, 14.065130> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218289, -0.165793, 0.961698,
		0.906405, 0.399629, -0.136844,
		-0.361634, 0.901559, 0.237510,
		15.646365, 18.044958, 14.136383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.363081, 17.610558, 14.485823>,  <15.899509, 17.413866, 13.970126>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.363081, 17.610558, 14.485823> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.029537, 17.824791, 14.539236>,  <15.829412, 17.953331, 14.571284>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.029537, 17.824791, 14.539236>,  <16.363081, 17.610558, 14.485823>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.029537, 17.824791, 14.539236> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106641, -0.081047, 0.990989,
		0.541581, 0.840584, 0.010467,
		-0.833857, 0.535584, 0.133535,
		15.779380, 17.985466, 14.579296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.502983, 18.116568, 15.039770>,  <16.363081, 17.610558, 14.485823>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.502983, 18.116568, 15.039770> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.105324, 18.159691, 15.042521>,  <15.866728, 18.185564, 15.044170>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.105324, 18.159691, 15.042521>,  <16.502983, 18.116568, 15.039770>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.105324, 18.159691, 15.042521> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025037, 0.168020, 0.985466,
		0.105086, 0.979871, -0.169736,
		-0.994148, 0.107808, 0.006876,
		15.807079, 18.192034, 15.044583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.401150, 18.750475, 15.337129>,  <16.502983, 18.116568, 15.039770>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.401150, 18.750475, 15.337129> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.058071, 18.548618, 15.376505>,  <15.852223, 18.427504, 15.400130>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.058071, 18.548618, 15.376505>,  <16.401150, 18.750475, 15.337129>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.058071, 18.548618, 15.376505> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015419, 0.216620, 0.976134,
		-0.513924, 0.835710, -0.193575,
		-0.857697, -0.504643, 0.098440,
		15.800762, 18.397224, 15.406037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.063791, 19.109301, 15.863009>,  <16.401150, 18.750475, 15.337129>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.063791, 19.109301, 15.863009> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.911990, 18.739243, 15.859354>,  <15.820910, 18.517208, 15.857161>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.911990, 18.739243, 15.859354>,  <16.063791, 19.109301, 15.863009>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.911990, 18.739243, 15.859354> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067945, 0.018018, 0.997526,
		-0.922693, 0.379183, -0.069697,
		-0.379501, -0.925146, -0.009138,
		15.798140, 18.461699, 15.856612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.500805, 19.132032, 16.348436>,  <16.063791, 19.109301, 15.863009>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.500805, 19.132032, 16.348436> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.556861, 18.739788, 16.293648>,  <15.590494, 18.504442, 16.260775>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.556861, 18.739788, 16.293648>,  <15.500805, 19.132032, 16.348436>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.556861, 18.739788, 16.293648> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191145, -0.162530, 0.968012,
		-0.971506, -0.109476, -0.210216,
		0.140141, -0.980612, -0.136974,
		15.598903, 18.445604, 16.252556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.872063, 18.751457, 16.540434>,  <15.500805, 19.132032, 16.348436>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.872063, 18.751457, 16.540434> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.197507, 18.521088, 16.572296>,  <15.392774, 18.382866, 16.591413>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.197507, 18.521088, 16.572296>,  <14.872063, 18.751457, 16.540434>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.197507, 18.521088, 16.572296> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277016, -0.263537, 0.924019,
		-0.511174, -0.773858, -0.373958,
		0.813611, -0.575926, 0.079658,
		15.441590, 18.348310, 16.596193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.568040, 18.214211, 16.919121>,  <14.872063, 18.751457, 16.540434>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.568040, 18.214211, 16.919121> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.966237, 18.192493, 16.950224>,  <15.205155, 18.179462, 16.968885>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.966237, 18.192493, 16.950224>,  <14.568040, 18.214211, 16.919121>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.966237, 18.192493, 16.950224> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090073, -0.284754, 0.954359,
		-0.029673, -0.957062, -0.288361,
		0.995493, -0.054293, 0.077756,
		15.264885, 18.176207, 16.973551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<20.407484, 21.053400, 16.632191> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.034706, 20.909241, 16.648176>,  <19.811039, 20.822746, 16.657766>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.034706, 20.909241, 16.648176>,  <20.407484, 21.053400, 16.632191>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.034706, 20.909241, 16.648176> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058961, -0.259354, -0.963981,
		0.357780, -0.896019, 0.262953,
		-0.931943, -0.360397, 0.039962,
		19.755123, 20.801123, 16.660164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.439930, 20.417679, 16.328827>,  <20.407484, 21.053400, 16.632191>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.439930, 20.417679, 16.328827> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.048786, 20.501308, 16.332298>,  <19.814100, 20.551487, 16.334381>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.048786, 20.501308, 16.332298>,  <20.439930, 20.417679, 16.328827>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.048786, 20.501308, 16.332298> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059934, -0.240102, -0.968896,
		-0.200482, -0.947967, 0.247318,
		-0.977862, 0.209069, 0.008679,
		19.755428, 20.564032, 16.334902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.980162, 19.774632, 16.157974>,  <20.439930, 20.417679, 16.328827>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.980162, 19.774632, 16.157974> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.757740, 20.099487, 16.087282>,  <19.624287, 20.294401, 16.044867>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.757740, 20.099487, 16.087282>,  <19.980162, 19.774632, 16.157974>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.757740, 20.099487, 16.087282> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127621, -0.293539, -0.947390,
		-0.821290, -0.504245, 0.266870,
		-0.556054, 0.812140, -0.176728,
		19.590923, 20.343130, 16.034264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.328442, 19.566441, 15.806737>,  <19.980162, 19.774632, 16.157974>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.328442, 19.566441, 15.806737> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.387371, 19.951199, 15.714600>,  <19.422729, 20.182053, 15.659317>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.387371, 19.951199, 15.714600>,  <19.328442, 19.566441, 15.806737>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.387371, 19.951199, 15.714600> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159857, -0.206667, -0.965264,
		-0.976085, 0.179028, 0.123318,
		0.147323, 0.961893, -0.230343,
		19.431568, 20.239767, 15.645496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.017172, 19.592001, 15.217559>,  <19.328442, 19.566441, 15.806737>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.017172, 19.592001, 15.217559> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.188976, 19.953148, 15.225071>,  <19.292059, 20.169836, 15.229578>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.188976, 19.953148, 15.225071>,  <19.017172, 19.592001, 15.217559>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.188976, 19.953148, 15.225071> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003194, 0.019276, -0.999809,
		-0.903057, 0.429487, 0.005396,
		0.429509, 0.902867, 0.018779,
		19.317829, 20.224009, 15.230704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.649950, 20.070076, 14.653747>,  <19.017172, 19.592001, 15.217559>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.649950, 20.070076, 14.653747> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.022854, 20.194283, 14.728014>,  <19.246595, 20.268806, 14.772574>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.022854, 20.194283, 14.728014>,  <18.649950, 20.070076, 14.653747>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.022854, 20.194283, 14.728014> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125074, 0.204940, -0.970750,
		-0.339484, 0.928213, 0.152220,
		0.932259, 0.310515, 0.185669,
		19.302532, 20.287437, 14.783714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.676649, 20.690031, 14.290030>,  <18.649950, 20.070076, 14.653747>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.676649, 20.690031, 14.290030> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.046242, 20.554539, 14.361048>,  <19.267998, 20.473244, 14.403658>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.046242, 20.554539, 14.361048>,  <18.676649, 20.690031, 14.290030>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.046242, 20.554539, 14.361048> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193614, 0.013961, -0.980979,
		0.329807, 0.940781, 0.078482,
		0.923981, -0.338729, 0.177544,
		19.323437, 20.452921, 14.414310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.966166, 20.764557, 13.611765>,  <18.676649, 20.690031, 14.290030>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.966166, 20.764557, 13.611765> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.248161, 20.547672, 13.794628>,  <19.417358, 20.417542, 13.904346>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.248161, 20.547672, 13.794628>,  <18.966166, 20.764557, 13.611765>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.248161, 20.547672, 13.794628> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374322, -0.263030, -0.889212,
		0.602388, 0.798011, 0.017529,
		0.704990, -0.542212, 0.457159,
		19.459658, 20.385008, 13.931776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.564476, 20.929050, 13.180094>,  <18.966166, 20.764557, 13.611765>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.564476, 20.929050, 13.180094> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.599728, 20.594040, 13.395792>,  <19.620878, 20.393034, 13.525211>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.599728, 20.594040, 13.395792>,  <19.564476, 20.929050, 13.180094>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.599728, 20.594040, 13.395792> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302170, -0.493365, -0.815650,
		0.949171, 0.234828, 0.209594,
		0.088131, -0.837524, 0.539246,
		19.626167, 20.342783, 13.557566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.229362, 20.598022, 13.062868>,  <19.564476, 20.929050, 13.180094>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.229362, 20.598022, 13.062868> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.990223, 20.307041, 13.197561>,  <19.846739, 20.132452, 13.278378>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.990223, 20.307041, 13.197561>,  <20.229362, 20.598022, 13.062868>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.990223, 20.307041, 13.197561> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216274, -0.550872, -0.806081,
		0.771882, -0.409088, 0.486667,
		-0.597849, -0.727453, 0.336733,
		19.810867, 20.088806, 13.298581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.615913, 20.065351, 12.974180>,  <20.229362, 20.598022, 13.062868>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.615913, 20.065351, 12.974180> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.235821, 19.942387, 12.994413>,  <20.007765, 19.868607, 13.006554>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.235821, 19.942387, 12.994413>,  <20.615913, 20.065351, 12.974180>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.235821, 19.942387, 12.994413> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153824, -0.604131, -0.781898,
		0.270925, -0.735202, 0.621351,
		-0.950231, -0.307414, 0.050583,
		19.950752, 19.850163, 13.009588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.652863, 19.554159, 12.652378>,  <20.615913, 20.065351, 12.974180>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.652863, 19.554159, 12.652378> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.256187, 19.603199, 12.636756>,  <20.018183, 19.632622, 12.627382>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.256187, 19.603199, 12.636756>,  <20.652863, 19.554159, 12.652378>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.256187, 19.603199, 12.636756> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033448, -0.538732, -0.841813,
		-0.124245, -0.833509, 0.538354,
		-0.991688, 0.122598, -0.039055,
		19.958681, 19.639978, 12.625039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.309446, 18.834723, 12.666828>,  <20.652863, 19.554159, 12.652378>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.309446, 18.834723, 12.666828> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.062386, 19.097504, 12.493890>,  <19.914150, 19.255173, 12.390127>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.062386, 19.097504, 12.493890>,  <20.309446, 18.834723, 12.666828>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.062386, 19.097504, 12.493890> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034657, -0.571942, -0.819561,
		-0.785690, -0.491218, 0.376028,
		-0.617649, 0.656953, -0.432345,
		19.877090, 19.294590, 12.364186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.842043, 18.351583, 12.366791>,  <20.309446, 18.834723, 12.666828>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.842043, 18.351583, 12.366791> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.825668, 18.716022, 12.202728>,  <19.815844, 18.934685, 12.104291>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.825668, 18.716022, 12.202728>,  <19.842043, 18.351583, 12.366791>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.825668, 18.716022, 12.202728> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014183, -0.410988, -0.911530,
		-0.999061, -0.031498, 0.029746,
		-0.040936, 0.911096, -0.410155,
		19.813387, 18.989351, 12.079681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.782547, 17.675013, 12.366572>,  <19.842043, 18.351583, 12.366791>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.782547, 17.675013, 12.366572> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.070328, 17.397449, 12.354716>,  <20.242996, 17.230911, 12.347603>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.070328, 17.397449, 12.354716>,  <19.782547, 17.675013, 12.366572>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.070328, 17.397449, 12.354716> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065111, 0.024898, 0.997567,
		-0.691484, -0.719631, 0.063094,
		0.719452, -0.693910, -0.029640,
		20.286163, 17.189276, 12.345824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.513918, 17.120375, 12.904879>,  <19.782547, 17.675013, 12.366572>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.513918, 17.120375, 12.904879> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.908665, 17.092068, 12.846790>,  <20.145512, 17.075083, 12.811937>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.908665, 17.092068, 12.846790>,  <19.513918, 17.120375, 12.904879>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.908665, 17.092068, 12.846790> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141866, -0.050356, 0.988604,
		-0.077278, -0.996221, -0.039655,
		0.986865, -0.070772, -0.145221,
		20.204723, 17.070837, 12.803225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.712952, 16.763657, 13.392216>,  <19.513918, 17.120375, 12.904879>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.712952, 16.763657, 13.392216> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.062641, 16.939285, 13.309319>,  <20.272455, 17.044662, 13.259580>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.062641, 16.939285, 13.309319>,  <19.712952, 16.763657, 13.392216>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.062641, 16.939285, 13.309319> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263498, -0.070538, 0.962077,
		0.407804, -0.895678, -0.177361,
		0.874223, 0.439073, -0.207244,
		20.324907, 17.071007, 13.247146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.128887, 16.346712, 13.713175>,  <19.712952, 16.763657, 13.392216>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.128887, 16.346712, 13.713175> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.330086, 16.689278, 13.666611>,  <20.450806, 16.894817, 13.638673>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.330086, 16.689278, 13.666611>,  <20.128887, 16.346712, 13.713175>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.330086, 16.689278, 13.666611> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251776, -0.016346, 0.967647,
		0.826804, -0.516032, -0.223846,
		0.502996, 0.856414, -0.116410,
		20.480984, 16.946201, 13.631688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.683134, 16.247755, 14.136353>,  <20.128887, 16.346712, 13.713175>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.683134, 16.247755, 14.136353> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.667465, 16.645565, 14.097601>,  <20.658064, 16.884251, 14.074349>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.667465, 16.645565, 14.097601>,  <20.683134, 16.247755, 14.136353>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.667465, 16.645565, 14.097601> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178609, 0.102362, 0.978581,
		0.983140, 0.021030, -0.181641,
		-0.039173, 0.994525, -0.096880,
		20.655714, 16.943922, 14.068537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.218029, 16.615805, 14.531185>,  <20.683134, 16.247755, 14.136353>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.218029, 16.615805, 14.531185> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.010239, 16.953827, 14.480545>,  <20.885565, 17.156639, 14.450161>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.010239, 16.953827, 14.480545>,  <21.218029, 16.615805, 14.531185>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.010239, 16.953827, 14.480545> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307072, 0.322883, 0.895239,
		0.797403, 0.426180, -0.427223,
		-0.519476, 0.845054, -0.126600,
		20.854395, 17.207344, 14.442565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.514597, 17.024418, 14.928084>,  <21.218029, 16.615805, 14.531185>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.514597, 17.024418, 14.928084> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.164631, 17.208447, 14.867609>,  <20.954651, 17.318863, 14.831324>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.164631, 17.208447, 14.867609>,  <21.514597, 17.024418, 14.928084>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.164631, 17.208447, 14.867609> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053689, 0.218119, 0.974444,
		0.481291, 0.860673, -0.166135,
		-0.874915, 0.460072, -0.151188,
		20.902157, 17.346468, 14.822252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.564072, 17.707287, 15.092634>,  <21.514597, 17.024418, 14.928084>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.564072, 17.707287, 15.092634> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.180885, 17.599056, 15.130777>,  <20.950974, 17.534119, 15.153664>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.180885, 17.599056, 15.130777>,  <21.564072, 17.707287, 15.092634>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.180885, 17.599056, 15.130777> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015360, 0.283539, 0.958838,
		-0.286476, 0.919997, -0.267465,
		-0.957964, -0.270576, 0.095358,
		20.893496, 17.517883, 15.159385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.177660, 18.184496, 15.549249>,  <21.564072, 17.707287, 15.092634>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.177660, 18.184496, 15.549249> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.910866, 17.886524, 15.555044>,  <20.750790, 17.707741, 15.558521>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.910866, 17.886524, 15.555044>,  <21.177660, 18.184496, 15.549249>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.910866, 17.886524, 15.555044> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207526, 0.204418, 0.956633,
		-0.715585, 0.635054, -0.290936,
		-0.666986, -0.744929, 0.014488,
		20.710770, 17.663046, 15.559391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.615459, 18.424564, 15.954013>,  <21.177660, 18.184496, 15.549249>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.615459, 18.424564, 15.954013> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.550892, 18.029858, 15.960186>,  <20.512152, 17.793034, 15.963890>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.550892, 18.029858, 15.960186>,  <20.615459, 18.424564, 15.954013>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.550892, 18.029858, 15.960186> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409269, 0.081163, 0.908797,
		-0.898021, 0.140382, -0.416954,
		-0.161420, -0.986765, 0.015432,
		20.502466, 17.733828, 15.964815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.964859, 18.260014, 16.263613>,  <20.615459, 18.424564, 15.954013>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.964859, 18.260014, 16.263613> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.163601, 17.918140, 16.323820>,  <20.282846, 17.713017, 16.359945>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.163601, 17.918140, 16.323820>,  <19.964859, 18.260014, 16.263613>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.163601, 17.918140, 16.323820> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286288, 0.002310, 0.958141,
		-0.819253, -0.519147, -0.243538,
		0.496854, -0.854682, 0.150518,
		20.312656, 17.661736, 16.368975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.570082, 17.886995, 16.693556>,  <19.964859, 18.260014, 16.263613>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.570082, 17.886995, 16.693556> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.919403, 17.697189, 16.737700>,  <20.128996, 17.583305, 16.764185>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.919403, 17.697189, 16.737700>,  <19.570082, 17.886995, 16.693556>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.919403, 17.697189, 16.737700> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145269, -0.037416, 0.988684,
		-0.465016, -0.879452, -0.101608,
		0.873303, -0.474514, 0.110358,
		20.181395, 17.554834, 16.770807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.481365, 17.134441, 16.911068>,  <19.570082, 17.886995, 16.693556>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.481365, 17.134441, 16.911068> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.834167, 17.278652, 17.032450>,  <20.045849, 17.365179, 17.105280>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.834167, 17.278652, 17.032450>,  <19.481365, 17.134441, 16.911068>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.834167, 17.278652, 17.032450> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282073, -0.111933, 0.952841,
		0.377492, -0.926008, 0.002969,
		0.882006, 0.360527, 0.303455,
		20.098770, 17.386810, 17.123486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.569033, 16.885592, 17.691174>,  <19.481365, 17.134441, 16.911068>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.569033, 16.885592, 17.691174> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.854530, 17.161106, 17.640356>,  <20.025829, 17.326414, 17.609865>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.854530, 17.161106, 17.640356>,  <19.569033, 16.885592, 17.691174>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.854530, 17.161106, 17.640356> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080940, 0.261286, 0.961862,
		0.695712, -0.676242, 0.242242,
		0.713746, 0.688786, -0.127044,
		20.068655, 17.367743, 17.602243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.650036, 16.192595, 17.996292>,  <19.569033, 16.885592, 17.691174>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.650036, 16.192595, 17.996292> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.276371, 16.049900, 17.999882>,  <19.052172, 15.964284, 18.002035>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.276371, 16.049900, 17.999882>,  <19.650036, 16.192595, 17.996292>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.276371, 16.049900, 17.999882> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113553, -0.321007, -0.940245,
		0.338298, -0.877323, 0.340382,
		-0.934163, -0.356734, 0.008973,
		18.996122, 15.942880, 18.002573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.641474, 15.471309, 17.705368>,  <19.650036, 16.192595, 17.996292>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.641474, 15.471309, 17.705368> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.266685, 15.603603, 17.660290>,  <19.041813, 15.682980, 17.633244>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.266685, 15.603603, 17.660290>,  <19.641474, 15.471309, 17.705368>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.266685, 15.603603, 17.660290> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014383, -0.285749, -0.958197,
		-0.349115, -0.899422, 0.262981,
		-0.936970, 0.330738, -0.112695,
		18.985594, 15.702824, 17.626482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.291967, 14.931914, 17.356274>,  <19.641474, 15.471309, 17.705368>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.291967, 14.931914, 17.356274> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.037552, 15.236694, 17.307463>,  <18.884903, 15.419562, 17.278177>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.037552, 15.236694, 17.307463>,  <19.291967, 14.931914, 17.356274>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.037552, 15.236694, 17.307463> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209955, -0.323046, -0.922800,
		-0.742547, -0.561315, 0.365444,
		-0.636037, 0.761949, -0.122025,
		18.846741, 15.465280, 17.270855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.526571, 14.684734, 17.142473>,  <19.291967, 14.931914, 17.356274>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.526571, 14.684734, 17.142473> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.548641, 15.065117, 17.020727>,  <18.561884, 15.293346, 16.947680>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.548641, 15.065117, 17.020727>,  <18.526571, 14.684734, 17.142473>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.548641, 15.065117, 17.020727> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284376, -0.277238, -0.917752,
		-0.957124, 0.137192, 0.255132,
		0.055177, 0.950956, -0.304365,
		18.565193, 15.350404, 16.929417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.909847, 14.815471, 16.677044>,  <18.526571, 14.684734, 17.142473>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.909847, 14.815471, 16.677044> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.162201, 15.110844, 16.581795>,  <18.313614, 15.288067, 16.524645>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.162201, 15.110844, 16.581795>,  <17.909847, 14.815471, 16.677044>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.162201, 15.110844, 16.581795> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176497, -0.162274, -0.970833,
		-0.755534, 0.654512, 0.027954,
		0.630886, 0.738431, -0.238122,
		18.351467, 15.332373, 16.510359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.620575, 15.278568, 16.127188>,  <17.909847, 14.815471, 16.677044>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.620575, 15.278568, 16.127188> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.020256, 15.294029, 16.123283>,  <18.260065, 15.303306, 16.120941>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.020256, 15.294029, 16.123283>,  <17.620575, 15.278568, 16.127188>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.020256, 15.294029, 16.123283> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006019, -0.095714, -0.995391,
		-0.039408, 0.994658, -0.095406,
		0.999205, 0.038652, -0.009759,
		18.320017, 15.305625, 16.120356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.767864, 15.686810, 15.523681>,  <17.620575, 15.278568, 16.127188>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.767864, 15.686810, 15.523681> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.100491, 15.488022, 15.622890>,  <18.300066, 15.368750, 15.682417>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.100491, 15.488022, 15.622890>,  <17.767864, 15.686810, 15.523681>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.100491, 15.488022, 15.622890> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137775, -0.248030, -0.958905,
		0.538064, 0.831566, -0.137784,
		0.831568, -0.496969, 0.248025,
		18.349960, 15.338931, 15.697298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.229918, 15.758532, 15.023282>,  <17.767864, 15.686810, 15.523681>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.229918, 15.758532, 15.023282> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.369457, 15.427567, 15.199324>,  <18.453182, 15.228988, 15.304949>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.369457, 15.427567, 15.199324>,  <18.229918, 15.758532, 15.023282>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.369457, 15.427567, 15.199324> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191733, -0.396661, -0.897719,
		0.917356, 0.397552, 0.020267,
		0.348851, -0.827413, 0.440103,
		18.474112, 15.179342, 15.331354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.693810, 15.523408, 14.471638>,  <18.229918, 15.758532, 15.023282>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.693810, 15.523408, 14.471638> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.647816, 15.209064, 14.714687>,  <18.620220, 15.020458, 14.860517>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.647816, 15.209064, 14.714687>,  <18.693810, 15.523408, 14.471638>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.647816, 15.209064, 14.714687> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246907, -0.615094, -0.748796,
		0.962193, 0.063927, 0.264760,
		-0.114985, -0.785858, 0.607623,
		18.613319, 14.973307, 14.896975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.135517, 14.942800, 14.140158>,  <18.693810, 15.523408, 14.471638>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.135517, 14.942800, 14.140158> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.877590, 14.760395, 14.385519>,  <18.722834, 14.650952, 14.532736>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.877590, 14.760395, 14.385519>,  <19.135517, 14.942800, 14.140158>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.877590, 14.760395, 14.385519> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080789, -0.757373, -0.647966,
		0.760056, -0.467375, 0.451526,
		-0.644816, -0.456012, 0.613405,
		18.684145, 14.623591, 14.569540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.363298, 14.295987, 14.188555>,  <19.135517, 14.942800, 14.140158>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.363298, 14.295987, 14.188555> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.972893, 14.284504, 14.274878>,  <18.738649, 14.277614, 14.326671>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.972893, 14.284504, 14.274878>,  <19.363298, 14.295987, 14.188555>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.972893, 14.284504, 14.274878> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132696, -0.707402, -0.694244,
		0.172593, -0.706229, 0.686624,
		-0.976014, -0.028709, 0.215806,
		18.680088, 14.275891, 14.339620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.111561, 13.582203, 14.024263>,  <19.363298, 14.295987, 14.188555>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.111561, 13.582203, 14.024263> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.786594, 13.815201, 14.034687>,  <18.591614, 13.955000, 14.040941>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.786594, 13.815201, 14.034687>,  <19.111561, 13.582203, 14.024263>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.786594, 13.815201, 14.034687> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323844, -0.413604, -0.850915,
		-0.484878, -0.699734, 0.524656,
		-0.812415, 0.582497, 0.026057,
		18.542870, 13.989949, 14.042504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.597622, 13.130361, 13.765984>,  <19.111561, 13.582203, 14.024263>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.597622, 13.130361, 13.765984> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.449764, 13.496902, 13.704458>,  <18.361050, 13.716827, 13.667542>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.449764, 13.496902, 13.704458>,  <18.597622, 13.130361, 13.765984>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.449764, 13.496902, 13.704458> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380984, -0.300456, -0.874401,
		-0.847476, -0.264616, 0.460178,
		-0.369644, 0.916354, -0.153815,
		18.338871, 13.771809, 13.658314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.915503, 12.964622, 13.575732>,  <18.597622, 13.130361, 13.765984>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.915503, 12.964622, 13.575732> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.981220, 13.333889, 13.436728>,  <18.020651, 13.555449, 13.353325>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.981220, 13.333889, 13.436728>,  <17.915503, 12.964622, 13.575732>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.981220, 13.333889, 13.436728> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291150, -0.291220, -0.911275,
		-0.942464, 0.250895, 0.220935,
		0.164294, 0.923170, -0.347513,
		18.030508, 13.610840, 13.332474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<15.514633, 17.039423, 17.637691> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.697230, 17.385498, 17.554684>,  <15.806788, 17.593143, 17.504879>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.697230, 17.385498, 17.554684>,  <15.514633, 17.039423, 17.637691>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.697230, 17.385498, 17.554684> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363703, 0.031402, 0.930985,
		0.811994, -0.500464, -0.300337,
		0.456493, 0.865188, -0.207519,
		15.834178, 17.645054, 17.492428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.214035, 17.084469, 17.955843>,  <15.514633, 17.039423, 17.637691>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.214035, 17.084469, 17.955843> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.087109, 17.461304, 17.912430>,  <16.010952, 17.687405, 17.886381>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.087109, 17.461304, 17.912430>,  <16.214035, 17.084469, 17.955843>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.087109, 17.461304, 17.912430> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272396, 0.200172, 0.941133,
		0.908356, 0.269072, -0.320139,
		-0.317316, 0.942089, -0.108534,
		15.991914, 17.743931, 17.879869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.698874, 17.402475, 18.361549>,  <16.214035, 17.084469, 17.955843>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.698874, 17.402475, 18.361549> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.405960, 17.669827, 18.309347>,  <16.230211, 17.830236, 18.278027>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.405960, 17.669827, 18.309347>,  <16.698874, 17.402475, 18.361549>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.405960, 17.669827, 18.309347> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081812, 0.276594, 0.957498,
		0.676067, 0.690484, -0.257226,
		-0.732284, 0.668377, -0.130506,
		16.186275, 17.870340, 18.270195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.999537, 17.993910, 18.587025>,  <16.698874, 17.402475, 18.361549>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.999537, 17.993910, 18.587025> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.606441, 18.061417, 18.617342>,  <16.370584, 18.101921, 18.635532>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.606441, 18.061417, 18.617342>,  <16.999537, 17.993910, 18.587025>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.606441, 18.061417, 18.617342> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140781, 0.416384, 0.898223,
		0.120031, 0.893388, -0.432956,
		-0.982738, 0.168767, 0.075793,
		16.311621, 18.112047, 18.640079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.906796, 18.691063, 18.847469>,  <16.999537, 17.993910, 18.587025>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.906796, 18.691063, 18.847469> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.557899, 18.508980, 18.919003>,  <16.348562, 18.399731, 18.961924>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.557899, 18.508980, 18.919003>,  <16.906796, 18.691063, 18.847469>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.557899, 18.508980, 18.919003> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041621, 0.295244, 0.954515,
		-0.487301, 0.840011, -0.238578,
		-0.872241, -0.455207, 0.178835,
		16.296227, 18.372417, 18.972652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.485428, 19.166569, 19.169006>,  <16.906796, 18.691063, 18.847469>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.485428, 19.166569, 19.169006> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.295387, 18.828484, 19.266897>,  <16.181362, 18.625631, 19.325632>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.295387, 18.828484, 19.266897>,  <16.485428, 19.166569, 19.169006>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.295387, 18.828484, 19.266897> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058748, 0.247030, 0.967225,
		-0.877967, 0.473909, -0.067710,
		-0.475103, -0.845214, 0.244725,
		16.152857, 18.574919, 19.340315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.029001, 19.432415, 19.597147>,  <16.485428, 19.166569, 19.169006>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.029001, 19.432415, 19.597147> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.057659, 19.039604, 19.666994>,  <16.074854, 18.803917, 19.708902>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.057659, 19.039604, 19.666994>,  <16.029001, 19.432415, 19.597147>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.057659, 19.039604, 19.666994> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047125, 0.178205, 0.982864,
		-0.996317, -0.062187, 0.059045,
		0.071643, -0.982026, 0.174618,
		16.079153, 18.744997, 19.719379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.501352, 19.259716, 20.097517>,  <16.029001, 19.432415, 19.597147>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.501352, 19.259716, 20.097517> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.784404, 18.979916, 20.137440>,  <15.954235, 18.812037, 20.161394>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.784404, 18.979916, 20.137440>,  <15.501352, 19.259716, 20.097517>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.784404, 18.979916, 20.137440> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015576, 0.156661, 0.987530,
		-0.706413, -0.697249, 0.121753,
		0.707629, -0.699500, 0.099807,
		15.996693, 18.770065, 20.167381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.320338, 19.018337, 20.697695>,  <15.501352, 19.259716, 20.097517>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.320338, 19.018337, 20.697695> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.694201, 18.883293, 20.653091>,  <15.918519, 18.802267, 20.626329>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.694201, 18.883293, 20.653091>,  <15.320338, 19.018337, 20.697695>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.694201, 18.883293, 20.653091> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135373, 0.047905, 0.989636,
		-0.328768, -0.940067, 0.090478,
		0.934658, -0.337609, -0.111510,
		15.974599, 18.782011, 20.619638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.412529, 18.539557, 21.271072>,  <15.320338, 19.018337, 20.697695>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.412529, 18.539557, 21.271072> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.775897, 18.645229, 21.141470>,  <15.993917, 18.708633, 21.063707>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.775897, 18.645229, 21.141470>,  <15.412529, 18.539557, 21.271072>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.775897, 18.645229, 21.141470> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294572, 0.145462, 0.944494,
		0.296649, -0.953441, 0.054320,
		0.908420, 0.264182, -0.324008,
		16.048424, 18.724483, 21.044268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.859318, 18.193348, 21.642628>,  <15.412529, 18.539557, 21.271072>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.859318, 18.193348, 21.642628> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.092258, 18.493389, 21.517271>,  <16.232023, 18.673414, 21.442057>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.092258, 18.493389, 21.517271>,  <15.859318, 18.193348, 21.642628>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.092258, 18.493389, 21.517271> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343184, 0.122629, 0.931229,
		0.736947, -0.649853, -0.186010,
		0.582352, 0.750102, -0.313391,
		16.266964, 18.718420, 21.423254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.496086, 18.117744, 21.970280>,  <15.859318, 18.193348, 21.642628>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.496086, 18.117744, 21.970280> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.484535, 18.504650, 21.869431>,  <16.477604, 18.736794, 21.808920>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.484535, 18.504650, 21.869431>,  <16.496086, 18.117744, 21.970280>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.484535, 18.504650, 21.869431> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258109, 0.250891, 0.932970,
		0.965684, -0.038134, -0.256905,
		-0.028877, 0.967264, -0.252125,
		16.475872, 18.794828, 21.793793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.136860, 18.401749, 22.296156>,  <16.496086, 18.117744, 21.970280>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.136860, 18.401749, 22.296156> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.872051, 18.692627, 22.223591>,  <16.713165, 18.867153, 22.180052>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.872051, 18.692627, 22.223591>,  <17.136860, 18.401749, 22.296156>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.872051, 18.692627, 22.223591> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176345, 0.386389, 0.905321,
		0.728442, 0.567353, -0.384036,
		-0.662024, 0.727196, -0.181412,
		16.673445, 18.910786, 22.169167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.542763, 18.035822, 22.829157>,  <17.136860, 18.401749, 22.296156>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.542763, 18.035822, 22.829157> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.710007, 17.735065, 22.625257>,  <17.810352, 17.554611, 22.502918>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.710007, 17.735065, 22.625257>,  <17.542763, 18.035822, 22.829157>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.710007, 17.735065, 22.625257> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.634838, 0.159517, -0.755999,
		0.649742, 0.639700, -0.410633,
		0.418110, -0.751890, -0.509751,
		17.835440, 17.509499, 22.472332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.291538, 18.078753, 22.816442>,  <17.542763, 18.035822, 22.829157>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.291538, 18.078753, 22.816442> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.629585, 17.916168, 22.955330>,  <18.832415, 17.818617, 23.038662>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.629585, 17.916168, 22.955330>,  <18.291538, 18.078753, 22.816442>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.629585, 17.916168, 22.955330> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043877, -0.700071, -0.712724,
		0.532774, 0.587102, -0.609478,
		0.845119, -0.406463, 0.347219,
		18.883121, 17.794230, 23.059496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.741592, 17.974928, 22.277620>,  <18.291538, 18.078753, 22.816442>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.741592, 17.974928, 22.277620> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.871307, 17.708981, 22.546778>,  <18.949137, 17.549412, 22.708273>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.871307, 17.708981, 22.546778>,  <18.741592, 17.974928, 22.277620>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.871307, 17.708981, 22.546778> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032471, -0.703093, -0.710357,
		0.945401, 0.252210, -0.206416,
		0.324289, -0.664869, 0.672894,
		18.968594, 17.509520, 22.748646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.233900, 17.687481, 21.911381>,  <18.741592, 17.974928, 22.277620>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.233900, 17.687481, 21.911381> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.191597, 17.413429, 22.199661>,  <19.166216, 17.248999, 22.372629>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.191597, 17.413429, 22.199661>,  <19.233900, 17.687481, 21.911381>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.191597, 17.413429, 22.199661> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055831, -0.727715, -0.683604,
		0.992823, -0.032058, 0.115213,
		-0.105757, -0.685131, 0.720702,
		19.159870, 17.207890, 22.415873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.727360, 17.118818, 21.790653>,  <19.233900, 17.687481, 21.911381>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.727360, 17.118818, 21.790653> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.416748, 16.975319, 21.997847>,  <19.230381, 16.889219, 22.122162>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.416748, 16.975319, 21.997847>,  <19.727360, 17.118818, 21.790653>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.416748, 16.975319, 21.997847> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003788, -0.824728, -0.565518,
		0.630071, -0.437179, 0.641783,
		-0.776529, -0.358747, 0.517981,
		19.183790, 16.867695, 22.153240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.840183, 16.428005, 21.644415>,  <19.727360, 17.118818, 21.790653>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.840183, 16.428005, 21.644415> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.469688, 16.444427, 21.794294>,  <19.247391, 16.454281, 21.884222>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.469688, 16.444427, 21.794294>,  <19.840183, 16.428005, 21.644415>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.469688, 16.444427, 21.794294> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298408, -0.687204, -0.662347,
		0.230302, -0.725304, 0.648765,
		-0.926236, 0.041056, 0.374701,
		19.191818, 16.456745, 21.906704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.528646, 15.697350, 21.820328>,  <19.840183, 16.428005, 21.644415>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.528646, 15.697350, 21.820328> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.244362, 15.965260, 21.734268>,  <19.073792, 16.126005, 21.682632>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.244362, 15.965260, 21.734268>,  <19.528646, 15.697350, 21.820328>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.244362, 15.965260, 21.734268> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181908, -0.470403, -0.863499,
		-0.679556, -0.574563, 0.456159,
		-0.710713, 0.669775, -0.215148,
		19.031147, 16.166191, 21.669724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.069117, 15.325065, 21.365910>,  <19.528646, 15.697350, 21.820328>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.069117, 15.325065, 21.365910> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.922894, 15.692440, 21.305462>,  <18.835159, 15.912866, 21.269194>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.922894, 15.692440, 21.305462>,  <19.069117, 15.325065, 21.365910>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.922894, 15.692440, 21.305462> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492911, -0.328741, -0.805586,
		-0.789561, -0.219998, 0.572882,
		-0.365557, 0.918439, -0.151122,
		18.813227, 15.967972, 21.260126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.303524, 15.276417, 21.199009>,  <19.069117, 15.325065, 21.365910>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.303524, 15.276417, 21.199009> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.470230, 15.601082, 21.035297>,  <18.570253, 15.795881, 20.937069>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.470230, 15.601082, 21.035297>,  <18.303524, 15.276417, 21.199009>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.470230, 15.601082, 21.035297> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217447, -0.348158, -0.911868,
		-0.882624, 0.469030, 0.031394,
		0.416764, 0.811663, -0.409281,
		18.595259, 15.844581, 20.912514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.996229, 15.386418, 20.545248>,  <18.303524, 15.276417, 21.199009>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.996229, 15.386418, 20.545248> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.269669, 15.672260, 20.485876>,  <18.433733, 15.843765, 20.450253>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.269669, 15.672260, 20.485876>,  <17.996229, 15.386418, 20.545248>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.269669, 15.672260, 20.485876> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116285, -0.094131, -0.988745,
		-0.720535, 0.693165, 0.018750,
		0.683599, 0.714606, -0.148429,
		18.474749, 15.886642, 20.441347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.656511, 15.891582, 20.074369>,  <17.996229, 15.386418, 20.545248>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.656511, 15.891582, 20.074369> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.047630, 15.957527, 20.022633>,  <18.282303, 15.997094, 19.991590>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.047630, 15.957527, 20.022633>,  <17.656511, 15.891582, 20.074369>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.047630, 15.957527, 20.022633> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129593, -0.009290, -0.991524,
		-0.164667, 0.986273, 0.012281,
		0.977799, 0.164863, -0.129344,
		18.340969, 16.006987, 19.983829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.718426, 16.423964, 19.603363>,  <17.656511, 15.891582, 20.074369>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.718426, 16.423964, 19.603363> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.065804, 16.228371, 19.570616>,  <18.274229, 16.111015, 19.550968>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.065804, 16.228371, 19.570616>,  <17.718426, 16.423964, 19.603363>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.065804, 16.228371, 19.570616> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078922, 0.026672, -0.996524,
		0.489468, 0.871885, -0.015428,
		0.868442, -0.488984, -0.081866,
		18.326336, 16.081675, 19.546057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.241083, 16.795620, 19.160618>,  <17.718426, 16.423964, 19.603363>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.241083, 16.795620, 19.160618> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.363640, 16.414928, 19.167942>,  <18.437174, 16.186514, 19.172337>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.363640, 16.414928, 19.167942>,  <18.241083, 16.795620, 19.160618>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.363640, 16.414928, 19.167942> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054374, -0.001704, -0.998519,
		0.950351, 0.306934, 0.051227,
		0.306392, -0.951729, 0.018309,
		18.455557, 16.129410, 19.173435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.676149, 16.849510, 18.615309>,  <18.241083, 16.795620, 19.160618>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.676149, 16.849510, 18.615309> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.653912, 16.457821, 18.693316>,  <18.640570, 16.222807, 18.740120>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.653912, 16.457821, 18.693316>,  <18.676149, 16.849510, 18.615309>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.653912, 16.457821, 18.693316> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129928, -0.200753, -0.970988,
		0.989964, -0.028642, 0.138389,
		-0.055593, -0.979223, 0.195017,
		18.637234, 16.164055, 18.751822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.216717, 16.722410, 18.422287>,  <18.676149, 16.849510, 18.615309>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.216717, 16.722410, 18.422287> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.990868, 16.392715, 18.405167>,  <18.855358, 16.194899, 18.394894>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.990868, 16.392715, 18.405167>,  <19.216717, 16.722410, 18.422287>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.990868, 16.392715, 18.405167> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180335, -0.072597, -0.980922,
		0.805407, -0.561569, 0.189629,
		-0.564622, -0.824239, -0.042801,
		18.821482, 16.145443, 18.392326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.923162, 16.931280, 18.370148>,  <19.216717, 16.722410, 18.422287>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.923162, 16.931280, 18.370148> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.048710, 17.257179, 18.175142>,  <20.124039, 17.452719, 18.058140>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.048710, 17.257179, 18.175142>,  <19.923162, 16.931280, 18.370148>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.048710, 17.257179, 18.175142> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009727, 0.510674, 0.859719,
		0.949417, -0.274581, 0.152360,
		0.313869, 0.814750, -0.487513,
		20.142870, 17.501604, 18.028889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.571066, 17.106451, 18.749744>,  <19.923162, 16.931280, 18.370148>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.571066, 17.106451, 18.749744> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.405769, 17.423809, 18.570967>,  <20.306591, 17.614223, 18.463699>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.405769, 17.423809, 18.570967>,  <20.571066, 17.106451, 18.749744>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.405769, 17.423809, 18.570967> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220864, 0.563483, 0.796057,
		0.883431, 0.230250, -0.408087,
		-0.413242, 0.793393, -0.446944,
		20.281797, 17.661827, 18.436884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.034273, 17.758232, 18.900295>,  <20.571066, 17.106451, 18.749744>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.034273, 17.758232, 18.900295> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.668011, 17.905106, 18.834871>,  <20.448254, 17.993229, 18.795616>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.668011, 17.905106, 18.834871>,  <21.034273, 17.758232, 18.900295>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.668011, 17.905106, 18.834871> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090581, 0.584920, 0.806017,
		0.391626, 0.723219, -0.568845,
		-0.915655, 0.367184, -0.163559,
		20.393314, 18.015261, 18.785803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.112867, 18.392944, 18.935410>,  <21.034273, 17.758232, 18.900295>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.112867, 18.392944, 18.935410> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.722481, 18.351257, 19.011967>,  <20.488249, 18.326244, 19.057901>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.722481, 18.351257, 19.011967>,  <21.112867, 18.392944, 18.935410>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.722481, 18.351257, 19.011967> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097011, 0.578664, 0.809776,
		-0.195148, 0.808880, -0.554645,
		-0.975964, -0.104219, 0.191395,
		20.429691, 18.319992, 19.069386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.784307, 18.994781, 18.838167>,  <21.112867, 18.392944, 18.935410>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.784307, 18.994781, 18.838167> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.536076, 18.800865, 19.084698>,  <20.387136, 18.684515, 19.232616>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.536076, 18.800865, 19.084698>,  <20.784307, 18.994781, 18.838167>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.536076, 18.800865, 19.084698> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115518, 0.720890, 0.683354,
		-0.775589, 0.495271, -0.391366,
		-0.620578, -0.484793, 0.616327,
		20.349903, 18.655428, 19.269596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.645329, 19.531473, 19.257545>,  <20.784307, 18.994781, 18.838167>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.645329, 19.531473, 19.257545> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.477234, 19.211586, 19.429056>,  <20.376377, 19.019653, 19.531961>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.477234, 19.211586, 19.429056>,  <20.645329, 19.531473, 19.257545>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.477234, 19.211586, 19.429056> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009597, 0.476415, 0.879168,
		-0.907363, 0.365345, -0.207882,
		-0.420238, -0.799720, 0.428775,
		20.351162, 18.971670, 19.557690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.233789, 19.839846, 19.642900>,  <20.645329, 19.531473, 19.257545>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.233789, 19.839846, 19.642900> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.247604, 19.472855, 19.801414>,  <20.255894, 19.252661, 19.896523>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.247604, 19.472855, 19.801414>,  <20.233789, 19.839846, 19.642900>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.247604, 19.472855, 19.801414> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012433, 0.396096, 0.918125,
		-0.999326, -0.036638, 0.002274,
		0.034539, -0.917478, 0.396284,
		20.257967, 19.197611, 19.920300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.428745, 20.116421, 19.684345>,  <20.233789, 19.839846, 19.642900>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.428745, 20.116421, 19.684345> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.514755, 20.502705, 19.626141>,  <19.566360, 20.734474, 19.591217>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.514755, 20.502705, 19.626141>,  <19.428745, 20.116421, 19.684345>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.514755, 20.502705, 19.626141> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103664, -0.125585, -0.986652,
		-0.971091, 0.227239, 0.073105,
		0.215025, 0.965707, -0.145511,
		19.579264, 20.792418, 19.582487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.870506, 20.275190, 19.325996>,  <19.428745, 20.116421, 19.684345>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.870506, 20.275190, 19.325996> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.154255, 20.546360, 19.248833>,  <19.324503, 20.709061, 19.202534>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.154255, 20.546360, 19.248833>,  <18.870506, 20.275190, 19.325996>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.154255, 20.546360, 19.248833> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171789, -0.099150, -0.980132,
		-0.683581, 0.728416, 0.046125,
		0.709370, 0.677923, -0.192911,
		19.367065, 20.749737, 19.190960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.682344, 20.714090, 18.792530>,  <18.870506, 20.275190, 19.325996>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.682344, 20.714090, 18.792530> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.078876, 20.765594, 18.782084>,  <19.316795, 20.796497, 18.775816>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.078876, 20.765594, 18.782084>,  <18.682344, 20.714090, 18.792530>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.078876, 20.765594, 18.782084> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030460, 0.031864, -0.999028,
		-0.127801, 0.991164, 0.035510,
		0.991332, 0.128758, -0.026118,
		19.376276, 20.804222, 18.774248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.744793, 21.274073, 18.407400>,  <18.682344, 20.714090, 18.792530>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.744793, 21.274073, 18.407400> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.106934, 21.105370, 18.387571>,  <19.324219, 21.004148, 18.375675>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.106934, 21.105370, 18.387571>,  <18.744793, 21.274073, 18.407400>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.106934, 21.105370, 18.387571> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031361, 0.050009, -0.998256,
		0.423499, 0.905329, 0.032049,
		0.905353, -0.421756, -0.049571,
		19.378540, 20.978844, 18.372700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.032267, 21.621515, 17.888706>,  <18.744793, 21.274073, 18.407400>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.032267, 21.621515, 17.888706> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.247406, 21.284554, 17.901823>,  <19.376490, 21.082376, 17.909693>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.247406, 21.284554, 17.901823>,  <19.032267, 21.621515, 17.888706>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.247406, 21.284554, 17.901823> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025853, -0.022395, -0.999415,
		0.842645, 0.538381, 0.009733,
		0.537848, -0.842404, 0.032790,
		19.408760, 21.031832, 17.911659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.535570, 21.742252, 17.424847>,  <19.032267, 21.621515, 17.888706>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.535570, 21.742252, 17.424847> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.522934, 21.344002, 17.460018>,  <19.515352, 21.105051, 17.481121>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.522934, 21.344002, 17.460018>,  <19.535570, 21.742252, 17.424847>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.522934, 21.344002, 17.460018> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099468, -0.090668, -0.990902,
		0.994539, -0.022559, 0.101897,
		-0.031593, -0.995626, 0.087929,
		19.513456, 21.045315, 17.486397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.035618, 21.536572, 17.047245>,  <19.535570, 21.742252, 17.424847>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.035618, 21.536572, 17.047245> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.820225, 21.200783, 17.076424>,  <19.690989, 20.999310, 17.093931>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.820225, 21.200783, 17.076424>,  <20.035618, 21.536572, 17.047245>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.820225, 21.200783, 17.076424> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105827, -0.153260, -0.982503,
		0.835965, -0.521341, 0.171367,
		-0.538483, -0.839473, 0.072948,
		19.658680, 20.948940, 17.098309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<15.499084, 22.367710, 20.774841> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<15.727965, 22.042240, 20.815863>,  <15.865294, 21.846958, 20.840475>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<15.727965, 22.042240, 20.815863>,  <15.499084, 22.367710, 20.774841>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.727965, 22.042240, 20.815863> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241036, -0.286378, -0.927302,
		0.783890, 0.505888, -0.359991,
		0.572204, -0.813674, 0.102551,
		15.899627, 21.798138, 20.846628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.968450, 22.224722, 20.180805>,  <15.499084, 22.367710, 20.774841>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.968450, 22.224722, 20.180805> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<15.876328, 21.885731, 20.372112>,  <15.821055, 21.682337, 20.486897>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<15.876328, 21.885731, 20.372112>,  <15.968450, 22.224722, 20.180805>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.876328, 21.885731, 20.372112> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208210, -0.437184, -0.874939,
		0.950584, -0.301081, -0.075769,
		-0.230303, -0.847479, 0.478268,
		15.807238, 21.631487, 20.515593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.379971, 21.675045, 19.863613>,  <15.968450, 22.224722, 20.180805>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.379971, 21.675045, 19.863613> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<16.041771, 21.533188, 20.023294>,  <15.838851, 21.448074, 20.119102>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<16.041771, 21.533188, 20.023294>,  <16.379971, 21.675045, 19.863613>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.041771, 21.533188, 20.023294> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322689, -0.256306, -0.911142,
		0.425446, -0.899187, 0.102267,
		-0.845498, -0.354641, 0.399202,
		15.788121, 21.426796, 20.143055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.377491, 20.946625, 19.714396>,  <16.379971, 21.675045, 19.863613>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.377491, 20.946625, 19.714396> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<16.001236, 21.065521, 19.779938>,  <15.775483, 21.136860, 19.819263>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<16.001236, 21.065521, 19.779938>,  <16.377491, 20.946625, 19.714396>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.001236, 21.065521, 19.779938> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215050, -0.148438, -0.965256,
		-0.262595, -0.943192, 0.203549,
		-0.940637, 0.297245, 0.163854,
		15.719045, 21.154694, 19.829094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.026575, 20.502752, 19.297781>,  <16.377491, 20.946625, 19.714396>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.026575, 20.502752, 19.297781> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<15.758197, 20.792973, 19.358980>,  <15.597170, 20.967104, 19.395700>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<15.758197, 20.792973, 19.358980>,  <16.026575, 20.502752, 19.297781>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.758197, 20.792973, 19.358980> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291645, -0.068512, -0.954070,
		-0.681743, -0.684751, 0.257571,
		-0.670947, 0.725549, 0.152997,
		15.556912, 21.010637, 19.404879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.481207, 20.307667, 18.958593>,  <16.026575, 20.502752, 19.297781>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.481207, 20.307667, 18.958593> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<15.381814, 20.692329, 19.005024>,  <15.322178, 20.923126, 19.032883>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<15.381814, 20.692329, 19.005024>,  <15.481207, 20.307667, 18.958593>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.381814, 20.692329, 19.005024> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192582, 0.068396, -0.978894,
		-0.949299, -0.265592, 0.168203,
		-0.248482, 0.961656, 0.116077,
		15.307269, 20.980825, 19.039846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.951647, 20.402084, 18.498068>,  <15.481207, 20.307667, 18.958593>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.951647, 20.402084, 18.498068> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<15.049642, 20.783253, 18.569536>,  <15.108438, 21.011953, 18.612417>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<15.049642, 20.783253, 18.569536>,  <14.951647, 20.402084, 18.498068>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.049642, 20.783253, 18.569536> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234225, 0.236999, -0.942852,
		-0.940808, 0.189138, 0.281259,
		0.244988, 0.952921, 0.178669,
		15.123137, 21.069130, 18.623137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.461801, 20.825520, 18.125742>,  <14.951647, 20.402084, 18.498068>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.461801, 20.825520, 18.125742> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<14.777297, 21.060677, 18.197598>,  <14.966595, 21.201771, 18.240711>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<14.777297, 21.060677, 18.197598>,  <14.461801, 20.825520, 18.125742>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.777297, 21.060677, 18.197598> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024513, 0.322074, -0.946397,
		-0.614237, 0.742058, 0.268444,
		0.788741, 0.587892, 0.179640,
		15.013919, 21.237043, 18.251490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.320012, 21.499126, 17.890030>,  <14.461801, 20.825520, 18.125742>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.320012, 21.499126, 17.890030> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<14.718112, 21.460587, 17.895630>,  <14.956972, 21.437462, 17.898989>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<14.718112, 21.460587, 17.895630>,  <14.320012, 21.499126, 17.890030>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.718112, 21.460587, 17.895630> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046390, 0.342886, -0.938231,
		0.085598, 0.934423, 0.345727,
		0.995249, -0.096349, 0.013998,
		15.016686, 21.431683, 17.899830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.576087, 22.155258, 17.664612>,  <14.320012, 21.499126, 17.890030>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.576087, 22.155258, 17.664612> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<14.868773, 21.890293, 17.600361>,  <15.044386, 21.731314, 17.561811>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<14.868773, 21.890293, 17.600361>,  <14.576087, 22.155258, 17.664612>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.868773, 21.890293, 17.600361> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011382, 0.247499, -0.968821,
		0.681513, 0.707075, 0.188639,
		0.731717, -0.662412, -0.160626,
		15.088288, 21.691570, 17.552174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.090349, 22.514236, 17.352264>,  <14.576087, 22.155258, 17.664612>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.090349, 22.514236, 17.352264> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<15.168639, 22.134857, 17.252554>,  <15.215613, 21.907230, 17.192728>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<15.168639, 22.134857, 17.252554>,  <15.090349, 22.514236, 17.352264>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.168639, 22.134857, 17.252554> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075695, 0.268047, -0.960428,
		0.977733, 0.169111, 0.124256,
		0.195725, -0.948447, -0.249277,
		15.227357, 21.850323, 17.177771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.455587, 22.541864, 16.750834>,  <15.090349, 22.514236, 17.352264>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.455587, 22.541864, 16.750834> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<15.338683, 22.159962, 16.728830>,  <15.268540, 21.930820, 16.715630>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<15.338683, 22.159962, 16.728830>,  <15.455587, 22.541864, 16.750834>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.338683, 22.159962, 16.728830> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051407, 0.073118, -0.995997,
		0.954956, -0.288263, -0.070451,
		-0.292260, -0.954755, -0.055006,
		15.251005, 21.873535, 16.712328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.125784, 22.505106, 17.166353>,  <15.455587, 22.541864, 16.750834>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.125784, 22.505106, 17.166353> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<16.466339, 22.710903, 17.125490>,  <16.670671, 22.834381, 17.100973>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<16.466339, 22.710903, 17.125490>,  <16.125784, 22.505106, 17.166353>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.466339, 22.710903, 17.125490> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111329, 0.013079, 0.993698,
		0.512587, -0.857395, -0.046142,
		0.851388, 0.514493, -0.102157,
		16.721756, 22.865252, 17.094843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.507923, 22.265200, 17.749275>,  <16.125784, 22.505106, 17.166353>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.507923, 22.265200, 17.749275> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<16.735134, 22.570244, 17.625488>,  <16.871462, 22.753269, 17.551216>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<16.735134, 22.570244, 17.625488>,  <16.507923, 22.265200, 17.749275>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.735134, 22.570244, 17.625488> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205613, 0.232600, 0.950589,
		0.796911, -0.603593, -0.024679,
		0.568029, 0.762609, -0.309468,
		16.905542, 22.799026, 17.532648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.149765, 22.129866, 18.021534>,  <16.507923, 22.265200, 17.749275>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.149765, 22.129866, 18.021534> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.100220, 22.514614, 17.923998>,  <17.070492, 22.745464, 17.865477>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.100220, 22.514614, 17.923998>,  <17.149765, 22.129866, 18.021534>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.100220, 22.514614, 17.923998> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389024, 0.273132, 0.879806,
		0.912862, 0.014116, -0.408023,
		-0.123864, 0.961873, -0.243841,
		17.063061, 22.803177, 17.850845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.791241, 22.424225, 18.169336>,  <17.149765, 22.129866, 18.021534>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.791241, 22.424225, 18.169336> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.492302, 22.688915, 18.193319>,  <17.312939, 22.847729, 18.207710>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.492302, 22.688915, 18.193319>,  <17.791241, 22.424225, 18.169336>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.492302, 22.688915, 18.193319> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285609, 0.238461, 0.928205,
		0.599918, 0.710814, -0.367207,
		-0.747346, 0.661725, 0.059958,
		17.268099, 22.887432, 18.211308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.100935, 22.923731, 18.561251>,  <17.791241, 22.424225, 18.169336>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.100935, 22.923731, 18.561251> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.720005, 23.043438, 18.537540>,  <17.491447, 23.115263, 18.523314>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.720005, 23.043438, 18.537540>,  <18.100935, 22.923731, 18.561251>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.720005, 23.043438, 18.537540> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060219, 0.374862, 0.925123,
		0.299081, 0.877449, -0.375012,
		-0.952326, 0.299269, -0.059275,
		17.434307, 23.133219, 18.519758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.134169, 23.679865, 18.864626>,  <18.100935, 22.923731, 18.561251>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.134169, 23.679865, 18.864626> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.767654, 23.523087, 18.897608>,  <17.547747, 23.429020, 18.917397>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.767654, 23.523087, 18.897608>,  <18.134169, 23.679865, 18.864626>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.767654, 23.523087, 18.897608> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074363, 0.368759, 0.926546,
		-0.393563, 0.842849, -0.367034,
		-0.916285, -0.391948, 0.082453,
		17.492769, 23.405502, 18.922344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.755236, 24.211473, 19.017450>,  <18.134169, 23.679865, 18.864626>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.755236, 24.211473, 19.017450> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.558590, 23.887085, 19.144348>,  <17.440603, 23.692451, 19.220488>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.558590, 23.887085, 19.144348>,  <17.755236, 24.211473, 19.017450>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.558590, 23.887085, 19.144348> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039245, 0.384572, 0.922260,
		-0.869929, 0.440944, -0.220887,
		-0.491612, -0.810970, 0.317246,
		17.411106, 23.643793, 19.239521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.108400, 24.453718, 19.322487>,  <17.755236, 24.211473, 19.017450>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.108400, 24.453718, 19.322487> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.161861, 24.079006, 19.451845>,  <17.193939, 23.854179, 19.529459>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.161861, 24.079006, 19.451845>,  <17.108400, 24.453718, 19.322487>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.161861, 24.079006, 19.451845> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210604, 0.292021, 0.932936,
		-0.968392, -0.192799, -0.158259,
		0.133654, -0.936778, 0.323395,
		17.201958, 23.797974, 19.548864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.603003, 24.219091, 19.722519>,  <17.108400, 24.453718, 19.322487>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.603003, 24.219091, 19.722519> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<16.852379, 23.927948, 19.836742>,  <17.002005, 23.753262, 19.905277>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<16.852379, 23.927948, 19.836742>,  <16.603003, 24.219091, 19.722519>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.852379, 23.927948, 19.836742> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253294, 0.157511, 0.954480,
		-0.739704, -0.667393, -0.086163,
		0.623442, -0.727857, 0.285558,
		17.039412, 23.709591, 19.922409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.325945, 23.761232, 20.246437>,  <16.603003, 24.219091, 19.722519>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.325945, 23.761232, 20.246437> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<16.713413, 23.674377, 20.294643>,  <16.945894, 23.622265, 20.323568>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<16.713413, 23.674377, 20.294643>,  <16.325945, 23.761232, 20.246437>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.713413, 23.674377, 20.294643> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173287, -0.243374, 0.954327,
		-0.177886, -0.945316, -0.273377,
		0.968674, -0.217134, 0.120518,
		17.004015, 23.609236, 20.330799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.404387, 23.045362, 20.556427>,  <16.325945, 23.761232, 20.246437>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.404387, 23.045362, 20.556427> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<16.728813, 23.261948, 20.644964>,  <16.923470, 23.391899, 20.698086>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<16.728813, 23.261948, 20.644964>,  <16.404387, 23.045362, 20.556427>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.728813, 23.261948, 20.644964> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046056, -0.318106, 0.946936,
		0.583141, -0.778220, -0.233066,
		0.811064, 0.541463, 0.221342,
		16.972132, 23.424387, 20.711367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.830011, 22.697819, 21.029970>,  <16.404387, 23.045362, 20.556427>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.830011, 22.697819, 21.029970> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<16.980392, 23.064846, 21.081711>,  <17.070621, 23.285063, 21.112755>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<16.980392, 23.064846, 21.081711>,  <16.830011, 22.697819, 21.029970>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.980392, 23.064846, 21.081711> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054109, -0.161090, 0.985455,
		0.925058, -0.363485, -0.110211,
		0.375952, 0.917567, 0.129350,
		17.093178, 23.340117, 21.120516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.270540, 22.596415, 21.524954>,  <16.830011, 22.697819, 21.029970>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.270540, 22.596415, 21.524954> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.286560, 22.995880, 21.538029>,  <17.296171, 23.235559, 21.545874>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.286560, 22.995880, 21.538029>,  <17.270540, 22.596415, 21.524954>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.286560, 22.995880, 21.538029> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207303, -0.040308, 0.977446,
		0.977457, -0.032370, -0.208640,
		0.040049, 0.998663, 0.032689,
		17.298574, 23.295479, 21.547836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.878370, 22.820642, 21.886000>,  <17.270540, 22.596415, 21.524954>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.878370, 22.820642, 21.886000> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.645229, 23.142059, 21.934341>,  <17.505344, 23.334909, 21.963346>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.645229, 23.142059, 21.934341>,  <17.878370, 22.820642, 21.886000>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.645229, 23.142059, 21.934341> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022751, -0.132537, 0.990917,
		0.812261, 0.580306, 0.058968,
		-0.582850, 0.803542, 0.120857,
		17.470375, 23.383121, 21.970598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.375898, 22.747494, 21.364107>,  <17.878370, 22.820642, 21.886000>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.375898, 22.747494, 21.364107> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.703819, 22.624245, 21.557182>,  <18.900572, 22.550295, 21.673027>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.703819, 22.624245, 21.557182>,  <18.375898, 22.747494, 21.364107>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.703819, 22.624245, 21.557182> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264134, -0.544427, -0.796136,
		0.508095, 0.780167, -0.364936,
		0.819800, -0.308121, 0.482689,
		18.949759, 22.531809, 21.701988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.879429, 22.871710, 20.864784>,  <18.375898, 22.747494, 21.364107>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.879429, 22.871710, 20.864784> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.005444, 22.597073, 21.126883>,  <19.081053, 22.432291, 21.284142>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.005444, 22.597073, 21.126883>,  <18.879429, 22.871710, 20.864784>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.005444, 22.597073, 21.126883> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232180, -0.613667, -0.754656,
		0.920242, 0.389877, -0.033914,
		0.315035, -0.686592, 0.655244,
		19.099955, 22.391094, 21.323456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.436750, 22.740574, 20.668947>,  <18.879429, 22.871710, 20.864784>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.436750, 22.740574, 20.668947> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.348362, 22.424816, 20.898041>,  <19.295330, 22.235361, 21.035498>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.348362, 22.424816, 20.898041>,  <19.436750, 22.740574, 20.668947>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.348362, 22.424816, 20.898041> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291735, -0.613864, -0.733527,
		0.930625, 0.005000, 0.365940,
		-0.220970, -0.789396, 0.572736,
		19.282070, 22.187998, 21.069862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.090290, 22.247952, 20.647507>,  <19.436750, 22.740574, 20.668947>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.090290, 22.247952, 20.647507> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.781532, 22.013195, 20.745268>,  <19.596277, 21.872341, 20.803925>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.781532, 22.013195, 20.745268>,  <20.090290, 22.247952, 20.647507>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.781532, 22.013195, 20.745268> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327129, -0.696295, -0.638874,
		0.545126, -0.413194, 0.729458,
		-0.771897, -0.586894, 0.244401,
		19.549963, 21.837128, 20.818588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.409590, 21.547882, 20.771137>,  <20.090290, 22.247952, 20.647507>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.409590, 21.547882, 20.771137> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.021088, 21.498806, 20.689539>,  <19.787987, 21.469360, 20.640581>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.021088, 21.498806, 20.689539>,  <20.409590, 21.547882, 20.771137>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.021088, 21.498806, 20.689539> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237939, -0.526224, -0.816378,
		-0.007184, -0.841449, 0.540290,
		-0.971254, -0.122691, -0.203994,
		19.729712, 21.461998, 20.628342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.392981, 20.983637, 20.523447>,  <20.409590, 21.547882, 20.771137>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.392981, 20.983637, 20.523447> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.022991, 21.095760, 20.420799>,  <19.800999, 21.163034, 20.359211>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.022991, 21.095760, 20.420799>,  <20.392981, 20.983637, 20.523447>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.022991, 21.095760, 20.420799> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073983, -0.529517, -0.845067,
		-0.372764, -0.800649, 0.469051,
		-0.924972, 0.280308, -0.256619,
		19.745499, 21.179853, 20.343813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.999189, 20.332794, 20.247128>,  <20.392981, 20.983637, 20.523447>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.999189, 20.332794, 20.247128> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.851303, 20.679123, 20.112272>,  <19.762571, 20.886921, 20.031359>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.851303, 20.679123, 20.112272>,  <19.999189, 20.332794, 20.247128>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.851303, 20.679123, 20.112272> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026210, -0.352985, -0.935262,
		-0.928775, -0.354618, 0.107811,
		-0.369716, 0.865822, -0.337138,
		19.740389, 20.938869, 20.011131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.531084, 19.739777, 20.388386>,  <19.999189, 20.332794, 20.247128>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.531084, 19.739777, 20.388386> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.820461, 19.464294, 20.407627>,  <19.994087, 19.299006, 20.419172>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.820461, 19.464294, 20.407627>,  <19.531084, 19.739777, 20.388386>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.820461, 19.464294, 20.407627> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189175, 0.264759, 0.945577,
		-0.663961, -0.674970, 0.321824,
		0.723442, -0.688707, 0.048103,
		20.037495, 19.257683, 20.422058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.480833, 19.411430, 21.018024>,  <19.531084, 19.739777, 20.388386>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.480833, 19.411430, 21.018024> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.860447, 19.323101, 20.928074>,  <20.088215, 19.270103, 20.874104>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.860447, 19.323101, 20.928074>,  <19.480833, 19.411430, 21.018024>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.860447, 19.323101, 20.928074> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254284, 0.114932, 0.960276,
		-0.186205, -0.968518, 0.165226,
		0.949035, -0.220823, -0.224878,
		20.145157, 19.256855, 20.860611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.721537, 18.945492, 21.509829>,  <19.480833, 19.411430, 21.018024>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.721537, 18.945492, 21.509829> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.056961, 19.100361, 21.356510>,  <20.258215, 19.193281, 21.264519>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.056961, 19.100361, 21.356510>,  <19.721537, 18.945492, 21.509829>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.056961, 19.100361, 21.356510> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431257, -0.041806, 0.901260,
		0.332919, -0.921059, -0.202027,
		0.838560, 0.387172, -0.383295,
		20.308529, 19.216513, 21.241522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.213800, 18.722582, 21.885578>,  <19.721537, 18.945492, 21.509829>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.213800, 18.722582, 21.885578> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.430897, 19.012329, 21.715532>,  <20.561155, 19.186176, 21.613504>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.430897, 19.012329, 21.715532>,  <20.213800, 18.722582, 21.885578>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.430897, 19.012329, 21.715532> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554908, 0.070694, 0.828902,
		0.630483, -0.685781, -0.363589,
		0.542742, 0.724367, -0.425117,
		20.593719, 19.229639, 21.587997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.833616, 18.520922, 21.991028>,  <20.213800, 18.722582, 21.885578>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.833616, 18.520922, 21.991028> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.833649, 18.916462, 21.931463>,  <20.833668, 19.153786, 21.895725>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.833649, 18.916462, 21.931463>,  <20.833616, 18.520922, 21.991028>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.833649, 18.916462, 21.931463> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471418, 0.131289, 0.872082,
		0.881910, -0.070268, -0.466152,
		0.000079, 0.988851, -0.148911,
		20.833672, 19.213118, 21.886789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.423576, 18.675137, 22.260460>,  <20.833616, 18.520922, 21.991028>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.423576, 18.675137, 22.260460> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<21.190994, 19.000462, 22.252182>,  <21.051445, 19.195658, 22.247215>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<21.190994, 19.000462, 22.252182>,  <21.423576, 18.675137, 22.260460>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.190994, 19.000462, 22.252182> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321664, 0.253180, 0.912377,
		0.747288, 0.523852, -0.408827,
		-0.581457, 0.813314, -0.020694,
		21.016558, 19.244455, 22.245974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.792944, 19.213120, 22.650574>,  <21.423576, 18.675137, 22.260460>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.792944, 19.213120, 22.650574> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<21.422295, 19.362320, 22.631662>,  <21.199905, 19.451841, 22.620316>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<21.422295, 19.362320, 22.631662>,  <21.792944, 19.213120, 22.650574>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.422295, 19.362320, 22.631662> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078652, 0.315265, 0.945739,
		0.367668, 0.872627, -0.321470,
		-0.926625, 0.373002, -0.047279,
		21.144306, 19.474220, 22.617479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.897995, 19.818911, 22.894079>,  <21.792944, 19.213120, 22.650574>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.897995, 19.818911, 22.894079> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<21.507431, 19.748081, 22.943502>,  <21.273092, 19.705584, 22.973156>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<21.507431, 19.748081, 22.943502>,  <21.897995, 19.818911, 22.894079>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.507431, 19.748081, 22.943502> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053591, 0.355584, 0.933106,
		-0.209164, 0.917717, -0.337707,
		-0.976411, -0.177074, 0.123557,
		21.214508, 19.694960, 22.980570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.569174, 20.483221, 23.200731>,  <21.897995, 19.818911, 22.894079>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.569174, 20.483221, 23.200731> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<21.330311, 20.170368, 23.271919>,  <21.186993, 19.982656, 23.314632>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<21.330311, 20.170368, 23.271919>,  <21.569174, 20.483221, 23.200731>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.330311, 20.170368, 23.271919> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061705, 0.266006, 0.961994,
		-0.799747, 0.563481, -0.207108,
		-0.597158, -0.782132, 0.177968,
		21.151163, 19.935728, 23.325310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<19.750090, 16.725788, 7.843327> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.729645, 16.333035, 7.916311>,  <19.717377, 16.097382, 7.960102>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.729645, 16.333035, 7.916311>,  <19.750090, 16.725788, 7.843327>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.729645, 16.333035, 7.916311> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085370, 0.177736, 0.980368,
		-0.995037, 0.065688, 0.074738,
		-0.051114, -0.981884, 0.182462,
		19.714310, 16.038469, 7.971050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.402342, 16.707142, 8.372742>,  <19.750090, 16.725788, 7.843327>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.402342, 16.707142, 8.372742> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.532825, 16.329308, 8.387406>,  <19.611115, 16.102606, 8.396205>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.532825, 16.329308, 8.387406>,  <19.402342, 16.707142, 8.372742>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.532825, 16.329308, 8.387406> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200792, 0.107135, 0.973758,
		-0.923727, -0.310286, 0.224614,
		0.326208, -0.944587, 0.036661,
		19.630688, 16.045931, 8.398404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.119762, 16.436319, 9.014362>,  <19.402342, 16.707142, 8.372742>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.119762, 16.436319, 9.014362> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.413273, 16.183922, 8.913629>,  <19.589378, 16.032484, 8.853189>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.413273, 16.183922, 8.913629>,  <19.119762, 16.436319, 9.014362>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.413273, 16.183922, 8.913629> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214598, -0.136436, 0.967126,
		-0.644610, -0.763697, 0.035297,
		0.733775, -0.630993, -0.251835,
		19.633406, 15.994624, 8.838078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.058983, 15.867114, 9.426580>,  <19.119762, 16.436319, 9.014362>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.058983, 15.867114, 9.426580> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.439682, 15.849545, 9.305091>,  <19.668100, 15.839003, 9.232197>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.439682, 15.849545, 9.305091>,  <19.058983, 15.867114, 9.426580>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.439682, 15.849545, 9.305091> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305664, 0.047508, 0.950953,
		-0.027342, -0.997904, 0.058642,
		0.951747, -0.043926, -0.303724,
		19.725206, 15.836368, 9.213973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.300625, 15.473513, 9.861566>,  <19.058983, 15.867114, 9.426580>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.300625, 15.473513, 9.861566> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.644470, 15.635391, 9.736800>,  <19.850777, 15.732518, 9.661942>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.644470, 15.635391, 9.736800>,  <19.300625, 15.473513, 9.861566>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.644470, 15.635391, 9.736800> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371147, -0.075006, 0.925540,
		0.351167, -0.911370, -0.214678,
		0.859611, 0.404696, -0.311912,
		19.902353, 15.756800, 9.643227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.954161, 14.986208, 10.065634>,  <19.300625, 15.473513, 9.861566>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.954161, 14.986208, 10.065634> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.022045, 15.376167, 10.007986>,  <20.062777, 15.610143, 9.973397>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.022045, 15.376167, 10.007986>,  <19.954161, 14.986208, 10.065634>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.022045, 15.376167, 10.007986> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258750, 0.097031, 0.961058,
		0.950919, -0.200394, -0.235788,
		0.169712, 0.974899, -0.144120,
		20.072958, 15.668637, 9.964750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.490164, 15.188792, 10.622353>,  <19.954161, 14.986208, 10.065634>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.490164, 15.188792, 10.622353> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.370686, 15.538673, 10.469681>,  <20.299000, 15.748602, 10.378078>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.370686, 15.538673, 10.469681>,  <20.490164, 15.188792, 10.622353>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.370686, 15.538673, 10.469681> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141109, 0.436018, 0.888806,
		0.943859, 0.211623, -0.253664,
		-0.298694, 0.874702, -0.381678,
		20.281078, 15.801085, 10.355177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.044474, 15.651929, 10.757124>,  <20.490164, 15.188792, 10.622353>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.044474, 15.651929, 10.757124> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.701958, 15.852131, 10.706115>,  <20.496449, 15.972252, 10.675509>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.701958, 15.852131, 10.706115>,  <21.044474, 15.651929, 10.757124>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.701958, 15.852131, 10.706115> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159597, 0.491219, 0.856290,
		0.491219, 0.712880, -0.500505,
		-0.856290, 0.500505, -0.127523,
		20.445070, 16.002283, 10.667858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.255386, 16.327810, 10.843664>,  <21.044474, 15.651929, 10.757124>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.255386, 16.327810, 10.843664> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.857498, 16.347771, 10.879523>,  <20.618765, 16.359747, 10.901038>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.857498, 16.347771, 10.879523>,  <21.255386, 16.327810, 10.843664>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.857498, 16.347771, 10.879523> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100233, 0.659248, 0.745215,
		-0.021911, 0.750268, -0.660771,
		-0.994723, 0.049902, 0.089647,
		20.559082, 16.362741, 10.906417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.977282, 17.006676, 10.884440>,  <21.255386, 16.327810, 10.843664>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.977282, 17.006676, 10.884440> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.682770, 16.802708, 11.062374>,  <20.506063, 16.680326, 11.169134>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.682770, 16.802708, 11.062374>,  <20.977282, 17.006676, 10.884440>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.682770, 16.802708, 11.062374> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053073, 0.698870, 0.713277,
		-0.674594, 0.501562, -0.541626,
		-0.736279, -0.509918, 0.444834,
		20.461885, 16.649733, 11.195825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.598269, 17.618477, 11.227686>,  <20.977282, 17.006676, 10.884440>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.598269, 17.618477, 11.227686> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.454754, 17.278538, 11.382106>,  <20.368645, 17.074575, 11.474758>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.454754, 17.278538, 11.382106>,  <20.598269, 17.618477, 11.227686>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.454754, 17.278538, 11.382106> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024484, 0.422013, 0.906259,
		-0.933099, 0.315700, -0.172220,
		-0.358785, -0.849846, 0.386050,
		20.347118, 17.023584, 11.497921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.180496, 17.800255, 11.751292>,  <20.598269, 17.618477, 11.227686>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.180496, 17.800255, 11.751292> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.276535, 17.421944, 11.838796>,  <20.334158, 17.194956, 11.891297>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.276535, 17.421944, 11.838796>,  <20.180496, 17.800255, 11.751292>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.276535, 17.421944, 11.838796> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152815, 0.185717, 0.970648,
		-0.958645, -0.266480, -0.099939,
		0.240098, -0.945779, 0.218759,
		20.348564, 17.138210, 11.904423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.493710, 18.228580, 11.709805>,  <20.180496, 17.800255, 11.751292>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.493710, 18.228580, 11.709805> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.681747, 18.578304, 11.661489>,  <19.794571, 18.788139, 11.632501>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.681747, 18.578304, 11.661489>,  <19.493710, 18.228580, 11.709805>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.681747, 18.578304, 11.661489> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025145, -0.150062, -0.988357,
		-0.882256, 0.461586, -0.092528,
		0.470097, 0.874311, -0.120787,
		19.822777, 18.840597, 11.625254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.256453, 18.522934, 11.074253>,  <19.493710, 18.228580, 11.709805>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.256453, 18.522934, 11.074253> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.585880, 18.738029, 11.146438>,  <19.783537, 18.867086, 11.189749>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.585880, 18.738029, 11.146438>,  <19.256453, 18.522934, 11.074253>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.585880, 18.738029, 11.146438> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221661, -0.012265, -0.975047,
		-0.522108, 0.843022, -0.129296,
		0.823572, 0.537739, 0.180461,
		19.832952, 18.899351, 11.200576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.199858, 19.191715, 10.626988>,  <19.256453, 18.522934, 11.074253>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.199858, 19.191715, 10.626988> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.585690, 19.138905, 10.718336>,  <19.817188, 19.107218, 10.773145>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.585690, 19.138905, 10.718336>,  <19.199858, 19.191715, 10.626988>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.585690, 19.138905, 10.718336> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227439, -0.022294, -0.973537,
		0.133623, 0.990996, 0.008523,
		0.964581, -0.132026, 0.228370,
		19.875063, 19.099297, 10.786847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.499292, 19.737797, 10.372374>,  <19.199858, 19.191715, 10.626988>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.499292, 19.737797, 10.372374> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.816998, 19.499466, 10.419924>,  <20.007622, 19.356466, 10.448454>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.816998, 19.499466, 10.419924>,  <19.499292, 19.737797, 10.372374>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.816998, 19.499466, 10.419924> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368174, 0.316363, -0.874278,
		0.483312, 0.738175, 0.470645,
		0.794265, -0.595829, 0.118875,
		20.055277, 19.320717, 10.455586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.076084, 20.083593, 10.141886>,  <19.499292, 19.737797, 10.372374>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.076084, 20.083593, 10.141886> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.207600, 19.705833, 10.142821>,  <20.286509, 19.479177, 10.143383>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.207600, 19.705833, 10.142821>,  <20.076084, 20.083593, 10.141886>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.207600, 19.705833, 10.142821> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428527, 0.146983, -0.891494,
		0.841583, 0.294117, 0.453027,
		0.328791, -0.944400, 0.002339,
		20.306236, 19.422514, 10.143523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.693554, 20.122793, 9.804263>,  <20.076084, 20.083593, 10.141886>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.693554, 20.122793, 9.804263> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.569477, 19.745995, 9.753005>,  <20.495031, 19.519915, 9.722250>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.569477, 19.745995, 9.753005>,  <20.693554, 20.122793, 9.804263>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.569477, 19.745995, 9.753005> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578933, -0.080257, -0.811416,
		0.754067, -0.325883, 0.570248,
		-0.310193, -0.941997, -0.128145,
		20.476419, 19.463396, 9.714561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.233536, 19.909725, 9.653440>,  <20.693554, 20.122793, 9.804263>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.233536, 19.909725, 9.653440> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.957333, 19.655121, 9.516008>,  <20.791611, 19.502357, 9.433549>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.957333, 19.655121, 9.516008>,  <21.233536, 19.909725, 9.653440>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.957333, 19.655121, 9.516008> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487007, -0.057909, -0.871476,
		0.534810, -0.769089, 0.349973,
		-0.690509, -0.636513, -0.343581,
		20.750179, 19.464167, 9.412934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.618134, 19.337105, 9.263411>,  <21.233536, 19.909725, 9.653440>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.618134, 19.337105, 9.263411> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.242558, 19.357101, 9.127236>,  <21.017212, 19.369099, 9.045532>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.242558, 19.357101, 9.127236>,  <21.618134, 19.337105, 9.263411>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<21.242558, 19.357101, 9.127236> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331275, -0.136124, -0.933663,
		-0.093013, -0.989430, 0.111253,
		-0.938938, 0.049988, -0.340434,
		20.960876, 19.372099, 9.025106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.635279, 18.737783, 8.726177>,  <21.618134, 19.337105, 9.263411>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.635279, 18.737783, 8.726177> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.323605, 18.981052, 8.665517>,  <21.136600, 19.127014, 8.629121>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.323605, 18.981052, 8.665517>,  <21.635279, 18.737783, 8.726177>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<21.323605, 18.981052, 8.665517> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235709, 0.060123, -0.969962,
		-0.580788, -0.791524, -0.190199,
		-0.779183, 0.608174, -0.151651,
		21.089849, 19.163504, 8.620022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.496023, 18.554466, 8.126905>,  <21.635279, 18.737783, 8.726177>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.496023, 18.554466, 8.126905> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.302921, 18.903122, 8.160838>,  <21.187061, 19.112314, 8.181198>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.302921, 18.903122, 8.160838>,  <21.496023, 18.554466, 8.126905>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<21.302921, 18.903122, 8.160838> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117224, 0.160310, -0.980081,
		-0.867876, -0.463192, -0.179567,
		-0.482753, 0.871638, 0.084832,
		21.158096, 19.164614, 8.186288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.893761, 18.577337, 7.588752>,  <21.496023, 18.554466, 8.126905>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.893761, 18.577337, 7.588752> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.954018, 18.964767, 7.667920>,  <20.990171, 19.197226, 7.715421>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.954018, 18.964767, 7.667920>,  <20.893761, 18.577337, 7.588752>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.954018, 18.964767, 7.667920> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064196, 0.209365, -0.975728,
		-0.986502, 0.134279, 0.093718,
		0.150641, 0.968574, 0.197919,
		20.999210, 19.255341, 7.727296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.428043, 18.886988, 7.200978>,  <20.893761, 18.577337, 7.588752>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.428043, 18.886988, 7.200978> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.673222, 19.191921, 7.284060>,  <20.820328, 19.374882, 7.333910>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.673222, 19.191921, 7.284060>,  <20.428043, 18.886988, 7.200978>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.673222, 19.191921, 7.284060> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085136, 0.325071, -0.941850,
		-0.785525, 0.559620, 0.264153,
		0.612946, 0.762335, 0.207707,
		20.857105, 19.420622, 7.346373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.097393, 19.542080, 6.921418>,  <20.428043, 18.886988, 7.200978>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.097393, 19.542080, 6.921418> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.487766, 19.627369, 6.939707>,  <20.721991, 19.678543, 6.950680>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.487766, 19.627369, 6.939707>,  <20.097393, 19.542080, 6.921418>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.487766, 19.627369, 6.939707> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036385, 0.365943, -0.929926,
		-0.215013, 0.905882, 0.364893,
		0.975933, 0.213222, 0.045722,
		20.780546, 19.691336, 6.953424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.121750, 20.184351, 6.794056>,  <20.097393, 19.542080, 6.921418>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.121750, 20.184351, 6.794056> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.482338, 20.033600, 6.708907>,  <20.698690, 19.943150, 6.657817>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.482338, 20.033600, 6.708907>,  <20.121750, 20.184351, 6.794056>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.482338, 20.033600, 6.708907> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054164, 0.389717, -0.919340,
		0.429440, 0.840288, 0.330905,
		0.901470, -0.376878, -0.212874,
		20.752779, 19.920536, 6.645045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.168091, 20.811102, 7.027970>,  <20.121750, 20.184351, 6.794056>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.168091, 20.811102, 7.027970> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.251633, 21.142120, 6.819529>,  <20.301758, 21.340731, 6.694464>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.251633, 21.142120, 6.819529>,  <20.168091, 20.811102, 7.027970>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.251633, 21.142120, 6.819529> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438134, 0.555564, 0.706673,
		0.874311, 0.080722, 0.478607,
		0.208853, 0.827546, -0.521103,
		20.314289, 21.390385, 6.663198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.551811, 21.290817, 7.453956>,  <20.168091, 20.811102, 7.027970>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.551811, 21.290817, 7.453956> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.248501, 21.391544, 7.213420>,  <20.066515, 21.451981, 7.069098>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.248501, 21.391544, 7.213420>,  <20.551811, 21.290817, 7.453956>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.248501, 21.391544, 7.213420> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481697, 0.405141, 0.777065,
		0.439304, 0.878891, -0.185909,
		-0.758275, 0.251816, -0.601339,
		20.021019, 21.467089, 7.033018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.528791, 22.073542, 7.491893>,  <20.551811, 21.290817, 7.453956>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.528791, 22.073542, 7.491893> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.191525, 21.875175, 7.408814>,  <19.989164, 21.756155, 7.358967>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.191525, 21.875175, 7.408814>,  <20.528791, 22.073542, 7.491893>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.191525, 21.875175, 7.408814> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389098, 0.296237, 0.872265,
		-0.371043, 0.816279, -0.442737,
		-0.843167, -0.495916, -0.207696,
		19.938574, 21.726400, 7.346506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.981941, 22.466066, 7.672856>,  <20.528791, 22.073542, 7.491893>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.981941, 22.466066, 7.672856> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.798813, 22.110653, 7.684881>,  <19.688936, 21.897404, 7.692097>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.798813, 22.110653, 7.684881>,  <19.981941, 22.466066, 7.672856>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.798813, 22.110653, 7.684881> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.605249, 0.336270, 0.721524,
		-0.651209, 0.312133, -0.691737,
		-0.457822, -0.888535, 0.030064,
		19.661467, 21.844091, 7.693900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.369581, 22.725292, 7.795939>,  <19.981941, 22.466066, 7.672856>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.369581, 22.725292, 7.795939> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.333977, 22.334778, 7.874870>,  <19.312614, 22.100470, 7.922229>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.333977, 22.334778, 7.874870>,  <19.369581, 22.725292, 7.795939>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.333977, 22.334778, 7.874870> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.553476, 0.213193, 0.805117,
		-0.828095, -0.037551, -0.559329,
		-0.089012, -0.976288, 0.197328,
		19.307274, 22.041891, 7.934069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.626589, 22.647224, 7.971778>,  <19.369581, 22.725292, 7.795939>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.626589, 22.647224, 7.971778> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.828220, 22.342411, 8.134363>,  <18.949200, 22.159523, 8.231915>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.828220, 22.342411, 8.134363>,  <18.626589, 22.647224, 7.971778>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.828220, 22.342411, 8.134363> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396239, 0.214122, 0.892831,
		-0.767399, -0.611112, -0.194013,
		0.504077, -0.762032, 0.406464,
		18.979445, 22.113802, 8.256302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.122128, 22.313072, 8.285084>,  <18.626589, 22.647224, 7.971778>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.122128, 22.313072, 8.285084> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.445156, 22.188519, 8.485431>,  <18.638973, 22.113787, 8.605639>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.445156, 22.188519, 8.485431>,  <18.122128, 22.313072, 8.285084>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.445156, 22.188519, 8.485431> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402832, 0.329058, 0.854077,
		-0.430759, -0.891494, 0.140303,
		0.807572, -0.311383, 0.500867,
		18.687428, 22.095104, 8.635691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.833225, 21.966473, 8.871792>,  <18.122128, 22.313072, 8.285084>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.833225, 21.966473, 8.871792> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.217190, 22.041988, 8.954666>,  <18.447569, 22.087297, 9.004391>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.217190, 22.041988, 8.954666>,  <17.833225, 21.966473, 8.871792>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.217190, 22.041988, 8.954666> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247178, 0.221578, 0.943295,
		0.132172, -0.956694, 0.259359,
		0.959913, 0.188785, 0.207187,
		18.505163, 22.098625, 9.016822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.042616, 21.482271, 9.450202>,  <17.833225, 21.966473, 8.871792>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.042616, 21.482271, 9.450202> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.282001, 21.802299, 9.433574>,  <18.425632, 21.994316, 9.423596>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.282001, 21.802299, 9.433574>,  <18.042616, 21.482271, 9.450202>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.282001, 21.802299, 9.433574> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241542, 0.229665, 0.942821,
		0.763871, -0.554202, 0.330697,
		0.598463, 0.800071, -0.041572,
		18.461540, 22.042320, 9.421103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.267441, 21.545513, 10.041803>,  <18.042616, 21.482271, 9.450202>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.267441, 21.545513, 10.041803> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.429600, 21.898933, 9.947999>,  <18.526896, 22.110985, 9.891717>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.429600, 21.898933, 9.947999>,  <18.267441, 21.545513, 10.041803>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.429600, 21.898933, 9.947999> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308331, 0.373664, 0.874819,
		0.860573, -0.282342, 0.423907,
		0.405396, 0.883549, -0.234510,
		18.551218, 22.163998, 9.877645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.704268, 21.693583, 10.555990>,  <18.267441, 21.545513, 10.041803>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.704268, 21.693583, 10.555990> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.659046, 22.060204, 10.402550>,  <18.631912, 22.280176, 10.310486>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.659046, 22.060204, 10.402550>,  <18.704268, 21.693583, 10.555990>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.659046, 22.060204, 10.402550> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167541, 0.362963, 0.916618,
		0.979361, 0.167898, 0.112525,
		-0.113056, 0.916553, -0.383601,
		18.625130, 22.335169, 10.287469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.161516, 22.231976, 10.927525>,  <18.704268, 21.693583, 10.555990>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.161516, 22.231976, 10.927525> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.855968, 22.418758, 10.749331>,  <18.672640, 22.530828, 10.642415>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.855968, 22.418758, 10.749331>,  <19.161516, 22.231976, 10.927525>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.855968, 22.418758, 10.749331> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249886, 0.422429, 0.871270,
		0.595033, 0.776855, -0.205993,
		-0.763867, 0.466959, -0.445484,
		18.626808, 22.558846, 10.615686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.077930, 22.987753, 11.240276>,  <19.161516, 22.231976, 10.927525>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.077930, 22.987753, 11.240276> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.716305, 22.917614, 11.084370>,  <18.499329, 22.875530, 10.990826>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.716305, 22.917614, 11.084370>,  <19.077930, 22.987753, 11.240276>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.716305, 22.917614, 11.084370> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423667, 0.247537, 0.871339,
		-0.056307, 0.952879, -0.298079,
		-0.904066, -0.175349, -0.389766,
		18.445086, 22.865009, 10.967440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.669878, 23.542408, 11.522505>,  <19.077930, 22.987753, 11.240276>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.669878, 23.542408, 11.522505> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.405636, 23.274715, 11.386425>,  <18.247091, 23.114100, 11.304777>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.405636, 23.274715, 11.386425>,  <18.669878, 23.542408, 11.522505>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.405636, 23.274715, 11.386425> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.546296, 0.117694, 0.829282,
		-0.514941, 0.733676, -0.443347,
		-0.660603, -0.669230, -0.340199,
		18.207455, 23.073946, 11.284366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.893246, 23.862337, 11.574739>,  <18.669878, 23.542408, 11.522505>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.893246, 23.862337, 11.574739> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.846958, 23.465153, 11.584814>,  <17.819185, 23.226841, 11.590859>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.846958, 23.465153, 11.584814>,  <17.893246, 23.862337, 11.574739>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.846958, 23.465153, 11.584814> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.572299, 0.087379, 0.815376,
		-0.811839, 0.079939, -0.578383,
		-0.115718, -0.992963, 0.025189,
		17.812243, 23.167263, 11.592371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.211821, 23.797129, 11.601565>,  <17.893246, 23.862337, 11.574739>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.211821, 23.797129, 11.601565> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.360916, 23.447144, 11.725181>,  <17.450375, 23.237152, 11.799350>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.360916, 23.447144, 11.725181>,  <17.211821, 23.797129, 11.601565>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.360916, 23.447144, 11.725181> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530746, 0.072160, 0.844454,
		-0.761166, -0.478782, -0.437486,
		0.372740, -0.874964, 0.309037,
		17.472738, 23.184654, 11.817892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.620607, 23.455599, 11.966353>,  <17.211821, 23.797129, 11.601565>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.620607, 23.455599, 11.966353> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.957542, 23.281422, 12.093385>,  <17.159704, 23.176914, 12.169603>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.957542, 23.281422, 12.093385>,  <16.620607, 23.455599, 11.966353>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.957542, 23.281422, 12.093385> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376192, -0.053082, 0.925020,
		-0.385936, -0.898649, -0.208524,
		0.842337, -0.435444, 0.317578,
		17.210243, 23.150787, 12.188658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.334917, 23.180264, 12.506936>,  <16.620607, 23.455599, 11.966353>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.334917, 23.180264, 12.506936> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.732826, 23.157722, 12.541008>,  <16.971571, 23.144197, 12.561451>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.732826, 23.157722, 12.541008>,  <16.334917, 23.180264, 12.506936>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.732826, 23.157722, 12.541008> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089158, -0.072335, 0.993387,
		-0.049809, -0.995788, -0.076980,
		0.994771, -0.056343, 0.085179,
		17.031258, 23.140818, 12.566562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.487808, 22.569870, 12.951231>,  <16.334917, 23.180264, 12.506936>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.487808, 22.569870, 12.951231> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.796879, 22.823071, 12.970310>,  <16.982323, 22.974991, 12.981758>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.796879, 22.823071, 12.970310>,  <16.487808, 22.569870, 12.951231>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.796879, 22.823071, 12.970310> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159596, 0.120988, 0.979740,
		0.614408, -0.764637, 0.194509,
		0.772679, 0.633003, 0.047698,
		17.028683, 23.012972, 12.984619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.871750, 22.199364, 13.431160>,  <16.487808, 22.569870, 12.951231>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.871750, 22.199364, 13.431160> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.943699, 22.592682, 13.420000>,  <16.986868, 22.828672, 13.413304>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.943699, 22.592682, 13.420000>,  <16.871750, 22.199364, 13.431160>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.943699, 22.592682, 13.420000> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039308, 0.035526, 0.998595,
		0.982904, -0.178523, 0.045041,
		0.179872, 0.983294, -0.027901,
		16.997660, 22.887671, 13.411630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.363722, 22.260263, 13.913280>,  <16.871750, 22.199364, 13.431160>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.363722, 22.260263, 13.913280> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.269787, 22.646313, 13.866999>,  <17.213425, 22.877943, 13.839230>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.269787, 22.646313, 13.866999>,  <17.363722, 22.260263, 13.913280>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.269787, 22.646313, 13.866999> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128956, 0.148915, 0.980405,
		0.963442, 0.215317, -0.159429,
		-0.234840, 0.965123, -0.115704,
		17.199335, 22.935850, 13.832288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.787167, 22.595449, 14.347507>,  <17.363722, 22.260263, 13.913280>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.787167, 22.595449, 14.347507> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.492374, 22.857655, 14.281582>,  <17.315498, 23.014977, 14.242027>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.492374, 22.857655, 14.281582>,  <17.787167, 22.595449, 14.347507>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.492374, 22.857655, 14.281582> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044570, 0.196176, 0.979555,
		0.674442, 0.729259, -0.115361,
		-0.736981, 0.655512, -0.164812,
		17.271280, 23.054308, 14.232139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.014456, 23.271227, 14.613750>,  <17.787167, 22.595449, 14.347507>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.014456, 23.271227, 14.613750> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.615070, 23.291683, 14.605188>,  <17.375439, 23.303957, 14.600052>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.615070, 23.291683, 14.605188>,  <18.014456, 23.271227, 14.613750>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.615070, 23.291683, 14.605188> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013304, 0.153778, 0.988016,
		0.053817, 0.986781, -0.152862,
		-0.998462, 0.051139, -0.021404,
		17.315531, 23.307024, 14.598767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.795628, 23.775543, 15.137715>,  <18.014456, 23.271227, 14.613750>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.795628, 23.775543, 15.137715> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.475174, 23.545658, 15.070911>,  <17.282902, 23.407726, 15.030828>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.475174, 23.545658, 15.070911>,  <17.795628, 23.775543, 15.137715>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.475174, 23.545658, 15.070911> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231375, 0.040057, 0.972040,
		-0.551954, 0.817374, -0.165065,
		-0.801132, -0.574713, -0.167011,
		17.234835, 23.373243, 15.020808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.218510, 24.096827, 15.521856>,  <17.795628, 23.775543, 15.137715>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.218510, 24.096827, 15.521856> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.140148, 23.706860, 15.479599>,  <17.093132, 23.472879, 15.454245>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.140148, 23.706860, 15.479599>,  <17.218510, 24.096827, 15.521856>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.140148, 23.706860, 15.479599> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230022, -0.059039, 0.971393,
		-0.953264, 0.214600, -0.212686,
		-0.195905, -0.974916, -0.105643,
		17.081377, 23.414385, 15.447906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.682989, 24.022573, 15.957194>,  <17.218510, 24.096827, 15.521856>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.682989, 24.022573, 15.957194> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.749546, 23.631176, 15.908434>,  <16.789480, 23.396338, 15.879177>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.749546, 23.631176, 15.908434>,  <16.682989, 24.022573, 15.957194>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.749546, 23.631176, 15.908434> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275118, -0.164784, 0.947183,
		-0.946902, -0.124064, -0.296621,
		0.166390, -0.978496, -0.121902,
		16.799463, 23.337627, 15.871863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.185043, 23.667572, 16.373487>,  <16.682989, 24.022573, 15.957194>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.185043, 23.667572, 16.373487> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.460182, 23.386494, 16.300732>,  <16.625265, 23.217846, 16.257078>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.460182, 23.386494, 16.300732>,  <16.185043, 23.667572, 16.373487>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.460182, 23.386494, 16.300732> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135973, -0.121408, 0.983245,
		-0.713006, -0.701054, 0.012038,
		0.687847, -0.702697, -0.181889,
		16.666536, 23.175684, 16.246164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.994551, 23.013552, 16.682364>,  <16.185043, 23.667572, 16.373487>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.994551, 23.013552, 16.682364> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.394188, 23.026749, 16.671598>,  <16.633970, 23.034668, 16.665138>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.394188, 23.026749, 16.671598>,  <15.994551, 23.013552, 16.682364>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.394188, 23.026749, 16.671598> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031062, -0.132466, 0.990701,
		0.029124, -0.990638, -0.133371,
		0.999093, 0.032996, -0.026914,
		16.693916, 23.036648, 16.663525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.919170, 22.369341, 16.214680>,  <15.994551, 23.013552, 16.682364>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.919170, 22.369341, 16.214680> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.671653, 22.055237, 16.223238>,  <15.523142, 21.866774, 16.228373>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.671653, 22.055237, 16.223238>,  <15.919170, 22.369341, 16.214680>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.671653, 22.055237, 16.223238> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031617, -0.052113, -0.998141,
		0.784916, -0.616967, 0.057074,
		-0.618794, -0.785262, 0.021398,
		15.486014, 21.819658, 16.229658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.176777, 21.790760, 15.704906>,  <15.919170, 22.369341, 16.214680>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.176777, 21.790760, 15.704906> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.784593, 21.732311, 15.757584>,  <15.549282, 21.697241, 15.789189>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.784593, 21.732311, 15.757584>,  <16.176777, 21.790760, 15.704906>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.784593, 21.732311, 15.757584> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108337, -0.157670, -0.981531,
		0.164190, -0.976620, 0.138759,
		-0.980462, -0.146124, 0.131692,
		15.490454, 21.688475, 15.797091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.002033, 21.181513, 15.279641>,  <16.176777, 21.790760, 15.704906>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.002033, 21.181513, 15.279641> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.650683, 21.357952, 15.353283>,  <15.439874, 21.463816, 15.397468>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.650683, 21.357952, 15.353283>,  <16.002033, 21.181513, 15.279641>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.650683, 21.357952, 15.353283> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316110, -0.247181, -0.915956,
		-0.358522, -0.862746, 0.356553,
		-0.878371, 0.441101, 0.184103,
		15.387172, 21.490282, 15.408514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.449076, 20.690462, 15.138665>,  <16.002033, 21.181513, 15.279641>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.449076, 20.690462, 15.138665> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.319058, 21.066654, 15.098976>,  <15.241048, 21.292370, 15.075163>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.319058, 21.066654, 15.098976>,  <15.449076, 20.690462, 15.138665>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.319058, 21.066654, 15.098976> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172941, -0.162263, -0.971474,
		-0.929752, -0.298611, 0.215390,
		-0.325043, 0.940480, -0.099222,
		15.221545, 21.348799, 15.069209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.996647, 20.633421, 14.601290>,  <15.449076, 20.690462, 15.138665>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.996647, 20.633421, 14.601290> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.044801, 21.029690, 14.626814>,  <15.073693, 21.267452, 14.642128>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.044801, 21.029690, 14.626814>,  <14.996647, 20.633421, 14.601290>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.044801, 21.029690, 14.626814> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025170, 0.067303, -0.997415,
		-0.992408, 0.118467, 0.033037,
		0.120384, 0.990674, 0.063810,
		15.080916, 21.326893, 14.645957>
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
