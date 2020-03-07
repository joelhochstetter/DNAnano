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
	<0.813322, 0.625807, -0.185053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.149704, 0.622955, 0.031370>,  <1.351533, 0.621244, 0.161224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.149704, 0.622955, 0.031370>,  <0.813322, 0.625807, -0.185053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.149704, 0.622955, 0.031370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431309, -0.612643, 0.662300,
		0.326754, -0.790327, -0.518281,
		0.840955, -0.007130, 0.541059,
		1.401990, 0.620816, 0.193688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.994929, -0.113216, 0.087079>,  <0.813322, 0.625807, -0.185053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.994929, -0.113216, 0.087079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.146896, 0.184006, 0.307453>,  <1.238077, 0.362339, 0.439678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.146896, 0.184006, 0.307453>,  <0.994929, -0.113216, 0.087079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.146896, 0.184006, 0.307453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281914, -0.474251, 0.834033,
		0.881015, -0.472181, 0.029301,
		0.379918, 0.743055, 0.550936,
		1.260872, 0.406922, 0.472734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.175029, -0.358173, 0.689131>,  <0.994929, -0.113216, 0.087079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.175029, -0.358173, 0.689131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.183746, 0.022820, 0.810658>,  <1.188977, 0.251415, 0.883573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.183746, 0.022820, 0.810658>,  <1.175029, -0.358173, 0.689131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.183746, 0.022820, 0.810658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222317, -0.291662, 0.930327,
		0.974731, -0.087819, 0.205397,
		0.021794, 0.952482, 0.303815,
		1.190284, 0.308564, 0.901802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.468495, -0.388131, 1.338812>,  <1.175029, -0.358173, 0.689131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.468495, -0.388131, 1.338812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.243683, -0.057770, 1.320904>,  <1.108795, 0.140447, 1.310159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.243683, -0.057770, 1.320904>,  <1.468495, -0.388131, 1.338812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.243683, -0.057770, 1.320904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299301, -0.152617, 0.941874,
		0.771064, 0.542763, 0.332969,
		-0.562031, 0.825904, -0.044772,
		1.075074, 0.190001, 1.307472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.516788, -0.095772, 1.998611>,  <1.468495, -0.388131, 1.338812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.516788, -0.095772, 1.998611> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.186974, 0.071457, 1.846109>,  <0.989085, 0.171794, 1.754608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.186974, 0.071457, 1.846109>,  <1.516788, -0.095772, 1.998611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.186974, 0.071457, 1.846109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348999, 0.154580, 0.924286,
		0.445352, 0.895166, 0.018450,
		-0.824537, 0.418072, -0.381254,
		0.939613, 0.196878, 1.731733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.427581, 0.524356, 2.264918>,  <1.516788, -0.095772, 1.998611>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.427581, 0.524356, 2.264918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.056511, 0.414474, 2.163759>,  <0.833869, 0.348545, 2.103064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.056511, 0.414474, 2.163759>,  <1.427581, 0.524356, 2.264918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.056511, 0.414474, 2.163759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296919, 0.132045, 0.945729,
		-0.226402, 0.952419, -0.204060,
		-0.927675, -0.274705, -0.252896,
		0.778208, 0.332063, 2.087890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.969383, 1.052408, 2.480972>,  <1.427581, 0.524356, 2.264918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.969383, 1.052408, 2.480972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.792786, 0.693649, 2.470678>,  <0.686827, 0.478394, 2.464502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.792786, 0.693649, 2.470678>,  <0.969383, 1.052408, 2.480972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.792786, 0.693649, 2.470678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313309, 0.127224, 0.941091,
		-0.840787, 0.423547, -0.337174,
		-0.441493, -0.896896, -0.025733,
		0.660338, 0.424581, 2.462959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.204287, 1.034131, 2.495244>,  <0.969383, 1.052408, 2.480972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.204287, 1.034131, 2.495244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.367111, 0.720467, 2.682602>,  <0.464806, 0.532268, 2.795017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.367111, 0.720467, 2.682602>,  <0.204287, 1.034131, 2.495244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.367111, 0.720467, 2.682602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319012, 0.358456, 0.877348,
		-0.855881, -0.506558, -0.104244,
		0.407061, -0.784161, 0.468394,
		0.489230, 0.485218, 2.823120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<0.322359, 0.389247, 4.100015> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.184517, 0.025650, 4.006222>,  <0.101812, -0.192508, 3.949946>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.184517, 0.025650, 4.006222>,  <0.322359, 0.389247, 4.100015>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.184517, 0.025650, 4.006222> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125138, 0.203073, -0.971134,
		0.930370, -0.364000, 0.043769,
		-0.344605, -0.908991, -0.234483,
		0.081135, -0.247047, 3.935877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.764276, 0.069675, 3.705070>,  <0.322359, 0.389247, 4.100015>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.764276, 0.069675, 3.705070> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.410629, -0.093895, 3.614634>,  <0.198441, -0.192037, 3.560372>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.410629, -0.093895, 3.614634>,  <0.764276, 0.069675, 3.705070>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.410629, -0.093895, 3.614634> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193402, 0.120216, -0.973727,
		0.425361, -0.904615, -0.027198,
		-0.884117, -0.408925, -0.226090,
		0.145394, -0.216572, 3.546807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.691187, -0.620793, 3.200655>,  <0.764276, 0.069675, 3.705070>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.691187, -0.620793, 3.200655> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.412743, -0.334900, 3.173561>,  <0.245676, -0.163364, 3.157305>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.412743, -0.334900, 3.173561>,  <0.691187, -0.620793, 3.200655>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.412743, -0.334900, 3.173561> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245609, 0.148428, -0.957938,
		-0.674615, -0.683468, -0.278867,
		-0.696111, 0.714732, -0.067735,
		0.203909, -0.120480, 3.153241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.233237, -0.746930, 2.674395>,  <0.691187, -0.620793, 3.200655>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.233237, -0.746930, 2.674395> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.249176, -0.352242, 2.737381>,  <0.258740, -0.115429, 2.775172>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.249176, -0.352242, 2.737381>,  <0.233237, -0.746930, 2.674395>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.249176, -0.352242, 2.737381> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169202, 0.148650, -0.974307,
		-0.984776, 0.065468, -0.161031,
		0.039849, 0.986720, 0.157464,
		0.261131, -0.056225, 2.784620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.254527, -0.398672, 2.214873>,  <0.233237, -0.746930, 2.674395>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.254527, -0.398672, 2.214873> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.049126, -0.154015, 2.303967>,  <0.231317, -0.007220, 2.357423>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.049126, -0.154015, 2.303967>,  <-0.254527, -0.398672, 2.214873>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.049126, -0.154015, 2.303967> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144715, 0.175031, -0.973869,
		-0.634647, 0.771528, 0.044358,
		0.759132, 0.611644, 0.222735,
		0.276865, 0.029479, 2.370787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.406963, 0.008367, 1.615835>,  <-0.254527, -0.398672, 2.214873>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.406963, 0.008367, 1.615835> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.053017, 0.125450, 1.760796>,  <0.159351, 0.195700, 1.847772>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.053017, 0.125450, 1.760796>,  <-0.406963, 0.008367, 1.615835>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.053017, 0.125450, 1.760796> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287618, 0.268686, -0.919284,
		-0.366454, 0.917676, 0.153563,
		0.884866, 0.292708, 0.362402,
		0.212443, 0.213263, 1.869516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.143311, 0.607696, 1.246070>,  <-0.406963, 0.008367, 1.615835>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.143311, 0.607696, 1.246070> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.202415, 0.476051, 1.398197>,  <0.409852, 0.397064, 1.489473>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.202415, 0.476051, 1.398197>,  <-0.143311, 0.607696, 1.246070>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.202415, 0.476051, 1.398197> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488716, 0.370967, -0.789646,
		0.118797, 0.868371, 0.481475,
		0.864317, -0.329113, 0.380317,
		0.461711, 0.377318, 1.512292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.324346, 1.191139, 1.065015>,  <-0.143311, 0.607696, 1.246070>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.324346, 1.191139, 1.065015> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.561165, 0.876816, 1.136551>,  <0.703256, 0.688222, 1.179473>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.561165, 0.876816, 1.136551>,  <0.324346, 1.191139, 1.065015>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.561165, 0.876816, 1.136551> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.624763, 0.307355, -0.717777,
		0.509068, 0.536692, 0.672913,
		0.592048, -0.785809, 0.178840,
		0.738779, 0.641073, 1.190203>
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
